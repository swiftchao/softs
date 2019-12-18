@echo off
@rem Licensed to the Apache Software Foundation (ASF) under one or more
@rem contributor license agreements.  See the NOTICE file distributed with
@rem this work for additional information regarding copyright ownership.
@rem The ASF licenses this file to You under the Apache License, Version 2.0
@rem (the "License"); you may not use this file except in compliance with
@rem the License.  You may obtain a copy of the License at
@rem
@rem     http://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.

@rem Author: chaofei
@rem E-Mail: chaofeibest@163.com

setlocal

set CMD_LINE_ARGS=%1
if ""%1""=="""" set CMD_LINE_ARGS=6000
shift

:start_http
  title Start http process by port %PORT_TO_BE_KILLED% %CMD_LINE_ARGS%
  set /p=Start http process by port %PORT_TO_BE_KILLED% %CMD_LINE_ARGS%
  (python -m SimpleHTTPServer %CMD_LINE_ARGS%) && (@echo  >OK & C:\Windows\System32\findstr.exe /a:A . OK*&del OK) || (@echo  >ERROR & C:\Windows\System32\findstr.exe /a:C . ERROR*&del ERROR)
:eof

endlocal