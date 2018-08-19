## Unable to install 'pg' gem

#### Error Origin
```
Installing pg 1.0.0 with native extensions
Gem::Ext::BuildError: ERROR: Failed to build gem native extension. 
```

#### Error Log
```bash
$ gem install pg -v '1.0.0' --source 'https://rubygems.org/'
Building native extensions. This could take a while...
ERROR:  Error installing pg:
	ERROR: Failed to build gem native extension.

    current directory: /home/nishant/.rbenv/versions/2.5.1/lib/ruby/gems/2.5.0/gems/pg-1.0.0/ext
/home/nishant/.rbenv/versions/2.5.1/bin/ruby -r ./siteconf20180819-17209-id18f1.rb extconf.rb
checking for pg_config... no
No pg_config... trying anyway. If building fails, please try again with
 --with-pg-config=/path/to/pg_config
checking for libpq-fe.h... no
Can't find the 'libpq-fe.h header
*** extconf.rb failed ***
Could not create Makefile due to some reason, probably lack of necessary
libraries and/or headers.  Check the mkmf.log file for more details.  You may
need configuration options.

Provided configuration options:
	--with-opt-dir
	--without-opt-dir
	--with-opt-include
	--without-opt-include=${opt-dir}/include
	--with-opt-lib
	--without-opt-lib=${opt-dir}/lib
	--with-make-prog
	--without-make-prog
	--srcdir=.
	--curdir
	--ruby=/home/nishant/.rbenv/versions/2.5.1/bin/$(RUBY_BASE_NAME)
	--with-pg
	--without-pg
	--enable-windows-cross
	--disable-windows-cross
	--with-pg-config
	--without-pg-config
	--with-pg_config
	--without-pg_config
	--with-pg-dir
	--without-pg-dir
	--with-pg-include
	--without-pg-include=${pg-dir}/include
	--with-pg-lib
	--without-pg-lib=${pg-dir}/lib

To see why this extension failed to compile, please check the mkmf.log which can be found here:

  /home/nishant/.rbenv/versions/2.5.1/lib/ruby/gems/2.5.0/extensions/x86_64-linux/2.5.0-static/pg-1.0.0/mkmf.log

extconf failed, exit code 1

Gem files will remain installed in /home/nishant/.rbenv/versions/2.5.1/lib/ruby/gems/2.5.0/gems/pg-1.0.0 for inspection.
Results logged to /home/nishant/.rbenv/versions/2.5.1/lib/ruby/gems/2.5.0/extensions/x86_64-linux/2.5.0-static/pg-1.0.0/gem_make.out
```

#### Solutions to the Error
```
$ sudo apt-get install libpq-dev
[sudo] password for nishant: 
Reading package lists... Done
Building dependency tree       
Reading state information... Done
The following additional packages will be installed:
  libpq5
Suggested packages:
  postgresql-doc-10
The following NEW packages will be installed:
  libpq-dev libpq5
0 upgraded, 2 newly installed, 0 to remove and 22 not upgraded.
Need to get 324 kB of archives.
After this operation, 1,463 kB of additional disk space will be used.
Do you want to continue? [Y/n] y
Get:1 http://in.archive.ubuntu.com/ubuntu bionic-updates/main amd64 libpq5 amd64 10.5-0ubuntu0.18.04 [107 kB]
Get:2 http://in.archive.ubuntu.com/ubuntu bionic-updates/main amd64 libpq-dev amd64 10.5-0ubuntu0.18.04 [217 kB]
Fetched 324 kB in 3s (115 kB/s)     
Selecting previously unselected package libpq5:amd64.
(Reading database ... 186075 files and directories currently installed.)
Preparing to unpack .../libpq5_10.5-0ubuntu0.18.04_amd64.deb ...
Unpacking libpq5:amd64 (10.5-0ubuntu0.18.04) ...
Selecting previously unselected package libpq-dev.
Preparing to unpack .../libpq-dev_10.5-0ubuntu0.18.04_amd64.deb ...
Unpacking libpq-dev (10.5-0ubuntu0.18.04) ...
Setting up libpq5:amd64 (10.5-0ubuntu0.18.04) ...
Processing triggers for libc-bin (2.27-3ubuntu1) ...
Processing triggers for man-db (2.8.3-2) ...
Setting up libpq-dev (10.5-0ubuntu0.18.04) ...

$ gem install pg -v '1.0.0' --source 'https://rubygems.org/'
Building native extensions. This could take a while...
Successfully installed pg-1.0.0
Parsing documentation for pg-1.0.0
Installing ri documentation for pg-1.0.0
Done installing documentation for pg after 0 seconds
1 gem installed
```

#### Reason of the Error

PostgreSQL development libraries
