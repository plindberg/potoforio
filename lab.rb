# encoding: utf-8

require './portfolio'

sgl = Asset.new('Skagen Global').tap {|a|
  { 2003 => +0.6282, 2004 => +0.2455, 2005 => +0.3921,
    2006 => +0.2407, 2007 => +0.0821, 2008 => -0.3188,
    2009 => +0.2680, 2010 => +0.1627, 2011 => -0.0631
  }.each {|y, g| a.annual_gains(y, 1.0 + g)}
}

skt = Asset.new('Skagen Kon-Tiki').tap {|a|
  { 2003 => +1.0293, 2004 => +0.3235, 2005 => +0.5925,
    2006 => +0.2275, 2007 => +0.2250, 2008 => -0.3613,
    2009 => +0.6336, 2010 => +0.2123, 2011 => -0.1486
  }.each {|y, g| a.annual_gains(y, 1.0 + g)}
}
dem = Asset.new('Danske Emerging').tap {|a|
  { 2003 => +0.4930, 2004 => +0.2027, 2005 => +0.3392,
    2006 => +0.3269, 2007 => +0.3089, 2008 => -0.4354,
    2009 => +0.7594, 2010 => +0.2698, 2011 => -0.1289
  }.each {|y, g| a.annual_gains(y, 1.0 + g)}
}
flt = Asset.new('Fidelity Latin America').tap {|a|
  { 2003 => +0.6809, 2004 => +0.4070, 2005 => +0.5212,
    2006 => +0.4542, 2007 => +0.3654, 2008 => -0.5206,
    2009 => +1.1526, 2010 => +0.1934, 2011 => -0.1855
  }.each {|y, g| a.annual_gains(y, 1.0 + g)}
}
ecö = Asset.new('East Capital Östeuropa').tap {|a|
  { 2003 => +0.3960, 2004 => +0.4388, 2005 => +0.8791,
    2006 => +0.2387, 2007 => +0.2374, 2008 => -0.6395,
    2009 => +0.8567, 2010 => +0.1827, 2011 => -0.2380
  }.each {|y, g| a.annual_gains(y, 1.0 + g)}
}
fas = Asset.new('Folksam Asien').tap {|a|
  { 2003 => +0.1347, 2004 => +0.0523, 2005 => +0.5248,
    2006 => +0.1646, 2007 => +0.3662, 2008 => -0.4207,
    2009 => +0.4953, 2010 => +0.1242, 2011 => -0.1785
  }.each {|y, g| a.annual_gains(y, 1.0 + g)}
}
dg = Asset.new('Didner & Gerge').tap {|a|
  { 2003 => +0.3341, 2004 => +0.2097, 2005 => +0.3401,
    2006 => +0.1922, 2007 => +0.0047, 2008 => -0.4212,
    2009 => +0.8329, 2010 => +0.2950, 2011 => -0.1738
  }.each {|y, g| a.annual_gains(y, 1.0 + g)}
}
las = Asset.new('Lannebo Sverige').tap {|a|
  { 2003 => +0.3069, 2004 => +0.1429, 2005 => +0.2866,
    2006 => +0.2557, 2007 => -0.0823, 2008 => -0.3588,
    2009 => +0.5644, 2010 => +0.3194, 2011 => -0.1230
  }.each {|y, g| a.annual_gains(y, 1.0 + g)}
}
lsm = Asset.new('Lannebo Småbolag').tap {|a|
  { 2003 => +0.4369, 2004 => +0.1941, 2005 => +0.4217,
    2006 => +0.3888, 2007 => -0.0636, 2008 => -0.3688,
    2009 => +0.6389, 2010 => +0.3137, 2011 => -0.1041
  }.each {|y, g| a.annual_gains(y, 1.0 + g)}
}
sps = Asset.new('Spiltan Aktiefond Stabil').tap {|a|
  { 2003 => +0.2482, 2004 => +0.2335, 2005 => +0.2453,
    2006 => +0.3162, 2007 => -0.0239, 2008 => -0.3026,
    2009 => +0.4814, 2010 => +0.2445, 2011 => -0.0299
  }.each {|y, g| a.annual_gains(y, 1.0 + g)}
}
spi = Asset.new('SPP Aktieindexfond Sverige').tap {|a|
  { 2003 => +0.3096, 2004 => +0.1914, 2005 => +0.3316,
    2006 => +0.2217, 2007 => -0.0382, 2008 => -0.3627,
    2009 => +0.5024, 2010 => +0.2419, 2011 => -0.1399
  }.each {|y, g| a.annual_gains(y, 1.0 + g)}
}

