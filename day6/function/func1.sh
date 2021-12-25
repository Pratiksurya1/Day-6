#!/bin/bash -x

function conversion() {

	case "$num" in
			1)
				read -p "Entar degC" degree

				if(( $degree>0 && $degree<100 ))
				then
				   degF=$(( ($degree * 9/5) + 32 ))
				   echo $degF
				else
				   echo "Out of the Range "
				fi
  					;;


  			2)
				read -p "Enter degF" degree

    				if(( $degree>32 && $degree<212 ))
				then
    				   degC=$(( ($degree - 32) * 5/9 ))
				   echo $degC
  				else
      				   echo "Out of the Range"

  				fi
  					;;

    			*)
    				echo "Out of the Range"
          				;;


	esac
}
echo "1. Celeius to Farenheit"
echo "2. Farenheit to Celeius"
read -p "Enter choice" num
conversion $num 


