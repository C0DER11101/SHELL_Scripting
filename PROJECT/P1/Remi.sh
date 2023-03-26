#! /bin/bash

# This is a shell script which will notify you about break time!!

echo "Remi on"

echo "Welcome ${USER}"

echo "I was created by you to notify you about break times!!"

echo -e "Here are some commands that you can provide when I prompt you:\n"

echo -e "When it's break time and you don't want to break your focus, you can either set a different time stamp or you can simply enter \"No break\" so then I will know that you won't take any break!!\n"

sleep 3

clear

Time=-1

while [ ${Time} -lt 0 -o ${Time} -ge 24 ]
do
	read -p "Set break time(enter only hour in 24-hour format) > "
	Time=${REPLY}

	if [[ ${Time} = "No break" || ${Time} = "no break" ]]
	then
		echo "Okay!! Happy working!!"
		Time=-1
		break
	fi
done




nmcli r wifi off


count=20


while [ 1 ]
do
	if [ `date +%H` = ${Time} ]
	then
		~/ShellProgs/./message

		echo "It's time for some YouTube Music!!"
		read -p "Do you want to listen to music? [Y/n]: "

		if [ ${REPLY} = 'y' -o ${REPLY} = 'Y' ]
		then
			nmcli r wifi on
			NextHour=`date +%H`
			CurrentMinute=`date +%M`

			CurrentMinute=$((CurrentMinute+30))

			if [ ${CurrentMinute} -gt 60 ]
			then
				CurrentMinute=$((CurrentMinute-60))
				NextHour=$((`date +%H`+1))

			elif [ ${CurrentMinute} -eq 60 ]
			then
				CurrentMinute=00
				NextHour=$((`date +%H`+1))
			fi

			browse https://music.youtube.com/
			while [ `date +%M` -ne $((CurrentMinute)) ]
			do
				echo "Break will be over at -> ${NextHour}:${CurrentMinute}"
				date +%H:%M:%S
				sleep 1
				clear
			done
			~/ShellProgs/./over
			nmcli r wifi off

			Time=-1

			while [ ${Time} -lt 0 -o ${Time} -ge 24 ]
			do
				read -p "Set next break time(enter only hour in 24-hour format) > "
				Time=${REPLY}

				if [ ${Time} = "No break" -o ${Time} = "no break" ]
				then
					break
				fi
			done

			if [[ ${Time} = "No break" || ${Time} = "no break" ]]
			then
				echo "Okay!! Happy working!!"
				Time=-1
			fi

		else
			read -p "Enter hour at which you want to hear music: "

			if [[ ${REPLY} = "No break" || ${REPLY} = "no break" ]]
			then
				echo "Okay!! Happy working!!"
				nmcli r wifi off
				Time=-1

			elif [ ${REPLY} -lt 24 -a ${REPLY} -gt -1 ]
			then
				nmcli r wifi off
				Time=${REPLY}
			else
				echo "Invalid hour value!!"
				Time=-1
			fi
		fi
	fi

	if [ `nmcli radio wifi` = "enabled" ]
	then
		nmcli r wifi off
	fi

	echo -e "|\c"
	sleep 0.1
	((count--))

	if [ ${count} -eq 0 ]
	then
		clear
		count=20
	fi
done
