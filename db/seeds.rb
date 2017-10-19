President.delete_all

President.create!(name: 'Rajendra Prasad', in_office_start: '26 January 1950', in_office_end: '14 May 1962',
  picture: File.new("#{Rails.root}/public/images/presidents/1.jpg"))
President.create!(name: 'Sarvepalli Radhakrishnan', in_office_start: '14 May 1962', in_office_end: '13 May 1967',
  picture: File.new("#{Rails.root}/public/images/presidents/2.jpg"))
President.create!(name: 'Zakir Husain', in_office_start: '13 May 1967', in_office_end: '3 May 1969',
  picture: File.new("#{Rails.root}/public/images/presidents/3.jpg"))
President.create!(name: 'Varahagiri Venkata Giri', in_office_start: '24 August 1969', in_office_end: '24 August 1974',
  picture: File.new("#{Rails.root}/public/images/presidents/4.jpg"))
President.create!(name: 'Fakhruddin Ali Ahmed', in_office_start: '24 August 1974', in_office_end: '11 February 1977',
  picture: File.new("#{Rails.root}/public/images/presidents/5.jpg"))
President.create!(name: 'Neelam Sanjiva Reddy', in_office_start: '25 July 1977', in_office_end: '25 July 1982',
  picture: File.new("#{Rails.root}/public/images/presidents/6.jpg"))
President.create!(name: 'Zail Singh', in_office_start: '25 July 1982', in_office_end: '25 July 1987',
  picture: File.new("#{Rails.root}/public/images/presidents/7.jpg"))
President.create!(name: 'Ramaswamy Venkataraman', in_office_start: '25 July 1987', in_office_end: '25 July 1992',
  picture: File.new("#{Rails.root}/public/images/presidents/8.jpg"))
President.create!(name: 'Shankar Dayal Sharma', in_office_start: '25 July 1992', in_office_end: '25 July 1997',
  picture: File.new("#{Rails.root}/public/images/presidents/9.jpg"))
President.create!(name: 'K. R. Narayanan', in_office_start: '25 July 1997', in_office_end: '25 July 2002',
  picture: File.new("#{Rails.root}/public/images/presidents/10.jpg"))
President.create!(name: 'A. P. J. Abdul Kalam', in_office_start: '25 July 2002', in_office_end: '25 July 2007',
  picture: File.new("#{Rails.root}/public/images/presidents/11.jpg"))
President.create!(name: 'Pratibha Patil', in_office_start: '25 July 2007', in_office_end: ' 25 July 2012',
  picture: File.new("#{Rails.root}/public/images/presidents/12.jpg"))
President.create!(name: 'Pranab Mukherjee', in_office_start: '25 July 2012', in_office_end: '25 July 2017',
  picture: File.new("#{Rails.root}/public/images/presidents/13.jpg"))
President.create!(name: 'Ram Nath Kovind', in_office_start: '25 July 2017', in_office_end: '',
  picture: File.new("#{Rails.root}/public/images/presidents/14.jpg"))

puts ("Data seeded!")
