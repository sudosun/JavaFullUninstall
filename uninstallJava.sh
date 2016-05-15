#!/bin/bash
sudo su
if [ $(users | wc -l) -eq "1" ]; then 
		ONEUSER=$(users)
		echo "This user $ONEUSER"
		#System folder java
		rm -rf /Library/PreferencePanes/JavaControlPanel.prefPane
		rm -rf /Library/Java
		rm -rf /Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin
		rm -rf /Library/LaunchAgents/com.oracle.java.Java-Updater.plist
		rm -rf /Library/LaunchDaemons/com.oracle.java.Helper-Tool.plist
		rm -rf /Library/Preferences/com.oracle.java.Helper-Tool.plist
		rm -rf /private/var/root/Library/Preferences/com.oracle*
		rm -rf /private/var/root/.oracle*
		rm -rf /private/var/db/receipts/com.oracle*
		rm -rf /private/var/root/Library/Preferences/com.oracle*
		
		# Apple java folder
		rm -rf /private/var/root/Library/Preferences/com.apple.java*
		rm -rf /System/Library/LaunchAgents/com.apple.java*
		rm -rf /Users/$ONEUSER/Library/Preferences/com.apple.java*
		
		# User java folder
		rm -rf /Users/$ONEUSER/Library/Application\ Support/Java
		rm -rf /Users/$ONEUSER/Library/Caches/com.oracle*
		rm -rf /Users/$ONEUSER/Library/Preferences/com.oracle*
		
		## uncomment this line at one's own risk
		# rm -rf /System/Library/Frameworks/JavaVM.framework*
		# find /usr -xdev -lname */System/Library/Frameworks/JavaVM.framework* -exec rm -rf {} \;
		
		## this detail command output
		# rm -rf /usr/bin/appletviewer
		# rm -rf /usr/bin/apt
		# rm -rf /usr/bin/extcheck
		# rm -rf /usr/bin/idlj
		# rm -rf /usr/bin/jar
		# rm -rf /usr/bin/jarsigner
		# rm -rf /usr/bin/java
		# rm -rf /usr/bin/javac
		# rm -rf /usr/bin/javadoc
		# rm -rf /usr/bin/javah
		# rm -rf /usr/bin/javap
		# rm -rf /usr/bin/javaws
		# rm -rf /usr/bin/jcmd
		# rm -rf /usr/bin/jconsole
		# rm -rf /usr/bin/jdb
		# rm -rf /usr/bin/jdeps
		# rm -rf /usr/bin/jhat
		# rm -rf /usr/bin/jinfo
		# rm -rf /usr/bin/jjs
		# rm -rf /usr/bin/jmap
		# rm -rf /usr/bin/jmc
		# rm -rf /usr/bin/jps
		# rm -rf /usr/bin/jrunscript
		# rm -rf /usr/bin/jsadebugd
		# rm -rf /usr/bin/jstack
		# rm -rf /usr/bin/jstat
		# rm -rf /usr/bin/jstatd
		# rm -rf /usr/bin/jvisualvm
		# rm -rf /usr/bin/keytool
		# rm -rf /usr/bin/native2ascii
		# rm -rf /usr/bin/orbd
		# rm -rf /usr/bin/pack200
		# rm -rf /usr/bin/policytool
		# rm -rf /usr/bin/rmic
		# rm -rf /usr/bin/rmid
		# rm -rf /usr/bin/rmiregistry
		# rm -rf /usr/bin/schemagen
		# rm -rf /usr/bin/serialver
		# rm -rf /usr/bin/servertool
		# rm -rf /usr/bin/tnameserv
		# rm -rf /usr/bin/unpack200
		# rm -rf /usr/bin/wsgen
		# rm -rf /usr/bin/wsimport
		# rm -rf /usr/bin/xjc
		# rm -rf /usr/libexec/java_home
		# rm -rf /usr/share/man/man1/appletviewer.1
		# rm -rf /usr/share/man/man1/apt.1
		# rm -rf /usr/share/man/man1/extcheck.1
		# rm -rf /usr/share/man/man1/idlj.1
		# rm -rf /usr/share/man/man1/jar.1
		# rm -rf /usr/share/man/man1/jarsigner.1
		# rm -rf /usr/share/man/man1/java.1
		# rm -rf /usr/share/man/man1/javac.1
		# rm -rf /usr/share/man/man1/javadoc.1
		# rm -rf /usr/share/man/man1/javah.1
		# rm -rf /usr/share/man/man1/javap.1
		# rm -rf /usr/share/man/man1/javaws.1
		# rm -rf /usr/share/man/man1/jconsole.1
		# rm -rf /usr/share/man/man1/jdb.1
		# rm -rf /usr/share/man/man1/jhat.1
		# rm -rf /usr/share/man/man1/jinfo.1
		# rm -rf /usr/share/man/man1/jmap.1
		# rm -rf /usr/share/man/man1/jps.1
		# rm -rf /usr/share/man/man1/jrunscript.1
		# rm -rf /usr/share/man/man1/jsadebugd.1
		# rm -rf /usr/share/man/man1/jstack.1
		# rm -rf /usr/share/man/man1/jstat.1
		# rm -rf /usr/share/man/man1/jstatd.1
		# rm -rf /usr/share/man/man1/keytool.1
		# rm -rf /usr/share/man/man1/native2ascii.1
		# rm -rf /usr/share/man/man1/orbd.1
		# rm -rf /usr/share/man/man1/pack200.1
		# rm -rf /usr/share/man/man1/policytool.1
		# rm -rf /usr/share/man/man1/rmic.1
		# rm -rf /usr/share/man/man1/rmid.1
		# rm -rf /usr/share/man/man1/rmiregistry.1
		# rm -rf /usr/share/man/man1/schemagen.1
		# rm -rf /usr/share/man/man1/serialver.1
		# rm -rf /usr/share/man/man1/servertool.1
		# rm -rf /usr/share/man/man1/tnameserv.1
		# rm -rf /usr/share/man/man1/unpack200.1
		# rm -rf /usr/share/man/man1/wsgen.1
		# rm -rf /usr/share/man/man1/wsimport.1
		# rm -rf /usr/share/man/man1/xjc.1
	else 
		echo "Java not uninstall in System two users"
fi
