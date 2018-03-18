classdef MyTimer < handle
	properties (Access=private)
		start_time; % time of creation / last reset
	end

	methods (Static, Access=private)
		function result = currentTime()
			timevec = clock;
			result = 3600 * timevec(4) + 60 * timevec(5) + timevec(6);
		end
	end

	methods (Access=public)
		function this = MyTimer()
			this.start_time = MyTimer.currentTime();
		end

		function resetTimer(this)
			this.start_time = MyTimer.currentTime();
		end

		function elapsed_time = elapsedTime(this)
			elapsed_time = MyTimer.currentTime() - this.start_time;
		end
	end
end

