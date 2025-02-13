; ModuleID = 'pp_pack.c'
source_filename = "pp_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sv = type { ptr, i32, i32, %union.anon }
%union.anon = type { ptr }
%struct.tempsym = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i64, ptr }
%union.NV_bytes = type { double }
%struct.xpv = type { ptr, %union._xmgu, i64, %union.anon.0 }
%union._xmgu = type { ptr }
%union.anon.0 = type { i64 }
%struct.xpviv = type { ptr, %union._xmgu, i64, %union.anon.1, %union._xivu }
%union.anon.1 = type { i64 }
%union._xivu = type { i64 }
%struct.op = type { ptr, ptr, ptr, i64, i16, i8, i8 }
%struct.cop = type { ptr, ptr, ptr, i64, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.xpvuv = type { ptr, %union._xmgu, i64, %union.anon.2, %union._xivu }
%union.anon.2 = type { i64 }
%struct.xpvnv = type { ptr, %union._xmgu, i64, %union.anon.3, %union._xivu, %union._xnvu }
%union.anon.3 = type { i64 }
%union._xnvu = type { double }
%struct.hv = type { ptr, i32, i32, %union.anon.4 }
%union.anon.4 = type { ptr }

@PL_stack_sp = external local_unnamed_addr global ptr, align 8
@PL_op = external local_unnamed_addr global ptr, align 8
@PL_curcop = external local_unnamed_addr global ptr, align 8
@PL_sv_undef = external global %struct.sv, align 8
@PL_stack_base = external local_unnamed_addr global ptr, align 8
@PL_markstack_ptr = external local_unnamed_addr global ptr, align 8
@PL_curpad = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PL_stack_max = external local_unnamed_addr global ptr, align 8
@PL_tmps_ix = external local_unnamed_addr global i64, align 8
@PL_tmps_max = external local_unnamed_addr global i64, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Invalid type '%c' in unpack\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"'@' outside of string in unpack\00", align 1
@PL_utf8skip = external local_unnamed_addr constant [0 x i8], align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"'@' outside of string with malformed UTF-8 in unpack\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Malformed UTF-8 string in unpack\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"'X' outside of string in unpack\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"'x' outside of string in unpack\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"'/' must follow a numeric type in unpack\00", align 1
@PL_charclass = external local_unnamed_addr constant [0 x i32], align 4
@PL_bitcount = external local_unnamed_addr constant [256 x i8], align 16
@PL_hexdigit = external local_unnamed_addr constant [0 x i8], align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"U0 mode on a byte string\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%.*lu\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"Unterminated compressed integer in unpack\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"'P' must have an explicit size in unpack\00", align 1
@PL_uudmap = external local_unnamed_addr constant [256 x i8], align 16
@.str.12 = private unnamed_addr constant [5 x i8] c"fFdD\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"cCsSiIlLnNUWvVqQjJ\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"Count after length/code in unpack\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"length/code after end of string in unpack\00", align 1
@PL_Sv = external local_unnamed_addr global ptr, align 8
@.str.16 = private unnamed_addr constant [29 x i8] c"Negative '/' count in unpack\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"Code missing after '/' in unpack\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"Invalid type ',' in %s\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"()-group starts with a count in %s\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"Too deeply nested ()-groups in %s\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"sSiIlLqQjJfFdDpP(\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"sSiIlLxXnNvV@.\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"'%c' allowed only after types %s in %s\00", align 1
@.str.24 = private unnamed_addr constant [49 x i8] c"Can't use both '<' and '>' after type '%c' in %s\00", align 1
@.str.25 = private unnamed_addr constant [58 x i8] c"Can't use '%c' in a group with different byte-order in %s\00", align 1
@.str.26 = private unnamed_addr constant [41 x i8] c"Duplicate modifier '%c' after '%c' in %s\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"Malformed integer in [] in %s\00", align 1
@.str.28 = private unnamed_addr constant [39 x i8] c"'/' does not take a repeat count in %s\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"pack\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"unpack\00", align 1
@.str.31 = private unnamed_addr constant [49 x i8] c"No group ending character '%c' found in template\00", align 1
@.str.32 = private unnamed_addr constant [34 x i8] c"pack/unpack repeat count overflow\00", align 1
@.str.33 = private unnamed_addr constant [39 x i8] c"Within []-length '*' not allowed in %s\00", align 1
@.str.34 = private unnamed_addr constant [24 x i8] c"Invalid type '%c' in %s\00", align 1
@.str.35 = private unnamed_addr constant [40 x i8] c"Within []-length '%c' not allowed in %s\00", align 1
@.str.36 = private unnamed_addr constant [28 x i8] c"'X' outside of string in %s\00", align 1
@packprops = internal unnamed_addr constant <{ [375 x i8], [137 x i8] }> <{ [375 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\08\00\00\04\08\00\04\00\04\00\00\08\00\02\00A\04A\00\00\00\00\00\00\00\00\00\00\00\01\08\00\04\00\00\04\08\00\04\00\02\00\88\08\00\02\00\00\02\C1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\00\00\08\00\04\00\00\00\00\02\00\00\04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\00\00\08\00\02\00\00\00\00\02\00\00\02", [137 x i8] zeroinitializer }>, align 16
@.str.38 = private unnamed_addr constant [48 x i8] c"Malformed UTF-8 string in '%c' format in unpack\00", align 1
@.str.39 = private unnamed_addr constant [43 x i8] c"Character in '%c' format wrapped in unpack\00", align 1
@.str.40 = private unnamed_addr constant [42 x i8] c"Character(s) in '%c' format wrapped in %s\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"0000\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"0000000000\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"@Xxu\00", align 1
@.str.44 = private unnamed_addr constant [31 x i8] c"Code missing after '/' in pack\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"aAZ\00", align 1
@.str.46 = private unnamed_addr constant [26 x i8] c"Invalid type '%c' in pack\00", align 1
@.str.47 = private unnamed_addr constant [29 x i8] c"'%%' may not be used in pack\00", align 1
@PL_sv_no = external global %struct.sv, align 8
@.str.48 = private unnamed_addr constant [31 x i8] c"Malformed UTF-8 string in pack\00", align 1
@.str.49 = private unnamed_addr constant [31 x i8] c"'%c' outside of string in pack\00", align 1
@.str.50 = private unnamed_addr constant [89 x i8] c"panic: predicted utf8 length not available, for '%c', aptr=%p end=%p cur=%p, fromlen=%lu\00", align 1
@PL_tainting = external local_unnamed_addr global i8, align 1
@PL_tainted = external local_unnamed_addr global i8, align 1
@.str.51 = private unnamed_addr constant [40 x i8] c"Character in 'c' format wrapped in pack\00", align 1
@.str.52 = private unnamed_addr constant [40 x i8] c"Character in 'C' format wrapped in pack\00", align 1
@.str.53 = private unnamed_addr constant [40 x i8] c"Character in 'W' format wrapped in pack\00", align 1
@.str.54 = private unnamed_addr constant [41 x i8] c"Cannot compress negative numbers in pack\00", align 1
@.str.55 = private unnamed_addr constant [32 x i8] c"Cannot compress integer in pack\00", align 1
@.str.56 = private unnamed_addr constant [44 x i8] c"Can only compress unsigned integers in pack\00", align 1
@.str.57 = private unnamed_addr constant [43 x i8] c"Attempt to pack pointer to temporary value\00", align 1
@.str.58 = private unnamed_addr constant [37 x i8] c"Field too wide in 'u' format in pack\00", align 1
@.str.59 = private unnamed_addr constant [80 x i8] c"panic: string is shorter than advertised, aptr=%p, aend=%p, buffer=%p, todo=%ld\00", align 1
@.str.60 = private unnamed_addr constant [57 x i8] c"panic: marks beyond string end, m=%p, marks=%p, level=%d\00", align 1
@.str.61 = private unnamed_addr constant [27 x i8] c"Cannot compress %g in pack\00", align 1
@.str.62 = private unnamed_addr constant [25 x i8] c"Cannot pack %g with '%c'\00", align 1
@PL_uuemap = external local_unnamed_addr constant [65 x i8], align 16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Perl_unpackstring(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.tempsym, align 8
  %7 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #14
  %8 = and i32 %4, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = or i32 %4, 64
  br label %22

12:                                               ; preds = %5
  %13 = tail call fastcc zeroext i1 @S_need_utf8(ptr noundef %0, ptr noundef %1) #15
  br i1 %13, label %14, label %22

14:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #14
  %15 = ptrtoint ptr %3 to i64
  %16 = ptrtoint ptr %2 to i64
  %17 = sub i64 %15, %16
  store i64 %17, ptr %7, align 8, !tbaa !5
  %18 = call ptr @Perl_bytes_to_utf8(ptr noundef %2, ptr noundef nonnull %7) #16
  call void @Perl_save_pushptr(ptr noundef %18, i32 noundef 10) #16
  %19 = load i64, ptr %7, align 8, !tbaa !5
  %20 = getelementptr inbounds i8, ptr %18, i64 %19
  %21 = or disjoint i32 %4, 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  br label %22

22:                                               ; preds = %12, %14, %10
  %23 = phi ptr [ %2, %10 ], [ %18, %14 ], [ %2, %12 ]
  %24 = phi ptr [ %3, %10 ], [ %20, %14 ], [ %3, %12 ]
  %25 = phi i32 [ %11, %10 ], [ %21, %14 ], [ %4, %12 ]
  %26 = call fastcc signext i8 @S_first_symbol(ptr noundef %0, ptr noundef %1) #15
  %27 = icmp eq i8 %26, 85
  %28 = and i32 %25, 8
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %27, i1 true, i1 %29
  %31 = or i32 %25, 32
  %32 = select i1 %30, i32 %25, i32 %31
  store ptr %0, ptr %6, align 8, !tbaa !9
  %33 = getelementptr inbounds %struct.tempsym, ptr %6, i64 0, i32 1
  store ptr %1, ptr %33, align 8, !tbaa !13
  %34 = getelementptr inbounds %struct.tempsym, ptr %6, i64 0, i32 2
  %35 = getelementptr inbounds %struct.tempsym, ptr %6, i64 0, i32 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %34, i8 0, i64 32, i1 false)
  store i32 %32, ptr %35, align 8, !tbaa !14
  %36 = getelementptr inbounds %struct.tempsym, ptr %6, i64 0, i32 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %36, i8 0, i64 16, i1 false)
  %37 = call fastcc i32 @S_unpack_rec(ptr noundef nonnull %6, ptr noundef %23, ptr noundef %23, ptr noundef %24, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #14
  ret i32 %37
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i1 @S_need_utf8(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = icmp ult ptr %0, %1
  br i1 %3, label %4, label %28

4:                                                ; preds = %2
  %5 = ptrtoint ptr %1 to i64
  br label %6

6:                                                ; preds = %4, %23
  %7 = phi i8 [ 1, %4 ], [ %25, %23 ]
  %8 = phi ptr [ %0, %4 ], [ %26, %23 ]
  %9 = load i8, ptr %8, align 1, !tbaa !15
  switch i8 %9, label %23 [
    i8 35, label %10
    i8 85, label %16
  ]

10:                                               ; preds = %6
  %11 = getelementptr inbounds i8, ptr %8, i64 1
  %12 = ptrtoint ptr %11 to i64
  %13 = sub i64 %5, %12
  %14 = tail call ptr @memchr(ptr noundef nonnull %11, i32 noundef 10, i64 noundef %13) #17
  %15 = icmp eq ptr %14, null
  br i1 %15, label %28, label %23

16:                                               ; preds = %6
  %17 = and i8 %7, 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = getelementptr inbounds i8, ptr %8, i64 1
  %21 = load i8, ptr %20, align 1, !tbaa !15
  %22 = icmp eq i8 %21, 48
  br i1 %22, label %28, label %23

23:                                               ; preds = %6, %19, %10
  %24 = phi ptr [ %14, %10 ], [ %8, %19 ], [ %8, %6 ]
  %25 = phi i8 [ %7, %10 ], [ %7, %19 ], [ 0, %6 ]
  %26 = getelementptr inbounds i8, ptr %24, i64 1
  %27 = icmp ult ptr %26, %1
  br i1 %27, label %6, label %28, !llvm.loop !16

28:                                               ; preds = %10, %19, %16, %23, %2
  %29 = phi i1 [ false, %2 ], [ false, %23 ], [ true, %16 ], [ true, %19 ], [ false, %10 ]
  ret i1 %29
}

; Function Attrs: optsize
declare ptr @Perl_bytes_to_utf8(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @Perl_save_pushptr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc signext i8 @S_first_symbol(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = icmp ult ptr %0, %1
  br i1 %3, label %4, label %19

4:                                                ; preds = %2
  %5 = ptrtoint ptr %1 to i64
  br label %6

6:                                                ; preds = %10, %4
  %7 = phi ptr [ %0, %4 ], [ %16, %10 ]
  %8 = load i8, ptr %7, align 1, !tbaa !15
  %9 = icmp eq i8 %8, 35
  br i1 %9, label %10, label %19

10:                                               ; preds = %6
  %11 = getelementptr inbounds i8, ptr %7, i64 1
  %12 = ptrtoint ptr %11 to i64
  %13 = sub i64 %5, %12
  %14 = tail call ptr @memchr(ptr noundef nonnull %11, i32 noundef 10, i64 noundef %13) #17
  %15 = icmp ne ptr %14, null
  %16 = getelementptr inbounds i8, ptr %14, i64 1
  %17 = icmp ult ptr %16, %1
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %6, label %19, !llvm.loop !18

19:                                               ; preds = %6, %10, %2
  %20 = phi i8 [ 0, %2 ], [ 0, %10 ], [ %8, %6 ]
  ret i8 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @S_unpack_rec(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef writeonly %4) unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca %struct.tempsym, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca [13 x i8], align 1
  %12 = alloca ptr, align 8
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca ptr, align 8
  %26 = alloca ptr, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca float, align 4
  %30 = alloca double, align 8
  %31 = alloca %union.NV_bytes, align 8
  %32 = alloca [3 x i8], align 1
  %33 = alloca double, align 8
  store ptr %1, ptr %6, align 8, !tbaa !19
  %34 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !19
  %35 = load ptr, ptr @PL_stack_base, align 8, !tbaa !19
  %36 = ptrtoint ptr %34 to i64
  %37 = ptrtoint ptr %35 to i64
  %38 = sub i64 %36, %37
  %39 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 8
  %40 = load i32, ptr %39, align 8, !tbaa !14
  %41 = and i32 %40, 16
  %42 = icmp eq i32 %41, 0
  %43 = ptrtoint ptr %1 to i64
  %44 = ptrtoint ptr %2 to i64
  %45 = sub i64 %43, %44
  %46 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 9
  store i64 %45, ptr %46, align 8, !tbaa !20
  %47 = tail call fastcc zeroext i1 @S_next_symbol(ptr noundef nonnull %0) #15
  br i1 %47, label %48, label %2411

48:                                               ; preds = %5
  %49 = trunc i32 %40 to i8
  %50 = lshr i8 %49, 5
  %51 = and i8 %50, 1
  %52 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 4
  %53 = shl i64 %38, 29
  %54 = add i64 %53, 4294967296
  %55 = ashr i64 %54, 32
  %56 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 6
  %57 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 5
  %58 = ptrtoint ptr %3 to i64
  %59 = sub i64 %58, %44
  %60 = trunc i64 %59 to i32
  %61 = getelementptr inbounds [3 x i8], ptr %32, i64 0, i64 1
  %62 = getelementptr inbounds [3 x i8], ptr %32, i64 0, i64 2
  %63 = getelementptr inbounds [13 x i8], ptr %11, i64 0, i64 1
  %64 = getelementptr inbounds %struct.tempsym, ptr %7, i64 0, i32 3
  %65 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 1
  %66 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 10
  %67 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 7
  %68 = getelementptr inbounds %struct.tempsym, ptr %7, i64 0, i32 2
  %69 = getelementptr inbounds %struct.tempsym, ptr %7, i64 0, i32 6
  %70 = getelementptr inbounds %struct.tempsym, ptr %7, i64 0, i32 8
  %71 = ashr i64 %53, 32
  br label %72

72:                                               ; preds = %48, %2403
  %73 = phi ptr [ %34, %48 ], [ %2409, %2403 ]
  %74 = phi ptr [ null, %48 ], [ %2408, %2403 ]
  %75 = phi i32 [ 0, %48 ], [ %2407, %2403 ]
  %76 = phi i64 [ 0, %48 ], [ %2406, %2403 ]
  %77 = phi double [ 0.000000e+00, %48 ], [ %2405, %2403 ]
  %78 = phi i8 [ %51, %48 ], [ %2404, %2403 ]
  %79 = load i32, ptr %52, align 8, !tbaa !21
  br i1 %42, label %89, label %80

80:                                               ; preds = %72
  %81 = load ptr, ptr @PL_stack_base, align 8, !tbaa !19
  %82 = ptrtoint ptr %73 to i64
  %83 = ptrtoint ptr %81 to i64
  %84 = sub i64 %82, %83
  %85 = ashr exact i64 %84, 3
  %86 = icmp eq i64 %85, %55
  %87 = icmp ne i32 %79, 47
  %88 = select i1 %86, i1 %87, i1 false
  br i1 %88, label %2411, label %89

89:                                               ; preds = %80, %72
  %90 = load i32, ptr %56, align 8, !tbaa !22
  %91 = icmp eq i32 %90, 2
  br i1 %91, label %94, label %92

92:                                               ; preds = %89
  %93 = load i32, ptr %57, align 4, !tbaa !23
  br label %94

94:                                               ; preds = %89, %92
  %95 = phi i32 [ %93, %92 ], [ %60, %89 ]
  %96 = icmp ne i32 %90, 2
  br label %97

97:                                               ; preds = %2399, %94
  %98 = phi i32 [ %79, %94 ], [ %2402, %2399 ]
  %99 = phi i32 [ %95, %94 ], [ %2400, %2399 ]
  %100 = phi i8 [ %78, %94 ], [ %2355, %2399 ]
  %101 = phi i1 [ true, %94 ], [ false, %2399 ]
  %102 = phi double [ %77, %94 ], [ %2357, %2399 ]
  %103 = phi i64 [ %76, %94 ], [ %2358, %2399 ]
  %104 = phi i32 [ %75, %94 ], [ 0, %2399 ]
  %105 = phi ptr [ %74, %94 ], [ %2359, %2399 ]
  %106 = phi ptr [ %73, %94 ], [ %2401, %2399 ]
  %107 = load ptr, ptr %6, align 8, !tbaa !19
  %108 = icmp ult ptr %107, %3
  %109 = and i32 %98, -1537
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [512 x i8], ptr @packprops, i64 0, i64 %110
  %112 = load i8, ptr %111, align 1, !tbaa !15
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %148, label %114

114:                                              ; preds = %97
  %115 = and i8 %112, 63
  %116 = zext nneg i8 %115 to i64
  %117 = ptrtoint ptr %107 to i64
  %118 = sub i64 %58, %117
  %119 = sdiv i64 %118, %116
  %120 = sext i32 %99 to i64
  %121 = icmp slt i64 %119, %120
  %122 = trunc i64 %119 to i32
  %123 = select i1 %121, i32 %122, i32 %99
  %124 = icmp ne i32 %104, 0
  %125 = icmp sgt i8 %112, -1
  %126 = and i1 %124, %125
  br i1 %126, label %148, label %127

127:                                              ; preds = %114
  %128 = icmp eq i32 %123, 0
  %129 = select i1 %42, i32 %123, i32 1
  %130 = select i1 %128, i32 0, i32 %129
  %131 = load ptr, ptr @PL_stack_max, align 8, !tbaa !19
  %132 = ptrtoint ptr %131 to i64
  %133 = ptrtoint ptr %106 to i64
  %134 = sub i64 %132, %133
  %135 = ashr exact i64 %134, 3
  %136 = sext i32 %130 to i64
  %137 = icmp slt i64 %135, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %127
  %139 = call ptr @Perl_stack_grow(ptr noundef %106, ptr noundef %106, i64 noundef %136) #16
  br label %140

140:                                              ; preds = %138, %127
  %141 = phi ptr [ %139, %138 ], [ %106, %127 ]
  %142 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !5
  %143 = add nsw i64 %142, %136
  %144 = load i64, ptr @PL_tmps_max, align 8, !tbaa !5
  %145 = icmp slt i64 %143, %144
  br i1 %145, label %148, label %146

146:                                              ; preds = %140
  %147 = call i64 @Perl_tmps_grow_p(i64 noundef %143) #16
  br label %148

148:                                              ; preds = %114, %140, %146, %97
  %149 = phi i32 [ %99, %97 ], [ %123, %114 ], [ %130, %140 ], [ %130, %146 ]
  %150 = phi ptr [ %106, %97 ], [ %106, %114 ], [ %141, %140 ], [ %141, %146 ]
  %151 = and i32 %98, 1536
  %152 = icmp eq i32 %151, 512
  switch i32 %109, label %246 [
    i32 37, label %248
    i32 40, label %251
    i32 302, label %287
    i32 46, label %287
    i32 320, label %356
    i32 64, label %356
    i32 344, label %397
    i32 88, label %430
    i32 376, label %477
    i32 120, label %153
    i32 47, label %531
    i32 65, label %532
    i32 90, label %532
    i32 97, label %532
    i32 66, label %750
    i32 98, label %750
    i32 72, label %930
    i32 104, label %930
    i32 67, label %1050
    i32 99, label %1058
    i32 87, label %1124
    i32 85, label %1222
    i32 371, label %1335
    i32 115, label %1335
    i32 339, label %1379
    i32 118, label %1379
    i32 110, label %1379
    i32 83, label %1379
    i32 374, label %1428
    i32 366, label %1428
    i32 105, label %1477
    i32 361, label %1477
    i32 73, label %1521
    i32 329, label %1521
    i32 106, label %238
    i32 74, label %230
    i32 364, label %222
    i32 108, label %214
    i32 332, label %206
    i32 86, label %1737
    i32 78, label %1737
    i32 76, label %1737
    i32 342, label %1786
    i32 334, label %1786
    i32 112, label %200
    i32 119, label %192
    i32 80, label %1937
    i32 113, label %184
    i32 81, label %176
    i32 102, label %169
    i32 100, label %162
    i32 70, label %155
    i32 117, label %2126
  ]

153:                                              ; preds = %148
  %154 = and i8 %100, 1
  br label %496

155:                                              ; preds = %148
  %156 = add nsw i32 %149, -1
  %157 = icmp sgt i32 %149, 0
  br i1 %157, label %158, label %2279

158:                                              ; preds = %155
  %159 = and i8 %100, 1
  %160 = icmp eq i8 %159, 0
  %161 = icmp eq i32 %104, 0
  br label %2098

162:                                              ; preds = %148
  %163 = add nsw i32 %149, -1
  %164 = icmp sgt i32 %149, 0
  br i1 %164, label %165, label %2279

165:                                              ; preds = %162
  %166 = and i8 %100, 1
  %167 = icmp eq i8 %166, 0
  %168 = icmp eq i32 %104, 0
  br label %2070

169:                                              ; preds = %148
  %170 = add nsw i32 %149, -1
  %171 = icmp sgt i32 %149, 0
  br i1 %171, label %172, label %2279

172:                                              ; preds = %169
  %173 = and i8 %100, 1
  %174 = icmp eq i8 %173, 0
  %175 = icmp eq i32 %104, 0
  br label %2040

176:                                              ; preds = %148
  %177 = add nsw i32 %149, -1
  %178 = icmp sgt i32 %149, 0
  br i1 %178, label %179, label %2279

179:                                              ; preds = %176
  %180 = and i8 %100, 1
  %181 = icmp eq i8 %180, 0
  %182 = icmp eq i32 %104, 0
  %183 = icmp sgt i32 %104, 64
  br label %2006

184:                                              ; preds = %148
  %185 = add nsw i32 %149, -1
  %186 = icmp sgt i32 %149, 0
  br i1 %186, label %187, label %2279

187:                                              ; preds = %184
  %188 = and i8 %100, 1
  %189 = icmp eq i8 %188, 0
  %190 = icmp eq i32 %104, 0
  %191 = icmp sgt i32 %104, 64
  br label %1972

192:                                              ; preds = %148
  %193 = icmp sgt i32 %149, 0
  %194 = load ptr, ptr %6, align 8
  %195 = icmp ult ptr %194, %3
  %196 = select i1 %193, i1 %195, i1 false
  br i1 %196, label %197, label %2279

197:                                              ; preds = %192
  %198 = and i8 %100, 1
  %199 = icmp eq i8 %198, 0
  br label %1856

200:                                              ; preds = %148
  %201 = add nsw i32 %149, -1
  %202 = icmp sgt i32 %149, 0
  br i1 %202, label %203, label %2279

203:                                              ; preds = %200
  %204 = and i8 %100, 1
  %205 = icmp eq i8 %204, 0
  br label %1835

206:                                              ; preds = %148
  %207 = add nsw i32 %149, -1
  %208 = icmp sgt i32 %149, 0
  br i1 %208, label %209, label %2279

209:                                              ; preds = %206
  %210 = and i8 %100, 1
  %211 = icmp eq i8 %210, 0
  %212 = icmp eq i32 %104, 0
  %213 = icmp sgt i32 %104, 64
  br label %1703

214:                                              ; preds = %148
  %215 = add nsw i32 %149, -1
  %216 = icmp sgt i32 %149, 0
  br i1 %216, label %217, label %2279

217:                                              ; preds = %214
  %218 = and i8 %100, 1
  %219 = icmp eq i8 %218, 0
  %220 = icmp eq i32 %104, 0
  %221 = icmp sgt i32 %104, 64
  br label %1667

222:                                              ; preds = %148
  %223 = add nsw i32 %149, -1
  %224 = icmp sgt i32 %149, 0
  br i1 %224, label %225, label %2279

225:                                              ; preds = %222
  %226 = and i8 %100, 1
  %227 = icmp eq i8 %226, 0
  %228 = icmp eq i32 %104, 0
  %229 = icmp sgt i32 %104, 64
  br label %1633

230:                                              ; preds = %148
  %231 = add nsw i32 %149, -1
  %232 = icmp sgt i32 %149, 0
  br i1 %232, label %233, label %2279

233:                                              ; preds = %230
  %234 = and i8 %100, 1
  %235 = icmp eq i8 %234, 0
  %236 = icmp eq i32 %104, 0
  %237 = icmp sgt i32 %104, 64
  br label %1599

238:                                              ; preds = %148
  %239 = add nsw i32 %149, -1
  %240 = icmp sgt i32 %149, 0
  br i1 %240, label %241, label %2279

241:                                              ; preds = %238
  %242 = and i8 %100, 1
  %243 = icmp eq i8 %242, 0
  %244 = icmp eq i32 %104, 0
  %245 = icmp sgt i32 %104, 64
  br label %1565

246:                                              ; preds = %148
  %247 = and i32 %98, 255
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.1, i32 noundef %247) #16
  br label %248

248:                                              ; preds = %148, %246
  %249 = icmp eq i32 %90, 0
  %250 = select i1 %249, i32 16, i32 %149
  br label %2403, !llvm.loop !24

251:                                              ; preds = %148
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %7) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %7, ptr noundef nonnull align 8 dereferenceable(72) %0, i64 72, i1 false), !tbaa.struct !25
  %252 = load i32, ptr %39, align 8, !tbaa !14
  %253 = and i32 %98, -256
  %254 = or i32 %253, %252
  store i32 %254, ptr %39, align 8, !tbaa !14
  %255 = load ptr, ptr %64, align 8, !tbaa !27
  store ptr %255, ptr %65, align 8, !tbaa !13
  store ptr %7, ptr %66, align 8, !tbaa !28
  %256 = load i32, ptr %67, align 4, !tbaa !29
  %257 = add nsw i32 %256, 1
  store i32 %257, ptr %67, align 4, !tbaa !29
  store ptr %150, ptr @PL_stack_sp, align 8, !tbaa !19
  %258 = icmp eq i32 %149, 0
  %259 = select i1 %42, i32 %149, i32 1
  %260 = select i1 %258, i32 0, i32 %259
  %261 = shl i8 %100, 5
  %262 = and i8 %261, 32
  %263 = zext nneg i8 %262 to i32
  br label %264

264:                                              ; preds = %251, %267
  %265 = phi i32 [ %268, %267 ], [ %260, %251 ]
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %280, label %267

267:                                              ; preds = %264
  %268 = add nsw i32 %265, -1
  %269 = load ptr, ptr %68, align 8, !tbaa !30
  store ptr %269, ptr %0, align 8, !tbaa !9
  %270 = load i32, ptr %39, align 8, !tbaa !14
  %271 = and i32 %270, -33
  %272 = or disjoint i32 %271, %263
  store i32 %272, ptr %39, align 8, !tbaa !14
  %273 = load ptr, ptr %6, align 8, !tbaa !19
  %274 = call fastcc i32 @S_unpack_rec(ptr noundef nonnull %0, ptr noundef %273, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6) #15
  %275 = load ptr, ptr %6, align 8, !tbaa !19
  %276 = icmp eq ptr %275, %3
  %277 = load i32, ptr %69, align 8
  %278 = icmp eq i32 %277, 2
  %279 = select i1 %276, i1 %278, i1 false
  br i1 %279, label %280, label %264, !llvm.loop !31

280:                                              ; preds = %267, %264
  %281 = phi i32 [ %268, %267 ], [ -1, %264 ]
  %282 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !19
  %283 = load i32, ptr %39, align 8, !tbaa !14
  %284 = xor i32 %253, -1
  %285 = or i32 %252, %284
  %286 = and i32 %283, %285
  store i32 %286, ptr %70, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %7, i64 72, i1 false), !tbaa.struct !25
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %7) #14
  br label %2279

287:                                              ; preds = %148, %148
  %288 = and i8 %100, 1
  %289 = icmp ne i8 %288, 0
  %290 = and i32 %98, 256
  %291 = icmp eq i32 %290, 0
  %292 = and i1 %291, %289
  br i1 %91, label %317, label %293

293:                                              ; preds = %287
  %294 = icmp slt i32 %149, 1
  br i1 %294, label %298, label %295

295:                                              ; preds = %293
  %296 = add nsw i32 %149, -1
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %309, label %300

298:                                              ; preds = %293
  %299 = load ptr, ptr %6, align 8, !tbaa !19
  br label %317

300:                                              ; preds = %295, %300
  %301 = phi i32 [ %305, %300 ], [ %296, %295 ]
  %302 = phi ptr [ %304, %300 ], [ %0, %295 ]
  %303 = getelementptr inbounds %struct.tempsym, ptr %302, i64 0, i32 10
  %304 = load ptr, ptr %303, align 8, !tbaa !28
  %305 = add nsw i32 %301, -1
  %306 = icmp ne i32 %305, 0
  %307 = icmp ne ptr %304, null
  %308 = select i1 %306, i1 %307, i1 false
  br i1 %308, label %300, label %309, !llvm.loop !32

309:                                              ; preds = %300, %295
  %310 = phi ptr [ %0, %295 ], [ %304, %300 ]
  %311 = phi i32 [ 0, %295 ], [ %305, %300 ]
  %312 = phi i1 [ true, %295 ], [ %307, %300 ]
  br i1 %312, label %313, label %317

313:                                              ; preds = %309
  %314 = getelementptr inbounds %struct.tempsym, ptr %310, i64 0, i32 9
  %315 = load i64, ptr %314, align 8, !tbaa !20
  %316 = getelementptr inbounds i8, ptr %2, i64 %315
  br label %317

317:                                              ; preds = %313, %309, %287, %298
  %318 = phi ptr [ %299, %298 ], [ %2, %287 ], [ %316, %313 ], [ %2, %309 ]
  %319 = phi i32 [ %149, %298 ], [ %149, %287 ], [ %311, %313 ], [ %311, %309 ]
  %320 = load ptr, ptr %6, align 8, !tbaa !19
  %321 = icmp ugt ptr %318, %320
  br i1 %321, label %332, label %322

322:                                              ; preds = %317
  br i1 %292, label %323, label %325

323:                                              ; preds = %322
  %324 = call i64 @Perl_utf8_length(ptr noundef %318, ptr noundef %320) #16
  br label %329

325:                                              ; preds = %322
  %326 = ptrtoint ptr %320 to i64
  %327 = ptrtoint ptr %318 to i64
  %328 = sub i64 %326, %327
  br label %329

329:                                              ; preds = %325, %323
  %330 = phi i64 [ %324, %323 ], [ %328, %325 ]
  %331 = call ptr @Perl_newSVuv(i64 noundef %330) #16
  br label %343

332:                                              ; preds = %317
  br i1 %292, label %333, label %335

333:                                              ; preds = %332
  %334 = call i64 @Perl_utf8_length(ptr noundef %320, ptr noundef nonnull %318) #16
  br label %339

335:                                              ; preds = %332
  %336 = ptrtoint ptr %318 to i64
  %337 = ptrtoint ptr %320 to i64
  %338 = sub i64 %336, %337
  br label %339

339:                                              ; preds = %335, %333
  %340 = phi i64 [ %334, %333 ], [ %338, %335 ]
  %341 = sub nsw i64 0, %340
  %342 = call ptr @Perl_newSViv(i64 noundef %341) #16
  br label %343

343:                                              ; preds = %339, %329
  %344 = phi ptr [ %331, %329 ], [ %342, %339 ]
  %345 = load ptr, ptr @PL_stack_max, align 8, !tbaa !19
  %346 = ptrtoint ptr %345 to i64
  %347 = ptrtoint ptr %150 to i64
  %348 = sub i64 %346, %347
  %349 = icmp slt i64 %348, 8
  br i1 %349, label %350, label %352

350:                                              ; preds = %343
  %351 = call ptr @Perl_stack_grow(ptr noundef %150, ptr noundef %150, i64 noundef 1) #16
  br label %352

352:                                              ; preds = %343, %350
  %353 = phi ptr [ %351, %350 ], [ %150, %343 ]
  %354 = call ptr @Perl_sv_2mortal(ptr noundef %344) #16
  %355 = getelementptr inbounds ptr, ptr %353, i64 1
  store ptr %354, ptr %355, align 8, !tbaa !19
  br label %2279

356:                                              ; preds = %148, %148
  %357 = load i64, ptr %46, align 8, !tbaa !20
  %358 = getelementptr inbounds i8, ptr %2, i64 %357
  store ptr %358, ptr %6, align 8, !tbaa !19
  %359 = and i8 %100, 1
  %360 = icmp ne i8 %359, 0
  %361 = and i32 %98, 256
  %362 = icmp eq i32 %361, 0
  %363 = and i1 %362, %360
  br i1 %363, label %364, label %387

364:                                              ; preds = %356
  %365 = icmp sgt i32 %149, 0
  br i1 %365, label %366, label %382

366:                                              ; preds = %364, %372
  %367 = phi ptr [ %379, %372 ], [ %358, %364 ]
  %368 = phi i32 [ %380, %372 ], [ %149, %364 ]
  %369 = icmp ult ptr %367, %3
  br i1 %369, label %372, label %370

370:                                              ; preds = %366
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.2) #16
  %371 = load ptr, ptr %6, align 8, !tbaa !19
  br label %372

372:                                              ; preds = %370, %366
  %373 = phi ptr [ %371, %370 ], [ %367, %366 ]
  %374 = load i8, ptr %373, align 1, !tbaa !15
  %375 = zext i8 %374 to i64
  %376 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %375
  %377 = load i8, ptr %376, align 1, !tbaa !15
  %378 = zext i8 %377 to i64
  %379 = getelementptr inbounds i8, ptr %373, i64 %378
  store ptr %379, ptr %6, align 8, !tbaa !19
  %380 = add nsw i32 %368, -1
  %381 = icmp sgt i32 %368, 1
  br i1 %381, label %366, label %382, !llvm.loop !33

382:                                              ; preds = %372, %364
  %383 = phi ptr [ %358, %364 ], [ %379, %372 ]
  %384 = phi i32 [ %149, %364 ], [ 0, %372 ]
  %385 = icmp ugt ptr %383, %3
  br i1 %385, label %386, label %2279

386:                                              ; preds = %382
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.3) #16
  br label %2279

387:                                              ; preds = %356
  %388 = ptrtoint ptr %358 to i64
  %389 = sub i64 %58, %388
  %390 = sext i32 %149 to i64
  %391 = icmp slt i64 %389, %390
  br i1 %391, label %392, label %394

392:                                              ; preds = %387
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.2) #16
  %393 = load ptr, ptr %6, align 8, !tbaa !19
  br label %394

394:                                              ; preds = %392, %387
  %395 = phi ptr [ %393, %392 ], [ %358, %387 ]
  %396 = getelementptr inbounds i8, ptr %395, i64 %390
  store ptr %396, ptr %6, align 8, !tbaa !19
  br label %2279

397:                                              ; preds = %148
  %398 = call i32 @llvm.umax.i32(i32 %149, i32 1)
  %399 = and i8 %100, 1
  %400 = icmp eq i8 %399, 0
  %401 = load ptr, ptr %6, align 8, !tbaa !19
  br i1 %400, label %424, label %402

402:                                              ; preds = %397
  %403 = icmp ugt ptr %401, %2
  br i1 %403, label %404, label %419

404:                                              ; preds = %402, %404
  %405 = phi i32 [ %417, %404 ], [ %398, %402 ]
  %406 = phi ptr [ %416, %404 ], [ %2, %402 ]
  %407 = phi ptr [ %413, %404 ], [ %2, %402 ]
  %408 = load i8, ptr %407, align 1, !tbaa !15
  %409 = zext i8 %408 to i64
  %410 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %409
  %411 = load i8, ptr %410, align 1, !tbaa !15
  %412 = zext i8 %411 to i64
  %413 = getelementptr inbounds i8, ptr %407, i64 %412
  %414 = add nsw i32 %405, -1
  %415 = icmp eq i32 %414, 0
  %416 = select i1 %415, ptr %413, ptr %406
  %417 = select i1 %415, i32 %398, i32 %414
  %418 = icmp ult ptr %413, %401
  br i1 %418, label %404, label %419, !llvm.loop !34

419:                                              ; preds = %404, %402
  %420 = phi ptr [ %2, %402 ], [ %416, %404 ]
  %421 = icmp ugt ptr %420, %401
  br i1 %421, label %422, label %423

422:                                              ; preds = %419
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.4) #16
  br label %423

423:                                              ; preds = %422, %419
  store ptr %420, ptr %6, align 8, !tbaa !19
  br label %2279

424:                                              ; preds = %397
  %425 = ptrtoint ptr %401 to i64
  %426 = sub i64 %425, %44
  %427 = sext i32 %398 to i64
  %428 = srem i64 %426, %427
  %429 = trunc i64 %428 to i32
  br label %464

430:                                              ; preds = %148
  %431 = and i8 %100, 1
  %432 = icmp eq i8 %431, 0
  br i1 %432, label %464, label %433

433:                                              ; preds = %430
  %434 = icmp sgt i32 %149, 0
  br i1 %434, label %435, label %2279

435:                                              ; preds = %433
  %436 = load ptr, ptr %6, align 8, !tbaa !19
  br label %437

437:                                              ; preds = %435, %460
  %438 = phi ptr [ %461, %460 ], [ %436, %435 ]
  %439 = phi i32 [ %462, %460 ], [ %149, %435 ]
  %440 = icmp ugt ptr %438, %2
  br i1 %440, label %443, label %441

441:                                              ; preds = %437
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.5) #16
  %442 = load ptr, ptr %6, align 8, !tbaa !19
  br label %443

443:                                              ; preds = %441, %437
  %444 = phi ptr [ %442, %441 ], [ %438, %437 ]
  %445 = getelementptr inbounds i8, ptr %444, i64 -1
  store ptr %445, ptr %6, align 8, !tbaa !19
  %446 = load i8, ptr %445, align 1, !tbaa !15
  %447 = and i8 %446, -64
  %448 = icmp eq i8 %447, -128
  br i1 %448, label %449, label %460

449:                                              ; preds = %443, %454
  %450 = phi ptr [ %456, %454 ], [ %445, %443 ]
  %451 = icmp ugt ptr %450, %2
  br i1 %451, label %454, label %452

452:                                              ; preds = %449
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.5) #16
  %453 = load ptr, ptr %6, align 8, !tbaa !19
  br label %454

454:                                              ; preds = %452, %449
  %455 = phi ptr [ %453, %452 ], [ %450, %449 ]
  %456 = getelementptr inbounds i8, ptr %455, i64 -1
  store ptr %456, ptr %6, align 8, !tbaa !19
  %457 = load i8, ptr %456, align 1, !tbaa !15
  %458 = and i8 %457, -64
  %459 = icmp eq i8 %458, -128
  br i1 %459, label %449, label %460, !llvm.loop !35

460:                                              ; preds = %454, %443
  %461 = phi ptr [ %445, %443 ], [ %456, %454 ]
  %462 = add nsw i32 %439, -1
  %463 = icmp sgt i32 %439, 1
  br i1 %463, label %437, label %2279, !llvm.loop !36

464:                                              ; preds = %424, %430
  %465 = phi i32 [ %429, %424 ], [ %149, %430 ]
  %466 = sext i32 %465 to i64
  %467 = load ptr, ptr %6, align 8, !tbaa !19
  %468 = ptrtoint ptr %467 to i64
  %469 = sub i64 %468, %44
  %470 = icmp slt i64 %469, %466
  br i1 %470, label %471, label %473

471:                                              ; preds = %464
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.5) #16
  %472 = load ptr, ptr %6, align 8, !tbaa !19
  br label %473

473:                                              ; preds = %471, %464
  %474 = phi ptr [ %472, %471 ], [ %467, %464 ]
  %475 = sub nsw i64 0, %466
  %476 = getelementptr inbounds i8, ptr %474, i64 %475
  store ptr %476, ptr %6, align 8, !tbaa !19
  br label %2279

477:                                              ; preds = %148
  %478 = call i32 @llvm.umax.i32(i32 %149, i32 1)
  %479 = and i8 %100, 1
  %480 = icmp eq i8 %479, 0
  %481 = load ptr, ptr %6, align 8, !tbaa !19
  br i1 %480, label %486, label %482

482:                                              ; preds = %477
  %483 = call i64 @Perl_utf8_length(ptr noundef %2, ptr noundef %481) #16
  %484 = sext i32 %478 to i64
  %485 = urem i64 %483, %484
  br label %491

486:                                              ; preds = %477
  %487 = ptrtoint ptr %481 to i64
  %488 = sub i64 %487, %44
  %489 = sext i32 %478 to i64
  %490 = srem i64 %488, %489
  br label %491

491:                                              ; preds = %486, %482
  %492 = phi i64 [ %485, %482 ], [ %490, %486 ]
  %493 = trunc i64 %492 to i32
  %494 = icmp eq i32 %493, 0
  %495 = sub nsw i32 %478, %493
  br i1 %494, label %2279, label %496

496:                                              ; preds = %153, %491
  %497 = phi i8 [ %154, %153 ], [ %479, %491 ]
  %498 = phi i32 [ %149, %153 ], [ %495, %491 ]
  %499 = icmp eq i8 %497, 0
  br i1 %499, label %520, label %500

500:                                              ; preds = %496
  %501 = icmp sgt i32 %498, 0
  br i1 %501, label %502, label %2279

502:                                              ; preds = %500
  %503 = load ptr, ptr %6, align 8, !tbaa !19
  br label %504

504:                                              ; preds = %502, %510
  %505 = phi ptr [ %517, %510 ], [ %503, %502 ]
  %506 = phi i32 [ %518, %510 ], [ %498, %502 ]
  %507 = icmp ult ptr %505, %3
  br i1 %507, label %510, label %508

508:                                              ; preds = %504
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.6) #16
  %509 = load ptr, ptr %6, align 8, !tbaa !19
  br label %510

510:                                              ; preds = %508, %504
  %511 = phi ptr [ %509, %508 ], [ %505, %504 ]
  %512 = load i8, ptr %511, align 1, !tbaa !15
  %513 = zext i8 %512 to i64
  %514 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %513
  %515 = load i8, ptr %514, align 1, !tbaa !15
  %516 = zext i8 %515 to i64
  %517 = getelementptr inbounds i8, ptr %511, i64 %516
  store ptr %517, ptr %6, align 8, !tbaa !19
  %518 = add nsw i32 %506, -1
  %519 = icmp sgt i32 %506, 1
  br i1 %519, label %504, label %2279, !llvm.loop !37

520:                                              ; preds = %496
  %521 = sext i32 %498 to i64
  %522 = load ptr, ptr %6, align 8, !tbaa !19
  %523 = ptrtoint ptr %522 to i64
  %524 = sub i64 %58, %523
  %525 = icmp slt i64 %524, %521
  br i1 %525, label %526, label %528

526:                                              ; preds = %520
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.6) #16
  %527 = load ptr, ptr %6, align 8, !tbaa !19
  br label %528

528:                                              ; preds = %526, %520
  %529 = phi ptr [ %527, %526 ], [ %522, %520 ]
  %530 = getelementptr inbounds i8, ptr %529, i64 %521
  store ptr %530, ptr %6, align 8, !tbaa !19
  br label %2279

531:                                              ; preds = %148
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.7) #16
  br label %532

532:                                              ; preds = %148, %148, %148, %531
  %533 = icmp eq i32 %104, 0
  br i1 %533, label %542, label %534

534:                                              ; preds = %532
  %535 = sext i32 %149 to i64
  %536 = load ptr, ptr %6, align 8, !tbaa !19
  %537 = ptrtoint ptr %536 to i64
  %538 = sub i64 %58, %537
  %539 = icmp slt i64 %538, %535
  %540 = trunc i64 %538 to i32
  %541 = select i1 %539, i32 %540, i32 %149
  br label %1124

542:                                              ; preds = %532
  %543 = and i8 %100, 1
  %544 = icmp eq i8 %543, 0
  br i1 %544, label %574, label %545

545:                                              ; preds = %542
  %546 = load ptr, ptr %6, align 8, !tbaa !19
  %547 = icmp sgt i32 %149, 0
  br i1 %547, label %548, label %564

548:                                              ; preds = %545, %555
  %549 = phi ptr [ %562, %555 ], [ %546, %545 ]
  %550 = phi i32 [ %556, %555 ], [ %149, %545 ]
  %551 = icmp ult ptr %549, %3
  br i1 %551, label %555, label %552

552:                                              ; preds = %548
  %553 = icmp ugt ptr %549, %3
  br i1 %553, label %554, label %564

554:                                              ; preds = %552
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.4) #16
  br label %564

555:                                              ; preds = %548
  %556 = add nsw i32 %550, -1
  %557 = load i8, ptr %549, align 1, !tbaa !15
  %558 = zext i8 %557 to i64
  %559 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %558
  %560 = load i8, ptr %559, align 1, !tbaa !15
  %561 = zext i8 %560 to i64
  %562 = getelementptr inbounds i8, ptr %549, i64 %561
  %563 = icmp sgt i32 %550, 1
  br i1 %563, label %548, label %564, !llvm.loop !38

564:                                              ; preds = %555, %545, %552, %554
  %565 = phi ptr [ %549, %552 ], [ %549, %554 ], [ %546, %545 ], [ %562, %555 ]
  %566 = icmp ugt ptr %565, %3
  br i1 %566, label %567, label %568

567:                                              ; preds = %564
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.4) #16
  br label %568

568:                                              ; preds = %567, %564
  %569 = load ptr, ptr %6, align 8, !tbaa !19
  %570 = ptrtoint ptr %565 to i64
  %571 = ptrtoint ptr %569 to i64
  %572 = sub i64 %570, %571
  %573 = trunc i64 %572 to i32
  br label %582

574:                                              ; preds = %542
  %575 = sext i32 %149 to i64
  %576 = load ptr, ptr %6, align 8, !tbaa !19
  %577 = ptrtoint ptr %576 to i64
  %578 = sub i64 %58, %577
  %579 = icmp slt i64 %578, %575
  %580 = trunc i64 %578 to i32
  %581 = select i1 %579, i32 %580, i32 %149
  br label %582

582:                                              ; preds = %574, %568
  %583 = phi ptr [ %569, %568 ], [ %576, %574 ]
  %584 = phi i32 [ %573, %568 ], [ %581, %574 ]
  switch i32 %98, label %720 [
    i32 90, label %585
    i32 65, label %610
  ]

585:                                              ; preds = %582
  %586 = sext i32 %584 to i64
  %587 = getelementptr inbounds i8, ptr %583, i64 %586
  %588 = icmp sgt i32 %584, 0
  br i1 %588, label %589, label %596

589:                                              ; preds = %585, %593
  %590 = phi ptr [ %594, %593 ], [ %583, %585 ]
  %591 = load i8, ptr %590, align 1, !tbaa !15
  %592 = icmp eq i8 %591, 0
  br i1 %592, label %596, label %593

593:                                              ; preds = %589
  %594 = getelementptr inbounds i8, ptr %590, i64 1
  %595 = icmp ult ptr %594, %587
  br i1 %595, label %589, label %596, !llvm.loop !39

596:                                              ; preds = %593, %589, %585
  %597 = phi ptr [ %583, %585 ], [ %590, %589 ], [ %594, %593 ]
  %598 = ptrtoint ptr %597 to i64
  %599 = ptrtoint ptr %583 to i64
  %600 = sub i64 %598, %599
  %601 = call ptr @Perl_newSVpvn(ptr noundef %583, i64 noundef %600) #16
  br i1 %91, label %602, label %723

602:                                              ; preds = %596
  %603 = load ptr, ptr %6, align 8, !tbaa !19
  %604 = ptrtoint ptr %603 to i64
  %605 = icmp ne ptr %597, %3
  %606 = zext i1 %605 to i64
  %607 = add i64 %606, %598
  %608 = sub i64 %607, %604
  %609 = trunc i64 %608 to i32
  br label %723

610:                                              ; preds = %582
  br i1 %544, label %694, label %611

611:                                              ; preds = %610
  %612 = load i32, ptr %39, align 8, !tbaa !14
  %613 = and i32 %612, 64
  %614 = icmp eq i32 %613, 0
  br i1 %614, label %694, label %615

615:                                              ; preds = %611
  %616 = sext i32 %584 to i64
  %617 = getelementptr inbounds i8, ptr %583, i64 %616
  %618 = getelementptr inbounds i8, ptr %617, i64 -1
  %619 = icmp ult ptr %618, %583
  br i1 %619, label %713, label %620

620:                                              ; preds = %615, %680
  %621 = phi ptr [ %681, %680 ], [ %618, %615 ]
  %622 = phi ptr [ %621, %680 ], [ %617, %615 ]
  %623 = load i8, ptr %621, align 1, !tbaa !15
  %624 = icmp eq i8 %623, 0
  br i1 %624, label %680, label %625

625:                                              ; preds = %620
  %626 = zext i8 %623 to i32
  %627 = and i32 %626, 192
  %628 = icmp eq i32 %627, 128
  br i1 %628, label %680, label %629

629:                                              ; preds = %625
  %630 = icmp sgt i8 %623, -1
  br i1 %630, label %631, label %637

631:                                              ; preds = %629
  %632 = zext nneg i8 %623 to i64
  %633 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %632
  %634 = load i32, ptr %633, align 4, !tbaa !26
  %635 = and i32 %634, 1024
  %636 = icmp eq i32 %635, 0
  br i1 %636, label %683, label %680

637:                                              ; preds = %629
  %638 = and i32 %626, 254
  %639 = icmp eq i32 %638, 194
  br i1 %639, label %640, label %653

640:                                              ; preds = %637
  %641 = and i8 %623, 28
  %642 = icmp eq i8 %641, 0
  br i1 %642, label %643, label %683

643:                                              ; preds = %640
  %644 = shl i8 %623, 6
  %645 = load i8, ptr %622, align 1, !tbaa !15
  %646 = and i8 %645, 63
  %647 = or disjoint i8 %646, %644
  %648 = zext i8 %647 to i64
  %649 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %648
  %650 = load i32, ptr %649, align 4, !tbaa !26
  %651 = and i32 %650, 1024
  %652 = icmp eq i32 %651, 0
  br i1 %652, label %683, label %680

653:                                              ; preds = %637
  switch i8 %623, label %683 [
    i8 -31, label %654
    i8 -30, label %661
    i8 -29, label %673
  ]

654:                                              ; preds = %653
  %655 = load i8, ptr %622, align 1, !tbaa !15
  %656 = icmp eq i8 %655, -102
  br i1 %656, label %657, label %683

657:                                              ; preds = %654
  %658 = getelementptr inbounds i8, ptr %622, i64 1
  %659 = load i8, ptr %658, align 1, !tbaa !15
  %660 = icmp eq i8 %659, -128
  br i1 %660, label %680, label %683

661:                                              ; preds = %653
  %662 = load i8, ptr %622, align 1, !tbaa !15
  switch i8 %662, label %683 [
    i8 -128, label %663
    i8 -127, label %669
  ]

663:                                              ; preds = %661
  %664 = getelementptr inbounds i8, ptr %622, i64 1
  %665 = load i8, ptr %664, align 1, !tbaa !15
  %666 = freeze i8 %665
  %667 = icmp ult i8 %666, -117
  br i1 %667, label %680, label %668

668:                                              ; preds = %663
  switch i8 %666, label %683 [
    i8 -81, label %680
    i8 -87, label %680
    i8 -88, label %680
  ]

669:                                              ; preds = %661
  %670 = getelementptr inbounds i8, ptr %622, i64 1
  %671 = load i8, ptr %670, align 1, !tbaa !15
  %672 = icmp eq i8 %671, -97
  br i1 %672, label %680, label %683

673:                                              ; preds = %653
  %674 = load i8, ptr %622, align 1, !tbaa !15
  %675 = icmp eq i8 %674, -128
  br i1 %675, label %676, label %683

676:                                              ; preds = %673
  %677 = getelementptr inbounds i8, ptr %622, i64 1
  %678 = load i8, ptr %677, align 1, !tbaa !15
  %679 = icmp eq i8 %678, -128
  br i1 %679, label %680, label %683

680:                                              ; preds = %668, %668, %668, %663, %620, %625, %631, %643, %657, %669, %676
  %681 = getelementptr inbounds i8, ptr %621, i64 -1
  %682 = icmp ult ptr %681, %583
  br i1 %682, label %689, label %620, !llvm.loop !40

683:                                              ; preds = %668, %653, %661, %631, %643, %640, %657, %654, %669, %676, %673
  %684 = zext i8 %623 to i64
  %685 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %684
  %686 = load i8, ptr %685, align 1, !tbaa !15
  %687 = zext i8 %686 to i64
  %688 = getelementptr inbounds i8, ptr %621, i64 %687
  br label %689

689:                                              ; preds = %680, %683
  %690 = phi ptr [ %688, %683 ], [ %621, %680 ]
  %691 = icmp ugt ptr %690, %617
  br i1 %691, label %692, label %713

692:                                              ; preds = %689
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.4) #16
  %693 = load ptr, ptr %6, align 8, !tbaa !19
  br label %713

694:                                              ; preds = %611, %610
  %695 = sext i32 %584 to i64
  %696 = getelementptr inbounds i8, ptr %583, i64 %695
  %697 = getelementptr inbounds i8, ptr %696, i64 -1
  %698 = icmp ult ptr %697, %583
  br i1 %698, label %713, label %699

699:                                              ; preds = %694, %710
  %700 = phi ptr [ %711, %710 ], [ %697, %694 ]
  %701 = phi ptr [ %700, %710 ], [ %696, %694 ]
  %702 = load i8, ptr %700, align 1, !tbaa !15
  %703 = icmp eq i8 %702, 0
  br i1 %703, label %710, label %704

704:                                              ; preds = %699
  %705 = zext i8 %702 to i64
  %706 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %705
  %707 = load i32, ptr %706, align 4, !tbaa !26
  %708 = and i32 %707, 17408
  %709 = icmp eq i32 %708, 17408
  br i1 %709, label %710, label %713

710:                                              ; preds = %699, %704
  %711 = getelementptr inbounds i8, ptr %700, i64 -1
  %712 = icmp ult ptr %711, %583
  br i1 %712, label %713, label %699, !llvm.loop !41

713:                                              ; preds = %704, %710, %615, %694, %689, %692
  %714 = phi ptr [ %693, %692 ], [ %583, %689 ], [ %583, %694 ], [ %583, %615 ], [ %583, %710 ], [ %583, %704 ]
  %715 = phi ptr [ %690, %692 ], [ %690, %689 ], [ %696, %694 ], [ %617, %615 ], [ %701, %704 ], [ %700, %710 ]
  %716 = ptrtoint ptr %715 to i64
  %717 = ptrtoint ptr %714 to i64
  %718 = sub i64 %716, %717
  %719 = call ptr @Perl_newSVpvn(ptr noundef %714, i64 noundef %718) #16
  br label %723

720:                                              ; preds = %582
  %721 = sext i32 %584 to i64
  %722 = call ptr @Perl_newSVpvn(ptr noundef %583, i64 noundef %721) #16
  br label %723

723:                                              ; preds = %596, %602, %713, %720
  %724 = phi i32 [ %584, %713 ], [ %584, %720 ], [ %609, %602 ], [ %584, %596 ]
  %725 = phi ptr [ %719, %713 ], [ %722, %720 ], [ %601, %602 ], [ %601, %596 ]
  br i1 %544, label %735, label %726

726:                                              ; preds = %723
  %727 = getelementptr inbounds %struct.sv, ptr %725, i64 0, i32 2
  %728 = load i32, ptr %727, align 4, !tbaa !42
  %729 = or i32 %728, 536870912
  store i32 %729, ptr %727, align 4, !tbaa !42
  %730 = load i32, ptr %39, align 8, !tbaa !14
  %731 = and i32 %730, 64
  %732 = icmp eq i32 %731, 0
  br i1 %732, label %733, label %735

733:                                              ; preds = %726
  %734 = call zeroext i1 @Perl_sv_utf8_downgrade(ptr noundef nonnull %725, i1 noundef zeroext false) #16
  br label %735

735:                                              ; preds = %726, %733, %723
  %736 = load ptr, ptr @PL_stack_max, align 8, !tbaa !19
  %737 = ptrtoint ptr %736 to i64
  %738 = ptrtoint ptr %150 to i64
  %739 = sub i64 %737, %738
  %740 = icmp slt i64 %739, 8
  br i1 %740, label %741, label %743

741:                                              ; preds = %735
  %742 = call ptr @Perl_stack_grow(ptr noundef %150, ptr noundef %150, i64 noundef 1) #16
  br label %743

743:                                              ; preds = %735, %741
  %744 = phi ptr [ %742, %741 ], [ %150, %735 ]
  %745 = call ptr @Perl_sv_2mortal(ptr noundef %725) #16
  %746 = getelementptr inbounds ptr, ptr %744, i64 1
  store ptr %745, ptr %746, align 8, !tbaa !19
  %747 = load ptr, ptr %6, align 8, !tbaa !19
  %748 = sext i32 %724 to i64
  %749 = getelementptr inbounds i8, ptr %747, i64 %748
  store ptr %749, ptr %6, align 8, !tbaa !19
  br label %2279

750:                                              ; preds = %148, %148
  %751 = load ptr, ptr %6, align 8
  br i1 %91, label %752, label %755

752:                                              ; preds = %750
  %753 = ptrtoint ptr %751 to i64
  %754 = sub i64 %58, %753
  br label %761

755:                                              ; preds = %750
  %756 = sext i32 %149 to i64
  %757 = ptrtoint ptr %751 to i64
  %758 = sub i64 %58, %757
  %759 = shl nsw i64 %758, 3
  %760 = icmp slt i64 %759, %756
  br i1 %760, label %761, label %765

761:                                              ; preds = %752, %755
  %762 = phi i64 [ %754, %752 ], [ %758, %755 ]
  %763 = trunc i64 %762 to i32
  %764 = shl i32 %763, 3
  br label %765

765:                                              ; preds = %761, %755
  %766 = phi i32 [ %764, %761 ], [ %149, %755 ]
  %767 = icmp eq i32 %104, 0
  br i1 %767, label %843, label %768

768:                                              ; preds = %765
  %769 = and i8 %100, 1
  %770 = icmp eq i8 %769, 0
  %771 = icmp sgt i32 %766, 7
  br i1 %770, label %775, label %772

772:                                              ; preds = %768
  %773 = icmp ult ptr %751, %3
  %774 = select i1 %771, i1 %773, i1 false
  br i1 %774, label %776, label %803

775:                                              ; preds = %768
  br i1 %771, label %790, label %803

776:                                              ; preds = %772, %776
  %777 = phi i64 [ %784, %776 ], [ %103, %772 ]
  %778 = phi i32 [ %785, %776 ], [ %766, %772 ]
  %779 = call fastcc zeroext i8 @utf8_to_byte(ptr noundef nonnull %6, ptr noundef nonnull %3, i32 noundef %98) #15
  %780 = zext i8 %779 to i64
  %781 = getelementptr inbounds [256 x i8], ptr @PL_bitcount, i64 0, i64 %780
  %782 = load i8, ptr %781, align 1, !tbaa !15
  %783 = sext i8 %782 to i64
  %784 = add i64 %777, %783
  %785 = add nsw i32 %778, -8
  %786 = icmp ugt i32 %778, 15
  %787 = load ptr, ptr %6, align 8
  %788 = icmp ult ptr %787, %3
  %789 = select i1 %786, i1 %788, i1 false
  br i1 %789, label %776, label %803, !llvm.loop !44

790:                                              ; preds = %775, %790
  %791 = phi i64 [ %800, %790 ], [ %103, %775 ]
  %792 = phi i32 [ %801, %790 ], [ %766, %775 ]
  %793 = phi ptr [ %794, %790 ], [ %751, %775 ]
  %794 = getelementptr inbounds i8, ptr %793, i64 1
  store ptr %794, ptr %6, align 8, !tbaa !19
  %795 = load i8, ptr %793, align 1, !tbaa !15
  %796 = zext i8 %795 to i64
  %797 = getelementptr inbounds [256 x i8], ptr @PL_bitcount, i64 0, i64 %796
  %798 = load i8, ptr %797, align 1, !tbaa !15
  %799 = sext i8 %798 to i64
  %800 = add i64 %791, %799
  %801 = add nsw i32 %792, -8
  %802 = icmp ugt i32 %792, 15
  br i1 %802, label %790, label %803, !llvm.loop !45

803:                                              ; preds = %776, %790, %772, %775
  %804 = phi ptr [ %751, %775 ], [ %751, %772 ], [ %794, %790 ], [ %787, %776 ]
  %805 = phi i32 [ %766, %775 ], [ %766, %772 ], [ %801, %790 ], [ %785, %776 ]
  %806 = phi i64 [ %103, %775 ], [ %103, %772 ], [ %800, %790 ], [ %784, %776 ]
  %807 = icmp eq i32 %805, 0
  br i1 %807, label %2279, label %808

808:                                              ; preds = %803
  %809 = icmp ult ptr %804, %3
  br i1 %809, label %810, label %2279

810:                                              ; preds = %808
  br i1 %770, label %813, label %811

811:                                              ; preds = %810
  %812 = call fastcc zeroext i8 @utf8_to_byte(ptr noundef nonnull %6, ptr noundef %3, i32 noundef %98) #15
  br label %816

813:                                              ; preds = %810
  %814 = getelementptr inbounds i8, ptr %804, i64 1
  store ptr %814, ptr %6, align 8, !tbaa !19
  %815 = load i8, ptr %804, align 1, !tbaa !15
  br label %816

816:                                              ; preds = %813, %811
  %817 = phi i8 [ %812, %811 ], [ %815, %813 ]
  %818 = icmp eq i32 %98, 98
  %819 = add nsw i32 %805, -1
  %820 = icmp sgt i32 %805, 0
  br i1 %818, label %822, label %821

821:                                              ; preds = %816
  br i1 %820, label %833, label %2279

822:                                              ; preds = %816
  br i1 %820, label %823, label %2279

823:                                              ; preds = %822, %823
  %824 = phi i32 [ %831, %823 ], [ %819, %822 ]
  %825 = phi i64 [ %829, %823 ], [ %806, %822 ]
  %826 = phi i8 [ %830, %823 ], [ %817, %822 ]
  %827 = and i8 %826, 1
  %828 = zext nneg i8 %827 to i64
  %829 = add i64 %825, %828
  %830 = lshr i8 %826, 1
  %831 = add nsw i32 %824, -1
  %832 = icmp eq i32 %824, 0
  br i1 %832, label %2279, label %823, !llvm.loop !46

833:                                              ; preds = %821, %833
  %834 = phi i32 [ %841, %833 ], [ %819, %821 ]
  %835 = phi i64 [ %839, %833 ], [ %806, %821 ]
  %836 = phi i8 [ %840, %833 ], [ %817, %821 ]
  %837 = lshr i8 %836, 7
  %838 = zext nneg i8 %837 to i64
  %839 = add i64 %835, %838
  %840 = shl i8 %836, 1
  %841 = add nsw i32 %834, -1
  %842 = icmp eq i32 %834, 0
  br i1 %842, label %2279, label %833, !llvm.loop !47

843:                                              ; preds = %765
  %844 = call i32 @llvm.umax.i32(i32 %766, i32 1)
  %845 = sext i32 %844 to i64
  %846 = call ptr @Perl_newSV(i64 noundef %845) #16
  %847 = call ptr @Perl_sv_2mortal(ptr noundef %846) #16
  %848 = getelementptr inbounds %struct.sv, ptr %847, i64 0, i32 2
  %849 = load i32, ptr %848, align 4, !tbaa !42
  %850 = or i32 %849, 17408
  store i32 %850, ptr %848, align 4, !tbaa !42
  %851 = getelementptr inbounds %struct.sv, ptr %847, i64 0, i32 3
  %852 = load ptr, ptr %851, align 8, !tbaa !15
  %853 = icmp eq i32 %98, 98
  %854 = icmp sgt i32 %766, 0
  br i1 %853, label %859, label %855

855:                                              ; preds = %843
  br i1 %854, label %856, label %911

856:                                              ; preds = %855
  %857 = and i8 %100, 1
  %858 = icmp eq i8 %857, 0
  br label %887

859:                                              ; preds = %843
  br i1 %854, label %860, label %911

860:                                              ; preds = %859
  %861 = and i8 %100, 1
  %862 = icmp eq i8 %861, 0
  br label %863

863:                                              ; preds = %860, %880
  %864 = phi i32 [ 0, %860 ], [ %885, %880 ]
  %865 = phi i8 [ 0, %860 ], [ %881, %880 ]
  %866 = phi ptr [ %852, %860 ], [ %884, %880 ]
  %867 = and i32 %864, 7
  %868 = icmp eq i32 %867, 0
  br i1 %868, label %871, label %869

869:                                              ; preds = %863
  %870 = lshr i8 %865, 1
  br label %880

871:                                              ; preds = %863
  %872 = load ptr, ptr %6, align 8, !tbaa !19
  br i1 %862, label %877, label %873

873:                                              ; preds = %871
  %874 = icmp ult ptr %872, %3
  br i1 %874, label %875, label %911

875:                                              ; preds = %873
  %876 = call fastcc zeroext i8 @utf8_to_byte(ptr noundef nonnull %6, ptr noundef %3, i32 noundef 98) #15
  br label %880

877:                                              ; preds = %871
  %878 = getelementptr inbounds i8, ptr %872, i64 1
  store ptr %878, ptr %6, align 8, !tbaa !19
  %879 = load i8, ptr %872, align 1, !tbaa !15
  br label %880

880:                                              ; preds = %875, %877, %869
  %881 = phi i8 [ %870, %869 ], [ %876, %875 ], [ %879, %877 ]
  %882 = and i8 %881, 1
  %883 = or disjoint i8 %882, 48
  %884 = getelementptr inbounds i8, ptr %866, i64 1
  store i8 %883, ptr %866, align 1, !tbaa !15
  %885 = add nuw nsw i32 %864, 1
  %886 = icmp eq i32 %885, %766
  br i1 %886, label %911, label %863, !llvm.loop !48

887:                                              ; preds = %856, %904
  %888 = phi i32 [ 0, %856 ], [ %909, %904 ]
  %889 = phi i8 [ 0, %856 ], [ %905, %904 ]
  %890 = phi ptr [ %852, %856 ], [ %908, %904 ]
  %891 = and i32 %888, 7
  %892 = icmp eq i32 %891, 0
  br i1 %892, label %895, label %893

893:                                              ; preds = %887
  %894 = shl i8 %889, 1
  br label %904

895:                                              ; preds = %887
  %896 = load ptr, ptr %6, align 8, !tbaa !19
  br i1 %858, label %901, label %897

897:                                              ; preds = %895
  %898 = icmp ult ptr %896, %3
  br i1 %898, label %899, label %911

899:                                              ; preds = %897
  %900 = call fastcc zeroext i8 @utf8_to_byte(ptr noundef nonnull %6, ptr noundef %3, i32 noundef %98) #15
  br label %904

901:                                              ; preds = %895
  %902 = getelementptr inbounds i8, ptr %896, i64 1
  store ptr %902, ptr %6, align 8, !tbaa !19
  %903 = load i8, ptr %896, align 1, !tbaa !15
  br label %904

904:                                              ; preds = %899, %901, %893
  %905 = phi i8 [ %894, %893 ], [ %900, %899 ], [ %903, %901 ]
  %906 = icmp sgt i8 %905, -1
  %907 = select i1 %906, i8 48, i8 49
  %908 = getelementptr inbounds i8, ptr %890, i64 1
  store i8 %907, ptr %890, align 1, !tbaa !15
  %909 = add nuw nsw i32 %888, 1
  %910 = icmp eq i32 %909, %766
  br i1 %910, label %911, label %887, !llvm.loop !49

911:                                              ; preds = %897, %904, %873, %880, %855, %859
  %912 = phi ptr [ %852, %859 ], [ %852, %855 ], [ %866, %873 ], [ %884, %880 ], [ %890, %897 ], [ %908, %904 ]
  %913 = phi i32 [ 0, %859 ], [ 0, %855 ], [ %864, %873 ], [ %766, %880 ], [ %888, %897 ], [ %766, %904 ]
  store i8 0, ptr %912, align 1, !tbaa !15
  %914 = load ptr, ptr %851, align 8, !tbaa !15
  %915 = ptrtoint ptr %912 to i64
  %916 = ptrtoint ptr %914 to i64
  %917 = sub i64 %915, %916
  %918 = load ptr, ptr %847, align 8, !tbaa !50
  %919 = getelementptr inbounds %struct.xpv, ptr %918, i64 0, i32 2
  store i64 %917, ptr %919, align 8, !tbaa !51
  %920 = load ptr, ptr @PL_stack_max, align 8, !tbaa !19
  %921 = ptrtoint ptr %920 to i64
  %922 = ptrtoint ptr %150 to i64
  %923 = sub i64 %921, %922
  %924 = icmp slt i64 %923, 8
  br i1 %924, label %925, label %927

925:                                              ; preds = %911
  %926 = call ptr @Perl_stack_grow(ptr noundef %150, ptr noundef %150, i64 noundef 1) #16
  br label %927

927:                                              ; preds = %911, %925
  %928 = phi ptr [ %926, %925 ], [ %150, %911 ]
  %929 = getelementptr inbounds ptr, ptr %928, i64 1
  store ptr %847, ptr %929, align 8, !tbaa !19
  br label %2279

930:                                              ; preds = %148, %148
  %931 = load ptr, ptr %6, align 8, !tbaa !19
  br i1 %91, label %932, label %935

932:                                              ; preds = %930
  %933 = ptrtoint ptr %931 to i64
  %934 = sub i64 %58, %933
  br label %941

935:                                              ; preds = %930
  %936 = sext i32 %149 to i64
  %937 = ptrtoint ptr %931 to i64
  %938 = sub i64 %58, %937
  %939 = shl nsw i64 %938, 1
  %940 = icmp slt i64 %939, %936
  br i1 %940, label %941, label %945

941:                                              ; preds = %932, %935
  %942 = phi i64 [ %934, %932 ], [ %938, %935 ]
  %943 = trunc i64 %942 to i32
  %944 = shl i32 %943, 1
  br label %945

945:                                              ; preds = %941, %935
  %946 = phi i32 [ %944, %941 ], [ %149, %935 ]
  %947 = icmp eq i32 %104, 0
  br i1 %947, label %948, label %958

948:                                              ; preds = %945
  %949 = call i32 @llvm.umax.i32(i32 %946, i32 1)
  %950 = sext i32 %949 to i64
  %951 = call ptr @Perl_newSV(i64 noundef %950) #16
  %952 = call ptr @Perl_sv_2mortal(ptr noundef %951) #16
  %953 = getelementptr inbounds %struct.sv, ptr %952, i64 0, i32 2
  %954 = load i32, ptr %953, align 4, !tbaa !42
  %955 = or i32 %954, 17408
  store i32 %955, ptr %953, align 4, !tbaa !42
  %956 = getelementptr inbounds %struct.sv, ptr %952, i64 0, i32 3
  %957 = load ptr, ptr %956, align 8, !tbaa !15
  br label %958

958:                                              ; preds = %948, %945
  %959 = phi ptr [ null, %945 ], [ %957, %948 ]
  %960 = phi ptr [ %105, %945 ], [ %952, %948 ]
  %961 = icmp eq i32 %98, 104
  %962 = icmp sgt i32 %946, 0
  br i1 %961, label %967, label %963

963:                                              ; preds = %958
  br i1 %962, label %964, label %1029

964:                                              ; preds = %963
  %965 = and i8 %100, 1
  %966 = icmp eq i8 %965, 0
  br label %1000

967:                                              ; preds = %958
  br i1 %962, label %968, label %1029

968:                                              ; preds = %967
  %969 = and i8 %100, 1
  %970 = icmp eq i8 %969, 0
  br label %971

971:                                              ; preds = %968, %996
  %972 = phi i8 [ 0, %968 ], [ %989, %996 ]
  %973 = phi ptr [ %959, %968 ], [ %997, %996 ]
  %974 = phi i32 [ 0, %968 ], [ %998, %996 ]
  %975 = and i32 %974, 1
  %976 = icmp eq i32 %975, 0
  br i1 %976, label %979, label %977

977:                                              ; preds = %971
  %978 = lshr i8 %972, 4
  br label %988

979:                                              ; preds = %971
  %980 = load ptr, ptr %6, align 8, !tbaa !19
  br i1 %970, label %985, label %981

981:                                              ; preds = %979
  %982 = icmp ult ptr %980, %3
  br i1 %982, label %983, label %1029

983:                                              ; preds = %981
  %984 = call fastcc zeroext i8 @utf8_to_byte(ptr noundef nonnull %6, ptr noundef %3, i32 noundef 104) #15
  br label %988

985:                                              ; preds = %979
  %986 = getelementptr inbounds i8, ptr %980, i64 1
  store ptr %986, ptr %6, align 8, !tbaa !19
  %987 = load i8, ptr %980, align 1, !tbaa !15
  br label %988

988:                                              ; preds = %983, %985, %977
  %989 = phi i8 [ %978, %977 ], [ %984, %983 ], [ %987, %985 ]
  br i1 %947, label %990, label %996

990:                                              ; preds = %988
  %991 = and i8 %989, 15
  %992 = zext nneg i8 %991 to i64
  %993 = getelementptr inbounds [0 x i8], ptr @PL_hexdigit, i64 0, i64 %992
  %994 = load i8, ptr %993, align 1, !tbaa !15
  %995 = getelementptr inbounds i8, ptr %973, i64 1
  store i8 %994, ptr %973, align 1, !tbaa !15
  br label %996

996:                                              ; preds = %988, %990
  %997 = phi ptr [ %973, %988 ], [ %995, %990 ]
  %998 = add nuw nsw i32 %974, 1
  %999 = icmp eq i32 %998, %946
  br i1 %999, label %1029, label %971, !llvm.loop !53

1000:                                             ; preds = %964, %1025
  %1001 = phi i8 [ 0, %964 ], [ %1018, %1025 ]
  %1002 = phi ptr [ %959, %964 ], [ %1026, %1025 ]
  %1003 = phi i32 [ 0, %964 ], [ %1027, %1025 ]
  %1004 = and i32 %1003, 1
  %1005 = icmp eq i32 %1004, 0
  br i1 %1005, label %1008, label %1006

1006:                                             ; preds = %1000
  %1007 = shl i8 %1001, 4
  br label %1017

1008:                                             ; preds = %1000
  %1009 = load ptr, ptr %6, align 8, !tbaa !19
  br i1 %966, label %1014, label %1010

1010:                                             ; preds = %1008
  %1011 = icmp ult ptr %1009, %3
  br i1 %1011, label %1012, label %1029

1012:                                             ; preds = %1010
  %1013 = call fastcc zeroext i8 @utf8_to_byte(ptr noundef nonnull %6, ptr noundef %3, i32 noundef %98) #15
  br label %1017

1014:                                             ; preds = %1008
  %1015 = getelementptr inbounds i8, ptr %1009, i64 1
  store ptr %1015, ptr %6, align 8, !tbaa !19
  %1016 = load i8, ptr %1009, align 1, !tbaa !15
  br label %1017

1017:                                             ; preds = %1012, %1014, %1006
  %1018 = phi i8 [ %1007, %1006 ], [ %1013, %1012 ], [ %1016, %1014 ]
  br i1 %947, label %1019, label %1025

1019:                                             ; preds = %1017
  %1020 = lshr i8 %1018, 4
  %1021 = zext nneg i8 %1020 to i64
  %1022 = getelementptr inbounds [0 x i8], ptr @PL_hexdigit, i64 0, i64 %1021
  %1023 = load i8, ptr %1022, align 1, !tbaa !15
  %1024 = getelementptr inbounds i8, ptr %1002, i64 1
  store i8 %1023, ptr %1002, align 1, !tbaa !15
  br label %1025

1025:                                             ; preds = %1017, %1019
  %1026 = phi ptr [ %1002, %1017 ], [ %1024, %1019 ]
  %1027 = add nuw nsw i32 %1003, 1
  %1028 = icmp eq i32 %1027, %946
  br i1 %1028, label %1029, label %1000, !llvm.loop !54

1029:                                             ; preds = %1010, %1025, %981, %996, %963, %967
  %1030 = phi i32 [ 0, %967 ], [ 0, %963 ], [ %974, %981 ], [ %946, %996 ], [ %1003, %1010 ], [ %946, %1025 ]
  %1031 = phi ptr [ %959, %967 ], [ %959, %963 ], [ %973, %981 ], [ %997, %996 ], [ %1002, %1010 ], [ %1026, %1025 ]
  br i1 %947, label %1032, label %2287

1032:                                             ; preds = %1029
  store i8 0, ptr %1031, align 1, !tbaa !15
  %1033 = getelementptr inbounds %struct.sv, ptr %960, i64 0, i32 3
  %1034 = load ptr, ptr %1033, align 8, !tbaa !15
  %1035 = ptrtoint ptr %1031 to i64
  %1036 = ptrtoint ptr %1034 to i64
  %1037 = sub i64 %1035, %1036
  %1038 = load ptr, ptr %960, align 8, !tbaa !50
  %1039 = getelementptr inbounds %struct.xpv, ptr %1038, i64 0, i32 2
  store i64 %1037, ptr %1039, align 8, !tbaa !51
  %1040 = load ptr, ptr @PL_stack_max, align 8, !tbaa !19
  %1041 = ptrtoint ptr %1040 to i64
  %1042 = ptrtoint ptr %150 to i64
  %1043 = sub i64 %1041, %1042
  %1044 = icmp slt i64 %1043, 8
  br i1 %1044, label %1045, label %1047

1045:                                             ; preds = %1032
  %1046 = call ptr @Perl_stack_grow(ptr noundef %150, ptr noundef %150, i64 noundef 1) #16
  br label %1047

1047:                                             ; preds = %1032, %1045
  %1048 = phi ptr [ %1046, %1045 ], [ %150, %1032 ]
  %1049 = getelementptr inbounds ptr, ptr %1048, i64 1
  store ptr %960, ptr %1049, align 8, !tbaa !19
  br label %2354

1050:                                             ; preds = %148
  %1051 = icmp eq i32 %149, 0
  br i1 %1051, label %1052, label %1058

1052:                                             ; preds = %1050
  br i1 %101, label %1053, label %2279

1053:                                             ; preds = %1052
  %1054 = load i32, ptr %39, align 8, !tbaa !14
  %1055 = trunc i32 %1054 to i8
  %1056 = lshr i8 %1055, 3
  %1057 = and i8 %1056, 1
  br label %2279

1058:                                             ; preds = %1050, %148
  %1059 = add nsw i32 %149, -1
  %1060 = icmp sgt i32 %149, 0
  %1061 = load ptr, ptr %6, align 8
  %1062 = icmp ult ptr %1061, %3
  %1063 = select i1 %1060, i1 %1062, i1 false
  br i1 %1063, label %1064, label %2279

1064:                                             ; preds = %1058
  %1065 = and i8 %100, 1
  %1066 = icmp eq i8 %1065, 0
  %1067 = icmp ne i32 %98, 67
  %1068 = icmp eq i32 %104, 0
  %1069 = icmp sgt i32 %104, 64
  br label %1070

1070:                                             ; preds = %1064, %1115
  %1071 = phi ptr [ %1061, %1064 ], [ %1116, %1115 ]
  %1072 = phi i32 [ %1059, %1064 ], [ %1120, %1115 ]
  %1073 = phi ptr [ %150, %1064 ], [ %1119, %1115 ]
  %1074 = phi i64 [ %103, %1064 ], [ %1118, %1115 ]
  %1075 = phi double [ %102, %1064 ], [ %1117, %1115 ]
  br i1 %1066, label %1092, label %1076

1076:                                             ; preds = %1070
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #14
  %1077 = ptrtoint ptr %1071 to i64
  %1078 = sub i64 %58, %1077
  %1079 = call zeroext i1 @Perl_ckwarn(i32 noundef 44) #16
  %1080 = select i1 %1079, i32 0, i32 -8161
  %1081 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %1071, i64 noundef %1078, ptr noundef nonnull %8, i32 noundef %1080) #16
  %1082 = trunc i64 %1081 to i32
  %1083 = load i64, ptr %8, align 8
  %1084 = add i64 %1083, 1
  %1085 = icmp ult i64 %1084, 2
  br i1 %1085, label %1086, label %1088

1086:                                             ; preds = %1076
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.4) #16
  %1087 = load i64, ptr %8, align 8, !tbaa !5
  br label %1088

1088:                                             ; preds = %1076, %1086
  %1089 = phi i64 [ %1083, %1076 ], [ %1087, %1086 ]
  %1090 = load ptr, ptr %6, align 8, !tbaa !19
  %1091 = getelementptr inbounds i8, ptr %1090, i64 %1089
  store ptr %1091, ptr %6, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #14
  br label %1096

1092:                                             ; preds = %1070
  %1093 = getelementptr inbounds i8, ptr %1071, i64 1
  store ptr %1093, ptr %6, align 8, !tbaa !19
  %1094 = load i8, ptr %1071, align 1, !tbaa !15
  %1095 = zext i8 %1094 to i32
  br label %1096

1096:                                             ; preds = %1092, %1088
  %1097 = phi ptr [ %1091, %1088 ], [ %1093, %1092 ]
  %1098 = phi i32 [ %1082, %1088 ], [ %1095, %1092 ]
  %1099 = icmp sgt i32 %1098, 127
  %1100 = and i1 %1067, %1099
  %1101 = add nsw i32 %1098, -256
  %1102 = select i1 %1100, i32 %1101, i32 %1098
  br i1 %1068, label %1103, label %1108

1103:                                             ; preds = %1096
  %1104 = call ptr @Perl_sv_newmortal() #16
  %1105 = getelementptr inbounds ptr, ptr %1073, i64 1
  store ptr %1104, ptr %1105, align 8, !tbaa !19
  %1106 = sext i32 %1102 to i64
  call void @Perl_sv_setiv(ptr noundef %1104, i64 noundef %1106) #16
  %1107 = load ptr, ptr %6, align 8
  br label %1115

1108:                                             ; preds = %1096
  br i1 %1069, label %1109, label %1112

1109:                                             ; preds = %1108
  %1110 = sitofp i32 %1102 to double
  %1111 = fadd double %1075, %1110
  br label %1115

1112:                                             ; preds = %1108
  %1113 = sext i32 %1102 to i64
  %1114 = add i64 %1074, %1113
  br label %1115

1115:                                             ; preds = %1109, %1112, %1103
  %1116 = phi ptr [ %1097, %1109 ], [ %1097, %1112 ], [ %1107, %1103 ]
  %1117 = phi double [ %1111, %1109 ], [ %1075, %1112 ], [ %1075, %1103 ]
  %1118 = phi i64 [ %1074, %1109 ], [ %1114, %1112 ], [ %1074, %1103 ]
  %1119 = phi ptr [ %1073, %1109 ], [ %1073, %1112 ], [ %1105, %1103 ]
  %1120 = add nsw i32 %1072, -1
  %1121 = icmp sgt i32 %1072, 0
  %1122 = icmp ult ptr %1116, %3
  %1123 = select i1 %1121, i1 %1122, i1 false
  br i1 %1123, label %1070, label %2279, !llvm.loop !55

1124:                                             ; preds = %534, %148
  %1125 = phi i32 [ %149, %148 ], [ %541, %534 ]
  %1126 = and i8 %100, 1
  %1127 = icmp eq i8 %1126, 0
  br i1 %1127, label %1176, label %1128

1128:                                             ; preds = %1124
  %1129 = add nsw i32 %1125, -1
  %1130 = icmp sgt i32 %1125, 0
  %1131 = load ptr, ptr %6, align 8
  %1132 = icmp ult ptr %1131, %3
  %1133 = select i1 %1130, i1 %1132, i1 false
  br i1 %1133, label %1134, label %2279

1134:                                             ; preds = %1128
  %1135 = icmp eq i32 %104, 0
  %1136 = icmp sgt i32 %104, 64
  br label %1137

1137:                                             ; preds = %1134, %1167
  %1138 = phi ptr [ %1131, %1134 ], [ %1168, %1167 ]
  %1139 = phi i32 [ %1129, %1134 ], [ %1172, %1167 ]
  %1140 = phi ptr [ %150, %1134 ], [ %1171, %1167 ]
  %1141 = phi i64 [ %103, %1134 ], [ %1170, %1167 ]
  %1142 = phi double [ %102, %1134 ], [ %1169, %1167 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #14
  %1143 = ptrtoint ptr %1138 to i64
  %1144 = sub i64 %58, %1143
  %1145 = call zeroext i1 @Perl_ckwarn(i32 noundef 44) #16
  %1146 = select i1 %1145, i32 0, i32 -8161
  %1147 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %1138, i64 noundef %1144, ptr noundef nonnull %9, i32 noundef %1146) #16
  %1148 = load i64, ptr %9, align 8
  %1149 = add i64 %1148, 1
  %1150 = icmp ult i64 %1149, 2
  br i1 %1150, label %1151, label %1153

1151:                                             ; preds = %1137
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.4) #16
  %1152 = load i64, ptr %9, align 8, !tbaa !5
  br label %1153

1153:                                             ; preds = %1137, %1151
  %1154 = phi i64 [ %1148, %1137 ], [ %1152, %1151 ]
  %1155 = load ptr, ptr %6, align 8, !tbaa !19
  %1156 = getelementptr inbounds i8, ptr %1155, i64 %1154
  store ptr %1156, ptr %6, align 8, !tbaa !19
  br i1 %1135, label %1157, label %1161

1157:                                             ; preds = %1153
  %1158 = call ptr @Perl_sv_newmortal() #16
  %1159 = getelementptr inbounds ptr, ptr %1140, i64 1
  store ptr %1158, ptr %1159, align 8, !tbaa !19
  call void @Perl_sv_setuv(ptr noundef %1158, i64 noundef %1147) #16
  %1160 = load ptr, ptr %6, align 8
  br label %1167

1161:                                             ; preds = %1153
  br i1 %1136, label %1162, label %1165

1162:                                             ; preds = %1161
  %1163 = uitofp i64 %1147 to double
  %1164 = fadd double %1142, %1163
  br label %1167

1165:                                             ; preds = %1161
  %1166 = add i64 %1147, %1141
  br label %1167

1167:                                             ; preds = %1162, %1165, %1157
  %1168 = phi ptr [ %1156, %1162 ], [ %1156, %1165 ], [ %1160, %1157 ]
  %1169 = phi double [ %1164, %1162 ], [ %1142, %1165 ], [ %1142, %1157 ]
  %1170 = phi i64 [ %1141, %1162 ], [ %1166, %1165 ], [ %1141, %1157 ]
  %1171 = phi ptr [ %1140, %1162 ], [ %1140, %1165 ], [ %1159, %1157 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #14
  %1172 = add nsw i32 %1139, -1
  %1173 = icmp sgt i32 %1139, 0
  %1174 = icmp ult ptr %1168, %3
  %1175 = select i1 %1173, i1 %1174, i1 false
  br i1 %1175, label %1137, label %2279, !llvm.loop !56

1176:                                             ; preds = %1124
  %1177 = icmp eq i32 %104, 0
  br i1 %1177, label %1178, label %1192

1178:                                             ; preds = %1176
  %1179 = add nsw i32 %1125, -1
  %1180 = icmp sgt i32 %1125, 0
  br i1 %1180, label %1181, label %2354

1181:                                             ; preds = %1178, %1181
  %1182 = phi i32 [ %1190, %1181 ], [ %1179, %1178 ]
  %1183 = phi ptr [ %1188, %1181 ], [ %150, %1178 ]
  %1184 = load ptr, ptr %6, align 8, !tbaa !19
  %1185 = getelementptr inbounds i8, ptr %1184, i64 1
  store ptr %1185, ptr %6, align 8, !tbaa !19
  %1186 = load i8, ptr %1184, align 1, !tbaa !15
  %1187 = call ptr @Perl_sv_newmortal() #16
  %1188 = getelementptr inbounds ptr, ptr %1183, i64 1
  store ptr %1187, ptr %1188, align 8, !tbaa !19
  %1189 = zext i8 %1186 to i64
  call void @Perl_sv_setuv(ptr noundef %1187, i64 noundef %1189) #16
  %1190 = add nsw i32 %1182, -1
  %1191 = icmp eq i32 %1182, 0
  br i1 %1191, label %2279, label %1181, !llvm.loop !57

1192:                                             ; preds = %1176
  %1193 = icmp sgt i32 %104, 64
  %1194 = add nsw i32 %1125, -1
  %1195 = icmp sgt i32 %1125, 0
  br i1 %1193, label %1199, label %1196

1196:                                             ; preds = %1192
  br i1 %1195, label %1197, label %2279

1197:                                             ; preds = %1196
  %1198 = load ptr, ptr %6, align 8, !tbaa !19
  br label %1212

1199:                                             ; preds = %1192
  br i1 %1195, label %1200, label %2287

1200:                                             ; preds = %1199
  %1201 = load ptr, ptr %6, align 8, !tbaa !19
  br label %1202

1202:                                             ; preds = %1200, %1202
  %1203 = phi i32 [ %1210, %1202 ], [ %1194, %1200 ]
  %1204 = phi double [ %1209, %1202 ], [ %102, %1200 ]
  %1205 = phi ptr [ %1206, %1202 ], [ %1201, %1200 ]
  %1206 = getelementptr inbounds i8, ptr %1205, i64 1
  store ptr %1206, ptr %6, align 8, !tbaa !19
  %1207 = load i8, ptr %1205, align 1, !tbaa !15
  %1208 = uitofp i8 %1207 to double
  %1209 = fadd double %1204, %1208
  %1210 = add nsw i32 %1203, -1
  %1211 = icmp eq i32 %1203, 0
  br i1 %1211, label %2279, label %1202, !llvm.loop !58

1212:                                             ; preds = %1197, %1212
  %1213 = phi i32 [ %1220, %1212 ], [ %1194, %1197 ]
  %1214 = phi i64 [ %1219, %1212 ], [ %103, %1197 ]
  %1215 = phi ptr [ %1216, %1212 ], [ %1198, %1197 ]
  %1216 = getelementptr inbounds i8, ptr %1215, i64 1
  store ptr %1216, ptr %6, align 8, !tbaa !19
  %1217 = load i8, ptr %1215, align 1, !tbaa !15
  %1218 = zext i8 %1217 to i64
  %1219 = add i64 %1214, %1218
  %1220 = add nsw i32 %1213, -1
  %1221 = icmp eq i32 %1213, 0
  br i1 %1221, label %2279, label %1212, !llvm.loop !59

1222:                                             ; preds = %148
  %1223 = icmp eq i32 %149, 0
  br i1 %1223, label %1224, label %1231

1224:                                             ; preds = %1222
  %1225 = and i1 %96, %101
  br i1 %1225, label %1226, label %2279

1226:                                             ; preds = %1224
  %1227 = load i32, ptr %39, align 8, !tbaa !14
  %1228 = and i32 %1227, 8
  %1229 = icmp eq i32 %1228, 0
  br i1 %1229, label %1230, label %2279

1230:                                             ; preds = %1226
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.8) #16
  br label %2279

1231:                                             ; preds = %1222
  %1232 = sext i32 %149 to i64
  %1233 = load ptr, ptr %6, align 8, !tbaa !19
  %1234 = ptrtoint ptr %1233 to i64
  %1235 = sub i64 %58, %1234
  %1236 = icmp slt i64 %1235, %1232
  %1237 = trunc i64 %1235 to i32
  %1238 = select i1 %1236, i32 %1237, i32 %149
  %1239 = icmp eq i32 %104, 0
  br i1 %1239, label %1240, label %1261

1240:                                             ; preds = %1231
  %1241 = icmp eq i32 %1238, 0
  %1242 = select i1 %42, i32 %1238, i32 1
  %1243 = select i1 %1241, i32 0, i32 %1242
  %1244 = load ptr, ptr @PL_stack_max, align 8, !tbaa !19
  %1245 = ptrtoint ptr %1244 to i64
  %1246 = ptrtoint ptr %150 to i64
  %1247 = sub i64 %1245, %1246
  %1248 = ashr exact i64 %1247, 3
  %1249 = sext i32 %1243 to i64
  %1250 = icmp slt i64 %1248, %1249
  br i1 %1250, label %1251, label %1253

1251:                                             ; preds = %1240
  %1252 = call ptr @Perl_stack_grow(ptr noundef %150, ptr noundef %150, i64 noundef %1249) #16
  br label %1253

1253:                                             ; preds = %1251, %1240
  %1254 = phi ptr [ %1252, %1251 ], [ %150, %1240 ]
  %1255 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !5
  %1256 = add nsw i64 %1255, %1249
  %1257 = load i64, ptr @PL_tmps_max, align 8, !tbaa !5
  %1258 = icmp slt i64 %1256, %1257
  br i1 %1258, label %1261, label %1259

1259:                                             ; preds = %1253
  %1260 = call i64 @Perl_tmps_grow_p(i64 noundef %1256) #16
  br label %1261

1261:                                             ; preds = %1259, %1253, %1231
  %1262 = phi i32 [ %1238, %1231 ], [ %1243, %1253 ], [ %1243, %1259 ]
  %1263 = phi ptr [ %150, %1231 ], [ %1254, %1253 ], [ %1254, %1259 ]
  %1264 = add nsw i32 %1262, -1
  %1265 = icmp sgt i32 %1262, 0
  %1266 = load ptr, ptr %6, align 8
  %1267 = icmp ult ptr %1266, %3
  %1268 = select i1 %1265, i1 %1267, i1 false
  br i1 %1268, label %1269, label %2279

1269:                                             ; preds = %1261
  %1270 = and i8 %100, 1
  %1271 = icmp eq i8 %1270, 0
  %1272 = icmp sgt i32 %104, 64
  br label %1273

1273:                                             ; preds = %1269, %1326
  %1274 = phi ptr [ %1266, %1269 ], [ %1327, %1326 ]
  %1275 = phi i32 [ %1264, %1269 ], [ %1331, %1326 ]
  %1276 = phi ptr [ %1263, %1269 ], [ %1330, %1326 ]
  %1277 = phi i64 [ %103, %1269 ], [ %1329, %1326 ]
  %1278 = phi double [ %102, %1269 ], [ %1328, %1326 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #14
  br i1 %1271, label %1297, label %1279

1279:                                             ; preds = %1273
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %11) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #14
  store ptr %1274, ptr %12, align 8, !tbaa !19
  %1280 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %12, ptr noundef nonnull %3, ptr noundef nonnull %11, i32 noundef 1, i32 noundef 85) #15
  br i1 %1280, label %1281, label %1289

1281:                                             ; preds = %1279
  %1282 = load i8, ptr %11, align 1, !tbaa !15
  %1283 = zext i8 %1282 to i64
  %1284 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %1283
  %1285 = load i8, ptr %1284, align 1, !tbaa !15
  %1286 = zext i8 %1285 to i32
  %1287 = add nsw i32 %1286, -1
  %1288 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %12, ptr noundef nonnull %3, ptr noundef nonnull %63, i32 noundef %1287, i32 noundef 85) #15
  br i1 %1288, label %1290, label %1289

1289:                                             ; preds = %1281, %1279
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #14
  br label %2279

1290:                                             ; preds = %1281
  %1291 = zext i8 %1285 to i64
  %1292 = call zeroext i1 @Perl_ckwarn(i32 noundef 44) #16
  %1293 = xor i1 %1292, true
  %1294 = zext i1 %1293 to i32
  %1295 = call i64 @Perl_utf8n_to_uvchr(ptr noundef nonnull %11, i64 noundef %1291, ptr noundef nonnull %10, i32 noundef %1294) #16
  %1296 = load ptr, ptr %12, align 8, !tbaa !19
  store ptr %1296, ptr %6, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %11) #14
  br label %1313

1297:                                             ; preds = %1273
  %1298 = ptrtoint ptr %1274 to i64
  %1299 = sub i64 %58, %1298
  %1300 = call zeroext i1 @Perl_ckwarn(i32 noundef 44) #16
  %1301 = xor i1 %1300, true
  %1302 = zext i1 %1301 to i32
  %1303 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %1274, i64 noundef %1299, ptr noundef nonnull %10, i32 noundef %1302) #16
  %1304 = load i64, ptr %10, align 8
  %1305 = add i64 %1304, 1
  %1306 = icmp ult i64 %1305, 2
  br i1 %1306, label %1307, label %1309

1307:                                             ; preds = %1297
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.4) #16
  %1308 = load i64, ptr %10, align 8, !tbaa !5
  br label %1309

1309:                                             ; preds = %1297, %1307
  %1310 = phi i64 [ %1304, %1297 ], [ %1308, %1307 ]
  %1311 = load ptr, ptr %6, align 8, !tbaa !19
  %1312 = getelementptr inbounds i8, ptr %1311, i64 %1310
  store ptr %1312, ptr %6, align 8, !tbaa !19
  br label %1313

1313:                                             ; preds = %1290, %1309
  %1314 = phi ptr [ %1296, %1290 ], [ %1312, %1309 ]
  %1315 = phi i64 [ %1295, %1290 ], [ %1303, %1309 ]
  br i1 %1239, label %1316, label %1320

1316:                                             ; preds = %1313
  %1317 = call ptr @Perl_sv_newmortal() #16
  %1318 = getelementptr inbounds ptr, ptr %1276, i64 1
  store ptr %1317, ptr %1318, align 8, !tbaa !19
  call void @Perl_sv_setuv(ptr noundef %1317, i64 noundef %1315) #16
  %1319 = load ptr, ptr %6, align 8
  br label %1326

1320:                                             ; preds = %1313
  br i1 %1272, label %1321, label %1324

1321:                                             ; preds = %1320
  %1322 = uitofp i64 %1315 to double
  %1323 = fadd double %1278, %1322
  br label %1326

1324:                                             ; preds = %1320
  %1325 = add i64 %1315, %1277
  br label %1326

1326:                                             ; preds = %1316, %1324, %1321
  %1327 = phi ptr [ %1314, %1321 ], [ %1314, %1324 ], [ %1319, %1316 ]
  %1328 = phi double [ %1323, %1321 ], [ %1278, %1324 ], [ %1278, %1316 ]
  %1329 = phi i64 [ %1277, %1321 ], [ %1325, %1324 ], [ %1277, %1316 ]
  %1330 = phi ptr [ %1276, %1321 ], [ %1276, %1324 ], [ %1318, %1316 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #14
  %1331 = add nsw i32 %1275, -1
  %1332 = icmp sgt i32 %1275, 0
  %1333 = icmp ult ptr %1327, %3
  %1334 = select i1 %1332, i1 %1333, i1 false
  br i1 %1334, label %1273, label %2279

1335:                                             ; preds = %148, %148
  %1336 = add nsw i32 %149, -1
  %1337 = icmp sgt i32 %149, 0
  br i1 %1337, label %1338, label %2279

1338:                                             ; preds = %1335
  %1339 = and i8 %100, 1
  %1340 = icmp eq i8 %1339, 0
  %1341 = icmp eq i32 %104, 0
  %1342 = icmp sgt i32 %104, 64
  br label %1343

1343:                                             ; preds = %1338, %1373
  %1344 = phi i32 [ %1336, %1338 ], [ %1377, %1373 ]
  %1345 = phi ptr [ %150, %1338 ], [ %1376, %1373 ]
  %1346 = phi i64 [ %103, %1338 ], [ %1375, %1373 ]
  %1347 = phi double [ %102, %1338 ], [ %1374, %1373 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #14
  br i1 %1340, label %1350, label %1348

1348:                                             ; preds = %1343
  %1349 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %6, ptr noundef %3, ptr noundef nonnull %13, i32 noundef 2, i32 noundef %98) #15
  br label %1359

1350:                                             ; preds = %1343
  %1351 = load ptr, ptr %6, align 8, !tbaa !19
  br i1 %152, label %1352, label %1354

1352:                                             ; preds = %1350
  call fastcc void @S_reverse_copy(ptr noundef %1351, ptr noundef nonnull %13, i64 noundef 2) #15
  %1353 = load ptr, ptr %6, align 8, !tbaa !19
  br label %1356

1354:                                             ; preds = %1350
  %1355 = load i16, ptr %1351, align 1
  store i16 %1355, ptr %13, align 2
  br label %1356

1356:                                             ; preds = %1354, %1352
  %1357 = phi ptr [ %1351, %1354 ], [ %1353, %1352 ]
  %1358 = getelementptr inbounds i8, ptr %1357, i64 2
  store ptr %1358, ptr %6, align 8, !tbaa !19
  br label %1359

1359:                                             ; preds = %1348, %1356
  br i1 %1341, label %1360, label %1365

1360:                                             ; preds = %1359
  %1361 = call ptr @Perl_sv_newmortal() #16
  %1362 = getelementptr inbounds ptr, ptr %1345, i64 1
  store ptr %1361, ptr %1362, align 8, !tbaa !19
  %1363 = load i16, ptr %13, align 2, !tbaa !60
  %1364 = sext i16 %1363 to i64
  call void @Perl_sv_setiv(ptr noundef %1361, i64 noundef %1364) #16
  br label %1373

1365:                                             ; preds = %1359
  %1366 = load i16, ptr %13, align 2, !tbaa !60
  br i1 %1342, label %1367, label %1370

1367:                                             ; preds = %1365
  %1368 = sitofp i16 %1366 to double
  %1369 = fadd double %1347, %1368
  br label %1373

1370:                                             ; preds = %1365
  %1371 = sext i16 %1366 to i64
  %1372 = add i64 %1346, %1371
  br label %1373

1373:                                             ; preds = %1367, %1370, %1360
  %1374 = phi double [ %1369, %1367 ], [ %1347, %1370 ], [ %1347, %1360 ]
  %1375 = phi i64 [ %1346, %1367 ], [ %1372, %1370 ], [ %1346, %1360 ]
  %1376 = phi ptr [ %1345, %1367 ], [ %1345, %1370 ], [ %1362, %1360 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #14
  %1377 = add nsw i32 %1344, -1
  %1378 = icmp sgt i32 %1344, 0
  br i1 %1378, label %1343, label %2279, !llvm.loop !62

1379:                                             ; preds = %148, %148, %148, %148
  %1380 = add nsw i32 %149, -1
  %1381 = icmp sgt i32 %149, 0
  br i1 %1381, label %1382, label %2279

1382:                                             ; preds = %1379
  %1383 = and i8 %100, 1
  %1384 = icmp eq i8 %1383, 0
  %1385 = icmp eq i32 %98, 110
  %1386 = icmp eq i32 %104, 0
  %1387 = icmp sgt i32 %104, 64
  br label %1388

1388:                                             ; preds = %1382, %1422
  %1389 = phi i32 [ %1380, %1382 ], [ %1426, %1422 ]
  %1390 = phi ptr [ %150, %1382 ], [ %1425, %1422 ]
  %1391 = phi i64 [ %103, %1382 ], [ %1424, %1422 ]
  %1392 = phi double [ %102, %1382 ], [ %1423, %1422 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #14
  br i1 %1384, label %1395, label %1393

1393:                                             ; preds = %1388
  %1394 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %6, ptr noundef %3, ptr noundef nonnull %14, i32 noundef 2, i32 noundef %98) #15
  br label %1404

1395:                                             ; preds = %1388
  %1396 = load ptr, ptr %6, align 8, !tbaa !19
  br i1 %152, label %1397, label %1399

1397:                                             ; preds = %1395
  call fastcc void @S_reverse_copy(ptr noundef %1396, ptr noundef nonnull %14, i64 noundef 2) #15
  %1398 = load ptr, ptr %6, align 8, !tbaa !19
  br label %1401

1399:                                             ; preds = %1395
  %1400 = load i16, ptr %1396, align 1
  store i16 %1400, ptr %14, align 2
  br label %1401

1401:                                             ; preds = %1399, %1397
  %1402 = phi ptr [ %1396, %1399 ], [ %1398, %1397 ]
  %1403 = getelementptr inbounds i8, ptr %1402, i64 2
  store ptr %1403, ptr %6, align 8, !tbaa !19
  br label %1404

1404:                                             ; preds = %1393, %1401
  br i1 %1385, label %1405, label %1408

1405:                                             ; preds = %1404
  %1406 = load i16, ptr %14, align 2, !tbaa !60
  %1407 = call fastcc zeroext i16 @__bswap_16(i16 noundef zeroext %1406) #15
  store i16 %1407, ptr %14, align 2, !tbaa !60
  br label %1408

1408:                                             ; preds = %1405, %1404
  br i1 %1386, label %1409, label %1414

1409:                                             ; preds = %1408
  %1410 = call ptr @Perl_sv_newmortal() #16
  %1411 = getelementptr inbounds ptr, ptr %1390, i64 1
  store ptr %1410, ptr %1411, align 8, !tbaa !19
  %1412 = load i16, ptr %14, align 2, !tbaa !60
  %1413 = zext i16 %1412 to i64
  call void @Perl_sv_setuv(ptr noundef %1410, i64 noundef %1413) #16
  br label %1422

1414:                                             ; preds = %1408
  %1415 = load i16, ptr %14, align 2, !tbaa !60
  br i1 %1387, label %1416, label %1419

1416:                                             ; preds = %1414
  %1417 = uitofp i16 %1415 to double
  %1418 = fadd double %1392, %1417
  br label %1422

1419:                                             ; preds = %1414
  %1420 = zext i16 %1415 to i64
  %1421 = add i64 %1391, %1420
  br label %1422

1422:                                             ; preds = %1416, %1419, %1409
  %1423 = phi double [ %1418, %1416 ], [ %1392, %1419 ], [ %1392, %1409 ]
  %1424 = phi i64 [ %1391, %1416 ], [ %1421, %1419 ], [ %1391, %1409 ]
  %1425 = phi ptr [ %1390, %1416 ], [ %1390, %1419 ], [ %1411, %1409 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #14
  %1426 = add nsw i32 %1389, -1
  %1427 = icmp sgt i32 %1389, 0
  br i1 %1427, label %1388, label %2279, !llvm.loop !63

1428:                                             ; preds = %148, %148
  %1429 = add nsw i32 %149, -1
  %1430 = icmp sgt i32 %149, 0
  br i1 %1430, label %1431, label %2279

1431:                                             ; preds = %1428
  %1432 = and i8 %100, 1
  %1433 = icmp eq i8 %1432, 0
  %1434 = icmp eq i32 %98, 366
  %1435 = icmp eq i32 %104, 0
  %1436 = icmp sgt i32 %104, 64
  br label %1437

1437:                                             ; preds = %1431, %1471
  %1438 = phi i32 [ %1429, %1431 ], [ %1475, %1471 ]
  %1439 = phi ptr [ %150, %1431 ], [ %1474, %1471 ]
  %1440 = phi i64 [ %103, %1431 ], [ %1473, %1471 ]
  %1441 = phi double [ %102, %1431 ], [ %1472, %1471 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %15) #14
  br i1 %1433, label %1444, label %1442

1442:                                             ; preds = %1437
  %1443 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %6, ptr noundef %3, ptr noundef nonnull %15, i32 noundef 2, i32 noundef %98) #15
  br label %1453

1444:                                             ; preds = %1437
  %1445 = load ptr, ptr %6, align 8, !tbaa !19
  br i1 %152, label %1446, label %1448

1446:                                             ; preds = %1444
  call fastcc void @S_reverse_copy(ptr noundef %1445, ptr noundef nonnull %15, i64 noundef 2) #15
  %1447 = load ptr, ptr %6, align 8, !tbaa !19
  br label %1450

1448:                                             ; preds = %1444
  %1449 = load i16, ptr %1445, align 1
  store i16 %1449, ptr %15, align 2
  br label %1450

1450:                                             ; preds = %1448, %1446
  %1451 = phi ptr [ %1445, %1448 ], [ %1447, %1446 ]
  %1452 = getelementptr inbounds i8, ptr %1451, i64 2
  store ptr %1452, ptr %6, align 8, !tbaa !19
  br label %1453

1453:                                             ; preds = %1442, %1450
  br i1 %1434, label %1454, label %1457

1454:                                             ; preds = %1453
  %1455 = load i16, ptr %15, align 2, !tbaa !60
  %1456 = call fastcc zeroext i16 @__bswap_16(i16 noundef zeroext %1455) #15
  store i16 %1456, ptr %15, align 2, !tbaa !60
  br label %1457

1457:                                             ; preds = %1454, %1453
  br i1 %1435, label %1458, label %1463

1458:                                             ; preds = %1457
  %1459 = call ptr @Perl_sv_newmortal() #16
  %1460 = getelementptr inbounds ptr, ptr %1439, i64 1
  store ptr %1459, ptr %1460, align 8, !tbaa !19
  %1461 = load i16, ptr %15, align 2, !tbaa !60
  %1462 = sext i16 %1461 to i64
  call void @Perl_sv_setiv(ptr noundef %1459, i64 noundef %1462) #16
  br label %1471

1463:                                             ; preds = %1457
  %1464 = load i16, ptr %15, align 2, !tbaa !60
  br i1 %1436, label %1465, label %1468

1465:                                             ; preds = %1463
  %1466 = sitofp i16 %1464 to double
  %1467 = fadd double %1441, %1466
  br label %1471

1468:                                             ; preds = %1463
  %1469 = sext i16 %1464 to i64
  %1470 = add i64 %1440, %1469
  br label %1471

1471:                                             ; preds = %1465, %1468, %1458
  %1472 = phi double [ %1467, %1465 ], [ %1441, %1468 ], [ %1441, %1458 ]
  %1473 = phi i64 [ %1440, %1465 ], [ %1470, %1468 ], [ %1440, %1458 ]
  %1474 = phi ptr [ %1439, %1465 ], [ %1439, %1468 ], [ %1460, %1458 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #14
  %1475 = add nsw i32 %1438, -1
  %1476 = icmp sgt i32 %1438, 0
  br i1 %1476, label %1437, label %2279, !llvm.loop !64

1477:                                             ; preds = %148, %148
  %1478 = add nsw i32 %149, -1
  %1479 = icmp sgt i32 %149, 0
  br i1 %1479, label %1480, label %2279

1480:                                             ; preds = %1477
  %1481 = and i8 %100, 1
  %1482 = icmp eq i8 %1481, 0
  %1483 = icmp eq i32 %104, 0
  %1484 = icmp sgt i32 %104, 64
  br label %1485

1485:                                             ; preds = %1480, %1515
  %1486 = phi i32 [ %1478, %1480 ], [ %1519, %1515 ]
  %1487 = phi ptr [ %150, %1480 ], [ %1518, %1515 ]
  %1488 = phi i64 [ %103, %1480 ], [ %1517, %1515 ]
  %1489 = phi double [ %102, %1480 ], [ %1516, %1515 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #14
  br i1 %1482, label %1492, label %1490

1490:                                             ; preds = %1485
  %1491 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %6, ptr noundef %3, ptr noundef nonnull %16, i32 noundef 4, i32 noundef %98) #15
  br label %1501

1492:                                             ; preds = %1485
  %1493 = load ptr, ptr %6, align 8, !tbaa !19
  br i1 %152, label %1494, label %1496

1494:                                             ; preds = %1492
  call fastcc void @S_reverse_copy(ptr noundef %1493, ptr noundef nonnull %16, i64 noundef 4) #15
  %1495 = load ptr, ptr %6, align 8, !tbaa !19
  br label %1498

1496:                                             ; preds = %1492
  %1497 = load i32, ptr %1493, align 1
  store i32 %1497, ptr %16, align 4
  br label %1498

1498:                                             ; preds = %1496, %1494
  %1499 = phi ptr [ %1493, %1496 ], [ %1495, %1494 ]
  %1500 = getelementptr inbounds i8, ptr %1499, i64 4
  store ptr %1500, ptr %6, align 8, !tbaa !19
  br label %1501

1501:                                             ; preds = %1490, %1498
  br i1 %1483, label %1502, label %1507

1502:                                             ; preds = %1501
  %1503 = call ptr @Perl_sv_newmortal() #16
  %1504 = getelementptr inbounds ptr, ptr %1487, i64 1
  store ptr %1503, ptr %1504, align 8, !tbaa !19
  %1505 = load i32, ptr %16, align 4, !tbaa !26
  %1506 = sext i32 %1505 to i64
  call void @Perl_sv_setiv(ptr noundef %1503, i64 noundef %1506) #16
  br label %1515

1507:                                             ; preds = %1501
  %1508 = load i32, ptr %16, align 4, !tbaa !26
  br i1 %1484, label %1509, label %1512

1509:                                             ; preds = %1507
  %1510 = sitofp i32 %1508 to double
  %1511 = fadd double %1489, %1510
  br label %1515

1512:                                             ; preds = %1507
  %1513 = sext i32 %1508 to i64
  %1514 = add i64 %1488, %1513
  br label %1515

1515:                                             ; preds = %1509, %1512, %1502
  %1516 = phi double [ %1511, %1509 ], [ %1489, %1512 ], [ %1489, %1502 ]
  %1517 = phi i64 [ %1488, %1509 ], [ %1514, %1512 ], [ %1488, %1502 ]
  %1518 = phi ptr [ %1487, %1509 ], [ %1487, %1512 ], [ %1504, %1502 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #14
  %1519 = add nsw i32 %1486, -1
  %1520 = icmp sgt i32 %1486, 0
  br i1 %1520, label %1485, label %2279, !llvm.loop !65

1521:                                             ; preds = %148, %148
  %1522 = add nsw i32 %149, -1
  %1523 = icmp sgt i32 %149, 0
  br i1 %1523, label %1524, label %2279

1524:                                             ; preds = %1521
  %1525 = and i8 %100, 1
  %1526 = icmp eq i8 %1525, 0
  %1527 = icmp eq i32 %104, 0
  %1528 = icmp sgt i32 %104, 64
  br label %1529

1529:                                             ; preds = %1524, %1559
  %1530 = phi i32 [ %1522, %1524 ], [ %1563, %1559 ]
  %1531 = phi ptr [ %150, %1524 ], [ %1562, %1559 ]
  %1532 = phi i64 [ %103, %1524 ], [ %1561, %1559 ]
  %1533 = phi double [ %102, %1524 ], [ %1560, %1559 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #14
  br i1 %1526, label %1536, label %1534

1534:                                             ; preds = %1529
  %1535 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %6, ptr noundef %3, ptr noundef nonnull %17, i32 noundef 4, i32 noundef %98) #15
  br label %1545

1536:                                             ; preds = %1529
  %1537 = load ptr, ptr %6, align 8, !tbaa !19
  br i1 %152, label %1538, label %1540

1538:                                             ; preds = %1536
  call fastcc void @S_reverse_copy(ptr noundef %1537, ptr noundef nonnull %17, i64 noundef 4) #15
  %1539 = load ptr, ptr %6, align 8, !tbaa !19
  br label %1542

1540:                                             ; preds = %1536
  %1541 = load i32, ptr %1537, align 1
  store i32 %1541, ptr %17, align 4
  br label %1542

1542:                                             ; preds = %1540, %1538
  %1543 = phi ptr [ %1537, %1540 ], [ %1539, %1538 ]
  %1544 = getelementptr inbounds i8, ptr %1543, i64 4
  store ptr %1544, ptr %6, align 8, !tbaa !19
  br label %1545

1545:                                             ; preds = %1534, %1542
  br i1 %1527, label %1546, label %1551

1546:                                             ; preds = %1545
  %1547 = call ptr @Perl_sv_newmortal() #16
  %1548 = getelementptr inbounds ptr, ptr %1531, i64 1
  store ptr %1547, ptr %1548, align 8, !tbaa !19
  %1549 = load i32, ptr %17, align 4, !tbaa !26
  %1550 = zext i32 %1549 to i64
  call void @Perl_sv_setuv(ptr noundef %1547, i64 noundef %1550) #16
  br label %1559

1551:                                             ; preds = %1545
  %1552 = load i32, ptr %17, align 4, !tbaa !26
  br i1 %1528, label %1553, label %1556

1553:                                             ; preds = %1551
  %1554 = uitofp i32 %1552 to double
  %1555 = fadd double %1533, %1554
  br label %1559

1556:                                             ; preds = %1551
  %1557 = zext i32 %1552 to i64
  %1558 = add i64 %1532, %1557
  br label %1559

1559:                                             ; preds = %1553, %1556, %1546
  %1560 = phi double [ %1555, %1553 ], [ %1533, %1556 ], [ %1533, %1546 ]
  %1561 = phi i64 [ %1532, %1553 ], [ %1558, %1556 ], [ %1532, %1546 ]
  %1562 = phi ptr [ %1531, %1553 ], [ %1531, %1556 ], [ %1548, %1546 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #14
  %1563 = add nsw i32 %1530, -1
  %1564 = icmp sgt i32 %1530, 0
  br i1 %1564, label %1529, label %2279, !llvm.loop !66

1565:                                             ; preds = %241, %1593
  %1566 = phi i32 [ %239, %241 ], [ %1597, %1593 ]
  %1567 = phi ptr [ %150, %241 ], [ %1596, %1593 ]
  %1568 = phi i64 [ %103, %241 ], [ %1595, %1593 ]
  %1569 = phi double [ %102, %241 ], [ %1594, %1593 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #14
  br i1 %243, label %1572, label %1570

1570:                                             ; preds = %1565
  %1571 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %6, ptr noundef %3, ptr noundef nonnull %18, i32 noundef 8, i32 noundef %98) #15
  br label %1581

1572:                                             ; preds = %1565
  %1573 = load ptr, ptr %6, align 8, !tbaa !19
  br i1 %152, label %1574, label %1576

1574:                                             ; preds = %1572
  call fastcc void @S_reverse_copy(ptr noundef %1573, ptr noundef nonnull %18, i64 noundef 8) #15
  %1575 = load ptr, ptr %6, align 8, !tbaa !19
  br label %1578

1576:                                             ; preds = %1572
  %1577 = load i64, ptr %1573, align 1
  store i64 %1577, ptr %18, align 8
  br label %1578

1578:                                             ; preds = %1576, %1574
  %1579 = phi ptr [ %1573, %1576 ], [ %1575, %1574 ]
  %1580 = getelementptr inbounds i8, ptr %1579, i64 8
  store ptr %1580, ptr %6, align 8, !tbaa !19
  br label %1581

1581:                                             ; preds = %1570, %1578
  br i1 %244, label %1582, label %1586

1582:                                             ; preds = %1581
  %1583 = call ptr @Perl_sv_newmortal() #16
  %1584 = getelementptr inbounds ptr, ptr %1567, i64 1
  store ptr %1583, ptr %1584, align 8, !tbaa !19
  %1585 = load i64, ptr %18, align 8, !tbaa !5
  call void @Perl_sv_setiv(ptr noundef %1583, i64 noundef %1585) #16
  br label %1593

1586:                                             ; preds = %1581
  %1587 = load i64, ptr %18, align 8, !tbaa !5
  br i1 %245, label %1588, label %1591

1588:                                             ; preds = %1586
  %1589 = sitofp i64 %1587 to double
  %1590 = fadd double %1569, %1589
  br label %1593

1591:                                             ; preds = %1586
  %1592 = add i64 %1587, %1568
  br label %1593

1593:                                             ; preds = %1588, %1591, %1582
  %1594 = phi double [ %1590, %1588 ], [ %1569, %1591 ], [ %1569, %1582 ]
  %1595 = phi i64 [ %1568, %1588 ], [ %1592, %1591 ], [ %1568, %1582 ]
  %1596 = phi ptr [ %1567, %1588 ], [ %1567, %1591 ], [ %1584, %1582 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #14
  %1597 = add nsw i32 %1566, -1
  %1598 = icmp sgt i32 %1566, 0
  br i1 %1598, label %1565, label %2279, !llvm.loop !67

1599:                                             ; preds = %233, %1627
  %1600 = phi i32 [ %231, %233 ], [ %1631, %1627 ]
  %1601 = phi ptr [ %150, %233 ], [ %1630, %1627 ]
  %1602 = phi i64 [ %103, %233 ], [ %1629, %1627 ]
  %1603 = phi double [ %102, %233 ], [ %1628, %1627 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #14
  br i1 %235, label %1606, label %1604

1604:                                             ; preds = %1599
  %1605 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %6, ptr noundef %3, ptr noundef nonnull %19, i32 noundef 8, i32 noundef %98) #15
  br label %1615

1606:                                             ; preds = %1599
  %1607 = load ptr, ptr %6, align 8, !tbaa !19
  br i1 %152, label %1608, label %1610

1608:                                             ; preds = %1606
  call fastcc void @S_reverse_copy(ptr noundef %1607, ptr noundef nonnull %19, i64 noundef 8) #15
  %1609 = load ptr, ptr %6, align 8, !tbaa !19
  br label %1612

1610:                                             ; preds = %1606
  %1611 = load i64, ptr %1607, align 1
  store i64 %1611, ptr %19, align 8
  br label %1612

1612:                                             ; preds = %1610, %1608
  %1613 = phi ptr [ %1607, %1610 ], [ %1609, %1608 ]
  %1614 = getelementptr inbounds i8, ptr %1613, i64 8
  store ptr %1614, ptr %6, align 8, !tbaa !19
  br label %1615

1615:                                             ; preds = %1604, %1612
  br i1 %236, label %1616, label %1620

1616:                                             ; preds = %1615
  %1617 = call ptr @Perl_sv_newmortal() #16
  %1618 = getelementptr inbounds ptr, ptr %1601, i64 1
  store ptr %1617, ptr %1618, align 8, !tbaa !19
  %1619 = load i64, ptr %19, align 8, !tbaa !5
  call void @Perl_sv_setuv(ptr noundef %1617, i64 noundef %1619) #16
  br label %1627

1620:                                             ; preds = %1615
  %1621 = load i64, ptr %19, align 8, !tbaa !5
  br i1 %237, label %1622, label %1625

1622:                                             ; preds = %1620
  %1623 = uitofp i64 %1621 to double
  %1624 = fadd double %1603, %1623
  br label %1627

1625:                                             ; preds = %1620
  %1626 = add i64 %1621, %1602
  br label %1627

1627:                                             ; preds = %1622, %1625, %1616
  %1628 = phi double [ %1624, %1622 ], [ %1603, %1625 ], [ %1603, %1616 ]
  %1629 = phi i64 [ %1602, %1622 ], [ %1626, %1625 ], [ %1602, %1616 ]
  %1630 = phi ptr [ %1601, %1622 ], [ %1601, %1625 ], [ %1618, %1616 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #14
  %1631 = add nsw i32 %1600, -1
  %1632 = icmp sgt i32 %1600, 0
  br i1 %1632, label %1599, label %2279, !llvm.loop !68

1633:                                             ; preds = %225, %1661
  %1634 = phi i32 [ %223, %225 ], [ %1665, %1661 ]
  %1635 = phi ptr [ %150, %225 ], [ %1664, %1661 ]
  %1636 = phi i64 [ %103, %225 ], [ %1663, %1661 ]
  %1637 = phi double [ %102, %225 ], [ %1662, %1661 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #14
  br i1 %227, label %1640, label %1638

1638:                                             ; preds = %1633
  %1639 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %6, ptr noundef %3, ptr noundef nonnull %20, i32 noundef 8, i32 noundef %98) #15
  br label %1649

1640:                                             ; preds = %1633
  %1641 = load ptr, ptr %6, align 8, !tbaa !19
  br i1 %152, label %1642, label %1644

1642:                                             ; preds = %1640
  call fastcc void @S_reverse_copy(ptr noundef %1641, ptr noundef nonnull %20, i64 noundef 8) #15
  %1643 = load ptr, ptr %6, align 8, !tbaa !19
  br label %1646

1644:                                             ; preds = %1640
  %1645 = load i64, ptr %1641, align 1
  store i64 %1645, ptr %20, align 8
  br label %1646

1646:                                             ; preds = %1644, %1642
  %1647 = phi ptr [ %1641, %1644 ], [ %1643, %1642 ]
  %1648 = getelementptr inbounds i8, ptr %1647, i64 8
  store ptr %1648, ptr %6, align 8, !tbaa !19
  br label %1649

1649:                                             ; preds = %1638, %1646
  br i1 %228, label %1650, label %1654

1650:                                             ; preds = %1649
  %1651 = call ptr @Perl_sv_newmortal() #16
  %1652 = getelementptr inbounds ptr, ptr %1635, i64 1
  store ptr %1651, ptr %1652, align 8, !tbaa !19
  %1653 = load i64, ptr %20, align 8, !tbaa !5
  call void @Perl_sv_setiv(ptr noundef %1651, i64 noundef %1653) #16
  br label %1661

1654:                                             ; preds = %1649
  %1655 = load i64, ptr %20, align 8, !tbaa !5
  br i1 %229, label %1656, label %1659

1656:                                             ; preds = %1654
  %1657 = sitofp i64 %1655 to double
  %1658 = fadd double %1637, %1657
  br label %1661

1659:                                             ; preds = %1654
  %1660 = add i64 %1655, %1636
  br label %1661

1661:                                             ; preds = %1656, %1659, %1650
  %1662 = phi double [ %1658, %1656 ], [ %1637, %1659 ], [ %1637, %1650 ]
  %1663 = phi i64 [ %1636, %1656 ], [ %1660, %1659 ], [ %1636, %1650 ]
  %1664 = phi ptr [ %1635, %1656 ], [ %1635, %1659 ], [ %1652, %1650 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #14
  %1665 = add nsw i32 %1634, -1
  %1666 = icmp sgt i32 %1634, 0
  br i1 %1666, label %1633, label %2279, !llvm.loop !69

1667:                                             ; preds = %217, %1697
  %1668 = phi i32 [ %215, %217 ], [ %1701, %1697 ]
  %1669 = phi ptr [ %150, %217 ], [ %1700, %1697 ]
  %1670 = phi i64 [ %103, %217 ], [ %1699, %1697 ]
  %1671 = phi double [ %102, %217 ], [ %1698, %1697 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #14
  br i1 %219, label %1674, label %1672

1672:                                             ; preds = %1667
  %1673 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %6, ptr noundef %3, ptr noundef nonnull %21, i32 noundef 4, i32 noundef %98) #15
  br label %1683

1674:                                             ; preds = %1667
  %1675 = load ptr, ptr %6, align 8, !tbaa !19
  br i1 %152, label %1676, label %1678

1676:                                             ; preds = %1674
  call fastcc void @S_reverse_copy(ptr noundef %1675, ptr noundef nonnull %21, i64 noundef 4) #15
  %1677 = load ptr, ptr %6, align 8, !tbaa !19
  br label %1680

1678:                                             ; preds = %1674
  %1679 = load i32, ptr %1675, align 1
  store i32 %1679, ptr %21, align 4
  br label %1680

1680:                                             ; preds = %1678, %1676
  %1681 = phi ptr [ %1675, %1678 ], [ %1677, %1676 ]
  %1682 = getelementptr inbounds i8, ptr %1681, i64 4
  store ptr %1682, ptr %6, align 8, !tbaa !19
  br label %1683

1683:                                             ; preds = %1672, %1680
  br i1 %220, label %1684, label %1689

1684:                                             ; preds = %1683
  %1685 = call ptr @Perl_sv_newmortal() #16
  %1686 = getelementptr inbounds ptr, ptr %1669, i64 1
  store ptr %1685, ptr %1686, align 8, !tbaa !19
  %1687 = load i32, ptr %21, align 4, !tbaa !26
  %1688 = sext i32 %1687 to i64
  call void @Perl_sv_setiv(ptr noundef %1685, i64 noundef %1688) #16
  br label %1697

1689:                                             ; preds = %1683
  %1690 = load i32, ptr %21, align 4, !tbaa !26
  br i1 %221, label %1691, label %1694

1691:                                             ; preds = %1689
  %1692 = sitofp i32 %1690 to double
  %1693 = fadd double %1671, %1692
  br label %1697

1694:                                             ; preds = %1689
  %1695 = sext i32 %1690 to i64
  %1696 = add i64 %1670, %1695
  br label %1697

1697:                                             ; preds = %1691, %1694, %1684
  %1698 = phi double [ %1693, %1691 ], [ %1671, %1694 ], [ %1671, %1684 ]
  %1699 = phi i64 [ %1670, %1691 ], [ %1696, %1694 ], [ %1670, %1684 ]
  %1700 = phi ptr [ %1669, %1691 ], [ %1669, %1694 ], [ %1686, %1684 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #14
  %1701 = add nsw i32 %1668, -1
  %1702 = icmp sgt i32 %1668, 0
  br i1 %1702, label %1667, label %2279, !llvm.loop !70

1703:                                             ; preds = %209, %1731
  %1704 = phi i32 [ %207, %209 ], [ %1735, %1731 ]
  %1705 = phi ptr [ %150, %209 ], [ %1734, %1731 ]
  %1706 = phi i64 [ %103, %209 ], [ %1733, %1731 ]
  %1707 = phi double [ %102, %209 ], [ %1732, %1731 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %22) #14
  br i1 %211, label %1710, label %1708

1708:                                             ; preds = %1703
  %1709 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %6, ptr noundef %3, ptr noundef nonnull %22, i32 noundef 8, i32 noundef %98) #15
  br label %1719

1710:                                             ; preds = %1703
  %1711 = load ptr, ptr %6, align 8, !tbaa !19
  br i1 %152, label %1712, label %1714

1712:                                             ; preds = %1710
  call fastcc void @S_reverse_copy(ptr noundef %1711, ptr noundef nonnull %22, i64 noundef 8) #15
  %1713 = load ptr, ptr %6, align 8, !tbaa !19
  br label %1716

1714:                                             ; preds = %1710
  %1715 = load i64, ptr %1711, align 1
  store i64 %1715, ptr %22, align 8
  br label %1716

1716:                                             ; preds = %1714, %1712
  %1717 = phi ptr [ %1711, %1714 ], [ %1713, %1712 ]
  %1718 = getelementptr inbounds i8, ptr %1717, i64 8
  store ptr %1718, ptr %6, align 8, !tbaa !19
  br label %1719

1719:                                             ; preds = %1708, %1716
  br i1 %212, label %1720, label %1724

1720:                                             ; preds = %1719
  %1721 = call ptr @Perl_sv_newmortal() #16
  %1722 = getelementptr inbounds ptr, ptr %1705, i64 1
  store ptr %1721, ptr %1722, align 8, !tbaa !19
  %1723 = load i64, ptr %22, align 8, !tbaa !5
  call void @Perl_sv_setuv(ptr noundef %1721, i64 noundef %1723) #16
  br label %1731

1724:                                             ; preds = %1719
  %1725 = load i64, ptr %22, align 8, !tbaa !5
  br i1 %213, label %1726, label %1729

1726:                                             ; preds = %1724
  %1727 = uitofp i64 %1725 to double
  %1728 = fadd double %1707, %1727
  br label %1731

1729:                                             ; preds = %1724
  %1730 = add i64 %1725, %1706
  br label %1731

1731:                                             ; preds = %1726, %1729, %1720
  %1732 = phi double [ %1728, %1726 ], [ %1707, %1729 ], [ %1707, %1720 ]
  %1733 = phi i64 [ %1706, %1726 ], [ %1730, %1729 ], [ %1706, %1720 ]
  %1734 = phi ptr [ %1705, %1726 ], [ %1705, %1729 ], [ %1722, %1720 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %22) #14
  %1735 = add nsw i32 %1704, -1
  %1736 = icmp sgt i32 %1704, 0
  br i1 %1736, label %1703, label %2279, !llvm.loop !71

1737:                                             ; preds = %148, %148, %148
  %1738 = add nsw i32 %149, -1
  %1739 = icmp sgt i32 %149, 0
  br i1 %1739, label %1740, label %2279

1740:                                             ; preds = %1737
  %1741 = and i8 %100, 1
  %1742 = icmp eq i8 %1741, 0
  %1743 = icmp eq i32 %98, 78
  %1744 = icmp eq i32 %104, 0
  %1745 = icmp sgt i32 %104, 64
  br label %1746

1746:                                             ; preds = %1740, %1780
  %1747 = phi i32 [ %1738, %1740 ], [ %1784, %1780 ]
  %1748 = phi ptr [ %150, %1740 ], [ %1783, %1780 ]
  %1749 = phi i64 [ %103, %1740 ], [ %1782, %1780 ]
  %1750 = phi double [ %102, %1740 ], [ %1781, %1780 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %23) #14
  br i1 %1742, label %1753, label %1751

1751:                                             ; preds = %1746
  %1752 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %6, ptr noundef %3, ptr noundef nonnull %23, i32 noundef 4, i32 noundef %98) #15
  br label %1762

1753:                                             ; preds = %1746
  %1754 = load ptr, ptr %6, align 8, !tbaa !19
  br i1 %152, label %1755, label %1757

1755:                                             ; preds = %1753
  call fastcc void @S_reverse_copy(ptr noundef %1754, ptr noundef nonnull %23, i64 noundef 4) #15
  %1756 = load ptr, ptr %6, align 8, !tbaa !19
  br label %1759

1757:                                             ; preds = %1753
  %1758 = load i32, ptr %1754, align 1
  store i32 %1758, ptr %23, align 4
  br label %1759

1759:                                             ; preds = %1757, %1755
  %1760 = phi ptr [ %1754, %1757 ], [ %1756, %1755 ]
  %1761 = getelementptr inbounds i8, ptr %1760, i64 4
  store ptr %1761, ptr %6, align 8, !tbaa !19
  br label %1762

1762:                                             ; preds = %1751, %1759
  br i1 %1743, label %1763, label %1766

1763:                                             ; preds = %1762
  %1764 = load i32, ptr %23, align 4, !tbaa !26
  %1765 = call fastcc i32 @__bswap_32(i32 noundef %1764) #15
  store i32 %1765, ptr %23, align 4, !tbaa !26
  br label %1766

1766:                                             ; preds = %1763, %1762
  br i1 %1744, label %1767, label %1772

1767:                                             ; preds = %1766
  %1768 = call ptr @Perl_sv_newmortal() #16
  %1769 = getelementptr inbounds ptr, ptr %1748, i64 1
  store ptr %1768, ptr %1769, align 8, !tbaa !19
  %1770 = load i32, ptr %23, align 4, !tbaa !26
  %1771 = zext i32 %1770 to i64
  call void @Perl_sv_setuv(ptr noundef %1768, i64 noundef %1771) #16
  br label %1780

1772:                                             ; preds = %1766
  %1773 = load i32, ptr %23, align 4, !tbaa !26
  br i1 %1745, label %1774, label %1777

1774:                                             ; preds = %1772
  %1775 = uitofp i32 %1773 to double
  %1776 = fadd double %1750, %1775
  br label %1780

1777:                                             ; preds = %1772
  %1778 = zext i32 %1773 to i64
  %1779 = add i64 %1749, %1778
  br label %1780

1780:                                             ; preds = %1774, %1777, %1767
  %1781 = phi double [ %1776, %1774 ], [ %1750, %1777 ], [ %1750, %1767 ]
  %1782 = phi i64 [ %1749, %1774 ], [ %1779, %1777 ], [ %1749, %1767 ]
  %1783 = phi ptr [ %1748, %1774 ], [ %1748, %1777 ], [ %1769, %1767 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %23) #14
  %1784 = add nsw i32 %1747, -1
  %1785 = icmp sgt i32 %1747, 0
  br i1 %1785, label %1746, label %2279, !llvm.loop !72

1786:                                             ; preds = %148, %148
  %1787 = add nsw i32 %149, -1
  %1788 = icmp sgt i32 %149, 0
  br i1 %1788, label %1789, label %2279

1789:                                             ; preds = %1786
  %1790 = and i8 %100, 1
  %1791 = icmp eq i8 %1790, 0
  %1792 = icmp eq i32 %98, 334
  %1793 = icmp eq i32 %104, 0
  %1794 = icmp sgt i32 %104, 64
  br label %1795

1795:                                             ; preds = %1789, %1829
  %1796 = phi i32 [ %1787, %1789 ], [ %1833, %1829 ]
  %1797 = phi ptr [ %150, %1789 ], [ %1832, %1829 ]
  %1798 = phi i64 [ %103, %1789 ], [ %1831, %1829 ]
  %1799 = phi double [ %102, %1789 ], [ %1830, %1829 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %24) #14
  br i1 %1791, label %1802, label %1800

1800:                                             ; preds = %1795
  %1801 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %6, ptr noundef %3, ptr noundef nonnull %24, i32 noundef 4, i32 noundef %98) #15
  br label %1811

1802:                                             ; preds = %1795
  %1803 = load ptr, ptr %6, align 8, !tbaa !19
  br i1 %152, label %1804, label %1806

1804:                                             ; preds = %1802
  call fastcc void @S_reverse_copy(ptr noundef %1803, ptr noundef nonnull %24, i64 noundef 4) #15
  %1805 = load ptr, ptr %6, align 8, !tbaa !19
  br label %1808

1806:                                             ; preds = %1802
  %1807 = load i32, ptr %1803, align 1
  store i32 %1807, ptr %24, align 4
  br label %1808

1808:                                             ; preds = %1806, %1804
  %1809 = phi ptr [ %1803, %1806 ], [ %1805, %1804 ]
  %1810 = getelementptr inbounds i8, ptr %1809, i64 4
  store ptr %1810, ptr %6, align 8, !tbaa !19
  br label %1811

1811:                                             ; preds = %1800, %1808
  br i1 %1792, label %1812, label %1815

1812:                                             ; preds = %1811
  %1813 = load i32, ptr %24, align 4, !tbaa !26
  %1814 = call fastcc i32 @__bswap_32(i32 noundef %1813) #15
  store i32 %1814, ptr %24, align 4, !tbaa !26
  br label %1815

1815:                                             ; preds = %1812, %1811
  br i1 %1793, label %1816, label %1821

1816:                                             ; preds = %1815
  %1817 = call ptr @Perl_sv_newmortal() #16
  %1818 = getelementptr inbounds ptr, ptr %1797, i64 1
  store ptr %1817, ptr %1818, align 8, !tbaa !19
  %1819 = load i32, ptr %24, align 4, !tbaa !26
  %1820 = sext i32 %1819 to i64
  call void @Perl_sv_setiv(ptr noundef %1817, i64 noundef %1820) #16
  br label %1829

1821:                                             ; preds = %1815
  %1822 = load i32, ptr %24, align 4, !tbaa !26
  br i1 %1794, label %1823, label %1826

1823:                                             ; preds = %1821
  %1824 = sitofp i32 %1822 to double
  %1825 = fadd double %1799, %1824
  br label %1829

1826:                                             ; preds = %1821
  %1827 = sext i32 %1822 to i64
  %1828 = add i64 %1798, %1827
  br label %1829

1829:                                             ; preds = %1823, %1826, %1816
  %1830 = phi double [ %1825, %1823 ], [ %1799, %1826 ], [ %1799, %1816 ]
  %1831 = phi i64 [ %1798, %1823 ], [ %1828, %1826 ], [ %1798, %1816 ]
  %1832 = phi ptr [ %1797, %1823 ], [ %1797, %1826 ], [ %1818, %1816 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %24) #14
  %1833 = add nsw i32 %1796, -1
  %1834 = icmp sgt i32 %1796, 0
  br i1 %1834, label %1795, label %2279, !llvm.loop !73

1835:                                             ; preds = %203, %1849
  %1836 = phi i32 [ %201, %203 ], [ %1854, %1849 ]
  %1837 = phi ptr [ %150, %203 ], [ %1853, %1849 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %25) #14
  br i1 %205, label %1840, label %1838

1838:                                             ; preds = %1835
  %1839 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %6, ptr noundef %3, ptr noundef nonnull %25, i32 noundef 8, i32 noundef %98) #15
  br label %1849

1840:                                             ; preds = %1835
  %1841 = load ptr, ptr %6, align 8, !tbaa !19
  br i1 %152, label %1842, label %1844

1842:                                             ; preds = %1840
  call fastcc void @S_reverse_copy(ptr noundef %1841, ptr noundef nonnull %25, i64 noundef 8) #15
  %1843 = load ptr, ptr %6, align 8, !tbaa !19
  br label %1846

1844:                                             ; preds = %1840
  %1845 = load i64, ptr %1841, align 1
  store i64 %1845, ptr %25, align 8
  br label %1846

1846:                                             ; preds = %1844, %1842
  %1847 = phi ptr [ %1841, %1844 ], [ %1843, %1842 ]
  %1848 = getelementptr inbounds i8, ptr %1847, i64 8
  store ptr %1848, ptr %6, align 8, !tbaa !19
  br label %1849

1849:                                             ; preds = %1838, %1846
  %1850 = load ptr, ptr %25, align 8, !tbaa !19
  %1851 = call ptr @Perl_newSVpv(ptr noundef %1850, i64 noundef 0) #16
  %1852 = call ptr @Perl_sv_2mortal(ptr noundef %1851) #16
  %1853 = getelementptr inbounds ptr, ptr %1837, i64 1
  store ptr %1852, ptr %1853, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %25) #14
  %1854 = add nsw i32 %1836, -1
  %1855 = icmp sgt i32 %1836, 0
  br i1 %1855, label %1835, label %2279, !llvm.loop !74

1856:                                             ; preds = %197, %1922
  %1857 = phi ptr [ %194, %197 ], [ %1929, %1922 ]
  %1858 = phi ptr [ %150, %197 ], [ %1927, %1922 ]
  %1859 = phi ptr [ %105, %197 ], [ %1926, %1922 ]
  %1860 = phi i32 [ 0, %197 ], [ %1925, %1922 ]
  %1861 = phi i64 [ 0, %197 ], [ %1924, %1922 ]
  %1862 = phi i32 [ %149, %197 ], [ %1923, %1922 ]
  br i1 %199, label %1865, label %1863

1863:                                             ; preds = %1856
  %1864 = call fastcc zeroext i8 @utf8_to_byte(ptr noundef nonnull %6, ptr noundef nonnull %3, i32 noundef %98) #15
  br label %1868

1865:                                             ; preds = %1856
  %1866 = getelementptr inbounds i8, ptr %1857, i64 1
  store ptr %1866, ptr %6, align 8, !tbaa !19
  %1867 = load i8, ptr %1857, align 1, !tbaa !15
  br label %1868

1868:                                             ; preds = %1865, %1863
  %1869 = phi i8 [ %1864, %1863 ], [ %1867, %1865 ]
  %1870 = shl i64 %1861, 7
  %1871 = and i8 %1869, 127
  %1872 = zext nneg i8 %1871 to i64
  %1873 = or disjoint i64 %1870, %1872
  %1874 = icmp sgt i8 %1869, -1
  br i1 %1874, label %1875, label %1879

1875:                                             ; preds = %1868
  %1876 = call ptr @Perl_sv_newmortal() #16
  %1877 = getelementptr inbounds ptr, ptr %1858, i64 1
  store ptr %1876, ptr %1877, align 8, !tbaa !19
  call void @Perl_sv_setuv(ptr noundef %1876, i64 noundef %1873) #16
  %1878 = add nsw i32 %1862, -1
  br label %1922, !llvm.loop !75

1879:                                             ; preds = %1868
  %1880 = add i32 %1860, 1
  %1881 = icmp ugt i32 %1880, 7
  br i1 %1881, label %1882, label %1922

1882:                                             ; preds = %1879
  %1883 = call ptr (ptr, ...) @Perl_newSVpvf(ptr noundef nonnull @.str.9, i32 noundef 20, i64 noundef %1873) #16
  br label %1884

1884:                                             ; preds = %1894, %1882
  %1885 = phi ptr [ %1883, %1882 ], [ %1897, %1894 ]
  %1886 = load ptr, ptr %6, align 8, !tbaa !19
  %1887 = icmp ult ptr %1886, %3
  br i1 %1887, label %1888, label %1899

1888:                                             ; preds = %1884
  br i1 %199, label %1891, label %1889

1889:                                             ; preds = %1888
  %1890 = call fastcc zeroext i8 @utf8_to_byte(ptr noundef nonnull %6, ptr noundef nonnull %3, i32 noundef %98) #15
  br label %1894

1891:                                             ; preds = %1888
  %1892 = getelementptr inbounds i8, ptr %1886, i64 1
  store ptr %1892, ptr %6, align 8, !tbaa !19
  %1893 = load i8, ptr %1886, align 1, !tbaa !15
  br label %1894

1894:                                             ; preds = %1891, %1889
  %1895 = phi i8 [ %1890, %1889 ], [ %1893, %1891 ]
  %1896 = and i8 %1895, 127
  %1897 = call fastcc ptr @S_mul128(ptr noundef %1885, i8 noundef zeroext %1896) #15
  %1898 = icmp sgt i8 %1895, -1
  br i1 %1898, label %1899, label %1884, !llvm.loop !76

1899:                                             ; preds = %1894, %1884
  %1900 = phi i32 [ %1880, %1884 ], [ 0, %1894 ]
  %1901 = phi ptr [ %1885, %1884 ], [ %1897, %1894 ]
  %1902 = getelementptr inbounds %struct.sv, ptr %1901, i64 0, i32 2
  %1903 = load i32, ptr %1902, align 4, !tbaa !42
  %1904 = and i32 %1903, 2098176
  %1905 = icmp eq i32 %1904, 1024
  br i1 %1905, label %1906, label %1909

1906:                                             ; preds = %1899
  %1907 = getelementptr inbounds %struct.sv, ptr %1901, i64 0, i32 3
  %1908 = load ptr, ptr %1907, align 8, !tbaa !15
  br label %1911

1909:                                             ; preds = %1899
  %1910 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %1901, ptr noundef null, i32 noundef 34) #16
  br label %1911

1911:                                             ; preds = %1909, %1906
  %1912 = phi ptr [ %1910, %1909 ], [ %1908, %1906 ]
  br label %1913

1913:                                             ; preds = %1911, %1913
  %1914 = phi ptr [ %1917, %1913 ], [ %1912, %1911 ]
  %1915 = load i8, ptr %1914, align 1, !tbaa !15
  %1916 = icmp eq i8 %1915, 48
  %1917 = getelementptr inbounds i8, ptr %1914, i64 1
  br i1 %1916, label %1913, label %1918, !llvm.loop !77

1918:                                             ; preds = %1913
  call void @Perl_sv_chop(ptr noundef %1901, ptr noundef nonnull %1914) #16
  %1919 = call ptr @Perl_sv_2mortal(ptr noundef %1901) #16
  %1920 = getelementptr inbounds ptr, ptr %1858, i64 1
  store ptr %1919, ptr %1920, align 8, !tbaa !19
  %1921 = add nsw i32 %1862, -1
  br label %1922

1922:                                             ; preds = %1879, %1918, %1875
  %1923 = phi i32 [ %1878, %1875 ], [ %1921, %1918 ], [ %1862, %1879 ]
  %1924 = phi i64 [ 0, %1875 ], [ 0, %1918 ], [ %1873, %1879 ]
  %1925 = phi i32 [ 0, %1875 ], [ %1900, %1918 ], [ %1880, %1879 ]
  %1926 = phi ptr [ %1859, %1875 ], [ %1901, %1918 ], [ %1859, %1879 ]
  %1927 = phi ptr [ %1877, %1875 ], [ %1920, %1918 ], [ %1858, %1879 ]
  %1928 = icmp sgt i32 %1923, 0
  %1929 = load ptr, ptr %6, align 8
  %1930 = icmp ult ptr %1929, %3
  %1931 = select i1 %1928, i1 %1930, i1 false
  br i1 %1931, label %1856, label %1932

1932:                                             ; preds = %1922
  %1933 = icmp uge ptr %1929, %3
  %1934 = icmp ne i32 %1925, 0
  %1935 = and i1 %1934, %1933
  br i1 %1935, label %1936, label %2279

1936:                                             ; preds = %1932
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.10) #16
  br label %2279

1937:                                             ; preds = %148
  %1938 = load i32, ptr %56, align 8, !tbaa !22
  %1939 = icmp eq i32 %1938, 2
  br i1 %1939, label %1940, label %1941

1940:                                             ; preds = %1937
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.11) #16
  br label %1941

1941:                                             ; preds = %1937, %1940
  %1942 = load ptr, ptr @PL_stack_max, align 8, !tbaa !19
  %1943 = ptrtoint ptr %1942 to i64
  %1944 = ptrtoint ptr %150 to i64
  %1945 = sub i64 %1943, %1944
  %1946 = icmp slt i64 %1945, 8
  br i1 %1946, label %1947, label %1949

1947:                                             ; preds = %1941
  %1948 = call ptr @Perl_stack_grow(ptr noundef %150, ptr noundef %150, i64 noundef 1) #16
  br label %1949

1949:                                             ; preds = %1941, %1947
  %1950 = phi ptr [ %1948, %1947 ], [ %150, %1941 ]
  %1951 = load ptr, ptr %6, align 8, !tbaa !19
  %1952 = getelementptr inbounds i8, ptr %1951, i64 8
  %1953 = icmp ugt ptr %1952, %3
  br i1 %1953, label %2279, label %1954

1954:                                             ; preds = %1949
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %26) #14
  %1955 = and i8 %100, 1
  %1956 = icmp eq i8 %1955, 0
  br i1 %1956, label %1959, label %1957

1957:                                             ; preds = %1954
  %1958 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %6, ptr noundef %3, ptr noundef nonnull %26, i32 noundef 8, i32 noundef %98) #15
  br label %1967

1959:                                             ; preds = %1954
  br i1 %152, label %1960, label %1962

1960:                                             ; preds = %1959
  call fastcc void @S_reverse_copy(ptr noundef %1951, ptr noundef nonnull %26, i64 noundef 8) #15
  %1961 = load ptr, ptr %6, align 8, !tbaa !19
  br label %1964

1962:                                             ; preds = %1959
  %1963 = load i64, ptr %1951, align 1
  store i64 %1963, ptr %26, align 8
  br label %1964

1964:                                             ; preds = %1962, %1960
  %1965 = phi ptr [ %1951, %1962 ], [ %1961, %1960 ]
  %1966 = getelementptr inbounds i8, ptr %1965, i64 8
  store ptr %1966, ptr %6, align 8, !tbaa !19
  br label %1967

1967:                                             ; preds = %1957, %1964
  %1968 = load ptr, ptr %26, align 8, !tbaa !19
  %1969 = sext i32 %149 to i64
  %1970 = call ptr @Perl_newSVpvn_flags(ptr noundef %1968, i64 noundef %1969, i32 noundef 524288) #16
  %1971 = getelementptr inbounds ptr, ptr %1950, i64 1
  store ptr %1970, ptr %1971, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %26) #14
  br label %2279

1972:                                             ; preds = %187, %2000
  %1973 = phi i32 [ %185, %187 ], [ %2004, %2000 ]
  %1974 = phi ptr [ %150, %187 ], [ %2003, %2000 ]
  %1975 = phi i64 [ %103, %187 ], [ %2002, %2000 ]
  %1976 = phi double [ %102, %187 ], [ %2001, %2000 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %27) #14
  br i1 %189, label %1979, label %1977

1977:                                             ; preds = %1972
  %1978 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %6, ptr noundef %3, ptr noundef nonnull %27, i32 noundef 8, i32 noundef %98) #15
  br label %1988

1979:                                             ; preds = %1972
  %1980 = load ptr, ptr %6, align 8, !tbaa !19
  br i1 %152, label %1981, label %1983

1981:                                             ; preds = %1979
  call fastcc void @S_reverse_copy(ptr noundef %1980, ptr noundef nonnull %27, i64 noundef 8) #15
  %1982 = load ptr, ptr %6, align 8, !tbaa !19
  br label %1985

1983:                                             ; preds = %1979
  %1984 = load i64, ptr %1980, align 1
  store i64 %1984, ptr %27, align 8
  br label %1985

1985:                                             ; preds = %1983, %1981
  %1986 = phi ptr [ %1980, %1983 ], [ %1982, %1981 ]
  %1987 = getelementptr inbounds i8, ptr %1986, i64 8
  store ptr %1987, ptr %6, align 8, !tbaa !19
  br label %1988

1988:                                             ; preds = %1977, %1985
  %1989 = load i64, ptr %27, align 8, !tbaa !5
  br i1 %190, label %1990, label %1994

1990:                                             ; preds = %1988
  %1991 = call ptr @Perl_newSViv(i64 noundef %1989) #16
  %1992 = call ptr @Perl_sv_2mortal(ptr noundef %1991) #16
  %1993 = getelementptr inbounds ptr, ptr %1974, i64 1
  store ptr %1992, ptr %1993, align 8, !tbaa !19
  br label %2000

1994:                                             ; preds = %1988
  br i1 %191, label %1995, label %1998

1995:                                             ; preds = %1994
  %1996 = sitofp i64 %1989 to double
  %1997 = fadd double %1976, %1996
  br label %2000

1998:                                             ; preds = %1994
  %1999 = add i64 %1989, %1975
  br label %2000

2000:                                             ; preds = %1995, %1998, %1990
  %2001 = phi double [ %1997, %1995 ], [ %1976, %1998 ], [ %1976, %1990 ]
  %2002 = phi i64 [ %1975, %1995 ], [ %1999, %1998 ], [ %1975, %1990 ]
  %2003 = phi ptr [ %1974, %1995 ], [ %1974, %1998 ], [ %1993, %1990 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %27) #14
  %2004 = add nsw i32 %1973, -1
  %2005 = icmp sgt i32 %1973, 0
  br i1 %2005, label %1972, label %2279, !llvm.loop !78

2006:                                             ; preds = %179, %2034
  %2007 = phi i32 [ %177, %179 ], [ %2038, %2034 ]
  %2008 = phi ptr [ %150, %179 ], [ %2037, %2034 ]
  %2009 = phi i64 [ %103, %179 ], [ %2036, %2034 ]
  %2010 = phi double [ %102, %179 ], [ %2035, %2034 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %28) #14
  br i1 %181, label %2013, label %2011

2011:                                             ; preds = %2006
  %2012 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %6, ptr noundef %3, ptr noundef nonnull %28, i32 noundef 8, i32 noundef %98) #15
  br label %2022

2013:                                             ; preds = %2006
  %2014 = load ptr, ptr %6, align 8, !tbaa !19
  br i1 %152, label %2015, label %2017

2015:                                             ; preds = %2013
  call fastcc void @S_reverse_copy(ptr noundef %2014, ptr noundef nonnull %28, i64 noundef 8) #15
  %2016 = load ptr, ptr %6, align 8, !tbaa !19
  br label %2019

2017:                                             ; preds = %2013
  %2018 = load i64, ptr %2014, align 1
  store i64 %2018, ptr %28, align 8
  br label %2019

2019:                                             ; preds = %2017, %2015
  %2020 = phi ptr [ %2014, %2017 ], [ %2016, %2015 ]
  %2021 = getelementptr inbounds i8, ptr %2020, i64 8
  store ptr %2021, ptr %6, align 8, !tbaa !19
  br label %2022

2022:                                             ; preds = %2011, %2019
  %2023 = load i64, ptr %28, align 8, !tbaa !5
  br i1 %182, label %2024, label %2028

2024:                                             ; preds = %2022
  %2025 = call ptr @Perl_newSVuv(i64 noundef %2023) #16
  %2026 = call ptr @Perl_sv_2mortal(ptr noundef %2025) #16
  %2027 = getelementptr inbounds ptr, ptr %2008, i64 1
  store ptr %2026, ptr %2027, align 8, !tbaa !19
  br label %2034

2028:                                             ; preds = %2022
  br i1 %183, label %2029, label %2032

2029:                                             ; preds = %2028
  %2030 = uitofp i64 %2023 to double
  %2031 = fadd double %2010, %2030
  br label %2034

2032:                                             ; preds = %2028
  %2033 = add i64 %2023, %2009
  br label %2034

2034:                                             ; preds = %2029, %2032, %2024
  %2035 = phi double [ %2031, %2029 ], [ %2010, %2032 ], [ %2010, %2024 ]
  %2036 = phi i64 [ %2009, %2029 ], [ %2033, %2032 ], [ %2009, %2024 ]
  %2037 = phi ptr [ %2008, %2029 ], [ %2008, %2032 ], [ %2027, %2024 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %28) #14
  %2038 = add nsw i32 %2007, -1
  %2039 = icmp sgt i32 %2007, 0
  br i1 %2039, label %2006, label %2279, !llvm.loop !79

2040:                                             ; preds = %172, %2065
  %2041 = phi i32 [ %170, %172 ], [ %2068, %2065 ]
  %2042 = phi ptr [ %150, %172 ], [ %2067, %2065 ]
  %2043 = phi double [ %102, %172 ], [ %2066, %2065 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %29) #14
  br i1 %174, label %2046, label %2044

2044:                                             ; preds = %2040
  %2045 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %6, ptr noundef %3, ptr noundef nonnull %29, i32 noundef 4, i32 noundef %98) #15
  br label %2055

2046:                                             ; preds = %2040
  %2047 = load ptr, ptr %6, align 8, !tbaa !19
  br i1 %152, label %2048, label %2050

2048:                                             ; preds = %2046
  call fastcc void @S_reverse_copy(ptr noundef %2047, ptr noundef nonnull %29, i64 noundef 4) #15
  %2049 = load ptr, ptr %6, align 8, !tbaa !19
  br label %2052

2050:                                             ; preds = %2046
  %2051 = load i32, ptr %2047, align 1
  store i32 %2051, ptr %29, align 4
  br label %2052

2052:                                             ; preds = %2050, %2048
  %2053 = phi ptr [ %2047, %2050 ], [ %2049, %2048 ]
  %2054 = getelementptr inbounds i8, ptr %2053, i64 4
  store ptr %2054, ptr %6, align 8, !tbaa !19
  br label %2055

2055:                                             ; preds = %2044, %2052
  br i1 %175, label %2056, label %2061

2056:                                             ; preds = %2055
  %2057 = call ptr @Perl_sv_newmortal() #16
  %2058 = getelementptr inbounds ptr, ptr %2042, i64 1
  store ptr %2057, ptr %2058, align 8, !tbaa !19
  %2059 = load float, ptr %29, align 4, !tbaa !80
  %2060 = fpext float %2059 to double
  call void @Perl_sv_setnv(ptr noundef %2057, double noundef %2060) #16
  br label %2065

2061:                                             ; preds = %2055
  %2062 = load float, ptr %29, align 4, !tbaa !80
  %2063 = fpext float %2062 to double
  %2064 = fadd double %2043, %2063
  br label %2065

2065:                                             ; preds = %2061, %2056
  %2066 = phi double [ %2064, %2061 ], [ %2043, %2056 ]
  %2067 = phi ptr [ %2042, %2061 ], [ %2058, %2056 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %29) #14
  %2068 = add nsw i32 %2041, -1
  %2069 = icmp sgt i32 %2041, 0
  br i1 %2069, label %2040, label %2279, !llvm.loop !82

2070:                                             ; preds = %165, %2093
  %2071 = phi i32 [ %163, %165 ], [ %2096, %2093 ]
  %2072 = phi ptr [ %150, %165 ], [ %2095, %2093 ]
  %2073 = phi double [ %102, %165 ], [ %2094, %2093 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %30) #14
  br i1 %167, label %2076, label %2074

2074:                                             ; preds = %2070
  %2075 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %6, ptr noundef %3, ptr noundef nonnull %30, i32 noundef 8, i32 noundef %98) #15
  br label %2085

2076:                                             ; preds = %2070
  %2077 = load ptr, ptr %6, align 8, !tbaa !19
  br i1 %152, label %2078, label %2080

2078:                                             ; preds = %2076
  call fastcc void @S_reverse_copy(ptr noundef %2077, ptr noundef nonnull %30, i64 noundef 8) #15
  %2079 = load ptr, ptr %6, align 8, !tbaa !19
  br label %2082

2080:                                             ; preds = %2076
  %2081 = load i64, ptr %2077, align 1
  store i64 %2081, ptr %30, align 8
  br label %2082

2082:                                             ; preds = %2080, %2078
  %2083 = phi ptr [ %2077, %2080 ], [ %2079, %2078 ]
  %2084 = getelementptr inbounds i8, ptr %2083, i64 8
  store ptr %2084, ptr %6, align 8, !tbaa !19
  br label %2085

2085:                                             ; preds = %2074, %2082
  br i1 %168, label %2086, label %2090

2086:                                             ; preds = %2085
  %2087 = call ptr @Perl_sv_newmortal() #16
  %2088 = getelementptr inbounds ptr, ptr %2072, i64 1
  store ptr %2087, ptr %2088, align 8, !tbaa !19
  %2089 = load double, ptr %30, align 8, !tbaa !83
  call void @Perl_sv_setnv(ptr noundef %2087, double noundef %2089) #16
  br label %2093

2090:                                             ; preds = %2085
  %2091 = load double, ptr %30, align 8, !tbaa !83
  %2092 = fadd double %2073, %2091
  br label %2093

2093:                                             ; preds = %2090, %2086
  %2094 = phi double [ %2092, %2090 ], [ %2073, %2086 ]
  %2095 = phi ptr [ %2072, %2090 ], [ %2088, %2086 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %30) #14
  %2096 = add nsw i32 %2071, -1
  %2097 = icmp sgt i32 %2071, 0
  br i1 %2097, label %2070, label %2279, !llvm.loop !85

2098:                                             ; preds = %158, %2121
  %2099 = phi i32 [ %156, %158 ], [ %2124, %2121 ]
  %2100 = phi ptr [ %150, %158 ], [ %2123, %2121 ]
  %2101 = phi double [ %102, %158 ], [ %2122, %2121 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %31) #14
  br i1 %160, label %2104, label %2102

2102:                                             ; preds = %2098
  %2103 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %6, ptr noundef %3, ptr noundef nonnull %31, i32 noundef 8, i32 noundef %98) #15
  br label %2113

2104:                                             ; preds = %2098
  %2105 = load ptr, ptr %6, align 8, !tbaa !19
  br i1 %152, label %2106, label %2108

2106:                                             ; preds = %2104
  call fastcc void @S_reverse_copy(ptr noundef %2105, ptr noundef nonnull %31, i64 noundef 8) #15
  %2107 = load ptr, ptr %6, align 8, !tbaa !19
  br label %2110

2108:                                             ; preds = %2104
  %2109 = load i64, ptr %2105, align 1
  store i64 %2109, ptr %31, align 8
  br label %2110

2110:                                             ; preds = %2108, %2106
  %2111 = phi ptr [ %2105, %2108 ], [ %2107, %2106 ]
  %2112 = getelementptr inbounds i8, ptr %2111, i64 8
  store ptr %2112, ptr %6, align 8, !tbaa !19
  br label %2113

2113:                                             ; preds = %2102, %2110
  br i1 %161, label %2114, label %2118

2114:                                             ; preds = %2113
  %2115 = call ptr @Perl_sv_newmortal() #16
  %2116 = getelementptr inbounds ptr, ptr %2100, i64 1
  store ptr %2115, ptr %2116, align 8, !tbaa !19
  %2117 = load double, ptr %31, align 8, !tbaa !15
  call void @Perl_sv_setnv(ptr noundef %2115, double noundef %2117) #16
  br label %2121

2118:                                             ; preds = %2113
  %2119 = load double, ptr %31, align 8, !tbaa !15
  %2120 = fadd double %2101, %2119
  br label %2121

2121:                                             ; preds = %2118, %2114
  %2122 = phi double [ %2120, %2118 ], [ %2101, %2114 ]
  %2123 = phi ptr [ %2100, %2118 ], [ %2116, %2114 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %31) #14
  %2124 = add nsw i32 %2099, -1
  %2125 = icmp sgt i32 %2099, 0
  br i1 %2125, label %2098, label %2279, !llvm.loop !86

2126:                                             ; preds = %148
  %2127 = icmp eq i32 %104, 0
  br i1 %2127, label %2128, label %2141

2128:                                             ; preds = %2126
  %2129 = load ptr, ptr %6, align 8, !tbaa !19
  %2130 = ptrtoint ptr %2129 to i64
  %2131 = sub i64 %58, %2130
  %2132 = mul i64 %2131, 3
  %2133 = lshr i64 %2132, 2
  %2134 = call ptr @Perl_newSV(i64 noundef %2133) #16
  %2135 = call ptr @Perl_sv_2mortal(ptr noundef %2134) #16
  %2136 = icmp ult i64 %2132, 4
  br i1 %2136, label %2141, label %2137

2137:                                             ; preds = %2128
  %2138 = getelementptr inbounds %struct.sv, ptr %2135, i64 0, i32 2
  %2139 = load i32, ptr %2138, align 4, !tbaa !42
  %2140 = or i32 %2139, 17408
  store i32 %2140, ptr %2138, align 4, !tbaa !42
  br label %2141

2141:                                             ; preds = %2128, %2137, %2126
  %2142 = phi ptr [ %105, %2126 ], [ %2135, %2137 ], [ %2135, %2128 ]
  %2143 = load ptr, ptr %6, align 8, !tbaa !19
  %2144 = icmp ult ptr %2143, %3
  br i1 %2144, label %2145, label %2266

2145:                                             ; preds = %2141
  %2146 = load i8, ptr %2143, align 1, !tbaa !15
  %2147 = add i8 %2146, -33
  %2148 = icmp ult i8 %2147, 64
  br i1 %2148, label %2153, label %2266

2149:                                             ; preds = %2263
  %2150 = load i8, ptr %2264, align 1, !tbaa !15
  %2151 = add i8 %2150, -33
  %2152 = icmp ult i8 %2151, 64
  br i1 %2152, label %2153, label %2266, !llvm.loop !87

2153:                                             ; preds = %2145, %2149
  %2154 = phi ptr [ %2264, %2149 ], [ %2143, %2145 ]
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %32) #14
  %2155 = getelementptr inbounds i8, ptr %2154, i64 1
  store ptr %2155, ptr %6, align 8, !tbaa !19
  %2156 = load i8, ptr %2154, align 1, !tbaa !15
  %2157 = zext i8 %2156 to i64
  %2158 = getelementptr inbounds [256 x i8], ptr @PL_uudmap, i64 0, i64 %2157
  %2159 = load i8, ptr %2158, align 1, !tbaa !15
  %2160 = and i8 %2159, 63
  %2161 = icmp eq i8 %2160, 0
  br i1 %2161, label %2249, label %2162

2162:                                             ; preds = %2153
  %2163 = zext nneg i8 %2160 to i32
  br label %2164

2164:                                             ; preds = %2162, %2244
  %2165 = phi i32 [ %2245, %2244 ], [ %2163, %2162 ]
  %2166 = load ptr, ptr %6, align 8, !tbaa !19
  %2167 = icmp ult ptr %2166, %3
  br i1 %2167, label %2168, label %2180

2168:                                             ; preds = %2164
  %2169 = load i8, ptr %2166, align 1, !tbaa !15
  %2170 = add i8 %2169, -32
  %2171 = icmp ult i8 %2170, 65
  br i1 %2171, label %2172, label %2180

2172:                                             ; preds = %2168
  %2173 = getelementptr inbounds i8, ptr %2166, i64 1
  store ptr %2173, ptr %6, align 8, !tbaa !19
  %2174 = load i8, ptr %2166, align 1, !tbaa !15
  %2175 = zext i8 %2174 to i64
  %2176 = getelementptr inbounds [256 x i8], ptr @PL_uudmap, i64 0, i64 %2175
  %2177 = load i8, ptr %2176, align 1, !tbaa !15
  %2178 = and i8 %2177, 63
  %2179 = zext nneg i8 %2178 to i32
  br label %2180

2180:                                             ; preds = %2164, %2168, %2172
  %2181 = phi ptr [ %2173, %2172 ], [ %2166, %2168 ], [ %2166, %2164 ]
  %2182 = phi i32 [ %2179, %2172 ], [ 0, %2168 ], [ 0, %2164 ]
  %2183 = icmp ult ptr %2181, %3
  br i1 %2183, label %2184, label %2196

2184:                                             ; preds = %2180
  %2185 = load i8, ptr %2181, align 1, !tbaa !15
  %2186 = add i8 %2185, -32
  %2187 = icmp ult i8 %2186, 65
  br i1 %2187, label %2188, label %2196

2188:                                             ; preds = %2184
  %2189 = getelementptr inbounds i8, ptr %2181, i64 1
  store ptr %2189, ptr %6, align 8, !tbaa !19
  %2190 = load i8, ptr %2181, align 1, !tbaa !15
  %2191 = zext i8 %2190 to i64
  %2192 = getelementptr inbounds [256 x i8], ptr @PL_uudmap, i64 0, i64 %2191
  %2193 = load i8, ptr %2192, align 1, !tbaa !15
  %2194 = and i8 %2193, 63
  %2195 = zext nneg i8 %2194 to i32
  br label %2196

2196:                                             ; preds = %2180, %2184, %2188
  %2197 = phi ptr [ %2189, %2188 ], [ %2181, %2184 ], [ %2181, %2180 ]
  %2198 = phi i32 [ %2195, %2188 ], [ 0, %2184 ], [ 0, %2180 ]
  %2199 = icmp ult ptr %2197, %3
  br i1 %2199, label %2200, label %2212

2200:                                             ; preds = %2196
  %2201 = load i8, ptr %2197, align 1, !tbaa !15
  %2202 = add i8 %2201, -32
  %2203 = icmp ult i8 %2202, 65
  br i1 %2203, label %2204, label %2212

2204:                                             ; preds = %2200
  %2205 = getelementptr inbounds i8, ptr %2197, i64 1
  store ptr %2205, ptr %6, align 8, !tbaa !19
  %2206 = load i8, ptr %2197, align 1, !tbaa !15
  %2207 = zext i8 %2206 to i64
  %2208 = getelementptr inbounds [256 x i8], ptr @PL_uudmap, i64 0, i64 %2207
  %2209 = load i8, ptr %2208, align 1, !tbaa !15
  %2210 = and i8 %2209, 63
  %2211 = zext nneg i8 %2210 to i32
  br label %2212

2212:                                             ; preds = %2196, %2200, %2204
  %2213 = phi ptr [ %2205, %2204 ], [ %2197, %2200 ], [ %2197, %2196 ]
  %2214 = phi i32 [ %2211, %2204 ], [ 0, %2200 ], [ 0, %2196 ]
  %2215 = icmp ult ptr %2213, %3
  br i1 %2215, label %2216, label %2228

2216:                                             ; preds = %2212
  %2217 = load i8, ptr %2213, align 1, !tbaa !15
  %2218 = add i8 %2217, -32
  %2219 = icmp ult i8 %2218, 65
  br i1 %2219, label %2220, label %2228

2220:                                             ; preds = %2216
  %2221 = getelementptr inbounds i8, ptr %2213, i64 1
  store ptr %2221, ptr %6, align 8, !tbaa !19
  %2222 = load i8, ptr %2213, align 1, !tbaa !15
  %2223 = zext i8 %2222 to i64
  %2224 = getelementptr inbounds [256 x i8], ptr @PL_uudmap, i64 0, i64 %2223
  %2225 = load i8, ptr %2224, align 1, !tbaa !15
  %2226 = and i8 %2225, 63
  %2227 = zext nneg i8 %2226 to i32
  br label %2228

2228:                                             ; preds = %2212, %2216, %2220
  %2229 = phi i32 [ %2227, %2220 ], [ 0, %2216 ], [ 0, %2212 ]
  %2230 = shl nuw nsw i32 %2182, 2
  %2231 = lshr i32 %2198, 4
  %2232 = or i32 %2231, %2230
  %2233 = trunc i32 %2232 to i8
  store i8 %2233, ptr %32, align 1, !tbaa !15
  %2234 = shl nuw nsw i32 %2198, 4
  %2235 = lshr i32 %2214, 2
  %2236 = or i32 %2235, %2234
  %2237 = trunc i32 %2236 to i8
  store i8 %2237, ptr %61, align 1, !tbaa !15
  %2238 = shl nuw nsw i32 %2214, 6
  %2239 = or i32 %2229, %2238
  %2240 = trunc i32 %2239 to i8
  store i8 %2240, ptr %62, align 1, !tbaa !15
  br i1 %2127, label %2241, label %2244

2241:                                             ; preds = %2228
  %2242 = call i32 @llvm.smin.i32(i32 %2165, i32 3)
  %2243 = zext nneg i32 %2242 to i64
  call void @Perl_sv_catpvn_flags(ptr noundef %2142, ptr noundef nonnull %32, i64 noundef %2243, i32 noundef 2) #16
  br label %2244

2244:                                             ; preds = %2241, %2228
  %2245 = add nsw i32 %2165, -3
  %2246 = icmp sgt i32 %2165, 3
  br i1 %2246, label %2164, label %2247, !llvm.loop !88

2247:                                             ; preds = %2244
  %2248 = load ptr, ptr %6, align 8, !tbaa !19
  br label %2249

2249:                                             ; preds = %2247, %2153
  %2250 = phi ptr [ %2155, %2153 ], [ %2248, %2247 ]
  %2251 = phi i32 [ 0, %2153 ], [ %2245, %2247 ]
  %2252 = load i8, ptr %2250, align 1, !tbaa !15
  %2253 = icmp eq i8 %2252, 10
  %2254 = getelementptr inbounds i8, ptr %2250, i64 1
  br i1 %2253, label %2255, label %2256

2255:                                             ; preds = %2249
  store ptr %2254, ptr %6, align 8, !tbaa !19
  br label %2263

2256:                                             ; preds = %2249
  %2257 = icmp ult ptr %2254, %3
  br i1 %2257, label %2258, label %2263

2258:                                             ; preds = %2256
  %2259 = load i8, ptr %2254, align 1, !tbaa !15
  %2260 = icmp eq i8 %2259, 10
  br i1 %2260, label %2261, label %2263

2261:                                             ; preds = %2258
  %2262 = getelementptr inbounds i8, ptr %2250, i64 2
  store ptr %2262, ptr %6, align 8, !tbaa !19
  br label %2263

2263:                                             ; preds = %2256, %2258, %2261, %2255
  %2264 = phi ptr [ %2250, %2256 ], [ %2250, %2258 ], [ %2262, %2261 ], [ %2254, %2255 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %32) #14
  %2265 = icmp ult ptr %2264, %3
  br i1 %2265, label %2149, label %2266, !llvm.loop !87

2266:                                             ; preds = %2149, %2263, %2145, %2141
  %2267 = phi i32 [ %149, %2141 ], [ %149, %2145 ], [ %2251, %2263 ], [ %2251, %2149 ]
  br i1 %2127, label %2268, label %2287

2268:                                             ; preds = %2266
  %2269 = load ptr, ptr @PL_stack_max, align 8, !tbaa !19
  %2270 = ptrtoint ptr %2269 to i64
  %2271 = ptrtoint ptr %150 to i64
  %2272 = sub i64 %2270, %2271
  %2273 = icmp slt i64 %2272, 8
  br i1 %2273, label %2274, label %2276

2274:                                             ; preds = %2268
  %2275 = call ptr @Perl_stack_grow(ptr noundef %150, ptr noundef %150, i64 noundef 1) #16
  br label %2276

2276:                                             ; preds = %2268, %2274
  %2277 = phi ptr [ %2275, %2274 ], [ %150, %2268 ]
  %2278 = getelementptr inbounds ptr, ptr %2277, i64 1
  store ptr %2142, ptr %2278, align 8, !tbaa !19
  br label %2354

2279:                                             ; preds = %2121, %2093, %2065, %2034, %2000, %1849, %1829, %1780, %1731, %1697, %1661, %1627, %1593, %1559, %1515, %1471, %1422, %1373, %1326, %1115, %833, %823, %1167, %1212, %1202, %1181, %510, %460, %192, %155, %162, %169, %176, %184, %200, %1786, %1737, %206, %214, %222, %230, %238, %1521, %1477, %1428, %1379, %1335, %1261, %1058, %821, %822, %1128, %1196, %500, %433, %1289, %491, %1932, %1936, %1226, %927, %808, %803, %1949, %1967, %1224, %1230, %1052, %1053, %528, %473, %394, %386, %382, %743, %423, %352, %280
  %2280 = phi i32 [ %149, %1967 ], [ %149, %1949 ], [ 0, %1230 ], [ 0, %1224 ], [ 0, %1053 ], [ 0, %1052 ], [ %724, %743 ], [ %498, %528 ], [ %495, %491 ], [ %465, %473 ], [ %398, %423 ], [ %149, %394 ], [ %384, %386 ], [ %384, %382 ], [ %319, %352 ], [ %281, %280 ], [ %913, %927 ], [ %805, %808 ], [ 0, %803 ], [ 0, %1226 ], [ %1923, %1936 ], [ %1923, %1932 ], [ %1275, %1289 ], [ %149, %433 ], [ %498, %500 ], [ %1194, %1196 ], [ %1129, %1128 ], [ %819, %822 ], [ %819, %821 ], [ %1059, %1058 ], [ %1264, %1261 ], [ %1336, %1335 ], [ %1380, %1379 ], [ %1429, %1428 ], [ %1478, %1477 ], [ %1522, %1521 ], [ %239, %238 ], [ %231, %230 ], [ %223, %222 ], [ %215, %214 ], [ %207, %206 ], [ %1738, %1737 ], [ %1787, %1786 ], [ %201, %200 ], [ %185, %184 ], [ %177, %176 ], [ %170, %169 ], [ %163, %162 ], [ %156, %155 ], [ %149, %192 ], [ 0, %460 ], [ 0, %510 ], [ -1, %1181 ], [ -1, %1202 ], [ -1, %1212 ], [ %1172, %1167 ], [ -1, %823 ], [ -1, %833 ], [ %1120, %1115 ], [ %1331, %1326 ], [ -1, %1373 ], [ -1, %1422 ], [ -1, %1471 ], [ -1, %1515 ], [ -1, %1559 ], [ -1, %1593 ], [ -1, %1627 ], [ -1, %1661 ], [ -1, %1697 ], [ -1, %1731 ], [ -1, %1780 ], [ -1, %1829 ], [ -1, %1849 ], [ -1, %2000 ], [ -1, %2034 ], [ -1, %2065 ], [ -1, %2093 ], [ -1, %2121 ]
  %2281 = phi i8 [ %100, %1967 ], [ %100, %1949 ], [ %100, %1230 ], [ %100, %1224 ], [ %1057, %1053 ], [ %100, %1052 ], [ %100, %743 ], [ %100, %528 ], [ %100, %491 ], [ %100, %473 ], [ %100, %423 ], [ %100, %394 ], [ %100, %386 ], [ %100, %382 ], [ %100, %352 ], [ %100, %280 ], [ %100, %927 ], [ %100, %808 ], [ %100, %803 ], [ 0, %1226 ], [ %100, %1936 ], [ %100, %1932 ], [ %100, %1289 ], [ %100, %433 ], [ %100, %500 ], [ %100, %1196 ], [ %100, %1128 ], [ %100, %822 ], [ %100, %821 ], [ %100, %1058 ], [ %100, %1261 ], [ %100, %1335 ], [ %100, %1379 ], [ %100, %1428 ], [ %100, %1477 ], [ %100, %1521 ], [ %100, %238 ], [ %100, %230 ], [ %100, %222 ], [ %100, %214 ], [ %100, %206 ], [ %100, %1737 ], [ %100, %1786 ], [ %100, %200 ], [ %100, %184 ], [ %100, %176 ], [ %100, %169 ], [ %100, %162 ], [ %100, %155 ], [ %100, %192 ], [ %100, %460 ], [ %100, %510 ], [ %100, %1181 ], [ %100, %1202 ], [ %100, %1212 ], [ %100, %1167 ], [ %100, %823 ], [ %100, %833 ], [ %100, %1115 ], [ %100, %1326 ], [ %100, %1373 ], [ %100, %1422 ], [ %100, %1471 ], [ %100, %1515 ], [ %100, %1559 ], [ %100, %1593 ], [ %100, %1627 ], [ %100, %1661 ], [ %100, %1697 ], [ %100, %1731 ], [ %100, %1780 ], [ %100, %1829 ], [ %100, %1849 ], [ %100, %2000 ], [ %100, %2034 ], [ %100, %2065 ], [ %100, %2093 ], [ %100, %2121 ]
  %2282 = phi double [ %102, %1967 ], [ %102, %1949 ], [ %102, %1230 ], [ %102, %1224 ], [ %102, %1053 ], [ %102, %1052 ], [ %102, %743 ], [ %102, %528 ], [ %102, %491 ], [ %102, %473 ], [ %102, %423 ], [ %102, %394 ], [ %102, %386 ], [ %102, %382 ], [ %102, %352 ], [ %102, %280 ], [ %102, %927 ], [ %102, %808 ], [ %102, %803 ], [ %102, %1226 ], [ %102, %1936 ], [ %102, %1932 ], [ %1278, %1289 ], [ %102, %433 ], [ %102, %500 ], [ %102, %1196 ], [ %102, %1128 ], [ %102, %822 ], [ %102, %821 ], [ %102, %1058 ], [ %102, %1261 ], [ %102, %1335 ], [ %102, %1379 ], [ %102, %1428 ], [ %102, %1477 ], [ %102, %1521 ], [ %102, %238 ], [ %102, %230 ], [ %102, %222 ], [ %102, %214 ], [ %102, %206 ], [ %102, %1737 ], [ %102, %1786 ], [ %102, %200 ], [ %102, %184 ], [ %102, %176 ], [ %102, %169 ], [ %102, %162 ], [ %102, %155 ], [ %102, %192 ], [ %102, %460 ], [ %102, %510 ], [ %102, %1181 ], [ %1209, %1202 ], [ %102, %1212 ], [ %1169, %1167 ], [ %102, %823 ], [ %102, %833 ], [ %1117, %1115 ], [ %1328, %1326 ], [ %1374, %1373 ], [ %1423, %1422 ], [ %1472, %1471 ], [ %1516, %1515 ], [ %1560, %1559 ], [ %1594, %1593 ], [ %1628, %1627 ], [ %1662, %1661 ], [ %1698, %1697 ], [ %1732, %1731 ], [ %1781, %1780 ], [ %1830, %1829 ], [ %102, %1849 ], [ %2001, %2000 ], [ %2035, %2034 ], [ %2066, %2065 ], [ %2094, %2093 ], [ %2122, %2121 ]
  %2283 = phi i64 [ %103, %1967 ], [ %103, %1949 ], [ %103, %1230 ], [ %103, %1224 ], [ %103, %1053 ], [ %103, %1052 ], [ %103, %743 ], [ %103, %528 ], [ %103, %491 ], [ %103, %473 ], [ %103, %423 ], [ %103, %394 ], [ %103, %386 ], [ %103, %382 ], [ %103, %352 ], [ %103, %280 ], [ %103, %927 ], [ %806, %808 ], [ %806, %803 ], [ %103, %1226 ], [ %103, %1936 ], [ %103, %1932 ], [ %1277, %1289 ], [ %103, %433 ], [ %103, %500 ], [ %103, %1196 ], [ %103, %1128 ], [ %806, %822 ], [ %806, %821 ], [ %103, %1058 ], [ %103, %1261 ], [ %103, %1335 ], [ %103, %1379 ], [ %103, %1428 ], [ %103, %1477 ], [ %103, %1521 ], [ %103, %238 ], [ %103, %230 ], [ %103, %222 ], [ %103, %214 ], [ %103, %206 ], [ %103, %1737 ], [ %103, %1786 ], [ %103, %200 ], [ %103, %184 ], [ %103, %176 ], [ %103, %169 ], [ %103, %162 ], [ %103, %155 ], [ %103, %192 ], [ %103, %460 ], [ %103, %510 ], [ %103, %1181 ], [ %103, %1202 ], [ %1219, %1212 ], [ %1170, %1167 ], [ %829, %823 ], [ %839, %833 ], [ %1118, %1115 ], [ %1329, %1326 ], [ %1375, %1373 ], [ %1424, %1422 ], [ %1473, %1471 ], [ %1517, %1515 ], [ %1561, %1559 ], [ %1595, %1593 ], [ %1629, %1627 ], [ %1663, %1661 ], [ %1699, %1697 ], [ %1733, %1731 ], [ %1782, %1780 ], [ %1831, %1829 ], [ %103, %1849 ], [ %2002, %2000 ], [ %2036, %2034 ], [ %103, %2065 ], [ %103, %2093 ], [ %103, %2121 ]
  %2284 = phi ptr [ %105, %1967 ], [ %105, %1949 ], [ %105, %1230 ], [ %105, %1224 ], [ %105, %1053 ], [ %105, %1052 ], [ %725, %743 ], [ %105, %528 ], [ %105, %491 ], [ %105, %473 ], [ %105, %423 ], [ %105, %394 ], [ %105, %386 ], [ %105, %382 ], [ %105, %352 ], [ %105, %280 ], [ %847, %927 ], [ %105, %808 ], [ %105, %803 ], [ %105, %1226 ], [ %1926, %1936 ], [ %1926, %1932 ], [ %105, %1289 ], [ %105, %433 ], [ %105, %500 ], [ %105, %1196 ], [ %105, %1128 ], [ %105, %822 ], [ %105, %821 ], [ %105, %1058 ], [ %105, %1261 ], [ %105, %1335 ], [ %105, %1379 ], [ %105, %1428 ], [ %105, %1477 ], [ %105, %1521 ], [ %105, %238 ], [ %105, %230 ], [ %105, %222 ], [ %105, %214 ], [ %105, %206 ], [ %105, %1737 ], [ %105, %1786 ], [ %105, %200 ], [ %105, %184 ], [ %105, %176 ], [ %105, %169 ], [ %105, %162 ], [ %105, %155 ], [ %105, %192 ], [ %105, %460 ], [ %105, %510 ], [ %105, %1181 ], [ %105, %1202 ], [ %105, %1212 ], [ %105, %1167 ], [ %105, %823 ], [ %105, %833 ], [ %105, %1115 ], [ %105, %1326 ], [ %105, %1373 ], [ %105, %1422 ], [ %105, %1471 ], [ %105, %1515 ], [ %105, %1559 ], [ %105, %1593 ], [ %105, %1627 ], [ %105, %1661 ], [ %105, %1697 ], [ %105, %1731 ], [ %105, %1780 ], [ %105, %1829 ], [ %105, %1849 ], [ %105, %2000 ], [ %105, %2034 ], [ %105, %2065 ], [ %105, %2093 ], [ %105, %2121 ]
  %2285 = phi ptr [ %1971, %1967 ], [ %1950, %1949 ], [ %150, %1230 ], [ %150, %1224 ], [ %150, %1053 ], [ %150, %1052 ], [ %746, %743 ], [ %150, %528 ], [ %150, %491 ], [ %150, %473 ], [ %150, %423 ], [ %150, %394 ], [ %150, %386 ], [ %150, %382 ], [ %355, %352 ], [ %282, %280 ], [ %929, %927 ], [ %150, %808 ], [ %150, %803 ], [ %150, %1226 ], [ %1927, %1936 ], [ %1927, %1932 ], [ %1276, %1289 ], [ %150, %433 ], [ %150, %500 ], [ %150, %1196 ], [ %150, %1128 ], [ %150, %822 ], [ %150, %821 ], [ %150, %1058 ], [ %1263, %1261 ], [ %150, %1335 ], [ %150, %1379 ], [ %150, %1428 ], [ %150, %1477 ], [ %150, %1521 ], [ %150, %238 ], [ %150, %230 ], [ %150, %222 ], [ %150, %214 ], [ %150, %206 ], [ %150, %1737 ], [ %150, %1786 ], [ %150, %200 ], [ %150, %184 ], [ %150, %176 ], [ %150, %169 ], [ %150, %162 ], [ %150, %155 ], [ %150, %192 ], [ %150, %460 ], [ %150, %510 ], [ %1188, %1181 ], [ %150, %1202 ], [ %150, %1212 ], [ %1171, %1167 ], [ %150, %823 ], [ %150, %833 ], [ %1119, %1115 ], [ %1330, %1326 ], [ %1376, %1373 ], [ %1425, %1422 ], [ %1474, %1471 ], [ %1518, %1515 ], [ %1562, %1559 ], [ %1596, %1593 ], [ %1630, %1627 ], [ %1664, %1661 ], [ %1700, %1697 ], [ %1734, %1731 ], [ %1783, %1780 ], [ %1832, %1829 ], [ %1853, %1849 ], [ %2003, %2000 ], [ %2037, %2034 ], [ %2067, %2065 ], [ %2095, %2093 ], [ %2123, %2121 ]
  %2286 = icmp eq i32 %104, 0
  br i1 %2286, label %2354, label %2287

2287:                                             ; preds = %1199, %2266, %1029, %2279
  %2288 = phi ptr [ %2285, %2279 ], [ %150, %1029 ], [ %150, %2266 ], [ %150, %1199 ]
  %2289 = phi i64 [ %2283, %2279 ], [ %103, %1029 ], [ %103, %2266 ], [ %103, %1199 ]
  %2290 = phi double [ %2282, %2279 ], [ %102, %1029 ], [ %102, %2266 ], [ %102, %1199 ]
  %2291 = phi i8 [ %2281, %2279 ], [ %100, %1029 ], [ %100, %2266 ], [ %100, %1199 ]
  %2292 = phi i32 [ %2280, %2279 ], [ %1030, %1029 ], [ %2267, %2266 ], [ %1194, %1199 ]
  %2293 = and i32 %98, 255
  %2294 = call ptr @memchr(ptr nonnull dereferenceable(1) @.str.12, i32 %2293, i64 5)
  %2295 = icmp eq ptr %2294, null
  br i1 %2295, label %2296, label %2305

2296:                                             ; preds = %2287
  %2297 = icmp sgt i32 %104, 64
  br i1 %2297, label %2298, label %2331

2298:                                             ; preds = %2296
  %2299 = call ptr @memchr(ptr nonnull dereferenceable(1) @.str.13, i32 %2293, i64 19)
  %2300 = icmp eq ptr %2299, null
  br i1 %2300, label %2331, label %2301

2301:                                             ; preds = %2298
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %33) #14
  %2302 = and i32 %104, 15
  %2303 = shl nuw nsw i32 1, %2302
  %2304 = sitofp i32 %2303 to double
  br label %2310

2305:                                             ; preds = %2287
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %33) #14
  %2306 = and i32 %104, 15
  %2307 = shl nuw nsw i32 1, %2306
  %2308 = sitofp i32 %2307 to double
  %2309 = icmp sgt i32 %104, 15
  br i1 %2309, label %2310, label %2312

2310:                                             ; preds = %2301, %2305
  %2311 = phi double [ %2308, %2305 ], [ %2304, %2301 ]
  br label %2315

2312:                                             ; preds = %2315, %2305
  %2313 = phi double [ %2308, %2305 ], [ %2319, %2315 ]
  %2314 = fcmp olt double %2290, 0.000000e+00
  br i1 %2314, label %2321, label %2325

2315:                                             ; preds = %2310, %2315
  %2316 = phi double [ %2319, %2315 ], [ %2311, %2310 ]
  %2317 = phi i32 [ %2318, %2315 ], [ %104, %2310 ]
  %2318 = add nsw i32 %2317, -16
  %2319 = fmul double %2316, 6.553600e+04
  %2320 = icmp ugt i32 %2317, 31
  br i1 %2320, label %2315, label %2312, !llvm.loop !89

2321:                                             ; preds = %2312, %2321
  %2322 = phi double [ %2323, %2321 ], [ %2290, %2312 ]
  %2323 = fadd double %2313, %2322
  %2324 = fcmp olt double %2323, 0.000000e+00
  br i1 %2324, label %2321, label %2325, !llvm.loop !90

2325:                                             ; preds = %2321, %2312
  %2326 = phi double [ %2290, %2312 ], [ %2323, %2321 ]
  %2327 = fdiv double %2326, %2313
  %2328 = call double @modf(double noundef %2327, ptr noundef nonnull %33) #16
  %2329 = fmul double %2313, %2328
  %2330 = call ptr @Perl_newSVnv(double noundef %2329) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %33) #14
  br label %2339

2331:                                             ; preds = %2298, %2296
  %2332 = icmp slt i32 %104, 64
  %2333 = zext nneg i32 %104 to i64
  %2334 = shl nsw i64 -1, %2333
  %2335 = xor i64 %2334, -1
  %2336 = select i1 %2332, i64 %2335, i64 -1
  %2337 = and i64 %2289, %2336
  %2338 = call ptr @Perl_newSVuv(i64 noundef %2337) #16
  br label %2339

2339:                                             ; preds = %2331, %2325
  %2340 = phi double [ %2329, %2325 ], [ %2290, %2331 ]
  %2341 = phi i64 [ %2289, %2325 ], [ %2337, %2331 ]
  %2342 = phi ptr [ %2330, %2325 ], [ %2338, %2331 ]
  %2343 = load ptr, ptr @PL_stack_max, align 8, !tbaa !19
  %2344 = ptrtoint ptr %2343 to i64
  %2345 = ptrtoint ptr %2288 to i64
  %2346 = sub i64 %2344, %2345
  %2347 = icmp slt i64 %2346, 8
  br i1 %2347, label %2348, label %2350

2348:                                             ; preds = %2339
  %2349 = call ptr @Perl_stack_grow(ptr noundef %2288, ptr noundef %2288, i64 noundef 1) #16
  br label %2350

2350:                                             ; preds = %2339, %2348
  %2351 = phi ptr [ %2349, %2348 ], [ %2288, %2339 ]
  %2352 = call ptr @Perl_sv_2mortal(ptr noundef %2342) #16
  %2353 = getelementptr inbounds ptr, ptr %2351, i64 1
  store ptr %2352, ptr %2353, align 8, !tbaa !19
  br label %2354

2354:                                             ; preds = %1178, %2276, %1047, %2350, %2279
  %2355 = phi i8 [ %2291, %2350 ], [ %2281, %2279 ], [ %100, %1047 ], [ %100, %2276 ], [ %100, %1178 ]
  %2356 = phi i32 [ %2292, %2350 ], [ %2280, %2279 ], [ %1030, %1047 ], [ %2267, %2276 ], [ %1179, %1178 ]
  %2357 = phi double [ %2340, %2350 ], [ %2282, %2279 ], [ %102, %1047 ], [ %102, %2276 ], [ %102, %1178 ]
  %2358 = phi i64 [ %2341, %2350 ], [ %2283, %2279 ], [ %103, %1047 ], [ %103, %2276 ], [ %103, %1178 ]
  %2359 = phi ptr [ %2342, %2350 ], [ %2284, %2279 ], [ %960, %1047 ], [ %2142, %2276 ], [ %105, %1178 ]
  %2360 = phi ptr [ %2353, %2350 ], [ %2285, %2279 ], [ %1049, %1047 ], [ %2278, %2276 ], [ %150, %1178 ]
  %2361 = load i32, ptr %39, align 8, !tbaa !14
  %2362 = and i32 %2361, 4
  %2363 = icmp eq i32 %2362, 0
  br i1 %2363, label %2403, label %2364

2364:                                             ; preds = %2354
  %2365 = load ptr, ptr @PL_stack_base, align 8, !tbaa !19
  %2366 = ptrtoint ptr %2360 to i64
  %2367 = ptrtoint ptr %2365 to i64
  %2368 = sub i64 %2366, %2367
  %2369 = ashr exact i64 %2368, 3
  %2370 = icmp sgt i64 %2369, %71
  br i1 %2370, label %2371, label %2411

2371:                                             ; preds = %2364
  %2372 = call fastcc zeroext i1 @S_next_symbol(ptr noundef nonnull %0) #15
  br i1 %2372, label %2373, label %2395

2373:                                             ; preds = %2371
  %2374 = load i32, ptr %56, align 8, !tbaa !22
  %2375 = icmp eq i32 %2374, 1
  br i1 %2375, label %2376, label %2377

2376:                                             ; preds = %2373
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.14) #16
  br label %2377

2377:                                             ; preds = %2376, %2373
  br i1 %108, label %2378, label %2395

2378:                                             ; preds = %2377
  %2379 = getelementptr inbounds ptr, ptr %2360, i64 -1
  %2380 = load ptr, ptr %2360, align 8, !tbaa !19
  store ptr %2380, ptr @PL_Sv, align 8, !tbaa !19
  %2381 = getelementptr inbounds %struct.sv, ptr %2380, i64 0, i32 2
  %2382 = load i32, ptr %2381, align 4, !tbaa !42
  %2383 = and i32 %2382, 2097408
  %2384 = icmp eq i32 %2383, 256
  br i1 %2384, label %2385, label %2389

2385:                                             ; preds = %2378
  %2386 = load ptr, ptr %2380, align 8, !tbaa !50
  %2387 = getelementptr inbounds %struct.xpviv, ptr %2386, i64 0, i32 4
  %2388 = load i64, ptr %2387, align 8, !tbaa !15
  br label %2391

2389:                                             ; preds = %2378
  %2390 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %2380, i32 noundef 2) #16
  br label %2391

2391:                                             ; preds = %2389, %2385
  %2392 = phi i64 [ %2388, %2385 ], [ %2390, %2389 ]
  %2393 = trunc i64 %2392 to i32
  %2394 = icmp slt i32 %2393, 0
  br i1 %2394, label %2395, label %2399

2395:                                             ; preds = %2371, %2391, %2377
  %2396 = phi ptr [ @.str.15, %2377 ], [ @.str.16, %2391 ], [ @.str.17, %2371 ]
  %2397 = phi i32 [ %2356, %2377 ], [ %2393, %2391 ], [ %2356, %2371 ]
  %2398 = phi ptr [ %2360, %2377 ], [ %2379, %2391 ], [ %2360, %2371 ]
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull %2396) #16
  br label %2399

2399:                                             ; preds = %2395, %2391
  %2400 = phi i32 [ %2393, %2391 ], [ %2397, %2395 ]
  %2401 = phi ptr [ %2379, %2391 ], [ %2398, %2395 ]
  %2402 = load i32, ptr %52, align 8, !tbaa !21
  br label %97

2403:                                             ; preds = %2354, %248
  %2404 = phi i8 [ %100, %248 ], [ %2355, %2354 ]
  %2405 = phi double [ 0.000000e+00, %248 ], [ %2357, %2354 ]
  %2406 = phi i64 [ 0, %248 ], [ %2358, %2354 ]
  %2407 = phi i32 [ %250, %248 ], [ 0, %2354 ]
  %2408 = phi ptr [ %105, %248 ], [ %2359, %2354 ]
  %2409 = phi ptr [ %150, %248 ], [ %2360, %2354 ]
  %2410 = call fastcc zeroext i1 @S_next_symbol(ptr noundef nonnull %0) #15
  br i1 %2410, label %72, label %2411

2411:                                             ; preds = %2403, %80, %2364, %5
  %2412 = phi ptr [ %34, %5 ], [ %2360, %2364 ], [ %2409, %2403 ], [ %73, %80 ]
  %2413 = icmp eq ptr %4, null
  br i1 %2413, label %2416, label %2414

2414:                                             ; preds = %2411
  %2415 = load ptr, ptr %6, align 8, !tbaa !19
  store ptr %2415, ptr %4, align 8, !tbaa !19
  br label %2416

2416:                                             ; preds = %2414, %2411
  store ptr %2412, ptr @PL_stack_sp, align 8, !tbaa !19
  %2417 = load ptr, ptr @PL_stack_base, align 8, !tbaa !19
  %2418 = ptrtoint ptr %2412 to i64
  %2419 = ptrtoint ptr %2417 to i64
  %2420 = sub i64 %2418, %2419
  %2421 = lshr exact i64 %2420, 3
  %2422 = lshr i64 %38, 3
  %2423 = sub nsw i64 %2421, %2422
  %2424 = trunc i64 %2423 to i32
  ret i32 %2424
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_unpack() local_unnamed_addr #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !19
  %4 = getelementptr inbounds ptr, ptr %3, i64 -1
  %5 = load ptr, ptr %3, align 8, !tbaa !19
  %6 = getelementptr inbounds ptr, ptr %3, i64 -2
  %7 = load ptr, ptr %4, align 8, !tbaa !19
  %8 = load ptr, ptr @PL_op, align 8, !tbaa !19
  %9 = getelementptr inbounds %struct.op, ptr %8, i64 0, i32 5
  %10 = load i8, ptr %9, align 2, !tbaa !91
  %11 = and i8 %10, 3
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %0
  %14 = zext nneg i8 %11 to i32
  br label %17

15:                                               ; preds = %0
  %16 = tail call i32 @Perl_block_gimme() #16
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  %19 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !42
  %21 = and i32 %20, 2098176
  %22 = icmp eq i32 %21, 1024
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = load ptr, ptr %7, align 8, !tbaa !50
  %25 = getelementptr inbounds %struct.xpv, ptr %24, i64 0, i32 2
  %26 = load i64, ptr %25, align 8, !tbaa !51
  store i64 %26, ptr %1, align 8, !tbaa !5
  %27 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !15
  br label %31

29:                                               ; preds = %17
  %30 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %7, ptr noundef nonnull %1, i32 noundef 34) #16
  br label %31

31:                                               ; preds = %29, %23
  %32 = phi ptr [ %28, %23 ], [ %30, %29 ]
  %33 = getelementptr inbounds %struct.sv, ptr %5, i64 0, i32 2
  %34 = load i32, ptr %33, align 4, !tbaa !42
  %35 = and i32 %34, 2098176
  %36 = icmp eq i32 %35, 1024
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load ptr, ptr %5, align 8, !tbaa !50
  %39 = getelementptr inbounds %struct.xpv, ptr %38, i64 0, i32 2
  %40 = load i64, ptr %39, align 8, !tbaa !51
  store i64 %40, ptr %2, align 8, !tbaa !5
  %41 = getelementptr inbounds %struct.sv, ptr %5, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !15
  br label %47

43:                                               ; preds = %31
  %44 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %5, ptr noundef nonnull %2, i32 noundef 34) #16
  %45 = load i64, ptr %2, align 8, !tbaa !5
  %46 = load i32, ptr %33, align 4, !tbaa !42
  br label %47

47:                                               ; preds = %43, %37
  %48 = phi i32 [ %34, %37 ], [ %46, %43 ]
  %49 = phi i64 [ %40, %37 ], [ %45, %43 ]
  %50 = phi ptr [ %42, %37 ], [ %44, %43 ]
  %51 = getelementptr inbounds i8, ptr %50, i64 %49
  %52 = load i64, ptr %1, align 8, !tbaa !5
  %53 = getelementptr inbounds i8, ptr %32, i64 %52
  store ptr %6, ptr @PL_stack_sp, align 8, !tbaa !19
  %54 = icmp eq i32 %18, 2
  %55 = select i1 %54, i32 16, i32 0
  %56 = and i32 %48, 536870912
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %47
  %59 = load ptr, ptr @PL_curcop, align 8, !tbaa !19
  %60 = getelementptr inbounds %struct.cop, ptr %59, i64 0, i32 10
  %61 = load i32, ptr %60, align 8, !tbaa !93
  %62 = and i32 %61, 8
  %63 = xor i32 %62, 8
  br label %64

64:                                               ; preds = %58, %47
  %65 = phi i32 [ 0, %47 ], [ %63, %58 ]
  %66 = or i32 %65, %55
  %67 = call i32 @Perl_unpackstring(ptr noundef %32, ptr noundef %53, ptr noundef %50, ptr noundef %51, i32 noundef %66) #15
  %68 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !19
  %69 = icmp eq i32 %67, 0
  %70 = select i1 %69, i1 %54, i1 false
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = getelementptr inbounds ptr, ptr %68, i64 1
  store ptr @PL_sv_undef, ptr %72, align 8, !tbaa !19
  br label %73

73:                                               ; preds = %71, %64
  %74 = phi ptr [ %72, %71 ], [ %68, %64 ]
  store ptr %74, ptr @PL_stack_sp, align 8, !tbaa !19
  %75 = load ptr, ptr @PL_op, align 8, !tbaa !19
  %76 = load ptr, ptr %75, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #14
  ret ptr %76
}

; Function Attrs: optsize
declare i32 @Perl_block_gimme() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_packlist(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.tempsym, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #14
  store ptr %1, ptr %6, align 8, !tbaa !9
  %7 = getelementptr inbounds %struct.tempsym, ptr %6, i64 0, i32 1
  store ptr %2, ptr %7, align 8, !tbaa !13
  %8 = getelementptr inbounds %struct.tempsym, ptr %6, i64 0, i32 2
  %9 = getelementptr inbounds %struct.tempsym, ptr %6, i64 0, i32 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i64 32, i1 false)
  store i32 1, ptr %9, align 8, !tbaa !14
  %10 = getelementptr inbounds %struct.tempsym, ptr %6, i64 0, i32 9
  %11 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  %12 = load i32, ptr %11, align 4, !tbaa !42
  %13 = and i32 %12, 430018304
  %14 = icmp eq i32 %13, 1024
  br i1 %14, label %18, label %15

15:                                               ; preds = %5
  %16 = tail call ptr @Perl_sv_pvn_force_flags(ptr noundef nonnull %0, ptr noundef null, i32 noundef 2) #16
  %17 = load i32, ptr %11, align 4, !tbaa !42
  br label %18

18:                                               ; preds = %5, %15
  %19 = phi i32 [ %12, %5 ], [ %17, %15 ]
  %20 = and i32 %19, 536870912
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr @PL_curcop, align 8, !tbaa !19
  %24 = getelementptr inbounds %struct.cop, ptr %23, i64 0, i32 10
  %25 = load i32, ptr %24, align 8, !tbaa !93
  %26 = and i32 %25, 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 41, ptr %9, align 8, !tbaa !14
  br label %29

29:                                               ; preds = %28, %22, %18
  %30 = call fastcc ptr @S_pack_rec(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef %3, ptr noundef %4) #15
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #14
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_sv_pvn_force_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @S_pack_rec(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.tempsym, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i64, align 8
  %14 = alloca i8, align 1
  %15 = alloca i64, align 8
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  %20 = alloca [13 x i8], align 1
  %21 = alloca float, align 4
  %22 = alloca double, align 8
  %23 = alloca %union.NV_bytes, align 8
  %24 = alloca i16, align 2
  %25 = alloca i16, align 2
  %26 = alloca i16, align 2
  %27 = alloca i16, align 2
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca [10 x i8], align 1
  %32 = alloca [155 x i8], align 16
  %33 = alloca i64, align 8
  %34 = alloca i8, align 1
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i64, align 8
  %39 = alloca i32, align 4
  %40 = alloca i64, align 8
  %41 = alloca i32, align 4
  %42 = alloca i64, align 8
  %43 = alloca i64, align 8
  %44 = alloca ptr, align 8
  %45 = alloca ptr, align 8
  %46 = alloca [86 x i8], align 16
  %47 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #14
  %48 = ptrtoint ptr %3 to i64
  %49 = ptrtoint ptr %2 to i64
  %50 = sub i64 %48, %49
  %51 = lshr exact i64 %50, 3
  %52 = trunc i64 %51 to i32
  %53 = tail call fastcc zeroext i1 @S_next_symbol(ptr noundef %1) #15
  %54 = getelementptr inbounds %struct.tempsym, ptr %1, i64 0, i32 8
  %55 = load i32, ptr %54, align 8, !tbaa !14
  %56 = trunc i32 %55 to i8
  %57 = lshr i8 %56, 5
  %58 = and i8 %57, 1
  %59 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 44) #16
  %60 = getelementptr inbounds %struct.tempsym, ptr %1, i64 0, i32 7
  %61 = load i32, ptr %60, align 4, !tbaa !29
  %62 = icmp eq i32 %61, 0
  %63 = and i1 %53, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %4
  %65 = getelementptr inbounds %struct.tempsym, ptr %1, i64 0, i32 4
  %66 = load i32, ptr %65, align 8, !tbaa !21
  %67 = icmp eq i32 %66, 85
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  tail call fastcc void @marked_upgrade(ptr noundef %0, ptr noundef nonnull %1) #15
  %69 = load i32, ptr %54, align 8, !tbaa !14
  %70 = or i32 %69, 8
  store i32 %70, ptr %54, align 8, !tbaa !14
  br label %71

71:                                               ; preds = %4, %68, %64
  %72 = phi i8 [ 0, %68 ], [ %58, %64 ], [ %58, %4 ]
  %73 = load ptr, ptr %0, align 8, !tbaa !50
  %74 = getelementptr inbounds %struct.xpv, ptr %73, i64 0, i32 2
  %75 = load i64, ptr %74, align 8, !tbaa !51
  %76 = getelementptr inbounds %struct.tempsym, ptr %1, i64 0, i32 9
  store i64 %75, ptr %76, align 8, !tbaa !20
  br i1 %53, label %77, label %2881

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.tempsym, ptr %1, i64 0, i32 4
  %79 = getelementptr inbounds %struct.tempsym, ptr %1, i64 0, i32 6
  %80 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %81 = getelementptr inbounds %struct.tempsym, ptr %1, i64 0, i32 5
  %82 = getelementptr inbounds %struct.tempsym, ptr %5, i64 0, i32 4
  %83 = getelementptr inbounds %struct.tempsym, ptr %5, i64 0, i32 6
  %84 = getelementptr inbounds %struct.tempsym, ptr %5, i64 0, i32 5
  %85 = ptrtoint ptr %46 to i64
  %86 = getelementptr inbounds i8, ptr %32, i64 155
  %87 = getelementptr inbounds [155 x i8], ptr %32, i64 0, i64 154
  %88 = ptrtoint ptr %86 to i64
  %89 = getelementptr inbounds i8, ptr %31, i64 10
  %90 = getelementptr inbounds [10 x i8], ptr %31, i64 0, i64 9
  %91 = ptrtoint ptr %89 to i64
  %92 = ptrtoint ptr %20 to i64
  %93 = getelementptr inbounds %struct.tempsym, ptr %5, i64 0, i32 8
  %94 = getelementptr inbounds %struct.tempsym, ptr %5, i64 0, i32 9
  %95 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %96 = select i1 %59, i32 0, i32 -8161
  %97 = getelementptr inbounds i8, ptr %1, i64 16
  %98 = getelementptr inbounds i8, ptr %1, i64 24
  %99 = getelementptr inbounds %struct.tempsym, ptr %1, i64 0, i32 1
  %100 = getelementptr inbounds %struct.tempsym, ptr %1, i64 0, i32 10
  br label %101

101:                                              ; preds = %77, %2877
  %102 = phi ptr [ %2, %77 ], [ %2880, %2877 ]
  %103 = phi i32 [ %52, %77 ], [ %2879, %2877 ]
  %104 = phi i8 [ %72, %77 ], [ %2878, %2877 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  %105 = load i32, ptr %78, align 8, !tbaa !21
  %106 = load i32, ptr %79, align 8, !tbaa !22
  %107 = load ptr, ptr %80, align 8, !tbaa !15
  %108 = load ptr, ptr %0, align 8, !tbaa !50
  %109 = getelementptr inbounds %struct.xpv, ptr %108, i64 0, i32 2
  %110 = load i64, ptr %109, align 8, !tbaa !51
  %111 = getelementptr inbounds i8, ptr %107, i64 %110
  %112 = icmp eq i32 %106, 2
  br i1 %112, label %113, label %118

113:                                              ; preds = %101
  %114 = and i32 %105, 255
  %115 = call ptr @memchr(ptr nonnull dereferenceable(1) @.str.43, i32 %114, i64 5)
  %116 = icmp eq ptr %115, null
  %117 = select i1 %116, i32 %103, i32 0
  br label %120

118:                                              ; preds = %101
  %119 = load i32, ptr %81, align 4, !tbaa !23
  br label %120

120:                                              ; preds = %118, %113
  %121 = phi i32 [ %117, %113 ], [ %119, %118 ]
  %122 = freeze i32 %121
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %153, label %124

124:                                              ; preds = %120
  %125 = and i32 %105, -1537
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [512 x i8], ptr @packprops, i64 0, i64 %126
  %128 = load i8, ptr %127, align 1, !tbaa !15
  %129 = zext i8 %128 to i32
  %130 = icmp ne i8 %128, 0
  %131 = and i32 %129, 64
  %132 = icmp eq i32 %131, 0
  %133 = and i1 %130, %132
  br i1 %133, label %134, label %153

134:                                              ; preds = %124
  %135 = and i32 %129, 63
  %136 = zext nneg i32 %135 to i64
  %137 = sext i32 %122 to i64
  %138 = mul nsw i64 %136, %137
  %139 = and i8 %104, 1
  %140 = zext nneg i8 %139 to i64
  %141 = shl nsw i64 %138, %140
  %142 = getelementptr inbounds i8, ptr %111, i64 %141
  %143 = getelementptr inbounds %struct.xpv, ptr %108, i64 0, i32 3
  %144 = load i64, ptr %143, align 8, !tbaa !15
  %145 = getelementptr inbounds i8, ptr %107, i64 %144
  %146 = icmp ult ptr %142, %145
  br i1 %146, label %153, label %147

147:                                              ; preds = %134
  %148 = call fastcc ptr @S_sv_exp_grow(ptr noundef nonnull %0, i64 noundef %141) #15
  %149 = load ptr, ptr %0, align 8, !tbaa !50
  %150 = getelementptr inbounds %struct.xpv, ptr %149, i64 0, i32 2
  %151 = load i64, ptr %150, align 8, !tbaa !51
  %152 = getelementptr inbounds i8, ptr %148, i64 %151
  br label %153

153:                                              ; preds = %124, %147, %134, %120
  %154 = phi ptr [ %111, %120 ], [ %111, %124 ], [ %152, %147 ], [ %111, %134 ]
  %155 = phi ptr [ %107, %120 ], [ %107, %124 ], [ %148, %147 ], [ %107, %134 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false), !tbaa.struct !25
  %156 = call fastcc zeroext i1 @S_next_symbol(ptr noundef nonnull %5) #15
  %157 = load i32, ptr %54, align 8, !tbaa !14
  %158 = and i32 %157, 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %197, label %160

160:                                              ; preds = %153
  br i1 %156, label %162, label %161

161:                                              ; preds = %160
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.44) #16
  br label %162

162:                                              ; preds = %161, %160
  %163 = load i32, ptr %82, align 8, !tbaa !21
  %164 = call ptr @memchr(ptr nonnull dereferenceable(1) @.str.45, i32 %163, i64 4)
  %165 = icmp eq ptr %164, null
  %166 = load i32, ptr %83, align 8, !tbaa !22
  %167 = icmp eq i32 %166, 1
  br i1 %165, label %184, label %168

168:                                              ; preds = %162
  br i1 %167, label %169, label %172

169:                                              ; preds = %168
  %170 = load i32, ptr %84, align 4, !tbaa !23
  %171 = sext i32 %170 to i64
  br label %192

172:                                              ; preds = %168
  %173 = icmp sgt i32 %103, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %172
  %175 = load ptr, ptr %102, align 8, !tbaa !19
  %176 = call i64 @Perl_sv_len_utf8(ptr noundef %175) #16
  %177 = load i32, ptr %82, align 8, !tbaa !21
  br label %178

178:                                              ; preds = %172, %174
  %179 = phi i32 [ %177, %174 ], [ %163, %172 ]
  %180 = phi i64 [ %176, %174 ], [ 0, %172 ]
  %181 = icmp eq i32 %179, 90
  %182 = zext i1 %181 to i64
  %183 = add nsw i64 %180, %182
  br label %192

184:                                              ; preds = %162
  br i1 %167, label %185, label %190

185:                                              ; preds = %184
  %186 = load i32, ptr %84, align 4, !tbaa !23
  %187 = icmp slt i32 %186, %103
  br i1 %187, label %188, label %190

188:                                              ; preds = %185
  %189 = sext i32 %186 to i64
  br label %192

190:                                              ; preds = %185, %184
  %191 = sext i32 %103 to i64
  br label %192

192:                                              ; preds = %178, %188, %190, %169
  %193 = phi i64 [ %171, %169 ], [ %189, %188 ], [ %191, %190 ], [ %183, %178 ]
  store i32 1, ptr %83, align 8, !tbaa !22
  %194 = trunc i64 %193 to i32
  store i32 %194, ptr %84, align 4, !tbaa !23
  %195 = call ptr @Perl_newSViv(i64 noundef %193) #16
  %196 = call ptr @Perl_sv_2mortal(ptr noundef %195) #16
  br label %197

197:                                              ; preds = %192, %153
  %198 = phi ptr [ %196, %192 ], [ null, %153 ]
  %199 = and i32 %105, 1536
  %200 = icmp eq i32 %199, 512
  %201 = and i32 %105, -1537
  switch i32 %201, label %275 [
    i32 37, label %277
    i32 302, label %278
    i32 46, label %278
    i32 320, label %327
    i32 64, label %327
    i32 40, label %407
    i32 344, label %452
    i32 88, label %484
    i32 376, label %556
    i32 120, label %367
    i32 65, label %575
    i32 90, label %575
    i32 97, label %575
    i32 66, label %828
    i32 98, label %828
    i32 72, label %1026
    i32 104, label %1026
    i32 99, label %269
    i32 67, label %1301
    i32 87, label %1354
    i32 85, label %1510
    i32 102, label %263
    i32 100, label %257
    i32 70, label %1719
    i32 366, label %1756
    i32 110, label %1756
    i32 374, label %1800
    i32 118, label %1800
    i32 339, label %1843
    i32 83, label %1843
    i32 371, label %1889
    i32 115, label %1889
    i32 73, label %1935
    i32 329, label %1935
    i32 106, label %251
    i32 74, label %245
    i32 119, label %238
    i32 105, label %2276
    i32 361, label %2276
    i32 334, label %2322
    i32 78, label %2322
    i32 342, label %2366
    i32 86, label %2366
    i32 332, label %232
    i32 76, label %226
    i32 364, label %220
    i32 108, label %214
    i32 81, label %208
    i32 113, label %202
    i32 80, label %2645
    i32 112, label %2661
    i32 117, label %2742
  ]

202:                                              ; preds = %197
  %203 = icmp sgt i32 %122, 0
  br i1 %203, label %204, label %2866

204:                                              ; preds = %202
  %205 = icmp eq ptr %198, null
  %206 = and i8 %104, 1
  %207 = icmp eq i8 %206, 0
  br label %2606

208:                                              ; preds = %197
  %209 = icmp sgt i32 %122, 0
  br i1 %209, label %210, label %2866

210:                                              ; preds = %208
  %211 = icmp eq ptr %198, null
  %212 = and i8 %104, 1
  %213 = icmp eq i8 %212, 0
  br label %2567

214:                                              ; preds = %197
  %215 = icmp sgt i32 %122, 0
  br i1 %215, label %216, label %2866

216:                                              ; preds = %214
  %217 = icmp eq ptr %198, null
  %218 = and i8 %104, 1
  %219 = icmp eq i8 %218, 0
  br label %2527

220:                                              ; preds = %197
  %221 = icmp sgt i32 %122, 0
  br i1 %221, label %222, label %2866

222:                                              ; preds = %220
  %223 = icmp eq ptr %198, null
  %224 = and i8 %104, 1
  %225 = icmp eq i8 %224, 0
  br label %2488

226:                                              ; preds = %197
  %227 = icmp sgt i32 %122, 0
  br i1 %227, label %228, label %2866

228:                                              ; preds = %226
  %229 = icmp eq ptr %198, null
  %230 = and i8 %104, 1
  %231 = icmp eq i8 %230, 0
  br label %2448

232:                                              ; preds = %197
  %233 = icmp sgt i32 %122, 0
  br i1 %233, label %234, label %2866

234:                                              ; preds = %232
  %235 = icmp eq ptr %198, null
  %236 = and i8 %104, 1
  %237 = icmp eq i8 %236, 0
  br label %2409

238:                                              ; preds = %197
  %239 = icmp sgt i32 %122, 0
  br i1 %239, label %240, label %2866

240:                                              ; preds = %238
  %241 = icmp eq ptr %198, null
  %242 = and i8 %104, 1
  %243 = icmp eq i8 %242, 0
  %244 = zext nneg i8 %242 to i64
  br label %2059

245:                                              ; preds = %197
  %246 = icmp sgt i32 %122, 0
  br i1 %246, label %247, label %2866

247:                                              ; preds = %245
  %248 = icmp eq ptr %198, null
  %249 = and i8 %104, 1
  %250 = icmp eq i8 %249, 0
  br label %2020

251:                                              ; preds = %197
  %252 = icmp sgt i32 %122, 0
  br i1 %252, label %253, label %2866

253:                                              ; preds = %251
  %254 = icmp eq ptr %198, null
  %255 = and i8 %104, 1
  %256 = icmp eq i8 %255, 0
  br label %1981

257:                                              ; preds = %197
  %258 = icmp sgt i32 %122, 0
  br i1 %258, label %259, label %2866

259:                                              ; preds = %257
  %260 = icmp eq ptr %198, null
  %261 = and i8 %104, 1
  %262 = icmp eq i8 %261, 0
  br label %1681

263:                                              ; preds = %197
  %264 = icmp sgt i32 %122, 0
  br i1 %264, label %265, label %2866

265:                                              ; preds = %263
  %266 = icmp eq ptr %198, null
  %267 = and i8 %104, 1
  %268 = icmp eq i8 %267, 0
  br label %1638

269:                                              ; preds = %197
  %270 = icmp sgt i32 %122, 0
  br i1 %270, label %271, label %2866

271:                                              ; preds = %269
  %272 = icmp eq ptr %198, null
  %273 = and i8 %104, 1
  %274 = icmp eq i8 %273, 0
  br label %1259

275:                                              ; preds = %197
  %276 = and i32 %105, 255
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.46, i32 noundef %276) #16
  br label %277

277:                                              ; preds = %197, %275
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.47) #16
  br label %278

278:                                              ; preds = %197, %197, %277
  %279 = or i1 %112, %123
  %280 = select i1 %112, ptr %155, ptr %154
  br i1 %279, label %300, label %281

281:                                              ; preds = %278
  %282 = add nsw i32 %122, -1
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %293, label %284

284:                                              ; preds = %281, %284
  %285 = phi i32 [ %289, %284 ], [ %282, %281 ]
  %286 = phi ptr [ %288, %284 ], [ %1, %281 ]
  %287 = getelementptr inbounds %struct.tempsym, ptr %286, i64 0, i32 10
  %288 = load ptr, ptr %287, align 8, !tbaa !28
  %289 = add nsw i32 %285, -1
  %290 = icmp ne i32 %289, 0
  %291 = icmp ne ptr %288, null
  %292 = select i1 %290, i1 %291, i1 false
  br i1 %292, label %284, label %293, !llvm.loop !96

293:                                              ; preds = %284, %281
  %294 = phi ptr [ %1, %281 ], [ %288, %284 ]
  %295 = phi i1 [ true, %281 ], [ %291, %284 ]
  br i1 %295, label %296, label %300

296:                                              ; preds = %293
  %297 = getelementptr inbounds %struct.tempsym, ptr %294, i64 0, i32 9
  %298 = load i64, ptr %297, align 8, !tbaa !20
  %299 = getelementptr inbounds i8, ptr %155, i64 %298
  br label %300

300:                                              ; preds = %278, %296, %293
  %301 = phi ptr [ %280, %278 ], [ %299, %296 ], [ %155, %293 ]
  %302 = icmp eq ptr %198, null
  br i1 %302, label %303, label %309

303:                                              ; preds = %300
  %304 = icmp sgt i32 %103, 0
  br i1 %304, label %305, label %309

305:                                              ; preds = %303
  %306 = add nsw i32 %103, -1
  %307 = getelementptr inbounds ptr, ptr %102, i64 1
  %308 = load ptr, ptr %102, align 8, !tbaa !19
  br label %309

309:                                              ; preds = %300, %305, %303
  %310 = phi i32 [ %306, %305 ], [ %103, %303 ], [ %103, %300 ]
  %311 = phi ptr [ %307, %305 ], [ %102, %303 ], [ %102, %300 ]
  %312 = phi ptr [ %308, %305 ], [ @PL_sv_no, %303 ], [ %198, %300 ]
  %313 = call fastcc ptr @S_sv_check_infnan(ptr noundef %312, i32 noundef %105) #15
  %314 = getelementptr inbounds %struct.sv, ptr %313, i64 0, i32 2
  %315 = load i32, ptr %314, align 4, !tbaa !42
  %316 = and i32 %315, 256
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %322, label %318

318:                                              ; preds = %309
  %319 = load ptr, ptr %313, align 8, !tbaa !50
  %320 = getelementptr inbounds %struct.xpviv, ptr %319, i64 0, i32 4
  %321 = load i64, ptr %320, align 8, !tbaa !15
  br label %324

322:                                              ; preds = %309
  %323 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %313, i32 noundef 0) #16
  br label %324

324:                                              ; preds = %322, %318
  %325 = phi i64 [ %321, %318 ], [ %323, %322 ]
  %326 = trunc i64 %325 to i32
  br label %330

327:                                              ; preds = %197, %197
  %328 = load i64, ptr %76, align 8, !tbaa !20
  %329 = getelementptr inbounds i8, ptr %155, i64 %328
  br label %330

330:                                              ; preds = %327, %324
  %331 = phi i32 [ %326, %324 ], [ %122, %327 ]
  %332 = phi ptr [ %301, %324 ], [ %329, %327 ]
  %333 = phi i32 [ %310, %324 ], [ %103, %327 ]
  %334 = phi ptr [ %311, %324 ], [ %102, %327 ]
  %335 = and i8 %104, 1
  %336 = icmp ne i8 %335, 0
  %337 = and i32 %105, 256
  %338 = icmp eq i32 %337, 0
  %339 = select i1 %336, i1 %338, i1 false
  br i1 %339, label %340, label %396

340:                                              ; preds = %330
  %341 = icmp sgt i32 %331, -1
  br i1 %341, label %342, label %394

342:                                              ; preds = %340
  %343 = icmp ne i32 %331, 0
  %344 = icmp ult ptr %332, %154
  %345 = select i1 %343, i1 %344, i1 false
  br i1 %345, label %346, label %359

346:                                              ; preds = %342, %346
  %347 = phi ptr [ %354, %346 ], [ %332, %342 ]
  %348 = phi i32 [ %355, %346 ], [ %331, %342 ]
  %349 = load i8, ptr %347, align 1, !tbaa !15
  %350 = zext i8 %349 to i64
  %351 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %350
  %352 = load i8, ptr %351, align 1, !tbaa !15
  %353 = zext i8 %352 to i64
  %354 = getelementptr inbounds i8, ptr %347, i64 %353
  %355 = add nsw i32 %348, -1
  %356 = icmp ne i32 %355, 0
  %357 = icmp ult ptr %354, %154
  %358 = select i1 %356, i1 %357, i1 false
  br i1 %358, label %346, label %359, !llvm.loop !97

359:                                              ; preds = %346, %342
  %360 = phi i32 [ %331, %342 ], [ %355, %346 ]
  %361 = phi ptr [ %332, %342 ], [ %354, %346 ]
  %362 = phi i1 [ %343, %342 ], [ %356, %346 ]
  %363 = phi i1 [ %344, %342 ], [ %357, %346 ]
  %364 = icmp ugt ptr %361, %154
  br i1 %364, label %365, label %366

365:                                              ; preds = %359
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.48) #16
  br label %366

366:                                              ; preds = %365, %359
  br i1 %362, label %367, label %388

367:                                              ; preds = %570, %197, %396, %366
  %368 = phi i32 [ %401, %396 ], [ %360, %366 ], [ %122, %197 ], [ %574, %570 ]
  %369 = phi i32 [ %333, %396 ], [ %333, %366 ], [ %103, %197 ], [ %103, %570 ]
  %370 = phi ptr [ %334, %396 ], [ %334, %366 ], [ %102, %197 ], [ %102, %570 ]
  %371 = sext i32 %368 to i64
  %372 = getelementptr inbounds i8, ptr %154, i64 %371
  %373 = load ptr, ptr %0, align 8, !tbaa !50
  %374 = getelementptr inbounds %struct.xpv, ptr %373, i64 0, i32 3
  %375 = load i64, ptr %374, align 8, !tbaa !15
  %376 = getelementptr inbounds i8, ptr %155, i64 %375
  %377 = icmp ult ptr %372, %376
  br i1 %377, label %384, label %378

378:                                              ; preds = %367
  %379 = call fastcc ptr @S_sv_exp_grow(ptr noundef nonnull %0, i64 noundef %371) #15
  %380 = load ptr, ptr %0, align 8, !tbaa !50
  %381 = getelementptr inbounds %struct.xpv, ptr %380, i64 0, i32 2
  %382 = load i64, ptr %381, align 8, !tbaa !51
  %383 = getelementptr inbounds i8, ptr %379, i64 %382
  br label %384

384:                                              ; preds = %378, %367
  %385 = phi ptr [ %383, %378 ], [ %154, %367 ]
  %386 = phi ptr [ %379, %378 ], [ %155, %367 ]
  call void @llvm.memset.p0.i64(ptr align 1 %385, i8 0, i64 %371, i1 false)
  %387 = getelementptr inbounds i8, ptr %385, i64 %371
  br label %2866

388:                                              ; preds = %366
  br i1 %363, label %389, label %2877

389:                                              ; preds = %388
  %390 = ptrtoint ptr %154 to i64
  %391 = ptrtoint ptr %361 to i64
  %392 = sub i64 %390, %391
  %393 = trunc i64 %392 to i32
  br label %521

394:                                              ; preds = %340
  %395 = sub nsw i32 0, %331
  br label %492

396:                                              ; preds = %330
  %397 = ptrtoint ptr %154 to i64
  %398 = ptrtoint ptr %332 to i64
  %399 = sub i64 %398, %397
  %400 = trunc i64 %399 to i32
  %401 = add i32 %331, %400
  %402 = icmp sgt i32 %401, 0
  br i1 %402, label %367, label %403

403:                                              ; preds = %396
  %404 = icmp eq i32 %401, 0
  br i1 %404, label %2877, label %405

405:                                              ; preds = %403
  %406 = sub nsw i32 0, %401
  br label %521

407:                                              ; preds = %197
  %408 = load ptr, ptr %97, align 8, !tbaa.struct !98
  %409 = load ptr, ptr %98, align 8, !tbaa.struct !99
  %410 = load i32, ptr %79, align 8, !tbaa.struct !100
  %411 = load i32, ptr %54, align 8, !tbaa !14
  %412 = and i32 %105, -256
  %413 = or i32 %412, %411
  store i32 %413, ptr %54, align 8, !tbaa !14
  store ptr %409, ptr %99, align 8, !tbaa !13
  %414 = load i32, ptr %60, align 4, !tbaa !29
  %415 = add nsw i32 %414, 1
  store i32 %415, ptr %60, align 4, !tbaa !29
  store ptr %5, ptr %100, align 8, !tbaa !28
  %416 = icmp eq i32 %410, 2
  br label %417

417:                                              ; preds = %424, %407
  %418 = phi i32 [ %122, %407 ], [ %425, %424 ]
  %419 = phi i8 [ %104, %407 ], [ %438, %424 ]
  %420 = phi ptr [ %102, %407 ], [ %433, %424 ]
  %421 = icmp eq i32 %418, 0
  br i1 %421, label %422, label %424

422:                                              ; preds = %417
  %423 = ptrtoint ptr %420 to i64
  br label %441

424:                                              ; preds = %417
  %425 = add nsw i32 %418, -1
  %426 = load i32, ptr %54, align 8, !tbaa !14
  %427 = and i32 %426, -33
  %428 = shl i8 %419, 5
  %429 = and i8 %428, 32
  %430 = zext nneg i8 %429 to i32
  %431 = or disjoint i32 %427, %430
  store i32 %431, ptr %54, align 8, !tbaa !14
  %432 = load i32, ptr %95, align 4, !tbaa !42
  store ptr %408, ptr %1, align 8, !tbaa !9
  %433 = call fastcc ptr @S_pack_rec(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %420, ptr noundef %3) #15
  %434 = load i32, ptr %95, align 4, !tbaa !42
  %435 = xor i32 %434, %432
  %436 = and i32 %435, 536870912
  %437 = icmp eq i32 %436, 0
  %438 = select i1 %437, i8 %419, i8 1
  %439 = icmp eq ptr %433, %3
  %440 = select i1 %416, i1 %439, i1 false
  br i1 %440, label %441, label %417

441:                                              ; preds = %424, %422
  %442 = phi i64 [ %423, %422 ], [ %48, %424 ]
  %443 = phi i8 [ %419, %422 ], [ %438, %424 ]
  %444 = phi ptr [ %420, %422 ], [ %3, %424 ]
  %445 = sub i64 %48, %442
  %446 = lshr exact i64 %445, 3
  %447 = trunc i64 %446 to i32
  %448 = load i32, ptr %54, align 8, !tbaa !14
  %449 = xor i32 %412, -1
  %450 = or i32 %411, %449
  %451 = and i32 %448, %450
  store i32 %451, ptr %93, align 8, !tbaa !14
  br label %2877

452:                                              ; preds = %197
  %453 = call i32 @llvm.umax.i32(i32 %122, i32 1)
  %454 = and i8 %104, 1
  %455 = icmp eq i8 %454, 0
  br i1 %455, label %477, label %456

456:                                              ; preds = %452
  %457 = icmp ult ptr %155, %154
  br i1 %457, label %458, label %473

458:                                              ; preds = %456, %458
  %459 = phi ptr [ %467, %458 ], [ %155, %456 ]
  %460 = phi ptr [ %471, %458 ], [ %155, %456 ]
  %461 = phi i32 [ %470, %458 ], [ %453, %456 ]
  %462 = load i8, ptr %459, align 1, !tbaa !15
  %463 = zext i8 %462 to i64
  %464 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %463
  %465 = load i8, ptr %464, align 1, !tbaa !15
  %466 = zext i8 %465 to i64
  %467 = getelementptr inbounds i8, ptr %459, i64 %466
  %468 = add nsw i32 %461, -1
  %469 = icmp eq i32 %468, 0
  %470 = select i1 %469, i32 %453, i32 %468
  %471 = select i1 %469, ptr %467, ptr %460
  %472 = icmp ult ptr %467, %154
  br i1 %472, label %458, label %473, !llvm.loop !101

473:                                              ; preds = %458, %456
  %474 = phi ptr [ %155, %456 ], [ %471, %458 ]
  %475 = icmp ugt ptr %474, %154
  br i1 %475, label %476, label %2866

476:                                              ; preds = %473
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.48) #16
  br label %2866

477:                                              ; preds = %452
  %478 = ptrtoint ptr %154 to i64
  %479 = ptrtoint ptr %155 to i64
  %480 = sub i64 %478, %479
  %481 = sext i32 %453 to i64
  %482 = srem i64 %480, %481
  %483 = trunc i64 %482 to i32
  br label %487

484:                                              ; preds = %197
  %485 = and i8 %104, 1
  %486 = icmp eq i8 %485, 0
  br i1 %486, label %487, label %490

487:                                              ; preds = %477, %484
  %488 = phi i32 [ %483, %477 ], [ %122, %484 ]
  %489 = ptrtoint ptr %154 to i64
  br label %521

490:                                              ; preds = %484
  %491 = icmp slt i32 %122, 1
  br i1 %491, label %2877, label %492

492:                                              ; preds = %394, %490
  %493 = phi ptr [ %332, %394 ], [ %154, %490 ]
  %494 = phi i32 [ %395, %394 ], [ %122, %490 ]
  %495 = phi i32 [ %333, %394 ], [ %103, %490 ]
  %496 = phi ptr [ %334, %394 ], [ %102, %490 ]
  %497 = and i32 %105, 255
  br label %498

498:                                              ; preds = %492, %517
  %499 = phi i32 [ %494, %492 ], [ %519, %517 ]
  %500 = phi ptr [ %493, %492 ], [ %518, %517 ]
  %501 = icmp ugt ptr %500, %155
  br i1 %501, label %503, label %502

502:                                              ; preds = %498
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.49, i32 noundef %497) #16
  br label %503

503:                                              ; preds = %502, %498
  %504 = getelementptr inbounds i8, ptr %500, i64 -1
  %505 = load i8, ptr %504, align 1, !tbaa !15
  %506 = and i8 %505, -64
  %507 = icmp eq i8 %506, -128
  br i1 %507, label %508, label %517

508:                                              ; preds = %503, %512
  %509 = phi ptr [ %513, %512 ], [ %504, %503 ]
  %510 = icmp ugt ptr %509, %155
  br i1 %510, label %512, label %511

511:                                              ; preds = %508
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.49, i32 noundef %497) #16
  br label %512

512:                                              ; preds = %511, %508
  %513 = getelementptr inbounds i8, ptr %509, i64 -1
  %514 = load i8, ptr %513, align 1, !tbaa !15
  %515 = and i8 %514, -64
  %516 = icmp eq i8 %515, -128
  br i1 %516, label %508, label %517, !llvm.loop !102

517:                                              ; preds = %512, %503
  %518 = phi ptr [ %504, %503 ], [ %513, %512 ]
  %519 = add nsw i32 %499, -1
  %520 = icmp sgt i32 %499, 1
  br i1 %520, label %498, label %535, !llvm.loop !103

521:                                              ; preds = %487, %405, %389
  %522 = phi i64 [ %489, %487 ], [ %397, %405 ], [ %390, %389 ]
  %523 = phi i32 [ %488, %487 ], [ %406, %405 ], [ %393, %389 ]
  %524 = phi i32 [ %103, %487 ], [ %333, %405 ], [ %333, %389 ]
  %525 = phi ptr [ %102, %487 ], [ %334, %405 ], [ %334, %389 ]
  %526 = ptrtoint ptr %155 to i64
  %527 = sub i64 %522, %526
  %528 = sext i32 %523 to i64
  %529 = icmp slt i64 %527, %528
  br i1 %529, label %530, label %532

530:                                              ; preds = %521
  %531 = and i32 %105, 255
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.49, i32 noundef %531) #16
  br label %532

532:                                              ; preds = %530, %521
  %533 = sub nsw i64 0, %528
  %534 = getelementptr inbounds i8, ptr %154, i64 %533
  br label %535

535:                                              ; preds = %517, %532
  %536 = phi ptr [ %534, %532 ], [ %518, %517 ]
  %537 = phi i32 [ %524, %532 ], [ %495, %517 ]
  %538 = phi ptr [ %525, %532 ], [ %496, %517 ]
  %539 = load i64, ptr %76, align 8, !tbaa !20
  %540 = getelementptr inbounds i8, ptr %155, i64 %539
  %541 = icmp ult ptr %536, %540
  br i1 %541, label %542, label %2866

542:                                              ; preds = %535
  %543 = ptrtoint ptr %536 to i64
  %544 = ptrtoint ptr %155 to i64
  %545 = sub i64 %543, %544
  br label %546

546:                                              ; preds = %542, %551
  %547 = phi ptr [ %553, %551 ], [ %1, %542 ]
  %548 = getelementptr inbounds %struct.tempsym, ptr %547, i64 0, i32 9
  %549 = load i64, ptr %548, align 8, !tbaa !20
  %550 = icmp ult i64 %545, %549
  br i1 %550, label %551, label %555

551:                                              ; preds = %546
  store i64 %545, ptr %548, align 8, !tbaa !20
  %552 = getelementptr inbounds %struct.tempsym, ptr %547, i64 0, i32 10
  %553 = load ptr, ptr %552, align 8, !tbaa !28
  %554 = icmp eq ptr %553, null
  br i1 %554, label %555, label %546, !llvm.loop !104

555:                                              ; preds = %546, %551
  store i64 %545, ptr %94, align 8, !tbaa !20
  br label %2866

556:                                              ; preds = %197
  %557 = call i32 @llvm.umax.i32(i32 %122, i32 1)
  %558 = and i8 %104, 1
  %559 = icmp eq i8 %558, 0
  br i1 %559, label %564, label %560

560:                                              ; preds = %556
  %561 = call i64 @Perl_utf8_length(ptr noundef %155, ptr noundef %154) #16
  %562 = sext i32 %557 to i64
  %563 = urem i64 %561, %562
  br label %570

564:                                              ; preds = %556
  %565 = ptrtoint ptr %154 to i64
  %566 = ptrtoint ptr %155 to i64
  %567 = sub i64 %565, %566
  %568 = sext i32 %557 to i64
  %569 = srem i64 %567, %568
  br label %570

570:                                              ; preds = %564, %560
  %571 = phi i64 [ %563, %560 ], [ %569, %564 ]
  %572 = trunc i64 %571 to i32
  %573 = icmp eq i32 %572, 0
  %574 = sub nsw i32 %557, %572
  br i1 %573, label %2877, label %367

575:                                              ; preds = %197, %197, %197
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #14
  %576 = icmp eq ptr %198, null
  br i1 %576, label %577, label %583

577:                                              ; preds = %575
  %578 = icmp sgt i32 %103, 0
  br i1 %578, label %579, label %583

579:                                              ; preds = %577
  %580 = add nsw i32 %103, -1
  %581 = getelementptr inbounds ptr, ptr %102, i64 1
  %582 = load ptr, ptr %102, align 8, !tbaa !19
  br label %583

583:                                              ; preds = %575, %579, %577
  %584 = phi i32 [ %580, %579 ], [ %103, %577 ], [ %103, %575 ]
  %585 = phi ptr [ %581, %579 ], [ %102, %577 ], [ %102, %575 ]
  %586 = phi ptr [ %582, %579 ], [ @PL_sv_no, %577 ], [ %198, %575 ]
  %587 = getelementptr inbounds %struct.sv, ptr %586, i64 0, i32 2
  %588 = load i32, ptr %587, align 4, !tbaa !42
  %589 = and i32 %588, 2098176
  %590 = icmp eq i32 %589, 1024
  br i1 %590, label %591, label %597

591:                                              ; preds = %583
  %592 = load ptr, ptr %586, align 8, !tbaa !50
  %593 = getelementptr inbounds %struct.xpv, ptr %592, i64 0, i32 2
  %594 = load i64, ptr %593, align 8, !tbaa !51
  store i64 %594, ptr %6, align 8, !tbaa !5
  %595 = getelementptr inbounds %struct.sv, ptr %586, i64 0, i32 3
  %596 = load ptr, ptr %595, align 8, !tbaa !15
  br label %600

597:                                              ; preds = %583
  %598 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %586, ptr noundef nonnull %6, i32 noundef 34) #16
  %599 = load i32, ptr %587, align 4, !tbaa !42
  br label %600

600:                                              ; preds = %597, %591
  %601 = phi i32 [ %588, %591 ], [ %599, %597 ]
  %602 = phi ptr [ %596, %591 ], [ %598, %597 ]
  store ptr %602, ptr %7, align 8, !tbaa !19
  %603 = and i32 %601, 536870912
  %604 = icmp eq i32 %603, 0
  br i1 %604, label %720, label %605

605:                                              ; preds = %600
  %606 = load ptr, ptr @PL_curcop, align 8, !tbaa !19
  %607 = getelementptr inbounds %struct.cop, ptr %606, i64 0, i32 10
  %608 = load i32, ptr %607, align 8, !tbaa !93
  %609 = and i32 %608, 8
  %610 = icmp eq i32 %609, 0
  br i1 %610, label %611, label %720

611:                                              ; preds = %605
  %612 = and i8 %104, 1
  %613 = icmp eq i8 %612, 0
  br i1 %613, label %614, label %627

614:                                              ; preds = %611
  %615 = load i32, ptr %95, align 4, !tbaa !42
  %616 = and i32 %615, 536870912
  %617 = icmp eq i32 %616, 0
  br i1 %617, label %618, label %627

618:                                              ; preds = %614
  call fastcc void @marked_upgrade(ptr noundef nonnull %0, ptr noundef nonnull %1) #15
  %619 = load i32, ptr %93, align 8, !tbaa !14
  %620 = or i32 %619, 8
  store i32 %620, ptr %93, align 8, !tbaa !14
  %621 = load i64, ptr %76, align 8, !tbaa !20
  store i64 %621, ptr %94, align 8, !tbaa !20
  %622 = load ptr, ptr %80, align 8, !tbaa !15
  %623 = load ptr, ptr %0, align 8, !tbaa !50
  %624 = getelementptr inbounds %struct.xpv, ptr %623, i64 0, i32 2
  %625 = load i64, ptr %624, align 8, !tbaa !51
  %626 = getelementptr inbounds i8, ptr %622, i64 %625
  br label %627

627:                                              ; preds = %618, %614, %611
  %628 = phi ptr [ %154, %611 ], [ %154, %614 ], [ %626, %618 ]
  %629 = phi ptr [ %155, %611 ], [ %155, %614 ], [ %622, %618 ]
  %630 = phi i8 [ %104, %611 ], [ %104, %614 ], [ 1, %618 ]
  br i1 %112, label %633, label %631

631:                                              ; preds = %627
  %632 = load i64, ptr %6, align 8, !tbaa !5
  br label %640

633:                                              ; preds = %627
  %634 = and i8 %630, 1
  %635 = icmp eq i8 %634, 0
  %636 = load i64, ptr %6, align 8
  br i1 %635, label %637, label %771

637:                                              ; preds = %633
  %638 = trunc i64 %636 to i32
  %639 = add i32 %638, 1
  br label %640

640:                                              ; preds = %631, %637
  %641 = phi i64 [ %636, %637 ], [ %632, %631 ]
  %642 = phi i32 [ %639, %637 ], [ %122, %631 ]
  %643 = getelementptr inbounds i8, ptr %602, i64 %641
  %644 = icmp eq i32 %105, 90
  %645 = sext i1 %644 to i32
  %646 = add nsw i32 %642, %645
  %647 = sext i32 %646 to i64
  store i64 %647, ptr %6, align 8, !tbaa !5
  %648 = icmp sgt i32 %646, 0
  %649 = icmp sgt i64 %641, 0
  %650 = select i1 %648, i1 %649, i1 false
  br i1 %650, label %651, label %665

651:                                              ; preds = %640, %651
  %652 = phi ptr [ %659, %651 ], [ %602, %640 ]
  %653 = phi i64 [ %660, %651 ], [ %647, %640 ]
  %654 = load i8, ptr %652, align 1, !tbaa !15
  %655 = zext i8 %654 to i64
  %656 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %655
  %657 = load i8, ptr %656, align 1, !tbaa !15
  %658 = zext i8 %657 to i64
  %659 = getelementptr inbounds i8, ptr %652, i64 %658
  %660 = add nsw i64 %653, -1
  store i64 %660, ptr %6, align 8, !tbaa !5
  %661 = trunc i64 %660 to i32
  %662 = icmp sgt i32 %661, 0
  %663 = icmp ult ptr %659, %643
  %664 = select i1 %662, i1 %663, i1 false
  br i1 %664, label %651, label %665, !llvm.loop !105

665:                                              ; preds = %651, %640
  %666 = phi ptr [ %602, %640 ], [ %659, %651 ]
  %667 = icmp ugt ptr %666, %643
  br i1 %667, label %668, label %669

668:                                              ; preds = %665
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.48) #16
  br label %669

669:                                              ; preds = %668, %665
  %670 = and i8 %630, 1
  %671 = icmp eq i8 %670, 0
  br i1 %671, label %681, label %672

672:                                              ; preds = %669
  %673 = load i64, ptr %6, align 8, !tbaa !5
  %674 = zext i1 %644 to i64
  %675 = ptrtoint ptr %666 to i64
  %676 = ptrtoint ptr %602 to i64
  %677 = sub i64 %675, %676
  store i64 %677, ptr %6, align 8, !tbaa !5
  %678 = add i64 %677, %674
  %679 = add i64 %678, %673
  %680 = trunc i64 %679 to i32
  br label %771

681:                                              ; preds = %669
  %682 = sext i32 %642 to i64
  %683 = load i64, ptr %6, align 8, !tbaa !5
  %684 = sub i64 %682, %683
  %685 = sext i1 %644 to i64
  %686 = add i64 %684, %685
  store i64 %686, ptr %6, align 8, !tbaa !5
  %687 = trunc i64 %686 to i32
  %688 = zext i1 %644 to i32
  %689 = add nsw i32 %687, %688
  %690 = select i1 %112, i32 %689, i32 %642
  %691 = sext i32 %690 to i64
  %692 = getelementptr inbounds i8, ptr %628, i64 %691
  %693 = load ptr, ptr %0, align 8, !tbaa !50
  %694 = getelementptr inbounds %struct.xpv, ptr %693, i64 0, i32 3
  %695 = load i64, ptr %694, align 8, !tbaa !15
  %696 = getelementptr inbounds i8, ptr %629, i64 %695
  %697 = icmp ult ptr %692, %696
  br i1 %697, label %706, label %698

698:                                              ; preds = %681
  %699 = call fastcc ptr @S_sv_exp_grow(ptr noundef nonnull %0, i64 noundef %691) #15
  %700 = load ptr, ptr %0, align 8, !tbaa !50
  %701 = getelementptr inbounds %struct.xpv, ptr %700, i64 0, i32 2
  %702 = load i64, ptr %701, align 8, !tbaa !51
  %703 = getelementptr inbounds i8, ptr %699, i64 %702
  %704 = load i64, ptr %6, align 8, !tbaa !5
  %705 = trunc i64 %704 to i32
  br label %706

706:                                              ; preds = %698, %681
  %707 = phi i32 [ %705, %698 ], [ %687, %681 ]
  %708 = phi ptr [ %703, %698 ], [ %628, %681 ]
  %709 = phi ptr [ %699, %698 ], [ %629, %681 ]
  %710 = or i32 %105, 2048
  %711 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %7, ptr noundef %643, ptr noundef %708, i32 noundef %707, i32 noundef %710) #15
  br i1 %711, label %715, label %712

712:                                              ; preds = %706
  %713 = load ptr, ptr %7, align 8, !tbaa !19
  %714 = load i64, ptr %6, align 8, !tbaa !5
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.50, i32 noundef %105, ptr noundef %713, ptr noundef %643, ptr noundef %708, i64 noundef %714) #16
  br label %715

715:                                              ; preds = %706, %712
  %716 = load i64, ptr %6, align 8, !tbaa !5
  %717 = getelementptr inbounds i8, ptr %708, i64 %716
  %718 = trunc i64 %716 to i32
  %719 = sub i32 %690, %718
  br label %812

720:                                              ; preds = %605, %600
  %721 = and i8 %104, 1
  %722 = icmp eq i8 %721, 0
  %723 = load i64, ptr %6, align 8
  br i1 %722, label %771, label %724

724:                                              ; preds = %720
  %725 = trunc i64 %723 to i32
  %726 = icmp eq i32 %105, 90
  %727 = zext i1 %726 to i32
  %728 = add nsw i32 %725, %727
  %729 = select i1 %112, i32 %728, i32 %122
  %730 = icmp sgt i32 %729, %725
  %731 = sext i32 %729 to i64
  br i1 %730, label %737, label %732

732:                                              ; preds = %724
  store i64 %731, ptr %6, align 8, !tbaa !5
  %733 = icmp ne i32 %729, 0
  %734 = and i1 %726, %733
  br i1 %734, label %735, label %737

735:                                              ; preds = %732
  %736 = add nsw i64 %731, -1
  store i64 %736, ptr %6, align 8, !tbaa !5
  br label %737

737:                                              ; preds = %724, %735, %732
  %738 = phi i64 [ %736, %735 ], [ %731, %732 ], [ %723, %724 ]
  %739 = add i64 %738, %731
  %740 = getelementptr inbounds i8, ptr %154, i64 %739
  %741 = load ptr, ptr %0, align 8, !tbaa !50
  %742 = getelementptr inbounds %struct.xpv, ptr %741, i64 0, i32 3
  %743 = load i64, ptr %742, align 8, !tbaa !15
  %744 = getelementptr inbounds i8, ptr %155, i64 %743
  %745 = icmp ult ptr %740, %744
  br i1 %745, label %753, label %746

746:                                              ; preds = %737
  %747 = call fastcc ptr @S_sv_exp_grow(ptr noundef nonnull %0, i64 noundef %739) #15
  %748 = load ptr, ptr %0, align 8, !tbaa !50
  %749 = getelementptr inbounds %struct.xpv, ptr %748, i64 0, i32 2
  %750 = load i64, ptr %749, align 8, !tbaa !51
  %751 = getelementptr inbounds i8, ptr %747, i64 %750
  %752 = load i64, ptr %6, align 8, !tbaa !5
  br label %753

753:                                              ; preds = %746, %737
  %754 = phi i64 [ %752, %746 ], [ %738, %737 ]
  %755 = phi ptr [ %751, %746 ], [ %154, %737 ]
  %756 = phi ptr [ %747, %746 ], [ %155, %737 ]
  %757 = trunc i64 %754 to i32
  %758 = sub i32 %729, %757
  %759 = icmp eq i64 %754, 0
  br i1 %759, label %812, label %760

760:                                              ; preds = %753, %760
  %761 = phi ptr [ %767, %760 ], [ %602, %753 ]
  %762 = phi ptr [ %765, %760 ], [ %755, %753 ]
  %763 = load i8, ptr %761, align 1, !tbaa !15
  %764 = zext i8 %763 to i64
  %765 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %762, i64 noundef %764, i64 noundef 0) #16
  %766 = load ptr, ptr %7, align 8, !tbaa !19
  %767 = getelementptr inbounds i8, ptr %766, i64 1
  store ptr %767, ptr %7, align 8, !tbaa !19
  %768 = load i64, ptr %6, align 8, !tbaa !5
  %769 = add i64 %768, -1
  store i64 %769, ptr %6, align 8, !tbaa !5
  %770 = icmp eq i64 %769, 0
  br i1 %770, label %812, label %760, !llvm.loop !106

771:                                              ; preds = %633, %672, %720
  %772 = phi i64 [ %723, %720 ], [ %677, %672 ], [ %636, %633 ]
  %773 = phi ptr [ %154, %720 ], [ %628, %672 ], [ %628, %633 ]
  %774 = phi ptr [ %155, %720 ], [ %629, %672 ], [ %629, %633 ]
  %775 = phi i32 [ %122, %720 ], [ %680, %672 ], [ %122, %633 ]
  %776 = phi i8 [ %104, %720 ], [ %630, %672 ], [ %630, %633 ]
  %777 = trunc i64 %772 to i32
  %778 = icmp eq i32 %105, 90
  %779 = zext i1 %778 to i32
  %780 = add nsw i32 %777, %779
  %781 = select i1 %112, i32 %780, i32 %775
  %782 = icmp sgt i32 %781, %777
  %783 = sext i32 %781 to i64
  br i1 %782, label %789, label %784

784:                                              ; preds = %771
  store i64 %783, ptr %6, align 8, !tbaa !5
  %785 = icmp ne i32 %781, 0
  %786 = and i1 %778, %785
  br i1 %786, label %787, label %789

787:                                              ; preds = %784
  %788 = add nsw i64 %783, -1
  store i64 %788, ptr %6, align 8, !tbaa !5
  br label %789

789:                                              ; preds = %771, %787, %784
  %790 = phi i64 [ %788, %787 ], [ %783, %784 ], [ %772, %771 ]
  %791 = getelementptr inbounds i8, ptr %773, i64 %783
  %792 = load ptr, ptr %0, align 8, !tbaa !50
  %793 = getelementptr inbounds %struct.xpv, ptr %792, i64 0, i32 3
  %794 = load i64, ptr %793, align 8, !tbaa !15
  %795 = getelementptr inbounds i8, ptr %774, i64 %794
  %796 = icmp ult ptr %791, %795
  br i1 %796, label %804, label %797

797:                                              ; preds = %789
  %798 = call fastcc ptr @S_sv_exp_grow(ptr noundef nonnull %0, i64 noundef %783) #15
  %799 = load ptr, ptr %0, align 8, !tbaa !50
  %800 = getelementptr inbounds %struct.xpv, ptr %799, i64 0, i32 2
  %801 = load i64, ptr %800, align 8, !tbaa !51
  %802 = getelementptr inbounds i8, ptr %798, i64 %801
  %803 = load i64, ptr %6, align 8, !tbaa !5
  br label %804

804:                                              ; preds = %797, %789
  %805 = phi i64 [ %803, %797 ], [ %790, %789 ]
  %806 = phi ptr [ %802, %797 ], [ %773, %789 ]
  %807 = phi ptr [ %798, %797 ], [ %774, %789 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %806, ptr align 1 %602, i64 %805, i1 false)
  %808 = load i64, ptr %6, align 8, !tbaa !5
  %809 = getelementptr inbounds i8, ptr %806, i64 %808
  %810 = trunc i64 %808 to i32
  %811 = sub i32 %781, %810
  br label %812

812:                                              ; preds = %760, %753, %715, %804
  %813 = phi ptr [ %809, %804 ], [ %717, %715 ], [ %755, %753 ], [ %765, %760 ]
  %814 = phi ptr [ %807, %804 ], [ %709, %715 ], [ %756, %753 ], [ %756, %760 ]
  %815 = phi i32 [ %811, %804 ], [ %719, %715 ], [ %758, %753 ], [ %758, %760 ]
  %816 = phi i8 [ %776, %804 ], [ %630, %715 ], [ %104, %753 ], [ %104, %760 ]
  %817 = icmp eq i32 %105, 65
  %818 = select i1 %817, i8 32, i8 0
  %819 = sext i32 %815 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %813, i8 %818, i64 %819, i1 false)
  %820 = getelementptr inbounds i8, ptr %813, i64 %819
  %821 = load i8, ptr @PL_tainting, align 1, !tbaa !107, !range !109, !noundef !110
  %822 = icmp eq i8 %821, 0
  %823 = load i8, ptr @PL_tainted, align 1, !range !109
  %824 = icmp eq i8 %823, 0
  %825 = select i1 %822, i1 true, i1 %824
  br i1 %825, label %827, label %826

826:                                              ; preds = %812
  call void @Perl_sv_magic(ptr noundef %0, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0) #16
  br label %827

827:                                              ; preds = %812, %826
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  br label %2866

828:                                              ; preds = %197, %197
  %829 = icmp eq ptr %198, null
  br i1 %829, label %830, label %836

830:                                              ; preds = %828
  %831 = icmp sgt i32 %103, 0
  br i1 %831, label %832, label %836

832:                                              ; preds = %830
  %833 = add nsw i32 %103, -1
  %834 = getelementptr inbounds ptr, ptr %102, i64 1
  %835 = load ptr, ptr %102, align 8, !tbaa !19
  br label %836

836:                                              ; preds = %828, %832, %830
  %837 = phi i32 [ %833, %832 ], [ %103, %830 ], [ %103, %828 ]
  %838 = phi ptr [ %834, %832 ], [ %102, %830 ], [ %102, %828 ]
  %839 = phi ptr [ %835, %832 ], [ @PL_sv_no, %830 ], [ %198, %828 ]
  %840 = getelementptr inbounds %struct.sv, ptr %839, i64 0, i32 2
  %841 = load i32, ptr %840, align 4, !tbaa !42
  %842 = and i32 %841, 2098176
  %843 = icmp eq i32 %842, 1024
  br i1 %843, label %844, label %850

844:                                              ; preds = %836
  %845 = load ptr, ptr %839, align 8, !tbaa !50
  %846 = getelementptr inbounds %struct.xpv, ptr %845, i64 0, i32 2
  %847 = load i64, ptr %846, align 8, !tbaa !51
  store i64 %847, ptr %6, align 8, !tbaa !5
  %848 = getelementptr inbounds %struct.sv, ptr %839, i64 0, i32 3
  %849 = load ptr, ptr %848, align 8, !tbaa !15
  br label %854

850:                                              ; preds = %836
  %851 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %839, ptr noundef nonnull %6, i32 noundef 34) #16
  %852 = load i64, ptr %6, align 8
  %853 = load i32, ptr %840, align 4, !tbaa !42
  br label %854

854:                                              ; preds = %850, %844
  %855 = phi i32 [ %841, %844 ], [ %853, %850 ]
  %856 = phi i64 [ %847, %844 ], [ %852, %850 ]
  %857 = phi ptr [ %849, %844 ], [ %851, %850 ]
  %858 = getelementptr inbounds i8, ptr %857, i64 %856
  %859 = and i32 %855, 536870912
  %860 = icmp eq i32 %859, 0
  br i1 %860, label %868, label %861

861:                                              ; preds = %854
  %862 = load ptr, ptr @PL_curcop, align 8, !tbaa !19
  %863 = getelementptr inbounds %struct.cop, ptr %862, i64 0, i32 10
  %864 = load i32, ptr %863, align 8, !tbaa !93
  %865 = and i32 %864, 8
  %866 = icmp eq i32 %865, 0
  %867 = select i1 %866, i32 %96, i32 0
  br label %868

868:                                              ; preds = %861, %854
  %869 = phi i1 [ false, %854 ], [ %866, %861 ]
  %870 = phi i32 [ 0, %854 ], [ %867, %861 ]
  %871 = trunc i64 %856 to i32
  %872 = select i1 %112, i32 %871, i32 %122
  %873 = add nsw i32 %872, 7
  %874 = sdiv i32 %873, 8
  %875 = sext i32 %874 to i64
  %876 = and i8 %104, 1
  %877 = icmp eq i8 %876, 0
  %878 = zext nneg i8 %876 to i64
  %879 = shl nsw i64 %875, %878
  %880 = getelementptr inbounds i8, ptr %154, i64 %879
  %881 = load ptr, ptr %0, align 8, !tbaa !50
  %882 = getelementptr inbounds %struct.xpv, ptr %881, i64 0, i32 3
  %883 = load i64, ptr %882, align 8, !tbaa !15
  %884 = getelementptr inbounds i8, ptr %155, i64 %883
  %885 = icmp ult ptr %880, %884
  br i1 %885, label %894, label %886

886:                                              ; preds = %868
  %887 = call fastcc ptr @S_sv_exp_grow(ptr noundef nonnull %0, i64 noundef %879) #15
  %888 = load ptr, ptr %0, align 8, !tbaa !50
  %889 = getelementptr inbounds %struct.xpv, ptr %888, i64 0, i32 2
  %890 = load i64, ptr %889, align 8, !tbaa !51
  %891 = getelementptr inbounds i8, ptr %887, i64 %890
  %892 = load i64, ptr %6, align 8, !tbaa !5
  %893 = trunc i64 %892 to i32
  br label %894

894:                                              ; preds = %886, %868
  %895 = phi i32 [ %893, %886 ], [ %871, %868 ]
  %896 = phi ptr [ %891, %886 ], [ %154, %868 ]
  %897 = phi ptr [ %887, %886 ], [ %155, %868 ]
  %898 = call i32 @llvm.smin.i32(i32 %872, i32 %895)
  %899 = icmp eq i32 %105, 66
  %900 = icmp sgt i32 %898, 0
  br i1 %899, label %904, label %901

901:                                              ; preds = %894
  br i1 %900, label %902, label %1016

902:                                              ; preds = %901
  %903 = ptrtoint ptr %858 to i64
  br label %952

904:                                              ; preds = %894
  br i1 %900, label %905, label %1016

905:                                              ; preds = %904
  %906 = ptrtoint ptr %858 to i64
  br label %907

907:                                              ; preds = %905, %947
  %908 = phi i32 [ 1, %905 ], [ %950, %947 ]
  %909 = phi ptr [ %896, %905 ], [ %949, %947 ]
  %910 = phi i8 [ 0, %905 ], [ %948, %947 ]
  %911 = phi ptr [ %857, %905 ], [ %934, %947 ]
  br i1 %869, label %912, label %930

912:                                              ; preds = %907
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #14
  %913 = icmp ult ptr %911, %858
  br i1 %913, label %914, label %926

914:                                              ; preds = %912
  %915 = ptrtoint ptr %911 to i64
  %916 = sub i64 %906, %915
  %917 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %911, i64 noundef %916, ptr noundef nonnull %8, i32 noundef %870) #16
  %918 = load i64, ptr %8, align 8
  %919 = add i64 %918, 1
  %920 = icmp ult i64 %919, 2
  br i1 %920, label %921, label %923

921:                                              ; preds = %914
  store i8 0, ptr %909, align 1, !tbaa !15
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.48) #16
  %922 = load i64, ptr %8, align 8, !tbaa !5
  br label %923

923:                                              ; preds = %914, %921
  %924 = phi i64 [ %918, %914 ], [ %922, %921 ]
  %925 = getelementptr inbounds i8, ptr %911, i64 %924
  br label %926

926:                                              ; preds = %912, %923
  %927 = phi ptr [ %925, %923 ], [ %911, %912 ]
  %928 = phi i64 [ %917, %923 ], [ 0, %912 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #14
  %929 = trunc i64 %928 to i8
  br label %933

930:                                              ; preds = %907
  %931 = getelementptr inbounds i8, ptr %911, i64 1
  %932 = load i8, ptr %911, align 1, !tbaa !15
  br label %933

933:                                              ; preds = %930, %926
  %934 = phi ptr [ %927, %926 ], [ %931, %930 ]
  %935 = phi i8 [ %929, %926 ], [ %932, %930 ]
  %936 = and i8 %935, 1
  %937 = or i8 %936, %910
  %938 = and i32 %908, 7
  %939 = icmp eq i32 %938, 0
  br i1 %939, label %942, label %940

940:                                              ; preds = %933
  %941 = shl i8 %937, 1
  br label %947

942:                                              ; preds = %933
  br i1 %877, label %945, label %943

943:                                              ; preds = %942
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #14
  store i8 %937, ptr %9, align 1, !tbaa !15
  %944 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %9, i64 noundef 1, ptr noundef %909, i1 noundef zeroext false) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #14
  br label %947

945:                                              ; preds = %942
  %946 = getelementptr inbounds i8, ptr %909, i64 1
  store i8 %937, ptr %909, align 1, !tbaa !15
  br label %947

947:                                              ; preds = %943, %945, %940
  %948 = phi i8 [ %941, %940 ], [ 0, %945 ], [ 0, %943 ]
  %949 = phi ptr [ %909, %940 ], [ %946, %945 ], [ %944, %943 ]
  %950 = add nuw i32 %908, 1
  %951 = icmp eq i32 %908, %898
  br i1 %951, label %997, label %907, !llvm.loop !111

952:                                              ; preds = %902, %992
  %953 = phi i32 [ 1, %902 ], [ %995, %992 ]
  %954 = phi ptr [ %896, %902 ], [ %994, %992 ]
  %955 = phi i8 [ 0, %902 ], [ %993, %992 ]
  %956 = phi ptr [ %857, %902 ], [ %979, %992 ]
  br i1 %869, label %957, label %975

957:                                              ; preds = %952
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #14
  %958 = icmp ult ptr %956, %858
  br i1 %958, label %959, label %971

959:                                              ; preds = %957
  %960 = ptrtoint ptr %956 to i64
  %961 = sub i64 %903, %960
  %962 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %956, i64 noundef %961, ptr noundef nonnull %10, i32 noundef %870) #16
  %963 = load i64, ptr %10, align 8
  %964 = add i64 %963, 1
  %965 = icmp ult i64 %964, 2
  br i1 %965, label %966, label %968

966:                                              ; preds = %959
  store i8 0, ptr %954, align 1, !tbaa !15
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.48) #16
  %967 = load i64, ptr %10, align 8, !tbaa !5
  br label %968

968:                                              ; preds = %959, %966
  %969 = phi i64 [ %963, %959 ], [ %967, %966 ]
  %970 = getelementptr inbounds i8, ptr %956, i64 %969
  br label %971

971:                                              ; preds = %957, %968
  %972 = phi ptr [ %970, %968 ], [ %956, %957 ]
  %973 = phi i64 [ %962, %968 ], [ 0, %957 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #14
  %974 = trunc i64 %973 to i8
  br label %978

975:                                              ; preds = %952
  %976 = getelementptr inbounds i8, ptr %956, i64 1
  %977 = load i8, ptr %956, align 1, !tbaa !15
  br label %978

978:                                              ; preds = %975, %971
  %979 = phi ptr [ %972, %971 ], [ %976, %975 ]
  %980 = phi i8 [ %974, %971 ], [ %977, %975 ]
  %981 = shl i8 %980, 7
  %982 = or i8 %981, %955
  %983 = and i32 %953, 7
  %984 = icmp eq i32 %983, 0
  br i1 %984, label %987, label %985

985:                                              ; preds = %978
  %986 = lshr i8 %982, 1
  br label %992

987:                                              ; preds = %978
  br i1 %877, label %990, label %988

988:                                              ; preds = %987
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #14
  store i8 %982, ptr %11, align 1, !tbaa !15
  %989 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %11, i64 noundef 1, ptr noundef %954, i1 noundef zeroext false) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #14
  br label %992

990:                                              ; preds = %987
  %991 = getelementptr inbounds i8, ptr %954, i64 1
  store i8 %982, ptr %954, align 1, !tbaa !15
  br label %992

992:                                              ; preds = %988, %990, %985
  %993 = phi i8 [ %986, %985 ], [ 0, %990 ], [ 0, %988 ]
  %994 = phi ptr [ %954, %985 ], [ %991, %990 ], [ %989, %988 ]
  %995 = add nuw i32 %953, 1
  %996 = icmp eq i32 %953, %898
  br i1 %996, label %997, label %952, !llvm.loop !112

997:                                              ; preds = %992, %947
  %998 = phi i8 [ %948, %947 ], [ %993, %992 ]
  %999 = phi ptr [ %949, %947 ], [ %994, %992 ]
  %1000 = and i32 %898, 7
  %1001 = icmp eq i32 %1000, 0
  br i1 %1001, label %1016, label %1002

1002:                                             ; preds = %997
  %1003 = xor i32 %1000, 7
  %1004 = zext i8 %998 to i32
  %1005 = shl nuw nsw i32 %1004, %1003
  %1006 = lshr i32 %1004, %1003
  %1007 = select i1 %899, i32 %1005, i32 %1006
  %1008 = trunc i32 %1007 to i8
  br i1 %877, label %1011, label %1009

1009:                                             ; preds = %1002
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #14
  store i8 %1008, ptr %12, align 1, !tbaa !15
  %1010 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %12, i64 noundef 1, ptr noundef %999, i1 noundef zeroext false) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #14
  br label %1013

1011:                                             ; preds = %1002
  %1012 = getelementptr inbounds i8, ptr %999, i64 1
  store i8 %1008, ptr %999, align 1, !tbaa !15
  br label %1013

1013:                                             ; preds = %1011, %1009
  %1014 = phi ptr [ %1010, %1009 ], [ %1012, %1011 ]
  %1015 = add nuw nsw i32 %898, 7
  br label %1016

1016:                                             ; preds = %901, %904, %1013, %997
  %1017 = phi i32 [ %1015, %1013 ], [ %898, %997 ], [ 0, %904 ], [ 0, %901 ]
  %1018 = phi ptr [ %1014, %1013 ], [ %999, %997 ], [ %896, %904 ], [ %896, %901 ]
  br i1 %112, label %1022, label %1019

1019:                                             ; preds = %1016
  %1020 = sdiv i32 %1017, -8
  %1021 = add nsw i32 %1020, %874
  br label %1022

1022:                                             ; preds = %1016, %1019
  %1023 = phi i32 [ %1021, %1019 ], [ 0, %1016 ]
  %1024 = sext i32 %1023 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %1018, i8 0, i64 %1024, i1 false)
  %1025 = getelementptr inbounds i8, ptr %1018, i64 %1024
  br label %2866

1026:                                             ; preds = %197, %197
  %1027 = icmp eq ptr %198, null
  br i1 %1027, label %1028, label %1034

1028:                                             ; preds = %1026
  %1029 = icmp sgt i32 %103, 0
  br i1 %1029, label %1030, label %1034

1030:                                             ; preds = %1028
  %1031 = add nsw i32 %103, -1
  %1032 = getelementptr inbounds ptr, ptr %102, i64 1
  %1033 = load ptr, ptr %102, align 8, !tbaa !19
  br label %1034

1034:                                             ; preds = %1026, %1030, %1028
  %1035 = phi i32 [ %1031, %1030 ], [ %103, %1028 ], [ %103, %1026 ]
  %1036 = phi ptr [ %1032, %1030 ], [ %102, %1028 ], [ %102, %1026 ]
  %1037 = phi ptr [ %1033, %1030 ], [ @PL_sv_no, %1028 ], [ %198, %1026 ]
  %1038 = getelementptr inbounds %struct.sv, ptr %1037, i64 0, i32 2
  %1039 = load i32, ptr %1038, align 4, !tbaa !42
  %1040 = and i32 %1039, 2098176
  %1041 = icmp eq i32 %1040, 1024
  br i1 %1041, label %1042, label %1048

1042:                                             ; preds = %1034
  %1043 = load ptr, ptr %1037, align 8, !tbaa !50
  %1044 = getelementptr inbounds %struct.xpv, ptr %1043, i64 0, i32 2
  %1045 = load i64, ptr %1044, align 8, !tbaa !51
  store i64 %1045, ptr %6, align 8, !tbaa !5
  %1046 = getelementptr inbounds %struct.sv, ptr %1037, i64 0, i32 3
  %1047 = load ptr, ptr %1046, align 8, !tbaa !15
  br label %1052

1048:                                             ; preds = %1034
  %1049 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %1037, ptr noundef nonnull %6, i32 noundef 34) #16
  %1050 = load i64, ptr %6, align 8
  %1051 = load i32, ptr %1038, align 4, !tbaa !42
  br label %1052

1052:                                             ; preds = %1048, %1042
  %1053 = phi i32 [ %1039, %1042 ], [ %1051, %1048 ]
  %1054 = phi i64 [ %1045, %1042 ], [ %1050, %1048 ]
  %1055 = phi ptr [ %1047, %1042 ], [ %1049, %1048 ]
  %1056 = getelementptr inbounds i8, ptr %1055, i64 %1054
  %1057 = and i32 %1053, 536870912
  %1058 = icmp eq i32 %1057, 0
  br i1 %1058, label %1066, label %1059

1059:                                             ; preds = %1052
  %1060 = load ptr, ptr @PL_curcop, align 8, !tbaa !19
  %1061 = getelementptr inbounds %struct.cop, ptr %1060, i64 0, i32 10
  %1062 = load i32, ptr %1061, align 8, !tbaa !93
  %1063 = and i32 %1062, 8
  %1064 = icmp eq i32 %1063, 0
  %1065 = select i1 %1064, i32 %96, i32 0
  br label %1066

1066:                                             ; preds = %1059, %1052
  %1067 = phi i1 [ false, %1052 ], [ %1064, %1059 ]
  %1068 = phi i32 [ 0, %1052 ], [ %1065, %1059 ]
  %1069 = trunc i64 %1054 to i32
  %1070 = select i1 %112, i32 %1069, i32 %122
  %1071 = add nsw i32 %1070, 1
  %1072 = sdiv i32 %1071, 2
  %1073 = sext i32 %1072 to i64
  %1074 = and i8 %104, 1
  %1075 = icmp eq i8 %1074, 0
  %1076 = zext nneg i8 %1074 to i64
  %1077 = shl nsw i64 %1073, %1076
  %1078 = getelementptr inbounds i8, ptr %154, i64 %1077
  %1079 = load ptr, ptr %0, align 8, !tbaa !50
  %1080 = getelementptr inbounds %struct.xpv, ptr %1079, i64 0, i32 3
  %1081 = load i64, ptr %1080, align 8, !tbaa !15
  %1082 = getelementptr inbounds i8, ptr %155, i64 %1081
  %1083 = icmp ult ptr %1078, %1082
  br i1 %1083, label %1092, label %1084

1084:                                             ; preds = %1066
  %1085 = call fastcc ptr @S_sv_exp_grow(ptr noundef nonnull %0, i64 noundef %1077) #15
  %1086 = load ptr, ptr %0, align 8, !tbaa !50
  %1087 = getelementptr inbounds %struct.xpv, ptr %1086, i64 0, i32 2
  %1088 = load i64, ptr %1087, align 8, !tbaa !51
  %1089 = getelementptr inbounds i8, ptr %1085, i64 %1088
  %1090 = load i64, ptr %6, align 8
  %1091 = trunc i64 %1090 to i32
  br label %1092

1092:                                             ; preds = %1084, %1066
  %1093 = phi i32 [ %1091, %1084 ], [ %1069, %1066 ]
  %1094 = phi ptr [ %1089, %1084 ], [ %154, %1066 ]
  %1095 = phi ptr [ %1085, %1084 ], [ %155, %1066 ]
  %1096 = call i32 @llvm.smin.i32(i32 %1070, i32 %1093)
  %1097 = select i1 %1075, i32 %1096, i32 %1070
  %1098 = icmp eq i32 %105, 72
  %1099 = icmp sgt i32 %1097, 0
  br i1 %1098, label %1103, label %1100

1100:                                             ; preds = %1092
  br i1 %1099, label %1101, label %1249

1101:                                             ; preds = %1100
  %1102 = ptrtoint ptr %1056 to i64
  br label %1171

1103:                                             ; preds = %1092
  br i1 %1099, label %1104, label %1249

1104:                                             ; preds = %1103
  %1105 = ptrtoint ptr %1056 to i64
  br label %1106

1106:                                             ; preds = %1104, %1166
  %1107 = phi i32 [ 1, %1104 ], [ %1169, %1166 ]
  %1108 = phi ptr [ %1094, %1104 ], [ %1168, %1166 ]
  %1109 = phi i8 [ 0, %1104 ], [ %1167, %1166 ]
  %1110 = phi i32 [ 0, %1104 ], [ %1107, %1166 ]
  %1111 = phi ptr [ %1055, %1104 ], [ %1153, %1166 ]
  br i1 %1067, label %1112, label %1142

1112:                                             ; preds = %1106
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #14
  %1113 = icmp ult ptr %1111, %1056
  br i1 %1113, label %1115, label %1114

1114:                                             ; preds = %1112
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #14
  br label %1128

1115:                                             ; preds = %1112
  %1116 = ptrtoint ptr %1111 to i64
  %1117 = sub i64 %1105, %1116
  %1118 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %1111, i64 noundef %1117, ptr noundef nonnull %13, i32 noundef %1068) #16
  %1119 = load i64, ptr %13, align 8
  %1120 = add i64 %1119, 1
  %1121 = icmp ult i64 %1120, 2
  br i1 %1121, label %1122, label %1124

1122:                                             ; preds = %1115
  store i8 0, ptr %1108, align 1, !tbaa !15
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.48) #16
  %1123 = load i64, ptr %13, align 8, !tbaa !5
  br label %1124

1124:                                             ; preds = %1122, %1115
  %1125 = phi i64 [ %1123, %1122 ], [ %1119, %1115 ]
  %1126 = getelementptr inbounds i8, ptr %1111, i64 %1125
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #14
  %1127 = icmp ult i64 %1118, 256
  br i1 %1127, label %1128, label %1138

1128:                                             ; preds = %1114, %1124
  %1129 = phi i64 [ 0, %1114 ], [ %1118, %1124 ]
  %1130 = phi ptr [ %1111, %1114 ], [ %1126, %1124 ]
  %1131 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %1129
  %1132 = load i32, ptr %1131, align 4, !tbaa !26
  %1133 = and i32 %1132, 16388
  %1134 = icmp eq i32 %1133, 16388
  br i1 %1134, label %1135, label %1138

1135:                                             ; preds = %1128
  %1136 = trunc i64 %1129 to i8
  %1137 = add i8 %1136, 9
  br label %1152

1138:                                             ; preds = %1128, %1124
  %1139 = phi i64 [ %1129, %1128 ], [ %1118, %1124 ]
  %1140 = phi ptr [ %1130, %1128 ], [ %1126, %1124 ]
  %1141 = trunc i64 %1139 to i8
  br label %1152

1142:                                             ; preds = %1106
  %1143 = load i8, ptr %1111, align 1, !tbaa !15
  %1144 = zext i8 %1143 to i64
  %1145 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %1144
  %1146 = load i32, ptr %1145, align 4, !tbaa !26
  %1147 = and i32 %1146, 16388
  %1148 = icmp eq i32 %1147, 16388
  %1149 = getelementptr inbounds i8, ptr %1111, i64 1
  %1150 = add i8 %1143, 9
  %1151 = select i1 %1148, i8 %1150, i8 %1143
  br label %1152

1152:                                             ; preds = %1142, %1135, %1138
  %1153 = phi ptr [ %1140, %1138 ], [ %1130, %1135 ], [ %1149, %1142 ]
  %1154 = phi i8 [ %1141, %1138 ], [ %1137, %1135 ], [ %1151, %1142 ]
  %1155 = and i8 %1154, 15
  %1156 = or i8 %1155, %1109
  %1157 = and i32 %1110, 1
  %1158 = icmp eq i32 %1157, 0
  br i1 %1158, label %1159, label %1161

1159:                                             ; preds = %1152
  %1160 = shl i8 %1156, 4
  br label %1166

1161:                                             ; preds = %1152
  br i1 %1075, label %1164, label %1162

1162:                                             ; preds = %1161
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %14) #14
  store i8 %1156, ptr %14, align 1, !tbaa !15
  %1163 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %14, i64 noundef 1, ptr noundef %1108, i1 noundef zeroext false) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #14
  br label %1166

1164:                                             ; preds = %1161
  %1165 = getelementptr inbounds i8, ptr %1108, i64 1
  store i8 %1156, ptr %1108, align 1, !tbaa !15
  br label %1166

1166:                                             ; preds = %1162, %1164, %1159
  %1167 = phi i8 [ %1160, %1159 ], [ 0, %1164 ], [ 0, %1162 ]
  %1168 = phi ptr [ %1108, %1159 ], [ %1165, %1164 ], [ %1163, %1162 ]
  %1169 = add nuw i32 %1107, 1
  %1170 = icmp eq i32 %1107, %1097
  br i1 %1170, label %1238, label %1106, !llvm.loop !113

1171:                                             ; preds = %1101, %1233
  %1172 = phi i32 [ 1, %1101 ], [ %1236, %1233 ]
  %1173 = phi ptr [ %1094, %1101 ], [ %1235, %1233 ]
  %1174 = phi i8 [ 0, %1101 ], [ %1234, %1233 ]
  %1175 = phi i32 [ 0, %1101 ], [ %1172, %1233 ]
  %1176 = phi ptr [ %1055, %1101 ], [ %1221, %1233 ]
  br i1 %1067, label %1177, label %1209

1177:                                             ; preds = %1171
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #14
  %1178 = icmp ult ptr %1176, %1056
  br i1 %1178, label %1180, label %1179

1179:                                             ; preds = %1177
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #14
  br label %1193

1180:                                             ; preds = %1177
  %1181 = ptrtoint ptr %1176 to i64
  %1182 = sub i64 %1102, %1181
  %1183 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %1176, i64 noundef %1182, ptr noundef nonnull %15, i32 noundef %1068) #16
  %1184 = load i64, ptr %15, align 8
  %1185 = add i64 %1184, 1
  %1186 = icmp ult i64 %1185, 2
  br i1 %1186, label %1187, label %1189

1187:                                             ; preds = %1180
  store i8 0, ptr %1173, align 1, !tbaa !15
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.48) #16
  %1188 = load i64, ptr %15, align 8, !tbaa !5
  br label %1189

1189:                                             ; preds = %1187, %1180
  %1190 = phi i64 [ %1188, %1187 ], [ %1184, %1180 ]
  %1191 = getelementptr inbounds i8, ptr %1176, i64 %1190
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #14
  %1192 = icmp ult i64 %1183, 256
  br i1 %1192, label %1193, label %1204

1193:                                             ; preds = %1179, %1189
  %1194 = phi i64 [ 0, %1179 ], [ %1183, %1189 ]
  %1195 = phi ptr [ %1176, %1179 ], [ %1191, %1189 ]
  %1196 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %1194
  %1197 = load i32, ptr %1196, align 4, !tbaa !26
  %1198 = and i32 %1197, 16388
  %1199 = icmp eq i32 %1198, 16388
  br i1 %1199, label %1200, label %1204

1200:                                             ; preds = %1193
  %1201 = trunc i64 %1194 to i8
  %1202 = shl i8 %1201, 4
  %1203 = add i8 %1202, -112
  br label %1220

1204:                                             ; preds = %1193, %1189
  %1205 = phi i64 [ %1194, %1193 ], [ %1183, %1189 ]
  %1206 = phi ptr [ %1195, %1193 ], [ %1191, %1189 ]
  %1207 = trunc i64 %1205 to i8
  %1208 = shl i8 %1207, 4
  br label %1220

1209:                                             ; preds = %1171
  %1210 = load i8, ptr %1176, align 1, !tbaa !15
  %1211 = zext i8 %1210 to i64
  %1212 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %1211
  %1213 = load i32, ptr %1212, align 4, !tbaa !26
  %1214 = and i32 %1213, 16388
  %1215 = icmp eq i32 %1214, 16388
  %1216 = getelementptr inbounds i8, ptr %1176, i64 1
  %1217 = shl i8 %1210, 4
  %1218 = add i8 %1217, -112
  %1219 = select i1 %1215, i8 %1218, i8 %1217
  br label %1220

1220:                                             ; preds = %1209, %1200, %1204
  %1221 = phi ptr [ %1206, %1204 ], [ %1195, %1200 ], [ %1216, %1209 ]
  %1222 = phi i8 [ %1208, %1204 ], [ %1203, %1200 ], [ %1219, %1209 ]
  %1223 = or i8 %1222, %1174
  %1224 = and i32 %1175, 1
  %1225 = icmp eq i32 %1224, 0
  br i1 %1225, label %1226, label %1228

1226:                                             ; preds = %1220
  %1227 = lshr i8 %1223, 4
  br label %1233

1228:                                             ; preds = %1220
  br i1 %1075, label %1231, label %1229

1229:                                             ; preds = %1228
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %16) #14
  store i8 %1223, ptr %16, align 1, !tbaa !15
  %1230 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %16, i64 noundef 1, ptr noundef %1173, i1 noundef zeroext false) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #14
  br label %1233

1231:                                             ; preds = %1228
  %1232 = getelementptr inbounds i8, ptr %1173, i64 1
  store i8 %1223, ptr %1173, align 1, !tbaa !15
  br label %1233

1233:                                             ; preds = %1229, %1231, %1226
  %1234 = phi i8 [ %1227, %1226 ], [ 0, %1231 ], [ 0, %1229 ]
  %1235 = phi ptr [ %1173, %1226 ], [ %1232, %1231 ], [ %1230, %1229 ]
  %1236 = add nuw i32 %1172, 1
  %1237 = icmp eq i32 %1172, %1097
  br i1 %1237, label %1238, label %1171, !llvm.loop !114

1238:                                             ; preds = %1233, %1166
  %1239 = phi i8 [ %1167, %1166 ], [ %1234, %1233 ]
  %1240 = phi ptr [ %1168, %1166 ], [ %1235, %1233 ]
  %1241 = add nuw i32 %1097, 1
  %1242 = and i32 %1097, 1
  %1243 = icmp eq i32 %1242, 0
  br i1 %1243, label %1249, label %1244

1244:                                             ; preds = %1238
  br i1 %1075, label %1247, label %1245

1245:                                             ; preds = %1244
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %17) #14
  store i8 %1239, ptr %17, align 1, !tbaa !15
  %1246 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %17, i64 noundef 1, ptr noundef %1240, i1 noundef zeroext false) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %17) #14
  br label %1249

1247:                                             ; preds = %1244
  %1248 = getelementptr inbounds i8, ptr %1240, i64 1
  store i8 %1239, ptr %1240, align 1, !tbaa !15
  br label %1249

1249:                                             ; preds = %1100, %1103, %1245, %1247, %1238
  %1250 = phi i32 [ %1097, %1238 ], [ %1241, %1247 ], [ %1241, %1245 ], [ 0, %1103 ], [ 0, %1100 ]
  %1251 = phi ptr [ %1240, %1238 ], [ %1248, %1247 ], [ %1246, %1245 ], [ %1094, %1103 ], [ %1094, %1100 ]
  br i1 %112, label %1255, label %1252

1252:                                             ; preds = %1249
  %1253 = sdiv i32 %1250, -2
  %1254 = add nsw i32 %1253, %1072
  br label %1255

1255:                                             ; preds = %1249, %1252
  %1256 = phi i32 [ %1254, %1252 ], [ 0, %1249 ]
  %1257 = sext i32 %1256 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %1251, i8 0, i64 %1257, i1 false)
  %1258 = getelementptr inbounds i8, ptr %1251, i64 %1257
  br label %2866

1259:                                             ; preds = %271, %1298
  %1260 = phi i32 [ %122, %271 ], [ %1264, %1298 ]
  %1261 = phi ptr [ %102, %271 ], [ %1273, %1298 ]
  %1262 = phi i32 [ %103, %271 ], [ %1272, %1298 ]
  %1263 = phi ptr [ %154, %271 ], [ %1299, %1298 ]
  %1264 = add nsw i32 %1260, -1
  br i1 %272, label %1265, label %1271

1265:                                             ; preds = %1259
  %1266 = icmp sgt i32 %1262, 0
  br i1 %1266, label %1267, label %1271

1267:                                             ; preds = %1265
  %1268 = add nsw i32 %1262, -1
  %1269 = getelementptr inbounds ptr, ptr %1261, i64 1
  %1270 = load ptr, ptr %1261, align 8, !tbaa !19
  br label %1271

1271:                                             ; preds = %1259, %1267, %1265
  %1272 = phi i32 [ %1268, %1267 ], [ %1262, %1265 ], [ %1262, %1259 ]
  %1273 = phi ptr [ %1269, %1267 ], [ %1261, %1265 ], [ %1261, %1259 ]
  %1274 = phi ptr [ %1270, %1267 ], [ @PL_sv_no, %1265 ], [ %198, %1259 ]
  %1275 = call fastcc ptr @S_sv_check_infnan(ptr noundef %1274, i32 noundef %105) #15
  %1276 = getelementptr inbounds %struct.sv, ptr %1275, i64 0, i32 2
  %1277 = load i32, ptr %1276, align 4, !tbaa !42
  %1278 = and i32 %1277, 256
  %1279 = icmp eq i32 %1278, 0
  br i1 %1279, label %1284, label %1280

1280:                                             ; preds = %1271
  %1281 = load ptr, ptr %1275, align 8, !tbaa !50
  %1282 = getelementptr inbounds %struct.xpviv, ptr %1281, i64 0, i32 4
  %1283 = load i64, ptr %1282, align 8, !tbaa !15
  br label %1286

1284:                                             ; preds = %1271
  %1285 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %1275, i32 noundef 0) #16
  br label %1286

1286:                                             ; preds = %1284, %1280
  %1287 = phi i64 [ %1283, %1280 ], [ %1285, %1284 ]
  %1288 = add i64 %1287, -128
  %1289 = icmp ult i64 %1288, -256
  br i1 %1289, label %1290, label %1291

1290:                                             ; preds = %1286
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 16, ptr noundef nonnull @.str.51) #16
  br label %1291

1291:                                             ; preds = %1290, %1286
  br i1 %274, label %1295, label %1292

1292:                                             ; preds = %1291
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %18) #14
  %1293 = trunc i64 %1287 to i8
  store i8 %1293, ptr %18, align 1, !tbaa !15
  %1294 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %18, i64 noundef 1, ptr noundef %1263, i1 noundef zeroext false) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %18) #14
  br label %1298

1295:                                             ; preds = %1291
  %1296 = trunc i64 %1287 to i8
  %1297 = getelementptr inbounds i8, ptr %1263, i64 1
  store i8 %1296, ptr %1263, align 1, !tbaa !15
  br label %1298

1298:                                             ; preds = %1295, %1292
  %1299 = phi ptr [ %1294, %1292 ], [ %1297, %1295 ]
  %1300 = icmp ugt i32 %1260, 1
  br i1 %1300, label %1259, label %2866, !llvm.loop !115

1301:                                             ; preds = %197
  br i1 %123, label %1308, label %1302

1302:                                             ; preds = %1301
  %1303 = icmp sgt i32 %122, 0
  br i1 %1303, label %1304, label %2866

1304:                                             ; preds = %1302
  %1305 = icmp eq ptr %198, null
  %1306 = and i8 %104, 1
  %1307 = icmp eq i8 %1306, 0
  br label %1313

1308:                                             ; preds = %1301
  %1309 = load i32, ptr %54, align 8, !tbaa !14
  %1310 = trunc i32 %1309 to i8
  %1311 = lshr i8 %1310, 3
  %1312 = and i8 %1311, 1
  br label %2866

1313:                                             ; preds = %1304, %1351
  %1314 = phi i32 [ %122, %1304 ], [ %1318, %1351 ]
  %1315 = phi ptr [ %102, %1304 ], [ %1327, %1351 ]
  %1316 = phi i32 [ %103, %1304 ], [ %1326, %1351 ]
  %1317 = phi ptr [ %154, %1304 ], [ %1352, %1351 ]
  %1318 = add nsw i32 %1314, -1
  br i1 %1305, label %1319, label %1325

1319:                                             ; preds = %1313
  %1320 = icmp sgt i32 %1316, 0
  br i1 %1320, label %1321, label %1325

1321:                                             ; preds = %1319
  %1322 = add nsw i32 %1316, -1
  %1323 = getelementptr inbounds ptr, ptr %1315, i64 1
  %1324 = load ptr, ptr %1315, align 8, !tbaa !19
  br label %1325

1325:                                             ; preds = %1313, %1321, %1319
  %1326 = phi i32 [ %1322, %1321 ], [ %1316, %1319 ], [ %1316, %1313 ]
  %1327 = phi ptr [ %1323, %1321 ], [ %1315, %1319 ], [ %1315, %1313 ]
  %1328 = phi ptr [ %1324, %1321 ], [ @PL_sv_no, %1319 ], [ %198, %1313 ]
  %1329 = call fastcc ptr @S_sv_check_infnan(ptr noundef %1328, i32 noundef %105) #15
  %1330 = getelementptr inbounds %struct.sv, ptr %1329, i64 0, i32 2
  %1331 = load i32, ptr %1330, align 4, !tbaa !42
  %1332 = and i32 %1331, 256
  %1333 = icmp eq i32 %1332, 0
  br i1 %1333, label %1338, label %1334

1334:                                             ; preds = %1325
  %1335 = load ptr, ptr %1329, align 8, !tbaa !50
  %1336 = getelementptr inbounds %struct.xpviv, ptr %1335, i64 0, i32 4
  %1337 = load i64, ptr %1336, align 8, !tbaa !15
  br label %1340

1338:                                             ; preds = %1325
  %1339 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %1329, i32 noundef 0) #16
  br label %1340

1340:                                             ; preds = %1338, %1334
  %1341 = phi i64 [ %1337, %1334 ], [ %1339, %1338 ]
  %1342 = icmp ugt i64 %1341, 255
  br i1 %1342, label %1343, label %1344

1343:                                             ; preds = %1340
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 16, ptr noundef nonnull @.str.52) #16
  br label %1344

1344:                                             ; preds = %1343, %1340
  br i1 %1307, label %1348, label %1345

1345:                                             ; preds = %1344
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %19) #14
  %1346 = trunc i64 %1341 to i8
  store i8 %1346, ptr %19, align 1, !tbaa !15
  %1347 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %19, i64 noundef 1, ptr noundef %1317, i1 noundef zeroext false) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %19) #14
  br label %1351

1348:                                             ; preds = %1344
  %1349 = trunc i64 %1341 to i8
  %1350 = getelementptr inbounds i8, ptr %1317, i64 1
  store i8 %1349, ptr %1317, align 1, !tbaa !15
  br label %1351

1351:                                             ; preds = %1348, %1345
  %1352 = phi ptr [ %1347, %1345 ], [ %1350, %1348 ]
  %1353 = icmp ugt i32 %1314, 1
  br i1 %1353, label %1313, label %2866, !llvm.loop !116

1354:                                             ; preds = %197
  %1355 = icmp sgt i32 %122, 0
  br i1 %1355, label %1356, label %2866

1356:                                             ; preds = %1354
  %1357 = load ptr, ptr %0, align 8, !tbaa !50
  %1358 = getelementptr inbounds %struct.xpv, ptr %1357, i64 0, i32 3
  %1359 = load i64, ptr %1358, align 8, !tbaa !15
  %1360 = getelementptr inbounds i8, ptr %155, i64 %1359
  %1361 = and i8 %104, 1
  %1362 = icmp eq i8 %1361, 0
  %1363 = select i1 %1362, i64 -1, i64 -13
  %1364 = getelementptr inbounds i8, ptr %1360, i64 %1363
  %1365 = load ptr, ptr @PL_curcop, align 8, !tbaa !19
  %1366 = getelementptr inbounds %struct.cop, ptr %1365, i64 0, i32 10
  %1367 = load i32, ptr %1366, align 8, !tbaa !93
  %1368 = icmp eq ptr %198, null
  %1369 = and i32 %1367, 8
  %1370 = icmp eq i32 %1369, 0
  %1371 = zext nneg i32 %122 to i64
  br label %1372

1372:                                             ; preds = %1356, %1504
  %1373 = phi i64 [ %1371, %1356 ], [ %1380, %1504 ]
  %1374 = phi ptr [ %102, %1356 ], [ %1389, %1504 ]
  %1375 = phi i32 [ %103, %1356 ], [ %1388, %1504 ]
  %1376 = phi i8 [ %104, %1356 ], [ %1508, %1504 ]
  %1377 = phi ptr [ %155, %1356 ], [ %1507, %1504 ]
  %1378 = phi ptr [ %154, %1356 ], [ %1506, %1504 ]
  %1379 = phi ptr [ %1364, %1356 ], [ %1505, %1504 ]
  %1380 = add nsw i64 %1373, -1
  br i1 %1368, label %1381, label %1387

1381:                                             ; preds = %1372
  %1382 = icmp sgt i32 %1375, 0
  br i1 %1382, label %1383, label %1387

1383:                                             ; preds = %1381
  %1384 = add nsw i32 %1375, -1
  %1385 = getelementptr inbounds ptr, ptr %1374, i64 1
  %1386 = load ptr, ptr %1374, align 8, !tbaa !19
  br label %1387

1387:                                             ; preds = %1372, %1383, %1381
  %1388 = phi i32 [ %1384, %1383 ], [ %1375, %1381 ], [ %1375, %1372 ]
  %1389 = phi ptr [ %1385, %1383 ], [ %1374, %1381 ], [ %1374, %1372 ]
  %1390 = phi ptr [ %1386, %1383 ], [ @PL_sv_no, %1381 ], [ %198, %1372 ]
  %1391 = call fastcc ptr @S_sv_check_infnan(ptr noundef %1390, i32 noundef %105) #15
  %1392 = getelementptr inbounds %struct.sv, ptr %1391, i64 0, i32 2
  %1393 = load i32, ptr %1392, align 4, !tbaa !42
  %1394 = and i32 %1393, 256
  %1395 = icmp eq i32 %1394, 0
  br i1 %1395, label %1400, label %1396

1396:                                             ; preds = %1387
  %1397 = load ptr, ptr %1391, align 8, !tbaa !50
  %1398 = getelementptr inbounds %struct.xpvuv, ptr %1397, i64 0, i32 4
  %1399 = load i64, ptr %1398, align 8, !tbaa !15
  br label %1402

1400:                                             ; preds = %1387
  %1401 = call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %1391, i32 noundef 0) #16
  br label %1402

1402:                                             ; preds = %1400, %1396
  %1403 = phi i64 [ %1399, %1396 ], [ %1401, %1400 ]
  %1404 = and i64 %1403, 255
  %1405 = select i1 %1370, i64 %1403, i64 %1404
  %1406 = and i8 %1376, 1
  %1407 = icmp eq i8 %1406, 0
  br i1 %1407, label %1445, label %1408

1408:                                             ; preds = %1402, %1451
  %1409 = phi ptr [ %1379, %1402 ], [ %1468, %1451 ]
  %1410 = phi ptr [ %1378, %1402 ], [ %1464, %1451 ]
  %1411 = phi ptr [ %1377, %1402 ], [ %1460, %1451 ]
  %1412 = phi i8 [ %1376, %1402 ], [ 1, %1451 ]
  %1413 = icmp ugt ptr %1410, %1409
  br i1 %1413, label %1414, label %1440

1414:                                             ; preds = %1408
  store i8 0, ptr %1410, align 1, !tbaa !15
  %1415 = ptrtoint ptr %1410 to i64
  %1416 = ptrtoint ptr %1411 to i64
  %1417 = sub i64 %1415, %1416
  %1418 = load ptr, ptr %0, align 8, !tbaa !50
  %1419 = getelementptr inbounds %struct.xpv, ptr %1418, i64 0, i32 2
  store i64 %1417, ptr %1419, align 8, !tbaa !51
  %1420 = add nuw nsw i64 %1373, 12
  %1421 = getelementptr inbounds i8, ptr %1410, i64 %1420
  %1422 = getelementptr inbounds %struct.xpv, ptr %1418, i64 0, i32 3
  %1423 = load i64, ptr %1422, align 8, !tbaa !15
  %1424 = getelementptr inbounds i8, ptr %1411, i64 %1423
  %1425 = icmp ult ptr %1421, %1424
  br i1 %1425, label %1434, label %1426

1426:                                             ; preds = %1414
  %1427 = call fastcc ptr @S_sv_exp_grow(ptr noundef nonnull %0, i64 noundef %1420) #15
  %1428 = load ptr, ptr %0, align 8, !tbaa !50
  %1429 = getelementptr inbounds %struct.xpv, ptr %1428, i64 0, i32 2
  %1430 = load i64, ptr %1429, align 8, !tbaa !51
  %1431 = getelementptr inbounds i8, ptr %1427, i64 %1430
  %1432 = getelementptr inbounds %struct.xpv, ptr %1428, i64 0, i32 3
  %1433 = load i64, ptr %1432, align 8, !tbaa !15
  br label %1434

1434:                                             ; preds = %1426, %1414
  %1435 = phi i64 [ %1433, %1426 ], [ %1423, %1414 ]
  %1436 = phi ptr [ %1431, %1426 ], [ %1410, %1414 ]
  %1437 = phi ptr [ %1427, %1426 ], [ %1411, %1414 ]
  %1438 = getelementptr inbounds i8, ptr %1437, i64 %1435
  %1439 = getelementptr inbounds i8, ptr %1438, i64 -13
  br label %1440

1440:                                             ; preds = %1434, %1408
  %1441 = phi ptr [ %1439, %1434 ], [ %1409, %1408 ]
  %1442 = phi ptr [ %1436, %1434 ], [ %1410, %1408 ]
  %1443 = phi ptr [ %1437, %1434 ], [ %1411, %1408 ]
  %1444 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %1442, i64 noundef %1405, i64 noundef 0) #16
  br label %1504

1445:                                             ; preds = %1402
  %1446 = icmp ugt i64 %1405, 255
  br i1 %1446, label %1447, label %1470

1447:                                             ; preds = %1445
  %1448 = load i32, ptr %95, align 4, !tbaa !42
  %1449 = and i32 %1448, 536870912
  %1450 = icmp eq i32 %1449, 0
  br i1 %1450, label %1451, label %1469

1451:                                             ; preds = %1447
  store i8 0, ptr %1378, align 1, !tbaa !15
  %1452 = ptrtoint ptr %1378 to i64
  %1453 = ptrtoint ptr %1377 to i64
  %1454 = sub i64 %1452, %1453
  %1455 = load ptr, ptr %0, align 8, !tbaa !50
  %1456 = getelementptr inbounds %struct.xpv, ptr %1455, i64 0, i32 2
  store i64 %1454, ptr %1456, align 8, !tbaa !51
  call fastcc void @marked_upgrade(ptr noundef nonnull %0, ptr noundef %1) #15
  %1457 = load i32, ptr %93, align 8, !tbaa !14
  %1458 = or i32 %1457, 8
  store i32 %1458, ptr %93, align 8, !tbaa !14
  %1459 = load i64, ptr %76, align 8, !tbaa !20
  store i64 %1459, ptr %94, align 8, !tbaa !20
  %1460 = load ptr, ptr %80, align 8, !tbaa !15
  %1461 = load ptr, ptr %0, align 8, !tbaa !50
  %1462 = getelementptr inbounds %struct.xpv, ptr %1461, i64 0, i32 2
  %1463 = load i64, ptr %1462, align 8, !tbaa !51
  %1464 = getelementptr inbounds i8, ptr %1460, i64 %1463
  %1465 = getelementptr inbounds %struct.xpv, ptr %1461, i64 0, i32 3
  %1466 = load i64, ptr %1465, align 8, !tbaa !15
  %1467 = getelementptr inbounds i8, ptr %1460, i64 %1466
  %1468 = getelementptr inbounds i8, ptr %1467, i64 -13
  br label %1408

1469:                                             ; preds = %1447
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 16, ptr noundef nonnull @.str.53) #16
  br label %1470

1470:                                             ; preds = %1469, %1445
  %1471 = phi i64 [ %1404, %1469 ], [ %1405, %1445 ]
  %1472 = icmp ult ptr %1378, %1379
  br i1 %1472, label %1498, label %1473

1473:                                             ; preds = %1470
  store i8 0, ptr %1378, align 1, !tbaa !15
  %1474 = ptrtoint ptr %1378 to i64
  %1475 = ptrtoint ptr %1377 to i64
  %1476 = sub i64 %1474, %1475
  %1477 = load ptr, ptr %0, align 8, !tbaa !50
  %1478 = getelementptr inbounds %struct.xpv, ptr %1477, i64 0, i32 2
  store i64 %1476, ptr %1478, align 8, !tbaa !51
  %1479 = getelementptr inbounds i8, ptr %1378, i64 %1373
  %1480 = getelementptr inbounds %struct.xpv, ptr %1477, i64 0, i32 3
  %1481 = load i64, ptr %1480, align 8, !tbaa !15
  %1482 = getelementptr inbounds i8, ptr %1377, i64 %1481
  %1483 = icmp ult ptr %1479, %1482
  br i1 %1483, label %1492, label %1484

1484:                                             ; preds = %1473
  %1485 = call fastcc ptr @S_sv_exp_grow(ptr noundef nonnull %0, i64 noundef %1373) #15
  %1486 = load ptr, ptr %0, align 8, !tbaa !50
  %1487 = getelementptr inbounds %struct.xpv, ptr %1486, i64 0, i32 2
  %1488 = load i64, ptr %1487, align 8, !tbaa !51
  %1489 = getelementptr inbounds i8, ptr %1485, i64 %1488
  %1490 = getelementptr inbounds %struct.xpv, ptr %1486, i64 0, i32 3
  %1491 = load i64, ptr %1490, align 8, !tbaa !15
  br label %1492

1492:                                             ; preds = %1484, %1473
  %1493 = phi i64 [ %1491, %1484 ], [ %1481, %1473 ]
  %1494 = phi ptr [ %1489, %1484 ], [ %1378, %1473 ]
  %1495 = phi ptr [ %1485, %1484 ], [ %1377, %1473 ]
  %1496 = getelementptr inbounds i8, ptr %1495, i64 %1493
  %1497 = getelementptr inbounds i8, ptr %1496, i64 -1
  br label %1498

1498:                                             ; preds = %1492, %1470
  %1499 = phi ptr [ %1497, %1492 ], [ %1379, %1470 ]
  %1500 = phi ptr [ %1494, %1492 ], [ %1378, %1470 ]
  %1501 = phi ptr [ %1495, %1492 ], [ %1377, %1470 ]
  %1502 = trunc i64 %1471 to i8
  %1503 = getelementptr inbounds i8, ptr %1500, i64 1
  store i8 %1502, ptr %1500, align 1, !tbaa !15
  br label %1504

1504:                                             ; preds = %1498, %1440
  %1505 = phi ptr [ %1441, %1440 ], [ %1499, %1498 ]
  %1506 = phi ptr [ %1444, %1440 ], [ %1503, %1498 ]
  %1507 = phi ptr [ %1443, %1440 ], [ %1501, %1498 ]
  %1508 = phi i8 [ %1412, %1440 ], [ %1376, %1498 ]
  %1509 = icmp ugt i64 %1373, 1
  br i1 %1509, label %1372, label %2866, !llvm.loop !117

1510:                                             ; preds = %197
  br i1 %123, label %1511, label %1519

1511:                                             ; preds = %1510
  %1512 = load i32, ptr %54, align 8, !tbaa !14
  %1513 = and i32 %1512, 8
  %1514 = icmp eq i32 %1513, 0
  br i1 %1514, label %1515, label %2877

1515:                                             ; preds = %1511
  call fastcc void @marked_upgrade(ptr noundef %0, ptr noundef nonnull %1) #15
  %1516 = load i32, ptr %93, align 8, !tbaa !14
  %1517 = or i32 %1516, 8
  store i32 %1517, ptr %93, align 8, !tbaa !14
  %1518 = load i64, ptr %76, align 8, !tbaa !20
  store i64 %1518, ptr %94, align 8, !tbaa !20
  br label %2877

1519:                                             ; preds = %1510
  %1520 = and i8 %104, 1
  %1521 = icmp eq i8 %1520, 0
  %1522 = icmp sgt i32 %122, 0
  br i1 %1522, label %1523, label %2866

1523:                                             ; preds = %1519
  %1524 = load ptr, ptr %0, align 8, !tbaa !50
  %1525 = getelementptr inbounds %struct.xpv, ptr %1524, i64 0, i32 3
  %1526 = load i64, ptr %1525, align 8, !tbaa !15
  %1527 = getelementptr inbounds i8, ptr %155, i64 %1526
  %1528 = select i1 %1521, i64 -13, i64 0
  %1529 = getelementptr inbounds i8, ptr %1527, i64 %1528
  %1530 = icmp eq ptr %198, null
  %1531 = zext nneg i32 %122 to i64
  br label %1532

1532:                                             ; preds = %1523, %1633
  %1533 = phi i64 [ %1531, %1523 ], [ %1539, %1633 ]
  %1534 = phi ptr [ %102, %1523 ], [ %1548, %1633 ]
  %1535 = phi i32 [ %103, %1523 ], [ %1547, %1633 ]
  %1536 = phi ptr [ %155, %1523 ], [ %1636, %1633 ]
  %1537 = phi ptr [ %154, %1523 ], [ %1635, %1633 ]
  %1538 = phi ptr [ %1529, %1523 ], [ %1634, %1633 ]
  %1539 = add nsw i64 %1533, -1
  br i1 %1530, label %1540, label %1546

1540:                                             ; preds = %1532
  %1541 = icmp sgt i32 %1535, 0
  br i1 %1541, label %1542, label %1546

1542:                                             ; preds = %1540
  %1543 = add nsw i32 %1535, -1
  %1544 = getelementptr inbounds ptr, ptr %1534, i64 1
  %1545 = load ptr, ptr %1534, align 8, !tbaa !19
  br label %1546

1546:                                             ; preds = %1532, %1542, %1540
  %1547 = phi i32 [ %1543, %1542 ], [ %1535, %1540 ], [ %1535, %1532 ]
  %1548 = phi ptr [ %1544, %1542 ], [ %1534, %1540 ], [ %1534, %1532 ]
  %1549 = phi ptr [ %1545, %1542 ], [ @PL_sv_no, %1540 ], [ %198, %1532 ]
  %1550 = call fastcc ptr @S_sv_check_infnan(ptr noundef %1549, i32 noundef %105) #15
  %1551 = getelementptr inbounds %struct.sv, ptr %1550, i64 0, i32 2
  %1552 = load i32, ptr %1551, align 4, !tbaa !42
  %1553 = and i32 %1552, 256
  %1554 = icmp eq i32 %1553, 0
  br i1 %1554, label %1559, label %1555

1555:                                             ; preds = %1546
  %1556 = load ptr, ptr %1550, align 8, !tbaa !50
  %1557 = getelementptr inbounds %struct.xpvuv, ptr %1556, i64 0, i32 4
  %1558 = load i64, ptr %1557, align 8, !tbaa !15
  br label %1561

1559:                                             ; preds = %1546
  %1560 = call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %1550, i32 noundef 0) #16
  br label %1561

1561:                                             ; preds = %1559, %1555
  %1562 = phi i64 [ %1558, %1555 ], [ %1560, %1559 ]
  br i1 %1521, label %1600, label %1563

1563:                                             ; preds = %1561
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %20) #14
  %1564 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef nonnull %20, i64 noundef %1562, i64 noundef 0) #16
  %1565 = ptrtoint ptr %1564 to i64
  %1566 = sub i64 %1565, %92
  %1567 = shl nsw i64 %1566, 1
  %1568 = getelementptr inbounds i8, ptr %1537, i64 %1567
  %1569 = icmp ult ptr %1568, %1538
  br i1 %1569, label %1595, label %1570

1570:                                             ; preds = %1563
  store i8 0, ptr %1537, align 1, !tbaa !15
  %1571 = ptrtoint ptr %1537 to i64
  %1572 = ptrtoint ptr %1536 to i64
  %1573 = sub i64 %1571, %1572
  %1574 = load ptr, ptr %0, align 8, !tbaa !50
  %1575 = getelementptr inbounds %struct.xpv, ptr %1574, i64 0, i32 2
  store i64 %1573, ptr %1575, align 8, !tbaa !51
  %1576 = add nsw i64 %1567, %1539
  %1577 = getelementptr inbounds i8, ptr %1537, i64 %1576
  %1578 = getelementptr inbounds %struct.xpv, ptr %1574, i64 0, i32 3
  %1579 = load i64, ptr %1578, align 8, !tbaa !15
  %1580 = getelementptr inbounds i8, ptr %1536, i64 %1579
  %1581 = icmp ult ptr %1577, %1580
  br i1 %1581, label %1590, label %1582

1582:                                             ; preds = %1570
  %1583 = call fastcc ptr @S_sv_exp_grow(ptr noundef nonnull %0, i64 noundef %1576) #15
  %1584 = load ptr, ptr %0, align 8, !tbaa !50
  %1585 = getelementptr inbounds %struct.xpv, ptr %1584, i64 0, i32 2
  %1586 = load i64, ptr %1585, align 8, !tbaa !51
  %1587 = getelementptr inbounds i8, ptr %1583, i64 %1586
  %1588 = getelementptr inbounds %struct.xpv, ptr %1584, i64 0, i32 3
  %1589 = load i64, ptr %1588, align 8, !tbaa !15
  br label %1590

1590:                                             ; preds = %1582, %1570
  %1591 = phi i64 [ %1589, %1582 ], [ %1579, %1570 ]
  %1592 = phi ptr [ %1587, %1582 ], [ %1537, %1570 ]
  %1593 = phi ptr [ %1583, %1582 ], [ %1536, %1570 ]
  %1594 = getelementptr inbounds i8, ptr %1593, i64 %1591
  br label %1595

1595:                                             ; preds = %1590, %1563
  %1596 = phi ptr [ %1594, %1590 ], [ %1538, %1563 ]
  %1597 = phi ptr [ %1592, %1590 ], [ %1537, %1563 ]
  %1598 = phi ptr [ %1593, %1590 ], [ %1536, %1563 ]
  %1599 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %20, i64 noundef %1566, ptr noundef %1597, i1 noundef zeroext false) #15
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %20) #14
  br label %1633

1600:                                             ; preds = %1561
  %1601 = icmp ult ptr %1537, %1538
  br i1 %1601, label %1628, label %1602

1602:                                             ; preds = %1600
  store i8 0, ptr %1537, align 1, !tbaa !15
  %1603 = ptrtoint ptr %1537 to i64
  %1604 = ptrtoint ptr %1536 to i64
  %1605 = sub i64 %1603, %1604
  %1606 = load ptr, ptr %0, align 8, !tbaa !50
  %1607 = getelementptr inbounds %struct.xpv, ptr %1606, i64 0, i32 2
  store i64 %1605, ptr %1607, align 8, !tbaa !51
  %1608 = add nuw nsw i64 %1533, 12
  %1609 = getelementptr inbounds i8, ptr %1537, i64 %1608
  %1610 = getelementptr inbounds %struct.xpv, ptr %1606, i64 0, i32 3
  %1611 = load i64, ptr %1610, align 8, !tbaa !15
  %1612 = getelementptr inbounds i8, ptr %1536, i64 %1611
  %1613 = icmp ult ptr %1609, %1612
  br i1 %1613, label %1622, label %1614

1614:                                             ; preds = %1602
  %1615 = call fastcc ptr @S_sv_exp_grow(ptr noundef nonnull %0, i64 noundef %1608) #15
  %1616 = load ptr, ptr %0, align 8, !tbaa !50
  %1617 = getelementptr inbounds %struct.xpv, ptr %1616, i64 0, i32 2
  %1618 = load i64, ptr %1617, align 8, !tbaa !51
  %1619 = getelementptr inbounds i8, ptr %1615, i64 %1618
  %1620 = getelementptr inbounds %struct.xpv, ptr %1616, i64 0, i32 3
  %1621 = load i64, ptr %1620, align 8, !tbaa !15
  br label %1622

1622:                                             ; preds = %1614, %1602
  %1623 = phi i64 [ %1621, %1614 ], [ %1611, %1602 ]
  %1624 = phi ptr [ %1619, %1614 ], [ %1537, %1602 ]
  %1625 = phi ptr [ %1615, %1614 ], [ %1536, %1602 ]
  %1626 = getelementptr inbounds i8, ptr %1625, i64 %1623
  %1627 = getelementptr inbounds i8, ptr %1626, i64 -13
  br label %1628

1628:                                             ; preds = %1622, %1600
  %1629 = phi ptr [ %1627, %1622 ], [ %1538, %1600 ]
  %1630 = phi ptr [ %1624, %1622 ], [ %1537, %1600 ]
  %1631 = phi ptr [ %1625, %1622 ], [ %1536, %1600 ]
  %1632 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %1630, i64 noundef %1562, i64 noundef 0) #16
  br label %1633

1633:                                             ; preds = %1628, %1595
  %1634 = phi ptr [ %1596, %1595 ], [ %1629, %1628 ]
  %1635 = phi ptr [ %1599, %1595 ], [ %1632, %1628 ]
  %1636 = phi ptr [ %1598, %1595 ], [ %1631, %1628 ]
  %1637 = icmp ugt i64 %1533, 1
  br i1 %1637, label %1532, label %2866, !llvm.loop !118

1638:                                             ; preds = %265, %1678
  %1639 = phi i32 [ %122, %265 ], [ %1643, %1678 ]
  %1640 = phi ptr [ %102, %265 ], [ %1652, %1678 ]
  %1641 = phi i32 [ %103, %265 ], [ %1651, %1678 ]
  %1642 = phi ptr [ %154, %265 ], [ %1679, %1678 ]
  %1643 = add nsw i32 %1639, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #14
  br i1 %266, label %1644, label %1650

1644:                                             ; preds = %1638
  %1645 = icmp sgt i32 %1641, 0
  br i1 %1645, label %1646, label %1650

1646:                                             ; preds = %1644
  %1647 = add nsw i32 %1641, -1
  %1648 = getelementptr inbounds ptr, ptr %1640, i64 1
  %1649 = load ptr, ptr %1640, align 8, !tbaa !19
  br label %1650

1650:                                             ; preds = %1638, %1646, %1644
  %1651 = phi i32 [ %1647, %1646 ], [ %1641, %1644 ], [ %1641, %1638 ]
  %1652 = phi ptr [ %1648, %1646 ], [ %1640, %1644 ], [ %1640, %1638 ]
  %1653 = phi ptr [ %1649, %1646 ], [ @PL_sv_no, %1644 ], [ %198, %1638 ]
  %1654 = getelementptr inbounds %struct.sv, ptr %1653, i64 0, i32 2
  %1655 = load i32, ptr %1654, align 4, !tbaa !42
  %1656 = and i32 %1655, 2097664
  %1657 = icmp eq i32 %1656, 512
  br i1 %1657, label %1658, label %1662

1658:                                             ; preds = %1650
  %1659 = load ptr, ptr %1653, align 8, !tbaa !50
  %1660 = getelementptr inbounds %struct.xpvnv, ptr %1659, i64 0, i32 5
  %1661 = load double, ptr %1660, align 8, !tbaa !15
  br label %1664

1662:                                             ; preds = %1650
  %1663 = call double @Perl_sv_2nv_flags(ptr noundef nonnull %1653, i32 noundef 2) #16
  br label %1664

1664:                                             ; preds = %1662, %1658
  %1665 = phi double [ %1661, %1658 ], [ %1663, %1662 ]
  %1666 = fcmp ogt double %1665, 0x47EFFFFFE0000000
  %1667 = fcmp olt double %1665, 0xC7EFFFFFE0000000
  %1668 = select i1 %1667, double 0xFFF0000000000000, double %1665
  %1669 = select i1 %1666, double 0x7FF0000000000000, double %1668
  %1670 = fptrunc double %1669 to float
  store float %1670, ptr %21, align 4, !tbaa !80
  br i1 %268, label %1673, label %1671

1671:                                             ; preds = %1664
  %1672 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %21, i64 noundef 4, ptr noundef %1642, i1 noundef zeroext %200) #15
  br label %1678

1673:                                             ; preds = %1664
  br i1 %200, label %1674, label %1675

1674:                                             ; preds = %1673
  call fastcc void @S_reverse_copy(ptr noundef nonnull %21, ptr noundef %1642, i64 noundef 4) #15
  br label %1676

1675:                                             ; preds = %1673
  store float %1670, ptr %1642, align 1
  br label %1676

1676:                                             ; preds = %1675, %1674
  %1677 = getelementptr inbounds i8, ptr %1642, i64 4
  br label %1678

1678:                                             ; preds = %1676, %1671
  %1679 = phi ptr [ %1672, %1671 ], [ %1677, %1676 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #14
  %1680 = icmp ugt i32 %1639, 1
  br i1 %1680, label %1638, label %2866, !llvm.loop !119

1681:                                             ; preds = %259, %1716
  %1682 = phi i32 [ %122, %259 ], [ %1686, %1716 ]
  %1683 = phi ptr [ %102, %259 ], [ %1695, %1716 ]
  %1684 = phi i32 [ %103, %259 ], [ %1694, %1716 ]
  %1685 = phi ptr [ %154, %259 ], [ %1717, %1716 ]
  %1686 = add nsw i32 %1682, -1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %22) #14
  br i1 %260, label %1687, label %1693

1687:                                             ; preds = %1681
  %1688 = icmp sgt i32 %1684, 0
  br i1 %1688, label %1689, label %1693

1689:                                             ; preds = %1687
  %1690 = add nsw i32 %1684, -1
  %1691 = getelementptr inbounds ptr, ptr %1683, i64 1
  %1692 = load ptr, ptr %1683, align 8, !tbaa !19
  br label %1693

1693:                                             ; preds = %1681, %1689, %1687
  %1694 = phi i32 [ %1690, %1689 ], [ %1684, %1687 ], [ %1684, %1681 ]
  %1695 = phi ptr [ %1691, %1689 ], [ %1683, %1687 ], [ %1683, %1681 ]
  %1696 = phi ptr [ %1692, %1689 ], [ @PL_sv_no, %1687 ], [ %198, %1681 ]
  %1697 = getelementptr inbounds %struct.sv, ptr %1696, i64 0, i32 2
  %1698 = load i32, ptr %1697, align 4, !tbaa !42
  %1699 = and i32 %1698, 2097664
  %1700 = icmp eq i32 %1699, 512
  br i1 %1700, label %1701, label %1705

1701:                                             ; preds = %1693
  %1702 = load ptr, ptr %1696, align 8, !tbaa !50
  %1703 = getelementptr inbounds %struct.xpvnv, ptr %1702, i64 0, i32 5
  %1704 = load double, ptr %1703, align 8, !tbaa !15
  br label %1707

1705:                                             ; preds = %1693
  %1706 = call double @Perl_sv_2nv_flags(ptr noundef nonnull %1696, i32 noundef 2) #16
  br label %1707

1707:                                             ; preds = %1705, %1701
  %1708 = phi double [ %1704, %1701 ], [ %1706, %1705 ]
  store double %1708, ptr %22, align 8, !tbaa !83
  br i1 %262, label %1711, label %1709

1709:                                             ; preds = %1707
  %1710 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %22, i64 noundef 8, ptr noundef %1685, i1 noundef zeroext %200) #15
  br label %1716

1711:                                             ; preds = %1707
  br i1 %200, label %1712, label %1713

1712:                                             ; preds = %1711
  call fastcc void @S_reverse_copy(ptr noundef nonnull %22, ptr noundef %1685, i64 noundef 8) #15
  br label %1714

1713:                                             ; preds = %1711
  store double %1708, ptr %1685, align 1
  br label %1714

1714:                                             ; preds = %1713, %1712
  %1715 = getelementptr inbounds i8, ptr %1685, i64 8
  br label %1716

1716:                                             ; preds = %1714, %1709
  %1717 = phi ptr [ %1710, %1709 ], [ %1715, %1714 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %22) #14
  %1718 = icmp ugt i32 %1682, 1
  br i1 %1718, label %1681, label %2866, !llvm.loop !120

1719:                                             ; preds = %197
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %23) #14
  store i64 0, ptr %23, align 8
  %1720 = icmp sgt i32 %122, 0
  br i1 %1720, label %1721, label %1752

1721:                                             ; preds = %1719
  %1722 = icmp eq ptr %198, null
  %1723 = and i8 %104, 1
  %1724 = icmp eq i8 %1723, 0
  br label %1725

1725:                                             ; preds = %1721, %1749
  %1726 = phi i32 [ %122, %1721 ], [ %1730, %1749 ]
  %1727 = phi ptr [ %102, %1721 ], [ %1739, %1749 ]
  %1728 = phi i32 [ %103, %1721 ], [ %1738, %1749 ]
  %1729 = phi ptr [ %154, %1721 ], [ %1750, %1749 ]
  %1730 = add nsw i32 %1726, -1
  br i1 %1722, label %1731, label %1737

1731:                                             ; preds = %1725
  %1732 = icmp sgt i32 %1728, 0
  br i1 %1732, label %1733, label %1737

1733:                                             ; preds = %1731
  %1734 = add nsw i32 %1728, -1
  %1735 = getelementptr inbounds ptr, ptr %1727, i64 1
  %1736 = load ptr, ptr %1727, align 8, !tbaa !19
  br label %1737

1737:                                             ; preds = %1725, %1733, %1731
  %1738 = phi i32 [ %1734, %1733 ], [ %1728, %1731 ], [ %1728, %1725 ]
  %1739 = phi ptr [ %1735, %1733 ], [ %1727, %1731 ], [ %1727, %1725 ]
  %1740 = phi ptr [ %1736, %1733 ], [ @PL_sv_no, %1731 ], [ %198, %1725 ]
  %1741 = call double @Perl_sv_2nv_flags(ptr noundef %1740, i32 noundef 2) #16
  store double %1741, ptr %23, align 8, !tbaa !15
  br i1 %1724, label %1744, label %1742

1742:                                             ; preds = %1737
  %1743 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %23, i64 noundef 8, ptr noundef %1729, i1 noundef zeroext %200) #15
  br label %1749

1744:                                             ; preds = %1737
  br i1 %200, label %1745, label %1746

1745:                                             ; preds = %1744
  call fastcc void @S_reverse_copy(ptr noundef nonnull %23, ptr noundef %1729, i64 noundef 8) #15
  br label %1747

1746:                                             ; preds = %1744
  store double %1741, ptr %1729, align 1
  br label %1747

1747:                                             ; preds = %1746, %1745
  %1748 = getelementptr inbounds i8, ptr %1729, i64 8
  br label %1749

1749:                                             ; preds = %1747, %1742
  %1750 = phi ptr [ %1743, %1742 ], [ %1748, %1747 ]
  %1751 = icmp ugt i32 %1726, 1
  br i1 %1751, label %1725, label %1752, !llvm.loop !121

1752:                                             ; preds = %1749, %1719
  %1753 = phi ptr [ %154, %1719 ], [ %1750, %1749 ]
  %1754 = phi i32 [ %103, %1719 ], [ %1738, %1749 ]
  %1755 = phi ptr [ %102, %1719 ], [ %1739, %1749 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %23) #14
  br label %2866

1756:                                             ; preds = %197, %197
  %1757 = icmp sgt i32 %122, 0
  br i1 %1757, label %1758, label %2866

1758:                                             ; preds = %1756
  %1759 = icmp eq ptr %198, null
  %1760 = and i8 %104, 1
  %1761 = icmp eq i8 %1760, 0
  br label %1762

1762:                                             ; preds = %1758, %1797
  %1763 = phi i32 [ %122, %1758 ], [ %1767, %1797 ]
  %1764 = phi ptr [ %102, %1758 ], [ %1776, %1797 ]
  %1765 = phi i32 [ %103, %1758 ], [ %1775, %1797 ]
  %1766 = phi ptr [ %154, %1758 ], [ %1798, %1797 ]
  %1767 = add nsw i32 %1763, -1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %24) #14
  br i1 %1759, label %1768, label %1774

1768:                                             ; preds = %1762
  %1769 = icmp sgt i32 %1765, 0
  br i1 %1769, label %1770, label %1774

1770:                                             ; preds = %1768
  %1771 = add nsw i32 %1765, -1
  %1772 = getelementptr inbounds ptr, ptr %1764, i64 1
  %1773 = load ptr, ptr %1764, align 8, !tbaa !19
  br label %1774

1774:                                             ; preds = %1762, %1770, %1768
  %1775 = phi i32 [ %1771, %1770 ], [ %1765, %1768 ], [ %1765, %1762 ]
  %1776 = phi ptr [ %1772, %1770 ], [ %1764, %1768 ], [ %1764, %1762 ]
  %1777 = phi ptr [ %1773, %1770 ], [ @PL_sv_no, %1768 ], [ %198, %1762 ]
  %1778 = call fastcc ptr @S_sv_check_infnan(ptr noundef %1777, i32 noundef %105) #15
  %1779 = getelementptr inbounds %struct.sv, ptr %1778, i64 0, i32 2
  %1780 = load i32, ptr %1779, align 4, !tbaa !42
  %1781 = and i32 %1780, 256
  %1782 = icmp eq i32 %1781, 0
  br i1 %1782, label %1787, label %1783

1783:                                             ; preds = %1774
  %1784 = load ptr, ptr %1778, align 8, !tbaa !50
  %1785 = getelementptr inbounds %struct.xpviv, ptr %1784, i64 0, i32 4
  %1786 = load i64, ptr %1785, align 8, !tbaa !15
  br label %1789

1787:                                             ; preds = %1774
  %1788 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %1778, i32 noundef 0) #16
  br label %1789

1789:                                             ; preds = %1787, %1783
  %1790 = phi i64 [ %1786, %1783 ], [ %1788, %1787 ]
  %1791 = trunc i64 %1790 to i16
  %1792 = call fastcc zeroext i16 @__bswap_16(i16 noundef zeroext %1791) #15
  store i16 %1792, ptr %24, align 2, !tbaa !60
  br i1 %1761, label %1795, label %1793

1793:                                             ; preds = %1789
  %1794 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %24, i64 noundef 2, ptr noundef %1766, i1 noundef zeroext false) #15
  br label %1797

1795:                                             ; preds = %1789
  store i16 %1792, ptr %1766, align 1
  %1796 = getelementptr inbounds i8, ptr %1766, i64 2
  br label %1797

1797:                                             ; preds = %1795, %1793
  %1798 = phi ptr [ %1794, %1793 ], [ %1796, %1795 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %24) #14
  %1799 = icmp ugt i32 %1763, 1
  br i1 %1799, label %1762, label %2866, !llvm.loop !122

1800:                                             ; preds = %197, %197
  %1801 = icmp sgt i32 %122, 0
  br i1 %1801, label %1802, label %2866

1802:                                             ; preds = %1800
  %1803 = icmp eq ptr %198, null
  %1804 = and i8 %104, 1
  %1805 = icmp eq i8 %1804, 0
  br label %1806

1806:                                             ; preds = %1802, %1840
  %1807 = phi i32 [ %122, %1802 ], [ %1811, %1840 ]
  %1808 = phi ptr [ %102, %1802 ], [ %1820, %1840 ]
  %1809 = phi i32 [ %103, %1802 ], [ %1819, %1840 ]
  %1810 = phi ptr [ %154, %1802 ], [ %1841, %1840 ]
  %1811 = add nsw i32 %1807, -1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %25) #14
  br i1 %1803, label %1812, label %1818

1812:                                             ; preds = %1806
  %1813 = icmp sgt i32 %1809, 0
  br i1 %1813, label %1814, label %1818

1814:                                             ; preds = %1812
  %1815 = add nsw i32 %1809, -1
  %1816 = getelementptr inbounds ptr, ptr %1808, i64 1
  %1817 = load ptr, ptr %1808, align 8, !tbaa !19
  br label %1818

1818:                                             ; preds = %1806, %1814, %1812
  %1819 = phi i32 [ %1815, %1814 ], [ %1809, %1812 ], [ %1809, %1806 ]
  %1820 = phi ptr [ %1816, %1814 ], [ %1808, %1812 ], [ %1808, %1806 ]
  %1821 = phi ptr [ %1817, %1814 ], [ @PL_sv_no, %1812 ], [ %198, %1806 ]
  %1822 = call fastcc ptr @S_sv_check_infnan(ptr noundef %1821, i32 noundef %105) #15
  %1823 = getelementptr inbounds %struct.sv, ptr %1822, i64 0, i32 2
  %1824 = load i32, ptr %1823, align 4, !tbaa !42
  %1825 = and i32 %1824, 256
  %1826 = icmp eq i32 %1825, 0
  br i1 %1826, label %1831, label %1827

1827:                                             ; preds = %1818
  %1828 = load ptr, ptr %1822, align 8, !tbaa !50
  %1829 = getelementptr inbounds %struct.xpviv, ptr %1828, i64 0, i32 4
  %1830 = load i64, ptr %1829, align 8, !tbaa !15
  br label %1833

1831:                                             ; preds = %1818
  %1832 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %1822, i32 noundef 0) #16
  br label %1833

1833:                                             ; preds = %1831, %1827
  %1834 = phi i64 [ %1830, %1827 ], [ %1832, %1831 ]
  %1835 = trunc i64 %1834 to i16
  store i16 %1835, ptr %25, align 2, !tbaa !60
  br i1 %1805, label %1838, label %1836

1836:                                             ; preds = %1833
  %1837 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %25, i64 noundef 2, ptr noundef %1810, i1 noundef zeroext false) #15
  br label %1840

1838:                                             ; preds = %1833
  store i16 %1835, ptr %1810, align 1
  %1839 = getelementptr inbounds i8, ptr %1810, i64 2
  br label %1840

1840:                                             ; preds = %1838, %1836
  %1841 = phi ptr [ %1837, %1836 ], [ %1839, %1838 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %25) #14
  %1842 = icmp ugt i32 %1807, 1
  br i1 %1842, label %1806, label %2866, !llvm.loop !123

1843:                                             ; preds = %197, %197
  %1844 = icmp sgt i32 %122, 0
  br i1 %1844, label %1845, label %2866

1845:                                             ; preds = %1843
  %1846 = icmp eq ptr %198, null
  %1847 = and i8 %104, 1
  %1848 = icmp eq i8 %1847, 0
  br label %1849

1849:                                             ; preds = %1845, %1886
  %1850 = phi i32 [ %122, %1845 ], [ %1854, %1886 ]
  %1851 = phi ptr [ %102, %1845 ], [ %1863, %1886 ]
  %1852 = phi i32 [ %103, %1845 ], [ %1862, %1886 ]
  %1853 = phi ptr [ %154, %1845 ], [ %1887, %1886 ]
  %1854 = add nsw i32 %1850, -1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %26) #14
  br i1 %1846, label %1855, label %1861

1855:                                             ; preds = %1849
  %1856 = icmp sgt i32 %1852, 0
  br i1 %1856, label %1857, label %1861

1857:                                             ; preds = %1855
  %1858 = add nsw i32 %1852, -1
  %1859 = getelementptr inbounds ptr, ptr %1851, i64 1
  %1860 = load ptr, ptr %1851, align 8, !tbaa !19
  br label %1861

1861:                                             ; preds = %1849, %1857, %1855
  %1862 = phi i32 [ %1858, %1857 ], [ %1852, %1855 ], [ %1852, %1849 ]
  %1863 = phi ptr [ %1859, %1857 ], [ %1851, %1855 ], [ %1851, %1849 ]
  %1864 = phi ptr [ %1860, %1857 ], [ @PL_sv_no, %1855 ], [ %198, %1849 ]
  %1865 = call fastcc ptr @S_sv_check_infnan(ptr noundef %1864, i32 noundef %105) #15
  %1866 = getelementptr inbounds %struct.sv, ptr %1865, i64 0, i32 2
  %1867 = load i32, ptr %1866, align 4, !tbaa !42
  %1868 = and i32 %1867, 256
  %1869 = icmp eq i32 %1868, 0
  br i1 %1869, label %1874, label %1870

1870:                                             ; preds = %1861
  %1871 = load ptr, ptr %1865, align 8, !tbaa !50
  %1872 = getelementptr inbounds %struct.xpvuv, ptr %1871, i64 0, i32 4
  %1873 = load i64, ptr %1872, align 8, !tbaa !15
  br label %1876

1874:                                             ; preds = %1861
  %1875 = call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %1865, i32 noundef 0) #16
  br label %1876

1876:                                             ; preds = %1874, %1870
  %1877 = phi i64 [ %1873, %1870 ], [ %1875, %1874 ]
  %1878 = trunc i64 %1877 to i16
  store i16 %1878, ptr %26, align 2, !tbaa !60
  br i1 %1848, label %1881, label %1879

1879:                                             ; preds = %1876
  %1880 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %26, i64 noundef 2, ptr noundef %1853, i1 noundef zeroext %200) #15
  br label %1886

1881:                                             ; preds = %1876
  br i1 %200, label %1882, label %1883

1882:                                             ; preds = %1881
  call fastcc void @S_reverse_copy(ptr noundef nonnull %26, ptr noundef %1853, i64 noundef 2) #15
  br label %1884

1883:                                             ; preds = %1881
  store i16 %1878, ptr %1853, align 1
  br label %1884

1884:                                             ; preds = %1883, %1882
  %1885 = getelementptr inbounds i8, ptr %1853, i64 2
  br label %1886

1886:                                             ; preds = %1884, %1879
  %1887 = phi ptr [ %1880, %1879 ], [ %1885, %1884 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %26) #14
  %1888 = icmp ugt i32 %1850, 1
  br i1 %1888, label %1849, label %2866, !llvm.loop !124

1889:                                             ; preds = %197, %197
  %1890 = icmp sgt i32 %122, 0
  br i1 %1890, label %1891, label %2866

1891:                                             ; preds = %1889
  %1892 = icmp eq ptr %198, null
  %1893 = and i8 %104, 1
  %1894 = icmp eq i8 %1893, 0
  br label %1895

1895:                                             ; preds = %1891, %1932
  %1896 = phi i32 [ %122, %1891 ], [ %1900, %1932 ]
  %1897 = phi ptr [ %102, %1891 ], [ %1909, %1932 ]
  %1898 = phi i32 [ %103, %1891 ], [ %1908, %1932 ]
  %1899 = phi ptr [ %154, %1891 ], [ %1933, %1932 ]
  %1900 = add nsw i32 %1896, -1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %27) #14
  br i1 %1892, label %1901, label %1907

1901:                                             ; preds = %1895
  %1902 = icmp sgt i32 %1898, 0
  br i1 %1902, label %1903, label %1907

1903:                                             ; preds = %1901
  %1904 = add nsw i32 %1898, -1
  %1905 = getelementptr inbounds ptr, ptr %1897, i64 1
  %1906 = load ptr, ptr %1897, align 8, !tbaa !19
  br label %1907

1907:                                             ; preds = %1895, %1903, %1901
  %1908 = phi i32 [ %1904, %1903 ], [ %1898, %1901 ], [ %1898, %1895 ]
  %1909 = phi ptr [ %1905, %1903 ], [ %1897, %1901 ], [ %1897, %1895 ]
  %1910 = phi ptr [ %1906, %1903 ], [ @PL_sv_no, %1901 ], [ %198, %1895 ]
  %1911 = call fastcc ptr @S_sv_check_infnan(ptr noundef %1910, i32 noundef %105) #15
  %1912 = getelementptr inbounds %struct.sv, ptr %1911, i64 0, i32 2
  %1913 = load i32, ptr %1912, align 4, !tbaa !42
  %1914 = and i32 %1913, 256
  %1915 = icmp eq i32 %1914, 0
  br i1 %1915, label %1920, label %1916

1916:                                             ; preds = %1907
  %1917 = load ptr, ptr %1911, align 8, !tbaa !50
  %1918 = getelementptr inbounds %struct.xpviv, ptr %1917, i64 0, i32 4
  %1919 = load i64, ptr %1918, align 8, !tbaa !15
  br label %1922

1920:                                             ; preds = %1907
  %1921 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %1911, i32 noundef 0) #16
  br label %1922

1922:                                             ; preds = %1920, %1916
  %1923 = phi i64 [ %1919, %1916 ], [ %1921, %1920 ]
  %1924 = trunc i64 %1923 to i16
  store i16 %1924, ptr %27, align 2, !tbaa !60
  br i1 %1894, label %1927, label %1925

1925:                                             ; preds = %1922
  %1926 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %27, i64 noundef 2, ptr noundef %1899, i1 noundef zeroext %200) #15
  br label %1932

1927:                                             ; preds = %1922
  br i1 %200, label %1928, label %1929

1928:                                             ; preds = %1927
  call fastcc void @S_reverse_copy(ptr noundef nonnull %27, ptr noundef %1899, i64 noundef 2) #15
  br label %1930

1929:                                             ; preds = %1927
  store i16 %1924, ptr %1899, align 1
  br label %1930

1930:                                             ; preds = %1929, %1928
  %1931 = getelementptr inbounds i8, ptr %1899, i64 2
  br label %1932

1932:                                             ; preds = %1930, %1925
  %1933 = phi ptr [ %1926, %1925 ], [ %1931, %1930 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %27) #14
  %1934 = icmp ugt i32 %1896, 1
  br i1 %1934, label %1895, label %2866, !llvm.loop !125

1935:                                             ; preds = %197, %197
  %1936 = icmp sgt i32 %122, 0
  br i1 %1936, label %1937, label %2866

1937:                                             ; preds = %1935
  %1938 = icmp eq ptr %198, null
  %1939 = and i8 %104, 1
  %1940 = icmp eq i8 %1939, 0
  br label %1941

1941:                                             ; preds = %1937, %1978
  %1942 = phi i32 [ %122, %1937 ], [ %1946, %1978 ]
  %1943 = phi ptr [ %102, %1937 ], [ %1955, %1978 ]
  %1944 = phi i32 [ %103, %1937 ], [ %1954, %1978 ]
  %1945 = phi ptr [ %154, %1937 ], [ %1979, %1978 ]
  %1946 = add nsw i32 %1942, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %28) #14
  br i1 %1938, label %1947, label %1953

1947:                                             ; preds = %1941
  %1948 = icmp sgt i32 %1944, 0
  br i1 %1948, label %1949, label %1953

1949:                                             ; preds = %1947
  %1950 = add nsw i32 %1944, -1
  %1951 = getelementptr inbounds ptr, ptr %1943, i64 1
  %1952 = load ptr, ptr %1943, align 8, !tbaa !19
  br label %1953

1953:                                             ; preds = %1941, %1949, %1947
  %1954 = phi i32 [ %1950, %1949 ], [ %1944, %1947 ], [ %1944, %1941 ]
  %1955 = phi ptr [ %1951, %1949 ], [ %1943, %1947 ], [ %1943, %1941 ]
  %1956 = phi ptr [ %1952, %1949 ], [ @PL_sv_no, %1947 ], [ %198, %1941 ]
  %1957 = call fastcc ptr @S_sv_check_infnan(ptr noundef %1956, i32 noundef %105) #15
  %1958 = getelementptr inbounds %struct.sv, ptr %1957, i64 0, i32 2
  %1959 = load i32, ptr %1958, align 4, !tbaa !42
  %1960 = and i32 %1959, 256
  %1961 = icmp eq i32 %1960, 0
  br i1 %1961, label %1966, label %1962

1962:                                             ; preds = %1953
  %1963 = load ptr, ptr %1957, align 8, !tbaa !50
  %1964 = getelementptr inbounds %struct.xpvuv, ptr %1963, i64 0, i32 4
  %1965 = load i64, ptr %1964, align 8, !tbaa !15
  br label %1968

1966:                                             ; preds = %1953
  %1967 = call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %1957, i32 noundef 0) #16
  br label %1968

1968:                                             ; preds = %1966, %1962
  %1969 = phi i64 [ %1965, %1962 ], [ %1967, %1966 ]
  %1970 = trunc i64 %1969 to i32
  store i32 %1970, ptr %28, align 4, !tbaa !26
  br i1 %1940, label %1973, label %1971

1971:                                             ; preds = %1968
  %1972 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %28, i64 noundef 4, ptr noundef %1945, i1 noundef zeroext %200) #15
  br label %1978

1973:                                             ; preds = %1968
  br i1 %200, label %1974, label %1975

1974:                                             ; preds = %1973
  call fastcc void @S_reverse_copy(ptr noundef nonnull %28, ptr noundef %1945, i64 noundef 4) #15
  br label %1976

1975:                                             ; preds = %1973
  store i32 %1970, ptr %1945, align 1
  br label %1976

1976:                                             ; preds = %1975, %1974
  %1977 = getelementptr inbounds i8, ptr %1945, i64 4
  br label %1978

1978:                                             ; preds = %1976, %1971
  %1979 = phi ptr [ %1972, %1971 ], [ %1977, %1976 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %28) #14
  %1980 = icmp ugt i32 %1942, 1
  br i1 %1980, label %1941, label %2866, !llvm.loop !126

1981:                                             ; preds = %253, %2017
  %1982 = phi i32 [ %122, %253 ], [ %1986, %2017 ]
  %1983 = phi ptr [ %102, %253 ], [ %1995, %2017 ]
  %1984 = phi i32 [ %103, %253 ], [ %1994, %2017 ]
  %1985 = phi ptr [ %154, %253 ], [ %2018, %2017 ]
  %1986 = add nsw i32 %1982, -1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %29) #14
  br i1 %254, label %1987, label %1993

1987:                                             ; preds = %1981
  %1988 = icmp sgt i32 %1984, 0
  br i1 %1988, label %1989, label %1993

1989:                                             ; preds = %1987
  %1990 = add nsw i32 %1984, -1
  %1991 = getelementptr inbounds ptr, ptr %1983, i64 1
  %1992 = load ptr, ptr %1983, align 8, !tbaa !19
  br label %1993

1993:                                             ; preds = %1981, %1989, %1987
  %1994 = phi i32 [ %1990, %1989 ], [ %1984, %1987 ], [ %1984, %1981 ]
  %1995 = phi ptr [ %1991, %1989 ], [ %1983, %1987 ], [ %1983, %1981 ]
  %1996 = phi ptr [ %1992, %1989 ], [ @PL_sv_no, %1987 ], [ %198, %1981 ]
  %1997 = call fastcc ptr @S_sv_check_infnan(ptr noundef %1996, i32 noundef %105) #15
  %1998 = getelementptr inbounds %struct.sv, ptr %1997, i64 0, i32 2
  %1999 = load i32, ptr %1998, align 4, !tbaa !42
  %2000 = and i32 %1999, 256
  %2001 = icmp eq i32 %2000, 0
  br i1 %2001, label %2006, label %2002

2002:                                             ; preds = %1993
  %2003 = load ptr, ptr %1997, align 8, !tbaa !50
  %2004 = getelementptr inbounds %struct.xpviv, ptr %2003, i64 0, i32 4
  %2005 = load i64, ptr %2004, align 8, !tbaa !15
  br label %2008

2006:                                             ; preds = %1993
  %2007 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %1997, i32 noundef 0) #16
  br label %2008

2008:                                             ; preds = %2006, %2002
  %2009 = phi i64 [ %2005, %2002 ], [ %2007, %2006 ]
  store i64 %2009, ptr %29, align 8, !tbaa !5
  br i1 %256, label %2012, label %2010

2010:                                             ; preds = %2008
  %2011 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %29, i64 noundef 8, ptr noundef %1985, i1 noundef zeroext %200) #15
  br label %2017

2012:                                             ; preds = %2008
  br i1 %200, label %2013, label %2014

2013:                                             ; preds = %2012
  call fastcc void @S_reverse_copy(ptr noundef nonnull %29, ptr noundef %1985, i64 noundef 8) #15
  br label %2015

2014:                                             ; preds = %2012
  store i64 %2009, ptr %1985, align 1
  br label %2015

2015:                                             ; preds = %2014, %2013
  %2016 = getelementptr inbounds i8, ptr %1985, i64 8
  br label %2017

2017:                                             ; preds = %2015, %2010
  %2018 = phi ptr [ %2011, %2010 ], [ %2016, %2015 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %29) #14
  %2019 = icmp ugt i32 %1982, 1
  br i1 %2019, label %1981, label %2866, !llvm.loop !127

2020:                                             ; preds = %247, %2056
  %2021 = phi i32 [ %122, %247 ], [ %2025, %2056 ]
  %2022 = phi ptr [ %102, %247 ], [ %2034, %2056 ]
  %2023 = phi i32 [ %103, %247 ], [ %2033, %2056 ]
  %2024 = phi ptr [ %154, %247 ], [ %2057, %2056 ]
  %2025 = add nsw i32 %2021, -1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %30) #14
  br i1 %248, label %2026, label %2032

2026:                                             ; preds = %2020
  %2027 = icmp sgt i32 %2023, 0
  br i1 %2027, label %2028, label %2032

2028:                                             ; preds = %2026
  %2029 = add nsw i32 %2023, -1
  %2030 = getelementptr inbounds ptr, ptr %2022, i64 1
  %2031 = load ptr, ptr %2022, align 8, !tbaa !19
  br label %2032

2032:                                             ; preds = %2020, %2028, %2026
  %2033 = phi i32 [ %2029, %2028 ], [ %2023, %2026 ], [ %2023, %2020 ]
  %2034 = phi ptr [ %2030, %2028 ], [ %2022, %2026 ], [ %2022, %2020 ]
  %2035 = phi ptr [ %2031, %2028 ], [ @PL_sv_no, %2026 ], [ %198, %2020 ]
  %2036 = call fastcc ptr @S_sv_check_infnan(ptr noundef %2035, i32 noundef %105) #15
  %2037 = getelementptr inbounds %struct.sv, ptr %2036, i64 0, i32 2
  %2038 = load i32, ptr %2037, align 4, !tbaa !42
  %2039 = and i32 %2038, 256
  %2040 = icmp eq i32 %2039, 0
  br i1 %2040, label %2045, label %2041

2041:                                             ; preds = %2032
  %2042 = load ptr, ptr %2036, align 8, !tbaa !50
  %2043 = getelementptr inbounds %struct.xpvuv, ptr %2042, i64 0, i32 4
  %2044 = load i64, ptr %2043, align 8, !tbaa !15
  br label %2047

2045:                                             ; preds = %2032
  %2046 = call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %2036, i32 noundef 0) #16
  br label %2047

2047:                                             ; preds = %2045, %2041
  %2048 = phi i64 [ %2044, %2041 ], [ %2046, %2045 ]
  store i64 %2048, ptr %30, align 8, !tbaa !5
  br i1 %250, label %2051, label %2049

2049:                                             ; preds = %2047
  %2050 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %30, i64 noundef 8, ptr noundef %2024, i1 noundef zeroext %200) #15
  br label %2056

2051:                                             ; preds = %2047
  br i1 %200, label %2052, label %2053

2052:                                             ; preds = %2051
  call fastcc void @S_reverse_copy(ptr noundef nonnull %30, ptr noundef %2024, i64 noundef 8) #15
  br label %2054

2053:                                             ; preds = %2051
  store i64 %2048, ptr %2024, align 1
  br label %2054

2054:                                             ; preds = %2053, %2052
  %2055 = getelementptr inbounds i8, ptr %2024, i64 8
  br label %2056

2056:                                             ; preds = %2054, %2049
  %2057 = phi ptr [ %2050, %2049 ], [ %2055, %2054 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %30) #14
  %2058 = icmp ugt i32 %2021, 1
  br i1 %2058, label %2020, label %2866, !llvm.loop !128

2059:                                             ; preds = %240, %2272
  %2060 = phi i32 [ %122, %240 ], [ %2065, %2272 ]
  %2061 = phi ptr [ %102, %240 ], [ %2074, %2272 ]
  %2062 = phi i32 [ %103, %240 ], [ %2073, %2272 ]
  %2063 = phi ptr [ %155, %240 ], [ %2274, %2272 ]
  %2064 = phi ptr [ %154, %240 ], [ %2273, %2272 ]
  %2065 = add nsw i32 %2060, -1
  br i1 %241, label %2066, label %2072

2066:                                             ; preds = %2059
  %2067 = icmp sgt i32 %2062, 0
  br i1 %2067, label %2068, label %2072

2068:                                             ; preds = %2066
  %2069 = add nsw i32 %2062, -1
  %2070 = getelementptr inbounds ptr, ptr %2061, i64 1
  %2071 = load ptr, ptr %2061, align 8, !tbaa !19
  br label %2072

2072:                                             ; preds = %2059, %2068, %2066
  %2073 = phi i32 [ %2069, %2068 ], [ %2062, %2066 ], [ %2062, %2059 ]
  %2074 = phi ptr [ %2070, %2068 ], [ %2061, %2066 ], [ %2061, %2059 ]
  %2075 = phi ptr [ %2071, %2068 ], [ @PL_sv_no, %2066 ], [ %198, %2059 ]
  %2076 = call fastcc ptr @S_sv_check_infnan(ptr noundef %2075, i32 noundef %105) #15
  %2077 = getelementptr inbounds %struct.sv, ptr %2075, i64 0, i32 2
  %2078 = load i32, ptr %2077, align 4, !tbaa !42
  %2079 = and i32 %2078, 512
  %2080 = icmp eq i32 %2079, 0
  br i1 %2080, label %2085, label %2081

2081:                                             ; preds = %2072
  %2082 = load ptr, ptr %2075, align 8, !tbaa !50
  %2083 = getelementptr inbounds %struct.xpvnv, ptr %2082, i64 0, i32 5
  %2084 = load double, ptr %2083, align 8, !tbaa !15
  br label %2087

2085:                                             ; preds = %2072
  %2086 = call double @Perl_sv_2nv_flags(ptr noundef nonnull %2075, i32 noundef 0) #16
  br label %2087

2087:                                             ; preds = %2085, %2081
  %2088 = phi double [ %2084, %2081 ], [ %2086, %2085 ]
  %2089 = fcmp olt double %2088, 0.000000e+00
  br i1 %2089, label %2090, label %2096

2090:                                             ; preds = %2087
  store i8 0, ptr %2064, align 1, !tbaa !15
  %2091 = ptrtoint ptr %2064 to i64
  %2092 = ptrtoint ptr %2063 to i64
  %2093 = sub i64 %2091, %2092
  %2094 = load ptr, ptr %0, align 8, !tbaa !50
  %2095 = getelementptr inbounds %struct.xpv, ptr %2094, i64 0, i32 2
  store i64 %2093, ptr %2095, align 8, !tbaa !51
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.54) #16
  br label %2096

2096:                                             ; preds = %2090, %2087
  %2097 = load i32, ptr %2077, align 4, !tbaa !42
  %2098 = and i32 %2097, 256
  %2099 = icmp ne i32 %2098, 0
  %2100 = fcmp olt double %2088, 0x43F0000000000000
  %2101 = or i1 %2100, %2099
  br i1 %2101, label %2102, label %2152

2102:                                             ; preds = %2096
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %31) #14
  %2103 = icmp eq i32 %2098, 0
  br i1 %2103, label %2108, label %2104

2104:                                             ; preds = %2102
  %2105 = load ptr, ptr %2075, align 8, !tbaa !50
  %2106 = getelementptr inbounds %struct.xpvuv, ptr %2105, i64 0, i32 4
  %2107 = load i64, ptr %2106, align 8, !tbaa !15
  br label %2110

2108:                                             ; preds = %2102
  %2109 = call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %2075, i32 noundef 0) #16
  br label %2110

2110:                                             ; preds = %2108, %2104
  %2111 = phi i64 [ %2107, %2104 ], [ %2109, %2108 ]
  br label %2112

2112:                                             ; preds = %2110, %2112
  %2113 = phi ptr [ %2117, %2112 ], [ %89, %2110 ]
  %2114 = phi i64 [ %2118, %2112 ], [ %2111, %2110 ]
  %2115 = trunc i64 %2114 to i8
  %2116 = or i8 %2115, -128
  %2117 = getelementptr inbounds i8, ptr %2113, i64 -1
  store i8 %2116, ptr %2117, align 1, !tbaa !15
  %2118 = lshr i64 %2114, 7
  %2119 = icmp ult i64 %2114, 128
  br i1 %2119, label %2120, label %2112, !llvm.loop !129

2120:                                             ; preds = %2112
  %2121 = load i8, ptr %90, align 1, !tbaa !15
  %2122 = and i8 %2121, 127
  store i8 %2122, ptr %90, align 1, !tbaa !15
  %2123 = ptrtoint ptr %2117 to i64
  %2124 = sub i64 %91, %2123
  %2125 = shl i64 %2124, %244
  %2126 = getelementptr inbounds i8, ptr %2064, i64 %2125
  %2127 = load ptr, ptr %0, align 8, !tbaa !50
  %2128 = getelementptr inbounds %struct.xpv, ptr %2127, i64 0, i32 3
  %2129 = load i64, ptr %2128, align 8, !tbaa !15
  %2130 = getelementptr inbounds i8, ptr %2063, i64 %2129
  %2131 = icmp ult ptr %2126, %2130
  br i1 %2131, label %2143, label %2132

2132:                                             ; preds = %2120
  store i8 0, ptr %2064, align 1, !tbaa !15
  %2133 = ptrtoint ptr %2064 to i64
  %2134 = ptrtoint ptr %2063 to i64
  %2135 = sub i64 %2133, %2134
  %2136 = load ptr, ptr %0, align 8, !tbaa !50
  %2137 = getelementptr inbounds %struct.xpv, ptr %2136, i64 0, i32 2
  store i64 %2135, ptr %2137, align 8, !tbaa !51
  %2138 = call fastcc ptr @S_sv_exp_grow(ptr noundef nonnull %0, i64 noundef %2125) #15
  %2139 = load ptr, ptr %0, align 8, !tbaa !50
  %2140 = getelementptr inbounds %struct.xpv, ptr %2139, i64 0, i32 2
  %2141 = load i64, ptr %2140, align 8, !tbaa !51
  %2142 = getelementptr inbounds i8, ptr %2138, i64 %2141
  br label %2143

2143:                                             ; preds = %2120, %2132
  %2144 = phi ptr [ %2142, %2132 ], [ %2064, %2120 ]
  %2145 = phi ptr [ %2138, %2132 ], [ %2063, %2120 ]
  br i1 %243, label %2148, label %2146

2146:                                             ; preds = %2143
  %2147 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %2117, i64 noundef %2124, ptr noundef %2144, i1 noundef zeroext false) #15
  br label %2150

2148:                                             ; preds = %2143
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %2144, ptr noundef nonnull align 1 dereferenceable(1) %2117, i64 %2124, i1 false)
  %2149 = getelementptr inbounds i8, ptr %2144, i64 %2124
  br label %2150

2150:                                             ; preds = %2148, %2146
  %2151 = phi ptr [ %2147, %2146 ], [ %2149, %2148 ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %31) #14
  br label %2272

2152:                                             ; preds = %2096
  %2153 = and i32 %2097, 24576
  %2154 = icmp eq i32 %2153, 8192
  br i1 %2154, label %2155, label %2203

2155:                                             ; preds = %2152
  call void @llvm.lifetime.start.p0(i64 155, ptr nonnull %32) #14
  %2156 = call double @llvm.floor.f64(double %2088)
  br label %2157

2157:                                             ; preds = %2164, %2155
  %2158 = phi double [ %2156, %2155 ], [ %2161, %2164 ]
  %2159 = phi ptr [ %86, %2155 ], [ %2169, %2164 ]
  %2160 = fmul double %2158, 7.812500e-03
  %2161 = call double @llvm.floor.f64(double %2160)
  %2162 = icmp ugt ptr %2159, %32
  br i1 %2162, label %2164, label %2163

2163:                                             ; preds = %2157
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.55) #16
  br label %2164

2164:                                             ; preds = %2163, %2157
  %2165 = fneg double %2161
  %2166 = call double @llvm.fmuladd.f64(double %2165, double 1.280000e+02, double %2158)
  %2167 = fptoui double %2166 to i8
  %2168 = or i8 %2167, -128
  %2169 = getelementptr inbounds i8, ptr %2159, i64 -1
  store i8 %2168, ptr %2169, align 1, !tbaa !15
  %2170 = fcmp ogt double %2161, 0.000000e+00
  br i1 %2170, label %2157, label %2171, !llvm.loop !130

2171:                                             ; preds = %2164
  %2172 = load i8, ptr %87, align 2, !tbaa !15
  %2173 = and i8 %2172, 127
  store i8 %2173, ptr %87, align 2, !tbaa !15
  %2174 = ptrtoint ptr %2169 to i64
  %2175 = sub i64 %88, %2174
  %2176 = shl i64 %2175, %244
  %2177 = getelementptr inbounds i8, ptr %2064, i64 %2176
  %2178 = load ptr, ptr %0, align 8, !tbaa !50
  %2179 = getelementptr inbounds %struct.xpv, ptr %2178, i64 0, i32 3
  %2180 = load i64, ptr %2179, align 8, !tbaa !15
  %2181 = getelementptr inbounds i8, ptr %2063, i64 %2180
  %2182 = icmp ult ptr %2177, %2181
  br i1 %2182, label %2194, label %2183

2183:                                             ; preds = %2171
  store i8 0, ptr %2064, align 1, !tbaa !15
  %2184 = ptrtoint ptr %2064 to i64
  %2185 = ptrtoint ptr %2063 to i64
  %2186 = sub i64 %2184, %2185
  %2187 = load ptr, ptr %0, align 8, !tbaa !50
  %2188 = getelementptr inbounds %struct.xpv, ptr %2187, i64 0, i32 2
  store i64 %2186, ptr %2188, align 8, !tbaa !51
  %2189 = call fastcc ptr @S_sv_exp_grow(ptr noundef nonnull %0, i64 noundef %2176) #15
  %2190 = load ptr, ptr %0, align 8, !tbaa !50
  %2191 = getelementptr inbounds %struct.xpv, ptr %2190, i64 0, i32 2
  %2192 = load i64, ptr %2191, align 8, !tbaa !51
  %2193 = getelementptr inbounds i8, ptr %2189, i64 %2192
  br label %2194

2194:                                             ; preds = %2171, %2183
  %2195 = phi ptr [ %2193, %2183 ], [ %2064, %2171 ]
  %2196 = phi ptr [ %2189, %2183 ], [ %2063, %2171 ]
  br i1 %243, label %2199, label %2197

2197:                                             ; preds = %2194
  %2198 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %2169, i64 noundef %2175, ptr noundef %2195, i1 noundef zeroext false) #15
  br label %2201

2199:                                             ; preds = %2194
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %2195, ptr noundef nonnull align 1 dereferenceable(1) %2169, i64 %2175, i1 false)
  %2200 = getelementptr inbounds i8, ptr %2195, i64 %2175
  br label %2201

2201:                                             ; preds = %2199, %2197
  %2202 = phi ptr [ %2198, %2197 ], [ %2200, %2199 ]
  call void @llvm.lifetime.end.p0(i64 155, ptr nonnull %32) #14
  br label %2272

2203:                                             ; preds = %2152
  %2204 = and i32 %2097, 2098176
  %2205 = icmp eq i32 %2204, 1024
  br i1 %2205, label %2206, label %2212

2206:                                             ; preds = %2203
  %2207 = load ptr, ptr %2075, align 8, !tbaa !50
  %2208 = getelementptr inbounds %struct.xpv, ptr %2207, i64 0, i32 2
  %2209 = load i64, ptr %2208, align 8, !tbaa !51
  store i64 %2209, ptr %33, align 8, !tbaa !5
  %2210 = getelementptr inbounds %struct.sv, ptr %2075, i64 0, i32 3
  %2211 = load ptr, ptr %2210, align 8, !tbaa !15
  br label %2215

2212:                                             ; preds = %2203
  %2213 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %2075, ptr noundef nonnull %33, i32 noundef 32) #16
  %2214 = load i64, ptr %33, align 8, !tbaa !5
  br label %2215

2215:                                             ; preds = %2212, %2206
  %2216 = phi i64 [ %2209, %2206 ], [ %2214, %2212 ]
  %2217 = phi ptr [ %2211, %2206 ], [ %2213, %2212 ]
  %2218 = call fastcc ptr @S_is_an_int(ptr noundef %2217, i64 noundef %2216) #15
  %2219 = icmp eq ptr %2218, null
  br i1 %2219, label %2220, label %2221

2220:                                             ; preds = %2215
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.56) #16
  br label %2221

2221:                                             ; preds = %2220, %2215
  %2222 = load i64, ptr %33, align 8, !tbaa !5
  %2223 = call ptr @Perl_safesysmalloc(i64 noundef %2222) #16
  %2224 = load i64, ptr %33, align 8, !tbaa !5
  %2225 = getelementptr inbounds i8, ptr %2223, i64 %2224
  store i8 0, ptr %34, align 1, !tbaa !107
  br label %2226

2226:                                             ; preds = %2221, %2226
  %2227 = phi ptr [ %2225, %2221 ], [ %2231, %2226 ]
  %2228 = call fastcc i32 @S_div128(ptr noundef %2218, ptr noundef nonnull %34) #15, !range !131
  %2229 = trunc i32 %2228 to i8
  %2230 = or disjoint i8 %2229, -128
  %2231 = getelementptr inbounds i8, ptr %2227, i64 -1
  store i8 %2230, ptr %2231, align 1, !tbaa !15
  %2232 = load i8, ptr %34, align 1, !tbaa !107
  %2233 = icmp eq i8 %2232, 0
  br i1 %2233, label %2226, label %2234, !llvm.loop !132

2234:                                             ; preds = %2226
  %2235 = load i64, ptr %33, align 8, !tbaa !5
  %2236 = getelementptr i8, ptr %2223, i64 %2235
  %2237 = getelementptr i8, ptr %2236, i64 -1
  %2238 = load i8, ptr %2237, align 1, !tbaa !15
  %2239 = and i8 %2238, 127
  store i8 %2239, ptr %2237, align 1, !tbaa !15
  %2240 = load i64, ptr %33, align 8, !tbaa !5
  %2241 = getelementptr inbounds i8, ptr %2223, i64 %2240
  %2242 = ptrtoint ptr %2241 to i64
  %2243 = ptrtoint ptr %2231 to i64
  %2244 = sub i64 %2242, %2243
  %2245 = shl i64 %2244, %244
  %2246 = getelementptr inbounds i8, ptr %2064, i64 %2245
  %2247 = load ptr, ptr %0, align 8, !tbaa !50
  %2248 = getelementptr inbounds %struct.xpv, ptr %2247, i64 0, i32 3
  %2249 = load i64, ptr %2248, align 8, !tbaa !15
  %2250 = getelementptr inbounds i8, ptr %2063, i64 %2249
  %2251 = icmp ult ptr %2246, %2250
  br i1 %2251, label %2263, label %2252

2252:                                             ; preds = %2234
  store i8 0, ptr %2064, align 1, !tbaa !15
  %2253 = ptrtoint ptr %2064 to i64
  %2254 = ptrtoint ptr %2063 to i64
  %2255 = sub i64 %2253, %2254
  %2256 = load ptr, ptr %0, align 8, !tbaa !50
  %2257 = getelementptr inbounds %struct.xpv, ptr %2256, i64 0, i32 2
  store i64 %2255, ptr %2257, align 8, !tbaa !51
  %2258 = call fastcc ptr @S_sv_exp_grow(ptr noundef nonnull %0, i64 noundef %2245) #15
  %2259 = load ptr, ptr %0, align 8, !tbaa !50
  %2260 = getelementptr inbounds %struct.xpv, ptr %2259, i64 0, i32 2
  %2261 = load i64, ptr %2260, align 8, !tbaa !51
  %2262 = getelementptr inbounds i8, ptr %2258, i64 %2261
  br label %2263

2263:                                             ; preds = %2234, %2252
  %2264 = phi ptr [ %2262, %2252 ], [ %2064, %2234 ]
  %2265 = phi ptr [ %2258, %2252 ], [ %2063, %2234 ]
  br i1 %243, label %2268, label %2266

2266:                                             ; preds = %2263
  %2267 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %2231, i64 noundef %2244, ptr noundef %2264, i1 noundef zeroext false) #15
  br label %2270

2268:                                             ; preds = %2263
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2264, ptr nonnull align 1 %2231, i64 %2244, i1 false)
  %2269 = getelementptr inbounds i8, ptr %2264, i64 %2244
  br label %2270

2270:                                             ; preds = %2268, %2266
  %2271 = phi ptr [ %2267, %2266 ], [ %2269, %2268 ]
  call void @Perl_safesysfree(ptr noundef nonnull %2223) #16
  call fastcc void @S_SvREFCNT_dec(ptr noundef %2218) #15
  br label %2272

2272:                                             ; preds = %2270, %2201, %2150
  %2273 = phi ptr [ %2151, %2150 ], [ %2271, %2270 ], [ %2202, %2201 ]
  %2274 = phi ptr [ %2145, %2150 ], [ %2265, %2270 ], [ %2196, %2201 ]
  %2275 = icmp sgt i32 %2060, 1
  br i1 %2275, label %2059, label %2866, !llvm.loop !133

2276:                                             ; preds = %197, %197
  %2277 = icmp sgt i32 %122, 0
  br i1 %2277, label %2278, label %2866

2278:                                             ; preds = %2276
  %2279 = icmp eq ptr %198, null
  %2280 = and i8 %104, 1
  %2281 = icmp eq i8 %2280, 0
  br label %2282

2282:                                             ; preds = %2278, %2319
  %2283 = phi i32 [ %122, %2278 ], [ %2287, %2319 ]
  %2284 = phi ptr [ %102, %2278 ], [ %2296, %2319 ]
  %2285 = phi i32 [ %103, %2278 ], [ %2295, %2319 ]
  %2286 = phi ptr [ %154, %2278 ], [ %2320, %2319 ]
  %2287 = add nsw i32 %2283, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %35) #14
  br i1 %2279, label %2288, label %2294

2288:                                             ; preds = %2282
  %2289 = icmp sgt i32 %2285, 0
  br i1 %2289, label %2290, label %2294

2290:                                             ; preds = %2288
  %2291 = add nsw i32 %2285, -1
  %2292 = getelementptr inbounds ptr, ptr %2284, i64 1
  %2293 = load ptr, ptr %2284, align 8, !tbaa !19
  br label %2294

2294:                                             ; preds = %2282, %2290, %2288
  %2295 = phi i32 [ %2291, %2290 ], [ %2285, %2288 ], [ %2285, %2282 ]
  %2296 = phi ptr [ %2292, %2290 ], [ %2284, %2288 ], [ %2284, %2282 ]
  %2297 = phi ptr [ %2293, %2290 ], [ @PL_sv_no, %2288 ], [ %198, %2282 ]
  %2298 = call fastcc ptr @S_sv_check_infnan(ptr noundef %2297, i32 noundef %105) #15
  %2299 = getelementptr inbounds %struct.sv, ptr %2298, i64 0, i32 2
  %2300 = load i32, ptr %2299, align 4, !tbaa !42
  %2301 = and i32 %2300, 256
  %2302 = icmp eq i32 %2301, 0
  br i1 %2302, label %2307, label %2303

2303:                                             ; preds = %2294
  %2304 = load ptr, ptr %2298, align 8, !tbaa !50
  %2305 = getelementptr inbounds %struct.xpviv, ptr %2304, i64 0, i32 4
  %2306 = load i64, ptr %2305, align 8, !tbaa !15
  br label %2309

2307:                                             ; preds = %2294
  %2308 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %2298, i32 noundef 0) #16
  br label %2309

2309:                                             ; preds = %2307, %2303
  %2310 = phi i64 [ %2306, %2303 ], [ %2308, %2307 ]
  %2311 = trunc i64 %2310 to i32
  store i32 %2311, ptr %35, align 4, !tbaa !26
  br i1 %2281, label %2314, label %2312

2312:                                             ; preds = %2309
  %2313 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %35, i64 noundef 4, ptr noundef %2286, i1 noundef zeroext %200) #15
  br label %2319

2314:                                             ; preds = %2309
  br i1 %200, label %2315, label %2316

2315:                                             ; preds = %2314
  call fastcc void @S_reverse_copy(ptr noundef nonnull %35, ptr noundef %2286, i64 noundef 4) #15
  br label %2317

2316:                                             ; preds = %2314
  store i32 %2311, ptr %2286, align 1
  br label %2317

2317:                                             ; preds = %2316, %2315
  %2318 = getelementptr inbounds i8, ptr %2286, i64 4
  br label %2319

2319:                                             ; preds = %2317, %2312
  %2320 = phi ptr [ %2313, %2312 ], [ %2318, %2317 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %35) #14
  %2321 = icmp ugt i32 %2283, 1
  br i1 %2321, label %2282, label %2866, !llvm.loop !134

2322:                                             ; preds = %197, %197
  %2323 = icmp sgt i32 %122, 0
  br i1 %2323, label %2324, label %2866

2324:                                             ; preds = %2322
  %2325 = icmp eq ptr %198, null
  %2326 = and i8 %104, 1
  %2327 = icmp eq i8 %2326, 0
  br label %2328

2328:                                             ; preds = %2324, %2363
  %2329 = phi i32 [ %122, %2324 ], [ %2333, %2363 ]
  %2330 = phi ptr [ %102, %2324 ], [ %2342, %2363 ]
  %2331 = phi i32 [ %103, %2324 ], [ %2341, %2363 ]
  %2332 = phi ptr [ %154, %2324 ], [ %2364, %2363 ]
  %2333 = add nsw i32 %2329, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %36) #14
  br i1 %2325, label %2334, label %2340

2334:                                             ; preds = %2328
  %2335 = icmp sgt i32 %2331, 0
  br i1 %2335, label %2336, label %2340

2336:                                             ; preds = %2334
  %2337 = add nsw i32 %2331, -1
  %2338 = getelementptr inbounds ptr, ptr %2330, i64 1
  %2339 = load ptr, ptr %2330, align 8, !tbaa !19
  br label %2340

2340:                                             ; preds = %2328, %2336, %2334
  %2341 = phi i32 [ %2337, %2336 ], [ %2331, %2334 ], [ %2331, %2328 ]
  %2342 = phi ptr [ %2338, %2336 ], [ %2330, %2334 ], [ %2330, %2328 ]
  %2343 = phi ptr [ %2339, %2336 ], [ @PL_sv_no, %2334 ], [ %198, %2328 ]
  %2344 = call fastcc ptr @S_sv_check_infnan(ptr noundef %2343, i32 noundef %105) #15
  %2345 = getelementptr inbounds %struct.sv, ptr %2344, i64 0, i32 2
  %2346 = load i32, ptr %2345, align 4, !tbaa !42
  %2347 = and i32 %2346, 256
  %2348 = icmp eq i32 %2347, 0
  br i1 %2348, label %2353, label %2349

2349:                                             ; preds = %2340
  %2350 = load ptr, ptr %2344, align 8, !tbaa !50
  %2351 = getelementptr inbounds %struct.xpvuv, ptr %2350, i64 0, i32 4
  %2352 = load i64, ptr %2351, align 8, !tbaa !15
  br label %2355

2353:                                             ; preds = %2340
  %2354 = call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %2344, i32 noundef 0) #16
  br label %2355

2355:                                             ; preds = %2353, %2349
  %2356 = phi i64 [ %2352, %2349 ], [ %2354, %2353 ]
  %2357 = trunc i64 %2356 to i32
  %2358 = call fastcc i32 @__bswap_32(i32 noundef %2357) #15
  store i32 %2358, ptr %36, align 4, !tbaa !26
  br i1 %2327, label %2361, label %2359

2359:                                             ; preds = %2355
  %2360 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %36, i64 noundef 4, ptr noundef %2332, i1 noundef zeroext false) #15
  br label %2363

2361:                                             ; preds = %2355
  store i32 %2358, ptr %2332, align 1
  %2362 = getelementptr inbounds i8, ptr %2332, i64 4
  br label %2363

2363:                                             ; preds = %2361, %2359
  %2364 = phi ptr [ %2360, %2359 ], [ %2362, %2361 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %36) #14
  %2365 = icmp ugt i32 %2329, 1
  br i1 %2365, label %2328, label %2866, !llvm.loop !135

2366:                                             ; preds = %197, %197
  %2367 = icmp sgt i32 %122, 0
  br i1 %2367, label %2368, label %2866

2368:                                             ; preds = %2366
  %2369 = icmp eq ptr %198, null
  %2370 = and i8 %104, 1
  %2371 = icmp eq i8 %2370, 0
  br label %2372

2372:                                             ; preds = %2368, %2406
  %2373 = phi i32 [ %122, %2368 ], [ %2377, %2406 ]
  %2374 = phi ptr [ %102, %2368 ], [ %2386, %2406 ]
  %2375 = phi i32 [ %103, %2368 ], [ %2385, %2406 ]
  %2376 = phi ptr [ %154, %2368 ], [ %2407, %2406 ]
  %2377 = add nsw i32 %2373, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %37) #14
  br i1 %2369, label %2378, label %2384

2378:                                             ; preds = %2372
  %2379 = icmp sgt i32 %2375, 0
  br i1 %2379, label %2380, label %2384

2380:                                             ; preds = %2378
  %2381 = add nsw i32 %2375, -1
  %2382 = getelementptr inbounds ptr, ptr %2374, i64 1
  %2383 = load ptr, ptr %2374, align 8, !tbaa !19
  br label %2384

2384:                                             ; preds = %2372, %2380, %2378
  %2385 = phi i32 [ %2381, %2380 ], [ %2375, %2378 ], [ %2375, %2372 ]
  %2386 = phi ptr [ %2382, %2380 ], [ %2374, %2378 ], [ %2374, %2372 ]
  %2387 = phi ptr [ %2383, %2380 ], [ @PL_sv_no, %2378 ], [ %198, %2372 ]
  %2388 = call fastcc ptr @S_sv_check_infnan(ptr noundef %2387, i32 noundef %105) #15
  %2389 = getelementptr inbounds %struct.sv, ptr %2388, i64 0, i32 2
  %2390 = load i32, ptr %2389, align 4, !tbaa !42
  %2391 = and i32 %2390, 256
  %2392 = icmp eq i32 %2391, 0
  br i1 %2392, label %2397, label %2393

2393:                                             ; preds = %2384
  %2394 = load ptr, ptr %2388, align 8, !tbaa !50
  %2395 = getelementptr inbounds %struct.xpvuv, ptr %2394, i64 0, i32 4
  %2396 = load i64, ptr %2395, align 8, !tbaa !15
  br label %2399

2397:                                             ; preds = %2384
  %2398 = call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %2388, i32 noundef 0) #16
  br label %2399

2399:                                             ; preds = %2397, %2393
  %2400 = phi i64 [ %2396, %2393 ], [ %2398, %2397 ]
  %2401 = trunc i64 %2400 to i32
  store i32 %2401, ptr %37, align 4, !tbaa !26
  br i1 %2371, label %2404, label %2402

2402:                                             ; preds = %2399
  %2403 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %37, i64 noundef 4, ptr noundef %2376, i1 noundef zeroext false) #15
  br label %2406

2404:                                             ; preds = %2399
  store i32 %2401, ptr %2376, align 1
  %2405 = getelementptr inbounds i8, ptr %2376, i64 4
  br label %2406

2406:                                             ; preds = %2404, %2402
  %2407 = phi ptr [ %2403, %2402 ], [ %2405, %2404 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %37) #14
  %2408 = icmp ugt i32 %2373, 1
  br i1 %2408, label %2372, label %2866, !llvm.loop !136

2409:                                             ; preds = %234, %2445
  %2410 = phi i32 [ %122, %234 ], [ %2414, %2445 ]
  %2411 = phi ptr [ %102, %234 ], [ %2423, %2445 ]
  %2412 = phi i32 [ %103, %234 ], [ %2422, %2445 ]
  %2413 = phi ptr [ %154, %234 ], [ %2446, %2445 ]
  %2414 = add nsw i32 %2410, -1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %38) #14
  br i1 %235, label %2415, label %2421

2415:                                             ; preds = %2409
  %2416 = icmp sgt i32 %2412, 0
  br i1 %2416, label %2417, label %2421

2417:                                             ; preds = %2415
  %2418 = add nsw i32 %2412, -1
  %2419 = getelementptr inbounds ptr, ptr %2411, i64 1
  %2420 = load ptr, ptr %2411, align 8, !tbaa !19
  br label %2421

2421:                                             ; preds = %2409, %2417, %2415
  %2422 = phi i32 [ %2418, %2417 ], [ %2412, %2415 ], [ %2412, %2409 ]
  %2423 = phi ptr [ %2419, %2417 ], [ %2411, %2415 ], [ %2411, %2409 ]
  %2424 = phi ptr [ %2420, %2417 ], [ @PL_sv_no, %2415 ], [ %198, %2409 ]
  %2425 = call fastcc ptr @S_sv_check_infnan(ptr noundef %2424, i32 noundef %105) #15
  %2426 = getelementptr inbounds %struct.sv, ptr %2425, i64 0, i32 2
  %2427 = load i32, ptr %2426, align 4, !tbaa !42
  %2428 = and i32 %2427, 256
  %2429 = icmp eq i32 %2428, 0
  br i1 %2429, label %2434, label %2430

2430:                                             ; preds = %2421
  %2431 = load ptr, ptr %2425, align 8, !tbaa !50
  %2432 = getelementptr inbounds %struct.xpvuv, ptr %2431, i64 0, i32 4
  %2433 = load i64, ptr %2432, align 8, !tbaa !15
  br label %2436

2434:                                             ; preds = %2421
  %2435 = call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %2425, i32 noundef 0) #16
  br label %2436

2436:                                             ; preds = %2434, %2430
  %2437 = phi i64 [ %2433, %2430 ], [ %2435, %2434 ]
  store i64 %2437, ptr %38, align 8, !tbaa !5
  br i1 %237, label %2440, label %2438

2438:                                             ; preds = %2436
  %2439 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %38, i64 noundef 8, ptr noundef %2413, i1 noundef zeroext %200) #15
  br label %2445

2440:                                             ; preds = %2436
  br i1 %200, label %2441, label %2442

2441:                                             ; preds = %2440
  call fastcc void @S_reverse_copy(ptr noundef nonnull %38, ptr noundef %2413, i64 noundef 8) #15
  br label %2443

2442:                                             ; preds = %2440
  store i64 %2437, ptr %2413, align 1
  br label %2443

2443:                                             ; preds = %2442, %2441
  %2444 = getelementptr inbounds i8, ptr %2413, i64 8
  br label %2445

2445:                                             ; preds = %2443, %2438
  %2446 = phi ptr [ %2439, %2438 ], [ %2444, %2443 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %38) #14
  %2447 = icmp ugt i32 %2410, 1
  br i1 %2447, label %2409, label %2866, !llvm.loop !137

2448:                                             ; preds = %228, %2485
  %2449 = phi i32 [ %122, %228 ], [ %2453, %2485 ]
  %2450 = phi ptr [ %102, %228 ], [ %2462, %2485 ]
  %2451 = phi i32 [ %103, %228 ], [ %2461, %2485 ]
  %2452 = phi ptr [ %154, %228 ], [ %2486, %2485 ]
  %2453 = add nsw i32 %2449, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %39) #14
  br i1 %229, label %2454, label %2460

2454:                                             ; preds = %2448
  %2455 = icmp sgt i32 %2451, 0
  br i1 %2455, label %2456, label %2460

2456:                                             ; preds = %2454
  %2457 = add nsw i32 %2451, -1
  %2458 = getelementptr inbounds ptr, ptr %2450, i64 1
  %2459 = load ptr, ptr %2450, align 8, !tbaa !19
  br label %2460

2460:                                             ; preds = %2448, %2456, %2454
  %2461 = phi i32 [ %2457, %2456 ], [ %2451, %2454 ], [ %2451, %2448 ]
  %2462 = phi ptr [ %2458, %2456 ], [ %2450, %2454 ], [ %2450, %2448 ]
  %2463 = phi ptr [ %2459, %2456 ], [ @PL_sv_no, %2454 ], [ %198, %2448 ]
  %2464 = call fastcc ptr @S_sv_check_infnan(ptr noundef %2463, i32 noundef %105) #15
  %2465 = getelementptr inbounds %struct.sv, ptr %2464, i64 0, i32 2
  %2466 = load i32, ptr %2465, align 4, !tbaa !42
  %2467 = and i32 %2466, 256
  %2468 = icmp eq i32 %2467, 0
  br i1 %2468, label %2473, label %2469

2469:                                             ; preds = %2460
  %2470 = load ptr, ptr %2464, align 8, !tbaa !50
  %2471 = getelementptr inbounds %struct.xpvuv, ptr %2470, i64 0, i32 4
  %2472 = load i64, ptr %2471, align 8, !tbaa !15
  br label %2475

2473:                                             ; preds = %2460
  %2474 = call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %2464, i32 noundef 0) #16
  br label %2475

2475:                                             ; preds = %2473, %2469
  %2476 = phi i64 [ %2472, %2469 ], [ %2474, %2473 ]
  %2477 = trunc i64 %2476 to i32
  store i32 %2477, ptr %39, align 4, !tbaa !26
  br i1 %231, label %2480, label %2478

2478:                                             ; preds = %2475
  %2479 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %39, i64 noundef 4, ptr noundef %2452, i1 noundef zeroext %200) #15
  br label %2485

2480:                                             ; preds = %2475
  br i1 %200, label %2481, label %2482

2481:                                             ; preds = %2480
  call fastcc void @S_reverse_copy(ptr noundef nonnull %39, ptr noundef %2452, i64 noundef 4) #15
  br label %2483

2482:                                             ; preds = %2480
  store i32 %2477, ptr %2452, align 1
  br label %2483

2483:                                             ; preds = %2482, %2481
  %2484 = getelementptr inbounds i8, ptr %2452, i64 4
  br label %2485

2485:                                             ; preds = %2483, %2478
  %2486 = phi ptr [ %2479, %2478 ], [ %2484, %2483 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %39) #14
  %2487 = icmp ugt i32 %2449, 1
  br i1 %2487, label %2448, label %2866, !llvm.loop !138

2488:                                             ; preds = %222, %2524
  %2489 = phi i32 [ %122, %222 ], [ %2493, %2524 ]
  %2490 = phi ptr [ %102, %222 ], [ %2502, %2524 ]
  %2491 = phi i32 [ %103, %222 ], [ %2501, %2524 ]
  %2492 = phi ptr [ %154, %222 ], [ %2525, %2524 ]
  %2493 = add nsw i32 %2489, -1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %40) #14
  br i1 %223, label %2494, label %2500

2494:                                             ; preds = %2488
  %2495 = icmp sgt i32 %2491, 0
  br i1 %2495, label %2496, label %2500

2496:                                             ; preds = %2494
  %2497 = add nsw i32 %2491, -1
  %2498 = getelementptr inbounds ptr, ptr %2490, i64 1
  %2499 = load ptr, ptr %2490, align 8, !tbaa !19
  br label %2500

2500:                                             ; preds = %2488, %2496, %2494
  %2501 = phi i32 [ %2497, %2496 ], [ %2491, %2494 ], [ %2491, %2488 ]
  %2502 = phi ptr [ %2498, %2496 ], [ %2490, %2494 ], [ %2490, %2488 ]
  %2503 = phi ptr [ %2499, %2496 ], [ @PL_sv_no, %2494 ], [ %198, %2488 ]
  %2504 = call fastcc ptr @S_sv_check_infnan(ptr noundef %2503, i32 noundef %105) #15
  %2505 = getelementptr inbounds %struct.sv, ptr %2504, i64 0, i32 2
  %2506 = load i32, ptr %2505, align 4, !tbaa !42
  %2507 = and i32 %2506, 256
  %2508 = icmp eq i32 %2507, 0
  br i1 %2508, label %2513, label %2509

2509:                                             ; preds = %2500
  %2510 = load ptr, ptr %2504, align 8, !tbaa !50
  %2511 = getelementptr inbounds %struct.xpviv, ptr %2510, i64 0, i32 4
  %2512 = load i64, ptr %2511, align 8, !tbaa !15
  br label %2515

2513:                                             ; preds = %2500
  %2514 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %2504, i32 noundef 0) #16
  br label %2515

2515:                                             ; preds = %2513, %2509
  %2516 = phi i64 [ %2512, %2509 ], [ %2514, %2513 ]
  store i64 %2516, ptr %40, align 8, !tbaa !5
  br i1 %225, label %2519, label %2517

2517:                                             ; preds = %2515
  %2518 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %40, i64 noundef 8, ptr noundef %2492, i1 noundef zeroext %200) #15
  br label %2524

2519:                                             ; preds = %2515
  br i1 %200, label %2520, label %2521

2520:                                             ; preds = %2519
  call fastcc void @S_reverse_copy(ptr noundef nonnull %40, ptr noundef %2492, i64 noundef 8) #15
  br label %2522

2521:                                             ; preds = %2519
  store i64 %2516, ptr %2492, align 1
  br label %2522

2522:                                             ; preds = %2521, %2520
  %2523 = getelementptr inbounds i8, ptr %2492, i64 8
  br label %2524

2524:                                             ; preds = %2522, %2517
  %2525 = phi ptr [ %2518, %2517 ], [ %2523, %2522 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %40) #14
  %2526 = icmp ugt i32 %2489, 1
  br i1 %2526, label %2488, label %2866, !llvm.loop !139

2527:                                             ; preds = %216, %2564
  %2528 = phi i32 [ %122, %216 ], [ %2532, %2564 ]
  %2529 = phi ptr [ %102, %216 ], [ %2541, %2564 ]
  %2530 = phi i32 [ %103, %216 ], [ %2540, %2564 ]
  %2531 = phi ptr [ %154, %216 ], [ %2565, %2564 ]
  %2532 = add nsw i32 %2528, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %41) #14
  br i1 %217, label %2533, label %2539

2533:                                             ; preds = %2527
  %2534 = icmp sgt i32 %2530, 0
  br i1 %2534, label %2535, label %2539

2535:                                             ; preds = %2533
  %2536 = add nsw i32 %2530, -1
  %2537 = getelementptr inbounds ptr, ptr %2529, i64 1
  %2538 = load ptr, ptr %2529, align 8, !tbaa !19
  br label %2539

2539:                                             ; preds = %2527, %2535, %2533
  %2540 = phi i32 [ %2536, %2535 ], [ %2530, %2533 ], [ %2530, %2527 ]
  %2541 = phi ptr [ %2537, %2535 ], [ %2529, %2533 ], [ %2529, %2527 ]
  %2542 = phi ptr [ %2538, %2535 ], [ @PL_sv_no, %2533 ], [ %198, %2527 ]
  %2543 = call fastcc ptr @S_sv_check_infnan(ptr noundef %2542, i32 noundef %105) #15
  %2544 = getelementptr inbounds %struct.sv, ptr %2543, i64 0, i32 2
  %2545 = load i32, ptr %2544, align 4, !tbaa !42
  %2546 = and i32 %2545, 256
  %2547 = icmp eq i32 %2546, 0
  br i1 %2547, label %2552, label %2548

2548:                                             ; preds = %2539
  %2549 = load ptr, ptr %2543, align 8, !tbaa !50
  %2550 = getelementptr inbounds %struct.xpviv, ptr %2549, i64 0, i32 4
  %2551 = load i64, ptr %2550, align 8, !tbaa !15
  br label %2554

2552:                                             ; preds = %2539
  %2553 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %2543, i32 noundef 0) #16
  br label %2554

2554:                                             ; preds = %2552, %2548
  %2555 = phi i64 [ %2551, %2548 ], [ %2553, %2552 ]
  %2556 = trunc i64 %2555 to i32
  store i32 %2556, ptr %41, align 4, !tbaa !26
  br i1 %219, label %2559, label %2557

2557:                                             ; preds = %2554
  %2558 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %41, i64 noundef 4, ptr noundef %2531, i1 noundef zeroext %200) #15
  br label %2564

2559:                                             ; preds = %2554
  br i1 %200, label %2560, label %2561

2560:                                             ; preds = %2559
  call fastcc void @S_reverse_copy(ptr noundef nonnull %41, ptr noundef %2531, i64 noundef 4) #15
  br label %2562

2561:                                             ; preds = %2559
  store i32 %2556, ptr %2531, align 1
  br label %2562

2562:                                             ; preds = %2561, %2560
  %2563 = getelementptr inbounds i8, ptr %2531, i64 4
  br label %2564

2564:                                             ; preds = %2562, %2557
  %2565 = phi ptr [ %2558, %2557 ], [ %2563, %2562 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %41) #14
  %2566 = icmp ugt i32 %2528, 1
  br i1 %2566, label %2527, label %2866, !llvm.loop !140

2567:                                             ; preds = %210, %2603
  %2568 = phi i32 [ %122, %210 ], [ %2572, %2603 ]
  %2569 = phi ptr [ %102, %210 ], [ %2581, %2603 ]
  %2570 = phi i32 [ %103, %210 ], [ %2580, %2603 ]
  %2571 = phi ptr [ %154, %210 ], [ %2604, %2603 ]
  %2572 = add nsw i32 %2568, -1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %42) #14
  br i1 %211, label %2573, label %2579

2573:                                             ; preds = %2567
  %2574 = icmp sgt i32 %2570, 0
  br i1 %2574, label %2575, label %2579

2575:                                             ; preds = %2573
  %2576 = add nsw i32 %2570, -1
  %2577 = getelementptr inbounds ptr, ptr %2569, i64 1
  %2578 = load ptr, ptr %2569, align 8, !tbaa !19
  br label %2579

2579:                                             ; preds = %2567, %2575, %2573
  %2580 = phi i32 [ %2576, %2575 ], [ %2570, %2573 ], [ %2570, %2567 ]
  %2581 = phi ptr [ %2577, %2575 ], [ %2569, %2573 ], [ %2569, %2567 ]
  %2582 = phi ptr [ %2578, %2575 ], [ @PL_sv_no, %2573 ], [ %198, %2567 ]
  %2583 = call fastcc ptr @S_sv_check_infnan(ptr noundef %2582, i32 noundef %105) #15
  %2584 = getelementptr inbounds %struct.sv, ptr %2583, i64 0, i32 2
  %2585 = load i32, ptr %2584, align 4, !tbaa !42
  %2586 = and i32 %2585, 256
  %2587 = icmp eq i32 %2586, 0
  br i1 %2587, label %2592, label %2588

2588:                                             ; preds = %2579
  %2589 = load ptr, ptr %2583, align 8, !tbaa !50
  %2590 = getelementptr inbounds %struct.xpvuv, ptr %2589, i64 0, i32 4
  %2591 = load i64, ptr %2590, align 8, !tbaa !15
  br label %2594

2592:                                             ; preds = %2579
  %2593 = call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %2583, i32 noundef 0) #16
  br label %2594

2594:                                             ; preds = %2592, %2588
  %2595 = phi i64 [ %2591, %2588 ], [ %2593, %2592 ]
  store i64 %2595, ptr %42, align 8, !tbaa !5
  br i1 %213, label %2598, label %2596

2596:                                             ; preds = %2594
  %2597 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %42, i64 noundef 8, ptr noundef %2571, i1 noundef zeroext %200) #15
  br label %2603

2598:                                             ; preds = %2594
  br i1 %200, label %2599, label %2600

2599:                                             ; preds = %2598
  call fastcc void @S_reverse_copy(ptr noundef nonnull %42, ptr noundef %2571, i64 noundef 8) #15
  br label %2601

2600:                                             ; preds = %2598
  store i64 %2595, ptr %2571, align 1
  br label %2601

2601:                                             ; preds = %2600, %2599
  %2602 = getelementptr inbounds i8, ptr %2571, i64 8
  br label %2603

2603:                                             ; preds = %2601, %2596
  %2604 = phi ptr [ %2597, %2596 ], [ %2602, %2601 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %42) #14
  %2605 = icmp ugt i32 %2568, 1
  br i1 %2605, label %2567, label %2866, !llvm.loop !141

2606:                                             ; preds = %204, %2642
  %2607 = phi i32 [ %122, %204 ], [ %2611, %2642 ]
  %2608 = phi ptr [ %102, %204 ], [ %2620, %2642 ]
  %2609 = phi i32 [ %103, %204 ], [ %2619, %2642 ]
  %2610 = phi ptr [ %154, %204 ], [ %2643, %2642 ]
  %2611 = add nsw i32 %2607, -1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %43) #14
  br i1 %205, label %2612, label %2618

2612:                                             ; preds = %2606
  %2613 = icmp sgt i32 %2609, 0
  br i1 %2613, label %2614, label %2618

2614:                                             ; preds = %2612
  %2615 = add nsw i32 %2609, -1
  %2616 = getelementptr inbounds ptr, ptr %2608, i64 1
  %2617 = load ptr, ptr %2608, align 8, !tbaa !19
  br label %2618

2618:                                             ; preds = %2606, %2614, %2612
  %2619 = phi i32 [ %2615, %2614 ], [ %2609, %2612 ], [ %2609, %2606 ]
  %2620 = phi ptr [ %2616, %2614 ], [ %2608, %2612 ], [ %2608, %2606 ]
  %2621 = phi ptr [ %2617, %2614 ], [ @PL_sv_no, %2612 ], [ %198, %2606 ]
  %2622 = call fastcc ptr @S_sv_check_infnan(ptr noundef %2621, i32 noundef %105) #15
  %2623 = getelementptr inbounds %struct.sv, ptr %2622, i64 0, i32 2
  %2624 = load i32, ptr %2623, align 4, !tbaa !42
  %2625 = and i32 %2624, 256
  %2626 = icmp eq i32 %2625, 0
  br i1 %2626, label %2631, label %2627

2627:                                             ; preds = %2618
  %2628 = load ptr, ptr %2622, align 8, !tbaa !50
  %2629 = getelementptr inbounds %struct.xpviv, ptr %2628, i64 0, i32 4
  %2630 = load i64, ptr %2629, align 8, !tbaa !15
  br label %2633

2631:                                             ; preds = %2618
  %2632 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %2622, i32 noundef 0) #16
  br label %2633

2633:                                             ; preds = %2631, %2627
  %2634 = phi i64 [ %2630, %2627 ], [ %2632, %2631 ]
  store i64 %2634, ptr %43, align 8, !tbaa !5
  br i1 %207, label %2637, label %2635

2635:                                             ; preds = %2633
  %2636 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %43, i64 noundef 8, ptr noundef %2610, i1 noundef zeroext %200) #15
  br label %2642

2637:                                             ; preds = %2633
  br i1 %200, label %2638, label %2639

2638:                                             ; preds = %2637
  call fastcc void @S_reverse_copy(ptr noundef nonnull %43, ptr noundef %2610, i64 noundef 8) #15
  br label %2640

2639:                                             ; preds = %2637
  store i64 %2634, ptr %2610, align 1
  br label %2640

2640:                                             ; preds = %2639, %2638
  %2641 = getelementptr inbounds i8, ptr %2610, i64 8
  br label %2642

2642:                                             ; preds = %2640, %2635
  %2643 = phi ptr [ %2636, %2635 ], [ %2641, %2640 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %43) #14
  %2644 = icmp ugt i32 %2607, 1
  br i1 %2644, label %2606, label %2866, !llvm.loop !142

2645:                                             ; preds = %197
  %2646 = and i8 %104, 1
  %2647 = icmp eq i8 %2646, 0
  %2648 = select i1 %2647, i64 8, i64 16
  %2649 = getelementptr inbounds i8, ptr %154, i64 %2648
  %2650 = load ptr, ptr %0, align 8, !tbaa !50
  %2651 = getelementptr inbounds %struct.xpv, ptr %2650, i64 0, i32 3
  %2652 = load i64, ptr %2651, align 8, !tbaa !15
  %2653 = getelementptr inbounds i8, ptr %155, i64 %2652
  %2654 = icmp ult ptr %2649, %2653
  br i1 %2654, label %2663, label %2655

2655:                                             ; preds = %2645
  %2656 = call fastcc ptr @S_sv_exp_grow(ptr noundef nonnull %0, i64 noundef %2648) #15
  %2657 = load ptr, ptr %0, align 8, !tbaa !50
  %2658 = getelementptr inbounds %struct.xpv, ptr %2657, i64 0, i32 2
  %2659 = load i64, ptr %2658, align 8, !tbaa !51
  %2660 = getelementptr inbounds i8, ptr %2656, i64 %2659
  br label %2663

2661:                                             ; preds = %197
  %2662 = icmp sgt i32 %122, 0
  br i1 %2662, label %2663, label %2866

2663:                                             ; preds = %2645, %2655, %2661
  %2664 = phi i32 [ %122, %2661 ], [ 1, %2655 ], [ 1, %2645 ]
  %2665 = phi ptr [ %155, %2661 ], [ %2656, %2655 ], [ %155, %2645 ]
  %2666 = phi ptr [ %154, %2661 ], [ %2660, %2655 ], [ %154, %2645 ]
  %2667 = icmp eq ptr %198, null
  %2668 = and i8 %104, 1
  %2669 = icmp eq i8 %2668, 0
  br label %2670

2670:                                             ; preds = %2663, %2739
  %2671 = phi i32 [ %2664, %2663 ], [ %2675, %2739 ]
  %2672 = phi ptr [ %102, %2663 ], [ %2684, %2739 ]
  %2673 = phi i32 [ %103, %2663 ], [ %2683, %2739 ]
  %2674 = phi ptr [ %2666, %2663 ], [ %2740, %2739 ]
  %2675 = add nsw i32 %2671, -1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %44) #14
  br i1 %2667, label %2676, label %2682

2676:                                             ; preds = %2670
  %2677 = icmp sgt i32 %2673, 0
  br i1 %2677, label %2678, label %2682

2678:                                             ; preds = %2676
  %2679 = add nsw i32 %2673, -1
  %2680 = getelementptr inbounds ptr, ptr %2672, i64 1
  %2681 = load ptr, ptr %2672, align 8, !tbaa !19
  br label %2682

2682:                                             ; preds = %2670, %2678, %2676
  %2683 = phi i32 [ %2679, %2678 ], [ %2673, %2676 ], [ %2673, %2670 ]
  %2684 = phi ptr [ %2680, %2678 ], [ %2672, %2676 ], [ %2672, %2670 ]
  %2685 = phi ptr [ %2681, %2678 ], [ @PL_sv_no, %2676 ], [ %198, %2670 ]
  %2686 = getelementptr inbounds %struct.sv, ptr %2685, i64 0, i32 2
  %2687 = load i32, ptr %2686, align 4, !tbaa !42
  %2688 = and i32 %2687, 2097152
  %2689 = icmp eq i32 %2688, 0
  br i1 %2689, label %2693, label %2690

2690:                                             ; preds = %2682
  %2691 = call i32 @Perl_mg_get(ptr noundef nonnull %2685) #16
  %2692 = load i32, ptr %2686, align 4, !tbaa !42
  br label %2693

2693:                                             ; preds = %2682, %2690
  %2694 = phi i32 [ %2687, %2682 ], [ %2692, %2690 ]
  %2695 = and i32 %2694, 65280
  %2696 = icmp ne i32 %2695, 0
  %2697 = and i32 %2694, 255
  %2698 = icmp eq i32 %2697, 8
  %2699 = or i1 %2696, %2698
  %2700 = and i32 %2694, 16777471
  %2701 = icmp eq i32 %2700, 16777226
  %2702 = or i1 %2701, %2699
  br i1 %2702, label %2704, label %2703

2703:                                             ; preds = %2693
  store ptr null, ptr %44, align 8, !tbaa !19
  br label %2730

2704:                                             ; preds = %2693
  %2705 = and i32 %2694, 524288
  %2706 = icmp ne i32 %2705, 0
  %2707 = and i32 %2694, 134414336
  %2708 = icmp eq i32 %2707, 131072
  %2709 = or i1 %2706, %2708
  br i1 %2709, label %2710, label %2712

2710:                                             ; preds = %2704
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 16, ptr noundef nonnull @.str.57) #16
  %2711 = load i32, ptr %2686, align 4, !tbaa !42
  br label %2712

2712:                                             ; preds = %2704, %2710
  %2713 = phi i32 [ %2694, %2704 ], [ %2711, %2710 ]
  %2714 = and i32 %2713, 1792
  %2715 = icmp eq i32 %2714, 0
  br i1 %2715, label %2727, label %2716

2716:                                             ; preds = %2712
  %2717 = and i32 %2713, 2098176
  %2718 = icmp eq i32 %2717, 1024
  br i1 %2718, label %2719, label %2722

2719:                                             ; preds = %2716
  %2720 = getelementptr inbounds %struct.sv, ptr %2685, i64 0, i32 3
  %2721 = load ptr, ptr %2720, align 8, !tbaa !15
  br label %2724

2722:                                             ; preds = %2716
  %2723 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %2685, ptr noundef null, i32 noundef 32) #16
  br label %2724

2724:                                             ; preds = %2722, %2719
  %2725 = phi ptr [ %2721, %2719 ], [ %2723, %2722 ]
  store ptr %2725, ptr %44, align 8, !tbaa !19
  %2726 = ptrtoint ptr %2725 to i64
  br label %2730

2727:                                             ; preds = %2712
  %2728 = call ptr @Perl_sv_pvn_force_flags(ptr noundef nonnull %2685, ptr noundef null, i32 noundef 0) #16
  store ptr %2728, ptr %44, align 8, !tbaa !19
  %2729 = ptrtoint ptr %2728 to i64
  br label %2730

2730:                                             ; preds = %2703, %2727, %2724
  %2731 = phi i64 [ 0, %2703 ], [ %2729, %2727 ], [ %2726, %2724 ]
  br i1 %2669, label %2734, label %2732

2732:                                             ; preds = %2730
  %2733 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %44, i64 noundef 8, ptr noundef %2674, i1 noundef zeroext %200) #15
  br label %2739

2734:                                             ; preds = %2730
  br i1 %200, label %2735, label %2736

2735:                                             ; preds = %2734
  call fastcc void @S_reverse_copy(ptr noundef nonnull %44, ptr noundef %2674, i64 noundef 8) #15
  br label %2737

2736:                                             ; preds = %2734
  store i64 %2731, ptr %2674, align 1
  br label %2737

2737:                                             ; preds = %2736, %2735
  %2738 = getelementptr inbounds i8, ptr %2674, i64 8
  br label %2739

2739:                                             ; preds = %2737, %2732
  %2740 = phi ptr [ %2733, %2732 ], [ %2738, %2737 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %44) #14
  %2741 = icmp ugt i32 %2671, 1
  br i1 %2741, label %2670, label %2866, !llvm.loop !143

2742:                                             ; preds = %197
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %45) #14
  %2743 = icmp eq ptr %198, null
  br i1 %2743, label %2744, label %2750

2744:                                             ; preds = %2742
  %2745 = icmp sgt i32 %103, 0
  br i1 %2745, label %2746, label %2750

2746:                                             ; preds = %2744
  %2747 = add nsw i32 %103, -1
  %2748 = getelementptr inbounds ptr, ptr %102, i64 1
  %2749 = load ptr, ptr %102, align 8, !tbaa !19
  br label %2750

2750:                                             ; preds = %2742, %2746, %2744
  %2751 = phi i32 [ %2747, %2746 ], [ %103, %2744 ], [ %103, %2742 ]
  %2752 = phi ptr [ %2748, %2746 ], [ %102, %2744 ], [ %102, %2742 ]
  %2753 = phi ptr [ %2749, %2746 ], [ @PL_sv_no, %2744 ], [ %198, %2742 ]
  %2754 = icmp slt i32 %122, 3
  br i1 %2754, label %2760, label %2755

2755:                                             ; preds = %2750
  %2756 = urem i32 %122, 3
  %2757 = sub nuw nsw i32 %122, %2756
  %2758 = icmp ugt i32 %2757, 63
  br i1 %2758, label %2759, label %2760

2759:                                             ; preds = %2755
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 16, ptr noundef nonnull @.str.58) #16
  br label %2760

2760:                                             ; preds = %2750, %2759, %2755
  %2761 = phi i32 [ 63, %2759 ], [ %2757, %2755 ], [ 45, %2750 ]
  %2762 = getelementptr inbounds %struct.sv, ptr %2753, i64 0, i32 2
  %2763 = load i32, ptr %2762, align 4, !tbaa !42
  %2764 = and i32 %2763, 2098176
  %2765 = icmp eq i32 %2764, 1024
  br i1 %2765, label %2766, label %2772

2766:                                             ; preds = %2760
  %2767 = load ptr, ptr %2753, align 8, !tbaa !50
  %2768 = getelementptr inbounds %struct.xpv, ptr %2767, i64 0, i32 2
  %2769 = load i64, ptr %2768, align 8, !tbaa !51
  store i64 %2769, ptr %6, align 8, !tbaa !5
  %2770 = getelementptr inbounds %struct.sv, ptr %2753, i64 0, i32 3
  %2771 = load ptr, ptr %2770, align 8, !tbaa !15
  br label %2775

2772:                                             ; preds = %2760
  %2773 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %2753, ptr noundef nonnull %6, i32 noundef 34) #16
  %2774 = load i32, ptr %2762, align 4, !tbaa !42
  br label %2775

2775:                                             ; preds = %2772, %2766
  %2776 = phi i32 [ %2763, %2766 ], [ %2774, %2772 ]
  %2777 = phi ptr [ %2771, %2766 ], [ %2773, %2772 ]
  store ptr %2777, ptr %45, align 8, !tbaa !19
  %2778 = and i32 %2776, 536870912
  %2779 = icmp eq i32 %2778, 0
  br i1 %2779, label %2780, label %2782

2780:                                             ; preds = %2775
  %2781 = load i64, ptr %6, align 8, !tbaa !5
  br label %2792

2782:                                             ; preds = %2775
  %2783 = load ptr, ptr @PL_curcop, align 8, !tbaa !19
  %2784 = getelementptr inbounds %struct.cop, ptr %2783, i64 0, i32 10
  %2785 = load i32, ptr %2784, align 8, !tbaa !93
  %2786 = and i32 %2785, 8
  %2787 = icmp eq i32 %2786, 0
  %2788 = load i64, ptr %6, align 8, !tbaa !5
  br i1 %2787, label %2789, label %2792

2789:                                             ; preds = %2782
  %2790 = getelementptr inbounds i8, ptr %2777, i64 %2788
  %2791 = call i64 @Perl_sv_len_utf8_nomg(ptr noundef nonnull %2753) #16
  store i64 %2791, ptr %6, align 8, !tbaa !5
  br label %2792

2792:                                             ; preds = %2780, %2782, %2789
  %2793 = phi i64 [ %2791, %2789 ], [ %2788, %2782 ], [ %2781, %2780 ]
  %2794 = phi i1 [ true, %2789 ], [ false, %2782 ], [ false, %2780 ]
  %2795 = phi ptr [ %2790, %2789 ], [ null, %2782 ], [ null, %2780 ]
  %2796 = add i64 %2793, 2
  %2797 = udiv i64 %2796, 3
  %2798 = shl i64 %2797, 2
  %2799 = zext nneg i32 %2761 to i64
  %2800 = add nsw i64 %2799, -1
  %2801 = add i64 %2800, %2793
  %2802 = udiv i64 %2801, %2799
  %2803 = shl nuw i64 %2802, 1
  %2804 = add i64 %2798, %2803
  %2805 = and i8 %104, 1
  %2806 = icmp eq i8 %2805, 0
  %2807 = zext nneg i8 %2805 to i64
  %2808 = shl i64 %2804, %2807
  %2809 = getelementptr inbounds i8, ptr %154, i64 %2808
  %2810 = load ptr, ptr %0, align 8, !tbaa !50
  %2811 = getelementptr inbounds %struct.xpv, ptr %2810, i64 0, i32 3
  %2812 = load i64, ptr %2811, align 8, !tbaa !15
  %2813 = getelementptr inbounds i8, ptr %155, i64 %2812
  %2814 = icmp ult ptr %2809, %2813
  br i1 %2814, label %2822, label %2815

2815:                                             ; preds = %2792
  %2816 = call fastcc ptr @S_sv_exp_grow(ptr noundef nonnull %0, i64 noundef %2808) #15
  %2817 = load ptr, ptr %0, align 8, !tbaa !50
  %2818 = getelementptr inbounds %struct.xpv, ptr %2817, i64 0, i32 2
  %2819 = load i64, ptr %2818, align 8, !tbaa !51
  %2820 = getelementptr inbounds i8, ptr %2816, i64 %2819
  %2821 = load i64, ptr %6, align 8, !tbaa !5
  br label %2822

2822:                                             ; preds = %2815, %2792
  %2823 = phi i64 [ %2821, %2815 ], [ %2793, %2792 ]
  %2824 = phi ptr [ %2820, %2815 ], [ %154, %2792 ]
  %2825 = phi ptr [ %2816, %2815 ], [ %155, %2792 ]
  %2826 = icmp eq i64 %2823, 0
  br i1 %2826, label %2864, label %2827

2827:                                             ; preds = %2822
  %2828 = ptrtoint ptr %2825 to i64
  br label %2829

2829:                                             ; preds = %2827, %2858
  %2830 = phi ptr [ %2824, %2827 ], [ %2859, %2858 ]
  %2831 = phi i64 [ %2823, %2827 ], [ %2862, %2858 ]
  call void @llvm.lifetime.start.p0(i64 86, ptr nonnull %46) #14
  %2832 = trunc i64 %2831 to i32
  %2833 = call i32 @llvm.smin.i32(i32 %2761, i32 %2832)
  br i1 %2794, label %2834, label %2845

2834:                                             ; preds = %2829
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %47) #14
  %2835 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %45, ptr noundef %2795, ptr noundef nonnull %47, i32 noundef %2833, i32 noundef 2165) #15
  br i1 %2835, label %2843, label %2836

2836:                                             ; preds = %2834
  store i8 0, ptr %2830, align 1, !tbaa !15
  %2837 = ptrtoint ptr %2830 to i64
  %2838 = sub i64 %2837, %2828
  %2839 = load ptr, ptr %0, align 8, !tbaa !50
  %2840 = getelementptr inbounds %struct.xpv, ptr %2839, i64 0, i32 2
  store i64 %2838, ptr %2840, align 8, !tbaa !51
  %2841 = load ptr, ptr %45, align 8, !tbaa !19
  %2842 = sext i32 %2833 to i64
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.59, ptr noundef %2841, ptr noundef %2795, ptr noundef nonnull %47, i64 noundef %2842) #16
  br label %2843

2843:                                             ; preds = %2836, %2834
  %2844 = call fastcc ptr @doencodes(ptr noundef nonnull %46, ptr noundef nonnull %47, i32 noundef %2833) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %47) #14
  br label %2850

2845:                                             ; preds = %2829
  %2846 = load ptr, ptr %45, align 8, !tbaa !19
  %2847 = call fastcc ptr @doencodes(ptr noundef nonnull %46, ptr noundef %2846, i32 noundef %2833) #15
  %2848 = sext i32 %2833 to i64
  %2849 = getelementptr inbounds i8, ptr %2846, i64 %2848
  store ptr %2849, ptr %45, align 8, !tbaa !19
  br label %2850

2850:                                             ; preds = %2843, %2845
  %2851 = phi ptr [ %2844, %2843 ], [ %2847, %2845 ]
  %2852 = ptrtoint ptr %2851 to i64
  %2853 = sub i64 %2852, %85
  br i1 %2806, label %2856, label %2854

2854:                                             ; preds = %2850
  %2855 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %46, i64 noundef %2853, ptr noundef %2830, i1 noundef zeroext false) #15
  br label %2858

2856:                                             ; preds = %2850
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2830, ptr nonnull align 16 %46, i64 %2853, i1 false)
  %2857 = getelementptr inbounds i8, ptr %2830, i64 %2853
  br label %2858

2858:                                             ; preds = %2856, %2854
  %2859 = phi ptr [ %2855, %2854 ], [ %2857, %2856 ]
  %2860 = sext i32 %2833 to i64
  %2861 = load i64, ptr %6, align 8, !tbaa !5
  %2862 = sub i64 %2861, %2860
  store i64 %2862, ptr %6, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 86, ptr nonnull %46) #14
  %2863 = icmp eq i64 %2862, 0
  br i1 %2863, label %2864, label %2829, !llvm.loop !144

2864:                                             ; preds = %2858, %2822
  %2865 = phi ptr [ %2824, %2822 ], [ %2859, %2858 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %45) #14
  br label %2866

2866:                                             ; preds = %2739, %2642, %2603, %2564, %2524, %2485, %2445, %2406, %2363, %2319, %2272, %2056, %2017, %1978, %1932, %1886, %1840, %1797, %1716, %1678, %1633, %1504, %1351, %1298, %2661, %202, %208, %214, %220, %226, %232, %2366, %2322, %2276, %238, %245, %251, %1935, %1889, %1843, %1800, %1756, %257, %263, %1519, %1354, %1302, %269, %473, %476, %535, %555, %2864, %1752, %1308, %1255, %1022, %827, %384
  %2867 = phi ptr [ %387, %384 ], [ %536, %555 ], [ %536, %535 ], [ %2865, %2864 ], [ %1753, %1752 ], [ %154, %1308 ], [ %1258, %1255 ], [ %1025, %1022 ], [ %820, %827 ], [ %474, %476 ], [ %474, %473 ], [ %154, %269 ], [ %154, %1302 ], [ %154, %1354 ], [ %154, %1519 ], [ %154, %263 ], [ %154, %257 ], [ %154, %1756 ], [ %154, %1800 ], [ %154, %1843 ], [ %154, %1889 ], [ %154, %1935 ], [ %154, %251 ], [ %154, %245 ], [ %154, %238 ], [ %154, %2276 ], [ %154, %2322 ], [ %154, %2366 ], [ %154, %232 ], [ %154, %226 ], [ %154, %220 ], [ %154, %214 ], [ %154, %208 ], [ %154, %202 ], [ %154, %2661 ], [ %1299, %1298 ], [ %1352, %1351 ], [ %1506, %1504 ], [ %1635, %1633 ], [ %1679, %1678 ], [ %1717, %1716 ], [ %1798, %1797 ], [ %1841, %1840 ], [ %1887, %1886 ], [ %1933, %1932 ], [ %1979, %1978 ], [ %2018, %2017 ], [ %2057, %2056 ], [ %2273, %2272 ], [ %2320, %2319 ], [ %2364, %2363 ], [ %2407, %2406 ], [ %2446, %2445 ], [ %2486, %2485 ], [ %2525, %2524 ], [ %2565, %2564 ], [ %2604, %2603 ], [ %2643, %2642 ], [ %2740, %2739 ]
  %2868 = phi ptr [ %386, %384 ], [ %155, %555 ], [ %155, %535 ], [ %2825, %2864 ], [ %155, %1752 ], [ %155, %1308 ], [ %1095, %1255 ], [ %897, %1022 ], [ %814, %827 ], [ %155, %476 ], [ %155, %473 ], [ %155, %269 ], [ %155, %1302 ], [ %155, %1354 ], [ %155, %1519 ], [ %155, %263 ], [ %155, %257 ], [ %155, %1756 ], [ %155, %1800 ], [ %155, %1843 ], [ %155, %1889 ], [ %155, %1935 ], [ %155, %251 ], [ %155, %245 ], [ %155, %238 ], [ %155, %2276 ], [ %155, %2322 ], [ %155, %2366 ], [ %155, %232 ], [ %155, %226 ], [ %155, %220 ], [ %155, %214 ], [ %155, %208 ], [ %155, %202 ], [ %155, %2661 ], [ %155, %1298 ], [ %155, %1351 ], [ %1507, %1504 ], [ %1636, %1633 ], [ %155, %1678 ], [ %155, %1716 ], [ %155, %1797 ], [ %155, %1840 ], [ %155, %1886 ], [ %155, %1932 ], [ %155, %1978 ], [ %155, %2017 ], [ %155, %2056 ], [ %2274, %2272 ], [ %155, %2319 ], [ %155, %2363 ], [ %155, %2406 ], [ %155, %2445 ], [ %155, %2485 ], [ %155, %2524 ], [ %155, %2564 ], [ %155, %2603 ], [ %155, %2642 ], [ %2665, %2739 ]
  %2869 = phi i8 [ %104, %384 ], [ %104, %555 ], [ %104, %535 ], [ %104, %2864 ], [ %104, %1752 ], [ %1312, %1308 ], [ %104, %1255 ], [ %104, %1022 ], [ %816, %827 ], [ %104, %476 ], [ %104, %473 ], [ %104, %269 ], [ %104, %1302 ], [ %104, %1354 ], [ %104, %1519 ], [ %104, %263 ], [ %104, %257 ], [ %104, %1756 ], [ %104, %1800 ], [ %104, %1843 ], [ %104, %1889 ], [ %104, %1935 ], [ %104, %251 ], [ %104, %245 ], [ %104, %238 ], [ %104, %2276 ], [ %104, %2322 ], [ %104, %2366 ], [ %104, %232 ], [ %104, %226 ], [ %104, %220 ], [ %104, %214 ], [ %104, %208 ], [ %104, %202 ], [ %104, %2661 ], [ %104, %1298 ], [ %104, %1351 ], [ %1508, %1504 ], [ %104, %1633 ], [ %104, %1678 ], [ %104, %1716 ], [ %104, %1797 ], [ %104, %1840 ], [ %104, %1886 ], [ %104, %1932 ], [ %104, %1978 ], [ %104, %2017 ], [ %104, %2056 ], [ %104, %2272 ], [ %104, %2319 ], [ %104, %2363 ], [ %104, %2406 ], [ %104, %2445 ], [ %104, %2485 ], [ %104, %2524 ], [ %104, %2564 ], [ %104, %2603 ], [ %104, %2642 ], [ %104, %2739 ]
  %2870 = phi i32 [ %369, %384 ], [ %537, %555 ], [ %537, %535 ], [ %2751, %2864 ], [ %1754, %1752 ], [ %103, %1308 ], [ %1035, %1255 ], [ %837, %1022 ], [ %584, %827 ], [ %103, %476 ], [ %103, %473 ], [ %103, %269 ], [ %103, %1302 ], [ %103, %1354 ], [ %103, %1519 ], [ %103, %263 ], [ %103, %257 ], [ %103, %1756 ], [ %103, %1800 ], [ %103, %1843 ], [ %103, %1889 ], [ %103, %1935 ], [ %103, %251 ], [ %103, %245 ], [ %103, %238 ], [ %103, %2276 ], [ %103, %2322 ], [ %103, %2366 ], [ %103, %232 ], [ %103, %226 ], [ %103, %220 ], [ %103, %214 ], [ %103, %208 ], [ %103, %202 ], [ %103, %2661 ], [ %1272, %1298 ], [ %1326, %1351 ], [ %1388, %1504 ], [ %1547, %1633 ], [ %1651, %1678 ], [ %1694, %1716 ], [ %1775, %1797 ], [ %1819, %1840 ], [ %1862, %1886 ], [ %1908, %1932 ], [ %1954, %1978 ], [ %1994, %2017 ], [ %2033, %2056 ], [ %2073, %2272 ], [ %2295, %2319 ], [ %2341, %2363 ], [ %2385, %2406 ], [ %2422, %2445 ], [ %2461, %2485 ], [ %2501, %2524 ], [ %2540, %2564 ], [ %2580, %2603 ], [ %2619, %2642 ], [ %2683, %2739 ]
  %2871 = phi ptr [ %370, %384 ], [ %538, %555 ], [ %538, %535 ], [ %2752, %2864 ], [ %1755, %1752 ], [ %102, %1308 ], [ %1036, %1255 ], [ %838, %1022 ], [ %585, %827 ], [ %102, %476 ], [ %102, %473 ], [ %102, %269 ], [ %102, %1302 ], [ %102, %1354 ], [ %102, %1519 ], [ %102, %263 ], [ %102, %257 ], [ %102, %1756 ], [ %102, %1800 ], [ %102, %1843 ], [ %102, %1889 ], [ %102, %1935 ], [ %102, %251 ], [ %102, %245 ], [ %102, %238 ], [ %102, %2276 ], [ %102, %2322 ], [ %102, %2366 ], [ %102, %232 ], [ %102, %226 ], [ %102, %220 ], [ %102, %214 ], [ %102, %208 ], [ %102, %202 ], [ %102, %2661 ], [ %1273, %1298 ], [ %1327, %1351 ], [ %1389, %1504 ], [ %1548, %1633 ], [ %1652, %1678 ], [ %1695, %1716 ], [ %1776, %1797 ], [ %1820, %1840 ], [ %1863, %1886 ], [ %1909, %1932 ], [ %1955, %1978 ], [ %1995, %2017 ], [ %2034, %2056 ], [ %2074, %2272 ], [ %2296, %2319 ], [ %2342, %2363 ], [ %2386, %2406 ], [ %2423, %2445 ], [ %2462, %2485 ], [ %2502, %2524 ], [ %2541, %2564 ], [ %2581, %2603 ], [ %2620, %2642 ], [ %2684, %2739 ]
  store i8 0, ptr %2867, align 1, !tbaa !15
  %2872 = ptrtoint ptr %2867 to i64
  %2873 = ptrtoint ptr %2868 to i64
  %2874 = sub i64 %2872, %2873
  %2875 = load ptr, ptr %0, align 8, !tbaa !50
  %2876 = getelementptr inbounds %struct.xpv, ptr %2875, i64 0, i32 2
  store i64 %2874, ptr %2876, align 8, !tbaa !51
  br label %2877

2877:                                             ; preds = %1511, %1515, %570, %490, %403, %388, %441, %2866
  %2878 = phi i8 [ %2869, %2866 ], [ %104, %403 ], [ %104, %388 ], [ %104, %570 ], [ %104, %490 ], [ %443, %441 ], [ 0, %1515 ], [ 0, %1511 ]
  %2879 = phi i32 [ %2870, %2866 ], [ %333, %403 ], [ %333, %388 ], [ %103, %570 ], [ %103, %490 ], [ %447, %441 ], [ %103, %1515 ], [ %103, %1511 ]
  %2880 = phi ptr [ %2871, %2866 ], [ %334, %403 ], [ %334, %388 ], [ %102, %570 ], [ %102, %490 ], [ %444, %441 ], [ %102, %1515 ], [ %102, %1511 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %5, i64 72, i1 false), !tbaa.struct !25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  br i1 %156, label %101, label %2881, !llvm.loop !145

2881:                                             ; preds = %2877, %71
  %2882 = phi ptr [ %2, %71 ], [ %2880, %2877 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #14
  ret ptr %2882
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_pack() local_unnamed_addr #0 {
  %1 = alloca i64, align 8
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !19
  %3 = load ptr, ptr @PL_stack_base, align 8, !tbaa !19
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !19
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !19
  %6 = load i32, ptr %4, align 4, !tbaa !26
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %3, i64 %7
  %9 = load ptr, ptr @PL_curpad, align 8, !tbaa !19
  %10 = load ptr, ptr @PL_op, align 8, !tbaa !19
  %11 = getelementptr inbounds %struct.op, ptr %10, i64 0, i32 3
  %12 = load i64, ptr %11, align 8, !tbaa !146
  %13 = getelementptr inbounds ptr, ptr %9, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #14
  %15 = getelementptr inbounds ptr, ptr %8, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !19
  %17 = getelementptr inbounds %struct.sv, ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !42
  %19 = and i32 %18, 2098176
  %20 = icmp eq i32 %19, 1024
  br i1 %20, label %21, label %27

21:                                               ; preds = %0
  %22 = load ptr, ptr %16, align 8, !tbaa !50
  %23 = getelementptr inbounds %struct.xpv, ptr %22, i64 0, i32 2
  %24 = load i64, ptr %23, align 8, !tbaa !51
  store i64 %24, ptr %1, align 8, !tbaa !5
  %25 = getelementptr inbounds %struct.sv, ptr %16, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !15
  br label %30

27:                                               ; preds = %0
  %28 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %16, ptr noundef nonnull %1, i32 noundef 34) #16
  %29 = load i64, ptr %1, align 8, !tbaa !5
  br label %30

30:                                               ; preds = %27, %21
  %31 = phi i64 [ %24, %21 ], [ %29, %27 ]
  %32 = phi ptr [ %26, %21 ], [ %28, %27 ]
  %33 = getelementptr inbounds i8, ptr %32, i64 %31
  %34 = getelementptr inbounds ptr, ptr %8, i64 2
  call void @Perl_sv_setpvn(ptr noundef %14, ptr noundef nonnull @.str, i64 noundef 0) #16
  %35 = getelementptr inbounds %struct.sv, ptr %14, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !42
  %37 = and i32 %36, -536870913
  store i32 %37, ptr %35, align 4, !tbaa !42
  %38 = getelementptr inbounds ptr, ptr %2, i64 1
  call void @Perl_packlist(ptr noundef %14, ptr noundef %32, ptr noundef %33, ptr noundef nonnull %34, ptr noundef nonnull %38) #15
  %39 = load i32, ptr %35, align 4, !tbaa !42
  %40 = and i32 %39, 4194304
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %30
  %43 = call i32 @Perl_mg_set(ptr noundef nonnull %14) #16
  br label %44

44:                                               ; preds = %30, %42
  %45 = load ptr, ptr @PL_stack_base, align 8, !tbaa !19
  %46 = getelementptr inbounds ptr, ptr %45, i64 %7
  %47 = getelementptr inbounds ptr, ptr %46, i64 1
  store ptr %14, ptr %47, align 8, !tbaa !19
  store ptr %47, ptr @PL_stack_sp, align 8, !tbaa !19
  %48 = load ptr, ptr @PL_op, align 8, !tbaa !19
  %49 = load ptr, ptr %48, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #14
  ret ptr %49
}

; Function Attrs: optsize
declare void @Perl_sv_setpvn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @Perl_mg_set(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i1 @S_next_symbol(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca [36 x i8], align 8
  %3 = alloca { i32, i32, i32, i64, ptr }, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !9
  %5 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !13
  %7 = ptrtoint ptr %6 to i64
  %8 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 8
  %9 = load i32, ptr %8, align 8, !tbaa !14
  %10 = and i32 %9, -5
  store i32 %10, ptr %8, align 8, !tbaa !14
  %11 = icmp ult ptr %4, %6
  br i1 %11, label %12, label %215

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 2
  %14 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 3
  %15 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 7
  %16 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 6
  %17 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 5
  %18 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 4
  br label %19

19:                                               ; preds = %12, %212
  %20 = phi ptr [ %4, %12 ], [ %213, %212 ]
  %21 = load i8, ptr %20, align 1, !tbaa !15
  %22 = zext i8 %21 to i64
  %23 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !26
  %25 = and i32 %24, 17408
  %26 = icmp eq i32 %25, 17408
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = getelementptr inbounds i8, ptr %20, i64 1
  br label %212

29:                                               ; preds = %19
  %30 = icmp eq i8 %21, 35
  br i1 %30, label %31, label %41

31:                                               ; preds = %29, %35
  %32 = phi ptr [ %33, %35 ], [ %20, %29 ]
  %33 = getelementptr inbounds i8, ptr %32, i64 1
  %34 = icmp ult ptr %33, %6
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i8, ptr %33, align 1, !tbaa !15
  %37 = icmp eq i8 %36, 10
  br i1 %37, label %38, label %31, !llvm.loop !147

38:                                               ; preds = %31, %35
  %39 = getelementptr inbounds i8, ptr %32, i64 2
  %40 = select i1 %34, ptr %39, ptr %33
  br label %212

41:                                               ; preds = %29
  %42 = zext i8 %21 to i32
  %43 = getelementptr inbounds i8, ptr %20, i64 1
  %44 = icmp eq i8 %21, 44
  br i1 %44, label %45, label %55

45:                                               ; preds = %41
  %46 = load i32, ptr %8, align 8, !tbaa !14
  %47 = and i32 %46, 2
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %212, !llvm.loop !148

49:                                               ; preds = %45
  %50 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 42) #16
  br i1 %50, label %51, label %212, !llvm.loop !148

51:                                               ; preds = %49
  %52 = load i32, ptr %8, align 8, !tbaa !14
  %53 = or i32 %52, 2
  store i32 %53, ptr %8, align 8, !tbaa !14
  %54 = tail call fastcc ptr @_action(ptr noundef nonnull %0) #15
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 42, ptr noundef nonnull @.str.18, ptr noundef nonnull %54) #16
  br label %212, !llvm.loop !148

55:                                               ; preds = %41
  %56 = icmp eq i8 %21, 40
  br i1 %56, label %57, label %75

57:                                               ; preds = %55
  %58 = load i8, ptr %43, align 1, !tbaa !15
  %59 = zext i8 %58 to i64
  %60 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !26
  %62 = freeze i32 %61
  %63 = and i32 %62, 2
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  switch i8 %58, label %68 [
    i8 91, label %66
    i8 42, label %66
  ]

66:                                               ; preds = %65, %65, %57
  %67 = tail call fastcc ptr @_action(ptr noundef nonnull %0) #15
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.19, ptr noundef nonnull %67) #16
  br label %68

68:                                               ; preds = %65, %66
  store ptr %43, ptr %13, align 8, !tbaa !30
  %69 = tail call fastcc ptr @S_group_end(ptr noundef nonnull %43, ptr noundef nonnull %6, i8 noundef signext 41) #15
  store ptr %69, ptr %14, align 8, !tbaa !27
  %70 = getelementptr inbounds i8, ptr %69, i64 1
  %71 = load i32, ptr %15, align 4, !tbaa !29
  %72 = icmp sgt i32 %71, 99
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = tail call fastcc ptr @_action(ptr noundef nonnull %0) #15
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.20, ptr noundef nonnull %74) #16
  br label %75

75:                                               ; preds = %68, %73, %55
  %76 = phi ptr [ %70, %73 ], [ %70, %68 ], [ %43, %55 ]
  %77 = ptrtoint ptr %76 to i64
  %78 = load i32, ptr %8, align 8, !tbaa !14
  %79 = and i32 %78, 1536
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %75
  %82 = tail call ptr @memchr(ptr nonnull dereferenceable(1) @.str.21, i32 %42, i64 18)
  %83 = icmp eq ptr %82, null
  %84 = select i1 %83, i32 0, i32 %79
  br label %85

85:                                               ; preds = %81, %75
  %86 = phi i32 [ 0, %75 ], [ %84, %81 ]
  %87 = icmp ult ptr %76, %6
  br i1 %87, label %88, label %130

88:                                               ; preds = %85
  %89 = getelementptr i8, ptr %76, i64 %7
  %90 = sub i64 0, %77
  %91 = getelementptr i8, ptr %89, i64 %90
  br label %92

92:                                               ; preds = %88, %127
  %93 = phi i32 [ %108, %127 ], [ %42, %88 ]
  %94 = phi ptr [ %128, %127 ], [ %76, %88 ]
  %95 = load i8, ptr %94, align 1, !tbaa !15
  switch i8 %95, label %130 [
    i8 33, label %98
    i8 62, label %96
    i8 60, label %97
  ]

96:                                               ; preds = %92
  br label %98

97:                                               ; preds = %92
  br label %98

98:                                               ; preds = %97, %96, %92
  %99 = phi ptr [ @.str.22, %92 ], [ @.str.21, %96 ], [ @.str.21, %97 ]
  %100 = phi i32 [ 256, %92 ], [ 512, %96 ], [ 1024, %97 ]
  %101 = and i32 %93, 255
  %102 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %99, i32 noundef %101) #17
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %107

104:                                              ; preds = %98
  %105 = zext nneg i8 %95 to i32
  %106 = tail call fastcc ptr @_action(ptr noundef nonnull %0) #15
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.23, i32 noundef %105, ptr noundef nonnull %99, ptr noundef nonnull %106) #16
  br label %107

107:                                              ; preds = %104, %98
  %108 = or i32 %100, %93
  %109 = and i32 %108, 1536
  %110 = icmp eq i32 %109, 1536
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  %112 = tail call fastcc ptr @_action(ptr noundef nonnull %0) #15
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.24, i32 noundef %101, ptr noundef nonnull %112) #16
  br label %120

113:                                              ; preds = %107
  %114 = or i32 %109, %86
  %115 = icmp eq i32 %114, 1536
  br i1 %115, label %116, label %120

116:                                              ; preds = %113
  %117 = load i8, ptr %94, align 1, !tbaa !15
  %118 = sext i8 %117 to i32
  %119 = tail call fastcc ptr @_action(ptr noundef nonnull %0) #15
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.25, i32 noundef %118, ptr noundef nonnull %119) #16
  br label %120

120:                                              ; preds = %113, %116, %111
  %121 = and i32 %100, %93
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %120
  %124 = load i8, ptr %94, align 1, !tbaa !15
  %125 = sext i8 %124 to i32
  %126 = tail call fastcc ptr @_action(ptr noundef nonnull %0) #15
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 42, ptr noundef nonnull @.str.26, i32 noundef %125, i32 noundef %101, ptr noundef nonnull %126) #16
  br label %127

127:                                              ; preds = %120, %123
  %128 = getelementptr inbounds i8, ptr %94, i64 1
  %129 = icmp eq ptr %128, %91
  br i1 %129, label %130, label %92

130:                                              ; preds = %127, %92, %85
  %131 = phi ptr [ %76, %85 ], [ %94, %92 ], [ %91, %127 ]
  %132 = phi i32 [ %42, %85 ], [ %93, %92 ], [ %108, %127 ]
  %133 = or i32 %132, %86
  %134 = icmp ult ptr %131, %6
  br i1 %134, label %135, label %209

135:                                              ; preds = %130
  %136 = load i8, ptr %131, align 1, !tbaa !15
  %137 = zext i8 %136 to i64
  %138 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %137
  %139 = load i32, ptr %138, align 4, !tbaa !26
  %140 = and i32 %139, 2
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %144, label %142

142:                                              ; preds = %135
  %143 = tail call fastcc ptr @S_get_num(ptr noundef nonnull %131, ptr noundef nonnull %17) #15
  store i32 1, ptr %16, align 8, !tbaa !22
  br label %166

144:                                              ; preds = %135
  switch i8 %136, label %165 [
    i8 42, label %145
    i8 91, label %147
  ]

145:                                              ; preds = %144
  %146 = getelementptr inbounds i8, ptr %131, i64 1
  store i32 2, ptr %16, align 8, !tbaa !22
  br label %166

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, ptr %131, i64 1
  store i32 1, ptr %16, align 8, !tbaa !22
  %149 = tail call fastcc ptr @S_group_end(ptr noundef nonnull %148, ptr noundef nonnull %6, i8 noundef signext 93) #15
  %150 = getelementptr inbounds i8, ptr %149, i64 1
  %151 = load i8, ptr %148, align 1, !tbaa !15
  %152 = zext i8 %151 to i64
  %153 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %152
  %154 = load i32, ptr %153, align 4, !tbaa !26
  %155 = and i32 %154, 2
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %163, label %157

157:                                              ; preds = %147
  %158 = tail call fastcc ptr @S_get_num(ptr noundef nonnull %148, ptr noundef nonnull %17) #15
  %159 = load i8, ptr %158, align 1, !tbaa !15
  %160 = icmp eq i8 %159, 93
  br i1 %160, label %166, label %161

161:                                              ; preds = %157
  %162 = tail call fastcc ptr @_action(ptr noundef nonnull %0) #15
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.27, ptr noundef nonnull %162) #16
  br label %166

163:                                              ; preds = %147
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %2)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(36) %0, i64 36, i1 false), !tbaa.struct !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %16, i64 32, i1 false), !tbaa.struct !100
  store ptr %149, ptr %5, align 8, !tbaa !13
  store ptr %148, ptr %0, align 8, !tbaa !9
  %164 = tail call fastcc i32 @S_measure_struct(ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %2, i64 36, i1 false), !tbaa.struct !25
  store i32 %164, ptr %17, align 4, !tbaa.struct !149
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !100
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3)
  br label %166

165:                                              ; preds = %144
  store i32 0, ptr %16, align 8, !tbaa !22
  store i32 1, ptr %17, align 4, !tbaa !23
  br label %166

166:                                              ; preds = %163, %161, %157, %145, %165, %142
  %167 = phi ptr [ %143, %142 ], [ %146, %145 ], [ %131, %165 ], [ %150, %157 ], [ %150, %161 ], [ %150, %163 ]
  %168 = icmp ult ptr %167, %6
  br i1 %168, label %169, label %210

169:                                              ; preds = %166, %206
  %170 = phi ptr [ %207, %206 ], [ %167, %166 ]
  %171 = load i8, ptr %170, align 1, !tbaa !15
  %172 = zext i8 %171 to i64
  %173 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %172
  %174 = load i32, ptr %173, align 4, !tbaa !26
  %175 = and i32 %174, 17408
  %176 = icmp eq i32 %175, 17408
  br i1 %176, label %177, label %179

177:                                              ; preds = %169
  %178 = getelementptr inbounds i8, ptr %170, i64 1
  br label %206

179:                                              ; preds = %169
  switch i8 %171, label %210 [
    i8 35, label %180
    i8 47, label %190
  ]

180:                                              ; preds = %179, %184
  %181 = phi ptr [ %182, %184 ], [ %170, %179 ]
  %182 = getelementptr inbounds i8, ptr %181, i64 1
  %183 = icmp ult ptr %182, %6
  br i1 %183, label %184, label %187

184:                                              ; preds = %180
  %185 = load i8, ptr %182, align 1, !tbaa !15
  %186 = icmp eq i8 %185, 10
  br i1 %186, label %187, label %180, !llvm.loop !150

187:                                              ; preds = %180, %184
  %188 = getelementptr inbounds i8, ptr %181, i64 2
  %189 = select i1 %183, ptr %188, ptr %182
  br label %206

190:                                              ; preds = %179
  %191 = load i32, ptr %8, align 8, !tbaa !14
  %192 = or i32 %191, 4
  store i32 %192, ptr %8, align 8, !tbaa !14
  %193 = getelementptr inbounds i8, ptr %170, i64 1
  %194 = icmp ult ptr %193, %6
  br i1 %194, label %195, label %210

195:                                              ; preds = %190
  %196 = load i8, ptr %193, align 1, !tbaa !15
  %197 = zext i8 %196 to i64
  %198 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %197
  %199 = load i32, ptr %198, align 4, !tbaa !26
  %200 = freeze i32 %199
  %201 = and i32 %200, 2
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %195
  switch i8 %196, label %210 [
    i8 91, label %204
    i8 42, label %204
  ]

204:                                              ; preds = %203, %203, %195
  %205 = tail call fastcc ptr @_action(ptr noundef nonnull %0) #15
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.28, ptr noundef nonnull %205) #16
  br label %210

206:                                              ; preds = %187, %177
  %207 = phi ptr [ %178, %177 ], [ %189, %187 ]
  %208 = icmp ult ptr %207, %6
  br i1 %208, label %169, label %210, !llvm.loop !151

209:                                              ; preds = %130
  store i32 0, ptr %16, align 8, !tbaa !22
  store i32 1, ptr %17, align 4, !tbaa !23
  br label %210

210:                                              ; preds = %179, %206, %209, %204, %190, %203, %166
  %211 = phi ptr [ %193, %204 ], [ %193, %190 ], [ %131, %209 ], [ %193, %203 ], [ %167, %166 ], [ %207, %206 ], [ %170, %179 ]
  store i32 %133, ptr %18, align 8, !tbaa !21
  store ptr %211, ptr %0, align 8, !tbaa !9
  br i1 %44, label %212, label %217

212:                                              ; preds = %51, %49, %45, %27, %38, %210
  %213 = phi ptr [ %211, %210 ], [ %28, %27 ], [ %40, %38 ], [ %43, %45 ], [ %43, %49 ], [ %43, %51 ]
  %214 = icmp ult ptr %213, %6
  br i1 %214, label %19, label %215, !llvm.loop !148

215:                                              ; preds = %212, %1
  %216 = phi ptr [ %4, %1 ], [ %213, %212 ]
  store ptr %216, ptr %0, align 8, !tbaa !9
  br label %217

217:                                              ; preds = %210, %215
  %218 = phi i1 [ false, %215 ], [ true, %210 ]
  ret i1 %218
}

; Function Attrs: optsize
declare ptr @Perl_stack_grow(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @Perl_tmps_grow_p(i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: optsize
declare ptr @Perl_newSVuv(i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @Perl_utf8_length(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @Perl_newSViv(i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @Perl_newSVpvn(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i1 @Perl_sv_utf8_downgrade(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @utf8_to_byte(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  %5 = load ptr, ptr %0, align 8, !tbaa !19
  %6 = ptrtoint ptr %1 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 44) #16
  %10 = select i1 %9, i32 0, i32 -8161
  %11 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %5, i64 noundef %8, ptr noundef nonnull %4, i32 noundef %10) #16
  %12 = load i64, ptr %4, align 8
  %13 = add i64 %12, 1
  %14 = icmp ult i64 %13, 2
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = and i32 %2, 255
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.38, i32 noundef %16) #16
  br label %17

17:                                               ; preds = %3, %15
  %18 = icmp ugt i64 %11, 255
  br i1 %18, label %19, label %22

19:                                               ; preds = %17
  %20 = and i32 %2, 255
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 42, ptr noundef nonnull @.str.39, i32 noundef %20) #16
  %21 = and i64 %11, 255
  br label %22

22:                                               ; preds = %19, %17
  %23 = phi i64 [ %21, %19 ], [ %11, %17 ]
  %24 = load i64, ptr %4, align 8, !tbaa !5
  %25 = load ptr, ptr %0, align 8, !tbaa !19
  %26 = getelementptr inbounds i8, ptr %25, i64 %24
  store ptr %26, ptr %0, align 8, !tbaa !19
  %27 = trunc i64 %23 to i8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  ret i8 %27
}

; Function Attrs: optsize
declare ptr @Perl_newSV(i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @Perl_utf8n_to_uvchr(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i1 @Perl_ckwarn(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @Perl_sv_setiv(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @Perl_sv_newmortal() local_unnamed_addr #3

; Function Attrs: optsize
declare void @Perl_sv_setuv(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i1 @S_utf8_to_bytes(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  %7 = load ptr, ptr %0, align 8, !tbaa !19
  %8 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 44) #16
  %9 = select i1 %8, i32 8192, i32 -8161
  %10 = and i32 %4, 1536
  %11 = icmp eq i32 %10, 512
  %12 = icmp slt i32 %3, 1
  br i1 %12, label %93, label %13

13:                                               ; preds = %5
  %14 = select i1 %11, i32 %3, i32 0
  %15 = zext nneg i32 %14 to i64
  %16 = getelementptr inbounds i8, ptr %2, i64 %15
  %17 = ptrtoint ptr %1 to i64
  br label %18

18:                                               ; preds = %13, %38
  %19 = phi ptr [ %16, %13 ], [ %49, %38 ]
  %20 = phi i32 [ %3, %13 ], [ %50, %38 ]
  %21 = phi i32 [ 0, %13 ], [ %44, %38 ]
  %22 = phi ptr [ %7, %13 ], [ %41, %38 ]
  %23 = icmp ult ptr %22, %1
  br i1 %23, label %24, label %95

24:                                               ; preds = %18
  %25 = ptrtoint ptr %22 to i64
  %26 = sub i64 %17, %25
  %27 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %22, i64 noundef %26, ptr noundef nonnull %6, i32 noundef %9) #16
  %28 = load i64, ptr %6, align 8
  %29 = add i64 %28, 1
  %30 = icmp ult i64 %29, 2
  br i1 %30, label %31, label %38

31:                                               ; preds = %24
  %32 = load i8, ptr %22, align 1, !tbaa !15
  %33 = zext i8 %32 to i64
  %34 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !15
  %36 = zext i8 %35 to i64
  %37 = or i32 %21, 1
  br label %38

38:                                               ; preds = %24, %31
  %39 = phi i64 [ %36, %31 ], [ %28, %24 ]
  %40 = phi i32 [ %37, %31 ], [ %21, %24 ]
  %41 = getelementptr inbounds i8, ptr %22, i64 %39
  %42 = icmp ugt i64 %27, 255
  %43 = or i32 %40, 2
  %44 = select i1 %42, i32 %43, i32 %40
  %45 = trunc i64 %27 to i8
  %46 = getelementptr inbounds i8, ptr %19, i64 -1
  %47 = getelementptr inbounds i8, ptr %19, i64 1
  %48 = select i1 %11, ptr %46, ptr %19
  %49 = select i1 %11, ptr %46, ptr %47
  store i8 %45, ptr %48, align 1, !tbaa !15
  %50 = add nsw i32 %20, -1
  %51 = icmp slt i32 %20, 2
  br i1 %51, label %52, label %18, !llvm.loop !152

52:                                               ; preds = %38
  %53 = icmp eq i32 %44, 0
  br i1 %53, label %93, label %54

54:                                               ; preds = %52
  %55 = and i32 %44, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %83, label %57

57:                                               ; preds = %54
  %58 = call zeroext i1 @Perl_ckwarn(i32 noundef 44) #16
  %59 = select i1 %58, i32 0, i32 -8161
  %60 = load ptr, ptr %0, align 8, !tbaa !19
  %61 = icmp ult ptr %60, %41
  %62 = icmp ult ptr %60, %1
  %63 = and i1 %61, %62
  br i1 %63, label %64, label %80

64:                                               ; preds = %57
  %65 = ptrtoint ptr %1 to i64
  br label %66

66:                                               ; preds = %64, %66
  %67 = phi ptr [ %60, %64 ], [ %76, %66 ]
  %68 = ptrtoint ptr %67 to i64
  %69 = sub i64 %65, %68
  %70 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %67, i64 noundef %69, ptr noundef nonnull %6, i32 noundef %59) #16
  %71 = load i8, ptr %67, align 1, !tbaa !15
  %72 = zext i8 %71 to i64
  %73 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %72
  %74 = load i8, ptr %73, align 1, !tbaa !15
  %75 = zext i8 %74 to i64
  %76 = getelementptr inbounds i8, ptr %67, i64 %75
  %77 = icmp ult ptr %76, %41
  %78 = icmp ult ptr %76, %1
  %79 = and i1 %77, %78
  br i1 %79, label %66, label %80, !llvm.loop !153

80:                                               ; preds = %66, %57
  %81 = icmp ugt ptr %41, %1
  %82 = select i1 %81, ptr %1, ptr %41
  br label %83

83:                                               ; preds = %80, %54
  %84 = phi ptr [ %82, %80 ], [ %41, %54 ]
  %85 = and i32 %44, 2
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %83
  %88 = and i32 %4, 2048
  %89 = icmp eq i32 %88, 0
  %90 = select i1 %89, i32 42, i32 16
  %91 = and i32 %4, 255
  %92 = select i1 %89, ptr @.str.30, ptr @.str.29
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef %90, ptr noundef nonnull @.str.40, i32 noundef %91, ptr noundef nonnull %92) #16
  br label %93

93:                                               ; preds = %5, %83, %87, %52
  %94 = phi ptr [ %84, %87 ], [ %84, %83 ], [ %41, %52 ], [ %7, %5 ]
  store ptr %94, ptr %0, align 8, !tbaa !19
  br label %95

95:                                               ; preds = %18, %93
  %96 = phi i1 [ true, %93 ], [ false, %18 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  ret i1 %96
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @S_reverse_copy(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i64 noundef %2) unnamed_addr #6 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %16, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds i8, ptr %1, i64 %2
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi i64 [ %11, %7 ], [ %2, %5 ]
  %9 = phi ptr [ %14, %7 ], [ %6, %5 ]
  %10 = phi ptr [ %12, %7 ], [ %0, %5 ]
  %11 = add i64 %8, -1
  %12 = getelementptr inbounds i8, ptr %10, i64 1
  %13 = load i8, ptr %10, align 1, !tbaa !15
  %14 = getelementptr inbounds i8, ptr %9, i64 -1
  store i8 %13, ptr %14, align 1, !tbaa !15
  %15 = icmp eq i64 %11, 0
  br i1 %15, label %16, label %7, !llvm.loop !154

16:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef zeroext i16 @__bswap_16(i16 noundef zeroext %0) unnamed_addr #7 {
  %2 = tail call i16 @llvm.bswap.i16(i16 %0)
  ret i16 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @__bswap_32(i32 noundef %0) unnamed_addr #7 {
  %2 = tail call i32 @llvm.bswap.i32(i32 %0)
  ret i32 %2
}

; Function Attrs: optsize
declare ptr @Perl_newSVpv(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @Perl_newSVpvf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @S_mul128(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !42
  %6 = and i32 %5, 2098176
  %7 = icmp eq i32 %6, 1024
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !50
  %10 = getelementptr inbounds %struct.xpv, ptr %9, i64 0, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !51
  store i64 %11, ptr %3, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !15
  br label %16

14:                                               ; preds = %2
  %15 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 2) #16
  br label %16

16:                                               ; preds = %14, %8
  %17 = phi ptr [ %13, %8 ], [ %15, %14 ]
  %18 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(5) @.str.41, i64 noundef 4) #17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %16
  %21 = call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.42, i64 noundef 10) #16
  call void @Perl_sv_catsv_flags(ptr noundef %21, ptr noundef nonnull %0, i32 noundef 2) #16
  call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %0) #15
  %22 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !42
  %24 = and i32 %23, 2098176
  %25 = icmp eq i32 %24, 1024
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load ptr, ptr %21, align 8, !tbaa !50
  %28 = getelementptr inbounds %struct.xpv, ptr %27, i64 0, i32 2
  %29 = load i64, ptr %28, align 8, !tbaa !51
  store i64 %29, ptr %3, align 8, !tbaa !5
  %30 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !15
  br label %34

32:                                               ; preds = %20
  %33 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %21, ptr noundef nonnull %3, i32 noundef 2) #16
  br label %34

34:                                               ; preds = %26, %32, %16
  %35 = phi ptr [ %17, %16 ], [ %31, %26 ], [ %33, %32 ]
  %36 = phi ptr [ %0, %16 ], [ %21, %26 ], [ %21, %32 ]
  %37 = load i64, ptr %3, align 8, !tbaa !5
  %38 = getelementptr inbounds i8, ptr %35, i64 %37
  br label %39

39:                                               ; preds = %39, %34
  %40 = phi ptr [ %38, %34 ], [ %41, %39 ]
  %41 = getelementptr inbounds i8, ptr %40, i64 -1
  %42 = load i8, ptr %41, align 1, !tbaa !15
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %39, label %44, !llvm.loop !155

44:                                               ; preds = %39
  %45 = icmp ugt ptr %41, %35
  br i1 %45, label %46, label %62

46:                                               ; preds = %44, %46
  %47 = phi i8 [ %60, %46 ], [ %1, %44 ]
  %48 = phi ptr [ %58, %46 ], [ %41, %44 ]
  %49 = load i8, ptr %48, align 1, !tbaa !15
  %50 = sext i8 %49 to i32
  %51 = shl nsw i32 %50, 7
  %52 = zext i8 %47 to i32
  %53 = or disjoint i32 %52, -6144
  %54 = add nsw i32 %53, %51
  %55 = urem i32 %54, 10
  %56 = trunc i32 %55 to i8
  %57 = or disjoint i8 %56, 48
  %58 = getelementptr inbounds i8, ptr %48, i64 -1
  store i8 %57, ptr %48, align 1, !tbaa !15
  %59 = udiv i32 %54, 10
  %60 = trunc i32 %59 to i8
  %61 = icmp ugt ptr %58, %35
  br i1 %61, label %46, label %62, !llvm.loop !156

62:                                               ; preds = %46, %44
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  ret ptr %36
}

; Function Attrs: optsize
declare void @Perl_sv_chop(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @Perl_newSVpvn_flags(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @Perl_sv_setnv(ptr noundef, double noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @Perl_sv_catpvn_flags(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: write)
declare double @modf(double noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @Perl_newSVnv(double noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @Perl_sv_2iv_flags(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @Perl_warner(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc nonnull ptr @_action(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !14
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, ptr @.str.30, ptr @.str.29
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @S_group_end(ptr noundef %0, ptr noundef %1, i8 noundef signext %2) unnamed_addr #0 {
  %4 = ptrtoint ptr %1 to i64
  %5 = icmp ult ptr %0, %1
  br i1 %5, label %6, label %40

6:                                                ; preds = %3, %37
  %7 = phi ptr [ %38, %37 ], [ %0, %3 ]
  %8 = ptrtoint ptr %7 to i64
  %9 = getelementptr inbounds i8, ptr %7, i64 1
  %10 = load i8, ptr %7, align 1, !tbaa !15
  %11 = zext i8 %10 to i64
  %12 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !26
  %14 = and i32 %13, 17408
  %15 = icmp eq i32 %14, 17408
  br i1 %15, label %37, label %16, !llvm.loop !157

16:                                               ; preds = %6
  %17 = icmp eq i8 %10, %2
  br i1 %17, label %42, label %18

18:                                               ; preds = %16
  switch i8 %10, label %37 [
    i8 35, label %19
    i8 40, label %33
    i8 91, label %32
  ]

19:                                               ; preds = %18
  %20 = icmp ult ptr %9, %1
  br i1 %20, label %21, label %37, !llvm.loop !157

21:                                               ; preds = %19
  %22 = getelementptr i8, ptr %7, i64 %4
  %23 = sub i64 0, %8
  %24 = getelementptr i8, ptr %22, i64 %23
  br label %25

25:                                               ; preds = %21, %29
  %26 = phi ptr [ %30, %29 ], [ %9, %21 ]
  %27 = load i8, ptr %26, align 1, !tbaa !15
  %28 = icmp eq i8 %27, 10
  br i1 %28, label %37, label %29, !llvm.loop !157

29:                                               ; preds = %25
  %30 = getelementptr inbounds i8, ptr %26, i64 1
  %31 = icmp eq ptr %30, %24
  br i1 %31, label %37, label %25, !llvm.loop !158

32:                                               ; preds = %18
  br label %33

33:                                               ; preds = %18, %32
  %34 = phi i8 [ 93, %32 ], [ 41, %18 ]
  %35 = tail call fastcc ptr @S_group_end(ptr noundef nonnull %9, ptr noundef nonnull %1, i8 noundef signext %34) #15
  %36 = getelementptr inbounds i8, ptr %35, i64 1
  br label %37

37:                                               ; preds = %29, %25, %33, %19, %18, %6
  %38 = phi ptr [ %9, %6 ], [ %9, %18 ], [ %9, %19 ], [ %36, %33 ], [ %24, %29 ], [ %26, %25 ]
  %39 = icmp ult ptr %38, %1
  br i1 %39, label %6, label %40

40:                                               ; preds = %37, %3
  %41 = zext nneg i8 %2 to i32
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.31, i32 noundef %41) #16
  br label %42

42:                                               ; preds = %16, %40
  %43 = phi ptr [ null, %40 ], [ %7, %16 ]
  ret ptr %43
}

; Function Attrs: optsize
declare void @Perl_ck_warner(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef nonnull ptr @S_get_num(ptr noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = load i8, ptr %0, align 1, !tbaa !15
  %4 = sext i8 %3 to i32
  %5 = add nsw i32 %4, -48
  %6 = getelementptr inbounds i8, ptr %0, i64 1
  %7 = load i8, ptr %6, align 1, !tbaa !15
  %8 = zext i8 %7 to i64
  %9 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !26
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %33, label %13

13:                                               ; preds = %2, %20
  %14 = phi i8 [ %27, %20 ], [ %7, %2 ]
  %15 = phi ptr [ %26, %20 ], [ %6, %2 ]
  %16 = phi i32 [ %25, %20 ], [ %5, %2 ]
  %17 = icmp sgt i32 %16, 214748363
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.32) #16
  %19 = load i8, ptr %15, align 1, !tbaa !15
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi i8 [ %19, %18 ], [ %14, %13 ]
  %22 = mul nsw i32 %16, 10
  %23 = sext i8 %21 to i32
  %24 = add i32 %22, -48
  %25 = add i32 %24, %23
  %26 = getelementptr inbounds i8, ptr %15, i64 1
  %27 = load i8, ptr %26, align 1, !tbaa !15
  %28 = zext i8 %27 to i64
  %29 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !26
  %31 = and i32 %30, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %13, !llvm.loop !159

33:                                               ; preds = %20, %2
  %34 = phi i32 [ %5, %2 ], [ %25, %20 ]
  %35 = phi ptr [ %6, %2 ], [ %26, %20 ]
  store i32 %34, ptr %1, align 4, !tbaa !26
  ret ptr %35
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @S_measure_struct(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca { ptr, ptr }, align 8
  %3 = alloca { i32, i32, i32, i32, i32, i64, ptr }, align 8
  %4 = tail call fastcc zeroext i1 @S_next_symbol(ptr noundef %0) #15
  br i1 %4, label %5, label %69

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 6
  %7 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 5
  %8 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 4
  %9 = getelementptr inbounds i8, ptr %0, i64 16
  %10 = getelementptr inbounds i8, ptr %0, i64 24
  %11 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 1
  br label %12

12:                                               ; preds = %5, %63
  %13 = phi i32 [ 0, %5 ], [ %67, %63 ]
  %14 = load i32, ptr %6, align 8, !tbaa !22
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = tail call fastcc ptr @_action(ptr noundef nonnull %0) #15
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.33, ptr noundef nonnull %17) #16
  br label %18

18:                                               ; preds = %12, %16
  %19 = load i32, ptr %7, align 4, !tbaa !23
  %20 = load i32, ptr %8, align 8, !tbaa !21
  %21 = and i32 %20, -1537
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [512 x i8], ptr @packprops, i64 0, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !15
  %25 = and i8 %24, 63
  %26 = zext nneg i8 %25 to i32
  %27 = icmp eq i8 %25, 0
  br i1 %27, label %28, label %63

28:                                               ; preds = %18
  switch i32 %21, label %29 [
    i32 302, label %33
    i32 320, label %33
    i32 64, label %33
    i32 46, label %33
    i32 47, label %33
    i32 85, label %33
    i32 119, label %33
    i32 117, label %33
    i32 37, label %63
    i32 40, label %37
    i32 344, label %41
    i32 88, label %44
    i32 376, label %49
    i32 120, label %55
    i32 65, label %55
    i32 90, label %55
    i32 97, label %55
    i32 66, label %56
    i32 98, label %56
    i32 72, label %59
    i32 104, label %59
    i32 80, label %62
  ]

29:                                               ; preds = %28
  %30 = and i32 %20, 255
  %31 = tail call fastcc ptr @_action(ptr noundef nonnull %0) #15
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.34, i32 noundef %30, ptr noundef nonnull %31) #16
  %32 = load i32, ptr %8, align 8, !tbaa !21
  br label %33

33:                                               ; preds = %28, %28, %28, %28, %28, %28, %28, %28, %29
  %34 = phi i32 [ %20, %28 ], [ %20, %28 ], [ %20, %28 ], [ %20, %28 ], [ %20, %28 ], [ %20, %28 ], [ %20, %28 ], [ %20, %28 ], [ %32, %29 ]
  %35 = and i32 %34, 255
  %36 = tail call fastcc ptr @_action(ptr noundef nonnull %0) #15
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.35, i32 noundef %35, ptr noundef nonnull %36) #16
  br label %63

37:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !25
  %38 = load ptr, ptr %9, align 8, !tbaa.struct !98
  %39 = load ptr, ptr %10, align 8, !tbaa.struct !99
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %8, i64 40, i1 false), !tbaa.struct !160
  store ptr %38, ptr %0, align 8, !tbaa !9
  store ptr %39, ptr %11, align 8, !tbaa !13
  %40 = tail call fastcc i32 @S_measure_struct(ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !25
  store ptr %38, ptr %9, align 8, !tbaa.struct !98
  store ptr %39, ptr %10, align 8, !tbaa.struct !99
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !160
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3)
  br label %63

41:                                               ; preds = %28
  %42 = tail call i32 @llvm.umax.i32(i32 %19, i32 1)
  %43 = srem i32 %13, %42
  br label %44

44:                                               ; preds = %28, %41
  %45 = phi i32 [ %19, %28 ], [ %43, %41 ]
  %46 = icmp slt i32 %13, %45
  br i1 %46, label %47, label %63

47:                                               ; preds = %44
  %48 = tail call fastcc ptr @_action(ptr noundef nonnull %0) #15
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.36, ptr noundef nonnull %48) #16
  br label %63

49:                                               ; preds = %28
  %50 = tail call i32 @llvm.umax.i32(i32 %19, i32 1)
  %51 = srem i32 %13, %50
  %52 = icmp eq i32 %51, 0
  %53 = sub nsw i32 %50, %51
  %54 = select i1 %52, i32 0, i32 %53
  br label %63

55:                                               ; preds = %28, %28, %28, %28
  br label %63

56:                                               ; preds = %28, %28
  %57 = add nsw i32 %19, 7
  %58 = sdiv i32 %57, 8
  br label %63

59:                                               ; preds = %28, %28
  %60 = add nsw i32 %19, 1
  %61 = sdiv i32 %60, 2
  br label %63

62:                                               ; preds = %28
  br label %63

63:                                               ; preds = %49, %37, %55, %56, %59, %62, %47, %44, %28, %33, %18
  %64 = phi i32 [ %26, %18 ], [ 8, %62 ], [ 1, %59 ], [ 1, %56 ], [ -1, %47 ], [ -1, %44 ], [ %40, %37 ], [ 0, %28 ], [ 0, %33 ], [ 1, %55 ], [ 1, %49 ]
  %65 = phi i32 [ %19, %18 ], [ 1, %62 ], [ %61, %59 ], [ %58, %56 ], [ %45, %47 ], [ %45, %44 ], [ %19, %37 ], [ %19, %28 ], [ %19, %33 ], [ %19, %55 ], [ %54, %49 ]
  %66 = mul nsw i32 %65, %64
  %67 = add nsw i32 %66, %13
  %68 = tail call fastcc zeroext i1 @S_next_symbol(ptr noundef nonnull %0) #15
  br i1 %68, label %12, label %69, !llvm.loop !161

69:                                               ; preds = %63, %1
  %70 = phi i32 [ 0, %1 ], [ %67, %63 ]
  ret i32 %70
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @Perl_sv_catsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_SvREFCNT_dec(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !162
  %6 = icmp ugt i32 %5, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = add i32 %5, -1
  store i32 %8, ptr %4, align 8, !tbaa !162
  br label %10

9:                                                ; preds = %3
  tail call void @Perl_sv_free2(ptr noundef nonnull %0, i32 noundef %5) #16
  br label %10

10:                                               ; preds = %7, %9, %1
  ret void
}

; Function Attrs: optsize
declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @marked_upgrade(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !42
  %5 = and i32 %4, 536870912
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %171

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !15
  %10 = load ptr, ptr %0, align 8, !tbaa !50
  %11 = getelementptr inbounds %struct.xpv, ptr %10, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !51
  %13 = getelementptr inbounds i8, ptr %9, i64 %12
  %14 = icmp sgt i64 %12, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %7, %19
  %16 = phi ptr [ %20, %19 ], [ %9, %7 ]
  %17 = load i8, ptr %16, align 1, !tbaa !15
  %18 = icmp sgt i8 %17, -1
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = getelementptr inbounds i8, ptr %16, i64 1
  %21 = icmp ult ptr %20, %13
  br i1 %21, label %15, label %22, !llvm.loop !163

22:                                               ; preds = %19, %15, %7
  %23 = phi ptr [ %9, %7 ], [ %16, %15 ], [ %20, %19 ]
  %24 = icmp eq ptr %23, %13
  br i1 %24, label %168, label %25

25:                                               ; preds = %22
  %26 = ptrtoint ptr %13 to i64
  %27 = ptrtoint ptr %23 to i64
  %28 = sub i64 %26, %27
  %29 = shl nsw i64 %28, 1
  %30 = ptrtoint ptr %9 to i64
  %31 = sub i64 %27, %30
  %32 = add i64 %31, 1
  %33 = add i64 %32, %29
  %34 = tail call ptr @Perl_safesysmalloc(i64 noundef %33) #16
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %34, ptr align 1 %9, i64 %31, i1 false)
  %35 = getelementptr inbounds i8, ptr %34, i64 %31
  %36 = getelementptr inbounds %struct.tempsym, ptr %1, i64 0, i32 7
  %37 = load i32, ptr %36, align 4, !tbaa !29
  %38 = add nsw i32 %37, 2
  %39 = sext i32 %38 to i64
  %40 = shl nsw i64 %39, 3
  %41 = tail call ptr @Perl_safesysmalloc(i64 noundef %40) #16
  br label %42

42:                                               ; preds = %25, %42
  %43 = phi ptr [ %52, %42 ], [ %1, %25 ]
  %44 = getelementptr inbounds %struct.tempsym, ptr %43, i64 0, i32 9
  %45 = load i64, ptr %44, align 8, !tbaa !20
  %46 = getelementptr inbounds i8, ptr %9, i64 %45
  %47 = getelementptr inbounds %struct.tempsym, ptr %43, i64 0, i32 7
  %48 = load i32, ptr %47, align 4, !tbaa !29
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds ptr, ptr %41, i64 %49
  store ptr %46, ptr %50, align 8, !tbaa !19
  %51 = getelementptr inbounds %struct.tempsym, ptr %43, i64 0, i32 10
  %52 = load ptr, ptr %51, align 8, !tbaa !28
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %42, !llvm.loop !164

54:                                               ; preds = %42
  %55 = getelementptr inbounds i8, ptr %13, i64 1
  %56 = load i32, ptr %36, align 4, !tbaa !29
  %57 = sext i32 %56 to i64
  %58 = getelementptr ptr, ptr %41, i64 %57
  %59 = getelementptr ptr, ptr %58, i64 1
  store ptr %55, ptr %59, align 8, !tbaa !19
  %60 = load ptr, ptr %41, align 8, !tbaa !19
  %61 = icmp ult ptr %60, %23
  br i1 %61, label %65, label %62

62:                                               ; preds = %65, %54
  %63 = phi ptr [ %41, %54 ], [ %71, %65 ]
  %64 = icmp ult ptr %23, %13
  br i1 %64, label %74, label %92

65:                                               ; preds = %54, %65
  %66 = phi ptr [ %72, %65 ], [ %60, %54 ]
  %67 = phi ptr [ %71, %65 ], [ %41, %54 ]
  %68 = ptrtoint ptr %66 to i64
  %69 = sub i64 %68, %30
  %70 = getelementptr inbounds i8, ptr %34, i64 %69
  store ptr %70, ptr %67, align 8, !tbaa !19
  %71 = getelementptr inbounds ptr, ptr %67, i64 1
  %72 = load ptr, ptr %71, align 8, !tbaa !19
  %73 = icmp ult ptr %72, %23
  br i1 %73, label %65, label %62, !llvm.loop !165

74:                                               ; preds = %62, %85
  %75 = phi ptr [ %89, %85 ], [ %35, %62 ]
  %76 = phi ptr [ %86, %85 ], [ %63, %62 ]
  %77 = phi ptr [ %90, %85 ], [ %23, %62 ]
  %78 = load ptr, ptr %76, align 8, !tbaa !19
  %79 = icmp eq ptr %78, %77
  br i1 %79, label %80, label %85

80:                                               ; preds = %74, %80
  %81 = phi ptr [ %82, %80 ], [ %76, %74 ]
  %82 = getelementptr inbounds ptr, ptr %81, i64 1
  store ptr %75, ptr %81, align 8, !tbaa !19
  %83 = load ptr, ptr %82, align 8, !tbaa !19
  %84 = icmp eq ptr %83, %77
  br i1 %84, label %80, label %85, !llvm.loop !166

85:                                               ; preds = %80, %74
  %86 = phi ptr [ %76, %74 ], [ %82, %80 ]
  %87 = load i8, ptr %77, align 1, !tbaa !15
  %88 = zext i8 %87 to i64
  %89 = tail call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %75, i64 noundef %88, i64 noundef 0) #16
  %90 = getelementptr inbounds i8, ptr %77, i64 1
  %91 = icmp ult ptr %90, %13
  br i1 %91, label %74, label %92, !llvm.loop !167

92:                                               ; preds = %85, %62
  %93 = phi ptr [ %23, %62 ], [ %90, %85 ]
  %94 = phi ptr [ %63, %62 ], [ %86, %85 ]
  %95 = phi ptr [ %35, %62 ], [ %89, %85 ]
  store i8 0, ptr %95, align 1, !tbaa !15
  %96 = load ptr, ptr %94, align 8, !tbaa !19
  %97 = icmp eq ptr %96, %93
  br i1 %97, label %98, label %103

98:                                               ; preds = %92, %98
  %99 = phi ptr [ %100, %98 ], [ %94, %92 ]
  %100 = getelementptr inbounds ptr, ptr %99, i64 1
  store ptr %95, ptr %99, align 8, !tbaa !19
  %101 = load ptr, ptr %100, align 8, !tbaa !19
  %102 = icmp eq ptr %101, %93
  br i1 %102, label %98, label %103, !llvm.loop !168

103:                                              ; preds = %98, %92
  %104 = phi ptr [ %94, %92 ], [ %100, %98 ]
  %105 = load i32, ptr %36, align 4, !tbaa !29
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds ptr, ptr %41, i64 %106
  %108 = getelementptr inbounds ptr, ptr %107, i64 1
  %109 = icmp eq ptr %104, %108
  br i1 %109, label %112, label %110

110:                                              ; preds = %103
  tail call void @Perl_safesysfree(ptr noundef nonnull %41) #16
  tail call void @Perl_safesysfree(ptr noundef %34) #16
  %111 = load i32, ptr %36, align 4, !tbaa !29
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.60, ptr noundef nonnull %104, ptr noundef nonnull %41, i32 noundef %111) #16
  br label %112

112:                                              ; preds = %103, %110
  %113 = ptrtoint ptr %34 to i64
  br label %114

114:                                              ; preds = %112, %114
  %115 = phi ptr [ %1, %112 ], [ %125, %114 ]
  %116 = getelementptr inbounds %struct.tempsym, ptr %115, i64 0, i32 7
  %117 = load i32, ptr %116, align 4, !tbaa !29
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds ptr, ptr %41, i64 %118
  %120 = load ptr, ptr %119, align 8, !tbaa !19
  %121 = ptrtoint ptr %120 to i64
  %122 = sub i64 %121, %113
  %123 = getelementptr inbounds %struct.tempsym, ptr %115, i64 0, i32 9
  store i64 %122, ptr %123, align 8, !tbaa !20
  %124 = getelementptr inbounds %struct.tempsym, ptr %115, i64 0, i32 10
  %125 = load ptr, ptr %124, align 8, !tbaa !28
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %114, !llvm.loop !169

127:                                              ; preds = %114
  tail call void @Perl_safesysfree(ptr noundef nonnull %41) #16
  %128 = load i32, ptr %3, align 4, !tbaa !42
  %129 = and i32 %128, 33554432
  %130 = icmp eq i32 %129, 0
  %131 = load ptr, ptr %0, align 8, !tbaa !50
  br i1 %130, label %152, label %132

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.xpviv, ptr %131, i64 0, i32 4
  %134 = load i64, ptr %133, align 8, !tbaa !15
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %147, label %136

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.xpv, ptr %131, i64 0, i32 3
  %138 = load i64, ptr %137, align 8, !tbaa !15
  %139 = add i64 %138, %134
  store i64 %139, ptr %137, align 8, !tbaa !15
  %140 = load ptr, ptr %0, align 8, !tbaa !50
  %141 = getelementptr inbounds %struct.xpviv, ptr %140, i64 0, i32 4
  %142 = load i64, ptr %141, align 8, !tbaa !15
  %143 = sub i64 0, %142
  %144 = getelementptr inbounds i8, ptr %9, i64 %143
  store i64 0, ptr %141, align 8, !tbaa !15
  %145 = load i32, ptr %3, align 4, !tbaa !42
  %146 = load ptr, ptr %0, align 8, !tbaa !50
  br label %147

147:                                              ; preds = %136, %132
  %148 = phi ptr [ %146, %136 ], [ %131, %132 ]
  %149 = phi i32 [ %145, %136 ], [ %128, %132 ]
  %150 = phi ptr [ %144, %136 ], [ %9, %132 ]
  %151 = and i32 %149, -33554433
  store i32 %151, ptr %3, align 4, !tbaa !42
  br label %152

152:                                              ; preds = %147, %127
  %153 = phi ptr [ %148, %147 ], [ %131, %127 ]
  %154 = phi ptr [ %150, %147 ], [ %9, %127 ]
  %155 = getelementptr inbounds %struct.xpv, ptr %153, i64 0, i32 3
  %156 = load i64, ptr %155, align 8, !tbaa !15
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %160, label %158

158:                                              ; preds = %152
  tail call void @Perl_safesysfree(ptr noundef %154) #16
  %159 = load ptr, ptr %0, align 8, !tbaa !50
  br label %160

160:                                              ; preds = %152, %158
  %161 = phi ptr [ %153, %152 ], [ %159, %158 ]
  store ptr %34, ptr %8, align 8, !tbaa !15
  %162 = ptrtoint ptr %95 to i64
  %163 = ptrtoint ptr %34 to i64
  %164 = sub i64 %162, %163
  %165 = getelementptr inbounds %struct.xpv, ptr %161, i64 0, i32 2
  store i64 %164, ptr %165, align 8, !tbaa !51
  %166 = getelementptr inbounds %struct.xpv, ptr %161, i64 0, i32 3
  store i64 %33, ptr %166, align 8, !tbaa !15
  %167 = load i32, ptr %3, align 4, !tbaa !42
  br label %168

168:                                              ; preds = %22, %160
  %169 = phi i32 [ %167, %160 ], [ %4, %22 ]
  %170 = or i32 %169, 536870912
  store i32 %170, ptr %3, align 4, !tbaa !42
  br label %171

171:                                              ; preds = %168, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @S_sv_exp_grow(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !50
  %4 = getelementptr inbounds %struct.xpv, ptr %3, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !51
  %6 = getelementptr inbounds %struct.xpv, ptr %3, i64 0, i32 3
  %7 = load i64, ptr %6, align 8, !tbaa !15
  %8 = sub i64 %7, %5
  %9 = icmp ugt i64 %8, %1
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !15
  br label %28

13:                                               ; preds = %2
  %14 = tail call i64 @llvm.umax.i64(i64 %7, i64 %1)
  %15 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !42
  %17 = and i32 %16, 268435456
  %18 = icmp ne i32 %17, 0
  %19 = add i64 %7, 1
  %20 = add i64 %19, %14
  %21 = icmp ult i64 %7, %20
  %22 = or i1 %18, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %13
  %24 = tail call ptr @Perl_sv_grow(ptr noundef nonnull %0, i64 noundef %20) #16
  br label %28

25:                                               ; preds = %13
  %26 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !15
  br label %28

28:                                               ; preds = %23, %25, %10
  %29 = phi ptr [ %12, %10 ], [ %24, %23 ], [ %27, %25 ]
  ret ptr %29
}

; Function Attrs: optsize
declare i64 @Perl_sv_len_utf8(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @S_sv_check_infnan(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !42
  %5 = and i32 %4, 2097152
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = tail call i32 @Perl_mg_get(ptr noundef nonnull %0) #16
  %9 = load i32, ptr %3, align 4, !tbaa !42
  br label %10

10:                                               ; preds = %2, %7
  %11 = phi i32 [ %4, %2 ], [ %9, %7 ]
  %12 = and i32 %11, 2048
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %30, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !15
  %17 = getelementptr inbounds %struct.sv, ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !42
  %19 = and i32 %18, 1048576
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %14
  %22 = load ptr, ptr %16, align 8, !tbaa !50
  %23 = load ptr, ptr %22, align 8, !tbaa !170
  %24 = getelementptr inbounds %struct.hv, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !172
  %26 = and i32 %25, 268435456
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %21
  %29 = tail call ptr @Perl_sv_2num(ptr noundef nonnull %0) #16
  br label %30

30:                                               ; preds = %10, %14, %21, %28
  %31 = phi ptr [ %29, %28 ], [ %0, %21 ], [ %0, %14 ], [ %0, %10 ]
  %32 = tail call zeroext i1 @Perl_isinfnansv(ptr noundef %31) #16
  br i1 %32, label %33, label %50

33:                                               ; preds = %30
  %34 = and i32 %1, 255
  %35 = getelementptr inbounds %struct.sv, ptr %31, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !42
  %37 = and i32 %36, 512
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %33
  %40 = load ptr, ptr %31, align 8, !tbaa !50
  %41 = getelementptr inbounds %struct.xpvnv, ptr %40, i64 0, i32 5
  %42 = load double, ptr %41, align 8, !tbaa !15
  br label %45

43:                                               ; preds = %33
  %44 = tail call double @Perl_sv_2nv_flags(ptr noundef nonnull %31, i32 noundef 0) #16
  br label %45

45:                                               ; preds = %43, %39
  %46 = phi double [ %42, %39 ], [ %44, %43 ]
  %47 = icmp eq i32 %34, 119
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.61, double noundef %46) #16
  br label %50

49:                                               ; preds = %45
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.62, double noundef %46, i32 noundef %34) #16
  br label %50

50:                                               ; preds = %48, %49, %30
  ret ptr %31
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: optsize
declare ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @Perl_sv_magic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @S_my_bytes_to_utf8(ptr noundef readonly %0, i64 noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #6 {
  %5 = alloca ptr, align 8
  store ptr %2, ptr %5, align 8, !tbaa !19
  br i1 %3, label %6, label %15

6:                                                ; preds = %4
  %7 = icmp sgt i64 %1, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %6
  %9 = getelementptr inbounds i8, ptr %0, i64 %1
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi ptr [ %12, %10 ], [ %9, %8 ]
  %12 = getelementptr inbounds i8, ptr %11, i64 -1
  %13 = load i8, ptr %12, align 1, !tbaa !15
  call fastcc void @S_append_utf8_from_native_byte(i8 noundef zeroext %13, ptr noundef nonnull %5) #15
  %14 = icmp ugt ptr %12, %0
  br i1 %14, label %10, label %23, !llvm.loop !174

15:                                               ; preds = %4
  %16 = getelementptr inbounds i8, ptr %0, i64 %1
  %17 = icmp sgt i64 %1, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %15, %18
  %19 = phi ptr [ %21, %18 ], [ %0, %15 ]
  %20 = load i8, ptr %19, align 1, !tbaa !15
  call fastcc void @S_append_utf8_from_native_byte(i8 noundef zeroext %20, ptr noundef nonnull %5) #15
  %21 = getelementptr inbounds i8, ptr %19, i64 1
  %22 = icmp ult ptr %21, %16
  br i1 %22, label %18, label %23, !llvm.loop !175

23:                                               ; preds = %18, %10, %15, %6
  %24 = load ptr, ptr %5, align 8, !tbaa !19
  ret ptr %24
}

; Function Attrs: optsize
declare i64 @Perl_sv_2uv_flags(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare double @Perl_sv_2nv_flags(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #11

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @S_is_an_int(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @Perl_newSVpvn(ptr noundef %0, i64 noundef %1) #16
  %4 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !42
  %6 = and i32 %5, 2098176
  %7 = icmp eq i32 %6, 1024
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !15
  br label %13

11:                                               ; preds = %2
  %12 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %3, ptr noundef null, i32 noundef 2) #16
  br label %13

13:                                               ; preds = %11, %8
  %14 = phi ptr [ %10, %8 ], [ %12, %11 ]
  br label %15

15:                                               ; preds = %32, %13
  %16 = phi ptr [ %0, %13 ], [ %36, %32 ]
  %17 = phi ptr [ %14, %13 ], [ %33, %32 ]
  %18 = phi i8 [ 1, %13 ], [ %34, %32 ]
  %19 = phi i8 [ 0, %13 ], [ %35, %32 ]
  %20 = load i8, ptr %16, align 1, !tbaa !15
  switch i8 %20, label %31 [
    i8 0, label %37
    i8 32, label %32
    i8 43, label %21
    i8 48, label %25
    i8 49, label %25
    i8 50, label %25
    i8 51, label %25
    i8 52, label %25
    i8 53, label %25
    i8 54, label %25
    i8 55, label %25
    i8 56, label %25
    i8 57, label %25
    i8 46, label %30
  ]

21:                                               ; preds = %15
  %22 = and i8 %18, 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %3) #15
  br label %44

25:                                               ; preds = %15, %15, %15, %15, %15, %15, %15, %15, %15, %15
  %26 = and i8 %19, 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = getelementptr inbounds i8, ptr %17, i64 1
  store i8 %20, ptr %17, align 1, !tbaa !15
  br label %32

30:                                               ; preds = %15
  br label %32

31:                                               ; preds = %15
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %3) #15
  br label %44

32:                                               ; preds = %15, %25, %28, %21, %30
  %33 = phi ptr [ %17, %30 ], [ %17, %25 ], [ %29, %28 ], [ %17, %21 ], [ %17, %15 ]
  %34 = phi i8 [ %18, %30 ], [ 0, %25 ], [ 0, %28 ], [ %18, %21 ], [ %18, %15 ]
  %35 = phi i8 [ 1, %30 ], [ %19, %25 ], [ %19, %28 ], [ %19, %21 ], [ %19, %15 ]
  %36 = getelementptr inbounds i8, ptr %16, i64 1
  br label %15, !llvm.loop !176

37:                                               ; preds = %15
  %38 = getelementptr inbounds i8, ptr %17, i64 1
  store i8 0, ptr %17, align 1, !tbaa !15
  %39 = ptrtoint ptr %38 to i64
  %40 = ptrtoint ptr %14 to i64
  %41 = sub i64 %39, %40
  %42 = load ptr, ptr %3, align 8, !tbaa !50
  %43 = getelementptr inbounds %struct.xpv, ptr %42, i64 0, i32 2
  store i64 %41, ptr %43, align 8, !tbaa !51
  br label %44

44:                                               ; preds = %37, %31, %24
  %45 = phi ptr [ null, %31 ], [ null, %24 ], [ %3, %37 ]
  ret ptr %45
}

; Function Attrs: optsize
declare ptr @Perl_safesysmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @S_div128(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !42
  %6 = and i32 %5, 2098176
  %7 = icmp eq i32 %6, 1024
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !50
  %10 = getelementptr inbounds %struct.xpv, ptr %9, i64 0, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !51
  store i64 %11, ptr %3, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !15
  br label %16

14:                                               ; preds = %2
  %15 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 2) #16
  br label %16

16:                                               ; preds = %14, %8
  %17 = phi ptr [ %13, %8 ], [ %15, %14 ]
  store i8 1, ptr %1, align 1, !tbaa !107
  %18 = load i8, ptr %17, align 1, !tbaa !15
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %38, label %20

20:                                               ; preds = %16, %32
  %21 = phi i8 [ %36, %32 ], [ %18, %16 ]
  %22 = phi ptr [ %35, %32 ], [ %17, %16 ]
  %23 = phi i32 [ %29, %32 ], [ 0, %16 ]
  %24 = mul nuw nsw i32 %23, 10
  %25 = sext i8 %21 to i32
  %26 = add nsw i32 %24, -48
  %27 = add nsw i32 %26, %25
  %28 = lshr i32 %27, 7
  %29 = and i32 %27, 127
  %30 = icmp ult i32 %27, 128
  br i1 %30, label %32, label %31

31:                                               ; preds = %20
  store i8 0, ptr %1, align 1, !tbaa !107
  br label %32

32:                                               ; preds = %31, %20
  %33 = trunc i32 %28 to i8
  %34 = add i8 %33, 48
  %35 = getelementptr inbounds i8, ptr %22, i64 1
  store i8 %34, ptr %22, align 1, !tbaa !15
  %36 = load i8, ptr %35, align 1, !tbaa !15
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %20, !llvm.loop !177

38:                                               ; preds = %32, %16
  %39 = phi i32 [ 0, %16 ], [ %29, %32 ]
  %40 = phi ptr [ %17, %16 ], [ %35, %32 ]
  %41 = getelementptr inbounds i8, ptr %40, i64 1
  store i8 0, ptr %40, align 1, !tbaa !15
  %42 = ptrtoint ptr %41 to i64
  %43 = ptrtoint ptr %17 to i64
  %44 = sub i64 %42, %43
  %45 = load ptr, ptr %0, align 8, !tbaa !50
  %46 = getelementptr inbounds %struct.xpv, ptr %45, i64 0, i32 2
  store i64 %44, ptr %46, align 8, !tbaa !51
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  ret i32 %39
}

; Function Attrs: optsize
declare void @Perl_safesysfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @Perl_mg_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @Perl_sv_len_utf8_nomg(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc nonnull ptr @doencodes(ptr noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #6 {
  %4 = sext i32 %2 to i64
  %5 = getelementptr inbounds [65 x i8], ptr @PL_uuemap, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !15
  %7 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %6, ptr %0, align 1, !tbaa !15
  %8 = icmp sgt i32 %2, 2
  br i1 %8, label %9, label %52

9:                                                ; preds = %3, %9
  %10 = phi ptr [ %48, %9 ], [ %7, %3 ]
  %11 = phi i32 [ %50, %9 ], [ %2, %3 ]
  %12 = phi ptr [ %49, %9 ], [ %1, %3 ]
  %13 = load i8, ptr %12, align 1, !tbaa !15
  %14 = lshr i8 %13, 2
  %15 = zext nneg i8 %14 to i64
  %16 = getelementptr inbounds [65 x i8], ptr @PL_uuemap, i64 0, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !15
  %18 = getelementptr inbounds i8, ptr %10, i64 1
  store i8 %17, ptr %10, align 1, !tbaa !15
  %19 = load i8, ptr %12, align 1, !tbaa !15
  %20 = zext i8 %19 to i64
  %21 = shl nuw nsw i64 %20, 4
  %22 = and i64 %21, 48
  %23 = getelementptr inbounds i8, ptr %12, i64 1
  %24 = load i8, ptr %23, align 1, !tbaa !15
  %25 = lshr i8 %24, 4
  %26 = zext nneg i8 %25 to i64
  %27 = or disjoint i64 %22, %26
  %28 = getelementptr inbounds [65 x i8], ptr @PL_uuemap, i64 0, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !15
  %30 = getelementptr inbounds i8, ptr %10, i64 2
  store i8 %29, ptr %18, align 1, !tbaa !15
  %31 = load i8, ptr %23, align 1, !tbaa !15
  %32 = zext i8 %31 to i64
  %33 = shl nuw nsw i64 %32, 2
  %34 = and i64 %33, 60
  %35 = getelementptr inbounds i8, ptr %12, i64 2
  %36 = load i8, ptr %35, align 1, !tbaa !15
  %37 = lshr i8 %36, 6
  %38 = zext nneg i8 %37 to i64
  %39 = or disjoint i64 %34, %38
  %40 = getelementptr inbounds [65 x i8], ptr @PL_uuemap, i64 0, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !15
  %42 = getelementptr inbounds i8, ptr %10, i64 3
  store i8 %41, ptr %30, align 1, !tbaa !15
  %43 = load i8, ptr %35, align 1, !tbaa !15
  %44 = and i8 %43, 63
  %45 = zext nneg i8 %44 to i64
  %46 = getelementptr inbounds [65 x i8], ptr @PL_uuemap, i64 0, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !15
  %48 = getelementptr inbounds i8, ptr %10, i64 4
  store i8 %47, ptr %42, align 1, !tbaa !15
  %49 = getelementptr inbounds i8, ptr %12, i64 3
  %50 = add nsw i32 %11, -3
  %51 = icmp ugt i32 %11, 5
  br i1 %51, label %9, label %52, !llvm.loop !178

52:                                               ; preds = %9, %3
  %53 = phi ptr [ %1, %3 ], [ %49, %9 ]
  %54 = phi i32 [ %2, %3 ], [ %50, %9 ]
  %55 = phi ptr [ %7, %3 ], [ %48, %9 ]
  %56 = icmp sgt i32 %54, 0
  br i1 %56, label %57, label %89

57:                                               ; preds = %52
  %58 = icmp eq i32 %54, 2
  br i1 %58, label %59, label %63

59:                                               ; preds = %57
  %60 = getelementptr inbounds i8, ptr %53, i64 1
  %61 = load i8, ptr %60, align 1, !tbaa !15
  %62 = zext i8 %61 to i32
  br label %63

63:                                               ; preds = %57, %59
  %64 = phi i32 [ %62, %59 ], [ 0, %57 ]
  %65 = load i8, ptr %53, align 1, !tbaa !15
  %66 = lshr i8 %65, 2
  %67 = zext nneg i8 %66 to i64
  %68 = getelementptr inbounds [65 x i8], ptr @PL_uuemap, i64 0, i64 %67
  %69 = load i8, ptr %68, align 1, !tbaa !15
  %70 = getelementptr inbounds i8, ptr %55, i64 1
  store i8 %69, ptr %55, align 1, !tbaa !15
  %71 = load i8, ptr %53, align 1, !tbaa !15
  %72 = zext i8 %71 to i32
  %73 = shl nuw nsw i32 %72, 4
  %74 = and i32 %73, 48
  %75 = lshr i32 %64, 4
  %76 = or disjoint i32 %74, %75
  %77 = zext nneg i32 %76 to i64
  %78 = getelementptr inbounds [65 x i8], ptr @PL_uuemap, i64 0, i64 %77
  %79 = load i8, ptr %78, align 1, !tbaa !15
  %80 = getelementptr inbounds i8, ptr %55, i64 2
  store i8 %79, ptr %70, align 1, !tbaa !15
  %81 = shl nuw nsw i32 %64, 2
  %82 = and i32 %81, 60
  %83 = zext nneg i32 %82 to i64
  %84 = getelementptr inbounds [65 x i8], ptr @PL_uuemap, i64 0, i64 %83
  %85 = load i8, ptr %84, align 4, !tbaa !15
  %86 = getelementptr inbounds i8, ptr %55, i64 3
  store i8 %85, ptr %80, align 1, !tbaa !15
  %87 = load i8, ptr @PL_uuemap, align 16, !tbaa !15
  %88 = getelementptr inbounds i8, ptr %55, i64 4
  store i8 %87, ptr %86, align 1, !tbaa !15
  br label %89

89:                                               ; preds = %63, %52
  %90 = phi ptr [ %88, %63 ], [ %55, %52 ]
  %91 = getelementptr inbounds i8, ptr %90, i64 1
  store i8 10, ptr %90, align 1, !tbaa !15
  ret ptr %91
}

; Function Attrs: optsize
declare ptr @Perl_sv_grow(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @Perl_sv_2num(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i1 @Perl_isinfnansv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @S_append_utf8_from_native_byte(i8 noundef zeroext %0, ptr nocapture noundef %1) unnamed_addr #12 {
  %3 = icmp sgt i8 %0, -1
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !tbaa !19
  %6 = getelementptr inbounds i8, ptr %5, i64 1
  store ptr %6, ptr %1, align 8, !tbaa !19
  store i8 %0, ptr %5, align 1, !tbaa !15
  br label %15

7:                                                ; preds = %2
  %8 = lshr i8 %0, 6
  %9 = or disjoint i8 %8, -64
  %10 = load ptr, ptr %1, align 8, !tbaa !19
  %11 = getelementptr inbounds i8, ptr %10, i64 1
  store ptr %11, ptr %1, align 8, !tbaa !19
  store i8 %9, ptr %10, align 1, !tbaa !15
  %12 = and i8 %0, -65
  %13 = load ptr, ptr %1, align 8, !tbaa !19
  %14 = getelementptr inbounds i8, ptr %13, i64 1
  store ptr %14, ptr %1, align 8, !tbaa !19
  store i8 %12, ptr %13, align 1, !tbaa !15
  br label %15

15:                                               ; preds = %7, %4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { optsize }
attributes #16 = { nounwind optsize }
attributes #17 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"tempsym", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !6, i64 56, !11, i64 64}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"int", !7, i64 0}
!13 = !{!10, !11, i64 8}
!14 = !{!10, !12, i64 48}
!15 = !{!7, !7, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = distinct !{!18, !17}
!19 = !{!11, !11, i64 0}
!20 = !{!10, !6, i64 56}
!21 = !{!10, !12, i64 32}
!22 = !{!10, !12, i64 40}
!23 = !{!10, !12, i64 36}
!24 = distinct !{!24, !17}
!25 = !{i64 0, i64 8, !19, i64 8, i64 8, !19, i64 16, i64 8, !19, i64 24, i64 8, !19, i64 32, i64 4, !26, i64 36, i64 4, !26, i64 40, i64 4, !26, i64 44, i64 4, !26, i64 48, i64 4, !26, i64 56, i64 8, !5, i64 64, i64 8, !19}
!26 = !{!12, !12, i64 0}
!27 = !{!10, !11, i64 24}
!28 = !{!10, !11, i64 64}
!29 = !{!10, !12, i64 44}
!30 = !{!10, !11, i64 16}
!31 = distinct !{!31, !17}
!32 = distinct !{!32, !17}
!33 = distinct !{!33, !17}
!34 = distinct !{!34, !17}
!35 = distinct !{!35, !17}
!36 = distinct !{!36, !17}
!37 = distinct !{!37, !17}
!38 = distinct !{!38, !17}
!39 = distinct !{!39, !17}
!40 = distinct !{!40, !17}
!41 = distinct !{!41, !17}
!42 = !{!43, !12, i64 12}
!43 = !{!"sv", !11, i64 0, !12, i64 8, !12, i64 12, !7, i64 16}
!44 = distinct !{!44, !17}
!45 = distinct !{!45, !17}
!46 = distinct !{!46, !17}
!47 = distinct !{!47, !17}
!48 = distinct !{!48, !17}
!49 = distinct !{!49, !17}
!50 = !{!43, !11, i64 0}
!51 = !{!52, !6, i64 16}
!52 = !{!"xpv", !11, i64 0, !7, i64 8, !6, i64 16, !7, i64 24}
!53 = distinct !{!53, !17}
!54 = distinct !{!54, !17}
!55 = distinct !{!55, !17}
!56 = distinct !{!56, !17}
!57 = distinct !{!57, !17}
!58 = distinct !{!58, !17}
!59 = distinct !{!59, !17}
!60 = !{!61, !61, i64 0}
!61 = !{!"short", !7, i64 0}
!62 = distinct !{!62, !17}
!63 = distinct !{!63, !17}
!64 = distinct !{!64, !17}
!65 = distinct !{!65, !17}
!66 = distinct !{!66, !17}
!67 = distinct !{!67, !17}
!68 = distinct !{!68, !17}
!69 = distinct !{!69, !17}
!70 = distinct !{!70, !17}
!71 = distinct !{!71, !17}
!72 = distinct !{!72, !17}
!73 = distinct !{!73, !17}
!74 = distinct !{!74, !17}
!75 = distinct !{!75, !17}
!76 = distinct !{!76, !17}
!77 = distinct !{!77, !17}
!78 = distinct !{!78, !17}
!79 = distinct !{!79, !17}
!80 = !{!81, !81, i64 0}
!81 = !{!"float", !7, i64 0}
!82 = distinct !{!82, !17}
!83 = !{!84, !84, i64 0}
!84 = !{!"double", !7, i64 0}
!85 = distinct !{!85, !17}
!86 = distinct !{!86, !17}
!87 = distinct !{!87, !17}
!88 = distinct !{!88, !17}
!89 = distinct !{!89, !17}
!90 = distinct !{!90, !17}
!91 = !{!92, !7, i64 34}
!92 = !{!"op", !11, i64 0, !11, i64 8, !11, i64 16, !6, i64 24, !12, i64 32, !12, i64 33, !12, i64 33, !12, i64 33, !12, i64 33, !12, i64 33, !12, i64 33, !12, i64 33, !7, i64 34, !7, i64 35}
!93 = !{!94, !12, i64 56}
!94 = !{!"cop", !11, i64 0, !11, i64 8, !11, i64 16, !6, i64 24, !12, i64 32, !12, i64 33, !12, i64 33, !12, i64 33, !12, i64 33, !12, i64 33, !12, i64 33, !12, i64 33, !7, i64 34, !7, i64 35, !12, i64 36, !11, i64 40, !11, i64 48, !12, i64 56, !12, i64 60, !11, i64 64, !11, i64 72}
!95 = !{!92, !11, i64 0}
!96 = distinct !{!96, !17}
!97 = distinct !{!97, !17}
!98 = !{i64 0, i64 8, !19, i64 8, i64 8, !19, i64 16, i64 4, !26, i64 20, i64 4, !26, i64 24, i64 4, !26, i64 28, i64 4, !26, i64 32, i64 4, !26, i64 40, i64 8, !5, i64 48, i64 8, !19}
!99 = !{i64 0, i64 8, !19, i64 8, i64 4, !26, i64 12, i64 4, !26, i64 16, i64 4, !26, i64 20, i64 4, !26, i64 24, i64 4, !26, i64 32, i64 8, !5, i64 40, i64 8, !19}
!100 = !{i64 0, i64 4, !26, i64 4, i64 4, !26, i64 8, i64 4, !26, i64 16, i64 8, !5, i64 24, i64 8, !19}
!101 = distinct !{!101, !17}
!102 = distinct !{!102, !17}
!103 = distinct !{!103, !17}
!104 = distinct !{!104, !17}
!105 = distinct !{!105, !17}
!106 = distinct !{!106, !17}
!107 = !{!108, !108, i64 0}
!108 = !{!"_Bool", !7, i64 0}
!109 = !{i8 0, i8 2}
!110 = !{}
!111 = distinct !{!111, !17}
!112 = distinct !{!112, !17}
!113 = distinct !{!113, !17}
!114 = distinct !{!114, !17}
!115 = distinct !{!115, !17}
!116 = distinct !{!116, !17}
!117 = distinct !{!117, !17}
!118 = distinct !{!118, !17}
!119 = distinct !{!119, !17}
!120 = distinct !{!120, !17}
!121 = distinct !{!121, !17}
!122 = distinct !{!122, !17}
!123 = distinct !{!123, !17}
!124 = distinct !{!124, !17}
!125 = distinct !{!125, !17}
!126 = distinct !{!126, !17}
!127 = distinct !{!127, !17}
!128 = distinct !{!128, !17}
!129 = distinct !{!129, !17}
!130 = distinct !{!130, !17}
!131 = !{i32 0, i32 128}
!132 = distinct !{!132, !17}
!133 = distinct !{!133, !17}
!134 = distinct !{!134, !17}
!135 = distinct !{!135, !17}
!136 = distinct !{!136, !17}
!137 = distinct !{!137, !17}
!138 = distinct !{!138, !17}
!139 = distinct !{!139, !17}
!140 = distinct !{!140, !17}
!141 = distinct !{!141, !17}
!142 = distinct !{!142, !17}
!143 = distinct !{!143, !17}
!144 = distinct !{!144, !17}
!145 = distinct !{!145, !17}
!146 = !{!92, !6, i64 24}
!147 = distinct !{!147, !17}
!148 = distinct !{!148, !17}
!149 = !{i64 0, i64 4, !26, i64 4, i64 4, !26, i64 8, i64 4, !26, i64 12, i64 4, !26, i64 20, i64 8, !5, i64 28, i64 8, !19}
!150 = distinct !{!150, !17}
!151 = distinct !{!151, !17}
!152 = distinct !{!152, !17}
!153 = distinct !{!153, !17}
!154 = distinct !{!154, !17}
!155 = distinct !{!155, !17}
!156 = distinct !{!156, !17}
!157 = distinct !{!157, !17}
!158 = distinct !{!158, !17}
!159 = distinct !{!159, !17}
!160 = !{i64 0, i64 4, !26, i64 4, i64 4, !26, i64 8, i64 4, !26, i64 12, i64 4, !26, i64 16, i64 4, !26, i64 24, i64 8, !5, i64 32, i64 8, !19}
!161 = distinct !{!161, !17}
!162 = !{!43, !12, i64 8}
!163 = distinct !{!163, !17}
!164 = distinct !{!164, !17}
!165 = distinct !{!165, !17}
!166 = distinct !{!166, !17}
!167 = distinct !{!167, !17}
!168 = distinct !{!168, !17}
!169 = distinct !{!169, !17}
!170 = !{!171, !11, i64 0}
!171 = !{!"xpvmg", !11, i64 0, !7, i64 8, !6, i64 16, !7, i64 24, !7, i64 32, !7, i64 40}
!172 = !{!173, !12, i64 12}
!173 = !{!"hv", !11, i64 0, !12, i64 8, !12, i64 12, !7, i64 16}
!174 = distinct !{!174, !17}
!175 = distinct !{!175, !17}
!176 = distinct !{!176, !17}
!177 = distinct !{!177, !17}
!178 = distinct !{!178, !17}
