## Address already in use - bind(2) for "0.0.0.0" port 3000 (Errno::EADDRINUSE)

#### Error Origin
```
 $ bin/rails s
=> Booting Puma
=> Rails 5.2.1 application starting in development 
...
	 2: from /home/nishant/.rbenv/versions/2.5.1/lib/ruby/gems/2.5.0/gems/puma-3.12.0/lib/puma/binder.rb:272:in `add_tcp_listener'
	 1: from /home/nishant/.rbenv/versions/2.5.1/lib/ruby/gems/2.5.0/gems/puma-3.12.0/lib/puma/binder.rb:272:in `new'
/home/nishant/.rbenv/versions/2.5.1/lib/ruby/gems/2.5.0/gems/puma-3.12.0/lib/puma/binder.rb:272:in `initialize': Address already in use - bind(2) for "0.0.0.0" port 3000 (Errno::EADDRINUSE)
```

#### Error Log
```
$ bin/rails s
=> Booting Puma
=> Rails 5.2.1 application starting in development 
=> Run `rails server -h` for more startup options
Puma starting in single mode...
* Version 3.12.0 (ruby 2.5.1-p57), codename: Llamas in Pajamas
* Min threads: 5, max threads: 5
* Environment: development
* Listening on tcp://0.0.0.0:3000
Exiting
Traceback (most recent call last):
	41: from bin/rails:3:in `<main>'
	40: from bin/rails:3:in `load'
	39: from /home/nishant/me/projects/pareeksha-manch/webapp/bin/spring:15:in `<top (required)>'
	38: from /home/nishant/.rbenv/versions/2.5.1/lib/ruby/2.5.0/rubygems/core_ext/kernel_require.rb:70:in `require'
	37: from /home/nishant/.rbenv/versions/2.5.1/lib/ruby/2.5.0/rubygems/core_ext/kernel_require.rb:70:in `require'
	36: from /home/nishant/.rbenv/versions/2.5.1/lib/ruby/gems/2.5.0/gems/spring-2.0.2/lib/spring/binstub.rb:31:in `<top (required)>'
	35: from /home/nishant/.rbenv/versions/2.5.1/lib/ruby/gems/2.5.0/gems/spring-2.0.2/lib/spring/binstub.rb:31:in `load'
	34: from /home/nishant/.rbenv/versions/2.5.1/lib/ruby/gems/2.5.0/gems/spring-2.0.2/bin/spring:49:in `<top (required)>'
	33: from /home/nishant/.rbenv/versions/2.5.1/lib/ruby/gems/2.5.0/gems/spring-2.0.2/lib/spring/client.rb:30:in `run'
	32: from /home/nishant/.rbenv/versions/2.5.1/lib/ruby/gems/2.5.0/gems/spring-2.0.2/lib/spring/client/command.rb:7:in `call'
	31: from /home/nishant/.rbenv/versions/2.5.1/lib/ruby/gems/2.5.0/gems/spring-2.0.2/lib/spring/client/rails.rb:28:in `call'
	30: from /home/nishant/.rbenv/versions/2.5.1/lib/ruby/gems/2.5.0/gems/spring-2.0.2/lib/spring/client/rails.rb:28:in `load'
	29: from /home/nishant/me/projects/pareeksha-manch/webapp/bin/rails:9:in `<top (required)>'
	28: from /home/nishant/.rbenv/versions/2.5.1/lib/ruby/gems/2.5.0/gems/activesupport-5.2.1/lib/active_support/dependencies.rb:287:in `require'
	27: from /home/nishant/.rbenv/versions/2.5.1/lib/ruby/gems/2.5.0/gems/activesupport-5.2.1/lib/active_support/dependencies.rb:253:in `load_dependency'
	26: from /home/nishant/.rbenv/versions/2.5.1/lib/ruby/gems/2.5.0/gems/activesupport-5.2.1/lib/active_support/dependencies.rb:287:in `block in require'
	25: from /home/nishant/.rbenv/versions/2.5.1/lib/ruby/gems/2.5.0/gems/bootsnap-1.3.1/lib/bootsnap/load_path_cache/core_ext/kernel_require.rb:29:in `require'
	24: from /home/nishant/.rbenv/versions/2.5.1/lib/ruby/gems/2.5.0/gems/bootsnap-1.3.1/lib/bootsnap/load_path_cache/core_ext/kernel_require.rb:20:in `require_with_bootsnap_lfi'
	23: from /home/nishant/.rbenv/versions/2.5.1/lib/ruby/gems/2.5.0/gems/bootsnap-1.3.1/lib/bootsnap/load_path_cache/loaded_features_index.rb:65:in `register'
	22: from /home/nishant/.rbenv/versions/2.5.1/lib/ruby/gems/2.5.0/gems/bootsnap-1.3.1/lib/bootsnap/load_path_cache/core_ext/kernel_require.rb:21:in `block in require_with_bootsnap_lfi'
	21: from /home/nishant/.rbenv/versions/2.5.1/lib/ruby/gems/2.5.0/gems/bootsnap-1.3.1/lib/bootsnap/load_path_cache/core_ext/kernel_require.rb:21:in `require'
	20: from /home/nishant/.rbenv/versions/2.5.1/lib/ruby/gems/2.5.0/gems/railties-5.2.1/lib/rails/commands.rb:18:in `<main>'
	19: from /home/nishant/.rbenv/versions/2.5.1/lib/ruby/gems/2.5.0/gems/railties-5.2.1/lib/rails/command.rb:46:in `invoke'
	18: from /home/nishant/.rbenv/versions/2.5.1/lib/ruby/gems/2.5.0/gems/railties-5.2.1/lib/rails/command/base.rb:65:in `perform'
	17: from /home/nishant/.rbenv/versions/2.5.1/lib/ruby/gems/2.5.0/gems/thor-0.20.0/lib/thor.rb:387:in `dispatch'
	16: from /home/nishant/.rbenv/versions/2.5.1/lib/ruby/gems/2.5.0/gems/thor-0.20.0/lib/thor/invocation.rb:126:in `invoke_command'
	15: from /home/nishant/.rbenv/versions/2.5.1/lib/ruby/gems/2.5.0/gems/thor-0.20.0/lib/thor/command.rb:27:in `run'
	14: from /home/nishant/.rbenv/versions/2.5.1/lib/ruby/gems/2.5.0/gems/railties-5.2.1/lib/rails/commands/server/server_command.rb:142:in `perform'
	13: from /home/nishant/.rbenv/versions/2.5.1/lib/ruby/gems/2.5.0/gems/railties-5.2.1/lib/rails/commands/server/server_command.rb:142:in `tap'
	12: from /home/nishant/.rbenv/versions/2.5.1/lib/ruby/gems/2.5.0/gems/railties-5.2.1/lib/rails/commands/server/server_command.rb:147:in `block in perform'
	11: from /home/nishant/.rbenv/versions/2.5.1/lib/ruby/gems/2.5.0/gems/railties-5.2.1/lib/rails/commands/server/server_command.rb:53:in `start'
	10: from /home/nishant/.rbenv/versions/2.5.1/lib/ruby/gems/2.5.0/gems/rack-2.0.5/lib/rack/server.rb:297:in `start'
	 9: from /home/nishant/.rbenv/versions/2.5.1/lib/ruby/gems/2.5.0/gems/puma-3.12.0/lib/rack/handler/puma.rb:70:in `run'
	 8: from /home/nishant/.rbenv/versions/2.5.1/lib/ruby/gems/2.5.0/gems/puma-3.12.0/lib/puma/launcher.rb:184:in `run'
	 7: from /home/nishant/.rbenv/versions/2.5.1/lib/ruby/gems/2.5.0/gems/puma-3.12.0/lib/puma/single.rb:96:in `run'
	 6: from /home/nishant/.rbenv/versions/2.5.1/lib/ruby/gems/2.5.0/gems/puma-3.12.0/lib/puma/runner.rb:151:in `load_and_bind'
	 5: from /home/nishant/.rbenv/versions/2.5.1/lib/ruby/gems/2.5.0/gems/puma-3.12.0/lib/puma/binder.rb:88:in `parse'
	 4: from /home/nishant/.rbenv/versions/2.5.1/lib/ruby/gems/2.5.0/gems/puma-3.12.0/lib/puma/binder.rb:88:in `each'
	 3: from /home/nishant/.rbenv/versions/2.5.1/lib/ruby/gems/2.5.0/gems/puma-3.12.0/lib/puma/binder.rb:105:in `block in parse'
	 2: from /home/nishant/.rbenv/versions/2.5.1/lib/ruby/gems/2.5.0/gems/puma-3.12.0/lib/puma/binder.rb:272:in `add_tcp_listener'
	 1: from /home/nishant/.rbenv/versions/2.5.1/lib/ruby/gems/2.5.0/gems/puma-3.12.0/lib/puma/binder.rb:272:in `new'
/home/nishant/.rbenv/versions/2.5.1/lib/ruby/gems/2.5.0/gems/puma-3.12.0/lib/puma/binder.rb:272:in `initialize': Address already in use - bind(2) for "0.0.0.0" port 3000 (Errno::EADDRINUSE)

```

#### Solutions to the Error

- Check the port along with process ID
```
$ sudo lsof -i :3000
COMMAND     PID    USER   FD   TYPE DEVICE SIZE/OFF NODE NAME
VBoxHeadl 10067   nishant   22u  IPv4  73625      0t0  TCP *:3000 (LISTEN)
```
- Kill the process to release port
```
$ sudo kill 10067
```

### Alternate solution
Run the web server in different port other than default(i.e 3000)
```
$ bin/rails s -p 4000
```

#### Reason of the Error
Since port was used by another process, hence it was not able to bind during `bin/rails s`.
