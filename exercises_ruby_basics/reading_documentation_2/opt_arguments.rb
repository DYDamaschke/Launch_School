s = 'abc def ghi,jkl mno pqr,stu vwx yz'
puts s.split.inspect
puts s.split(',').inspect
puts s.split(',', 2).inspect

#[abc, def, ghi,, jkl, mno, pqr,, stu, vwx, yz]
#[abcdefghi, jklmnopqr, stuvwxyz]
#[abcdefghi, jklmnopqr,stuvwxyz]