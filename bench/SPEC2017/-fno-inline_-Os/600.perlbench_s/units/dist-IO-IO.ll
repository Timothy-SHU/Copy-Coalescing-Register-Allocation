; ModuleID = 'dist/IO/IO.c'
source_filename = "dist/IO/IO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sv = type { ptr, i32, i32, %union.anon.0 }
%union.anon.0 = type { ptr }
%struct.io = type { ptr, i32, i32, %union.anon }
%union.anon = type { ptr }
%struct.xpvgv = type { ptr, %union._xmgu, i64, %union.anon.1, %union._xivu, %union._xnvu }
%union._xmgu = type { ptr }
%union.anon.1 = type { i64 }
%union._xivu = type { i64 }
%union._xnvu = type { double }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.xpviv = type { ptr, %union._xmgu, i64, %union.anon.3, %union._xivu }
%union.anon.3 = type { i64 }
%struct.pollfd = type { i32, i16, i16 }
%struct.op = type { ptr, ptr, ptr, i64, i16, i8, i8 }
%struct.xpvnv = type { ptr, %union._xmgu, i64, %union.anon.4, %union._xivu, %union._xnvu }
%union.anon.4 = type { i64 }
%struct.xpvuv = type { ptr, %union._xmgu, i64, %union.anon.5, %union._xivu }
%union.anon.5 = type { i64 }
%struct.xpvio = type { ptr, %union._xmgu, i64, %union.anon.6, %union._xivu, ptr, %union.anon.7, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 }
%union.anon.6 = type { i64 }
%union.anon.7 = type { ptr }
%struct.binop = type { ptr, ptr, ptr, i64, i16, i8, i8, ptr, ptr }

@.str = private unnamed_addr constant [13 x i8] c"dist/IO/IO.c\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"v5.22.0\00", align 1
@PL_stack_base = external local_unnamed_addr global ptr, align 8
@PL_stack_sp = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"IO::Seekable::getpos\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"IO::Seekable::setpos\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"IO::File::new_tmpfile\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"IO::Poll::_poll\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"IO::Handle::blocking\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"$;$\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"IO::Handle::ungetc\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"IO::Handle::error\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"IO::Handle::clearerr\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"IO::Handle::untaint\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"IO::Handle::flush\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"IO::Handle::setbuf\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"IO::Handle::setvbuf\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"IO::Handle::sync\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"IO::Handle::_create_getline_subs\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"IO::Socket::sockatmark\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"IO::Poll\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"POLLIN\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"POLLPRI\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"POLLOUT\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"POLLRDNORM\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"POLLWRNORM\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"POLLRDBAND\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"POLLWRBAND\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"POLLNORM\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"POLLERR\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"POLLHUP\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"POLLNVAL\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"IO::Handle\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"_IOFBF\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"_IOLBF\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"_IONBF\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"SEEK_SET\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"SEEK_CUR\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"SEEK_END\00", align 1
@PL_markstack_ptr = external local_unnamed_addr global ptr, align 8
@.str.38 = private unnamed_addr constant [7 x i8] c"handle\00", align 1
@PL_sv_undef = external global %struct.sv, align 8
@.str.39 = private unnamed_addr constant [12 x i8] c"handle, pos\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"0 but true\00", align 1
@.str.41 = private unnamed_addr constant [22 x i8] c"packname = \22IO::File\22\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"IO::File\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"+>&\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"timeout, ...\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"handle, blk=-1\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"handle, c\00", align 1
@PL_op = external local_unnamed_addr global ptr, align 8
@PL_curpad = external local_unnamed_addr global ptr, align 8
@.str.47 = private unnamed_addr constant [38 x i8] c"Negative character number in ungetc()\00", align 1
@.str.48 = private unnamed_addr constant [34 x i8] c"Wide character number in ungetc()\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"handle, ...\00", align 1
@.str.50 = private unnamed_addr constant [40 x i8] c"%s not implemented on this architecture\00", align 1
@.str.51 = private unnamed_addr constant [52 x i8] c"Usage: IO::Handle::setvbuf(handle, buf, type, size)\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"arg\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"code\00", align 1
@PL_check = external local_unnamed_addr global [0 x ptr], align 8
@PL_curcop = external local_unnamed_addr global ptr, align 8
@PL_ppaddr = external local_unnamed_addr global [0 x ptr], align 8
@.str.54 = private unnamed_addr constant [5 x i8] c"sock\00", align 1
@.str.55 = private unnamed_addr constant [19 x i8] c"IO::Socket::atmark\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @boot_IO(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 (i32, ptr, ptr, ...) @Perl_xs_handshake(i32 noundef 219676775, ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #7
  %3 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.2, ptr noundef nonnull @XS_IO__Seekable_getpos) #7
  %4 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.3, ptr noundef nonnull @XS_IO__Seekable_setpos) #7
  %5 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.4, ptr noundef nonnull @XS_IO__File_new_tmpfile) #7
  %6 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.5, ptr noundef nonnull @XS_IO__Poll__poll) #7
  %7 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.6, ptr noundef nonnull @XS_IO__Handle_blocking, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, i32 noundef 0) #7
  %8 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.8, ptr noundef nonnull @XS_IO__Handle_ungetc) #7
  %9 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.9, ptr noundef nonnull @XS_IO__Handle_error) #7
  %10 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.10, ptr noundef nonnull @XS_IO__Handle_clearerr) #7
  %11 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.11, ptr noundef nonnull @XS_IO__Handle_untaint) #7
  %12 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.12, ptr noundef nonnull @XS_IO__Handle_flush) #7
  %13 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.13, ptr noundef nonnull @XS_IO__Handle_setbuf) #7
  %14 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.14, ptr noundef nonnull @XS_IO__Handle_setvbuf) #7
  %15 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.15, ptr noundef nonnull @XS_IO__Handle_sync) #7
  %16 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.16, ptr noundef nonnull @XS_IO__Handle__create_getline_subs) #7
  %17 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.17, ptr noundef nonnull @XS_IO__Socket_sockatmark, ptr noundef nonnull @.str, ptr noundef nonnull @.str.18, i32 noundef 0) #7
  %18 = tail call ptr @Perl_gv_stashpvn(ptr noundef nonnull @.str.19, i32 noundef 8, i32 noundef 1) #7
  %19 = tail call ptr @Perl_newSViv(i64 noundef 1) #7
  %20 = tail call ptr @Perl_newCONSTSUB(ptr noundef %18, ptr noundef nonnull @.str.20, ptr noundef %19) #7
  %21 = tail call ptr @Perl_newSViv(i64 noundef 2) #7
  %22 = tail call ptr @Perl_newCONSTSUB(ptr noundef %18, ptr noundef nonnull @.str.21, ptr noundef %21) #7
  %23 = tail call ptr @Perl_newSViv(i64 noundef 4) #7
  %24 = tail call ptr @Perl_newCONSTSUB(ptr noundef %18, ptr noundef nonnull @.str.22, ptr noundef %23) #7
  %25 = tail call ptr @Perl_newSViv(i64 noundef 64) #7
  %26 = tail call ptr @Perl_newCONSTSUB(ptr noundef %18, ptr noundef nonnull @.str.23, ptr noundef %25) #7
  %27 = tail call ptr @Perl_newSViv(i64 noundef 4) #7
  %28 = tail call ptr @Perl_newCONSTSUB(ptr noundef %18, ptr noundef nonnull @.str.24, ptr noundef %27) #7
  %29 = tail call ptr @Perl_newSViv(i64 noundef 128) #7
  %30 = tail call ptr @Perl_newCONSTSUB(ptr noundef %18, ptr noundef nonnull @.str.25, ptr noundef %29) #7
  %31 = tail call ptr @Perl_newSViv(i64 noundef 256) #7
  %32 = tail call ptr @Perl_newCONSTSUB(ptr noundef %18, ptr noundef nonnull @.str.26, ptr noundef %31) #7
  %33 = tail call ptr @Perl_newSViv(i64 noundef 64) #7
  %34 = tail call ptr @Perl_newCONSTSUB(ptr noundef %18, ptr noundef nonnull @.str.27, ptr noundef %33) #7
  %35 = tail call ptr @Perl_newSViv(i64 noundef 8) #7
  %36 = tail call ptr @Perl_newCONSTSUB(ptr noundef %18, ptr noundef nonnull @.str.28, ptr noundef %35) #7
  %37 = tail call ptr @Perl_newSViv(i64 noundef 16) #7
  %38 = tail call ptr @Perl_newCONSTSUB(ptr noundef %18, ptr noundef nonnull @.str.29, ptr noundef %37) #7
  %39 = tail call ptr @Perl_newSViv(i64 noundef 32) #7
  %40 = tail call ptr @Perl_newCONSTSUB(ptr noundef %18, ptr noundef nonnull @.str.30, ptr noundef %39) #7
  %41 = tail call ptr @Perl_gv_stashpvn(ptr noundef nonnull @.str.31, i32 noundef 10, i32 noundef 1) #7
  %42 = tail call ptr @Perl_newSViv(i64 noundef 0) #7
  %43 = tail call ptr @Perl_newCONSTSUB(ptr noundef %41, ptr noundef nonnull @.str.32, ptr noundef %42) #7
  %44 = tail call ptr @Perl_newSViv(i64 noundef 1) #7
  %45 = tail call ptr @Perl_newCONSTSUB(ptr noundef %41, ptr noundef nonnull @.str.33, ptr noundef %44) #7
  %46 = tail call ptr @Perl_newSViv(i64 noundef 2) #7
  %47 = tail call ptr @Perl_newCONSTSUB(ptr noundef %41, ptr noundef nonnull @.str.34, ptr noundef %46) #7
  %48 = tail call ptr @Perl_newSViv(i64 noundef 0) #7
  %49 = tail call ptr @Perl_newCONSTSUB(ptr noundef %41, ptr noundef nonnull @.str.35, ptr noundef %48) #7
  %50 = tail call ptr @Perl_newSViv(i64 noundef 1) #7
  %51 = tail call ptr @Perl_newCONSTSUB(ptr noundef %41, ptr noundef nonnull @.str.36, ptr noundef %50) #7
  %52 = tail call ptr @Perl_newSViv(i64 noundef 2) #7
  %53 = tail call ptr @Perl_newCONSTSUB(ptr noundef %41, ptr noundef nonnull @.str.37, ptr noundef %52) #7
  tail call void @Perl_xs_boot_epilog(i32 noundef %2) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @Perl_xs_handshake(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newXS_deffile(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_IO__Seekable_getpos(ptr noundef %0) #0 !prof !35 !PGOFuncName !36 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !37
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !37
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !37
  %5 = load i32, ptr %3, align 4, !tbaa !41
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.38) #7
  %16 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi ptr [ %16, %15 ], [ %6, %1 ]
  %19 = sext i32 %7 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !37
  %22 = tail call ptr @Perl_sv_2io(ptr noundef %21) #7
  %23 = getelementptr inbounds %struct.io, ptr %22, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !43
  %25 = icmp eq ptr %24, null
  br i1 %25, label %35, label %26

26:                                               ; preds = %17
  %27 = tail call ptr @Perl_sv_newmortal() #7
  %28 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %29 = getelementptr inbounds ptr, ptr %28, i64 %19
  store ptr %27, ptr %29, align 8, !tbaa !37
  %30 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %31 = getelementptr inbounds ptr, ptr %30, i64 %19
  %32 = load ptr, ptr %31, align 8, !tbaa !37
  %33 = tail call i32 @PerlIO_getpos(ptr noundef nonnull %24, ptr noundef %32) #7
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %40, label %37

35:                                               ; preds = %17
  %36 = tail call ptr @__errno_location() #8
  store i32 22, ptr %36, align 4, !tbaa !41
  br label %37

37:                                               ; preds = %26, %35
  %38 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %39 = getelementptr inbounds ptr, ptr %38, i64 %19
  store ptr @PL_sv_undef, ptr %39, align 8, !tbaa !37
  br label %40

40:                                               ; preds = %37, %26
  %41 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %42 = getelementptr inbounds ptr, ptr %41, i64 %19
  store ptr %42, ptr @PL_stack_sp, align 8, !tbaa !37
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_IO__Seekable_setpos(ptr noundef %0) #0 !prof !35 !PGOFuncName !44 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !37
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !37
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !37
  %5 = load i32, ptr %3, align 4, !tbaa !41
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 16
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.39) #7
  %16 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi ptr [ %16, %15 ], [ %6, %1 ]
  %19 = sext i32 %7 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !37
  %22 = tail call ptr @Perl_sv_2io(ptr noundef %21) #7
  %23 = getelementptr inbounds %struct.io, ptr %22, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !43
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = tail call ptr @__errno_location() #8
  store i32 22, ptr %27, align 4, !tbaa !41
  %28 = tail call ptr @Perl_sv_newmortal() #7
  br label %39

