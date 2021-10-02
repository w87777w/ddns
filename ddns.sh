#/bin/sh
ip=`ifconfig | grep "inet addr" | sed -n 3p | awk '{print $2}' | cut -d ":" -f 2`
url="https://api.dynadot.com/api3.xml?key=6F6O7n8l8o8y9V8J8I7R6M9L8eU7B7I&command=set_dns2&domain=w87777w.com&main_record_type0=a&main_record0=173.82.11.118&subdomain0=*&sub_record_type0=a&sub_record0=173.82.11.118&subdomain1=tx&sub_record_type1=a&sub_record1=106.15.137.21&subdomain2=ddns&sub_record_type2=a&sub_record2=${ip}&ttl=300"
wget -q -O /dev/null ${url}
