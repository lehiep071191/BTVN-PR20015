class Student
	def nhap
		print "nhap vao ten cua ban"
			@ten = gets.chomp
		print "nhap vao tuoi cua ban"
			@age = gets.chomp.to_i
		print "nhap vao diem toan"
			@toan = gets.chomp.to_i
		print "nhap vao dien van"
			@van = gets.chomp.to_i
		print "nhap vao diem anh"
			@anh = gets.chomp.to_i
	end
	def tong 
		@tong = (@toan + @van + @anh)
	end	
	def inra
		puts "thi sinh #{@ten}, tuoi #{@tuoi}, co diem toan la #{@toan}, 
		diem van la #{@van}, diem anh la #{@anh}, tong diem ca 3 mon la #{@tong}"
end
end
student = Student.new
	student.nhap
	student.tong
	student.inra