29:                                               ; preds = %17
  %30 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %31 = getelementptr ptr, ptr %30, i64 %8
  %32 = getelementptr ptr, ptr %31, i64 2
  %33 = load ptr, ptr %32, align 8, !tbaa !37
  %34 = tail call i32 @PerlIO_setpos(ptr noundef nonnull %24, ptr noundef %33) #7
  %35 = tail call ptr @Perl_sv_newmortal() #7
  switch i32 %34, label %37 [
    i32 -1, label %39
    i32 0, label %36
  ]

36:                                               ; preds = %29
  tail call void @Perl_sv_setpvn(ptr noundef %35, ptr noundef nonnull @.str.40, i64 noundef 10) #7
  br label %39

37:                                               ; preds = %29
  %38 = sext i32 %34 to i64
  tail call void @Perl_sv_setiv(ptr noundef %35, i64 noundef %38) #7
  br label %39

39:                                               ; preds = %26, %29, %36, %37
  %40 = phi ptr [ %28, %26 ], [ %35, %29 ], [ %35, %36 ], [ %35, %37 ]
  %41 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %42 = getelementptr inbounds ptr, ptr %41, i64 %19
  store ptr %40, ptr %42, align 8, !tbaa !37
  %43 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %44 = getelementptr inbounds ptr, ptr %43, i64 %19
  store ptr %44, ptr @PL_stack_sp, align 8, !tbaa !37
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_IO__File_new_tmpfile(ptr noundef %0) #0 !prof !35 !PGOFuncName !45 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !37
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !37
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !37
  %5 = load i32, ptr %3, align 4, !tbaa !41
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = icmp ugt i32 %14, 1
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.41) #7
  br label %17

17:                                               ; preds = %1, %16
  %18 = icmp slt i32 %14, 1
  br i1 %18, label %33, label %19

19:                                               ; preds = %17
  %20 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %21 = sext i32 %7 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !37
  %24 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !46
  %26 = and i32 %25, 2098176
  %27 = icmp eq i32 %26, 1024
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !43
  br label %33

31:                                               ; preds = %19
  %32 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %23, ptr noundef null, i32 noundef 2) #7
  br label %33

33:                                               ; preds = %28, %31, %17
  %34 = phi ptr [ @.str.42, %17 ], [ %30, %28 ], [ %32, %31 ]
  %35 = tail call ptr @PerlIO_tmpfile() #7
  %36 = tail call ptr @Perl_newGVgen_flags(ptr noundef %34, i32 noundef 0) #7
  %37 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %36) #9
  %38 = icmp eq ptr %36, null
  br i1 %38, label %61, label %39

