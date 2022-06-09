
echo  "up or down"

read on_or_off

if [ "$on_or_off" = "on" ];
then
	on=$(sudo cpufreq-set -c 0 -g performance && sudo cpufreq-set -c 1 -g performance && sudo cpufreq-set -c 2 -g performance && sudo cpufreq-set -c 4 -g performance && sudo cpufreq-set -c 5 -g performance   )
	echo " $on "
elif [ "$on_or_off" = "off" ];
then
	off=$(sudo cpufreq-set -c 0 -g ondemand && sudo cpufreq-set -c 1 -g performance && sudo cpufreq-set -c 2 -g ondemand && sudo cpufreq-set -c 3 -g ondemand && sudo cpufreq-set -c 4 -g ondemand && sudo cpufreq-set -c 5 -g ondemand        )
	echo " $off "
fi
