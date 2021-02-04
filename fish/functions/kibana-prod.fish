function kibana-prod
  kc config use-context eye
  set svc_name_and_port (kc get svc | grep kibana | awk '{ print $1" "$5 }' | sed 's/\/TCP//g' | string split " ")
  set name $svc_name_and_port[1]
  set port $svc_name_and_port[2]
  open http://localhost:$port
  kc port-forward svc/$name $port:$port
end