39:                                               ; preds = %33
  %40 = load ptr, ptr %36, align 8, !tbaa !48
  %41 = getelementptr inbounds %struct.xpvgv, ptr %40, i64 0, i32 5
  %42 = load ptr, ptr %41, align 8, !tbaa !43
  %43 = getelementptr inbounds %struct.xpvgv, ptr %40, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !43
  %45 = getelementptr inbounds %struct.hek, ptr %44, i64 0, i32 2
  %46 = getelementptr inbounds %struct.hek, ptr %44, i64 0, i32 1
  %47 = load i32, ptr %46, align 4, !tbaa !50
  %48 = tail call ptr @Perl_hv_common_key_len(ptr noundef %42, ptr noundef nonnull %45, i32 noundef %47, i32 noundef 68, ptr noundef null, i32 noundef 0) #7
  %49 = tail call zeroext i1 @Perl_do_openn(ptr noundef nonnull %36, ptr noundef nonnull @.str.43, i32 noundef 3, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %35, ptr noundef null, i32 noundef 0) #7
  br i1 %49, label %50, label %61

50:                                               ; preds = %39
  %51 = tail call ptr @Perl_newRV(ptr noundef nonnull %36) #7
  %52 = tail call ptr @Perl_sv_2mortal(ptr noundef %51) #7
  %53 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %54 = sext i32 %7 to i64
  %55 = getelementptr inbounds ptr, ptr %53, i64 %54
  store ptr %52, ptr %55, align 8, !tbaa !37
  %56 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %57 = getelementptr inbounds ptr, ptr %56, i64 %54
  %58 = load ptr, ptr %57, align 8, !tbaa !37
  %59 = tail call ptr @Perl_gv_stashpv(ptr noundef %34, i32 noundef 1) #7
  %60 = tail call ptr @Perl_sv_bless(ptr noundef %58, ptr noundef %59) #7
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %36) #9
  br label %65

61:                                               ; preds = %33, %39
  %62 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %63 = sext i32 %7 to i64
  %64 = getelementptr inbounds ptr, ptr %62, i64 %63
  store ptr @PL_sv_undef, ptr %64, align 8, !tbaa !37
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %36) #9
  br label %65

65:                                               ; preds = %61, %50
  %66 = phi i64 [ %63, %61 ], [ %54, %50 ]
  %67 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %68 = getelementptr inbounds ptr, ptr %67, i64 %66
  store ptr %68, ptr @PL_stack_sp, align 8, !tbaa !37
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_IO__Poll__poll(ptr noundef %0) #0 !prof !35 !PGOFuncName !52 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !37
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !37
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !37
  %5 = load i32, ptr %3, align 4, !tbaa !41
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.44) #7
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  br label %18

18:                                               ; preds = %16, %1
  %19 = phi ptr [ %17, %16 ], [ %6, %1 ]
  %20 = sext i32 %7 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !37
  %23 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !46
  %25 = and i32 %24, 2097408
  %26 = icmp eq i32 %25, 256
  br i1 %26, label %27, label %31

27:                                               ; preds = %18
  %28 = load ptr, ptr %22, align 8, !tbaa !53
  %29 = getelementptr inbounds %struct.xpviv, ptr %28, i64 0, i32 4
  %30 = load i64, ptr %29, align 8, !tbaa !43
  br label %33

31:                                               ; preds = %18
  %32 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %22, i32 noundef 2) #7
  br label %33

33:                                               ; preds = %31, %27
  %34 = phi i64 [ %30, %27 ], [ %32, %31 ]
  %35 = trunc i64 %34 to i32
  %36 = add nsw i32 %14, -1
  %37 = sdiv i32 %36, 2
  %38 = sext i32 %37 to i64
  %39 = shl nsw i64 %38, 3
  %40 = tail call ptr @Perl_newSV(i64 noundef %39) #7
  %41 = getelementptr inbounds %struct.sv, ptr %40, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !43
  %43 = icmp sgt i32 %14, 2
  br i1 %43, label %46, label %44

44:                                               ; preds = %33
  %45 = tail call i32 @Perl_my_poll(ptr noundef %42, i64 noundef %38, i32 noundef %35) #7
  br label %129

46:                                               ; preds = %33
  %47 = add i32 %5, 2
  %48 = tail call i32 @llvm.smax.i32(i32 %37, i32 1)
  %49 = zext nneg i32 %48 to i64
  %50 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  br label %51

51:                                               ; preds = %46, %90
  %52 = phi ptr [ %50, %46 ], [ %91, %90 ]
  %53 = phi i64 [ 1, %46 ], [ %95, %90 ]
  %54 = phi i64 [ 0, %46 ], [ %97, %90 ]
  %55 = add nsw i64 %53, %20
  %56 = getelementptr inbounds ptr, ptr %52, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !37
  %58 = getelementptr inbounds %struct.sv, ptr %57, i64 0, i32 2
  %59 = load i32, ptr %58, align 4, !tbaa !46
  %60 = and i32 %59, 2097408
  %61 = icmp eq i32 %60, 256
  br i1 %61, label %62, label %66

62:                                               ; preds = %51
  %63 = load ptr, ptr %57, align 8, !tbaa !53
  %64 = getelementptr inbounds %struct.xpviv, ptr %63, i64 0, i32 4
  %65 = load i64, ptr %64, align 8, !tbaa !43
  br label %69

66:                                               ; preds = %51
  %67 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %57, i32 noundef 2) #7
  %68 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  br label %69

69:                                               ; preds = %66, %62
  %70 = phi ptr [ %52, %62 ], [ %68, %66 ]
  %71 = phi i64 [ %65, %62 ], [ %67, %66 ]
  %72 = trunc i64 %71 to i32
  %73 = getelementptr inbounds %struct.pollfd, ptr %42, i64 %54
  store i32 %72, ptr %73, align 4, !tbaa !54
  %74 = trunc i64 %53 to i32
  %75 = add i32 %47, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds ptr, ptr %70, i64 %76
  %78 = load ptr, ptr %77, align 8, !tbaa !37
  %79 = getelementptr inbounds %struct.sv, ptr %78, i64 0, i32 2
  %80 = load i32, ptr %79, align 4, !tbaa !46
  %81 = and i32 %80, 2097408
  %82 = icmp eq i32 %81, 256
  br i1 %82, label %83, label %87

83:                                               ; preds = %69
  %84 = load ptr, ptr %78, align 8, !tbaa !53
  %85 = getelementptr inbounds %struct.xpviv, ptr %84, i64 0, i32 4
  %86 = load i64, ptr %85, align 8, !tbaa !43
  br label %90

87:                                               ; preds = %69
  %88 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %78, i32 noundef 2) #7
  %89 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  br label %90

90:                                               ; preds = %87, %83
  %91 = phi ptr [ %70, %83 ], [ %89, %87 ]
  %92 = phi i64 [ %86, %83 ], [ %88, %87 ]
  %93 = trunc i64 %92 to i16
  %94 = getelementptr inbounds %struct.pollfd, ptr %42, i64 %54, i32 1
  store i16 %93, ptr %94, align 4, !tbaa !57
  %95 = add nuw nsw i64 %53, 2
  %96 = getelementptr inbounds %struct.pollfd, ptr %42, i64 %54, i32 2
  store i16 0, ptr %96, align 2, !tbaa !58
  %97 = add nuw nsw i64 %54, 1
  %98 = icmp eq i64 %97, %49
  br i1 %98, label %99, label %51, !llvm.loop !59

99:                                               ; preds = %90
  %100 = tail call i32 @Perl_my_poll(ptr noundef nonnull %42, i64 noundef %38, i32 noundef %35) #7
  %101 = icmp sgt i32 %100, -1
  %102 = and i1 %101, %43
  br i1 %102, label %103, label %129

103:                                              ; preds = %99
  %104 = add i32 %5, 2
  %105 = tail call i32 @llvm.smax.i32(i32 %37, i32 1)
  %106 = zext nneg i32 %105 to i64
  br label %107

