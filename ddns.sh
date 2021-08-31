#/bin/sh
ip=`ifconfig | grep "inet addr" | sed -n 3p | awk '{print $2}' | cut -d ":" -f 2`
url="https://api.dynadot.com/api3.xml?key=6F6O7n8l8o8y9V8J8I7R6M9L8eU7B7I&command=set_dns2&domain=w87777w.com&main_record_type0=a&main_record0=173.82.11.118&subdomain0=*&sub_record_type0=a&sub_record0=173.82.11.118&subdomain1=tx&sub_record_type1=a&sub_record1=106.15.137.21&subdomain2=us1&sub_record_type2=a&sub_record2=155.94.177.171&subdomain3=btus1&sub_record_type3=a&sub_record3=155.94.177.171&subdomain5=la&sub_record_type5=a&sub_record5=149.28.77.88&subdomain6=se&sub_record_type6=a&sub_record6=137.220.41.138&subdomain7=ddns&sub_record_type7=a&sub_record7=${ip}"
wget -q ${url}