et = Asset.new('Enter Trend').tap {|a|
  { 2003 => +0.0434, 2004 => +0.0770, 2005 => +0.0536,
    2006 => +0.0027, 2007 => +0.0092, 2008 => +0.1304,
    2009 => -0.0300, 2010 => +0.0518, 2011 => +0.0980
  }.each {|y, g| a.annual_gains(y, 1.0 + g)}
}
dli = Asset.new('Danske Likviditet').tap {|a|
  { 2003 => +0.0342, 2004 => +0.0329, 2005 => +0.0171,
    2006 => +0.0179, 2007 => +0.0317, 2008 => +0.0575,
    2009 => +0.0244, 2010 => +0.0084, 2011 => +0.0217
  }.each {|y, g| a.annual_gains(y, 1.0 + g)}
}
arl = Asset.new('AMF Räntefond Lång').tap {|a|
  { 2003 => +0.0543, 2004 => +0.0780, 2005 => +0.0553,
    2006 => +0.0060, 2007 => +0.0102, 2008 => +0.1596,
    2009 => +0.0204, 2010 => +0.0204, 2011 => +0.1153
  }.each {|y, g| a.annual_gains(y, 1.0 + g)}
}

Portfolio.new(2003..2011, 'SkG/KoT/DG/EnT').tap {|p|
  p.plan(sgl, 0.40)
  p.plan(skt, 0.25)
  p.plan(dg,  0.25)
  p.plan(et,  0.10)
  p.annual_contribution = 1501 * 12
}#.print

Portfolio.new(2003..2011, 'SkG/KoT/DG+LSm/EnT').tap {|p|
  p.plan(sgl, 0.40)
  p.plan(skt, 0.25)
  p.plan(dg,  0.10)
  p.plan(lsm, 0.15)
  p.plan(et,  0.10)
  p.annual_contribution = 1501 * 12
}#.print

Portfolio.new(2003..2011, 'SkG/KoT/LSm/EnT').tap {|p|
  p.plan(sgl, 0.40)
  p.plan(skt, 0.25)
  p.plan(lsm, 0.25)
  p.plan(et,  0.10)
  p.annual_contribution = 1501 * 12
}#.print

Portfolio.new(2003..2011, 'SkG/KoT/LSm/DLi+ARL').tap {|p|
  p.plan(sgl, 0.40)
  p.plan(skt, 0.25)
  p.plan(lsm, 0.25)
  p.plan(dli, 0.05)
  p.plan(arl, 0.05)
  p.annual_contribution = 1501 * 12
}#.print

Portfolio.new(2003..2011, 'lab').tap {|p|
  #p.plan(sgl, 0.40)
  #p.plan(skt, 0.25)
  #p.plan(lsm, 0.25)
  #p.plan(dli, 0.5)
  #p.plan(arl, 0.5)
  p.plan(et, 1.0)
  p.annual_contribution = 1501 * 12
}.print

Portfolio.new(2003..2011, 'SkG/KoT/DG/kr').tap {|p|
  p.plan(sgl, 0.40)
  p.plan(skt, 0.25)
  p.plan(dg,  0.25)
  p.plan(dli, 0.10)
  p.annual_contribution = 1501 * 12
}#.print

Portfolio.new(2003..2011, 'SkG/KoT/svidx/EnT').tap {|p|
  p.plan(sgl, 0.40)
  p.plan(skt, 0.25)
  p.plan(spi, 0.25)
  p.plan(et,  0.10)
  p.annual_contribution = 1501 * 12
}#.print

Portfolio.new(2003..2011, 'SkG/emidx/DG/EnT').tap {|p|
  p.plan(sgl, 0.40)
  p.plan(dem, 0.25)
  p.plan(dg,  0.25)
  p.plan(et,  0.10)
  p.annual_contribution = 1501 * 12
}#.print