107:                                              ; preds = %103, %107
  %108 = phi i64 [ 1, %103 ], [ %126, %107 ]
  %109 = phi i64 [ 0, %103 ], [ %127, %107 ]
  %110 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %111 = getelementptr ptr, ptr %110, i64 %108
  %112 = getelementptr ptr, ptr %111, i64 %20
  %113 = load ptr, ptr %112, align 8, !tbaa !37
  %114 = getelementptr inbounds %struct.pollfd, ptr %42, i64 %109
  %115 = load i32, ptr %114, align 4, !tbaa !54
  %116 = sext i32 %115 to i64
  tail call void @Perl_sv_setiv(ptr noundef %113, i64 noundef %116) #7
  %117 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %118 = trunc i64 %108 to i32
  %119 = add i32 %104, %118
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds ptr, ptr %117, i64 %120
  %122 = load ptr, ptr %121, align 8, !tbaa !37
  %123 = getelementptr inbounds %struct.pollfd, ptr %42, i64 %109, i32 2
  %124 = load i16, ptr %123, align 2, !tbaa !58
  %125 = sext i16 %124 to i64
  tail call void @Perl_sv_setiv(ptr noundef %122, i64 noundef %125) #7
  %126 = add nuw nsw i64 %108, 2
  %127 = add nuw nsw i64 %109, 1
  %128 = icmp eq i64 %127, %106
  br i1 %128, label %129, label %107, !llvm.loop !61

129:                                              ; preds = %107, %44, %99
  %130 = phi i32 [ %45, %44 ], [ %100, %99 ], [ %100, %107 ]
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %40) #9
  %131 = sext i32 %130 to i64
  %132 = tail call ptr @Perl_newSViv(i64 noundef %131) #7
  %133 = tail call ptr @Perl_sv_2mortal(ptr noundef %132) #7
  %134 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %135 = getelementptr inbounds ptr, ptr %134, i64 %20
  store ptr %133, ptr %135, align 8, !tbaa !37
  %136 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %137 = getelementptr inbounds ptr, ptr %136, i64 %20
  store ptr %137, ptr @PL_stack_sp, align 8, !tbaa !37
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_newXS_flags(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_IO__Handle_blocking(ptr noundef %0) #0 !prof !35 !PGOFuncName !62 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !37
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !37
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !37
  %5 = load i32, ptr %3, align 4, !tbaa !41
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = add i32 %14, -3
  %16 = icmp ult i32 %15, -2
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.45) #7
  %18 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  br label %19

19:                                               ; preds = %1, %17
  %20 = phi ptr [ %6, %1 ], [ %18, %17 ]
  %21 = sext i32 %7 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !37
  %24 = tail call ptr @Perl_sv_2io(ptr noundef %23) #7
  %25 = getelementptr inbounds %struct.io, ptr %24, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !43
  %27 = icmp slt i32 %14, 2
  br i1 %27, label %48, label %28

28:                                               ; preds = %19
  %29 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %30 = getelementptr ptr, ptr %29, i64 %8
  %31 = getelementptr ptr, ptr %30, i64 2
  %32 = load ptr, ptr %31, align 8, !tbaa !37
  %33 = getelementptr inbounds %struct.sv, ptr %32, i64 0, i32 2
  %34 = load i32, ptr %33, align 4, !tbaa !46
  %35 = and i32 %34, 2097408
  %36 = icmp eq i32 %35, 256
  br i1 %36, label %37, label %41

37:                                               ; preds = %28
  %38 = load ptr, ptr %32, align 8, !tbaa !53
  %39 = getelementptr inbounds %struct.xpviv, ptr %38, i64 0, i32 4
  %40 = load i64, ptr %39, align 8, !tbaa !43
  br label %43

41:                                               ; preds = %28
  %42 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %32, i32 noundef 2) #7
  br label %43

43:                                               ; preds = %41, %37
  %44 = phi i64 [ %40, %37 ], [ %42, %41 ]
  %45 = and i64 %44, 4294967295
  %46 = icmp ne i64 %45, 0
  %47 = zext i1 %46 to i32
  br label %48

48:                                               ; preds = %19, %43
  %49 = phi i32 [ %47, %43 ], [ 1, %19 ]
  %50 = icmp eq i32 %14, 1
  %51 = select i1 %50, i32 -1, i32 %49
  %52 = tail call fastcc i32 @io_blocking(ptr noundef %26, i32 noundef %51) #9, !range !63
  %53 = icmp sgt i32 %52, -1
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = zext nneg i32 %52 to i64
  %56 = tail call ptr @Perl_newSViv(i64 noundef %55) #7
  %57 = tail call ptr @Perl_sv_2mortal(ptr noundef %56) #7
  br label %58

58:                                               ; preds = %48, %54
  %59 = phi ptr [ %57, %54 ], [ @PL_sv_undef, %48 ]
  %60 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %61 = getelementptr inbounds ptr, ptr %60, i64 %21
  store ptr %59, ptr %61, align 8, !tbaa !37
  %62 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %63 = getelementptr inbounds ptr, ptr %62, i64 %21
  store ptr %63, ptr @PL_stack_sp, align 8, !tbaa !37
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_IO__Handle_ungetc(ptr noundef %0) #0 !prof !35 !PGOFuncName !64 {
  %2 = alloca [14 x i8], align 1
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !37
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !37
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !37
  %6 = load i32, ptr %4, align 4, !tbaa !41
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %8 = add nsw i32 %6, 1
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds ptr, ptr %7, i64 %9
  %11 = ptrtoint ptr %3 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = and i64 %13, 34359738360
  %15 = icmp eq i64 %14, 16
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.46) #7
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  br label %18

18:                                               ; preds = %16, %1
  %19 = phi ptr [ %17, %16 ], [ %7, %1 ]
  %20 = sext i32 %8 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !37
  %23 = tail call ptr @Perl_sv_2io(ptr noundef %22) #7
  %24 = getelementptr inbounds %struct.io, ptr %23, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !43
  %26 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %27 = getelementptr ptr, ptr %26, i64 %9
  %28 = getelementptr ptr, ptr %27, i64 2
  %29 = load ptr, ptr %28, align 8, !tbaa !37
  %30 = load ptr, ptr @PL_op, align 8, !tbaa !37
  %31 = getelementptr inbounds %struct.op, ptr %30, i64 0, i32 6
  %32 = load i8, ptr %31, align 1, !tbaa !65
  %33 = and i8 %32, 4
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %18
  %36 = load ptr, ptr @PL_curpad, align 8, !tbaa !37
  %37 = getelementptr inbounds %struct.op, ptr %30, i64 0, i32 3
  %38 = load i64, ptr %37, align 8, !tbaa !68
  %39 = getelementptr inbounds ptr, ptr %36, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !37
  br label %43

41:                                               ; preds = %18
  %42 = tail call ptr @Perl_sv_newmortal() #7
  br label %43

43:                                               ; preds = %41, %35
  %44 = phi ptr [ %40, %35 ], [ %42, %41 ]
  %45 = icmp eq ptr %25, null
  br i1 %45, label %123, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.sv, ptr %29, i64 0, i32 2
  %48 = load i32, ptr %47, align 4, !tbaa !46
  %49 = and i32 %48, -2147483392
  %50 = icmp eq i32 %49, 256
  br i1 %50, label %51, label %65

51:                                               ; preds = %46
  %52 = and i32 %48, 2097408
  %53 = icmp eq i32 %52, 256
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load ptr, ptr %29, align 8, !tbaa !53
  %56 = getelementptr inbounds %struct.xpviv, ptr %55, i64 0, i32 4
  %57 = load i64, ptr %56, align 8, !tbaa !43
  br label %60

58:                                               ; preds = %51
  %59 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %29, i32 noundef 2) #7
  br label %60

60:                                               ; preds = %58, %54
  %61 = phi i64 [ %57, %54 ], [ %59, %58 ]
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %81, label %63

