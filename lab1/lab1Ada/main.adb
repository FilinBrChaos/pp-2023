with Ada.Text_IO;

procedure main is
   length : Integer := 8;

   type bool_arr is array(1..length) of boolean;
   type duration_arr is array(1..length) of Duration;

   is_dead : bool_arr := (others => False);
   pragma Atomic(is_dead);
   --  life_times : duration_arr := (10.0, 15.0, 20.0, 25.0);
   life_times : duration_arr := (10.0, 15.0, 20.0, 25.0, 30.0, 35.0, 40.0, 45.0);

   task type counter is 
      entry Start(id: in Integer; step: in Long_Long_Integer);
   end counter;

   task body counter is
         id : Integer;
         step : Long_Long_Integer;
         -- if this line is enabled thread will crash, idn why
         --  iterations : Integer := 1;
         increment : Long_Long_Integer := 1;

    begin
         accept Start(id: Integer; step: Long_Long_Integer) do
            counter.id := id;
            counter.step := step;
         end Start;
         Ada.Text_IO.Put_Line ("Counter ("&id'Img&") has been started successfully");
         loop
               increment := increment + step;
               --  iterations := iterations + 1;
               exit when is_dead(id) = True;
         end loop;
         --  Ada.Text_IO.Put_Line ("Counter ("&id'Img&"). Steps: "&iterations'Img&". Result: "&increment'Img);
         Ada.Text_IO.Put_Line ("Counter ("&id'Img&"). Result: "&increment'Img);
   end counter;



   task type timer_thread is
      entry Start(id: in Integer; lifeDuration: in Duration);
   end timer_thread;

   task body timer_thread is
      thread_id : Integer;
      life_delay : Duration;
   begin
      accept Start (id: in Integer; lifeDuration: in Duration) do
         thread_id := id;
         life_delay := lifeDuration;
      end Start;

      delay (life_delay);
      is_dead(thread_id) := True;
      Ada.Text_IO.Put_Line ("Thread"&thread_id'Img&" have been stopped successfully");
   end timer_thread;

   counters : array(1..length) of counter;
   timers : array(1..length) of timer_thread;
begin
   Ada.Text_IO.Put_Line ("is_dead has been initialized successfully");

   for i in 1..length loop
      counters(i).Start(i, 1);
      timers(i).Start(i, life_times(i));
   end loop;
end main;