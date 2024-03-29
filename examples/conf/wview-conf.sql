BEGIN TRANSACTION;
CREATE TABLE config (name TEXT NOT NULL,value TEXT NOT NULL,description TEXT,dependsOn TEXT,PRIMARY KEY (name));
INSERT INTO "config" VALUES('ENABLE_HTMLGEN','yes','Run template generator to generate web/other files from templates?',NULL);
INSERT INTO "config" VALUES('ENABLE_ALARMS','no','Run Alarm daemon to provide alarm script/client support?',NULL);
INSERT INTO "config" VALUES('ENABLE_CWOP','no','Run CWOP daemon to report station data to CWOP?',NULL);
INSERT INTO "config" VALUES('ENABLE_HTTP','no','Run HTTP daemon to report station data to Weather Underground/Weather For You?',NULL);
INSERT INTO "config" VALUES('ENABLE_FTP','no','Run FTP daemon to transfer web site/generated files to a remote server?',NULL);
INSERT INTO "config" VALUES('ENABLE_SSH','no','Run SSH daemon to transfer web site/generated files to a remote server?',NULL);
INSERT INTO "config" VALUES('ENABLE_PROCMON','yes','Run process monitor daemon to restart failed/hung daemons?',NULL);
INSERT INTO "config" VALUES('STATION_TYPE','Simulator','Station type - one of Simulator, Virtual, VantagePro, WXT510, TWI, WS-2300, WMR918, WMRUSB, WH1080, TE923:',NULL);
INSERT INTO "config" VALUES('STATION_INTERFACE','serial','Physical interface to the weather station - one of serial or ethernet (usb is considered serial):',NULL);
INSERT INTO "config" VALUES('STATION_DEV','/dev/ttyUSB0','Weather station serial device (/dev/ttyS0, /dev/ttyUSB0, etc.):',NULL);
INSERT INTO "config" VALUES('STATION_HOST','10.10.10.10','Hostname or IP address (ethernet only):',NULL);
INSERT INTO "config" VALUES('STATION_PORT','22222','Host TCP port to the weather station (ethernet only):',NULL);
INSERT INTO "config" VALUES('STATION_WLIP','no','Enable WeatherlinkIP interface:',NULL);
INSERT INTO "config" VALUES('STATION_RETRIEVE_ARCHIVE','yes','Retrieve archive records from console (if no, they will be autogenerated):',NULL);
INSERT INTO "config" VALUES('STATION_DTR','yes','Toggle DTR line during serial initialization:',NULL);
INSERT INTO "config" VALUES('STATION_RAIN_SEASON_START','1','Station rain season start month (1 - 12):',NULL);
INSERT INTO "config" VALUES('STATION_RAIN_STORM_TRIGGER_START','0.05','Station rain storm start trigger (rainfall rate in inches/hour):',NULL);
INSERT INTO "config" VALUES('STATION_RAIN_STORM_IDLE_STOP','12','Station rain storm stop time (hours without any rainfall which will end the storm):',NULL);
INSERT INTO "config" VALUES('STATION_RAIN_YTD','0','Station rain Year-To-Date preset (to include rain not in archive records) (x.yy inches):',NULL);
INSERT INTO "config" VALUES('STATION_ET_YTD','0','Station ET Year-To-Date preset (to include ET not in archive records) (x.yyy inches, 0 disables):',NULL);
INSERT INTO "config" VALUES('STATION_RAIN_ET_YTD_YEAR','0','Station rain/ET preset year (rain season start year that presets should apply to) (2000-present year, 0 disables):',NULL);
INSERT INTO "config" VALUES('STATION_ELEVATION','751','Weather station elevation (feet above sea level):',NULL);
INSERT INTO "config" VALUES('STATION_LATITUDE','33.6','Weather station latitude (decimal degrees, NORTH is positive - SOUTH is negative):',NULL);
INSERT INTO "config" VALUES('STATION_LONGITUDE','-96.9','Weather station longitude (decimal degrees, EAST is positive - WEST is negative):',NULL);
INSERT INTO "config" VALUES('STATION_ARCHIVE_INTERVAL','5','Weather data archive interval (minutes, one of 5, 10, 15, 30):',NULL);
INSERT INTO "config" VALUES('STATION_POLL_INTERVAL','30','Weather station sensor poll interval (seconds) - should be divisor of 60:',NULL);
INSERT INTO "config" VALUES('STATION_PUSH_INTERVAL','60','Current conditions data push interval (seconds) - for wvalarmd and possibly others:',NULL);
INSERT INTO "config" VALUES('STATION_VERBOSE_MSGS','00000011','Daemon Verbose Log Mask: 00000001 - wviewd,00000010 - htmlgend,00000100 - wvalarmd,00001000 - wviewftpd,00010000 - wviewsshd,00100000 - wvcwopd,01000000 - wvhttpd:',NULL);
INSERT INTO "config" VALUES('STATION_DO_RCHECK','no','Generate RX check data (populate rxCheck.png chart, VP only)?',NULL);
INSERT INTO "config" VALUES('STATION_OUTSIDE_CHANNEL','0','Use extra sensor for outside temperature (pool sensor is not supported) - 0,1,2,3 (Change sensor channel, WMR9XX only)?',0);
INSERT INTO "config" VALUES('STATION_SQLDB_HOST','localhost','Database server hostname or IP address:','ENABLE_SQL');
INSERT INTO "config" VALUES('STATION_SQLDB_USERNAME','wvuser','Database server username:','ENABLE_SQL');
INSERT INTO "config" VALUES('STATION_SQLDB_PASSWORD','wvpasswd','Database server password:','ENABLE_SQL');
INSERT INTO "config" VALUES('STATION_SQLDB_DB_NAME','wviewDB','Database name where export data are stored:','ENABLE_SQL');
INSERT INTO "config" VALUES('HTMLGEN_STATION_NAME','changeme','Station Name:','ENABLE_HTMLGEN');
INSERT INTO "config" VALUES('HTMLGEN_STATION_CITY','changeme','Station City:','ENABLE_HTMLGEN');
INSERT INTO "config" VALUES('HTMLGEN_STATION_STATE','changeme','Station State:','ENABLE_HTMLGEN');
INSERT INTO "config" VALUES('HTMLGEN_STATION_SHOW_IF','yes','Show interface details:','ENABLE_HTMLGEN');
INSERT INTO "config" VALUES('HTMLGEN_IMAGE_PATH','/usr/local/var/wview/img','Where to store generated html and graphics files:','ENABLE_HTMLGEN');
INSERT INTO "config" VALUES('HTMLGEN_HTML_PATH','/usr/local/etc/wview/html','Where to find HTML template files:','ENABLE_HTMLGEN');
INSERT INTO "config" VALUES('HTMLGEN_START_OFFSET','0','Generation start offset (0-4) in minutes:','ENABLE_HTMLGEN');
INSERT INTO "config" VALUES('HTMLGEN_GENERATE_INTERVAL','1','How often to generate (refresh interval for your site data) in minutes:','ENABLE_HTMLGEN');
INSERT INTO "config" VALUES('HTMLGEN_METRIC_UNITS','no','Enable metric conversion/units?','ENABLE_HTMLGEN');
INSERT INTO "config" VALUES('HTMLGEN_METRIC_USE_RAIN_MM','yes','If metric, use mm for rain instead of cm?','ENABLE_HTMLGEN');
INSERT INTO "config" VALUES('HTMLGEN_WIND_UNITS','mph','Default Wind Units:','ENABLE_HTMLGEN');
INSERT INTO "config" VALUES('HTMLGEN_DUAL_UNITS','yes','Display both metric and non-metric units on images?','ENABLE_HTMLGEN');
INSERT INTO "config" VALUES('HTMLGEN_EXTENDED_DATA','no','Store/process extended sensor values?','ENABLE_HTMLGEN');
INSERT INTO "config" VALUES('HTMLGEN_ARCHIVE_BROWSER_FILES_TO_KEEP','-1','How many daily archive record browser files to keep (-1 disables archive files, 0 indicates keep all, otherwise days to keep):','ENABLE_HTMLGEN');
INSERT INTO "config" VALUES('HTMLGEN_MPHASE_INCREASE','Waxing','Moon ''increasing'' text:','ENABLE_HTMLGEN');
INSERT INTO "config" VALUES('HTMLGEN_MPHASE_DECREASE','Waning','Moon ''decreasing'' text:','ENABLE_HTMLGEN');
INSERT INTO "config" VALUES('HTMLGEN_MPHASE_FULL','Full','Moon ''full'' text:','ENABLE_HTMLGEN');
INSERT INTO "config" VALUES('HTMLGEN_LOCAL_RADAR_URL','http://www.srh.noaa.gov/radar/images/DS.p19r0/SI.kfws/latest.gif','Local Radar Image URL (no spaces):','ENABLE_HTMLGEN');
INSERT INTO "config" VALUES('HTMLGEN_LOCAL_FORECAST_URL','http://www.wunderground.com/cgi-bin/findweather/getForecast?query=76233','Local Forecast URL (no spaces):','ENABLE_HTMLGEN');
INSERT INTO "config" VALUES('HTMLGEN_DATE_FORMAT','%x','Date Format - see ''man strftime'' for allowable formats; %D - US format mm/dd/yy, %d/%m/%Y  - dd/mm/yyyy, %x - locale''s preferred date representation:','ENABLE_HTMLGEN');
INSERT INTO "config" VALUES('ALARMS_STATION_METRIC','no','Is station metric?','ENABLE_ALARMS');
INSERT INTO "config" VALUES('ALARMS_DO_TEST','no','Test an alarm by faking it when alarms are initialized?','ENABLE_ALARMS');
INSERT INTO "config" VALUES('ALARMS_DO_TEST_NUMBER','1','Which alarm (1 - 10) to test:','ENABLE_ALARMS');
INSERT INTO "config" VALUES('ALARMS_1_TYPE','0','(1 of 10) Alarm Type (see the User Manual file for valid types):','ENABLE_ALARMS');
INSERT INTO "config" VALUES('ALARMS_1_MAX','no','Is this an upper bound alarm?','ENABLE_ALARMS');
INSERT INTO "config" VALUES('ALARMS_1_THRESHOLD','0','Upper/lower bound value (threshold) (float or integer):','ENABLE_ALARMS');
INSERT INTO "config" VALUES('ALARMS_1_ABATEMENT','600','Number of seconds to suppress alarms after an alarm triggers:','ENABLE_ALARMS');
INSERT INTO "config" VALUES('ALARMS_1_EXECUTE','/usr/local/etc/wview/alarms/your-alarm.sh','Full path to the shell script or binary to execute when the alarm triggers:','ENABLE_ALARMS');
INSERT INTO "config" VALUES('ALARMS_2_TYPE','0','(2 of 10) Alarm Type (see the User Manual file for valid types):','ENABLE_ALARMS');
INSERT INTO "config" VALUES('ALARMS_2_MAX','no','Is this an upper bound alarm?','ENABLE_ALARMS');
INSERT INTO "config" VALUES('ALARMS_2_THRESHOLD','0','Upper/lower bound value (threshold) (float or integer):','ENABLE_ALARMS');
INSERT INTO "config" VALUES('ALARMS_2_ABATEMENT','600','Number of seconds to suppress alarms after an alarm triggers:','ENABLE_ALARMS');
INSERT INTO "config" VALUES('ALARMS_2_EXECUTE','1','Full path to the shell script or binary to execute when the alarm triggers:','ENABLE_ALARMS');
INSERT INTO "config" VALUES('ALARMS_3_TYPE','0','(3 of 10) Alarm Type (see the User Manual file for valid types):','ENABLE_ALARMS');
INSERT INTO "config" VALUES('ALARMS_3_MAX','no','Is this an upper bound alarm?','ENABLE_ALARMS');
INSERT INTO "config" VALUES('ALARMS_3_THRESHOLD','0','Upper/lower bound value (threshold) (float or integer):','ENABLE_ALARMS');
INSERT INTO "config" VALUES('ALARMS_3_ABATEMENT','600','Number of seconds to suppress alarms after an alarm triggers:','ENABLE_ALARMS');
INSERT INTO "config" VALUES('ALARMS_3_EXECUTE','1','Full path to the shell script or binary to execute when the alarm triggers:','ENABLE_ALARMS');
INSERT INTO "config" VALUES('ALARMS_4_TYPE','0','(4 of 10) Alarm Type (see the User Manual file for valid types):','ENABLE_ALARMS');
INSERT INTO "config" VALUES('ALARMS_4_MAX','no','Is this an upper bound alarm?','ENABLE_ALARMS');
INSERT INTO "config" VALUES('ALARMS_4_THRESHOLD','0','Upper/lower bound value (threshold) (float or integer):','ENABLE_ALARMS');
INSERT INTO "config" VALUES('ALARMS_4_ABATEMENT','600','Number of seconds to suppress alarms after an alarm triggers:','ENABLE_ALARMS');
INSERT INTO "config" VALUES('ALARMS_4_EXECUTE','1','Full path to the shell script or binary to execute when the alarm triggers:','ENABLE_ALARMS');
INSERT INTO "config" VALUES('ALARMS_5_TYPE','0','(5 of 10) Alarm Type (see the User Manual file for valid types):','ENABLE_ALARMS');
INSERT INTO "config" VALUES('ALARMS_5_MAX','no','Is this an upper bound alarm?','ENABLE_ALARMS');
INSERT INTO "config" VALUES('ALARMS_5_THRESHOLD','0','Upper/lower bound value (threshold) (float or integer):','ENABLE_ALARMS');
INSERT INTO "config" VALUES('ALARMS_5_ABATEMENT','600','Number of seconds to suppress alarms after an alarm triggers:','ENABLE_ALARMS');
INSERT INTO "config" VALUES('ALARMS_5_EXECUTE','1','Full path to the shell script or binary to execute when the alarm triggers:','ENABLE_ALARMS');
INSERT INTO "config" VALUES('ALARMS_6_TYPE','0','(6 of 10) Alarm Type (see the User Manual file for valid types):','ENABLE_ALARMS');
INSERT INTO "config" VALUES('ALARMS_6_MAX','no','Is this an upper bound alarm?','ENABLE_ALARMS');
INSERT INTO "config" VALUES('ALARMS_6_THRESHOLD','0','Upper/lower bound value (threshold) (float or integer):','ENABLE_ALARMS');
INSERT INTO "config" VALUES('ALARMS_6_ABATEMENT','600','Number of seconds to suppress alarms after an alarm triggers:','ENABLE_ALARMS');
INSERT INTO "config" VALUES('ALARMS_6_EXECUTE','1','Full path to the shell script or binary to execute when the alarm triggers:','ENABLE_ALARMS');
INSERT INTO "config" VALUES('ALARMS_7_TYPE','0','(7 of 10) Alarm Type (see the User Manual file for valid types):','ENABLE_ALARMS');
INSERT INTO "config" VALUES('ALARMS_7_MAX','no','Is this an upper bound alarm?','ENABLE_ALARMS');
INSERT INTO "config" VALUES('ALARMS_7_THRESHOLD','0','Upper/lower bound value (threshold) (float or integer):','ENABLE_ALARMS');
INSERT INTO "config" VALUES('ALARMS_7_ABATEMENT','600','Number of seconds to suppress alarms after an alarm triggers:','ENABLE_ALARMS');
INSERT INTO "config" VALUES('ALARMS_7_EXECUTE','1','Full path to the shell script or binary to execute when the alarm triggers:','ENABLE_ALARMS');
INSERT INTO "config" VALUES('ALARMS_8_TYPE','0','(8 of 10) Alarm Type (see the User Manual file for valid types):','ENABLE_ALARMS');
INSERT INTO "config" VALUES('ALARMS_8_MAX','no','Is this an upper bound alarm?','ENABLE_ALARMS');
INSERT INTO "config" VALUES('ALARMS_8_THRESHOLD','0','Upper/lower bound value (threshold) (float or integer):','ENABLE_ALARMS');
INSERT INTO "config" VALUES('ALARMS_8_ABATEMENT','600','Number of seconds to suppress alarms after an alarm triggers:','ENABLE_ALARMS');
INSERT INTO "config" VALUES('ALARMS_8_EXECUTE','1','Full path to the shell script or binary to execute when the alarm triggers:','ENABLE_ALARMS');
INSERT INTO "config" VALUES('ALARMS_9_TYPE','0','(9 of 10) Alarm Type (see the User Manual file for valid types):','ENABLE_ALARMS');
INSERT INTO "config" VALUES('ALARMS_9_MAX','no','Is this an upper bound alarm?','ENABLE_ALARMS');
INSERT INTO "config" VALUES('ALARMS_9_THRESHOLD','0','Upper/lower bound value (threshold) (float or integer):','ENABLE_ALARMS');
INSERT INTO "config" VALUES('ALARMS_9_ABATEMENT','600','Number of seconds to suppress alarms after an alarm triggers:','ENABLE_ALARMS');
INSERT INTO "config" VALUES('ALARMS_9_EXECUTE','1','Full path to the shell script or binary to execute when the alarm triggers:','ENABLE_ALARMS');
INSERT INTO "config" VALUES('ALARMS_10_TYPE','0','(10 of 10) Alarm Type (see the User Manual file for valid types):','ENABLE_ALARMS');
INSERT INTO "config" VALUES('ALARMS_10_MAX','no','Is this an upper bound alarm?','ENABLE_ALARMS');
INSERT INTO "config" VALUES('ALARMS_10_THRESHOLD','0','Upper/lower bound value (threshold) (float or integer):','ENABLE_ALARMS');
INSERT INTO "config" VALUES('ALARMS_10_ABATEMENT','600','Number of seconds to suppress alarms after an alarm triggers:','ENABLE_ALARMS');
INSERT INTO "config" VALUES('ALARMS_10_EXECUTE','1','Full path to the shell script or binary to execute when the alarm triggers:','ENABLE_ALARMS');
INSERT INTO "config" VALUES('FTP_HOST','ftp.yourhost.net','Remote hostname:','ENABLE_FTP');
INSERT INTO "config" VALUES('FTP_USERNAME','yourusername','Remote username:','ENABLE_FTP');
INSERT INTO "config" VALUES('FTP_PASSWD','yourpassword','Remote password:','ENABLE_FTP');
INSERT INTO "config" VALUES('FTP_REMOTE_DIRECTORY','','Optional Remote Transfer Directory (relative to the ftp login directory, no leading ''/''):','ENABLE_FTP');
INSERT INTO "config" VALUES('FTP_USE_PASSIVE','yes','Use EPSV FTP transfer mode (if supported):','ENABLE_FTP');
INSERT INTO "config" VALUES('FTP_INTERVAL','5','Global transmit interval (mins):','ENABLE_FTP');
INSERT INTO "config" VALUES('FTP_RULE_1_SOURCE','*.*','(1 of 10) Source file (relative to $prefix/var/wview/img):','ENABLE_FTP');
INSERT INTO "config" VALUES('FTP_RULE_2_SOURCE','Archive/*.txt','(2 of 10) Source file (relative to $prefix/var/wview/img):','ENABLE_FTP');
INSERT INTO "config" VALUES('FTP_RULE_3_SOURCE','NOAA/*.txt','(3 of 10) Source file (relative to $prefix/var/wview/img):','ENABLE_FTP');
INSERT INTO "config" VALUES('FTP_RULE_4_SOURCE','','(4 of 10) Source file (relative to $prefix/var/wview/img):','ENABLE_FTP');
INSERT INTO "config" VALUES('FTP_RULE_5_SOURCE','','(5 of 10) Source file (relative to $prefix/var/wview/img):','ENABLE_FTP');
INSERT INTO "config" VALUES('FTP_RULE_6_SOURCE','','(6 of 10) Source file (relative to $prefix/var/wview/img):','ENABLE_FTP');
INSERT INTO "config" VALUES('FTP_RULE_7_SOURCE','','(7 of 10) Source file (relative to $prefix/var/wview/img):','ENABLE_FTP');
INSERT INTO "config" VALUES('FTP_RULE_8_SOURCE','','(8 of 10) Source file (relative to $prefix/var/wview/img):','ENABLE_FTP');
INSERT INTO "config" VALUES('FTP_RULE_9_SOURCE','','(9 of 10) Source file (relative to $prefix/var/wview/img):','ENABLE_FTP');
INSERT INTO "config" VALUES('FTP_RULE_10_SOURCE','','(10 of 10) Source file (relative to $prefix/var/wview/img):','ENABLE_FTP');
INSERT INTO "config" VALUES('SSH_1_SOURCE','/usr/local/var/wview/img','(1 of 5) Local Source directory (normally $prefix/var/wview/img):','ENABLE_SSH');
INSERT INTO "config" VALUES('SSH_1_INTERVAL','1','How often to synchronize the remote server (minutes):','ENABLE_SSH');
INSERT INTO "config" VALUES('SSH_1_HOST','remotehost.net','Remote Host (hostname or IP address):','ENABLE_SSH');
INSERT INTO "config" VALUES('SSH_1_PORT','22','SSH Port Number:','ENABLE_SSH');
INSERT INTO "config" VALUES('SSH_1_USERNAME','','Remote SSH username:','ENABLE_SSH');
INSERT INTO "config" VALUES('SSH_1_DESTINATION','http/wview','Remote destination path, relative to the root ssh login directory (no leading ''/''):','ENABLE_SSH');
INSERT INTO "config" VALUES('SSH_2_SOURCE','','(2 of 5) Local Source directory (normally $prefix/var/wview/img):','ENABLE_SSH');
INSERT INTO "config" VALUES('SSH_2_INTERVAL','0','How often to synchronize the remote server (minutes):','ENABLE_SSH');
INSERT INTO "config" VALUES('SSH_2_HOST','','Remote Host (hostname or IP address):','ENABLE_SSH');
INSERT INTO "config" VALUES('SSH_2_PORT','22','SSH Port Number:','ENABLE_SSH');
INSERT INTO "config" VALUES('SSH_2_USERNAME','','Remote SSH username:','ENABLE_SSH');
INSERT INTO "config" VALUES('SSH_2_DESTINATION','','Remote destination path, relative to the root ssh login directory (no leading ''/''):','ENABLE_SSH');
INSERT INTO "config" VALUES('SSH_3_SOURCE','','(3 of 5) Local Source directory (normally $prefix/var/wview/img):','ENABLE_SSH');
INSERT INTO "config" VALUES('SSH_3_INTERVAL','0','How often to synchronize the remote server (minutes):','ENABLE_SSH');
INSERT INTO "config" VALUES('SSH_3_HOST','','Remote Host (hostname or IP address):','ENABLE_SSH');
INSERT INTO "config" VALUES('SSH_3_PORT','22','SSH Port Number:','ENABLE_SSH');
INSERT INTO "config" VALUES('SSH_3_USERNAME','','Remote SSH username:','ENABLE_SSH');
INSERT INTO "config" VALUES('SSH_3_DESTINATION','','Remote destination path, relative to the root ssh login directory (no leading ''/''):','ENABLE_SSH');
INSERT INTO "config" VALUES('SSH_4_SOURCE','','(4 of 5) Local Source directory (normally $prefix/var/wview/img):','ENABLE_SSH');
INSERT INTO "config" VALUES('SSH_4_INTERVAL','0','How often to synchronize the remote server (minutes):','ENABLE_SSH');
INSERT INTO "config" VALUES('SSH_4_HOST','','Remote Host (hostname or IP address):','ENABLE_SSH');
INSERT INTO "config" VALUES('SSH_4_PORT','22','SSH Port Number:','ENABLE_SSH');
INSERT INTO "config" VALUES('SSH_4_USERNAME','','Remote SSH username:','ENABLE_SSH');
INSERT INTO "config" VALUES('SSH_4_DESTINATION','','Remote destination path, relative to the root ssh login directory (no leading ''/''):','ENABLE_SSH');
INSERT INTO "config" VALUES('SSH_5_SOURCE','','(5 of 5) Local Source directory (normally $prefix/var/wview/img):','ENABLE_SSH');
INSERT INTO "config" VALUES('SSH_5_INTERVAL','0','How often to synchronize the remote server (minutes):','ENABLE_SSH');
INSERT INTO "config" VALUES('SSH_5_HOST','','Remote Host (hostname or IP address):','ENABLE_SSH');
INSERT INTO "config" VALUES('SSH_5_PORT','22','SSH Port Number:','ENABLE_SSH');
INSERT INTO "config" VALUES('SSH_5_USERNAME','','Remote SSH username:','ENABLE_SSH');
INSERT INTO "config" VALUES('SSH_5_DESTINATION','','Remote destination path, relative to the root ssh login directory (no leading ''/''):','ENABLE_SSH');
INSERT INTO "config" VALUES('CWOP_APRS_CALL_SIGN','CWXXXX','CWOP call sign (CWXXXX/DWXXXX):','ENABLE_CWOP');
INSERT INTO "config" VALUES('CWOP_APRS_SERVER1','cwop.aprs.net','CWOP Server name:','ENABLE_CWOP');
INSERT INTO "config" VALUES('CWOP_APRS_PORTNO1','23','CWOP port number:','ENABLE_CWOP');
INSERT INTO "config" VALUES('CWOP_APRS_SERVER2','cwop.aprs.net','CWOP Server name:','ENABLE_CWOP');
INSERT INTO "config" VALUES('CWOP_APRS_PORTNO2','23','CWOP port number:','ENABLE_CWOP');
INSERT INTO "config" VALUES('CWOP_APRS_SERVER3','cwop.aprs.net','CWOP Server name:','ENABLE_CWOP');
INSERT INTO "config" VALUES('CWOP_APRS_PORTNO3','23','CWOP port number:','ENABLE_CWOP');
INSERT INTO "config" VALUES('CWOP_LATITUDE','3333.70N','LATITUDE - MUST be of the form DDMM.hhd (LORAN format): DD - degrees (always positive), MM - minutes (0 - 59), hh - hundredths of minutes, d - hemisphere indicator (N or S):','ENABLE_CWOP');
INSERT INTO "config" VALUES('CWOP_LONGITUDE','09654.13W','LONGITUDE - MUST be of the form DDDMM.hhd: DDD - degrees (always positive and always 3 digits - use leading zero if necessary), MM - minutes (0 - 59), hh - hundredths of minutes, d - hemisphere indicator (E or W):','ENABLE_CWOP');
INSERT INTO "config" VALUES('CWOP_LOG_WX_PACKET','no','Log the WX packet when sending (0 or 1)?','ENABLE_CWOP');
INSERT INTO "config" VALUES('HTTP_WUSTATIONID','','WUNDERGROUND station ID:','ENABLE_HTTP');
INSERT INTO "config" VALUES('HTTP_WUPASSWD','','WUNDERGROUND password:','ENABLE_HTTP');
INSERT INTO "config" VALUES('HTTP_YOUSTATIONID','','WEATHERFORYOU station ID:','ENABLE_HTTP');
INSERT INTO "config" VALUES('HTTP_YOUPASSWD','','WEATHERFORYOU password:','ENABLE_HTTP');
INSERT INTO "config" VALUES('CAL_MULT_BAROMETER','1.0','Barometer calibration multiplier:',NULL);
INSERT INTO "config" VALUES('CAL_CONST_BAROMETER','0.0','Barometer calibration constant:',NULL);
INSERT INTO "config" VALUES('CAL_MULT_PRESSURE','1.0','Station Pressure calibration multiplier:',NULL);
INSERT INTO "config" VALUES('CAL_CONST_PRESSURE','0.0','Station Pressure calibration constant:',NULL);
INSERT INTO "config" VALUES('CAL_MULT_ALTIMETER','1.0','Altimeter calibration multiplier:',NULL);
INSERT INTO "config" VALUES('CAL_CONST_ALTIMETER','0.0','Altimeter calibration constant:',NULL);
INSERT INTO "config" VALUES('CAL_MULT_INTEMP','1.0','Inside Temp calibration multiplier:',NULL);
INSERT INTO "config" VALUES('CAL_CONST_INTEMP','0.0','Inside Temp calibration constant:',NULL);
INSERT INTO "config" VALUES('CAL_MULT_OUTTEMP','1.0','Outside Temp calibration multiplier:',NULL);
INSERT INTO "config" VALUES('CAL_CONST_OUTTEMP','0.0','Outside Temp calibration constant:',NULL);
INSERT INTO "config" VALUES('CAL_MULT_INHUMIDITY','1.0','Inside Humidity calibration multiplier:',NULL);
INSERT INTO "config" VALUES('CAL_CONST_INHUMIDITY','0.0','Inside Humidity calibration constant:',NULL);
INSERT INTO "config" VALUES('CAL_MULT_OUTHUMIDITY','1.0','Outside Humidity calibration multiplier:',NULL);
INSERT INTO "config" VALUES('CAL_CONST_OUTHUMIDITY','0.0','Outside Humidity calibration constant:',NULL);
INSERT INTO "config" VALUES('CAL_MULT_WINDSPEED','1.0','Wind Speed calibration multiplier:',NULL);
INSERT INTO "config" VALUES('CAL_CONST_WINDSPEED','0.0','Wind Speed calibration constant:',NULL);
INSERT INTO "config" VALUES('CAL_MULT_WINDDIR','1.0','Wind Direction calibration multiplier:',NULL);
INSERT INTO "config" VALUES('CAL_CONST_WINDDIR','0.0','Wind Direction calibration constant:',NULL);
INSERT INTO "config" VALUES('CAL_MULT_RAIN','1.0','Rain calibration multiplier:',NULL);
INSERT INTO "config" VALUES('CAL_CONST_RAIN','0.0','Rain calibration constant:',NULL);
INSERT INTO "config" VALUES('CAL_MULT_RAINRATE','1.0','Rain Rate calibration multiplier:',NULL);
INSERT INTO "config" VALUES('CAL_CONST_RAINRATE','0.0','Rain Rate calibration constant:',NULL);
INSERT INTO "config" VALUES('PROCMON_wviewd','0','Seconds to wait before restarting a non-responsive process (0 disables):','ENABLE_PROCMON');
INSERT INTO "config" VALUES('PROCMON_htmlgend','0','Seconds to wait before restarting a non-responsive process (0 disables):','ENABLE_PROCMON');
INSERT INTO "config" VALUES('PROCMON_wvalarmd','120','Seconds to wait before restarting a non-responsive process (0 disables):','ENABLE_PROCMON');
INSERT INTO "config" VALUES('PROCMON_wvcwopd','120','Seconds to wait before restarting a non-responsive process (0 disables):','ENABLE_PROCMON');
INSERT INTO "config" VALUES('PROCMON_wvhttpd','120','Seconds to wait before restarting a non-responsive process (0 disables):','ENABLE_PROCMON');
INSERT INTO "config" VALUES('EMAIL_ADDRESS','address@server.com','Destination address for email alerts:',NULL);
INSERT INTO "config" VALUES('FROM_EMAIL_ADDRESS','from_address@other_server.com','From address for email alerts:',NULL);
INSERT INTO "config" VALUES('ENABLE_EMAIL_ALERTS','no','Send system alert emails?',NULL);
INSERT INTO "config" VALUES('SEND_TEST_EMAIL','no','Send a test email?',NULL);
INSERT INTO "config" VALUES('ADMIN_PASSWORD','9798e81db4d6cc93577169c395b90f66','Admin Password (md5):','');
COMMIT;