63:                                               ; preds = %60
  %64 = load i32, ptr %47, align 4, !tbaa !46
  br label %65

65:                                               ; preds = %63, %46
  %66 = phi i32 [ %64, %63 ], [ %48, %46 ]
  %67 = and i32 %66, 512
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %82, label %69

69:                                               ; preds = %65
  %70 = and i32 %66, 2097664
  %71 = icmp eq i32 %70, 512
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load ptr, ptr %29, align 8, !tbaa !53
  %74 = getelementptr inbounds %struct.xpvnv, ptr %73, i64 0, i32 5
  %75 = load double, ptr %74, align 8, !tbaa !43
  br label %78

76:                                               ; preds = %69
  %77 = tail call double @Perl_sv_2nv_flags(ptr noundef nonnull %29, i32 noundef 2) #7
  br label %78

78:                                               ; preds = %76, %72
  %79 = phi double [ %75, %72 ], [ %77, %76 ]
  %80 = fcmp olt double %79, 0.000000e+00
  br i1 %80, label %81, label %82

81:                                               ; preds = %78, %60
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.47) #7
  br label %82

82:                                               ; preds = %81, %78, %65
  %83 = load i32, ptr %47, align 4, !tbaa !46
  %84 = and i32 %83, -2145386240
  %85 = icmp eq i32 %84, -2147483392
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = load ptr, ptr %29, align 8, !tbaa !53
  %88 = getelementptr inbounds %struct.xpvuv, ptr %87, i64 0, i32 4
  %89 = load i64, ptr %88, align 8, !tbaa !43
  br label %92

90:                                               ; preds = %82
  %91 = tail call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %29, i32 noundef 2) #7
  br label %92

92:                                               ; preds = %90, %86
  %93 = phi i64 [ %89, %86 ], [ %91, %90 ]
  %94 = icmp ult i64 %93, 128
  br i1 %94, label %100, label %95

95:                                               ; preds = %92
  %96 = icmp ult i64 %93, 256
  br i1 %96, label %97, label %104

97:                                               ; preds = %95
  %98 = tail call i32 @PerlIO_isutf8(ptr noundef nonnull %25) #7
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %97, %92
  %101 = trunc i64 %93 to i32
  %102 = tail call i32 @PerlIO_ungetc(ptr noundef nonnull %25, i32 noundef %101) #7
  %103 = sext i32 %102 to i64
  br label %125

104:                                              ; preds = %97, %95
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %2) #10
  %105 = tail call i32 @PerlIO_isutf8(ptr noundef nonnull %25) #7
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.48) #7
  br label %108

108:                                              ; preds = %107, %104
  %109 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef nonnull %2, i64 noundef %93, i64 noundef 0) #7
  %110 = ptrtoint ptr %109 to i64
  %111 = ptrtoint ptr %2 to i64
  %112 = sub i64 %110, %111
  %113 = call i64 @Perl_PerlIO_unread(ptr noundef nonnull %25, ptr noundef nonnull %2, i64 noundef %112) #7
  %114 = icmp eq i64 %113, %112
  br i1 %114, label %116, label %115

115:                                              ; preds = %108
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %2) #10
  br label %125

116:                                              ; preds = %108
  %117 = call ptr @Perl_newSVuv(i64 noundef %93) #7
  %118 = call ptr @Perl_sv_2mortal(ptr noundef %117) #7
  %119 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %120 = getelementptr inbounds ptr, ptr %119, i64 %20
  store ptr %118, ptr %120, align 8, !tbaa !37
  %121 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %122 = getelementptr inbounds ptr, ptr %121, i64 %20
  store ptr %122, ptr @PL_stack_sp, align 8, !tbaa !37
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %2) #10
  br label %138

123:                                              ; preds = %43
  %124 = tail call ptr @__errno_location() #8
  store i32 22, ptr %124, align 4, !tbaa !41
  br label %125

125:                                              ; preds = %100, %115, %123
  %126 = phi i64 [ -1, %123 ], [ -1, %115 ], [ %103, %100 ]
  %127 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %128 = getelementptr inbounds ptr, ptr %127, i64 %20
  call void @Perl_sv_setiv(ptr noundef %44, i64 noundef %126) #7
  %129 = getelementptr inbounds %struct.sv, ptr %44, i64 0, i32 2
  %130 = load i32, ptr %129, align 4, !tbaa !46
  %131 = and i32 %130, 4194304
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %125
  %134 = call i32 @Perl_mg_set(ptr noundef nonnull %44) #7
  br label %135

135:                                              ; preds = %125, %133
  store ptr %44, ptr %128, align 8, !tbaa !37
  %136 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %137 = getelementptr inbounds ptr, ptr %136, i64 %20
  store ptr %137, ptr @PL_stack_sp, align 8, !tbaa !37
  br label %138

138:                                              ; preds = %116, %135
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_IO__Handle_error(ptr noundef %0) #0 !prof !35 !PGOFuncName !69 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !37
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !37
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !37
  %5 = load i32, ptr %3, align 4, !tbaa !41
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.38) #7
  %16 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi ptr [ %16, %15 ], [ %6, %1 ]
  %19 = sext i32 %7 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !37
  %22 = tail call ptr @Perl_sv_2io(ptr noundef %21) #7
  %23 = getelementptr inbounds %struct.io, ptr %22, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !43
  %25 = load ptr, ptr @PL_op, align 8, !tbaa !37
  %26 = getelementptr inbounds %struct.op, ptr %25, i64 0, i32 6
  %27 = load i8, ptr %26, align 1, !tbaa !65
  %28 = and i8 %27, 4
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %17
  %31 = load ptr, ptr @PL_curpad, align 8, !tbaa !37
  %32 = getelementptr inbounds %struct.op, ptr %25, i64 0, i32 3
  %33 = load i64, ptr %32, align 8, !tbaa !68
  %34 = getelementptr inbounds ptr, ptr %31, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !37
  br label %38

36:                                               ; preds = %17
  %37 = tail call ptr @Perl_sv_newmortal() #7
  br label %38

38:                                               ; preds = %36, %30
  %39 = phi ptr [ %35, %30 ], [ %37, %36 ]
  %40 = icmp eq ptr %24, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = tail call i32 @Perl_PerlIO_error(ptr noundef nonnull %24) #7
  %43 = sext i32 %42 to i64
  br label %46

44:                                               ; preds = %38
  %45 = tail call ptr @__errno_location() #8
  store i32 22, ptr %45, align 4, !tbaa !41
  br label %46

46:                                               ; preds = %44, %41
  %47 = phi i64 [ %43, %41 ], [ -1, %44 ]
  %48 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  tail call void @Perl_sv_setiv(ptr noundef %39, i64 noundef %47) #7
  %49 = getelementptr inbounds %struct.sv, ptr %39, i64 0, i32 2
  %50 = load i32, ptr %49, align 4, !tbaa !46
  %51 = and i32 %50, 4194304
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %46
  %54 = tail call i32 @Perl_mg_set(ptr noundef nonnull %39) #7
  br label %55

55:                                               ; preds = %46, %53
  %56 = getelementptr inbounds ptr, ptr %48, i64 %19
  store ptr %39, ptr %56, align 8, !tbaa !37
  %57 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %58 = getelementptr inbounds ptr, ptr %57, i64 %19
  store ptr %58, ptr @PL_stack_sp, align 8, !tbaa !37
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_IO__Handle_clearerr(ptr noundef %0) #0 !prof !35 !PGOFuncName !70 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !37
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !37
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !37
  %5 = load i32, ptr %3, align 4, !tbaa !41
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.38) #7
  %16 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi ptr [ %16, %15 ], [ %6, %1 ]
  %19 = sext i32 %7 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !37
  %22 = tail call ptr @Perl_sv_2io(ptr noundef %21) #7
  %23 = getelementptr inbounds %struct.io, ptr %22, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !43
  %25 = load ptr, ptr @PL_op, align 8, !tbaa !37
  %26 = getelementptr inbounds %struct.op, ptr %25, i64 0, i32 6
  %27 = load i8, ptr %26, align 1, !tbaa !65
  %28 = and i8 %27, 4
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %17
  %31 = load ptr, ptr @PL_curpad, align 8, !tbaa !37
  %32 = getelementptr inbounds %struct.op, ptr %25, i64 0, i32 3
  %33 = load i64, ptr %32, align 8, !tbaa !68
  %34 = getelementptr inbounds ptr, ptr %31, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !37
  br label %38

