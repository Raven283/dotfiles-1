#0% Fan Speed
alias idrac_fans_0="ipmitool -I lanplus -H 10.0.11.4 -U ${IDRAC_USERNAME} -P ${IDRAC_PASSWORD} raw 0x30 0x30 0x02 0xff 0x00"

#5% Fan Speed
alias idrac_fans_5="ipmitool -I lanplus -H 10.0.11.4 -U ${IDRAC_USERNAME} -P ${IDRAC_PASSWORD} raw 0x30 0x30 0x02 0xff 0x05"

#10% Fan Speed
alias idrac_fans_10="ipmitool -I lanplus -H 10.0.11.4 -U ${IDRAC_USERNAME} -P ${IDRAC_PASSWORD} raw 0x30 0x30 0x02 0xff 0x0A"

#20% Fan Speed
alias idrac_fans_20="ipmitool -I lanplus -H 10.0.11.4 -U ${IDRAC_USERNAME} -P ${IDRAC_PASSWORD} raw 0x30 0x30 0x02 0xff 0x14"

#30% Fan Speed
alias idrac_fans_30="ipmitool -I lanplus -H 10.0.11.4 -U ${IDRAC_USERNAME} -P ${IDRAC_PASSWORD} raw 0x30 0x30 0x02 0xff 0x1e"

#50% Fan Speed
alias idrac_fans_50="ipmitool -I lanplus -H 10.0.11.4 -U ${IDRAC_USERNAME} -P ${IDRAC_PASSWORD} raw 0x30 0x30 0x02 0xff 0x32"

#70% Fan Speed
alias idrac_fans_70="ipmitool -I lanplus -H 10.0.11.4 -U ${IDRAC_USERNAME} -P ${IDRAC_PASSWORD} raw 0x30 0x30 0x02 0xff 0x46"

#80% Fan Speed
alias idrac_fans_80="ipmitool -I lanplus -H 10.0.11.4 -U ${IDRAC_USERNAME} -P ${IDRAC_PASSWORD} raw 0x30 0x30 0x02 0xff 0x50"

# output system temps and fan rpm
alias idrac_show"ipmitool -I lanplus -H 10.0.11.4 -U ${IDRAC_USERNAME} -P ${IDRAC_PASSWORD} sensor reading 'Temp' 'Fan1A' 'Fan1B' 'Fan2A' 'Fan2B' 'Fan3A' 'Fan3B' 'Fan4A' 'Fan4B'"

# enable manual fan control
alias idrac_fan_control_enable="ipmitool -I lanplus -H 10.0.11.4 -U ${IDRAC_USERNAME} -P ${IDRAC_PASSWORD} raw 0x30 0x30 0x01 0x00"
# disable manual fan control
alias idrac_fan_control_disable="ipmitool -I lanplus -H 10.0.11.4 -U ${IDRAC_USERNAME} -P ${IDRAC_PASSWORD} raw 0x30 0x30 0x01 0x01"

alias idrac_list_temp="ipmitool -I lanplus -H 10.0.11.4 -U ${IDRAC_USERNAME} -P ${IDRAC_PASSWORD} sensor list |grep Temp"
alias idrac_list_fans="ipmitool -I lanplus -H 10.0.11.4 -U ${IDRAC_USERNAME} -P ${IDRAC_PASSWORD} sensor list |grep Fan"
alias idrac_list_pcie="ipmitool -I lanplus -H 10.0.11.4 -U ${IDRAC_USERNAME} -P ${IDRAC_PASSWORD} sensor list |grep PCIE"
alias idrac_list_mem="ipmitool -I lanplus -H 10.0.11.4 -U ${IDRAC_USERNAME} -P ${IDRAC_PASSWORD} sensor list |grep Mem"

alias idrac_read_temp="ipmitool -I lanplus -H 10.0.11.4 -U ${IDRAC_USERNAME} -P ${IDRAC_PASSWORD} sensor reading 'Temp'"
alias idrac_read_pwr_consumption="ipmitool -I lanplus -H 10.0.11.4 -U ${IDRAC_USERNAME} -P ${IDRAC_PASSWORD} sensor reading 'Pwr Consumption'"
alias idrac_read_cable_sas_a="ipmitool -I lanplus -H 10.0.11.4 -U ${IDRAC_USERNAME} -P ${IDRAC_PASSWORD} sensor reading 'Cable SAS A'"
alias idrac_read_ecc_corr_err="ipmitool -I lanplus -H 10.0.11.4 -U ${IDRAC_USERNAME} -P ${IDRAC_PASSWORD} sensor reading 'ECC Corr Err'"
alias idrac_read_pcie_1_temp="ipmitool -I lanplus -H 10.0.11.4 -U ${IDRAC_USERNAME} -P ${IDRAC_PASSWORD} sensor reading 'PCIE 1 Temp'"
alias idrac_read_pcie_1_watt="ipmitool -I lanplus -H 10.0.11.4 -U ${IDRAC_USERNAME} -P ${IDRAC_PASSWORD} sensor reading 'PCIE 1 Watt'"

alias racadm_fan_speed_offset_get="ssh matjah@10.0.11.4 'racadm get system.thermalsettings.FanSpeedOffset'"
alias racadm_fan_speed_offset_set_0="ssh matjah@10.0.11.4 'racadm set system.thermalsettings.FanSpeedOffset 0'"
alias racadm_fan_speed_offset_set_none="ssh matjah@10.0.11.4 'racadm set system.thermalsettings.FanSpeedOffset 255'"
