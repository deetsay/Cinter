; Not a full example, sorry

		section	koodi,code

		lea	InstrumentSpace,a4
		lea	MusicData(pc),a2
		lea	CinterSpace,a6

		lea	Cinter_JITcode,a3
		; A2 = Music data
		; A3 = Cinter JITCode
		; A4 = Instrument space
		; A6 = Cinter working memory
		jsr	CinterInit(pc)



		move.l	4.w,a6
		cmp	#37,LIB_VERSION(a6)
		blt.s	.skipcachectl
		jsr	_LVOCacheClearU(a6)
.skipcachectl



		lea	CinterSpace,a6

		jsr	Cinter_JITcode+($0*$200)
		jsr	Cinter_JITcode+($1*$200)
		jsr	Cinter_JITcode+($2*$200)
		jsr	Cinter_JITcode+($3*$200)
		jsr	Cinter_JITcode+($4*$200)
		jsr	Cinter_JITcode+($5*$200)
		jsr	Cinter_JITcode+($6*$200)
		jsr	Cinter_JITcode+($7*$200)
		jsr	Cinter_JITcode+($8*$200)
		jsr	Cinter_JITcode+($9*$200)
		jsr	Cinter_JITcode+($a*$200)
		jsr	Cinter_JITcode+($b*$200)
		jsr	Cinter_JITcode+($c*$200)
		jsr	Cinter_JITcode+($d*$200)
		jsr	Cinter_JITcode+($e*$200)
		jsr	Cinter_JITcode+($f*$200)
		jsr	Cinter_JITcode+($10*$200)
		jsr	Cinter_JITcode+($11*$200)
		jsr	Cinter_JITcode+($12*$200)
		jsr	Cinter_JITcode+($13*$200)
		jsr	Cinter_JITcode+($14*$200)
		jsr	Cinter_JITcode+($15*$200)
		jsr	Cinter_JITcode+($16*$200)
		jsr	Cinter_JITcode+($17*$200)


		rts

MusicData:
		incbin	'example.cinterdata'

CinterSpace:	ds.b	c_SIZE


Cinter_JITcode:	ds.w	$100*31


		section	chipdata,data_c

InstrumentSpace:
		ds.b	196938