36:                                               ; preds = %17
  %37 = tail call ptr @Perl_sv_newmortal() #7
  br label %38

38:                                               ; preds = %36, %30
  %39 = phi ptr [ %35, %30 ], [ %37, %36 ]
  %40 = icmp eq ptr %24, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  tail call void @Perl_PerlIO_clearerr(ptr noundef nonnull %24) #7
  br label %44

42:                                               ; preds = %38
  %43 = tail call ptr @__errno_location() #8
  store i32 22, ptr %43, align 4, !tbaa !41
  br label %44

44:                                               ; preds = %42, %41
  %45 = phi i64 [ 0, %41 ], [ -1, %42 ]
  %46 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  tail call void @Perl_sv_setiv(ptr noundef %39, i64 noundef %45) #7
  %47 = getelementptr inbounds %struct.sv, ptr %39, i64 0, i32 2
  %48 = load i32, ptr %47, align 4, !tbaa !46
  %49 = and i32 %48, 4194304
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %44
  %52 = tail call i32 @Perl_mg_set(ptr noundef nonnull %39) #7
  br label %53

53:                                               ; preds = %44, %51
  %54 = getelementptr inbounds ptr, ptr %46, i64 %19
  store ptr %39, ptr %54, align 8, !tbaa !37
  %55 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %56 = getelementptr inbounds ptr, ptr %55, i64 %19
  store ptr %56, ptr @PL_stack_sp, align 8, !tbaa !37
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_IO__Handle_untaint(ptr noundef %0) #0 !prof !35 !PGOFuncName !71 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !37
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !37
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !37
  %5 = load i32, ptr %3, align 4, !tbaa !41
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.38) #7
  %16 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi ptr [ %16, %15 ], [ %6, %1 ]
  %19 = sext i32 %7 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !37
  %22 = load ptr, ptr @PL_op, align 8, !tbaa !37
  %23 = getelementptr inbounds %struct.op, ptr %22, i64 0, i32 6
  %24 = load i8, ptr %23, align 1, !tbaa !65
  %25 = and i8 %24, 4
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %17
  %28 = load ptr, ptr @PL_curpad, align 8, !tbaa !37
  %29 = getelementptr inbounds %struct.op, ptr %22, i64 0, i32 3
  %30 = load i64, ptr %29, align 8, !tbaa !68
  %31 = getelementptr inbounds ptr, ptr %28, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !37
  br label %35

33:                                               ; preds = %17
  %34 = tail call ptr @Perl_sv_newmortal() #7
  br label %35

35:                                               ; preds = %33, %27
  %36 = phi ptr [ %32, %27 ], [ %34, %33 ]
  %37 = tail call ptr @Perl_sv_2io(ptr noundef %21) #7
  %38 = icmp eq ptr %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %37, align 8, !tbaa !72
  %41 = getelementptr inbounds %struct.xpvio, ptr %40, i64 0, i32 17
  %42 = load i8, ptr %41, align 1, !tbaa !74
  %43 = or i8 %42, 16
  store i8 %43, ptr %41, align 1, !tbaa !74
  br label %46

44:                                               ; preds = %35
  %45 = tail call ptr @__errno_location() #8
  store i32 22, ptr %45, align 4, !tbaa !41
  br label %46

46:                                               ; preds = %44, %39
  %47 = phi i64 [ 0, %39 ], [ -1, %44 ]
  %48 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  tail call void @Perl_sv_setiv(ptr noundef %36, i64 noundef %47) #7
  %49 = getelementptr inbounds %struct.sv, ptr %36, i64 0, i32 2
  %50 = load i32, ptr %49, align 4, !tbaa !46
  %51 = and i32 %50, 4194304
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %46
  %54 = tail call i32 @Perl_mg_set(ptr noundef nonnull %36) #7
  br label %55

55:                                               ; preds = %46, %53
  %56 = getelementptr inbounds ptr, ptr %48, i64 %19
  store ptr %36, ptr %56, align 8, !tbaa !37
  %57 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %58 = getelementptr inbounds ptr, ptr %57, i64 %19
  store ptr %58, ptr @PL_stack_sp, align 8, !tbaa !37
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_IO__Handle_flush(ptr noundef %0) #0 !prof !35 !PGOFuncName !76 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !37
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !37
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !37
  %5 = load i32, ptr %3, align 4, !tbaa !41
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.38) #7
  %16 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi ptr [ %16, %15 ], [ %6, %1 ]
  %19 = sext i32 %7 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !37
  %22 = tail call ptr @Perl_sv_2io(ptr noundef %21) #7
  %23 = load ptr, ptr %22, align 8, !tbaa !72
  %24 = getelementptr inbounds %struct.xpvio, ptr %23, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !77
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %17
  %28 = tail call ptr @__errno_location() #8
  store i32 22, ptr %28, align 4, !tbaa !41
  %29 = tail call ptr @Perl_sv_newmortal() #7
  br label %36

30:                                               ; preds = %17
  %31 = tail call i32 @Perl_PerlIO_flush(ptr noundef nonnull %25) #7
  %32 = tail call ptr @Perl_sv_newmortal() #7
  switch i32 %31, label %34 [
    i32 -1, label %36
    i32 0, label %33
  ]

33:                                               ; preds = %30
  tail call void @Perl_sv_setpvn(ptr noundef %32, ptr noundef nonnull @.str.40, i64 noundef 10) #7
  br label %36

34:                                               ; preds = %30
  %35 = sext i32 %31 to i64
  tail call void @Perl_sv_setiv(ptr noundef %32, i64 noundef %35) #7
  br label %36

36:                                               ; preds = %27, %30, %33, %34
  %37 = phi ptr [ %29, %27 ], [ %32, %30 ], [ %32, %33 ], [ %32, %34 ]
  %38 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %39 = getelementptr inbounds ptr, ptr %38, i64 %19
  store ptr %37, ptr %39, align 8, !tbaa !37
  %40 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %41 = getelementptr inbounds ptr, ptr %40, i64 %19
  store ptr %41, ptr @PL_stack_sp, align 8, !tbaa !37
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_IO__Handle_setbuf(ptr noundef %0) #0 !prof !35 !PGOFuncName !78 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !37
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !37
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !37
  %5 = load i32, ptr %3, align 4, !tbaa !41
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.49) #7
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  br label %18

18:                                               ; preds = %16, %1
  %19 = phi ptr [ %17, %16 ], [ %6, %1 ]
  %20 = sext i32 %7 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !37
  %23 = tail call ptr @Perl_sv_2io(ptr noundef %22) #7
  %24 = load ptr, ptr %23, align 8, !tbaa !72
  %25 = getelementptr inbounds %struct.xpvio, ptr %24, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !77
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %18
  tail call fastcc void @not_here(ptr noundef nonnull @.str.13) #9
  br label %29

29:                                               ; preds = %28, %18
  %30 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %31 = getelementptr inbounds ptr, ptr %30, i64 %20
  %32 = getelementptr inbounds ptr, ptr %31, i64 -1
  store ptr %32, ptr @PL_stack_sp, align 8, !tbaa !37
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_IO__Handle_setvbuf(ptr nocapture readnone %0) #0 !prof !35 !PGOFuncName !79 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !37
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !37
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !37
  %5 = load i32, ptr %3, align 4, !tbaa !41
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 32
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.51) #7
  br label %15

