#
# Run this script to generated a changes.html output file
#
puts {<html>
<head>
  <title>SQLite Change Log</title>
</head>
<body bgcolor="white">
<h1 align="center">Recent Changes To SQLite</h1>

<DL>
}


proc chng {date desc} {
  puts "<DT><B>$date</B></DT>"
  puts "<DD><P><UL>$desc</UL></P></DD>"
}

chng {2000 June 3} {
<li>Added support for default values on columns of a table.</li>
<li>Improved test coverage.  Fixed a few obscure bugs found by the
improved tests.</li>
}

chng {2000 June 2} {
<li>All database files to be modified by an UPDATE, INSERT or DELETE are 
now locked before any changes are made to any files.  
This makes it safe (I think) to access
the same database simultaneously from multiple processes.</li>
<li>The code appears stable so we are now calling it "beta".</li>
}

chng {2000 June 1} {
<li>Better support for file locking so that two or more processes 
(or threads)
can access the same database simultaneously.  More work needed in
this area, though.</li>
}

chng {2000 May 31} {
<li>Added support for aggregate functions (Ex: <b>COUNT(*)</b>, <b>MIN(...)</b>)
to the SELECT statement.</li>
<li>Added support for <B>SELECT DISTINCT ...</B></li>
}

chng {2000 May 30} {
<li>Added the <b>LIKE</b> operator.</li>
<li>Added a <b>GLOB</b> operator: similar to <B>LIKE</B> 
but it uses Unix shell globbing wildcards instead of the '%' 
and '_' wildcards of SQL.</li>
<li>Added the <B>COPY</b> command patterned after 
<a href="http://www.postgresql.org/">PostgreSQL</a> so that SQLite
can now read the output of the <b>pg_dump</b> database dump utility
of PostgreSQL.</li>
<li>Added a <B>VACUUM</B> command that that calls the 
<b>gdbm_reorganize()</b> function on the underlying database
files.</li>
<li>And many, many bug fixes...</li>
}

chng {2000 May 29} {
<li>Initial Public Release of Alpha code</li>
}

puts {
</DL>
<p><hr /></p>
<p><a href="index.html"><img src="/goback.jpg" border=0 />
Back to the SQLite Home Page</a>
</p>

</body></html>}
