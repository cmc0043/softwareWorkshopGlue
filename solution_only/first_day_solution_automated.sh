stringChk=12
guinea='Guinea'
china='China'
niger='Niger'
for file in *.txt
do
	# echo $file
	wcount=$(cat $file | wc -l)
	# echo $wcount 
	
	if
	[ $wcount -gt $stringChk ]; then
		if
			[[ "$file" =~ "$guinea" ]]; then
			cp Guinea.cc.txt Guinea.txt
			
			while read -r line
			do
        	[[ "$line" =~ "Guinea-" ]] && echo $line >> Guinea-BissauFixed.cc.txt 2>&1
        	[[ "$line" =~ "Equatorial" ]] && echo $line >> EquatorialGuineaFixed.cc.txt 2>&1
        	[[ ! "$line" =~ "Equatorial" ]] && [[ ! "$line" =~ "Guinea-" ]] && echo $line >> GuineaFixed.cc.txt 2>&1
        
			done < Guinea.txt 
			
			bissFile=Guinea-BissauFixed.cc.txt
			blineName=$(head -n 1 $bissFile)

			if
        		[[ "$blineName" =~ "Guinea-Bissau" ]]; then
           		mv Guinea-BissauFixed.cc.txt Guinea-Bissau.cc.txt
        	else
    			echo "Problem with copying $bissFile"
			fi
			
			equatorialFile=EquatorialGuineaFixed.cc.txt        
			elineName=$(head -n 1 $equatorialFile)

			if 
        		[[ "$elineName" =~ "Equatorial" ]]; then
               	mv EquatorialGuineaFixed.cc.txt Equatorial_Guinea.cc.txt
        	else
        		echo "Problem with copying $equatorialFile"	
			fi

			guineaFile=GuineaFixed.cc.txt
			glineName=$(head -n 1 $guineaFile)
			
			if
				[[ "$glineName" =~ "Guinea" ]]; then
                mv GuineaFixed.cc.txt Guinea.cc.txt
        	else
        		echo "Problem with copying $guineaFile"
			fi
			rm Guinea.txt
		fi
		
		if
			[[ "$file" =~ "$china" ]]; then
			cp China.cc.txt China.txt
			
			while read -r line 
			do
			[[ "$line" =~ "g," ]] && echo $line >> HongKongFixed.cc.txt 2>&1
			[[ ! "$line" =~ "g," ]] && echo $line >> ChinaFixed.cc.txt 2>&1
			 
			done < China.txt 
			
			cp HongKongFixed.cc.txt HongKongTest.txt		
			hongKongFile=HongKongFixed.cc.txt
			hklineName=$(head -n 1 $hongKongFile)
			
			if 
				[[ "$hklineName" =~ "Hong Kong" ]]; then
				mv HongKongFixed.cc.txt Hong_Kong_China.cc.txt
			else
				echo "Problem with copying $hongKongFile"
			fi
			
			chinaFile=ChinaFixed.cc.txt
			clineName=$(head -n 1 $chinaFile)
			
			if
        		[[ "$clineName" =~ "China" ]]; then
           		mv ChinaFixed.cc.txt China.cc.txt
        	else
    			echo "Problem with copying $chinaFile"
			fi
			
			rm China.txt
		fi
		
		if
			[[ "$file" =~ "$niger" ]]; then
			cp Niger.cc.txt Niger.txt
			
			while read -r line
			do
			[[ "$line" =~ "ia" ]] && echo $line >> NigeriaFixed.cc.txt 2>&1
			[[ ! "$line" =~ "ia" ]] && echo $line >> NigerFixed.cc.txt 2>&1
			
			done < Niger.txt
			
			nigeriaFile=NigeriaFixed.cc.txt
			nglineName=$(head -n 1 $nigeriaFile)
			
			if
				[[ "$nglineName" =~ "Nigeria" ]]; then
				mv NigeriaFixed.cc.txt Nigeria.cc.txt
			else
				echo "Problem with copying $nigeriaFile"
			fi
			
			nigerFile=NigerFixed.cc.txt
			nlineName=$(head -n 1 $nigerFile)
			
			if
				[[ "$nlineName" =~ "Niger" ]]; then
				mv NigerFixed.cc.txt Niger.cc.txt
			else
				echo "Problem with copying $nigerFile"
			fi
			rm Niger.txt
		fi
	fi
	 
done