15:                                               ; preds = %14, %1
  tail call fastcc void @not_here(ptr noundef nonnull @.str.14) #9
  %16 = tail call ptr @Perl_sv_newmortal() #7
  tail call void @Perl_sv_setpvn(ptr noundef %16, ptr noundef nonnull @.str.40, i64 noundef 10) #7
  %17 = add nsw i32 %5, 1
  %18 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  store ptr %16, ptr %20, align 8, !tbaa !37
  %21 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %22 = getelementptr inbounds ptr, ptr %21, i64 %19
  store ptr %22, ptr @PL_stack_sp, align 8, !tbaa !37
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_IO__Handle_sync(ptr noundef %0) #0 !prof !35 !PGOFuncName !80 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !37
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !37
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !37
  %5 = load i32, ptr %3, align 4, !tbaa !41
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 8
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.52) #7
  br label %15

15:                                               ; preds = %14, %1
  tail call fastcc void @not_here(ptr noundef nonnull @.str.15) #9
  %16 = tail call ptr @Perl_sv_newmortal() #7
  tail call void @Perl_sv_setpvn(ptr noundef %16, ptr noundef nonnull @.str.40, i64 noundef 10) #7
  %17 = add nsw i32 %5, 1
  %18 = sext i32 %17 to i64
  %19 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %20 = getelementptr inbounds ptr, ptr %19, i64 %18
  store ptr %16, ptr %20, align 8, !tbaa !37
  %21 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %22 = getelementptr inbounds ptr, ptr %21, i64 %18
  store ptr %22, ptr @PL_stack_sp, align 8, !tbaa !37
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_IO__Handle__create_getline_subs(ptr noundef %0) #0 !prof !35 !PGOFuncName !81 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !37
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !37
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !37
  %5 = load i32, ptr %3, align 4, !tbaa !41
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %17, label %15, !prof !82

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.53) #7
  %16 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi ptr [ %16, %15 ], [ %6, %1 ]
  %19 = sext i32 %7 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !37
  %22 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !46
  %24 = and i32 %23, 2098176
  %25 = icmp eq i32 %24, 1024
  br i1 %25, label %26, label %29, !prof !82

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !43
  br label %31

29:                                               ; preds = %17
  %30 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %21, ptr noundef null, i32 noundef 2) #7
  br label %31

31:                                               ; preds = %29, %26
  %32 = phi ptr [ %28, %26 ], [ %30, %29 ]
  %33 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @PL_check, i64 0, i64 192), align 8, !tbaa !37
  store ptr @io_ck_lineseq, ptr getelementptr inbounds ([0 x ptr], ptr @PL_check, i64 0, i64 192), align 8, !tbaa !37
  %34 = tail call ptr @Perl_eval_pv(ptr noundef %32, i32 noundef 0) #7
  %35 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %34) #9
  store ptr %33, ptr getelementptr inbounds ([0 x ptr], ptr @PL_check, i64 0, i64 192), align 8, !tbaa !37
  %36 = tail call ptr @Perl_sv_2mortal(ptr noundef %34) #7
  %37 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %38 = getelementptr inbounds ptr, ptr %37, i64 %19
  store ptr %36, ptr %38, align 8, !tbaa !37
  %39 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %40 = getelementptr inbounds ptr, ptr %39, i64 %19
  store ptr %40, ptr @PL_stack_sp, align 8, !tbaa !37
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_IO__Socket_sockatmark(ptr noundef %0) #0 !prof !35 !PGOFuncName !83 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !37
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !37
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !37
  %5 = load i32, ptr %3, align 4, !tbaa !41
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.54) #7
  %16 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi ptr [ %16, %15 ], [ %6, %1 ]
  %19 = sext i32 %7 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !37
  %22 = tail call ptr @Perl_sv_2io(ptr noundef %21) #7
  %23 = getelementptr inbounds %struct.io, ptr %22, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !43
  %25 = tail call i32 @Perl_PerlIO_fileno(ptr noundef %24) #7
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %17
  %28 = tail call ptr @__errno_location() #8
  store i32 9, ptr %28, align 4, !tbaa !41
  %29 = tail call ptr @Perl_sv_newmortal() #7
  br label %32

30:                                               ; preds = %17
  tail call fastcc void @not_here(ptr noundef nonnull @.str.55) #9
  %31 = tail call ptr @Perl_sv_newmortal() #7
  tail call void @Perl_sv_setpvn(ptr noundef %31, ptr noundef nonnull @.str.40, i64 noundef 10) #7
  br label %32

