use SkyBrands_WebNC
-- get admin
go
create proc psGetAdmin(@username varchar(50), @password varchar(50))
as
begin tran

	insert into [Admin](username, [password])
	values(@username, @password)

if(@@error <> 0)
	rollback tran
else
	commit tran

-- them tai khoan
go
create proc psInsertAccount(@username varchar(50), @password varchar(5))
as
begin tran

	insert into Accounts(username, [password])
	values(@username, @password)

if(@@error <> 0)
	rollback tran
else
	commit tran

-- get tai khoan
go
create proc psGetAccounts(@username varchar(50), @password varchar(5))
as
begin tran

	select * from Accounts where username = @username and [password] = @password

if(@@error <> 0)
	rollback tran
else
	commit tran

-- them sach
go
create proc psInsertBook(@bookId varchar(10), @bookName nvarchar(max), @bookImage nvarchar(max), @author nvarchar(200), @price money, @quantity int, @publishingYear int, @language nvarchar(100), @numberPage int, @form nvarchar(50), @weight int, @bookDescribe nvarchar(max), @cid int, @pcid int)
as
begin tran

	insert into Books
	values(@bookId, @bookName, @bookImage, @author, @price, @quantity, @publishingYear, @language, @numberPage, @form, @weight, @bookDescribe, @cid, @pcid)

if(@@error <> 0)
	rollback tran
else
	commit tran

-- sua sach
go
create proc psUpdateBook(@bookId varchar(10), @bookName nvarchar(max), @bookImage nvarchar(max), @author nvarchar(200), @price money, @quantity int, @publishingYear int, @language nvarchar(100), @numberPage int, @form nvarchar(50), @weight int, @bookDescribe nvarchar(max), @cid int, @pcid int)
as
begin tran

	update Books set bookName = @bookName, bookImage = @bookImage, author = @author, price = @price, quantity = @quantity, publishingYear = @publishingYear, [language] = @language, numberPage = @numberPage, form = @form, [weight] = @weight, bookDescribe = @bookDescribe, cid = @cid, pcid = @pcid
	where bookId = @bookId

if(@@error <> 0)
	rollback tran
else
	commit tran

-- xoa sach
go
create proc psDeleteBook(@bookId varchar(10))
as
begin tran

	delete from Books where bookId = @bookId

if(@@error <> 0)
	rollback tran
else
	commit tran

-- get sach
go
create proc psGetTableBooksByCid (@cid int)
as
begin tran
	select * from Books where cid = @cid order by bookId desc
if(@@error <> 0)
	rollback tran
else
	commit tran

go
create proc psGetTableBooks (@bookId varchar(10))
as
begin tran
	if(@bookId is null)
		select * from Books
	else
		select b.bookId, b.bookName, b.bookImage, b.author, b.price, b.quantity, b.publishingYear, 
		b.[language], b.numberPage, b.form, b.[weight], b.bookDescribe, pc.companyName
		from Books as b, PublishingCompany as pc
		where b.pcid = pc.companyId and b.bookId = @bookId
		order by b.bookId
if(@@ERROR <> 0)
	rollback tran
else
	commit tran

go
create proc psGetTop4BooksByCid (@cid int)
as
begin tran
	select top 4 with ties b.bookId, b.bookName, b.bookImage, b.author, pc.companyName, b.publishingYear, b.numberPage, b.cid
	from Books as b, Categories as c, PublishingCompany as pc
	where b.cid = c.categoryId and b.pcid = pc.companyId and b.cid = @cid
	order by b.bookId desc
if(@@error <> 0)
	rollback tran
else
	commit tran

go
create proc psGetTableCategories (@categoryId int)
as
begin tran
	if(@categoryId is null)
		select * from Categories
	else
		select * from Categories where categoryId = @categoryId
if(@@ERROR <> 0)
	rollback tran
else
	commit tran