32:                                               ; preds = %27, %30
  %33 = phi ptr [ %29, %27 ], [ %31, %30 ]
  %34 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %35 = getelementptr inbounds ptr, ptr %34, i64 %19
  store ptr %33, ptr %35, align 8, !tbaa !37
  %36 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %37 = getelementptr inbounds ptr, ptr %36, i64 %19
  store ptr %37, ptr @PL_stack_sp, align 8, !tbaa !37
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_gv_stashpvn(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newCONSTSUB(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSViv(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @Perl_xs_boot_epilog(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_croak_xs_usage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_2io(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_newmortal() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @PerlIO_getpos(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @PerlIO_setpos(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_setpvn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_setiv(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @PerlIO_tmpfile() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @S_SvREFCNT_inc(ptr noundef returned %0) unnamed_addr #4 !prof !84 !PGOFuncName !85 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3, !prof !82

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !86
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 8, !tbaa !86
  br label %7

7:                                                ; preds = %1, %3
  ret ptr %0
}

; Function Attrs: optsize
declare ptr @Perl_newGVgen_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_hv_common_key_len(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i1 @Perl_do_openn(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newRV(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_bless(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_gv_stashpv(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_SvREFCNT_dec(ptr noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !87 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !86
  %6 = icmp ugt i32 %5, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = add i32 %5, -1
  store i32 %8, ptr %4, align 8, !tbaa !86
  br label %10

9:                                                ; preds = %3
  tail call void @Perl_sv_free2(ptr noundef nonnull %0, i32 noundef %5) #7
  br label %10

10:                                               ; preds = %7, %9, %1
  ret void
}

; Function Attrs: optsize
declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @Perl_sv_2iv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSV(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_my_poll(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @io_blocking(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !35 !PGOFuncName !88 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = tail call ptr @__errno_location() #8
  store i32 9, ptr %5, align 4, !tbaa !41
  br label %29

6:                                                ; preds = %2
  %7 = tail call i32 @Perl_PerlIO_fileno(ptr noundef nonnull %0) #7
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call ptr @__errno_location() #8
  store i32 9, ptr %10, align 4, !tbaa !41
  br label %29

11:                                               ; preds = %6
  %12 = tail call i32 (i32, i32, ...) @fcntl64(i32 noundef %7, i32 noundef 3, i32 noundef 0) #7
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %14, label %29

14:                                               ; preds = %11
  %15 = lshr i32 %12, 11
  %16 = and i32 %15, 1
  %17 = xor i32 %16, 1
  %18 = icmp eq i32 %1, 0
  %19 = or i32 %12, 2048
  %20 = icmp sgt i32 %1, 0
  %21 = and i32 %12, 2147481599
  %22 = select i1 %20, i32 %21, i32 %12
  %23 = select i1 %18, i32 %19, i32 %22
  %24 = icmp eq i32 %23, %12
  br i1 %24, label %29, label %25

25:                                               ; preds = %14
  %26 = tail call i32 (i32, i32, ...) @fcntl64(i32 noundef %7, i32 noundef 4, i32 noundef %23) #7
  %27 = icmp slt i32 %26, 0
  %28 = select i1 %27, i32 %26, i32 %17
  br label %29

29:                                               ; preds = %11, %25, %14, %9, %4
  %30 = phi i32 [ -1, %9 ], [ -1, %4 ], [ %12, %11 ], [ %28, %25 ], [ %17, %14 ]
  ret i32 %30
}

; Function Attrs: optsize
declare i32 @Perl_PerlIO_fileno(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @fcntl64(i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare double @Perl_sv_2nv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @Perl_sv_2uv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @PerlIO_isutf8(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @PerlIO_ungetc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @Perl_PerlIO_unread(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSVuv(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_mg_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_PerlIO_error(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_PerlIO_clearerr(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_PerlIO_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @not_here(ptr noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !89 {
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.50, ptr noundef %0) #7
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef ptr @io_ck_lineseq(ptr noundef readonly returned %0) #5 !prof !90 !PGOFuncName !91 {
  %2 = getelementptr inbounds %struct.binop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !37
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5, !prof !92

5:                                                ; preds = %1, %14
  %6 = phi ptr [ %16, %14 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.op, ptr %6, i64 0, i32 4
  %8 = load i16, ptr %7, align 8
  %9 = and i16 %8, 511
  %10 = add nsw i16 %9, -193
  %11 = icmp ult i16 %10, 2
  br i1 %11, label %12, label %14, !prof !93

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.op, ptr %6, i64 0, i32 2
  store ptr @io_pp_nextstate, ptr %13, align 8, !tbaa !94
  br label %14

14:                                               ; preds = %5, %12
  %15 = getelementptr inbounds %struct.op, ptr %6, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !37
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %5, !prof !95, !llvm.loop !96

18:                                               ; preds = %14, %1
  ret ptr %0
}

; Function Attrs: optsize
declare ptr @Perl_eval_pv(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @io_pp_nextstate() #0 !prof !35 !PGOFuncName !97 {
  %1 = load ptr, ptr @PL_curcop, align 8, !tbaa !37
  %2 = load ptr, ptr @PL_op, align 8, !tbaa !37
  %3 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 4
  %4 = load i16, ptr %3, align 8
  %5 = and i16 %4, 511
  %6 = zext nneg i16 %5 to i64
  %7 = getelementptr inbounds [0 x ptr], ptr @PL_ppaddr, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !37
  %9 = tail call ptr %8() #7
  store ptr %1, ptr @PL_curcop, align 8, !tbaa !37
  ret ptr %9
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind optsize willreturn memory(none) }
attributes #9 = { optsize }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 43491972207}
!4 = !{!"MaxCount", i64 4342352624}
!5 = !{!"MaxInternalCount", i64 4342352624}
!6 = !{!"MaxFunctionCount", i64 3033009960}
!7 = !{!"NumCounts", i64 40262}
!8 = !{!"NumFunctions", i64 2170}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 4342352624, i32 1}
!14 = !{i32 100000, i64 3033009960, i32 2}
!15 = !{i32 200000, i64 2317897115, i32 3}
!16 = !{i32 300000, i64 528717179, i32 7}
!17 = !{i32 400000, i64 462639867, i32 16}
!18 = !{i32 500000, i64 457545339, i32 26}
!19 = !{i32 600000, i64 423510107, i32 35}
!20 = !{i32 700000, i64 420555191, i32 45}
!21 = !{i32 800000, i64 220071415, i32 59}
!22 = !{i32 900000, i64 40456743, i32 99}
!23 = !{i32 950000, i64 21523500, i32 170}
!24 = !{i32 990000, i64 1957094, i32 384}
!25 = !{i32 999000, i64 104162, i32 1106}
!26 = !{i32 999900, i64 11423, i32 2014}
!27 = !{i32 999990, i64 757, i32 3020}
!28 = !{i32 999999, i64 64, i32 4611}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!"function_entry_count", i64 0}
!36 = !{!"IO.c:XS_IO__Seekable_getpos"}
!37 = !{!38, !38, i64 0}
!38 = !{!"any pointer", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!42, !42, i64 0}
!42 = !{!"int", !39, i64 0}
!43 = !{!39, !39, i64 0}
!44 = !{!"IO.c:XS_IO__Seekable_setpos"}
!45 = !{!"IO.c:XS_IO__File_new_tmpfile"}
!46 = !{!47, !42, i64 12}
!47 = !{!"sv", !38, i64 0, !42, i64 8, !42, i64 12, !39, i64 16}
!48 = !{!49, !38, i64 0}
!49 = !{!"gv", !38, i64 0, !42, i64 8, !42, i64 12, !39, i64 16}
!50 = !{!51, !42, i64 4}
!51 = !{!"hek", !42, i64 0, !42, i64 4, !39, i64 8}
!52 = !{!"IO.c:XS_IO__Poll__poll"}
!53 = !{!47, !38, i64 0}
!54 = !{!55, !42, i64 0}
!55 = !{!"pollfd", !42, i64 0, !56, i64 4, !56, i64 6}
!56 = !{!"short", !39, i64 0}
!57 = !{!55, !56, i64 4}
!58 = !{!55, !56, i64 6}
!59 = distinct !{!59, !60}
!60 = !{!"llvm.loop.mustprogress"}
!61 = distinct !{!61, !60}
!62 = !{!"IO.c:XS_IO__Handle_blocking"}
!63 = !{i32 -2147483648, i32 2}
!64 = !{!"IO.c:XS_IO__Handle_ungetc"}
!65 = !{!66, !39, i64 35}
!66 = !{!"op", !38, i64 0, !38, i64 8, !38, i64 16, !67, i64 24, !42, i64 32, !42, i64 33, !42, i64 33, !42, i64 33, !42, i64 33, !42, i64 33, !42, i64 33, !42, i64 33, !39, i64 34, !39, i64 35}
!67 = !{!"long", !39, i64 0}
!68 = !{!66, !67, i64 24}
!69 = !{!"IO.c:XS_IO__Handle_error"}
!70 = !{!"IO.c:XS_IO__Handle_clearerr"}
!71 = !{!"IO.c:XS_IO__Handle_untaint"}
!72 = !{!73, !38, i64 0}
!73 = !{!"io", !38, i64 0, !42, i64 8, !42, i64 12, !39, i64 16}
!74 = !{!75, !39, i64 129}
!75 = !{!"xpvio", !38, i64 0, !39, i64 8, !67, i64 16, !39, i64 24, !39, i64 32, !38, i64 40, !39, i64 48, !67, i64 56, !67, i64 64, !67, i64 72, !38, i64 80, !38, i64 88, !38, i64 96, !38, i64 104, !38, i64 112, !38, i64 120, !39, i64 128, !39, i64 129}
!76 = !{!"IO.c:XS_IO__Handle_flush"}
!77 = !{!75, !38, i64 40}
!78 = !{!"IO.c:XS_IO__Handle_setbuf"}
!79 = !{!"IO.c:XS_IO__Handle_setvbuf"}
!80 = !{!"IO.c:XS_IO__Handle_sync"}
!81 = !{!"IO.c:XS_IO__Handle__create_getline_subs"}
!82 = !{!"branch_weights", i32 2, i32 1}
!83 = !{!"IO.c:XS_IO__Socket_sockatmark"}
!84 = !{!"function_entry_count", i64 1}
!85 = !{!"IO.c:S_SvREFCNT_inc"}
!86 = !{!47, !42, i64 8}
!87 = !{!"IO.c:S_SvREFCNT_dec"}
!88 = !{!"IO.c:io_blocking"}
!89 = !{!"IO.c:not_here"}
!90 = !{!"function_entry_count", i64 24}
!91 = !{!"IO.c:io_ck_lineseq"}
!92 = !{!"branch_weights", i32 1, i32 199}
!93 = !{!"branch_weights", i32 675, i32 625}
!94 = !{!66, !38, i64 16}
!95 = !{!"branch_weights", i32 199, i32 193}
!96 = distinct !{!96, !60}
!97 = !{!"IO.c:io_pp_nextstate"}
