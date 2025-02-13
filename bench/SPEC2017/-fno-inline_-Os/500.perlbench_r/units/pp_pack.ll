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
define dso_local i32 @Perl_unpackstring(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 !prof !126 {
  %6 = alloca %struct.tempsym, align 8
  %7 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #14
  %8 = and i32 %4, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10, !prof !127

10:                                               ; preds = %5
  %11 = or i32 %4, 64
  br label %22

12:                                               ; preds = %5
  %13 = tail call fastcc zeroext i1 @S_need_utf8(ptr noundef %0, ptr noundef %1) #15
  br i1 %13, label %14, label %22, !prof !128

14:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #14
  %15 = ptrtoint ptr %3 to i64
  %16 = ptrtoint ptr %2 to i64
  %17 = sub i64 %15, %16
  store i64 %17, ptr %7, align 8, !tbaa !129
  %18 = call ptr @Perl_bytes_to_utf8(ptr noundef %2, ptr noundef nonnull %7) #16
  call void @Perl_save_pushptr(ptr noundef %18, i32 noundef 10) #16
  %19 = load i64, ptr %7, align 8, !tbaa !129
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
  br i1 %30, label %33, label %31, !prof !133

31:                                               ; preds = %22
  %32 = or i32 %25, 32
  br label %33

33:                                               ; preds = %22, %31
  %34 = phi i32 [ %32, %31 ], [ %25, %22 ]
  store ptr %0, ptr %6, align 8, !tbaa !134
  %35 = getelementptr inbounds %struct.tempsym, ptr %6, i64 0, i32 1
  store ptr %1, ptr %35, align 8, !tbaa !138
  %36 = getelementptr inbounds %struct.tempsym, ptr %6, i64 0, i32 2
  %37 = getelementptr inbounds %struct.tempsym, ptr %6, i64 0, i32 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %36, i8 0, i64 32, i1 false)
  store i32 %34, ptr %37, align 8, !tbaa !139
  %38 = getelementptr inbounds %struct.tempsym, ptr %6, i64 0, i32 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, i8 0, i64 16, i1 false)
  %39 = call fastcc i32 @S_unpack_rec(ptr noundef nonnull %6, ptr noundef %23, ptr noundef %23, ptr noundef %24, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #14
  ret i32 %39
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i1 @S_need_utf8(ptr noundef %0, ptr noundef %1) unnamed_addr #2 !prof !126 !PGOFuncName !140 {
  %3 = icmp ult ptr %0, %1
  br i1 %3, label %4, label %27, !prof !141

4:                                                ; preds = %2, %22
  %5 = phi i8 [ %24, %22 ], [ 1, %2 ]
  %6 = phi ptr [ %25, %22 ], [ %0, %2 ]
  %7 = load i8, ptr %6, align 1, !tbaa !142
  switch i8 %7, label %22 [
    i8 35, label %8
    i8 85, label %15
  ], !prof !143

8:                                                ; preds = %4
  %9 = ptrtoint ptr %1 to i64
  %10 = getelementptr inbounds i8, ptr %6, i64 1
  %11 = ptrtoint ptr %10 to i64
  %12 = sub i64 %9, %11
  %13 = tail call ptr @memchr(ptr noundef nonnull %10, i32 noundef 10, i64 noundef %12) #17
  %14 = icmp eq ptr %13, null
  br i1 %14, label %27, label %22

15:                                               ; preds = %4
  %16 = and i8 %5, 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %15
  %19 = getelementptr inbounds i8, ptr %6, i64 1
  %20 = load i8, ptr %19, align 1, !tbaa !142
  %21 = icmp eq i8 %20, 48
  br i1 %21, label %27, label %22

22:                                               ; preds = %4, %18, %8
  %23 = phi ptr [ %13, %8 ], [ %6, %18 ], [ %6, %4 ]
  %24 = phi i8 [ %5, %8 ], [ %5, %18 ], [ 0, %4 ]
  %25 = getelementptr inbounds i8, ptr %23, i64 1
  %26 = icmp ult ptr %25, %1
  br i1 %26, label %4, label %27, !prof !144, !llvm.loop !145

27:                                               ; preds = %8, %18, %15, %22, %2
  %28 = phi i1 [ false, %2 ], [ false, %22 ], [ true, %15 ], [ true, %18 ], [ false, %8 ]
  ret i1 %28
}

; Function Attrs: optsize
declare ptr @Perl_bytes_to_utf8(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @Perl_save_pushptr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc signext i8 @S_first_symbol(ptr noundef %0, ptr noundef %1) unnamed_addr #2 !prof !126 !PGOFuncName !147 {
  %3 = icmp ult ptr %0, %1
  br i1 %3, label %4, label %18, !prof !148

4:                                                ; preds = %2, %8
  %5 = phi ptr [ %15, %8 ], [ %0, %2 ]
  %6 = load i8, ptr %5, align 1, !tbaa !142
  %7 = icmp eq i8 %6, 35
  br i1 %7, label %8, label %18, !prof !128

8:                                                ; preds = %4
  %9 = ptrtoint ptr %1 to i64
  %10 = getelementptr inbounds i8, ptr %5, i64 1
  %11 = ptrtoint ptr %10 to i64
  %12 = sub i64 %9, %11
  %13 = tail call ptr @memchr(ptr noundef nonnull %10, i32 noundef 10, i64 noundef %12) #17
  %14 = icmp ne ptr %13, null
  %15 = getelementptr inbounds i8, ptr %13, i64 1
  %16 = icmp ult ptr %15, %1
  %17 = select i1 %14, i1 %16, i1 false
  br i1 %17, label %4, label %18, !prof !149, !llvm.loop !150

18:                                               ; preds = %4, %8, %2
  %19 = phi i8 [ 0, %2 ], [ 0, %8 ], [ %6, %4 ]
  ret i8 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @S_unpack_rec(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef writeonly %4) unnamed_addr #0 !prof !126 !PGOFuncName !151 {
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
  store ptr %1, ptr %6, align 8, !tbaa !152
  %34 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !152
  %35 = load ptr, ptr @PL_stack_base, align 8, !tbaa !152
  %36 = ptrtoint ptr %34 to i64
  %37 = ptrtoint ptr %35 to i64
  %38 = sub i64 %36, %37
  %39 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 8
  %40 = load i32, ptr %39, align 8, !tbaa !139
  %41 = and i32 %40, 16
  %42 = icmp eq i32 %41, 0
  %43 = ptrtoint ptr %1 to i64
  %44 = ptrtoint ptr %2 to i64
  %45 = sub i64 %43, %44
  %46 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 9
  store i64 %45, ptr %46, align 8, !tbaa !153
  %47 = tail call fastcc zeroext i1 @S_next_symbol(ptr noundef nonnull %0) #15
  br i1 %47, label %48, label %2417, !prof !141

48:                                               ; preds = %5
  %49 = trunc i32 %40 to i8
  %50 = lshr i8 %49, 5
  %51 = and i8 %50, 1
  %52 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 4
  %53 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 6
  %54 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 5
  %55 = ptrtoint ptr %3 to i64
  %56 = sub i64 %55, %44
  %57 = trunc i64 %56 to i32
  br label %58

58:                                               ; preds = %48, %2409
  %59 = phi ptr [ %34, %48 ], [ %2415, %2409 ]
  %60 = phi ptr [ null, %48 ], [ %2414, %2409 ]
  %61 = phi i32 [ 0, %48 ], [ %2413, %2409 ]
  %62 = phi i64 [ 0, %48 ], [ %2412, %2409 ]
  %63 = phi double [ 0.000000e+00, %48 ], [ %2411, %2409 ]
  %64 = phi i8 [ %51, %48 ], [ %2410, %2409 ]
  %65 = load i32, ptr %52, align 8, !tbaa !154
  br i1 %42, label %78, label %66, !prof !155

66:                                               ; preds = %58
  %67 = shl i64 %38, 29
  %68 = add i64 %67, 4294967296
  %69 = ashr i64 %68, 32
  %70 = load ptr, ptr @PL_stack_base, align 8, !tbaa !152
  %71 = ptrtoint ptr %59 to i64
  %72 = ptrtoint ptr %70 to i64
  %73 = sub i64 %71, %72
  %74 = ashr exact i64 %73, 3
  %75 = icmp eq i64 %74, %69
  br i1 %75, label %76, label %78, !prof !156

76:                                               ; preds = %66
  %77 = icmp eq i32 %65, 47
  br i1 %77, label %78, label %2417

78:                                               ; preds = %76, %66, %58
  %79 = load i32, ptr %53, align 8, !tbaa !157
  %80 = icmp eq i32 %79, 2
  br i1 %80, label %83, label %81, !prof !158

81:                                               ; preds = %78
  %82 = load i32, ptr %54, align 4, !tbaa !159
  br label %83

83:                                               ; preds = %78, %81
  %84 = phi i32 [ %82, %81 ], [ %57, %78 ]
  br label %85

85:                                               ; preds = %2405, %83
  %86 = phi i32 [ %65, %83 ], [ %2408, %2405 ]
  %87 = phi i32 [ %84, %83 ], [ %2406, %2405 ]
  %88 = phi i8 [ %64, %83 ], [ %2359, %2405 ]
  %89 = phi i1 [ true, %83 ], [ false, %2405 ]
  %90 = phi double [ %63, %83 ], [ %2361, %2405 ]
  %91 = phi i64 [ %62, %83 ], [ %2362, %2405 ]
  %92 = phi i32 [ %61, %83 ], [ 0, %2405 ]
  %93 = phi ptr [ %60, %83 ], [ %2363, %2405 ]
  %94 = phi ptr [ %59, %83 ], [ %2407, %2405 ]
  %95 = load ptr, ptr %6, align 8, !tbaa !152
  %96 = icmp ult ptr %95, %3
  %97 = and i32 %86, -1537
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [512 x i8], ptr @packprops, i64 0, i64 %98
  %100 = load i8, ptr %99, align 1, !tbaa !142
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %138, label %102, !prof !160

102:                                              ; preds = %85
  %103 = and i8 %100, 63
  %104 = zext nneg i8 %103 to i64
  %105 = ptrtoint ptr %95 to i64
  %106 = sub i64 %55, %105
  %107 = sdiv i64 %106, %104
  %108 = sext i32 %87 to i64
  %109 = icmp slt i64 %107, %108
  br i1 %109, label %110, label %112, !prof !161

110:                                              ; preds = %102
  %111 = trunc i64 %107 to i32
  br label %112

112:                                              ; preds = %110, %102
  %113 = phi i32 [ %111, %110 ], [ %87, %102 ]
  %114 = icmp eq i32 %92, 0
  br i1 %114, label %117, label %115, !prof !162

115:                                              ; preds = %112
  %116 = icmp sgt i8 %100, -1
  br i1 %116, label %138, label %117

117:                                              ; preds = %115, %112
  %118 = icmp eq i32 %113, 0
  %119 = select i1 %42, i32 %113, i32 1
  %120 = select i1 %118, i32 0, i32 %119, !prof !161
  %121 = load ptr, ptr @PL_stack_max, align 8, !tbaa !152
  %122 = ptrtoint ptr %121 to i64
  %123 = ptrtoint ptr %94 to i64
  %124 = sub i64 %122, %123
  %125 = ashr exact i64 %124, 3
  %126 = sext i32 %120 to i64
  %127 = icmp slt i64 %125, %126
  br i1 %127, label %128, label %130, !prof !161

128:                                              ; preds = %117
  %129 = call ptr @Perl_stack_grow(ptr noundef %94, ptr noundef %94, i64 noundef %126) #16
  br label %130

130:                                              ; preds = %128, %117
  %131 = phi ptr [ %129, %128 ], [ %94, %117 ]
  %132 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !129
  %133 = add nsw i64 %132, %126
  %134 = load i64, ptr @PL_tmps_max, align 8, !tbaa !129
  %135 = icmp slt i64 %133, %134
  br i1 %135, label %138, label %136, !prof !162

136:                                              ; preds = %130
  %137 = call i64 @Perl_tmps_grow_p(i64 noundef %133) #16
  br label %138

138:                                              ; preds = %115, %130, %136, %85
  %139 = phi i32 [ %87, %85 ], [ %113, %115 ], [ %120, %130 ], [ %120, %136 ]
  %140 = phi ptr [ %94, %85 ], [ %94, %115 ], [ %131, %130 ], [ %131, %136 ]
  %141 = and i32 %86, 1536
  %142 = icmp eq i32 %141, 512
  switch i32 %97, label %236 [
    i32 37, label %238
    i32 40, label %241
    i32 302, label %284
    i32 46, label %284
    i32 320, label %353
    i32 64, label %353
    i32 344, label %394
    i32 88, label %427
    i32 376, label %474
    i32 120, label %143
    i32 47, label %528
    i32 65, label %529
    i32 90, label %529
    i32 97, label %529
    i32 66, label %747
    i32 98, label %747
    i32 72, label %927
    i32 104, label %927
    i32 67, label %1047
    i32 99, label %1055
    i32 87, label %1123
    i32 85, label %1221
    i32 371, label %1336
    i32 115, label %1336
    i32 339, label %1380
    i32 118, label %1380
    i32 110, label %1380
    i32 83, label %1380
    i32 374, label %1429
    i32 366, label %1429
    i32 105, label %1478
    i32 361, label %1478
    i32 73, label %1522
    i32 329, label %1522
    i32 106, label %228
    i32 74, label %220
    i32 364, label %212
    i32 108, label %204
    i32 332, label %196
    i32 86, label %1738
    i32 78, label %1738
    i32 76, label %1738
    i32 342, label %1787
    i32 334, label %1787
    i32 112, label %190
    i32 119, label %182
    i32 80, label %1938
    i32 113, label %174
    i32 81, label %166
    i32 102, label %159
    i32 100, label %152
    i32 70, label %145
    i32 117, label %2127
  ], !prof !163

143:                                              ; preds = %138
  %144 = and i8 %88, 1
  br label %493

145:                                              ; preds = %138
  %146 = add nsw i32 %139, -1
  %147 = icmp sgt i32 %139, 0
  br i1 %147, label %148, label %2283

148:                                              ; preds = %145
  %149 = and i8 %88, 1
  %150 = icmp eq i8 %149, 0
  %151 = icmp eq i32 %92, 0
  br label %2099

152:                                              ; preds = %138
  %153 = add nsw i32 %139, -1
  %154 = icmp sgt i32 %139, 0
  br i1 %154, label %155, label %2283

155:                                              ; preds = %152
  %156 = and i8 %88, 1
  %157 = icmp eq i8 %156, 0
  %158 = icmp eq i32 %92, 0
  br label %2071

159:                                              ; preds = %138
  %160 = add nsw i32 %139, -1
  %161 = icmp sgt i32 %139, 0
  br i1 %161, label %162, label %2283

162:                                              ; preds = %159
  %163 = and i8 %88, 1
  %164 = icmp eq i8 %163, 0
  %165 = icmp eq i32 %92, 0
  br label %2041

166:                                              ; preds = %138
  %167 = add nsw i32 %139, -1
  %168 = icmp sgt i32 %139, 0
  br i1 %168, label %169, label %2283

169:                                              ; preds = %166
  %170 = and i8 %88, 1
  %171 = icmp eq i8 %170, 0
  %172 = icmp eq i32 %92, 0
  %173 = icmp sgt i32 %92, 64
  br label %2007

174:                                              ; preds = %138
  %175 = add nsw i32 %139, -1
  %176 = icmp sgt i32 %139, 0
  br i1 %176, label %177, label %2283

177:                                              ; preds = %174
  %178 = and i8 %88, 1
  %179 = icmp eq i8 %178, 0
  %180 = icmp eq i32 %92, 0
  %181 = icmp sgt i32 %92, 64
  br label %1973

182:                                              ; preds = %138
  %183 = icmp sgt i32 %139, 0
  %184 = load ptr, ptr %6, align 8
  %185 = icmp ult ptr %184, %3
  %186 = select i1 %183, i1 %185, i1 false
  br i1 %186, label %187, label %2283

187:                                              ; preds = %182
  %188 = and i8 %88, 1
  %189 = icmp eq i8 %188, 0
  br label %1857

190:                                              ; preds = %138
  %191 = add nsw i32 %139, -1
  %192 = icmp sgt i32 %139, 0
  br i1 %192, label %193, label %2283

193:                                              ; preds = %190
  %194 = and i8 %88, 1
  %195 = icmp eq i8 %194, 0
  br label %1836

196:                                              ; preds = %138
  %197 = add nsw i32 %139, -1
  %198 = icmp sgt i32 %139, 0
  br i1 %198, label %199, label %2283

199:                                              ; preds = %196
  %200 = and i8 %88, 1
  %201 = icmp eq i8 %200, 0
  %202 = icmp eq i32 %92, 0
  %203 = icmp sgt i32 %92, 64
  br label %1704

204:                                              ; preds = %138
  %205 = add nsw i32 %139, -1
  %206 = icmp sgt i32 %139, 0
  br i1 %206, label %207, label %2283

207:                                              ; preds = %204
  %208 = and i8 %88, 1
  %209 = icmp eq i8 %208, 0
  %210 = icmp eq i32 %92, 0
  %211 = icmp sgt i32 %92, 64
  br label %1668

212:                                              ; preds = %138
  %213 = add nsw i32 %139, -1
  %214 = icmp sgt i32 %139, 0
  br i1 %214, label %215, label %2283

215:                                              ; preds = %212
  %216 = and i8 %88, 1
  %217 = icmp eq i8 %216, 0
  %218 = icmp eq i32 %92, 0
  %219 = icmp sgt i32 %92, 64
  br label %1634

220:                                              ; preds = %138
  %221 = add nsw i32 %139, -1
  %222 = icmp sgt i32 %139, 0
  br i1 %222, label %223, label %2283

223:                                              ; preds = %220
  %224 = and i8 %88, 1
  %225 = icmp eq i8 %224, 0
  %226 = icmp eq i32 %92, 0
  %227 = icmp sgt i32 %92, 64
  br label %1600

228:                                              ; preds = %138
  %229 = add nsw i32 %139, -1
  %230 = icmp sgt i32 %139, 0
  br i1 %230, label %231, label %2283

231:                                              ; preds = %228
  %232 = and i8 %88, 1
  %233 = icmp eq i8 %232, 0
  %234 = icmp eq i32 %92, 0
  %235 = icmp sgt i32 %92, 64
  br label %1566

236:                                              ; preds = %138
  %237 = and i32 %86, 255
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.1, i32 noundef %237) #16
  br label %238

238:                                              ; preds = %138, %236
  %239 = icmp eq i32 %79, 0
  %240 = select i1 %239, i32 16, i32 %139
  br label %2409, !llvm.loop !164

241:                                              ; preds = %138
  %242 = getelementptr inbounds %struct.tempsym, ptr %7, i64 0, i32 3
  %243 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 1
  %244 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 10
  %245 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 7
  %246 = getelementptr inbounds %struct.tempsym, ptr %7, i64 0, i32 2
  %247 = getelementptr inbounds %struct.tempsym, ptr %7, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %7) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %7, ptr noundef nonnull align 8 dereferenceable(72) %0, i64 72, i1 false), !tbaa.struct !165
  %248 = load i32, ptr %39, align 8, !tbaa !139
  %249 = and i32 %86, -256
  %250 = or i32 %249, %248
  store i32 %250, ptr %39, align 8, !tbaa !139
  %251 = load ptr, ptr %242, align 8, !tbaa !167
  store ptr %251, ptr %243, align 8, !tbaa !138
  store ptr %7, ptr %244, align 8, !tbaa !168
  %252 = load i32, ptr %245, align 4, !tbaa !169
  %253 = add nsw i32 %252, 1
  store i32 %253, ptr %245, align 4, !tbaa !169
  store ptr %140, ptr @PL_stack_sp, align 8, !tbaa !152
  %254 = icmp eq i32 %139, 0
  %255 = select i1 %42, i32 %139, i32 1
  %256 = select i1 %254, i32 0, i32 %255
  %257 = shl i8 %88, 5
  %258 = and i8 %257, 32
  %259 = zext nneg i8 %258 to i32
  br label %260

260:                                              ; preds = %241, %263
  %261 = phi i32 [ %264, %263 ], [ %256, %241 ]
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %276, label %263

263:                                              ; preds = %260
  %264 = add nsw i32 %261, -1
  %265 = load ptr, ptr %246, align 8, !tbaa !170
  store ptr %265, ptr %0, align 8, !tbaa !134
  %266 = load i32, ptr %39, align 8, !tbaa !139
  %267 = and i32 %266, -33
  %268 = or disjoint i32 %267, %259
  store i32 %268, ptr %39, align 8, !tbaa !139
  %269 = load ptr, ptr %6, align 8, !tbaa !152
  %270 = call fastcc i32 @S_unpack_rec(ptr noundef nonnull %0, ptr noundef %269, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6) #15
  %271 = load ptr, ptr %6, align 8, !tbaa !152
  %272 = icmp eq ptr %271, %3
  %273 = load i32, ptr %247, align 8
  %274 = icmp eq i32 %273, 2
  %275 = select i1 %272, i1 %274, i1 false
  br i1 %275, label %276, label %260, !llvm.loop !171

276:                                              ; preds = %263, %260
  %277 = phi i32 [ %264, %263 ], [ -1, %260 ]
  %278 = getelementptr inbounds %struct.tempsym, ptr %7, i64 0, i32 8
  %279 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !152
  %280 = load i32, ptr %39, align 8, !tbaa !139
  %281 = xor i32 %249, -1
  %282 = or i32 %248, %281
  %283 = and i32 %280, %282
  store i32 %283, ptr %278, align 8, !tbaa !139
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %7, i64 72, i1 false), !tbaa.struct !165
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %7) #14
  br label %2283

284:                                              ; preds = %138, %138
  %285 = and i8 %88, 1
  %286 = icmp ne i8 %285, 0
  %287 = and i32 %86, 256
  %288 = icmp eq i32 %287, 0
  %289 = and i1 %288, %286
  br i1 %80, label %314, label %290

290:                                              ; preds = %284
  %291 = icmp slt i32 %139, 1
  br i1 %291, label %295, label %292

292:                                              ; preds = %290
  %293 = add nsw i32 %139, -1
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %306, label %297

295:                                              ; preds = %290
  %296 = load ptr, ptr %6, align 8, !tbaa !152
  br label %314

297:                                              ; preds = %292, %297
  %298 = phi i32 [ %302, %297 ], [ %293, %292 ]
  %299 = phi ptr [ %301, %297 ], [ %0, %292 ]
  %300 = getelementptr inbounds %struct.tempsym, ptr %299, i64 0, i32 10
  %301 = load ptr, ptr %300, align 8, !tbaa !168
  %302 = add nsw i32 %298, -1
  %303 = icmp ne i32 %302, 0
  %304 = icmp ne ptr %301, null
  %305 = select i1 %303, i1 %304, i1 false
  br i1 %305, label %297, label %306, !llvm.loop !172

306:                                              ; preds = %297, %292
  %307 = phi ptr [ %0, %292 ], [ %301, %297 ]
  %308 = phi i32 [ 0, %292 ], [ %302, %297 ]
  %309 = phi i1 [ true, %292 ], [ %304, %297 ]
  br i1 %309, label %310, label %314

310:                                              ; preds = %306
  %311 = getelementptr inbounds %struct.tempsym, ptr %307, i64 0, i32 9
  %312 = load i64, ptr %311, align 8, !tbaa !153
  %313 = getelementptr inbounds i8, ptr %2, i64 %312
  br label %314

314:                                              ; preds = %310, %306, %284, %295
  %315 = phi ptr [ %296, %295 ], [ %2, %284 ], [ %313, %310 ], [ %2, %306 ]
  %316 = phi i32 [ %139, %295 ], [ %139, %284 ], [ %308, %310 ], [ %308, %306 ]
  %317 = load ptr, ptr %6, align 8, !tbaa !152
  %318 = icmp ugt ptr %315, %317
  br i1 %318, label %329, label %319

319:                                              ; preds = %314
  br i1 %289, label %320, label %322

320:                                              ; preds = %319
  %321 = call i64 @Perl_utf8_length(ptr noundef %315, ptr noundef %317) #16
  br label %326

322:                                              ; preds = %319
  %323 = ptrtoint ptr %317 to i64
  %324 = ptrtoint ptr %315 to i64
  %325 = sub i64 %323, %324
  br label %326

326:                                              ; preds = %322, %320
  %327 = phi i64 [ %321, %320 ], [ %325, %322 ]
  %328 = call ptr @Perl_newSVuv(i64 noundef %327) #16
  br label %340

329:                                              ; preds = %314
  br i1 %289, label %330, label %332

330:                                              ; preds = %329
  %331 = call i64 @Perl_utf8_length(ptr noundef %317, ptr noundef nonnull %315) #16
  br label %336

332:                                              ; preds = %329
  %333 = ptrtoint ptr %315 to i64
  %334 = ptrtoint ptr %317 to i64
  %335 = sub i64 %333, %334
  br label %336

336:                                              ; preds = %332, %330
  %337 = phi i64 [ %331, %330 ], [ %335, %332 ]
  %338 = sub nsw i64 0, %337
  %339 = call ptr @Perl_newSViv(i64 noundef %338) #16
  br label %340

340:                                              ; preds = %336, %326
  %341 = phi ptr [ %328, %326 ], [ %339, %336 ]
  %342 = load ptr, ptr @PL_stack_max, align 8, !tbaa !152
  %343 = ptrtoint ptr %342 to i64
  %344 = ptrtoint ptr %140 to i64
  %345 = sub i64 %343, %344
  %346 = icmp slt i64 %345, 8
  br i1 %346, label %347, label %349

347:                                              ; preds = %340
  %348 = call ptr @Perl_stack_grow(ptr noundef %140, ptr noundef %140, i64 noundef 1) #16
  br label %349

349:                                              ; preds = %340, %347
  %350 = phi ptr [ %348, %347 ], [ %140, %340 ]
  %351 = call ptr @Perl_sv_2mortal(ptr noundef %341) #16
  %352 = getelementptr inbounds ptr, ptr %350, i64 1
  store ptr %351, ptr %352, align 8, !tbaa !152
  br label %2283

353:                                              ; preds = %138, %138
  %354 = load i64, ptr %46, align 8, !tbaa !153
  %355 = getelementptr inbounds i8, ptr %2, i64 %354
  store ptr %355, ptr %6, align 8, !tbaa !152
  %356 = and i8 %88, 1
  %357 = icmp ne i8 %356, 0
  %358 = and i32 %86, 256
  %359 = icmp eq i32 %358, 0
  %360 = and i1 %359, %357
  br i1 %360, label %361, label %384

361:                                              ; preds = %353
  %362 = icmp sgt i32 %139, 0
  br i1 %362, label %363, label %379

363:                                              ; preds = %361, %369
  %364 = phi ptr [ %376, %369 ], [ %355, %361 ]
  %365 = phi i32 [ %377, %369 ], [ %139, %361 ]
  %366 = icmp ult ptr %364, %3
  br i1 %366, label %369, label %367

367:                                              ; preds = %363
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.2) #16
  %368 = load ptr, ptr %6, align 8, !tbaa !152
  br label %369

369:                                              ; preds = %367, %363
  %370 = phi ptr [ %368, %367 ], [ %364, %363 ]
  %371 = load i8, ptr %370, align 1, !tbaa !142
  %372 = zext i8 %371 to i64
  %373 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %372
  %374 = load i8, ptr %373, align 1, !tbaa !142
  %375 = zext i8 %374 to i64
  %376 = getelementptr inbounds i8, ptr %370, i64 %375
  store ptr %376, ptr %6, align 8, !tbaa !152
  %377 = add nsw i32 %365, -1
  %378 = icmp sgt i32 %365, 1
  br i1 %378, label %363, label %379, !llvm.loop !173

379:                                              ; preds = %369, %361
  %380 = phi ptr [ %355, %361 ], [ %376, %369 ]
  %381 = phi i32 [ %139, %361 ], [ 0, %369 ]
  %382 = icmp ugt ptr %380, %3
  br i1 %382, label %383, label %2283

383:                                              ; preds = %379
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.3) #16
  br label %2283

384:                                              ; preds = %353
  %385 = ptrtoint ptr %355 to i64
  %386 = sub i64 %55, %385
  %387 = sext i32 %139 to i64
  %388 = icmp slt i64 %386, %387
  br i1 %388, label %389, label %391

389:                                              ; preds = %384
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.2) #16
  %390 = load ptr, ptr %6, align 8, !tbaa !152
  br label %391

391:                                              ; preds = %389, %384
  %392 = phi ptr [ %390, %389 ], [ %355, %384 ]
  %393 = getelementptr inbounds i8, ptr %392, i64 %387
  store ptr %393, ptr %6, align 8, !tbaa !152
  br label %2283

394:                                              ; preds = %138
  %395 = call i32 @llvm.umax.i32(i32 %139, i32 1)
  %396 = and i8 %88, 1
  %397 = icmp eq i8 %396, 0
  %398 = load ptr, ptr %6, align 8, !tbaa !152
  br i1 %397, label %421, label %399

399:                                              ; preds = %394
  %400 = icmp ugt ptr %398, %2
  br i1 %400, label %401, label %416

401:                                              ; preds = %399, %401
  %402 = phi i32 [ %414, %401 ], [ %395, %399 ]
  %403 = phi ptr [ %413, %401 ], [ %2, %399 ]
  %404 = phi ptr [ %410, %401 ], [ %2, %399 ]
  %405 = load i8, ptr %404, align 1, !tbaa !142
  %406 = zext i8 %405 to i64
  %407 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %406
  %408 = load i8, ptr %407, align 1, !tbaa !142
  %409 = zext i8 %408 to i64
  %410 = getelementptr inbounds i8, ptr %404, i64 %409
  %411 = add nsw i32 %402, -1
  %412 = icmp eq i32 %411, 0
  %413 = select i1 %412, ptr %410, ptr %403
  %414 = select i1 %412, i32 %395, i32 %411
  %415 = icmp ult ptr %410, %398
  br i1 %415, label %401, label %416, !llvm.loop !174

416:                                              ; preds = %401, %399
  %417 = phi ptr [ %2, %399 ], [ %413, %401 ]
  %418 = icmp ugt ptr %417, %398
  br i1 %418, label %419, label %420

419:                                              ; preds = %416
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.4) #16
  br label %420

420:                                              ; preds = %419, %416
  store ptr %417, ptr %6, align 8, !tbaa !152
  br label %2283

421:                                              ; preds = %394
  %422 = ptrtoint ptr %398 to i64
  %423 = sub i64 %422, %44
  %424 = sext i32 %395 to i64
  %425 = srem i64 %423, %424
  %426 = trunc i64 %425 to i32
  br label %461

427:                                              ; preds = %138
  %428 = and i8 %88, 1
  %429 = icmp eq i8 %428, 0
  br i1 %429, label %461, label %430

430:                                              ; preds = %427
  %431 = icmp sgt i32 %139, 0
  br i1 %431, label %432, label %2283

432:                                              ; preds = %430
  %433 = load ptr, ptr %6, align 8, !tbaa !152
  br label %434

434:                                              ; preds = %432, %457
  %435 = phi ptr [ %458, %457 ], [ %433, %432 ]
  %436 = phi i32 [ %459, %457 ], [ %139, %432 ]
  %437 = icmp ugt ptr %435, %2
  br i1 %437, label %440, label %438

438:                                              ; preds = %434
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.5) #16
  %439 = load ptr, ptr %6, align 8, !tbaa !152
  br label %440

440:                                              ; preds = %438, %434
  %441 = phi ptr [ %439, %438 ], [ %435, %434 ]
  %442 = getelementptr inbounds i8, ptr %441, i64 -1
  store ptr %442, ptr %6, align 8, !tbaa !152
  %443 = load i8, ptr %442, align 1, !tbaa !142
  %444 = and i8 %443, -64
  %445 = icmp eq i8 %444, -128
  br i1 %445, label %446, label %457

446:                                              ; preds = %440, %451
  %447 = phi ptr [ %453, %451 ], [ %442, %440 ]
  %448 = icmp ugt ptr %447, %2
  br i1 %448, label %451, label %449

449:                                              ; preds = %446
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.5) #16
  %450 = load ptr, ptr %6, align 8, !tbaa !152
  br label %451

451:                                              ; preds = %449, %446
  %452 = phi ptr [ %450, %449 ], [ %447, %446 ]
  %453 = getelementptr inbounds i8, ptr %452, i64 -1
  store ptr %453, ptr %6, align 8, !tbaa !152
  %454 = load i8, ptr %453, align 1, !tbaa !142
  %455 = and i8 %454, -64
  %456 = icmp eq i8 %455, -128
  br i1 %456, label %446, label %457, !llvm.loop !175

457:                                              ; preds = %451, %440
  %458 = phi ptr [ %442, %440 ], [ %453, %451 ]
  %459 = add nsw i32 %436, -1
  %460 = icmp sgt i32 %436, 1
  br i1 %460, label %434, label %2283, !llvm.loop !176

461:                                              ; preds = %421, %427
  %462 = phi i32 [ %426, %421 ], [ %139, %427 ]
  %463 = sext i32 %462 to i64
  %464 = load ptr, ptr %6, align 8, !tbaa !152
  %465 = ptrtoint ptr %464 to i64
  %466 = sub i64 %465, %44
  %467 = icmp slt i64 %466, %463
  br i1 %467, label %468, label %470

468:                                              ; preds = %461
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.5) #16
  %469 = load ptr, ptr %6, align 8, !tbaa !152
  br label %470

470:                                              ; preds = %468, %461
  %471 = phi ptr [ %469, %468 ], [ %464, %461 ]
  %472 = sub nsw i64 0, %463
  %473 = getelementptr inbounds i8, ptr %471, i64 %472
  store ptr %473, ptr %6, align 8, !tbaa !152
  br label %2283

474:                                              ; preds = %138
  %475 = call i32 @llvm.umax.i32(i32 %139, i32 1)
  %476 = and i8 %88, 1
  %477 = icmp eq i8 %476, 0
  %478 = load ptr, ptr %6, align 8, !tbaa !152
  br i1 %477, label %483, label %479

479:                                              ; preds = %474
  %480 = call i64 @Perl_utf8_length(ptr noundef %2, ptr noundef %478) #16
  %481 = sext i32 %475 to i64
  %482 = urem i64 %480, %481
  br label %488

483:                                              ; preds = %474
  %484 = ptrtoint ptr %478 to i64
  %485 = sub i64 %484, %44
  %486 = sext i32 %475 to i64
  %487 = srem i64 %485, %486
  br label %488

488:                                              ; preds = %483, %479
  %489 = phi i64 [ %482, %479 ], [ %487, %483 ]
  %490 = trunc i64 %489 to i32
  %491 = icmp eq i32 %490, 0
  %492 = sub nsw i32 %475, %490
  br i1 %491, label %2283, label %493

493:                                              ; preds = %143, %488
  %494 = phi i8 [ %144, %143 ], [ %476, %488 ]
  %495 = phi i32 [ %139, %143 ], [ %492, %488 ]
  %496 = icmp eq i8 %494, 0
  br i1 %496, label %517, label %497

497:                                              ; preds = %493
  %498 = icmp sgt i32 %495, 0
  br i1 %498, label %499, label %2283

499:                                              ; preds = %497
  %500 = load ptr, ptr %6, align 8, !tbaa !152
  br label %501

501:                                              ; preds = %499, %507
  %502 = phi ptr [ %514, %507 ], [ %500, %499 ]
  %503 = phi i32 [ %515, %507 ], [ %495, %499 ]
  %504 = icmp ult ptr %502, %3
  br i1 %504, label %507, label %505

505:                                              ; preds = %501
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.6) #16
  %506 = load ptr, ptr %6, align 8, !tbaa !152
  br label %507

507:                                              ; preds = %505, %501
  %508 = phi ptr [ %506, %505 ], [ %502, %501 ]
  %509 = load i8, ptr %508, align 1, !tbaa !142
  %510 = zext i8 %509 to i64
  %511 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %510
  %512 = load i8, ptr %511, align 1, !tbaa !142
  %513 = zext i8 %512 to i64
  %514 = getelementptr inbounds i8, ptr %508, i64 %513
  store ptr %514, ptr %6, align 8, !tbaa !152
  %515 = add nsw i32 %503, -1
  %516 = icmp sgt i32 %503, 1
  br i1 %516, label %501, label %2283, !llvm.loop !177

517:                                              ; preds = %493
  %518 = sext i32 %495 to i64
  %519 = load ptr, ptr %6, align 8, !tbaa !152
  %520 = ptrtoint ptr %519 to i64
  %521 = sub i64 %55, %520
  %522 = icmp slt i64 %521, %518
  br i1 %522, label %523, label %525

523:                                              ; preds = %517
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.6) #16
  %524 = load ptr, ptr %6, align 8, !tbaa !152
  br label %525

525:                                              ; preds = %523, %517
  %526 = phi ptr [ %524, %523 ], [ %519, %517 ]
  %527 = getelementptr inbounds i8, ptr %526, i64 %518
  store ptr %527, ptr %6, align 8, !tbaa !152
  br label %2283

528:                                              ; preds = %138
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.7) #16
  br label %529

529:                                              ; preds = %138, %138, %138, %528
  %530 = icmp eq i32 %92, 0
  br i1 %530, label %539, label %531, !prof !178

531:                                              ; preds = %529
  %532 = sext i32 %139 to i64
  %533 = load ptr, ptr %6, align 8, !tbaa !152
  %534 = ptrtoint ptr %533 to i64
  %535 = sub i64 %55, %534
  %536 = icmp slt i64 %535, %532
  %537 = trunc i64 %535 to i32
  %538 = select i1 %536, i32 %537, i32 %139
  br label %1123

539:                                              ; preds = %529
  %540 = and i8 %88, 1
  %541 = icmp eq i8 %540, 0
  br i1 %541, label %571, label %542, !prof !178

542:                                              ; preds = %539
  %543 = load ptr, ptr %6, align 8, !tbaa !152
  %544 = icmp sgt i32 %139, 0
  br i1 %544, label %545, label %561

545:                                              ; preds = %542, %552
  %546 = phi ptr [ %559, %552 ], [ %543, %542 ]
  %547 = phi i32 [ %553, %552 ], [ %139, %542 ]
  %548 = icmp ult ptr %546, %3
  br i1 %548, label %552, label %549

549:                                              ; preds = %545
  %550 = icmp ugt ptr %546, %3
  br i1 %550, label %551, label %561

551:                                              ; preds = %549
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.4) #16
  br label %561

552:                                              ; preds = %545
  %553 = add nsw i32 %547, -1
  %554 = load i8, ptr %546, align 1, !tbaa !142
  %555 = zext i8 %554 to i64
  %556 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %555
  %557 = load i8, ptr %556, align 1, !tbaa !142
  %558 = zext i8 %557 to i64
  %559 = getelementptr inbounds i8, ptr %546, i64 %558
  %560 = icmp sgt i32 %547, 1
  br i1 %560, label %545, label %561, !llvm.loop !179

561:                                              ; preds = %552, %542, %549, %551
  %562 = phi ptr [ %546, %549 ], [ %546, %551 ], [ %543, %542 ], [ %559, %552 ]
  %563 = icmp ugt ptr %562, %3
  br i1 %563, label %564, label %565

564:                                              ; preds = %561
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.4) #16
  br label %565

565:                                              ; preds = %564, %561
  %566 = load ptr, ptr %6, align 8, !tbaa !152
  %567 = ptrtoint ptr %562 to i64
  %568 = ptrtoint ptr %566 to i64
  %569 = sub i64 %567, %568
  %570 = trunc i64 %569 to i32
  br label %579

571:                                              ; preds = %539
  %572 = sext i32 %139 to i64
  %573 = load ptr, ptr %6, align 8, !tbaa !152
  %574 = ptrtoint ptr %573 to i64
  %575 = sub i64 %55, %574
  %576 = icmp slt i64 %575, %572
  %577 = trunc i64 %575 to i32
  %578 = select i1 %576, i32 %577, i32 %139, !prof !180
  br label %579

579:                                              ; preds = %571, %565
  %580 = phi ptr [ %566, %565 ], [ %573, %571 ]
  %581 = phi i32 [ %570, %565 ], [ %578, %571 ]
  switch i32 %86, label %717 [
    i32 90, label %582
    i32 65, label %607
  ], !prof !181

582:                                              ; preds = %579
  %583 = sext i32 %581 to i64
  %584 = getelementptr inbounds i8, ptr %580, i64 %583
  %585 = icmp sgt i32 %581, 0
  br i1 %585, label %586, label %593

586:                                              ; preds = %582, %590
  %587 = phi ptr [ %591, %590 ], [ %580, %582 ]
  %588 = load i8, ptr %587, align 1, !tbaa !142
  %589 = icmp eq i8 %588, 0
  br i1 %589, label %593, label %590

590:                                              ; preds = %586
  %591 = getelementptr inbounds i8, ptr %587, i64 1
  %592 = icmp ult ptr %591, %584
  br i1 %592, label %586, label %593, !llvm.loop !182

593:                                              ; preds = %590, %586, %582
  %594 = phi ptr [ %580, %582 ], [ %587, %586 ], [ %591, %590 ]
  %595 = ptrtoint ptr %594 to i64
  %596 = ptrtoint ptr %580 to i64
  %597 = sub i64 %595, %596
  %598 = call ptr @Perl_newSVpvn(ptr noundef %580, i64 noundef %597) #16
  br i1 %80, label %599, label %720

599:                                              ; preds = %593
  %600 = load ptr, ptr %6, align 8, !tbaa !152
  %601 = ptrtoint ptr %600 to i64
  %602 = icmp ne ptr %594, %3
  %603 = zext i1 %602 to i64
  %604 = add i64 %603, %595
  %605 = sub i64 %604, %601
  %606 = trunc i64 %605 to i32
  br label %720

607:                                              ; preds = %579
  br i1 %541, label %691, label %608

608:                                              ; preds = %607
  %609 = load i32, ptr %39, align 8, !tbaa !139
  %610 = and i32 %609, 64
  %611 = icmp eq i32 %610, 0
  br i1 %611, label %691, label %612

612:                                              ; preds = %608
  %613 = sext i32 %581 to i64
  %614 = getelementptr inbounds i8, ptr %580, i64 %613
  %615 = getelementptr inbounds i8, ptr %614, i64 -1
  %616 = icmp ult ptr %615, %580
  br i1 %616, label %710, label %617

617:                                              ; preds = %612, %677
  %618 = phi ptr [ %678, %677 ], [ %615, %612 ]
  %619 = phi ptr [ %618, %677 ], [ %614, %612 ]
  %620 = load i8, ptr %618, align 1, !tbaa !142
  %621 = icmp eq i8 %620, 0
  br i1 %621, label %677, label %622

622:                                              ; preds = %617
  %623 = zext i8 %620 to i32
  %624 = and i32 %623, 192
  %625 = icmp eq i32 %624, 128
  br i1 %625, label %677, label %626

626:                                              ; preds = %622
  %627 = icmp sgt i8 %620, -1
  br i1 %627, label %628, label %634

628:                                              ; preds = %626
  %629 = zext nneg i8 %620 to i64
  %630 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %629
  %631 = load i32, ptr %630, align 4, !tbaa !166
  %632 = and i32 %631, 1024
  %633 = icmp eq i32 %632, 0
  br i1 %633, label %680, label %677

634:                                              ; preds = %626
  %635 = and i32 %623, 254
  %636 = icmp eq i32 %635, 194
  br i1 %636, label %637, label %650

637:                                              ; preds = %634
  %638 = and i8 %620, 28
  %639 = icmp eq i8 %638, 0
  br i1 %639, label %640, label %680

640:                                              ; preds = %637
  %641 = shl i8 %620, 6
  %642 = load i8, ptr %619, align 1, !tbaa !142
  %643 = and i8 %642, 63
  %644 = or disjoint i8 %643, %641
  %645 = zext i8 %644 to i64
  %646 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %645
  %647 = load i32, ptr %646, align 4, !tbaa !166
  %648 = and i32 %647, 1024
  %649 = icmp eq i32 %648, 0
  br i1 %649, label %680, label %677

650:                                              ; preds = %634
  switch i8 %620, label %680 [
    i8 -31, label %651
    i8 -30, label %658
    i8 -29, label %670
  ]

651:                                              ; preds = %650
  %652 = load i8, ptr %619, align 1, !tbaa !142
  %653 = icmp eq i8 %652, -102
  br i1 %653, label %654, label %680

654:                                              ; preds = %651
  %655 = getelementptr inbounds i8, ptr %619, i64 1
  %656 = load i8, ptr %655, align 1, !tbaa !142
  %657 = icmp eq i8 %656, -128
  br i1 %657, label %677, label %680

658:                                              ; preds = %650
  %659 = load i8, ptr %619, align 1, !tbaa !142
  switch i8 %659, label %680 [
    i8 -128, label %660
    i8 -127, label %666
  ]

660:                                              ; preds = %658
  %661 = getelementptr inbounds i8, ptr %619, i64 1
  %662 = load i8, ptr %661, align 1, !tbaa !142
  %663 = freeze i8 %662
  %664 = icmp ult i8 %663, -117
  br i1 %664, label %677, label %665

665:                                              ; preds = %660
  switch i8 %663, label %680 [
    i8 -81, label %677
    i8 -87, label %677
    i8 -88, label %677
  ]

666:                                              ; preds = %658
  %667 = getelementptr inbounds i8, ptr %619, i64 1
  %668 = load i8, ptr %667, align 1, !tbaa !142
  %669 = icmp eq i8 %668, -97
  br i1 %669, label %677, label %680

670:                                              ; preds = %650
  %671 = load i8, ptr %619, align 1, !tbaa !142
  %672 = icmp eq i8 %671, -128
  br i1 %672, label %673, label %680

673:                                              ; preds = %670
  %674 = getelementptr inbounds i8, ptr %619, i64 1
  %675 = load i8, ptr %674, align 1, !tbaa !142
  %676 = icmp eq i8 %675, -128
  br i1 %676, label %677, label %680

677:                                              ; preds = %665, %665, %665, %660, %617, %622, %628, %640, %654, %666, %673
  %678 = getelementptr inbounds i8, ptr %618, i64 -1
  %679 = icmp ult ptr %678, %580
  br i1 %679, label %686, label %617, !llvm.loop !183

680:                                              ; preds = %665, %650, %658, %628, %640, %637, %654, %651, %666, %673, %670
  %681 = zext i8 %620 to i64
  %682 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %681
  %683 = load i8, ptr %682, align 1, !tbaa !142
  %684 = zext i8 %683 to i64
  %685 = getelementptr inbounds i8, ptr %618, i64 %684
  br label %686

686:                                              ; preds = %677, %680
  %687 = phi ptr [ %685, %680 ], [ %618, %677 ]
  %688 = icmp ugt ptr %687, %614
  br i1 %688, label %689, label %710

689:                                              ; preds = %686
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.4) #16
  %690 = load ptr, ptr %6, align 8, !tbaa !152
  br label %710

691:                                              ; preds = %608, %607
  %692 = sext i32 %581 to i64
  %693 = getelementptr inbounds i8, ptr %580, i64 %692
  %694 = getelementptr inbounds i8, ptr %693, i64 -1
  %695 = icmp ult ptr %694, %580
  br i1 %695, label %710, label %696

696:                                              ; preds = %691, %707
  %697 = phi ptr [ %708, %707 ], [ %694, %691 ]
  %698 = phi ptr [ %697, %707 ], [ %693, %691 ]
  %699 = load i8, ptr %697, align 1, !tbaa !142
  %700 = icmp eq i8 %699, 0
  br i1 %700, label %707, label %701

701:                                              ; preds = %696
  %702 = zext i8 %699 to i64
  %703 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %702
  %704 = load i32, ptr %703, align 4, !tbaa !166
  %705 = and i32 %704, 17408
  %706 = icmp eq i32 %705, 17408
  br i1 %706, label %707, label %710

707:                                              ; preds = %696, %701
  %708 = getelementptr inbounds i8, ptr %697, i64 -1
  %709 = icmp ult ptr %708, %580
  br i1 %709, label %710, label %696, !llvm.loop !184

710:                                              ; preds = %701, %707, %612, %691, %686, %689
  %711 = phi ptr [ %690, %689 ], [ %580, %686 ], [ %580, %691 ], [ %580, %612 ], [ %580, %707 ], [ %580, %701 ]
  %712 = phi ptr [ %687, %689 ], [ %687, %686 ], [ %693, %691 ], [ %614, %612 ], [ %698, %701 ], [ %697, %707 ]
  %713 = ptrtoint ptr %712 to i64
  %714 = ptrtoint ptr %711 to i64
  %715 = sub i64 %713, %714
  %716 = call ptr @Perl_newSVpvn(ptr noundef %711, i64 noundef %715) #16
  br label %720

717:                                              ; preds = %579
  %718 = sext i32 %581 to i64
  %719 = call ptr @Perl_newSVpvn(ptr noundef %580, i64 noundef %718) #16
  br label %720

720:                                              ; preds = %593, %599, %710, %717
  %721 = phi i32 [ %581, %710 ], [ %581, %717 ], [ %606, %599 ], [ %581, %593 ]
  %722 = phi ptr [ %716, %710 ], [ %719, %717 ], [ %598, %599 ], [ %598, %593 ]
  br i1 %541, label %732, label %723, !prof !178

723:                                              ; preds = %720
  %724 = getelementptr inbounds %struct.sv, ptr %722, i64 0, i32 2
  %725 = load i32, ptr %724, align 4, !tbaa !185
  %726 = or i32 %725, 536870912
  store i32 %726, ptr %724, align 4, !tbaa !185
  %727 = load i32, ptr %39, align 8, !tbaa !139
  %728 = and i32 %727, 64
  %729 = icmp eq i32 %728, 0
  br i1 %729, label %730, label %732

730:                                              ; preds = %723
  %731 = call zeroext i1 @Perl_sv_utf8_downgrade(ptr noundef nonnull %722, i1 noundef zeroext false) #16
  br label %732

732:                                              ; preds = %723, %730, %720
  %733 = load ptr, ptr @PL_stack_max, align 8, !tbaa !152
  %734 = ptrtoint ptr %733 to i64
  %735 = ptrtoint ptr %140 to i64
  %736 = sub i64 %734, %735
  %737 = icmp slt i64 %736, 8
  br i1 %737, label %738, label %740, !prof !180

738:                                              ; preds = %732
  %739 = call ptr @Perl_stack_grow(ptr noundef %140, ptr noundef %140, i64 noundef 1) #16
  br label %740

740:                                              ; preds = %732, %738
  %741 = phi ptr [ %739, %738 ], [ %140, %732 ]
  %742 = call ptr @Perl_sv_2mortal(ptr noundef %722) #16
  %743 = getelementptr inbounds ptr, ptr %741, i64 1
  store ptr %742, ptr %743, align 8, !tbaa !152
  %744 = load ptr, ptr %6, align 8, !tbaa !152
  %745 = sext i32 %721 to i64
  %746 = getelementptr inbounds i8, ptr %744, i64 %745
  store ptr %746, ptr %6, align 8, !tbaa !152
  br label %2283

747:                                              ; preds = %138, %138
  %748 = load ptr, ptr %6, align 8
  br i1 %80, label %749, label %752

749:                                              ; preds = %747
  %750 = ptrtoint ptr %748 to i64
  %751 = sub i64 %55, %750
  br label %758

752:                                              ; preds = %747
  %753 = sext i32 %139 to i64
  %754 = ptrtoint ptr %748 to i64
  %755 = sub i64 %55, %754
  %756 = shl nsw i64 %755, 3
  %757 = icmp slt i64 %756, %753
  br i1 %757, label %758, label %762

758:                                              ; preds = %749, %752
  %759 = phi i64 [ %751, %749 ], [ %755, %752 ]
  %760 = trunc i64 %759 to i32
  %761 = shl i32 %760, 3
  br label %762

762:                                              ; preds = %758, %752
  %763 = phi i32 [ %761, %758 ], [ %139, %752 ]
  %764 = icmp eq i32 %92, 0
  br i1 %764, label %840, label %765

765:                                              ; preds = %762
  %766 = and i8 %88, 1
  %767 = icmp eq i8 %766, 0
  %768 = icmp sgt i32 %763, 7
  br i1 %767, label %772, label %769

769:                                              ; preds = %765
  %770 = icmp ult ptr %748, %3
  %771 = select i1 %768, i1 %770, i1 false
  br i1 %771, label %773, label %800

772:                                              ; preds = %765
  br i1 %768, label %787, label %800

773:                                              ; preds = %769, %773
  %774 = phi i64 [ %781, %773 ], [ %91, %769 ]
  %775 = phi i32 [ %782, %773 ], [ %763, %769 ]
  %776 = call fastcc zeroext i8 @utf8_to_byte(ptr noundef nonnull %6, ptr noundef nonnull %3, i32 noundef %86) #15
  %777 = zext i8 %776 to i64
  %778 = getelementptr inbounds [256 x i8], ptr @PL_bitcount, i64 0, i64 %777
  %779 = load i8, ptr %778, align 1, !tbaa !142
  %780 = sext i8 %779 to i64
  %781 = add i64 %774, %780
  %782 = add nsw i32 %775, -8
  %783 = icmp ugt i32 %775, 15
  %784 = load ptr, ptr %6, align 8
  %785 = icmp ult ptr %784, %3
  %786 = select i1 %783, i1 %785, i1 false
  br i1 %786, label %773, label %800, !llvm.loop !187

787:                                              ; preds = %772, %787
  %788 = phi i64 [ %797, %787 ], [ %91, %772 ]
  %789 = phi i32 [ %798, %787 ], [ %763, %772 ]
  %790 = phi ptr [ %791, %787 ], [ %748, %772 ]
  %791 = getelementptr inbounds i8, ptr %790, i64 1
  store ptr %791, ptr %6, align 8, !tbaa !152
  %792 = load i8, ptr %790, align 1, !tbaa !142
  %793 = zext i8 %792 to i64
  %794 = getelementptr inbounds [256 x i8], ptr @PL_bitcount, i64 0, i64 %793
  %795 = load i8, ptr %794, align 1, !tbaa !142
  %796 = sext i8 %795 to i64
  %797 = add i64 %788, %796
  %798 = add nsw i32 %789, -8
  %799 = icmp ugt i32 %789, 15
  br i1 %799, label %787, label %800, !llvm.loop !188

800:                                              ; preds = %773, %787, %769, %772
  %801 = phi ptr [ %748, %772 ], [ %748, %769 ], [ %791, %787 ], [ %784, %773 ]
  %802 = phi i32 [ %763, %772 ], [ %763, %769 ], [ %798, %787 ], [ %782, %773 ]
  %803 = phi i64 [ %91, %772 ], [ %91, %769 ], [ %797, %787 ], [ %781, %773 ]
  %804 = icmp eq i32 %802, 0
  br i1 %804, label %2283, label %805

805:                                              ; preds = %800
  %806 = icmp ult ptr %801, %3
  br i1 %806, label %807, label %2283

807:                                              ; preds = %805
  br i1 %767, label %810, label %808

808:                                              ; preds = %807
  %809 = call fastcc zeroext i8 @utf8_to_byte(ptr noundef nonnull %6, ptr noundef %3, i32 noundef %86) #15
  br label %813

810:                                              ; preds = %807
  %811 = getelementptr inbounds i8, ptr %801, i64 1
  store ptr %811, ptr %6, align 8, !tbaa !152
  %812 = load i8, ptr %801, align 1, !tbaa !142
  br label %813

813:                                              ; preds = %810, %808
  %814 = phi i8 [ %809, %808 ], [ %812, %810 ]
  %815 = icmp eq i32 %86, 98
  %816 = add nsw i32 %802, -1
  %817 = icmp sgt i32 %802, 0
  br i1 %815, label %819, label %818

818:                                              ; preds = %813
  br i1 %817, label %830, label %2283

819:                                              ; preds = %813
  br i1 %817, label %820, label %2283

820:                                              ; preds = %819, %820
  %821 = phi i32 [ %828, %820 ], [ %816, %819 ]
  %822 = phi i64 [ %826, %820 ], [ %803, %819 ]
  %823 = phi i8 [ %827, %820 ], [ %814, %819 ]
  %824 = and i8 %823, 1
  %825 = zext nneg i8 %824 to i64
  %826 = add i64 %822, %825
  %827 = lshr i8 %823, 1
  %828 = add nsw i32 %821, -1
  %829 = icmp eq i32 %821, 0
  br i1 %829, label %2283, label %820, !llvm.loop !189

830:                                              ; preds = %818, %830
  %831 = phi i32 [ %838, %830 ], [ %816, %818 ]
  %832 = phi i64 [ %836, %830 ], [ %803, %818 ]
  %833 = phi i8 [ %837, %830 ], [ %814, %818 ]
  %834 = lshr i8 %833, 7
  %835 = zext nneg i8 %834 to i64
  %836 = add i64 %832, %835
  %837 = shl i8 %833, 1
  %838 = add nsw i32 %831, -1
  %839 = icmp eq i32 %831, 0
  br i1 %839, label %2283, label %830, !llvm.loop !190

840:                                              ; preds = %762
  %841 = call i32 @llvm.umax.i32(i32 %763, i32 1)
  %842 = sext i32 %841 to i64
  %843 = call ptr @Perl_newSV(i64 noundef %842) #16
  %844 = call ptr @Perl_sv_2mortal(ptr noundef %843) #16
  %845 = getelementptr inbounds %struct.sv, ptr %844, i64 0, i32 2
  %846 = load i32, ptr %845, align 4, !tbaa !185
  %847 = or i32 %846, 17408
  store i32 %847, ptr %845, align 4, !tbaa !185
  %848 = getelementptr inbounds %struct.sv, ptr %844, i64 0, i32 3
  %849 = load ptr, ptr %848, align 8, !tbaa !142
  %850 = icmp eq i32 %86, 98
  %851 = icmp sgt i32 %763, 0
  br i1 %850, label %856, label %852

852:                                              ; preds = %840
  br i1 %851, label %853, label %908

853:                                              ; preds = %852
  %854 = and i8 %88, 1
  %855 = icmp eq i8 %854, 0
  br label %884

856:                                              ; preds = %840
  br i1 %851, label %857, label %908

857:                                              ; preds = %856
  %858 = and i8 %88, 1
  %859 = icmp eq i8 %858, 0
  br label %860

860:                                              ; preds = %857, %877
  %861 = phi i32 [ 0, %857 ], [ %882, %877 ]
  %862 = phi i8 [ 0, %857 ], [ %878, %877 ]
  %863 = phi ptr [ %849, %857 ], [ %881, %877 ]
  %864 = and i32 %861, 7
  %865 = icmp eq i32 %864, 0
  br i1 %865, label %868, label %866

866:                                              ; preds = %860
  %867 = lshr i8 %862, 1
  br label %877

868:                                              ; preds = %860
  %869 = load ptr, ptr %6, align 8, !tbaa !152
  br i1 %859, label %874, label %870

870:                                              ; preds = %868
  %871 = icmp ult ptr %869, %3
  br i1 %871, label %872, label %908

872:                                              ; preds = %870
  %873 = call fastcc zeroext i8 @utf8_to_byte(ptr noundef nonnull %6, ptr noundef %3, i32 noundef 98) #15
  br label %877

874:                                              ; preds = %868
  %875 = getelementptr inbounds i8, ptr %869, i64 1
  store ptr %875, ptr %6, align 8, !tbaa !152
  %876 = load i8, ptr %869, align 1, !tbaa !142
  br label %877

877:                                              ; preds = %872, %874, %866
  %878 = phi i8 [ %867, %866 ], [ %873, %872 ], [ %876, %874 ]
  %879 = and i8 %878, 1
  %880 = or disjoint i8 %879, 48
  %881 = getelementptr inbounds i8, ptr %863, i64 1
  store i8 %880, ptr %863, align 1, !tbaa !142
  %882 = add nuw nsw i32 %861, 1
  %883 = icmp eq i32 %882, %763
  br i1 %883, label %908, label %860, !llvm.loop !191

884:                                              ; preds = %853, %901
  %885 = phi i32 [ 0, %853 ], [ %906, %901 ]
  %886 = phi i8 [ 0, %853 ], [ %902, %901 ]
  %887 = phi ptr [ %849, %853 ], [ %905, %901 ]
  %888 = and i32 %885, 7
  %889 = icmp eq i32 %888, 0
  br i1 %889, label %892, label %890

890:                                              ; preds = %884
  %891 = shl i8 %886, 1
  br label %901

892:                                              ; preds = %884
  %893 = load ptr, ptr %6, align 8, !tbaa !152
  br i1 %855, label %898, label %894

894:                                              ; preds = %892
  %895 = icmp ult ptr %893, %3
  br i1 %895, label %896, label %908

896:                                              ; preds = %894
  %897 = call fastcc zeroext i8 @utf8_to_byte(ptr noundef nonnull %6, ptr noundef %3, i32 noundef %86) #15
  br label %901

898:                                              ; preds = %892
  %899 = getelementptr inbounds i8, ptr %893, i64 1
  store ptr %899, ptr %6, align 8, !tbaa !152
  %900 = load i8, ptr %893, align 1, !tbaa !142
  br label %901

901:                                              ; preds = %896, %898, %890
  %902 = phi i8 [ %891, %890 ], [ %897, %896 ], [ %900, %898 ]
  %903 = icmp sgt i8 %902, -1
  %904 = select i1 %903, i8 48, i8 49
  %905 = getelementptr inbounds i8, ptr %887, i64 1
  store i8 %904, ptr %887, align 1, !tbaa !142
  %906 = add nuw nsw i32 %885, 1
  %907 = icmp eq i32 %906, %763
  br i1 %907, label %908, label %884, !llvm.loop !192

908:                                              ; preds = %894, %901, %870, %877, %852, %856
  %909 = phi ptr [ %849, %856 ], [ %849, %852 ], [ %863, %870 ], [ %881, %877 ], [ %887, %894 ], [ %905, %901 ]
  %910 = phi i32 [ 0, %856 ], [ 0, %852 ], [ %861, %870 ], [ %763, %877 ], [ %885, %894 ], [ %763, %901 ]
  store i8 0, ptr %909, align 1, !tbaa !142
  %911 = load ptr, ptr %848, align 8, !tbaa !142
  %912 = ptrtoint ptr %909 to i64
  %913 = ptrtoint ptr %911 to i64
  %914 = sub i64 %912, %913
  %915 = load ptr, ptr %844, align 8, !tbaa !193
  %916 = getelementptr inbounds %struct.xpv, ptr %915, i64 0, i32 2
  store i64 %914, ptr %916, align 8, !tbaa !194
  %917 = load ptr, ptr @PL_stack_max, align 8, !tbaa !152
  %918 = ptrtoint ptr %917 to i64
  %919 = ptrtoint ptr %140 to i64
  %920 = sub i64 %918, %919
  %921 = icmp slt i64 %920, 8
  br i1 %921, label %922, label %924

922:                                              ; preds = %908
  %923 = call ptr @Perl_stack_grow(ptr noundef %140, ptr noundef %140, i64 noundef 1) #16
  br label %924

924:                                              ; preds = %908, %922
  %925 = phi ptr [ %923, %922 ], [ %140, %908 ]
  %926 = getelementptr inbounds ptr, ptr %925, i64 1
  store ptr %844, ptr %926, align 8, !tbaa !152
  br label %2283

927:                                              ; preds = %138, %138
  %928 = load ptr, ptr %6, align 8, !tbaa !152
  br i1 %80, label %929, label %932

929:                                              ; preds = %927
  %930 = ptrtoint ptr %928 to i64
  %931 = sub i64 %55, %930
  br label %938

932:                                              ; preds = %927
  %933 = sext i32 %139 to i64
  %934 = ptrtoint ptr %928 to i64
  %935 = sub i64 %55, %934
  %936 = shl nsw i64 %935, 1
  %937 = icmp slt i64 %936, %933
  br i1 %937, label %938, label %942

938:                                              ; preds = %929, %932
  %939 = phi i64 [ %931, %929 ], [ %935, %932 ]
  %940 = trunc i64 %939 to i32
  %941 = shl i32 %940, 1
  br label %942

942:                                              ; preds = %938, %932
  %943 = phi i32 [ %941, %938 ], [ %139, %932 ]
  %944 = icmp eq i32 %92, 0
  br i1 %944, label %945, label %955

945:                                              ; preds = %942
  %946 = call i32 @llvm.umax.i32(i32 %943, i32 1)
  %947 = sext i32 %946 to i64
  %948 = call ptr @Perl_newSV(i64 noundef %947) #16
  %949 = call ptr @Perl_sv_2mortal(ptr noundef %948) #16
  %950 = getelementptr inbounds %struct.sv, ptr %949, i64 0, i32 2
  %951 = load i32, ptr %950, align 4, !tbaa !185
  %952 = or i32 %951, 17408
  store i32 %952, ptr %950, align 4, !tbaa !185
  %953 = getelementptr inbounds %struct.sv, ptr %949, i64 0, i32 3
  %954 = load ptr, ptr %953, align 8, !tbaa !142
  br label %955

955:                                              ; preds = %945, %942
  %956 = phi ptr [ null, %942 ], [ %954, %945 ]
  %957 = phi ptr [ %93, %942 ], [ %949, %945 ]
  %958 = icmp eq i32 %86, 104
  %959 = icmp sgt i32 %943, 0
  br i1 %958, label %964, label %960

960:                                              ; preds = %955
  br i1 %959, label %961, label %1026

961:                                              ; preds = %960
  %962 = and i8 %88, 1
  %963 = icmp eq i8 %962, 0
  br label %997

964:                                              ; preds = %955
  br i1 %959, label %965, label %1026

965:                                              ; preds = %964
  %966 = and i8 %88, 1
  %967 = icmp eq i8 %966, 0
  br label %968

968:                                              ; preds = %965, %993
  %969 = phi i8 [ 0, %965 ], [ %986, %993 ]
  %970 = phi ptr [ %956, %965 ], [ %994, %993 ]
  %971 = phi i32 [ 0, %965 ], [ %995, %993 ]
  %972 = and i32 %971, 1
  %973 = icmp eq i32 %972, 0
  br i1 %973, label %976, label %974

974:                                              ; preds = %968
  %975 = lshr i8 %969, 4
  br label %985

976:                                              ; preds = %968
  %977 = load ptr, ptr %6, align 8, !tbaa !152
  br i1 %967, label %982, label %978

978:                                              ; preds = %976
  %979 = icmp ult ptr %977, %3
  br i1 %979, label %980, label %1026

980:                                              ; preds = %978
  %981 = call fastcc zeroext i8 @utf8_to_byte(ptr noundef nonnull %6, ptr noundef %3, i32 noundef 104) #15
  br label %985

982:                                              ; preds = %976
  %983 = getelementptr inbounds i8, ptr %977, i64 1
  store ptr %983, ptr %6, align 8, !tbaa !152
  %984 = load i8, ptr %977, align 1, !tbaa !142
  br label %985

985:                                              ; preds = %980, %982, %974
  %986 = phi i8 [ %975, %974 ], [ %981, %980 ], [ %984, %982 ]
  br i1 %944, label %987, label %993

987:                                              ; preds = %985
  %988 = and i8 %986, 15
  %989 = zext nneg i8 %988 to i64
  %990 = getelementptr inbounds [0 x i8], ptr @PL_hexdigit, i64 0, i64 %989
  %991 = load i8, ptr %990, align 1, !tbaa !142
  %992 = getelementptr inbounds i8, ptr %970, i64 1
  store i8 %991, ptr %970, align 1, !tbaa !142
  br label %993

993:                                              ; preds = %985, %987
  %994 = phi ptr [ %970, %985 ], [ %992, %987 ]
  %995 = add nuw nsw i32 %971, 1
  %996 = icmp eq i32 %995, %943
  br i1 %996, label %1026, label %968, !llvm.loop !196

997:                                              ; preds = %961, %1022
  %998 = phi i8 [ 0, %961 ], [ %1015, %1022 ]
  %999 = phi ptr [ %956, %961 ], [ %1023, %1022 ]
  %1000 = phi i32 [ 0, %961 ], [ %1024, %1022 ]
  %1001 = and i32 %1000, 1
  %1002 = icmp eq i32 %1001, 0
  br i1 %1002, label %1005, label %1003

1003:                                             ; preds = %997
  %1004 = shl i8 %998, 4
  br label %1014

1005:                                             ; preds = %997
  %1006 = load ptr, ptr %6, align 8, !tbaa !152
  br i1 %963, label %1011, label %1007

1007:                                             ; preds = %1005
  %1008 = icmp ult ptr %1006, %3
  br i1 %1008, label %1009, label %1026

1009:                                             ; preds = %1007
  %1010 = call fastcc zeroext i8 @utf8_to_byte(ptr noundef nonnull %6, ptr noundef %3, i32 noundef %86) #15
  br label %1014

1011:                                             ; preds = %1005
  %1012 = getelementptr inbounds i8, ptr %1006, i64 1
  store ptr %1012, ptr %6, align 8, !tbaa !152
  %1013 = load i8, ptr %1006, align 1, !tbaa !142
  br label %1014

1014:                                             ; preds = %1009, %1011, %1003
  %1015 = phi i8 [ %1004, %1003 ], [ %1010, %1009 ], [ %1013, %1011 ]
  br i1 %944, label %1016, label %1022

1016:                                             ; preds = %1014
  %1017 = lshr i8 %1015, 4
  %1018 = zext nneg i8 %1017 to i64
  %1019 = getelementptr inbounds [0 x i8], ptr @PL_hexdigit, i64 0, i64 %1018
  %1020 = load i8, ptr %1019, align 1, !tbaa !142
  %1021 = getelementptr inbounds i8, ptr %999, i64 1
  store i8 %1020, ptr %999, align 1, !tbaa !142
  br label %1022

1022:                                             ; preds = %1014, %1016
  %1023 = phi ptr [ %999, %1014 ], [ %1021, %1016 ]
  %1024 = add nuw nsw i32 %1000, 1
  %1025 = icmp eq i32 %1024, %943
  br i1 %1025, label %1026, label %997, !llvm.loop !197

1026:                                             ; preds = %1007, %1022, %978, %993, %960, %964
  %1027 = phi i32 [ 0, %964 ], [ 0, %960 ], [ %971, %978 ], [ %943, %993 ], [ %1000, %1007 ], [ %943, %1022 ]
  %1028 = phi ptr [ %956, %964 ], [ %956, %960 ], [ %970, %978 ], [ %994, %993 ], [ %999, %1007 ], [ %1023, %1022 ]
  br i1 %944, label %1029, label %2291

1029:                                             ; preds = %1026
  store i8 0, ptr %1028, align 1, !tbaa !142
  %1030 = getelementptr inbounds %struct.sv, ptr %957, i64 0, i32 3
  %1031 = load ptr, ptr %1030, align 8, !tbaa !142
  %1032 = ptrtoint ptr %1028 to i64
  %1033 = ptrtoint ptr %1031 to i64
  %1034 = sub i64 %1032, %1033
  %1035 = load ptr, ptr %957, align 8, !tbaa !193
  %1036 = getelementptr inbounds %struct.xpv, ptr %1035, i64 0, i32 2
  store i64 %1034, ptr %1036, align 8, !tbaa !194
  %1037 = load ptr, ptr @PL_stack_max, align 8, !tbaa !152
  %1038 = ptrtoint ptr %1037 to i64
  %1039 = ptrtoint ptr %140 to i64
  %1040 = sub i64 %1038, %1039
  %1041 = icmp slt i64 %1040, 8
  br i1 %1041, label %1042, label %1044

1042:                                             ; preds = %1029
  %1043 = call ptr @Perl_stack_grow(ptr noundef %140, ptr noundef %140, i64 noundef 1) #16
  br label %1044

1044:                                             ; preds = %1029, %1042
  %1045 = phi ptr [ %1043, %1042 ], [ %140, %1029 ]
  %1046 = getelementptr inbounds ptr, ptr %1045, i64 1
  store ptr %957, ptr %1046, align 8, !tbaa !152
  br label %2358

1047:                                             ; preds = %138
  %1048 = icmp eq i32 %139, 0
  br i1 %1048, label %1049, label %1055, !prof !161

1049:                                             ; preds = %1047
  br i1 %89, label %1050, label %2283

1050:                                             ; preds = %1049
  %1051 = load i32, ptr %39, align 8, !tbaa !139
  %1052 = trunc i32 %1051 to i8
  %1053 = lshr i8 %1052, 3
  %1054 = and i8 %1053, 1
  br label %2283

1055:                                             ; preds = %1047, %138
  %1056 = add nsw i32 %139, -1
  %1057 = icmp sgt i32 %139, 0
  %1058 = load ptr, ptr %6, align 8
  %1059 = icmp ult ptr %1058, %3
  %1060 = select i1 %1057, i1 %1059, i1 false, !prof !198
  br i1 %1060, label %1061, label %2283, !prof !199

1061:                                             ; preds = %1055
  %1062 = and i8 %88, 1
  %1063 = icmp eq i8 %1062, 0
  %1064 = icmp eq i32 %92, 0
  br label %1065

1065:                                             ; preds = %1061, %1114
  %1066 = phi ptr [ %1058, %1061 ], [ %1115, %1114 ]
  %1067 = phi i32 [ %1056, %1061 ], [ %1119, %1114 ]
  %1068 = phi ptr [ %140, %1061 ], [ %1118, %1114 ]
  %1069 = phi i64 [ %91, %1061 ], [ %1117, %1114 ]
  %1070 = phi double [ %90, %1061 ], [ %1116, %1114 ]
  br i1 %1063, label %1087, label %1071, !prof !162

1071:                                             ; preds = %1065
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #14
  %1072 = ptrtoint ptr %1066 to i64
  %1073 = sub i64 %55, %1072
  %1074 = call zeroext i1 @Perl_ckwarn(i32 noundef 44) #16
  %1075 = select i1 %1074, i32 0, i32 -8161
  %1076 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %1066, i64 noundef %1073, ptr noundef nonnull %8, i32 noundef %1075) #16
  %1077 = trunc i64 %1076 to i32
  %1078 = load i64, ptr %8, align 8
  %1079 = add i64 %1078, 1
  %1080 = icmp ult i64 %1079, 2
  br i1 %1080, label %1081, label %1083

1081:                                             ; preds = %1071
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.4) #16
  %1082 = load i64, ptr %8, align 8, !tbaa !129
  br label %1083

1083:                                             ; preds = %1071, %1081
  %1084 = phi i64 [ %1078, %1071 ], [ %1082, %1081 ]
  %1085 = load ptr, ptr %6, align 8, !tbaa !152
  %1086 = getelementptr inbounds i8, ptr %1085, i64 %1084
  store ptr %1086, ptr %6, align 8, !tbaa !152
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #14
  br label %1091

1087:                                             ; preds = %1065
  %1088 = getelementptr inbounds i8, ptr %1066, i64 1
  store ptr %1088, ptr %6, align 8, !tbaa !152
  %1089 = load i8, ptr %1066, align 1, !tbaa !142
  %1090 = zext i8 %1089 to i32
  br label %1091

1091:                                             ; preds = %1087, %1083
  %1092 = phi ptr [ %1086, %1083 ], [ %1088, %1087 ]
  %1093 = phi i32 [ %1077, %1083 ], [ %1090, %1087 ]
  %1094 = icmp sgt i32 %1093, 127
  br i1 %1094, label %1095, label %1099, !prof !161

1095:                                             ; preds = %1091
  %1096 = icmp eq i32 %86, 67
  %1097 = add nsw i32 %1093, -256
  %1098 = select i1 %1096, i32 %1093, i32 %1097
  br label %1099

1099:                                             ; preds = %1095, %1091
  %1100 = phi i32 [ %1093, %1091 ], [ %1098, %1095 ]
  br i1 %1064, label %1101, label %1106, !prof !162

1101:                                             ; preds = %1099
  %1102 = call ptr @Perl_sv_newmortal() #16
  %1103 = getelementptr inbounds ptr, ptr %1068, i64 1
  store ptr %1102, ptr %1103, align 8, !tbaa !152
  %1104 = sext i32 %1100 to i64
  call void @Perl_sv_setiv(ptr noundef %1102, i64 noundef %1104) #16
  %1105 = load ptr, ptr %6, align 8
  br label %1114

1106:                                             ; preds = %1099
  %1107 = icmp sgt i32 %92, 64
  br i1 %1107, label %1108, label %1111

1108:                                             ; preds = %1106
  %1109 = sitofp i32 %1100 to double
  %1110 = fadd double %1070, %1109
  br label %1114

1111:                                             ; preds = %1106
  %1112 = sext i32 %1100 to i64
  %1113 = add i64 %1069, %1112
  br label %1114

1114:                                             ; preds = %1108, %1111, %1101
  %1115 = phi ptr [ %1092, %1108 ], [ %1092, %1111 ], [ %1105, %1101 ]
  %1116 = phi double [ %1110, %1108 ], [ %1070, %1111 ], [ %1070, %1101 ]
  %1117 = phi i64 [ %1069, %1108 ], [ %1113, %1111 ], [ %1069, %1101 ]
  %1118 = phi ptr [ %1068, %1108 ], [ %1068, %1111 ], [ %1103, %1101 ]
  %1119 = add nsw i32 %1067, -1
  %1120 = icmp sgt i32 %1067, 0
  %1121 = icmp ult ptr %1115, %3
  %1122 = select i1 %1120, i1 %1121, i1 false, !prof !198
  br i1 %1122, label %1065, label %2283, !prof !200, !llvm.loop !201

1123:                                             ; preds = %531, %138
  %1124 = phi i32 [ %139, %138 ], [ %538, %531 ]
  %1125 = and i8 %88, 1
  %1126 = icmp eq i8 %1125, 0
  br i1 %1126, label %1175, label %1127

1127:                                             ; preds = %1123
  %1128 = add nsw i32 %1124, -1
  %1129 = icmp sgt i32 %1124, 0
  %1130 = load ptr, ptr %6, align 8
  %1131 = icmp ult ptr %1130, %3
  %1132 = select i1 %1129, i1 %1131, i1 false
  br i1 %1132, label %1133, label %2283

1133:                                             ; preds = %1127
  %1134 = icmp eq i32 %92, 0
  %1135 = icmp sgt i32 %92, 64
  br label %1136

1136:                                             ; preds = %1133, %1166
  %1137 = phi ptr [ %1130, %1133 ], [ %1167, %1166 ]
  %1138 = phi i32 [ %1128, %1133 ], [ %1171, %1166 ]
  %1139 = phi ptr [ %140, %1133 ], [ %1170, %1166 ]
  %1140 = phi i64 [ %91, %1133 ], [ %1169, %1166 ]
  %1141 = phi double [ %90, %1133 ], [ %1168, %1166 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #14
  %1142 = ptrtoint ptr %1137 to i64
  %1143 = sub i64 %55, %1142
  %1144 = call zeroext i1 @Perl_ckwarn(i32 noundef 44) #16
  %1145 = select i1 %1144, i32 0, i32 -8161
  %1146 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %1137, i64 noundef %1143, ptr noundef nonnull %9, i32 noundef %1145) #16
  %1147 = load i64, ptr %9, align 8
  %1148 = add i64 %1147, 1
  %1149 = icmp ult i64 %1148, 2
  br i1 %1149, label %1150, label %1152

1150:                                             ; preds = %1136
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.4) #16
  %1151 = load i64, ptr %9, align 8, !tbaa !129
  br label %1152

1152:                                             ; preds = %1136, %1150
  %1153 = phi i64 [ %1147, %1136 ], [ %1151, %1150 ]
  %1154 = load ptr, ptr %6, align 8, !tbaa !152
  %1155 = getelementptr inbounds i8, ptr %1154, i64 %1153
  store ptr %1155, ptr %6, align 8, !tbaa !152
  br i1 %1134, label %1156, label %1160

1156:                                             ; preds = %1152
  %1157 = call ptr @Perl_sv_newmortal() #16
  %1158 = getelementptr inbounds ptr, ptr %1139, i64 1
  store ptr %1157, ptr %1158, align 8, !tbaa !152
  call void @Perl_sv_setuv(ptr noundef %1157, i64 noundef %1146) #16
  %1159 = load ptr, ptr %6, align 8
  br label %1166

1160:                                             ; preds = %1152
  br i1 %1135, label %1161, label %1164

1161:                                             ; preds = %1160
  %1162 = uitofp i64 %1146 to double
  %1163 = fadd double %1141, %1162
  br label %1166

1164:                                             ; preds = %1160
  %1165 = add i64 %1146, %1140
  br label %1166

1166:                                             ; preds = %1161, %1164, %1156
  %1167 = phi ptr [ %1155, %1161 ], [ %1155, %1164 ], [ %1159, %1156 ]
  %1168 = phi double [ %1163, %1161 ], [ %1141, %1164 ], [ %1141, %1156 ]
  %1169 = phi i64 [ %1140, %1161 ], [ %1165, %1164 ], [ %1140, %1156 ]
  %1170 = phi ptr [ %1139, %1161 ], [ %1139, %1164 ], [ %1158, %1156 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #14
  %1171 = add nsw i32 %1138, -1
  %1172 = icmp sgt i32 %1138, 0
  %1173 = icmp ult ptr %1167, %3
  %1174 = select i1 %1172, i1 %1173, i1 false
  br i1 %1174, label %1136, label %2283, !llvm.loop !202

1175:                                             ; preds = %1123
  %1176 = icmp eq i32 %92, 0
  br i1 %1176, label %1177, label %1191

1177:                                             ; preds = %1175
  %1178 = add nsw i32 %1124, -1
  %1179 = icmp sgt i32 %1124, 0
  br i1 %1179, label %1180, label %2358

1180:                                             ; preds = %1177, %1180
  %1181 = phi i32 [ %1189, %1180 ], [ %1178, %1177 ]
  %1182 = phi ptr [ %1187, %1180 ], [ %140, %1177 ]
  %1183 = load ptr, ptr %6, align 8, !tbaa !152
  %1184 = getelementptr inbounds i8, ptr %1183, i64 1
  store ptr %1184, ptr %6, align 8, !tbaa !152
  %1185 = load i8, ptr %1183, align 1, !tbaa !142
  %1186 = call ptr @Perl_sv_newmortal() #16
  %1187 = getelementptr inbounds ptr, ptr %1182, i64 1
  store ptr %1186, ptr %1187, align 8, !tbaa !152
  %1188 = zext i8 %1185 to i64
  call void @Perl_sv_setuv(ptr noundef %1186, i64 noundef %1188) #16
  %1189 = add nsw i32 %1181, -1
  %1190 = icmp eq i32 %1181, 0
  br i1 %1190, label %2283, label %1180, !llvm.loop !203

1191:                                             ; preds = %1175
  %1192 = icmp sgt i32 %92, 64
  %1193 = add nsw i32 %1124, -1
  %1194 = icmp sgt i32 %1124, 0
  br i1 %1192, label %1198, label %1195

1195:                                             ; preds = %1191
  br i1 %1194, label %1196, label %2283

1196:                                             ; preds = %1195
  %1197 = load ptr, ptr %6, align 8, !tbaa !152
  br label %1211

1198:                                             ; preds = %1191
  br i1 %1194, label %1199, label %2291

1199:                                             ; preds = %1198
  %1200 = load ptr, ptr %6, align 8, !tbaa !152
  br label %1201

1201:                                             ; preds = %1199, %1201
  %1202 = phi i32 [ %1209, %1201 ], [ %1193, %1199 ]
  %1203 = phi double [ %1208, %1201 ], [ %90, %1199 ]
  %1204 = phi ptr [ %1205, %1201 ], [ %1200, %1199 ]
  %1205 = getelementptr inbounds i8, ptr %1204, i64 1
  store ptr %1205, ptr %6, align 8, !tbaa !152
  %1206 = load i8, ptr %1204, align 1, !tbaa !142
  %1207 = uitofp i8 %1206 to double
  %1208 = fadd double %1203, %1207
  %1209 = add nsw i32 %1202, -1
  %1210 = icmp eq i32 %1202, 0
  br i1 %1210, label %2283, label %1201, !llvm.loop !204

1211:                                             ; preds = %1196, %1211
  %1212 = phi i32 [ %1219, %1211 ], [ %1193, %1196 ]
  %1213 = phi i64 [ %1218, %1211 ], [ %91, %1196 ]
  %1214 = phi ptr [ %1215, %1211 ], [ %1197, %1196 ]
  %1215 = getelementptr inbounds i8, ptr %1214, i64 1
  store ptr %1215, ptr %6, align 8, !tbaa !152
  %1216 = load i8, ptr %1214, align 1, !tbaa !142
  %1217 = zext i8 %1216 to i64
  %1218 = add i64 %1213, %1217
  %1219 = add nsw i32 %1212, -1
  %1220 = icmp eq i32 %1212, 0
  br i1 %1220, label %2283, label %1211, !llvm.loop !205

1221:                                             ; preds = %138
  %1222 = icmp eq i32 %139, 0
  br i1 %1222, label %1223, label %1231

1223:                                             ; preds = %1221
  %1224 = icmp ne i32 %79, 2
  %1225 = and i1 %1224, %89
  br i1 %1225, label %1226, label %2283

1226:                                             ; preds = %1223
  %1227 = load i32, ptr %39, align 8, !tbaa !139
  %1228 = and i32 %1227, 8
  %1229 = icmp eq i32 %1228, 0
  br i1 %1229, label %1230, label %2283

1230:                                             ; preds = %1226
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.8) #16
  br label %2283

1231:                                             ; preds = %1221
  %1232 = sext i32 %139 to i64
  %1233 = load ptr, ptr %6, align 8, !tbaa !152
  %1234 = ptrtoint ptr %1233 to i64
  %1235 = sub i64 %55, %1234
  %1236 = icmp slt i64 %1235, %1232
  %1237 = trunc i64 %1235 to i32
  %1238 = select i1 %1236, i32 %1237, i32 %139
  %1239 = icmp eq i32 %92, 0
  br i1 %1239, label %1240, label %1261

1240:                                             ; preds = %1231
  %1241 = icmp eq i32 %1238, 0
  %1242 = select i1 %42, i32 %1238, i32 1
  %1243 = select i1 %1241, i32 0, i32 %1242
  %1244 = load ptr, ptr @PL_stack_max, align 8, !tbaa !152
  %1245 = ptrtoint ptr %1244 to i64
  %1246 = ptrtoint ptr %140 to i64
  %1247 = sub i64 %1245, %1246
  %1248 = ashr exact i64 %1247, 3
  %1249 = sext i32 %1243 to i64
  %1250 = icmp slt i64 %1248, %1249
  br i1 %1250, label %1251, label %1253

1251:                                             ; preds = %1240
  %1252 = call ptr @Perl_stack_grow(ptr noundef %140, ptr noundef %140, i64 noundef %1249) #16
  br label %1253

1253:                                             ; preds = %1251, %1240
  %1254 = phi ptr [ %1252, %1251 ], [ %140, %1240 ]
  %1255 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !129
  %1256 = add nsw i64 %1255, %1249
  %1257 = load i64, ptr @PL_tmps_max, align 8, !tbaa !129
  %1258 = icmp slt i64 %1256, %1257
  br i1 %1258, label %1261, label %1259

1259:                                             ; preds = %1253
  %1260 = call i64 @Perl_tmps_grow_p(i64 noundef %1256) #16
  br label %1261

1261:                                             ; preds = %1259, %1253, %1231
  %1262 = phi i32 [ %1238, %1231 ], [ %1243, %1253 ], [ %1243, %1259 ]
  %1263 = phi ptr [ %140, %1231 ], [ %1254, %1253 ], [ %1254, %1259 ]
  %1264 = add nsw i32 %1262, -1
  %1265 = icmp sgt i32 %1262, 0
  %1266 = load ptr, ptr %6, align 8
  %1267 = icmp ult ptr %1266, %3
  %1268 = select i1 %1265, i1 %1267, i1 false
  br i1 %1268, label %1269, label %2283

1269:                                             ; preds = %1261
  %1270 = getelementptr inbounds [13 x i8], ptr %11, i64 0, i64 1
  %1271 = and i8 %88, 1
  %1272 = icmp eq i8 %1271, 0
  %1273 = icmp sgt i32 %92, 64
  br label %1274

1274:                                             ; preds = %1269, %1327
  %1275 = phi ptr [ %1266, %1269 ], [ %1328, %1327 ]
  %1276 = phi i32 [ %1264, %1269 ], [ %1332, %1327 ]
  %1277 = phi ptr [ %1263, %1269 ], [ %1331, %1327 ]
  %1278 = phi i64 [ %91, %1269 ], [ %1330, %1327 ]
  %1279 = phi double [ %90, %1269 ], [ %1329, %1327 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #14
  br i1 %1272, label %1298, label %1280

1280:                                             ; preds = %1274
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %11) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #14
  store ptr %1275, ptr %12, align 8, !tbaa !152
  %1281 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %12, ptr noundef nonnull %3, ptr noundef nonnull %11, i32 noundef 1, i32 noundef 85) #15
  br i1 %1281, label %1282, label %1290

1282:                                             ; preds = %1280
  %1283 = load i8, ptr %11, align 1, !tbaa !142
  %1284 = zext i8 %1283 to i64
  %1285 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %1284
  %1286 = load i8, ptr %1285, align 1, !tbaa !142
  %1287 = zext i8 %1286 to i32
  %1288 = add nsw i32 %1287, -1
  %1289 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %12, ptr noundef nonnull %3, ptr noundef nonnull %1270, i32 noundef %1288, i32 noundef 85) #15
  br i1 %1289, label %1291, label %1290

1290:                                             ; preds = %1282, %1280
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #14
  br label %2283

1291:                                             ; preds = %1282
  %1292 = zext i8 %1286 to i64
  %1293 = call zeroext i1 @Perl_ckwarn(i32 noundef 44) #16
  %1294 = xor i1 %1293, true
  %1295 = zext i1 %1294 to i32
  %1296 = call i64 @Perl_utf8n_to_uvchr(ptr noundef nonnull %11, i64 noundef %1292, ptr noundef nonnull %10, i32 noundef %1295) #16
  %1297 = load ptr, ptr %12, align 8, !tbaa !152
  store ptr %1297, ptr %6, align 8, !tbaa !152
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %11) #14
  br label %1314

1298:                                             ; preds = %1274
  %1299 = ptrtoint ptr %1275 to i64
  %1300 = sub i64 %55, %1299
  %1301 = call zeroext i1 @Perl_ckwarn(i32 noundef 44) #16
  %1302 = xor i1 %1301, true
  %1303 = zext i1 %1302 to i32
  %1304 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %1275, i64 noundef %1300, ptr noundef nonnull %10, i32 noundef %1303) #16
  %1305 = load i64, ptr %10, align 8
  %1306 = add i64 %1305, 1
  %1307 = icmp ult i64 %1306, 2
  br i1 %1307, label %1308, label %1310

1308:                                             ; preds = %1298
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.4) #16
  %1309 = load i64, ptr %10, align 8, !tbaa !129
  br label %1310

1310:                                             ; preds = %1298, %1308
  %1311 = phi i64 [ %1305, %1298 ], [ %1309, %1308 ]
  %1312 = load ptr, ptr %6, align 8, !tbaa !152
  %1313 = getelementptr inbounds i8, ptr %1312, i64 %1311
  store ptr %1313, ptr %6, align 8, !tbaa !152
  br label %1314

1314:                                             ; preds = %1291, %1310
  %1315 = phi ptr [ %1297, %1291 ], [ %1313, %1310 ]
  %1316 = phi i64 [ %1296, %1291 ], [ %1304, %1310 ]
  br i1 %1239, label %1317, label %1321

1317:                                             ; preds = %1314
  %1318 = call ptr @Perl_sv_newmortal() #16
  %1319 = getelementptr inbounds ptr, ptr %1277, i64 1
  store ptr %1318, ptr %1319, align 8, !tbaa !152
  call void @Perl_sv_setuv(ptr noundef %1318, i64 noundef %1316) #16
  %1320 = load ptr, ptr %6, align 8
  br label %1327

1321:                                             ; preds = %1314
  br i1 %1273, label %1322, label %1325

1322:                                             ; preds = %1321
  %1323 = uitofp i64 %1316 to double
  %1324 = fadd double %1279, %1323
  br label %1327

1325:                                             ; preds = %1321
  %1326 = add i64 %1316, %1278
  br label %1327

1327:                                             ; preds = %1317, %1325, %1322
  %1328 = phi ptr [ %1315, %1322 ], [ %1315, %1325 ], [ %1320, %1317 ]
  %1329 = phi double [ %1324, %1322 ], [ %1279, %1325 ], [ %1279, %1317 ]
  %1330 = phi i64 [ %1278, %1322 ], [ %1326, %1325 ], [ %1278, %1317 ]
  %1331 = phi ptr [ %1277, %1322 ], [ %1277, %1325 ], [ %1319, %1317 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #14
  %1332 = add nsw i32 %1276, -1
  %1333 = icmp sgt i32 %1276, 0
  %1334 = icmp ult ptr %1328, %3
  %1335 = select i1 %1333, i1 %1334, i1 false
  br i1 %1335, label %1274, label %2283

1336:                                             ; preds = %138, %138
  %1337 = add nsw i32 %139, -1
  %1338 = icmp sgt i32 %139, 0
  br i1 %1338, label %1339, label %2283

1339:                                             ; preds = %1336
  %1340 = and i8 %88, 1
  %1341 = icmp eq i8 %1340, 0
  %1342 = icmp eq i32 %92, 0
  %1343 = icmp sgt i32 %92, 64
  br label %1344

1344:                                             ; preds = %1339, %1374
  %1345 = phi i32 [ %1337, %1339 ], [ %1378, %1374 ]
  %1346 = phi ptr [ %140, %1339 ], [ %1377, %1374 ]
  %1347 = phi i64 [ %91, %1339 ], [ %1376, %1374 ]
  %1348 = phi double [ %90, %1339 ], [ %1375, %1374 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #14
  br i1 %1341, label %1351, label %1349

1349:                                             ; preds = %1344
  %1350 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %6, ptr noundef %3, ptr noundef nonnull %13, i32 noundef 2, i32 noundef %86) #15
  br label %1360

1351:                                             ; preds = %1344
  %1352 = load ptr, ptr %6, align 8, !tbaa !152
  br i1 %142, label %1353, label %1355

1353:                                             ; preds = %1351
  call fastcc void @S_reverse_copy(ptr noundef %1352, ptr noundef nonnull %13, i64 noundef 2) #15
  %1354 = load ptr, ptr %6, align 8, !tbaa !152
  br label %1357

1355:                                             ; preds = %1351
  %1356 = load i16, ptr %1352, align 1
  store i16 %1356, ptr %13, align 2
  br label %1357

1357:                                             ; preds = %1355, %1353
  %1358 = phi ptr [ %1352, %1355 ], [ %1354, %1353 ]
  %1359 = getelementptr inbounds i8, ptr %1358, i64 2
  store ptr %1359, ptr %6, align 8, !tbaa !152
  br label %1360

1360:                                             ; preds = %1349, %1357
  br i1 %1342, label %1361, label %1366

1361:                                             ; preds = %1360
  %1362 = call ptr @Perl_sv_newmortal() #16
  %1363 = getelementptr inbounds ptr, ptr %1346, i64 1
  store ptr %1362, ptr %1363, align 8, !tbaa !152
  %1364 = load i16, ptr %13, align 2, !tbaa !206
  %1365 = sext i16 %1364 to i64
  call void @Perl_sv_setiv(ptr noundef %1362, i64 noundef %1365) #16
  br label %1374

1366:                                             ; preds = %1360
  %1367 = load i16, ptr %13, align 2, !tbaa !206
  br i1 %1343, label %1368, label %1371

1368:                                             ; preds = %1366
  %1369 = sitofp i16 %1367 to double
  %1370 = fadd double %1348, %1369
  br label %1374

1371:                                             ; preds = %1366
  %1372 = sext i16 %1367 to i64
  %1373 = add i64 %1347, %1372
  br label %1374

1374:                                             ; preds = %1368, %1371, %1361
  %1375 = phi double [ %1370, %1368 ], [ %1348, %1371 ], [ %1348, %1361 ]
  %1376 = phi i64 [ %1347, %1368 ], [ %1373, %1371 ], [ %1347, %1361 ]
  %1377 = phi ptr [ %1346, %1368 ], [ %1346, %1371 ], [ %1363, %1361 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #14
  %1378 = add nsw i32 %1345, -1
  %1379 = icmp sgt i32 %1345, 0
  br i1 %1379, label %1344, label %2283, !llvm.loop !208

1380:                                             ; preds = %138, %138, %138, %138
  %1381 = add nsw i32 %139, -1
  %1382 = icmp sgt i32 %139, 0
  br i1 %1382, label %1383, label %2283

1383:                                             ; preds = %1380
  %1384 = and i8 %88, 1
  %1385 = icmp eq i8 %1384, 0
  %1386 = icmp eq i32 %86, 110
  %1387 = icmp eq i32 %92, 0
  %1388 = icmp sgt i32 %92, 64
  br label %1389

1389:                                             ; preds = %1383, %1423
  %1390 = phi i32 [ %1381, %1383 ], [ %1427, %1423 ]
  %1391 = phi ptr [ %140, %1383 ], [ %1426, %1423 ]
  %1392 = phi i64 [ %91, %1383 ], [ %1425, %1423 ]
  %1393 = phi double [ %90, %1383 ], [ %1424, %1423 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #14
  br i1 %1385, label %1396, label %1394

1394:                                             ; preds = %1389
  %1395 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %6, ptr noundef %3, ptr noundef nonnull %14, i32 noundef 2, i32 noundef %86) #15
  br label %1405

1396:                                             ; preds = %1389
  %1397 = load ptr, ptr %6, align 8, !tbaa !152
  br i1 %142, label %1398, label %1400

1398:                                             ; preds = %1396
  call fastcc void @S_reverse_copy(ptr noundef %1397, ptr noundef nonnull %14, i64 noundef 2) #15
  %1399 = load ptr, ptr %6, align 8, !tbaa !152
  br label %1402

1400:                                             ; preds = %1396
  %1401 = load i16, ptr %1397, align 1
  store i16 %1401, ptr %14, align 2
  br label %1402

1402:                                             ; preds = %1400, %1398
  %1403 = phi ptr [ %1397, %1400 ], [ %1399, %1398 ]
  %1404 = getelementptr inbounds i8, ptr %1403, i64 2
  store ptr %1404, ptr %6, align 8, !tbaa !152
  br label %1405

1405:                                             ; preds = %1394, %1402
  br i1 %1386, label %1406, label %1409

1406:                                             ; preds = %1405
  %1407 = load i16, ptr %14, align 2, !tbaa !206
  %1408 = call fastcc zeroext i16 @__bswap_16(i16 noundef zeroext %1407) #15
  store i16 %1408, ptr %14, align 2, !tbaa !206
  br label %1409

1409:                                             ; preds = %1406, %1405
  br i1 %1387, label %1410, label %1415

1410:                                             ; preds = %1409
  %1411 = call ptr @Perl_sv_newmortal() #16
  %1412 = getelementptr inbounds ptr, ptr %1391, i64 1
  store ptr %1411, ptr %1412, align 8, !tbaa !152
  %1413 = load i16, ptr %14, align 2, !tbaa !206
  %1414 = zext i16 %1413 to i64
  call void @Perl_sv_setuv(ptr noundef %1411, i64 noundef %1414) #16
  br label %1423

1415:                                             ; preds = %1409
  %1416 = load i16, ptr %14, align 2, !tbaa !206
  br i1 %1388, label %1417, label %1420

1417:                                             ; preds = %1415
  %1418 = uitofp i16 %1416 to double
  %1419 = fadd double %1393, %1418
  br label %1423

1420:                                             ; preds = %1415
  %1421 = zext i16 %1416 to i64
  %1422 = add i64 %1392, %1421
  br label %1423

1423:                                             ; preds = %1417, %1420, %1410
  %1424 = phi double [ %1419, %1417 ], [ %1393, %1420 ], [ %1393, %1410 ]
  %1425 = phi i64 [ %1392, %1417 ], [ %1422, %1420 ], [ %1392, %1410 ]
  %1426 = phi ptr [ %1391, %1417 ], [ %1391, %1420 ], [ %1412, %1410 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #14
  %1427 = add nsw i32 %1390, -1
  %1428 = icmp sgt i32 %1390, 0
  br i1 %1428, label %1389, label %2283, !llvm.loop !209

1429:                                             ; preds = %138, %138
  %1430 = add nsw i32 %139, -1
  %1431 = icmp sgt i32 %139, 0
  br i1 %1431, label %1432, label %2283

1432:                                             ; preds = %1429
  %1433 = and i8 %88, 1
  %1434 = icmp eq i8 %1433, 0
  %1435 = icmp eq i32 %86, 366
  %1436 = icmp eq i32 %92, 0
  %1437 = icmp sgt i32 %92, 64
  br label %1438

1438:                                             ; preds = %1432, %1472
  %1439 = phi i32 [ %1430, %1432 ], [ %1476, %1472 ]
  %1440 = phi ptr [ %140, %1432 ], [ %1475, %1472 ]
  %1441 = phi i64 [ %91, %1432 ], [ %1474, %1472 ]
  %1442 = phi double [ %90, %1432 ], [ %1473, %1472 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %15) #14
  br i1 %1434, label %1445, label %1443

1443:                                             ; preds = %1438
  %1444 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %6, ptr noundef %3, ptr noundef nonnull %15, i32 noundef 2, i32 noundef %86) #15
  br label %1454

1445:                                             ; preds = %1438
  %1446 = load ptr, ptr %6, align 8, !tbaa !152
  br i1 %142, label %1447, label %1449

1447:                                             ; preds = %1445
  call fastcc void @S_reverse_copy(ptr noundef %1446, ptr noundef nonnull %15, i64 noundef 2) #15
  %1448 = load ptr, ptr %6, align 8, !tbaa !152
  br label %1451

1449:                                             ; preds = %1445
  %1450 = load i16, ptr %1446, align 1
  store i16 %1450, ptr %15, align 2
  br label %1451

1451:                                             ; preds = %1449, %1447
  %1452 = phi ptr [ %1446, %1449 ], [ %1448, %1447 ]
  %1453 = getelementptr inbounds i8, ptr %1452, i64 2
  store ptr %1453, ptr %6, align 8, !tbaa !152
  br label %1454

1454:                                             ; preds = %1443, %1451
  br i1 %1435, label %1455, label %1458

1455:                                             ; preds = %1454
  %1456 = load i16, ptr %15, align 2, !tbaa !206
  %1457 = call fastcc zeroext i16 @__bswap_16(i16 noundef zeroext %1456) #15
  store i16 %1457, ptr %15, align 2, !tbaa !206
  br label %1458

1458:                                             ; preds = %1455, %1454
  br i1 %1436, label %1459, label %1464

1459:                                             ; preds = %1458
  %1460 = call ptr @Perl_sv_newmortal() #16
  %1461 = getelementptr inbounds ptr, ptr %1440, i64 1
  store ptr %1460, ptr %1461, align 8, !tbaa !152
  %1462 = load i16, ptr %15, align 2, !tbaa !206
  %1463 = sext i16 %1462 to i64
  call void @Perl_sv_setiv(ptr noundef %1460, i64 noundef %1463) #16
  br label %1472

1464:                                             ; preds = %1458
  %1465 = load i16, ptr %15, align 2, !tbaa !206
  br i1 %1437, label %1466, label %1469

1466:                                             ; preds = %1464
  %1467 = sitofp i16 %1465 to double
  %1468 = fadd double %1442, %1467
  br label %1472

1469:                                             ; preds = %1464
  %1470 = sext i16 %1465 to i64
  %1471 = add i64 %1441, %1470
  br label %1472

1472:                                             ; preds = %1466, %1469, %1459
  %1473 = phi double [ %1468, %1466 ], [ %1442, %1469 ], [ %1442, %1459 ]
  %1474 = phi i64 [ %1441, %1466 ], [ %1471, %1469 ], [ %1441, %1459 ]
  %1475 = phi ptr [ %1440, %1466 ], [ %1440, %1469 ], [ %1461, %1459 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #14
  %1476 = add nsw i32 %1439, -1
  %1477 = icmp sgt i32 %1439, 0
  br i1 %1477, label %1438, label %2283, !llvm.loop !210

1478:                                             ; preds = %138, %138
  %1479 = add nsw i32 %139, -1
  %1480 = icmp sgt i32 %139, 0
  br i1 %1480, label %1481, label %2283

1481:                                             ; preds = %1478
  %1482 = and i8 %88, 1
  %1483 = icmp eq i8 %1482, 0
  %1484 = icmp eq i32 %92, 0
  %1485 = icmp sgt i32 %92, 64
  br label %1486

1486:                                             ; preds = %1481, %1516
  %1487 = phi i32 [ %1479, %1481 ], [ %1520, %1516 ]
  %1488 = phi ptr [ %140, %1481 ], [ %1519, %1516 ]
  %1489 = phi i64 [ %91, %1481 ], [ %1518, %1516 ]
  %1490 = phi double [ %90, %1481 ], [ %1517, %1516 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #14
  br i1 %1483, label %1493, label %1491

1491:                                             ; preds = %1486
  %1492 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %6, ptr noundef %3, ptr noundef nonnull %16, i32 noundef 4, i32 noundef %86) #15
  br label %1502

1493:                                             ; preds = %1486
  %1494 = load ptr, ptr %6, align 8, !tbaa !152
  br i1 %142, label %1495, label %1497

1495:                                             ; preds = %1493
  call fastcc void @S_reverse_copy(ptr noundef %1494, ptr noundef nonnull %16, i64 noundef 4) #15
  %1496 = load ptr, ptr %6, align 8, !tbaa !152
  br label %1499

1497:                                             ; preds = %1493
  %1498 = load i32, ptr %1494, align 1
  store i32 %1498, ptr %16, align 4
  br label %1499

1499:                                             ; preds = %1497, %1495
  %1500 = phi ptr [ %1494, %1497 ], [ %1496, %1495 ]
  %1501 = getelementptr inbounds i8, ptr %1500, i64 4
  store ptr %1501, ptr %6, align 8, !tbaa !152
  br label %1502

1502:                                             ; preds = %1491, %1499
  br i1 %1484, label %1503, label %1508

1503:                                             ; preds = %1502
  %1504 = call ptr @Perl_sv_newmortal() #16
  %1505 = getelementptr inbounds ptr, ptr %1488, i64 1
  store ptr %1504, ptr %1505, align 8, !tbaa !152
  %1506 = load i32, ptr %16, align 4, !tbaa !166
  %1507 = sext i32 %1506 to i64
  call void @Perl_sv_setiv(ptr noundef %1504, i64 noundef %1507) #16
  br label %1516

1508:                                             ; preds = %1502
  %1509 = load i32, ptr %16, align 4, !tbaa !166
  br i1 %1485, label %1510, label %1513

1510:                                             ; preds = %1508
  %1511 = sitofp i32 %1509 to double
  %1512 = fadd double %1490, %1511
  br label %1516

1513:                                             ; preds = %1508
  %1514 = sext i32 %1509 to i64
  %1515 = add i64 %1489, %1514
  br label %1516

1516:                                             ; preds = %1510, %1513, %1503
  %1517 = phi double [ %1512, %1510 ], [ %1490, %1513 ], [ %1490, %1503 ]
  %1518 = phi i64 [ %1489, %1510 ], [ %1515, %1513 ], [ %1489, %1503 ]
  %1519 = phi ptr [ %1488, %1510 ], [ %1488, %1513 ], [ %1505, %1503 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #14
  %1520 = add nsw i32 %1487, -1
  %1521 = icmp sgt i32 %1487, 0
  br i1 %1521, label %1486, label %2283, !llvm.loop !211

1522:                                             ; preds = %138, %138
  %1523 = add nsw i32 %139, -1
  %1524 = icmp sgt i32 %139, 0
  br i1 %1524, label %1525, label %2283

1525:                                             ; preds = %1522
  %1526 = and i8 %88, 1
  %1527 = icmp eq i8 %1526, 0
  %1528 = icmp eq i32 %92, 0
  %1529 = icmp sgt i32 %92, 64
  br label %1530

1530:                                             ; preds = %1525, %1560
  %1531 = phi i32 [ %1523, %1525 ], [ %1564, %1560 ]
  %1532 = phi ptr [ %140, %1525 ], [ %1563, %1560 ]
  %1533 = phi i64 [ %91, %1525 ], [ %1562, %1560 ]
  %1534 = phi double [ %90, %1525 ], [ %1561, %1560 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #14
  br i1 %1527, label %1537, label %1535

1535:                                             ; preds = %1530
  %1536 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %6, ptr noundef %3, ptr noundef nonnull %17, i32 noundef 4, i32 noundef %86) #15
  br label %1546

1537:                                             ; preds = %1530
  %1538 = load ptr, ptr %6, align 8, !tbaa !152
  br i1 %142, label %1539, label %1541

1539:                                             ; preds = %1537
  call fastcc void @S_reverse_copy(ptr noundef %1538, ptr noundef nonnull %17, i64 noundef 4) #15
  %1540 = load ptr, ptr %6, align 8, !tbaa !152
  br label %1543

1541:                                             ; preds = %1537
  %1542 = load i32, ptr %1538, align 1
  store i32 %1542, ptr %17, align 4
  br label %1543

1543:                                             ; preds = %1541, %1539
  %1544 = phi ptr [ %1538, %1541 ], [ %1540, %1539 ]
  %1545 = getelementptr inbounds i8, ptr %1544, i64 4
  store ptr %1545, ptr %6, align 8, !tbaa !152
  br label %1546

1546:                                             ; preds = %1535, %1543
  br i1 %1528, label %1547, label %1552

1547:                                             ; preds = %1546
  %1548 = call ptr @Perl_sv_newmortal() #16
  %1549 = getelementptr inbounds ptr, ptr %1532, i64 1
  store ptr %1548, ptr %1549, align 8, !tbaa !152
  %1550 = load i32, ptr %17, align 4, !tbaa !166
  %1551 = zext i32 %1550 to i64
  call void @Perl_sv_setuv(ptr noundef %1548, i64 noundef %1551) #16
  br label %1560

1552:                                             ; preds = %1546
  %1553 = load i32, ptr %17, align 4, !tbaa !166
  br i1 %1529, label %1554, label %1557

1554:                                             ; preds = %1552
  %1555 = uitofp i32 %1553 to double
  %1556 = fadd double %1534, %1555
  br label %1560

1557:                                             ; preds = %1552
  %1558 = zext i32 %1553 to i64
  %1559 = add i64 %1533, %1558
  br label %1560

1560:                                             ; preds = %1554, %1557, %1547
  %1561 = phi double [ %1556, %1554 ], [ %1534, %1557 ], [ %1534, %1547 ]
  %1562 = phi i64 [ %1533, %1554 ], [ %1559, %1557 ], [ %1533, %1547 ]
  %1563 = phi ptr [ %1532, %1554 ], [ %1532, %1557 ], [ %1549, %1547 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #14
  %1564 = add nsw i32 %1531, -1
  %1565 = icmp sgt i32 %1531, 0
  br i1 %1565, label %1530, label %2283, !llvm.loop !212

1566:                                             ; preds = %231, %1594
  %1567 = phi i32 [ %229, %231 ], [ %1598, %1594 ]
  %1568 = phi ptr [ %140, %231 ], [ %1597, %1594 ]
  %1569 = phi i64 [ %91, %231 ], [ %1596, %1594 ]
  %1570 = phi double [ %90, %231 ], [ %1595, %1594 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #14
  br i1 %233, label %1573, label %1571

1571:                                             ; preds = %1566
  %1572 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %6, ptr noundef %3, ptr noundef nonnull %18, i32 noundef 8, i32 noundef %86) #15
  br label %1582

1573:                                             ; preds = %1566
  %1574 = load ptr, ptr %6, align 8, !tbaa !152
  br i1 %142, label %1575, label %1577

1575:                                             ; preds = %1573
  call fastcc void @S_reverse_copy(ptr noundef %1574, ptr noundef nonnull %18, i64 noundef 8) #15
  %1576 = load ptr, ptr %6, align 8, !tbaa !152
  br label %1579

1577:                                             ; preds = %1573
  %1578 = load i64, ptr %1574, align 1
  store i64 %1578, ptr %18, align 8
  br label %1579

1579:                                             ; preds = %1577, %1575
  %1580 = phi ptr [ %1574, %1577 ], [ %1576, %1575 ]
  %1581 = getelementptr inbounds i8, ptr %1580, i64 8
  store ptr %1581, ptr %6, align 8, !tbaa !152
  br label %1582

1582:                                             ; preds = %1571, %1579
  br i1 %234, label %1583, label %1587

1583:                                             ; preds = %1582
  %1584 = call ptr @Perl_sv_newmortal() #16
  %1585 = getelementptr inbounds ptr, ptr %1568, i64 1
  store ptr %1584, ptr %1585, align 8, !tbaa !152
  %1586 = load i64, ptr %18, align 8, !tbaa !129
  call void @Perl_sv_setiv(ptr noundef %1584, i64 noundef %1586) #16
  br label %1594

1587:                                             ; preds = %1582
  %1588 = load i64, ptr %18, align 8, !tbaa !129
  br i1 %235, label %1589, label %1592

1589:                                             ; preds = %1587
  %1590 = sitofp i64 %1588 to double
  %1591 = fadd double %1570, %1590
  br label %1594

1592:                                             ; preds = %1587
  %1593 = add i64 %1588, %1569
  br label %1594

1594:                                             ; preds = %1589, %1592, %1583
  %1595 = phi double [ %1591, %1589 ], [ %1570, %1592 ], [ %1570, %1583 ]
  %1596 = phi i64 [ %1569, %1589 ], [ %1593, %1592 ], [ %1569, %1583 ]
  %1597 = phi ptr [ %1568, %1589 ], [ %1568, %1592 ], [ %1585, %1583 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #14
  %1598 = add nsw i32 %1567, -1
  %1599 = icmp sgt i32 %1567, 0
  br i1 %1599, label %1566, label %2283, !llvm.loop !213

1600:                                             ; preds = %223, %1628
  %1601 = phi i32 [ %221, %223 ], [ %1632, %1628 ]
  %1602 = phi ptr [ %140, %223 ], [ %1631, %1628 ]
  %1603 = phi i64 [ %91, %223 ], [ %1630, %1628 ]
  %1604 = phi double [ %90, %223 ], [ %1629, %1628 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #14
  br i1 %225, label %1607, label %1605

1605:                                             ; preds = %1600
  %1606 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %6, ptr noundef %3, ptr noundef nonnull %19, i32 noundef 8, i32 noundef %86) #15
  br label %1616

1607:                                             ; preds = %1600
  %1608 = load ptr, ptr %6, align 8, !tbaa !152
  br i1 %142, label %1609, label %1611

1609:                                             ; preds = %1607
  call fastcc void @S_reverse_copy(ptr noundef %1608, ptr noundef nonnull %19, i64 noundef 8) #15
  %1610 = load ptr, ptr %6, align 8, !tbaa !152
  br label %1613

1611:                                             ; preds = %1607
  %1612 = load i64, ptr %1608, align 1
  store i64 %1612, ptr %19, align 8
  br label %1613

1613:                                             ; preds = %1611, %1609
  %1614 = phi ptr [ %1608, %1611 ], [ %1610, %1609 ]
  %1615 = getelementptr inbounds i8, ptr %1614, i64 8
  store ptr %1615, ptr %6, align 8, !tbaa !152
  br label %1616

1616:                                             ; preds = %1605, %1613
  br i1 %226, label %1617, label %1621

1617:                                             ; preds = %1616
  %1618 = call ptr @Perl_sv_newmortal() #16
  %1619 = getelementptr inbounds ptr, ptr %1602, i64 1
  store ptr %1618, ptr %1619, align 8, !tbaa !152
  %1620 = load i64, ptr %19, align 8, !tbaa !129
  call void @Perl_sv_setuv(ptr noundef %1618, i64 noundef %1620) #16
  br label %1628

1621:                                             ; preds = %1616
  %1622 = load i64, ptr %19, align 8, !tbaa !129
  br i1 %227, label %1623, label %1626

1623:                                             ; preds = %1621
  %1624 = uitofp i64 %1622 to double
  %1625 = fadd double %1604, %1624
  br label %1628

1626:                                             ; preds = %1621
  %1627 = add i64 %1622, %1603
  br label %1628

1628:                                             ; preds = %1623, %1626, %1617
  %1629 = phi double [ %1625, %1623 ], [ %1604, %1626 ], [ %1604, %1617 ]
  %1630 = phi i64 [ %1603, %1623 ], [ %1627, %1626 ], [ %1603, %1617 ]
  %1631 = phi ptr [ %1602, %1623 ], [ %1602, %1626 ], [ %1619, %1617 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #14
  %1632 = add nsw i32 %1601, -1
  %1633 = icmp sgt i32 %1601, 0
  br i1 %1633, label %1600, label %2283, !llvm.loop !214

1634:                                             ; preds = %215, %1662
  %1635 = phi i32 [ %213, %215 ], [ %1666, %1662 ]
  %1636 = phi ptr [ %140, %215 ], [ %1665, %1662 ]
  %1637 = phi i64 [ %91, %215 ], [ %1664, %1662 ]
  %1638 = phi double [ %90, %215 ], [ %1663, %1662 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #14
  br i1 %217, label %1641, label %1639

1639:                                             ; preds = %1634
  %1640 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %6, ptr noundef %3, ptr noundef nonnull %20, i32 noundef 8, i32 noundef %86) #15
  br label %1650

1641:                                             ; preds = %1634
  %1642 = load ptr, ptr %6, align 8, !tbaa !152
  br i1 %142, label %1643, label %1645

1643:                                             ; preds = %1641
  call fastcc void @S_reverse_copy(ptr noundef %1642, ptr noundef nonnull %20, i64 noundef 8) #15
  %1644 = load ptr, ptr %6, align 8, !tbaa !152
  br label %1647

1645:                                             ; preds = %1641
  %1646 = load i64, ptr %1642, align 1
  store i64 %1646, ptr %20, align 8
  br label %1647

1647:                                             ; preds = %1645, %1643
  %1648 = phi ptr [ %1642, %1645 ], [ %1644, %1643 ]
  %1649 = getelementptr inbounds i8, ptr %1648, i64 8
  store ptr %1649, ptr %6, align 8, !tbaa !152
  br label %1650

1650:                                             ; preds = %1639, %1647
  br i1 %218, label %1651, label %1655

1651:                                             ; preds = %1650
  %1652 = call ptr @Perl_sv_newmortal() #16
  %1653 = getelementptr inbounds ptr, ptr %1636, i64 1
  store ptr %1652, ptr %1653, align 8, !tbaa !152
  %1654 = load i64, ptr %20, align 8, !tbaa !129
  call void @Perl_sv_setiv(ptr noundef %1652, i64 noundef %1654) #16
  br label %1662

1655:                                             ; preds = %1650
  %1656 = load i64, ptr %20, align 8, !tbaa !129
  br i1 %219, label %1657, label %1660

1657:                                             ; preds = %1655
  %1658 = sitofp i64 %1656 to double
  %1659 = fadd double %1638, %1658
  br label %1662

1660:                                             ; preds = %1655
  %1661 = add i64 %1656, %1637
  br label %1662

1662:                                             ; preds = %1657, %1660, %1651
  %1663 = phi double [ %1659, %1657 ], [ %1638, %1660 ], [ %1638, %1651 ]
  %1664 = phi i64 [ %1637, %1657 ], [ %1661, %1660 ], [ %1637, %1651 ]
  %1665 = phi ptr [ %1636, %1657 ], [ %1636, %1660 ], [ %1653, %1651 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #14
  %1666 = add nsw i32 %1635, -1
  %1667 = icmp sgt i32 %1635, 0
  br i1 %1667, label %1634, label %2283, !llvm.loop !215

1668:                                             ; preds = %207, %1698
  %1669 = phi i32 [ %205, %207 ], [ %1702, %1698 ]
  %1670 = phi ptr [ %140, %207 ], [ %1701, %1698 ]
  %1671 = phi i64 [ %91, %207 ], [ %1700, %1698 ]
  %1672 = phi double [ %90, %207 ], [ %1699, %1698 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #14
  br i1 %209, label %1675, label %1673

1673:                                             ; preds = %1668
  %1674 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %6, ptr noundef %3, ptr noundef nonnull %21, i32 noundef 4, i32 noundef %86) #15
  br label %1684

1675:                                             ; preds = %1668
  %1676 = load ptr, ptr %6, align 8, !tbaa !152
  br i1 %142, label %1677, label %1679

1677:                                             ; preds = %1675
  call fastcc void @S_reverse_copy(ptr noundef %1676, ptr noundef nonnull %21, i64 noundef 4) #15
  %1678 = load ptr, ptr %6, align 8, !tbaa !152
  br label %1681

1679:                                             ; preds = %1675
  %1680 = load i32, ptr %1676, align 1
  store i32 %1680, ptr %21, align 4
  br label %1681

1681:                                             ; preds = %1679, %1677
  %1682 = phi ptr [ %1676, %1679 ], [ %1678, %1677 ]
  %1683 = getelementptr inbounds i8, ptr %1682, i64 4
  store ptr %1683, ptr %6, align 8, !tbaa !152
  br label %1684

1684:                                             ; preds = %1673, %1681
  br i1 %210, label %1685, label %1690

1685:                                             ; preds = %1684
  %1686 = call ptr @Perl_sv_newmortal() #16
  %1687 = getelementptr inbounds ptr, ptr %1670, i64 1
  store ptr %1686, ptr %1687, align 8, !tbaa !152
  %1688 = load i32, ptr %21, align 4, !tbaa !166
  %1689 = sext i32 %1688 to i64
  call void @Perl_sv_setiv(ptr noundef %1686, i64 noundef %1689) #16
  br label %1698

1690:                                             ; preds = %1684
  %1691 = load i32, ptr %21, align 4, !tbaa !166
  br i1 %211, label %1692, label %1695

1692:                                             ; preds = %1690
  %1693 = sitofp i32 %1691 to double
  %1694 = fadd double %1672, %1693
  br label %1698

1695:                                             ; preds = %1690
  %1696 = sext i32 %1691 to i64
  %1697 = add i64 %1671, %1696
  br label %1698

1698:                                             ; preds = %1692, %1695, %1685
  %1699 = phi double [ %1694, %1692 ], [ %1672, %1695 ], [ %1672, %1685 ]
  %1700 = phi i64 [ %1671, %1692 ], [ %1697, %1695 ], [ %1671, %1685 ]
  %1701 = phi ptr [ %1670, %1692 ], [ %1670, %1695 ], [ %1687, %1685 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #14
  %1702 = add nsw i32 %1669, -1
  %1703 = icmp sgt i32 %1669, 0
  br i1 %1703, label %1668, label %2283, !llvm.loop !216

1704:                                             ; preds = %199, %1732
  %1705 = phi i32 [ %197, %199 ], [ %1736, %1732 ]
  %1706 = phi ptr [ %140, %199 ], [ %1735, %1732 ]
  %1707 = phi i64 [ %91, %199 ], [ %1734, %1732 ]
  %1708 = phi double [ %90, %199 ], [ %1733, %1732 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %22) #14
  br i1 %201, label %1711, label %1709

1709:                                             ; preds = %1704
  %1710 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %6, ptr noundef %3, ptr noundef nonnull %22, i32 noundef 8, i32 noundef %86) #15
  br label %1720

1711:                                             ; preds = %1704
  %1712 = load ptr, ptr %6, align 8, !tbaa !152
  br i1 %142, label %1713, label %1715

1713:                                             ; preds = %1711
  call fastcc void @S_reverse_copy(ptr noundef %1712, ptr noundef nonnull %22, i64 noundef 8) #15
  %1714 = load ptr, ptr %6, align 8, !tbaa !152
  br label %1717

1715:                                             ; preds = %1711
  %1716 = load i64, ptr %1712, align 1
  store i64 %1716, ptr %22, align 8
  br label %1717

1717:                                             ; preds = %1715, %1713
  %1718 = phi ptr [ %1712, %1715 ], [ %1714, %1713 ]
  %1719 = getelementptr inbounds i8, ptr %1718, i64 8
  store ptr %1719, ptr %6, align 8, !tbaa !152
  br label %1720

1720:                                             ; preds = %1709, %1717
  br i1 %202, label %1721, label %1725

1721:                                             ; preds = %1720
  %1722 = call ptr @Perl_sv_newmortal() #16
  %1723 = getelementptr inbounds ptr, ptr %1706, i64 1
  store ptr %1722, ptr %1723, align 8, !tbaa !152
  %1724 = load i64, ptr %22, align 8, !tbaa !129
  call void @Perl_sv_setuv(ptr noundef %1722, i64 noundef %1724) #16
  br label %1732

1725:                                             ; preds = %1720
  %1726 = load i64, ptr %22, align 8, !tbaa !129
  br i1 %203, label %1727, label %1730

1727:                                             ; preds = %1725
  %1728 = uitofp i64 %1726 to double
  %1729 = fadd double %1708, %1728
  br label %1732

1730:                                             ; preds = %1725
  %1731 = add i64 %1726, %1707
  br label %1732

1732:                                             ; preds = %1727, %1730, %1721
  %1733 = phi double [ %1729, %1727 ], [ %1708, %1730 ], [ %1708, %1721 ]
  %1734 = phi i64 [ %1707, %1727 ], [ %1731, %1730 ], [ %1707, %1721 ]
  %1735 = phi ptr [ %1706, %1727 ], [ %1706, %1730 ], [ %1723, %1721 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %22) #14
  %1736 = add nsw i32 %1705, -1
  %1737 = icmp sgt i32 %1705, 0
  br i1 %1737, label %1704, label %2283, !llvm.loop !217

1738:                                             ; preds = %138, %138, %138
  %1739 = add nsw i32 %139, -1
  %1740 = icmp sgt i32 %139, 0
  br i1 %1740, label %1741, label %2283

1741:                                             ; preds = %1738
  %1742 = and i8 %88, 1
  %1743 = icmp eq i8 %1742, 0
  %1744 = icmp eq i32 %86, 78
  %1745 = icmp eq i32 %92, 0
  %1746 = icmp sgt i32 %92, 64
  br label %1747

1747:                                             ; preds = %1741, %1781
  %1748 = phi i32 [ %1739, %1741 ], [ %1785, %1781 ]
  %1749 = phi ptr [ %140, %1741 ], [ %1784, %1781 ]
  %1750 = phi i64 [ %91, %1741 ], [ %1783, %1781 ]
  %1751 = phi double [ %90, %1741 ], [ %1782, %1781 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %23) #14
  br i1 %1743, label %1754, label %1752

1752:                                             ; preds = %1747
  %1753 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %6, ptr noundef %3, ptr noundef nonnull %23, i32 noundef 4, i32 noundef %86) #15
  br label %1763

1754:                                             ; preds = %1747
  %1755 = load ptr, ptr %6, align 8, !tbaa !152
  br i1 %142, label %1756, label %1758

1756:                                             ; preds = %1754
  call fastcc void @S_reverse_copy(ptr noundef %1755, ptr noundef nonnull %23, i64 noundef 4) #15
  %1757 = load ptr, ptr %6, align 8, !tbaa !152
  br label %1760

1758:                                             ; preds = %1754
  %1759 = load i32, ptr %1755, align 1
  store i32 %1759, ptr %23, align 4
  br label %1760

1760:                                             ; preds = %1758, %1756
  %1761 = phi ptr [ %1755, %1758 ], [ %1757, %1756 ]
  %1762 = getelementptr inbounds i8, ptr %1761, i64 4
  store ptr %1762, ptr %6, align 8, !tbaa !152
  br label %1763

1763:                                             ; preds = %1752, %1760
  br i1 %1744, label %1764, label %1767

1764:                                             ; preds = %1763
  %1765 = load i32, ptr %23, align 4, !tbaa !166
  %1766 = call fastcc i32 @__bswap_32(i32 noundef %1765) #15
  store i32 %1766, ptr %23, align 4, !tbaa !166
  br label %1767

1767:                                             ; preds = %1764, %1763
  br i1 %1745, label %1768, label %1773

1768:                                             ; preds = %1767
  %1769 = call ptr @Perl_sv_newmortal() #16
  %1770 = getelementptr inbounds ptr, ptr %1749, i64 1
  store ptr %1769, ptr %1770, align 8, !tbaa !152
  %1771 = load i32, ptr %23, align 4, !tbaa !166
  %1772 = zext i32 %1771 to i64
  call void @Perl_sv_setuv(ptr noundef %1769, i64 noundef %1772) #16
  br label %1781

1773:                                             ; preds = %1767
  %1774 = load i32, ptr %23, align 4, !tbaa !166
  br i1 %1746, label %1775, label %1778

1775:                                             ; preds = %1773
  %1776 = uitofp i32 %1774 to double
  %1777 = fadd double %1751, %1776
  br label %1781

1778:                                             ; preds = %1773
  %1779 = zext i32 %1774 to i64
  %1780 = add i64 %1750, %1779
  br label %1781

1781:                                             ; preds = %1775, %1778, %1768
  %1782 = phi double [ %1777, %1775 ], [ %1751, %1778 ], [ %1751, %1768 ]
  %1783 = phi i64 [ %1750, %1775 ], [ %1780, %1778 ], [ %1750, %1768 ]
  %1784 = phi ptr [ %1749, %1775 ], [ %1749, %1778 ], [ %1770, %1768 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %23) #14
  %1785 = add nsw i32 %1748, -1
  %1786 = icmp sgt i32 %1748, 0
  br i1 %1786, label %1747, label %2283, !llvm.loop !218

1787:                                             ; preds = %138, %138
  %1788 = add nsw i32 %139, -1
  %1789 = icmp sgt i32 %139, 0
  br i1 %1789, label %1790, label %2283

1790:                                             ; preds = %1787
  %1791 = and i8 %88, 1
  %1792 = icmp eq i8 %1791, 0
  %1793 = icmp eq i32 %86, 334
  %1794 = icmp eq i32 %92, 0
  %1795 = icmp sgt i32 %92, 64
  br label %1796

1796:                                             ; preds = %1790, %1830
  %1797 = phi i32 [ %1788, %1790 ], [ %1834, %1830 ]
  %1798 = phi ptr [ %140, %1790 ], [ %1833, %1830 ]
  %1799 = phi i64 [ %91, %1790 ], [ %1832, %1830 ]
  %1800 = phi double [ %90, %1790 ], [ %1831, %1830 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %24) #14
  br i1 %1792, label %1803, label %1801

1801:                                             ; preds = %1796
  %1802 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %6, ptr noundef %3, ptr noundef nonnull %24, i32 noundef 4, i32 noundef %86) #15
  br label %1812

1803:                                             ; preds = %1796
  %1804 = load ptr, ptr %6, align 8, !tbaa !152
  br i1 %142, label %1805, label %1807

1805:                                             ; preds = %1803
  call fastcc void @S_reverse_copy(ptr noundef %1804, ptr noundef nonnull %24, i64 noundef 4) #15
  %1806 = load ptr, ptr %6, align 8, !tbaa !152
  br label %1809

1807:                                             ; preds = %1803
  %1808 = load i32, ptr %1804, align 1
  store i32 %1808, ptr %24, align 4
  br label %1809

1809:                                             ; preds = %1807, %1805
  %1810 = phi ptr [ %1804, %1807 ], [ %1806, %1805 ]
  %1811 = getelementptr inbounds i8, ptr %1810, i64 4
  store ptr %1811, ptr %6, align 8, !tbaa !152
  br label %1812

1812:                                             ; preds = %1801, %1809
  br i1 %1793, label %1813, label %1816

1813:                                             ; preds = %1812
  %1814 = load i32, ptr %24, align 4, !tbaa !166
  %1815 = call fastcc i32 @__bswap_32(i32 noundef %1814) #15
  store i32 %1815, ptr %24, align 4, !tbaa !166
  br label %1816

1816:                                             ; preds = %1813, %1812
  br i1 %1794, label %1817, label %1822

1817:                                             ; preds = %1816
  %1818 = call ptr @Perl_sv_newmortal() #16
  %1819 = getelementptr inbounds ptr, ptr %1798, i64 1
  store ptr %1818, ptr %1819, align 8, !tbaa !152
  %1820 = load i32, ptr %24, align 4, !tbaa !166
  %1821 = sext i32 %1820 to i64
  call void @Perl_sv_setiv(ptr noundef %1818, i64 noundef %1821) #16
  br label %1830

1822:                                             ; preds = %1816
  %1823 = load i32, ptr %24, align 4, !tbaa !166
  br i1 %1795, label %1824, label %1827

1824:                                             ; preds = %1822
  %1825 = sitofp i32 %1823 to double
  %1826 = fadd double %1800, %1825
  br label %1830

1827:                                             ; preds = %1822
  %1828 = sext i32 %1823 to i64
  %1829 = add i64 %1799, %1828
  br label %1830

1830:                                             ; preds = %1824, %1827, %1817
  %1831 = phi double [ %1826, %1824 ], [ %1800, %1827 ], [ %1800, %1817 ]
  %1832 = phi i64 [ %1799, %1824 ], [ %1829, %1827 ], [ %1799, %1817 ]
  %1833 = phi ptr [ %1798, %1824 ], [ %1798, %1827 ], [ %1819, %1817 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %24) #14
  %1834 = add nsw i32 %1797, -1
  %1835 = icmp sgt i32 %1797, 0
  br i1 %1835, label %1796, label %2283, !llvm.loop !219

1836:                                             ; preds = %193, %1850
  %1837 = phi i32 [ %191, %193 ], [ %1855, %1850 ]
  %1838 = phi ptr [ %140, %193 ], [ %1854, %1850 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %25) #14
  br i1 %195, label %1841, label %1839

1839:                                             ; preds = %1836
  %1840 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %6, ptr noundef %3, ptr noundef nonnull %25, i32 noundef 8, i32 noundef %86) #15
  br label %1850

1841:                                             ; preds = %1836
  %1842 = load ptr, ptr %6, align 8, !tbaa !152
  br i1 %142, label %1843, label %1845

1843:                                             ; preds = %1841
  call fastcc void @S_reverse_copy(ptr noundef %1842, ptr noundef nonnull %25, i64 noundef 8) #15
  %1844 = load ptr, ptr %6, align 8, !tbaa !152
  br label %1847

1845:                                             ; preds = %1841
  %1846 = load i64, ptr %1842, align 1
  store i64 %1846, ptr %25, align 8
  br label %1847

1847:                                             ; preds = %1845, %1843
  %1848 = phi ptr [ %1842, %1845 ], [ %1844, %1843 ]
  %1849 = getelementptr inbounds i8, ptr %1848, i64 8
  store ptr %1849, ptr %6, align 8, !tbaa !152
  br label %1850

1850:                                             ; preds = %1839, %1847
  %1851 = load ptr, ptr %25, align 8, !tbaa !152
  %1852 = call ptr @Perl_newSVpv(ptr noundef %1851, i64 noundef 0) #16
  %1853 = call ptr @Perl_sv_2mortal(ptr noundef %1852) #16
  %1854 = getelementptr inbounds ptr, ptr %1838, i64 1
  store ptr %1853, ptr %1854, align 8, !tbaa !152
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %25) #14
  %1855 = add nsw i32 %1837, -1
  %1856 = icmp sgt i32 %1837, 0
  br i1 %1856, label %1836, label %2283, !llvm.loop !220

1857:                                             ; preds = %187, %1923
  %1858 = phi ptr [ %184, %187 ], [ %1930, %1923 ]
  %1859 = phi ptr [ %140, %187 ], [ %1928, %1923 ]
  %1860 = phi ptr [ %93, %187 ], [ %1927, %1923 ]
  %1861 = phi i32 [ 0, %187 ], [ %1926, %1923 ]
  %1862 = phi i64 [ 0, %187 ], [ %1925, %1923 ]
  %1863 = phi i32 [ %139, %187 ], [ %1924, %1923 ]
  br i1 %189, label %1866, label %1864

1864:                                             ; preds = %1857
  %1865 = call fastcc zeroext i8 @utf8_to_byte(ptr noundef nonnull %6, ptr noundef nonnull %3, i32 noundef %86) #15
  br label %1869

1866:                                             ; preds = %1857
  %1867 = getelementptr inbounds i8, ptr %1858, i64 1
  store ptr %1867, ptr %6, align 8, !tbaa !152
  %1868 = load i8, ptr %1858, align 1, !tbaa !142
  br label %1869

1869:                                             ; preds = %1866, %1864
  %1870 = phi i8 [ %1865, %1864 ], [ %1868, %1866 ]
  %1871 = shl i64 %1862, 7
  %1872 = and i8 %1870, 127
  %1873 = zext nneg i8 %1872 to i64
  %1874 = or disjoint i64 %1871, %1873
  %1875 = icmp sgt i8 %1870, -1
  br i1 %1875, label %1876, label %1880

1876:                                             ; preds = %1869
  %1877 = call ptr @Perl_sv_newmortal() #16
  %1878 = getelementptr inbounds ptr, ptr %1859, i64 1
  store ptr %1877, ptr %1878, align 8, !tbaa !152
  call void @Perl_sv_setuv(ptr noundef %1877, i64 noundef %1874) #16
  %1879 = add nsw i32 %1863, -1
  br label %1923, !llvm.loop !221

1880:                                             ; preds = %1869
  %1881 = add i32 %1861, 1
  %1882 = icmp ugt i32 %1881, 7
  br i1 %1882, label %1883, label %1923

1883:                                             ; preds = %1880
  %1884 = call ptr (ptr, ...) @Perl_newSVpvf(ptr noundef nonnull @.str.9, i32 noundef 20, i64 noundef %1874) #16
  br label %1885

1885:                                             ; preds = %1895, %1883
  %1886 = phi ptr [ %1884, %1883 ], [ %1898, %1895 ]
  %1887 = load ptr, ptr %6, align 8, !tbaa !152
  %1888 = icmp ult ptr %1887, %3
  br i1 %1888, label %1889, label %1900

1889:                                             ; preds = %1885
  br i1 %189, label %1892, label %1890

1890:                                             ; preds = %1889
  %1891 = call fastcc zeroext i8 @utf8_to_byte(ptr noundef nonnull %6, ptr noundef nonnull %3, i32 noundef %86) #15
  br label %1895

1892:                                             ; preds = %1889
  %1893 = getelementptr inbounds i8, ptr %1887, i64 1
  store ptr %1893, ptr %6, align 8, !tbaa !152
  %1894 = load i8, ptr %1887, align 1, !tbaa !142
  br label %1895

1895:                                             ; preds = %1892, %1890
  %1896 = phi i8 [ %1891, %1890 ], [ %1894, %1892 ]
  %1897 = and i8 %1896, 127
  %1898 = call fastcc ptr @S_mul128(ptr noundef %1886, i8 noundef zeroext %1897) #15
  %1899 = icmp sgt i8 %1896, -1
  br i1 %1899, label %1900, label %1885, !llvm.loop !222

1900:                                             ; preds = %1895, %1885
  %1901 = phi i32 [ %1881, %1885 ], [ 0, %1895 ]
  %1902 = phi ptr [ %1886, %1885 ], [ %1898, %1895 ]
  %1903 = getelementptr inbounds %struct.sv, ptr %1902, i64 0, i32 2
  %1904 = load i32, ptr %1903, align 4, !tbaa !185
  %1905 = and i32 %1904, 2098176
  %1906 = icmp eq i32 %1905, 1024
  br i1 %1906, label %1907, label %1910

1907:                                             ; preds = %1900
  %1908 = getelementptr inbounds %struct.sv, ptr %1902, i64 0, i32 3
  %1909 = load ptr, ptr %1908, align 8, !tbaa !142
  br label %1912

1910:                                             ; preds = %1900
  %1911 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %1902, ptr noundef null, i32 noundef 34) #16
  br label %1912

1912:                                             ; preds = %1910, %1907
  %1913 = phi ptr [ %1911, %1910 ], [ %1909, %1907 ]
  br label %1914

1914:                                             ; preds = %1912, %1914
  %1915 = phi ptr [ %1918, %1914 ], [ %1913, %1912 ]
  %1916 = load i8, ptr %1915, align 1, !tbaa !142
  %1917 = icmp eq i8 %1916, 48
  %1918 = getelementptr inbounds i8, ptr %1915, i64 1
  br i1 %1917, label %1914, label %1919, !llvm.loop !223

1919:                                             ; preds = %1914
  call void @Perl_sv_chop(ptr noundef %1902, ptr noundef nonnull %1915) #16
  %1920 = call ptr @Perl_sv_2mortal(ptr noundef %1902) #16
  %1921 = getelementptr inbounds ptr, ptr %1859, i64 1
  store ptr %1920, ptr %1921, align 8, !tbaa !152
  %1922 = add nsw i32 %1863, -1
  br label %1923

1923:                                             ; preds = %1880, %1919, %1876
  %1924 = phi i32 [ %1879, %1876 ], [ %1922, %1919 ], [ %1863, %1880 ]
  %1925 = phi i64 [ 0, %1876 ], [ 0, %1919 ], [ %1874, %1880 ]
  %1926 = phi i32 [ 0, %1876 ], [ %1901, %1919 ], [ %1881, %1880 ]
  %1927 = phi ptr [ %1860, %1876 ], [ %1902, %1919 ], [ %1860, %1880 ]
  %1928 = phi ptr [ %1878, %1876 ], [ %1921, %1919 ], [ %1859, %1880 ]
  %1929 = icmp sgt i32 %1924, 0
  %1930 = load ptr, ptr %6, align 8
  %1931 = icmp ult ptr %1930, %3
  %1932 = select i1 %1929, i1 %1931, i1 false
  br i1 %1932, label %1857, label %1933

1933:                                             ; preds = %1923
  %1934 = icmp uge ptr %1930, %3
  %1935 = icmp ne i32 %1926, 0
  %1936 = and i1 %1935, %1934
  br i1 %1936, label %1937, label %2283

1937:                                             ; preds = %1933
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.10) #16
  br label %2283

1938:                                             ; preds = %138
  %1939 = load i32, ptr %53, align 8, !tbaa !157
  %1940 = icmp eq i32 %1939, 2
  br i1 %1940, label %1941, label %1942

1941:                                             ; preds = %1938
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.11) #16
  br label %1942

1942:                                             ; preds = %1938, %1941
  %1943 = load ptr, ptr @PL_stack_max, align 8, !tbaa !152
  %1944 = ptrtoint ptr %1943 to i64
  %1945 = ptrtoint ptr %140 to i64
  %1946 = sub i64 %1944, %1945
  %1947 = icmp slt i64 %1946, 8
  br i1 %1947, label %1948, label %1950

1948:                                             ; preds = %1942
  %1949 = call ptr @Perl_stack_grow(ptr noundef %140, ptr noundef %140, i64 noundef 1) #16
  br label %1950

1950:                                             ; preds = %1942, %1948
  %1951 = phi ptr [ %1949, %1948 ], [ %140, %1942 ]
  %1952 = load ptr, ptr %6, align 8, !tbaa !152
  %1953 = getelementptr inbounds i8, ptr %1952, i64 8
  %1954 = icmp ugt ptr %1953, %3
  br i1 %1954, label %2283, label %1955

1955:                                             ; preds = %1950
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %26) #14
  %1956 = and i8 %88, 1
  %1957 = icmp eq i8 %1956, 0
  br i1 %1957, label %1960, label %1958

1958:                                             ; preds = %1955
  %1959 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %6, ptr noundef %3, ptr noundef nonnull %26, i32 noundef 8, i32 noundef %86) #15
  br label %1968

1960:                                             ; preds = %1955
  br i1 %142, label %1961, label %1963

1961:                                             ; preds = %1960
  call fastcc void @S_reverse_copy(ptr noundef %1952, ptr noundef nonnull %26, i64 noundef 8) #15
  %1962 = load ptr, ptr %6, align 8, !tbaa !152
  br label %1965

1963:                                             ; preds = %1960
  %1964 = load i64, ptr %1952, align 1
  store i64 %1964, ptr %26, align 8
  br label %1965

1965:                                             ; preds = %1963, %1961
  %1966 = phi ptr [ %1952, %1963 ], [ %1962, %1961 ]
  %1967 = getelementptr inbounds i8, ptr %1966, i64 8
  store ptr %1967, ptr %6, align 8, !tbaa !152
  br label %1968

1968:                                             ; preds = %1958, %1965
  %1969 = load ptr, ptr %26, align 8, !tbaa !152
  %1970 = sext i32 %139 to i64
  %1971 = call ptr @Perl_newSVpvn_flags(ptr noundef %1969, i64 noundef %1970, i32 noundef 524288) #16
  %1972 = getelementptr inbounds ptr, ptr %1951, i64 1
  store ptr %1971, ptr %1972, align 8, !tbaa !152
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %26) #14
  br label %2283

1973:                                             ; preds = %177, %2001
  %1974 = phi i32 [ %175, %177 ], [ %2005, %2001 ]
  %1975 = phi ptr [ %140, %177 ], [ %2004, %2001 ]
  %1976 = phi i64 [ %91, %177 ], [ %2003, %2001 ]
  %1977 = phi double [ %90, %177 ], [ %2002, %2001 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %27) #14
  br i1 %179, label %1980, label %1978

1978:                                             ; preds = %1973
  %1979 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %6, ptr noundef %3, ptr noundef nonnull %27, i32 noundef 8, i32 noundef %86) #15
  br label %1989

1980:                                             ; preds = %1973
  %1981 = load ptr, ptr %6, align 8, !tbaa !152
  br i1 %142, label %1982, label %1984

1982:                                             ; preds = %1980
  call fastcc void @S_reverse_copy(ptr noundef %1981, ptr noundef nonnull %27, i64 noundef 8) #15
  %1983 = load ptr, ptr %6, align 8, !tbaa !152
  br label %1986

1984:                                             ; preds = %1980
  %1985 = load i64, ptr %1981, align 1
  store i64 %1985, ptr %27, align 8
  br label %1986

1986:                                             ; preds = %1984, %1982
  %1987 = phi ptr [ %1981, %1984 ], [ %1983, %1982 ]
  %1988 = getelementptr inbounds i8, ptr %1987, i64 8
  store ptr %1988, ptr %6, align 8, !tbaa !152
  br label %1989

1989:                                             ; preds = %1978, %1986
  %1990 = load i64, ptr %27, align 8, !tbaa !129
  br i1 %180, label %1991, label %1995

1991:                                             ; preds = %1989
  %1992 = call ptr @Perl_newSViv(i64 noundef %1990) #16
  %1993 = call ptr @Perl_sv_2mortal(ptr noundef %1992) #16
  %1994 = getelementptr inbounds ptr, ptr %1975, i64 1
  store ptr %1993, ptr %1994, align 8, !tbaa !152
  br label %2001

1995:                                             ; preds = %1989
  br i1 %181, label %1996, label %1999

1996:                                             ; preds = %1995
  %1997 = sitofp i64 %1990 to double
  %1998 = fadd double %1977, %1997
  br label %2001

1999:                                             ; preds = %1995
  %2000 = add i64 %1990, %1976
  br label %2001

2001:                                             ; preds = %1996, %1999, %1991
  %2002 = phi double [ %1998, %1996 ], [ %1977, %1999 ], [ %1977, %1991 ]
  %2003 = phi i64 [ %1976, %1996 ], [ %2000, %1999 ], [ %1976, %1991 ]
  %2004 = phi ptr [ %1975, %1996 ], [ %1975, %1999 ], [ %1994, %1991 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %27) #14
  %2005 = add nsw i32 %1974, -1
  %2006 = icmp sgt i32 %1974, 0
  br i1 %2006, label %1973, label %2283, !llvm.loop !224

2007:                                             ; preds = %169, %2035
  %2008 = phi i32 [ %167, %169 ], [ %2039, %2035 ]
  %2009 = phi ptr [ %140, %169 ], [ %2038, %2035 ]
  %2010 = phi i64 [ %91, %169 ], [ %2037, %2035 ]
  %2011 = phi double [ %90, %169 ], [ %2036, %2035 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %28) #14
  br i1 %171, label %2014, label %2012

2012:                                             ; preds = %2007
  %2013 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %6, ptr noundef %3, ptr noundef nonnull %28, i32 noundef 8, i32 noundef %86) #15
  br label %2023

2014:                                             ; preds = %2007
  %2015 = load ptr, ptr %6, align 8, !tbaa !152
  br i1 %142, label %2016, label %2018

2016:                                             ; preds = %2014
  call fastcc void @S_reverse_copy(ptr noundef %2015, ptr noundef nonnull %28, i64 noundef 8) #15
  %2017 = load ptr, ptr %6, align 8, !tbaa !152
  br label %2020

2018:                                             ; preds = %2014
  %2019 = load i64, ptr %2015, align 1
  store i64 %2019, ptr %28, align 8
  br label %2020

2020:                                             ; preds = %2018, %2016
  %2021 = phi ptr [ %2015, %2018 ], [ %2017, %2016 ]
  %2022 = getelementptr inbounds i8, ptr %2021, i64 8
  store ptr %2022, ptr %6, align 8, !tbaa !152
  br label %2023

2023:                                             ; preds = %2012, %2020
  %2024 = load i64, ptr %28, align 8, !tbaa !129
  br i1 %172, label %2025, label %2029

2025:                                             ; preds = %2023
  %2026 = call ptr @Perl_newSVuv(i64 noundef %2024) #16
  %2027 = call ptr @Perl_sv_2mortal(ptr noundef %2026) #16
  %2028 = getelementptr inbounds ptr, ptr %2009, i64 1
  store ptr %2027, ptr %2028, align 8, !tbaa !152
  br label %2035

2029:                                             ; preds = %2023
  br i1 %173, label %2030, label %2033

2030:                                             ; preds = %2029
  %2031 = uitofp i64 %2024 to double
  %2032 = fadd double %2011, %2031
  br label %2035

2033:                                             ; preds = %2029
  %2034 = add i64 %2024, %2010
  br label %2035

2035:                                             ; preds = %2030, %2033, %2025
  %2036 = phi double [ %2032, %2030 ], [ %2011, %2033 ], [ %2011, %2025 ]
  %2037 = phi i64 [ %2010, %2030 ], [ %2034, %2033 ], [ %2010, %2025 ]
  %2038 = phi ptr [ %2009, %2030 ], [ %2009, %2033 ], [ %2028, %2025 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %28) #14
  %2039 = add nsw i32 %2008, -1
  %2040 = icmp sgt i32 %2008, 0
  br i1 %2040, label %2007, label %2283, !llvm.loop !225

2041:                                             ; preds = %162, %2066
  %2042 = phi i32 [ %160, %162 ], [ %2069, %2066 ]
  %2043 = phi ptr [ %140, %162 ], [ %2068, %2066 ]
  %2044 = phi double [ %90, %162 ], [ %2067, %2066 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %29) #14
  br i1 %164, label %2047, label %2045

2045:                                             ; preds = %2041
  %2046 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %6, ptr noundef %3, ptr noundef nonnull %29, i32 noundef 4, i32 noundef %86) #15
  br label %2056

2047:                                             ; preds = %2041
  %2048 = load ptr, ptr %6, align 8, !tbaa !152
  br i1 %142, label %2049, label %2051

2049:                                             ; preds = %2047
  call fastcc void @S_reverse_copy(ptr noundef %2048, ptr noundef nonnull %29, i64 noundef 4) #15
  %2050 = load ptr, ptr %6, align 8, !tbaa !152
  br label %2053

2051:                                             ; preds = %2047
  %2052 = load i32, ptr %2048, align 1
  store i32 %2052, ptr %29, align 4
  br label %2053

2053:                                             ; preds = %2051, %2049
  %2054 = phi ptr [ %2048, %2051 ], [ %2050, %2049 ]
  %2055 = getelementptr inbounds i8, ptr %2054, i64 4
  store ptr %2055, ptr %6, align 8, !tbaa !152
  br label %2056

2056:                                             ; preds = %2045, %2053
  br i1 %165, label %2057, label %2062

2057:                                             ; preds = %2056
  %2058 = call ptr @Perl_sv_newmortal() #16
  %2059 = getelementptr inbounds ptr, ptr %2043, i64 1
  store ptr %2058, ptr %2059, align 8, !tbaa !152
  %2060 = load float, ptr %29, align 4, !tbaa !226
  %2061 = fpext float %2060 to double
  call void @Perl_sv_setnv(ptr noundef %2058, double noundef %2061) #16
  br label %2066

2062:                                             ; preds = %2056
  %2063 = load float, ptr %29, align 4, !tbaa !226
  %2064 = fpext float %2063 to double
  %2065 = fadd double %2044, %2064
  br label %2066

2066:                                             ; preds = %2062, %2057
  %2067 = phi double [ %2065, %2062 ], [ %2044, %2057 ]
  %2068 = phi ptr [ %2043, %2062 ], [ %2059, %2057 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %29) #14
  %2069 = add nsw i32 %2042, -1
  %2070 = icmp sgt i32 %2042, 0
  br i1 %2070, label %2041, label %2283, !llvm.loop !228

2071:                                             ; preds = %155, %2094
  %2072 = phi i32 [ %153, %155 ], [ %2097, %2094 ]
  %2073 = phi ptr [ %140, %155 ], [ %2096, %2094 ]
  %2074 = phi double [ %90, %155 ], [ %2095, %2094 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %30) #14
  br i1 %157, label %2077, label %2075

2075:                                             ; preds = %2071
  %2076 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %6, ptr noundef %3, ptr noundef nonnull %30, i32 noundef 8, i32 noundef %86) #15
  br label %2086

2077:                                             ; preds = %2071
  %2078 = load ptr, ptr %6, align 8, !tbaa !152
  br i1 %142, label %2079, label %2081

2079:                                             ; preds = %2077
  call fastcc void @S_reverse_copy(ptr noundef %2078, ptr noundef nonnull %30, i64 noundef 8) #15
  %2080 = load ptr, ptr %6, align 8, !tbaa !152
  br label %2083

2081:                                             ; preds = %2077
  %2082 = load i64, ptr %2078, align 1
  store i64 %2082, ptr %30, align 8
  br label %2083

2083:                                             ; preds = %2081, %2079
  %2084 = phi ptr [ %2078, %2081 ], [ %2080, %2079 ]
  %2085 = getelementptr inbounds i8, ptr %2084, i64 8
  store ptr %2085, ptr %6, align 8, !tbaa !152
  br label %2086

2086:                                             ; preds = %2075, %2083
  br i1 %158, label %2087, label %2091

2087:                                             ; preds = %2086
  %2088 = call ptr @Perl_sv_newmortal() #16
  %2089 = getelementptr inbounds ptr, ptr %2073, i64 1
  store ptr %2088, ptr %2089, align 8, !tbaa !152
  %2090 = load double, ptr %30, align 8, !tbaa !229
  call void @Perl_sv_setnv(ptr noundef %2088, double noundef %2090) #16
  br label %2094

2091:                                             ; preds = %2086
  %2092 = load double, ptr %30, align 8, !tbaa !229
  %2093 = fadd double %2074, %2092
  br label %2094

2094:                                             ; preds = %2091, %2087
  %2095 = phi double [ %2093, %2091 ], [ %2074, %2087 ]
  %2096 = phi ptr [ %2073, %2091 ], [ %2089, %2087 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %30) #14
  %2097 = add nsw i32 %2072, -1
  %2098 = icmp sgt i32 %2072, 0
  br i1 %2098, label %2071, label %2283, !llvm.loop !231

2099:                                             ; preds = %148, %2122
  %2100 = phi i32 [ %146, %148 ], [ %2125, %2122 ]
  %2101 = phi ptr [ %140, %148 ], [ %2124, %2122 ]
  %2102 = phi double [ %90, %148 ], [ %2123, %2122 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %31) #14
  br i1 %150, label %2105, label %2103

2103:                                             ; preds = %2099
  %2104 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %6, ptr noundef %3, ptr noundef nonnull %31, i32 noundef 8, i32 noundef %86) #15
  br label %2114

2105:                                             ; preds = %2099
  %2106 = load ptr, ptr %6, align 8, !tbaa !152
  br i1 %142, label %2107, label %2109

2107:                                             ; preds = %2105
  call fastcc void @S_reverse_copy(ptr noundef %2106, ptr noundef nonnull %31, i64 noundef 8) #15
  %2108 = load ptr, ptr %6, align 8, !tbaa !152
  br label %2111

2109:                                             ; preds = %2105
  %2110 = load i64, ptr %2106, align 1
  store i64 %2110, ptr %31, align 8
  br label %2111

2111:                                             ; preds = %2109, %2107
  %2112 = phi ptr [ %2106, %2109 ], [ %2108, %2107 ]
  %2113 = getelementptr inbounds i8, ptr %2112, i64 8
  store ptr %2113, ptr %6, align 8, !tbaa !152
  br label %2114

2114:                                             ; preds = %2103, %2111
  br i1 %151, label %2115, label %2119

2115:                                             ; preds = %2114
  %2116 = call ptr @Perl_sv_newmortal() #16
  %2117 = getelementptr inbounds ptr, ptr %2101, i64 1
  store ptr %2116, ptr %2117, align 8, !tbaa !152
  %2118 = load double, ptr %31, align 8, !tbaa !142
  call void @Perl_sv_setnv(ptr noundef %2116, double noundef %2118) #16
  br label %2122

2119:                                             ; preds = %2114
  %2120 = load double, ptr %31, align 8, !tbaa !142
  %2121 = fadd double %2102, %2120
  br label %2122

2122:                                             ; preds = %2119, %2115
  %2123 = phi double [ %2121, %2119 ], [ %2102, %2115 ]
  %2124 = phi ptr [ %2101, %2119 ], [ %2117, %2115 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %31) #14
  %2125 = add nsw i32 %2100, -1
  %2126 = icmp sgt i32 %2100, 0
  br i1 %2126, label %2099, label %2283, !llvm.loop !232

2127:                                             ; preds = %138
  %2128 = icmp eq i32 %92, 0
  br i1 %2128, label %2129, label %2142

2129:                                             ; preds = %2127
  %2130 = load ptr, ptr %6, align 8, !tbaa !152
  %2131 = ptrtoint ptr %2130 to i64
  %2132 = sub i64 %55, %2131
  %2133 = mul i64 %2132, 3
  %2134 = lshr i64 %2133, 2
  %2135 = call ptr @Perl_newSV(i64 noundef %2134) #16
  %2136 = call ptr @Perl_sv_2mortal(ptr noundef %2135) #16
  %2137 = icmp ult i64 %2133, 4
  br i1 %2137, label %2142, label %2138

2138:                                             ; preds = %2129
  %2139 = getelementptr inbounds %struct.sv, ptr %2136, i64 0, i32 2
  %2140 = load i32, ptr %2139, align 4, !tbaa !185
  %2141 = or i32 %2140, 17408
  store i32 %2141, ptr %2139, align 4, !tbaa !185
  br label %2142

2142:                                             ; preds = %2129, %2138, %2127
  %2143 = phi ptr [ %93, %2127 ], [ %2136, %2138 ], [ %2136, %2129 ]
  %2144 = load ptr, ptr %6, align 8, !tbaa !152
  %2145 = icmp ult ptr %2144, %3
  br i1 %2145, label %2146, label %2270

2146:                                             ; preds = %2142
  %2147 = load i8, ptr %2144, align 1, !tbaa !142
  %2148 = add i8 %2147, -33
  %2149 = icmp ult i8 %2148, 64
  br i1 %2149, label %2150, label %2270

2150:                                             ; preds = %2146
  %2151 = getelementptr inbounds [3 x i8], ptr %32, i64 0, i64 1
  %2152 = getelementptr inbounds [3 x i8], ptr %32, i64 0, i64 2
  br label %2157

2153:                                             ; preds = %2267
  %2154 = load i8, ptr %2268, align 1, !tbaa !142
  %2155 = add i8 %2154, -33
  %2156 = icmp ult i8 %2155, 64
  br i1 %2156, label %2157, label %2270, !llvm.loop !233

2157:                                             ; preds = %2150, %2153
  %2158 = phi ptr [ %2268, %2153 ], [ %2144, %2150 ]
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %32) #14
  %2159 = getelementptr inbounds i8, ptr %2158, i64 1
  store ptr %2159, ptr %6, align 8, !tbaa !152
  %2160 = load i8, ptr %2158, align 1, !tbaa !142
  %2161 = zext i8 %2160 to i64
  %2162 = getelementptr inbounds [256 x i8], ptr @PL_uudmap, i64 0, i64 %2161
  %2163 = load i8, ptr %2162, align 1, !tbaa !142
  %2164 = and i8 %2163, 63
  %2165 = icmp eq i8 %2164, 0
  br i1 %2165, label %2253, label %2166

2166:                                             ; preds = %2157
  %2167 = zext nneg i8 %2164 to i32
  br label %2168

2168:                                             ; preds = %2166, %2248
  %2169 = phi i32 [ %2249, %2248 ], [ %2167, %2166 ]
  %2170 = load ptr, ptr %6, align 8, !tbaa !152
  %2171 = icmp ult ptr %2170, %3
  br i1 %2171, label %2172, label %2184

2172:                                             ; preds = %2168
  %2173 = load i8, ptr %2170, align 1, !tbaa !142
  %2174 = add i8 %2173, -32
  %2175 = icmp ult i8 %2174, 65
  br i1 %2175, label %2176, label %2184

2176:                                             ; preds = %2172
  %2177 = getelementptr inbounds i8, ptr %2170, i64 1
  store ptr %2177, ptr %6, align 8, !tbaa !152
  %2178 = load i8, ptr %2170, align 1, !tbaa !142
  %2179 = zext i8 %2178 to i64
  %2180 = getelementptr inbounds [256 x i8], ptr @PL_uudmap, i64 0, i64 %2179
  %2181 = load i8, ptr %2180, align 1, !tbaa !142
  %2182 = and i8 %2181, 63
  %2183 = zext nneg i8 %2182 to i32
  br label %2184

2184:                                             ; preds = %2168, %2172, %2176
  %2185 = phi ptr [ %2177, %2176 ], [ %2170, %2172 ], [ %2170, %2168 ]
  %2186 = phi i32 [ %2183, %2176 ], [ 0, %2172 ], [ 0, %2168 ]
  %2187 = icmp ult ptr %2185, %3
  br i1 %2187, label %2188, label %2200

2188:                                             ; preds = %2184
  %2189 = load i8, ptr %2185, align 1, !tbaa !142
  %2190 = add i8 %2189, -32
  %2191 = icmp ult i8 %2190, 65
  br i1 %2191, label %2192, label %2200

2192:                                             ; preds = %2188
  %2193 = getelementptr inbounds i8, ptr %2185, i64 1
  store ptr %2193, ptr %6, align 8, !tbaa !152
  %2194 = load i8, ptr %2185, align 1, !tbaa !142
  %2195 = zext i8 %2194 to i64
  %2196 = getelementptr inbounds [256 x i8], ptr @PL_uudmap, i64 0, i64 %2195
  %2197 = load i8, ptr %2196, align 1, !tbaa !142
  %2198 = and i8 %2197, 63
  %2199 = zext nneg i8 %2198 to i32
  br label %2200

2200:                                             ; preds = %2184, %2188, %2192
  %2201 = phi ptr [ %2193, %2192 ], [ %2185, %2188 ], [ %2185, %2184 ]
  %2202 = phi i32 [ %2199, %2192 ], [ 0, %2188 ], [ 0, %2184 ]
  %2203 = icmp ult ptr %2201, %3
  br i1 %2203, label %2204, label %2216

2204:                                             ; preds = %2200
  %2205 = load i8, ptr %2201, align 1, !tbaa !142
  %2206 = add i8 %2205, -32
  %2207 = icmp ult i8 %2206, 65
  br i1 %2207, label %2208, label %2216

2208:                                             ; preds = %2204
  %2209 = getelementptr inbounds i8, ptr %2201, i64 1
  store ptr %2209, ptr %6, align 8, !tbaa !152
  %2210 = load i8, ptr %2201, align 1, !tbaa !142
  %2211 = zext i8 %2210 to i64
  %2212 = getelementptr inbounds [256 x i8], ptr @PL_uudmap, i64 0, i64 %2211
  %2213 = load i8, ptr %2212, align 1, !tbaa !142
  %2214 = and i8 %2213, 63
  %2215 = zext nneg i8 %2214 to i32
  br label %2216

2216:                                             ; preds = %2200, %2204, %2208
  %2217 = phi ptr [ %2209, %2208 ], [ %2201, %2204 ], [ %2201, %2200 ]
  %2218 = phi i32 [ %2215, %2208 ], [ 0, %2204 ], [ 0, %2200 ]
  %2219 = icmp ult ptr %2217, %3
  br i1 %2219, label %2220, label %2232

2220:                                             ; preds = %2216
  %2221 = load i8, ptr %2217, align 1, !tbaa !142
  %2222 = add i8 %2221, -32
  %2223 = icmp ult i8 %2222, 65
  br i1 %2223, label %2224, label %2232

2224:                                             ; preds = %2220
  %2225 = getelementptr inbounds i8, ptr %2217, i64 1
  store ptr %2225, ptr %6, align 8, !tbaa !152
  %2226 = load i8, ptr %2217, align 1, !tbaa !142
  %2227 = zext i8 %2226 to i64
  %2228 = getelementptr inbounds [256 x i8], ptr @PL_uudmap, i64 0, i64 %2227
  %2229 = load i8, ptr %2228, align 1, !tbaa !142
  %2230 = and i8 %2229, 63
  %2231 = zext nneg i8 %2230 to i32
  br label %2232

2232:                                             ; preds = %2216, %2220, %2224
  %2233 = phi i32 [ %2231, %2224 ], [ 0, %2220 ], [ 0, %2216 ]
  %2234 = shl nuw nsw i32 %2186, 2
  %2235 = lshr i32 %2202, 4
  %2236 = or i32 %2235, %2234
  %2237 = trunc i32 %2236 to i8
  store i8 %2237, ptr %32, align 1, !tbaa !142
  %2238 = shl nuw nsw i32 %2202, 4
  %2239 = lshr i32 %2218, 2
  %2240 = or i32 %2239, %2238
  %2241 = trunc i32 %2240 to i8
  store i8 %2241, ptr %2151, align 1, !tbaa !142
  %2242 = shl nuw nsw i32 %2218, 6
  %2243 = or i32 %2233, %2242
  %2244 = trunc i32 %2243 to i8
  store i8 %2244, ptr %2152, align 1, !tbaa !142
  br i1 %2128, label %2245, label %2248

2245:                                             ; preds = %2232
  %2246 = call i32 @llvm.smin.i32(i32 %2169, i32 3)
  %2247 = zext nneg i32 %2246 to i64
  call void @Perl_sv_catpvn_flags(ptr noundef %2143, ptr noundef nonnull %32, i64 noundef %2247, i32 noundef 2) #16
  br label %2248

2248:                                             ; preds = %2245, %2232
  %2249 = add nsw i32 %2169, -3
  %2250 = icmp sgt i32 %2169, 3
  br i1 %2250, label %2168, label %2251, !llvm.loop !234

2251:                                             ; preds = %2248
  %2252 = load ptr, ptr %6, align 8, !tbaa !152
  br label %2253

2253:                                             ; preds = %2251, %2157
  %2254 = phi ptr [ %2159, %2157 ], [ %2252, %2251 ]
  %2255 = phi i32 [ 0, %2157 ], [ %2249, %2251 ]
  %2256 = load i8, ptr %2254, align 1, !tbaa !142
  %2257 = icmp eq i8 %2256, 10
  %2258 = getelementptr inbounds i8, ptr %2254, i64 1
  br i1 %2257, label %2259, label %2260

2259:                                             ; preds = %2253
  store ptr %2258, ptr %6, align 8, !tbaa !152
  br label %2267

2260:                                             ; preds = %2253
  %2261 = icmp ult ptr %2258, %3
  br i1 %2261, label %2262, label %2267

2262:                                             ; preds = %2260
  %2263 = load i8, ptr %2258, align 1, !tbaa !142
  %2264 = icmp eq i8 %2263, 10
  br i1 %2264, label %2265, label %2267

2265:                                             ; preds = %2262
  %2266 = getelementptr inbounds i8, ptr %2254, i64 2
  store ptr %2266, ptr %6, align 8, !tbaa !152
  br label %2267

2267:                                             ; preds = %2260, %2262, %2265, %2259
  %2268 = phi ptr [ %2254, %2260 ], [ %2254, %2262 ], [ %2266, %2265 ], [ %2258, %2259 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %32) #14
  %2269 = icmp ult ptr %2268, %3
  br i1 %2269, label %2153, label %2270, !llvm.loop !233

2270:                                             ; preds = %2153, %2267, %2146, %2142
  %2271 = phi i32 [ %139, %2142 ], [ %139, %2146 ], [ %2255, %2267 ], [ %2255, %2153 ]
  br i1 %2128, label %2272, label %2291

2272:                                             ; preds = %2270
  %2273 = load ptr, ptr @PL_stack_max, align 8, !tbaa !152
  %2274 = ptrtoint ptr %2273 to i64
  %2275 = ptrtoint ptr %140 to i64
  %2276 = sub i64 %2274, %2275
  %2277 = icmp slt i64 %2276, 8
  br i1 %2277, label %2278, label %2280

2278:                                             ; preds = %2272
  %2279 = call ptr @Perl_stack_grow(ptr noundef %140, ptr noundef %140, i64 noundef 1) #16
  br label %2280

2280:                                             ; preds = %2272, %2278
  %2281 = phi ptr [ %2279, %2278 ], [ %140, %2272 ]
  %2282 = getelementptr inbounds ptr, ptr %2281, i64 1
  store ptr %2143, ptr %2282, align 8, !tbaa !152
  br label %2358

2283:                                             ; preds = %2122, %2094, %2066, %2035, %2001, %1850, %1830, %1781, %1732, %1698, %1662, %1628, %1594, %1560, %1516, %1472, %1423, %1374, %1327, %1114, %830, %820, %1166, %1211, %1201, %1180, %507, %457, %182, %145, %152, %159, %166, %174, %190, %1787, %1738, %196, %204, %212, %220, %228, %1522, %1478, %1429, %1380, %1336, %1261, %1055, %818, %819, %1127, %1195, %497, %430, %1290, %488, %1933, %1937, %1226, %924, %805, %800, %1950, %1968, %1223, %1230, %1049, %1050, %525, %470, %391, %383, %379, %740, %420, %349, %276
  %2284 = phi i32 [ %139, %1968 ], [ %139, %1950 ], [ 0, %1230 ], [ 0, %1223 ], [ 0, %1050 ], [ 0, %1049 ], [ %721, %740 ], [ %495, %525 ], [ %492, %488 ], [ %462, %470 ], [ %395, %420 ], [ %139, %391 ], [ %381, %383 ], [ %381, %379 ], [ %316, %349 ], [ %277, %276 ], [ %910, %924 ], [ %802, %805 ], [ 0, %800 ], [ 0, %1226 ], [ %1924, %1937 ], [ %1924, %1933 ], [ %1276, %1290 ], [ %139, %430 ], [ %495, %497 ], [ %1193, %1195 ], [ %1128, %1127 ], [ %816, %819 ], [ %816, %818 ], [ %1056, %1055 ], [ %1264, %1261 ], [ %1337, %1336 ], [ %1381, %1380 ], [ %1430, %1429 ], [ %1479, %1478 ], [ %1523, %1522 ], [ %229, %228 ], [ %221, %220 ], [ %213, %212 ], [ %205, %204 ], [ %197, %196 ], [ %1739, %1738 ], [ %1788, %1787 ], [ %191, %190 ], [ %175, %174 ], [ %167, %166 ], [ %160, %159 ], [ %153, %152 ], [ %146, %145 ], [ %139, %182 ], [ 0, %457 ], [ 0, %507 ], [ -1, %1180 ], [ -1, %1201 ], [ -1, %1211 ], [ %1171, %1166 ], [ -1, %820 ], [ -1, %830 ], [ %1119, %1114 ], [ %1332, %1327 ], [ -1, %1374 ], [ -1, %1423 ], [ -1, %1472 ], [ -1, %1516 ], [ -1, %1560 ], [ -1, %1594 ], [ -1, %1628 ], [ -1, %1662 ], [ -1, %1698 ], [ -1, %1732 ], [ -1, %1781 ], [ -1, %1830 ], [ -1, %1850 ], [ -1, %2001 ], [ -1, %2035 ], [ -1, %2066 ], [ -1, %2094 ], [ -1, %2122 ]
  %2285 = phi i8 [ %88, %1968 ], [ %88, %1950 ], [ %88, %1230 ], [ %88, %1223 ], [ %1054, %1050 ], [ %88, %1049 ], [ %88, %740 ], [ %88, %525 ], [ %88, %488 ], [ %88, %470 ], [ %88, %420 ], [ %88, %391 ], [ %88, %383 ], [ %88, %379 ], [ %88, %349 ], [ %88, %276 ], [ %88, %924 ], [ %88, %805 ], [ %88, %800 ], [ 0, %1226 ], [ %88, %1937 ], [ %88, %1933 ], [ %88, %1290 ], [ %88, %430 ], [ %88, %497 ], [ %88, %1195 ], [ %88, %1127 ], [ %88, %819 ], [ %88, %818 ], [ %88, %1055 ], [ %88, %1261 ], [ %88, %1336 ], [ %88, %1380 ], [ %88, %1429 ], [ %88, %1478 ], [ %88, %1522 ], [ %88, %228 ], [ %88, %220 ], [ %88, %212 ], [ %88, %204 ], [ %88, %196 ], [ %88, %1738 ], [ %88, %1787 ], [ %88, %190 ], [ %88, %174 ], [ %88, %166 ], [ %88, %159 ], [ %88, %152 ], [ %88, %145 ], [ %88, %182 ], [ %88, %457 ], [ %88, %507 ], [ %88, %1180 ], [ %88, %1201 ], [ %88, %1211 ], [ %88, %1166 ], [ %88, %820 ], [ %88, %830 ], [ %88, %1114 ], [ %88, %1327 ], [ %88, %1374 ], [ %88, %1423 ], [ %88, %1472 ], [ %88, %1516 ], [ %88, %1560 ], [ %88, %1594 ], [ %88, %1628 ], [ %88, %1662 ], [ %88, %1698 ], [ %88, %1732 ], [ %88, %1781 ], [ %88, %1830 ], [ %88, %1850 ], [ %88, %2001 ], [ %88, %2035 ], [ %88, %2066 ], [ %88, %2094 ], [ %88, %2122 ]
  %2286 = phi double [ %90, %1968 ], [ %90, %1950 ], [ %90, %1230 ], [ %90, %1223 ], [ %90, %1050 ], [ %90, %1049 ], [ %90, %740 ], [ %90, %525 ], [ %90, %488 ], [ %90, %470 ], [ %90, %420 ], [ %90, %391 ], [ %90, %383 ], [ %90, %379 ], [ %90, %349 ], [ %90, %276 ], [ %90, %924 ], [ %90, %805 ], [ %90, %800 ], [ %90, %1226 ], [ %90, %1937 ], [ %90, %1933 ], [ %1279, %1290 ], [ %90, %430 ], [ %90, %497 ], [ %90, %1195 ], [ %90, %1127 ], [ %90, %819 ], [ %90, %818 ], [ %90, %1055 ], [ %90, %1261 ], [ %90, %1336 ], [ %90, %1380 ], [ %90, %1429 ], [ %90, %1478 ], [ %90, %1522 ], [ %90, %228 ], [ %90, %220 ], [ %90, %212 ], [ %90, %204 ], [ %90, %196 ], [ %90, %1738 ], [ %90, %1787 ], [ %90, %190 ], [ %90, %174 ], [ %90, %166 ], [ %90, %159 ], [ %90, %152 ], [ %90, %145 ], [ %90, %182 ], [ %90, %457 ], [ %90, %507 ], [ %90, %1180 ], [ %1208, %1201 ], [ %90, %1211 ], [ %1168, %1166 ], [ %90, %820 ], [ %90, %830 ], [ %1116, %1114 ], [ %1329, %1327 ], [ %1375, %1374 ], [ %1424, %1423 ], [ %1473, %1472 ], [ %1517, %1516 ], [ %1561, %1560 ], [ %1595, %1594 ], [ %1629, %1628 ], [ %1663, %1662 ], [ %1699, %1698 ], [ %1733, %1732 ], [ %1782, %1781 ], [ %1831, %1830 ], [ %90, %1850 ], [ %2002, %2001 ], [ %2036, %2035 ], [ %2067, %2066 ], [ %2095, %2094 ], [ %2123, %2122 ]
  %2287 = phi i64 [ %91, %1968 ], [ %91, %1950 ], [ %91, %1230 ], [ %91, %1223 ], [ %91, %1050 ], [ %91, %1049 ], [ %91, %740 ], [ %91, %525 ], [ %91, %488 ], [ %91, %470 ], [ %91, %420 ], [ %91, %391 ], [ %91, %383 ], [ %91, %379 ], [ %91, %349 ], [ %91, %276 ], [ %91, %924 ], [ %803, %805 ], [ %803, %800 ], [ %91, %1226 ], [ %91, %1937 ], [ %91, %1933 ], [ %1278, %1290 ], [ %91, %430 ], [ %91, %497 ], [ %91, %1195 ], [ %91, %1127 ], [ %803, %819 ], [ %803, %818 ], [ %91, %1055 ], [ %91, %1261 ], [ %91, %1336 ], [ %91, %1380 ], [ %91, %1429 ], [ %91, %1478 ], [ %91, %1522 ], [ %91, %228 ], [ %91, %220 ], [ %91, %212 ], [ %91, %204 ], [ %91, %196 ], [ %91, %1738 ], [ %91, %1787 ], [ %91, %190 ], [ %91, %174 ], [ %91, %166 ], [ %91, %159 ], [ %91, %152 ], [ %91, %145 ], [ %91, %182 ], [ %91, %457 ], [ %91, %507 ], [ %91, %1180 ], [ %91, %1201 ], [ %1218, %1211 ], [ %1169, %1166 ], [ %826, %820 ], [ %836, %830 ], [ %1117, %1114 ], [ %1330, %1327 ], [ %1376, %1374 ], [ %1425, %1423 ], [ %1474, %1472 ], [ %1518, %1516 ], [ %1562, %1560 ], [ %1596, %1594 ], [ %1630, %1628 ], [ %1664, %1662 ], [ %1700, %1698 ], [ %1734, %1732 ], [ %1783, %1781 ], [ %1832, %1830 ], [ %91, %1850 ], [ %2003, %2001 ], [ %2037, %2035 ], [ %91, %2066 ], [ %91, %2094 ], [ %91, %2122 ]
  %2288 = phi ptr [ %93, %1968 ], [ %93, %1950 ], [ %93, %1230 ], [ %93, %1223 ], [ %93, %1050 ], [ %93, %1049 ], [ %722, %740 ], [ %93, %525 ], [ %93, %488 ], [ %93, %470 ], [ %93, %420 ], [ %93, %391 ], [ %93, %383 ], [ %93, %379 ], [ %93, %349 ], [ %93, %276 ], [ %844, %924 ], [ %93, %805 ], [ %93, %800 ], [ %93, %1226 ], [ %1927, %1937 ], [ %1927, %1933 ], [ %93, %1290 ], [ %93, %430 ], [ %93, %497 ], [ %93, %1195 ], [ %93, %1127 ], [ %93, %819 ], [ %93, %818 ], [ %93, %1055 ], [ %93, %1261 ], [ %93, %1336 ], [ %93, %1380 ], [ %93, %1429 ], [ %93, %1478 ], [ %93, %1522 ], [ %93, %228 ], [ %93, %220 ], [ %93, %212 ], [ %93, %204 ], [ %93, %196 ], [ %93, %1738 ], [ %93, %1787 ], [ %93, %190 ], [ %93, %174 ], [ %93, %166 ], [ %93, %159 ], [ %93, %152 ], [ %93, %145 ], [ %93, %182 ], [ %93, %457 ], [ %93, %507 ], [ %93, %1180 ], [ %93, %1201 ], [ %93, %1211 ], [ %93, %1166 ], [ %93, %820 ], [ %93, %830 ], [ %93, %1114 ], [ %93, %1327 ], [ %93, %1374 ], [ %93, %1423 ], [ %93, %1472 ], [ %93, %1516 ], [ %93, %1560 ], [ %93, %1594 ], [ %93, %1628 ], [ %93, %1662 ], [ %93, %1698 ], [ %93, %1732 ], [ %93, %1781 ], [ %93, %1830 ], [ %93, %1850 ], [ %93, %2001 ], [ %93, %2035 ], [ %93, %2066 ], [ %93, %2094 ], [ %93, %2122 ]
  %2289 = phi ptr [ %1972, %1968 ], [ %1951, %1950 ], [ %140, %1230 ], [ %140, %1223 ], [ %140, %1050 ], [ %140, %1049 ], [ %743, %740 ], [ %140, %525 ], [ %140, %488 ], [ %140, %470 ], [ %140, %420 ], [ %140, %391 ], [ %140, %383 ], [ %140, %379 ], [ %352, %349 ], [ %279, %276 ], [ %926, %924 ], [ %140, %805 ], [ %140, %800 ], [ %140, %1226 ], [ %1928, %1937 ], [ %1928, %1933 ], [ %1277, %1290 ], [ %140, %430 ], [ %140, %497 ], [ %140, %1195 ], [ %140, %1127 ], [ %140, %819 ], [ %140, %818 ], [ %140, %1055 ], [ %1263, %1261 ], [ %140, %1336 ], [ %140, %1380 ], [ %140, %1429 ], [ %140, %1478 ], [ %140, %1522 ], [ %140, %228 ], [ %140, %220 ], [ %140, %212 ], [ %140, %204 ], [ %140, %196 ], [ %140, %1738 ], [ %140, %1787 ], [ %140, %190 ], [ %140, %174 ], [ %140, %166 ], [ %140, %159 ], [ %140, %152 ], [ %140, %145 ], [ %140, %182 ], [ %140, %457 ], [ %140, %507 ], [ %1187, %1180 ], [ %140, %1201 ], [ %140, %1211 ], [ %1170, %1166 ], [ %140, %820 ], [ %140, %830 ], [ %1118, %1114 ], [ %1331, %1327 ], [ %1377, %1374 ], [ %1426, %1423 ], [ %1475, %1472 ], [ %1519, %1516 ], [ %1563, %1560 ], [ %1597, %1594 ], [ %1631, %1628 ], [ %1665, %1662 ], [ %1701, %1698 ], [ %1735, %1732 ], [ %1784, %1781 ], [ %1833, %1830 ], [ %1854, %1850 ], [ %2004, %2001 ], [ %2038, %2035 ], [ %2068, %2066 ], [ %2096, %2094 ], [ %2124, %2122 ]
  %2290 = icmp eq i32 %92, 0
  br i1 %2290, label %2358, label %2291, !prof !235

2291:                                             ; preds = %1198, %2270, %1026, %2283
  %2292 = phi ptr [ %2289, %2283 ], [ %140, %1026 ], [ %140, %2270 ], [ %140, %1198 ]
  %2293 = phi i64 [ %2287, %2283 ], [ %91, %1026 ], [ %91, %2270 ], [ %91, %1198 ]
  %2294 = phi double [ %2286, %2283 ], [ %90, %1026 ], [ %90, %2270 ], [ %90, %1198 ]
  %2295 = phi i8 [ %2285, %2283 ], [ %88, %1026 ], [ %88, %2270 ], [ %88, %1198 ]
  %2296 = phi i32 [ %2284, %2283 ], [ %1027, %1026 ], [ %2271, %2270 ], [ %1193, %1198 ]
  %2297 = and i32 %86, 255
  %2298 = call ptr @memchr(ptr nonnull dereferenceable(1) @.str.12, i32 %2297, i64 5)
  %2299 = icmp eq ptr %2298, null
  br i1 %2299, label %2300, label %2309

2300:                                             ; preds = %2291
  %2301 = icmp sgt i32 %92, 64
  br i1 %2301, label %2302, label %2335

2302:                                             ; preds = %2300
  %2303 = call ptr @memchr(ptr nonnull dereferenceable(1) @.str.13, i32 %2297, i64 19)
  %2304 = icmp eq ptr %2303, null
  br i1 %2304, label %2335, label %2305

2305:                                             ; preds = %2302
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %33) #14
  %2306 = and i32 %92, 15
  %2307 = shl nuw nsw i32 1, %2306
  %2308 = sitofp i32 %2307 to double
  br label %2314

2309:                                             ; preds = %2291
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %33) #14
  %2310 = and i32 %92, 15
  %2311 = shl nuw nsw i32 1, %2310
  %2312 = sitofp i32 %2311 to double
  %2313 = icmp sgt i32 %92, 15
  br i1 %2313, label %2314, label %2316

2314:                                             ; preds = %2305, %2309
  %2315 = phi double [ %2312, %2309 ], [ %2308, %2305 ]
  br label %2319

2316:                                             ; preds = %2319, %2309
  %2317 = phi double [ %2312, %2309 ], [ %2323, %2319 ]
  %2318 = fcmp olt double %2294, 0.000000e+00
  br i1 %2318, label %2325, label %2329

2319:                                             ; preds = %2314, %2319
  %2320 = phi double [ %2323, %2319 ], [ %2315, %2314 ]
  %2321 = phi i32 [ %2322, %2319 ], [ %92, %2314 ]
  %2322 = add nsw i32 %2321, -16
  %2323 = fmul double %2320, 6.553600e+04
  %2324 = icmp ugt i32 %2321, 31
  br i1 %2324, label %2319, label %2316, !llvm.loop !236

2325:                                             ; preds = %2316, %2325
  %2326 = phi double [ %2327, %2325 ], [ %2294, %2316 ]
  %2327 = fadd double %2317, %2326
  %2328 = fcmp olt double %2327, 0.000000e+00
  br i1 %2328, label %2325, label %2329, !llvm.loop !237

2329:                                             ; preds = %2325, %2316
  %2330 = phi double [ %2294, %2316 ], [ %2327, %2325 ]
  %2331 = fdiv double %2330, %2317
  %2332 = call double @modf(double noundef %2331, ptr noundef nonnull %33) #16
  %2333 = fmul double %2317, %2332
  %2334 = call ptr @Perl_newSVnv(double noundef %2333) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %33) #14
  br label %2343

2335:                                             ; preds = %2302, %2300
  %2336 = icmp slt i32 %92, 64
  %2337 = zext nneg i32 %92 to i64
  %2338 = shl nsw i64 -1, %2337
  %2339 = xor i64 %2338, -1
  %2340 = select i1 %2336, i64 %2339, i64 -1
  %2341 = and i64 %2293, %2340
  %2342 = call ptr @Perl_newSVuv(i64 noundef %2341) #16
  br label %2343

2343:                                             ; preds = %2335, %2329
  %2344 = phi double [ %2333, %2329 ], [ %2294, %2335 ]
  %2345 = phi i64 [ %2293, %2329 ], [ %2341, %2335 ]
  %2346 = phi ptr [ %2334, %2329 ], [ %2342, %2335 ]
  %2347 = load ptr, ptr @PL_stack_max, align 8, !tbaa !152
  %2348 = ptrtoint ptr %2347 to i64
  %2349 = ptrtoint ptr %2292 to i64
  %2350 = sub i64 %2348, %2349
  %2351 = icmp slt i64 %2350, 8
  br i1 %2351, label %2352, label %2354

2352:                                             ; preds = %2343
  %2353 = call ptr @Perl_stack_grow(ptr noundef %2292, ptr noundef %2292, i64 noundef 1) #16
  br label %2354

2354:                                             ; preds = %2343, %2352
  %2355 = phi ptr [ %2353, %2352 ], [ %2292, %2343 ]
  %2356 = call ptr @Perl_sv_2mortal(ptr noundef %2346) #16
  %2357 = getelementptr inbounds ptr, ptr %2355, i64 1
  store ptr %2356, ptr %2357, align 8, !tbaa !152
  br label %2358

2358:                                             ; preds = %1177, %2280, %1044, %2354, %2283
  %2359 = phi i8 [ %2295, %2354 ], [ %2285, %2283 ], [ %88, %1044 ], [ %88, %2280 ], [ %88, %1177 ]
  %2360 = phi i32 [ %2296, %2354 ], [ %2284, %2283 ], [ %1027, %1044 ], [ %2271, %2280 ], [ %1178, %1177 ]
  %2361 = phi double [ %2344, %2354 ], [ %2286, %2283 ], [ %90, %1044 ], [ %90, %2280 ], [ %90, %1177 ]
  %2362 = phi i64 [ %2345, %2354 ], [ %2287, %2283 ], [ %91, %1044 ], [ %91, %2280 ], [ %91, %1177 ]
  %2363 = phi ptr [ %2346, %2354 ], [ %2288, %2283 ], [ %957, %1044 ], [ %2143, %2280 ], [ %93, %1177 ]
  %2364 = phi ptr [ %2357, %2354 ], [ %2289, %2283 ], [ %1046, %1044 ], [ %2282, %2280 ], [ %140, %1177 ]
  %2365 = load i32, ptr %39, align 8, !tbaa !139
  %2366 = and i32 %2365, 4
  %2367 = icmp eq i32 %2366, 0
  br i1 %2367, label %2409, label %2368, !prof !238

2368:                                             ; preds = %2358
  %2369 = shl i64 %38, 29
  %2370 = ashr i64 %2369, 32
  %2371 = load ptr, ptr @PL_stack_base, align 8, !tbaa !152
  %2372 = ptrtoint ptr %2364 to i64
  %2373 = ptrtoint ptr %2371 to i64
  %2374 = sub i64 %2372, %2373
  %2375 = ashr exact i64 %2374, 3
  %2376 = icmp sgt i64 %2375, %2370
  br i1 %2376, label %2377, label %2417

2377:                                             ; preds = %2368
  %2378 = call fastcc zeroext i1 @S_next_symbol(ptr noundef nonnull %0) #15
  br i1 %2378, label %2379, label %2401

2379:                                             ; preds = %2377
  %2380 = load i32, ptr %53, align 8, !tbaa !157
  %2381 = icmp eq i32 %2380, 1
  br i1 %2381, label %2382, label %2383

2382:                                             ; preds = %2379
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.14) #16
  br label %2383

2383:                                             ; preds = %2382, %2379
  br i1 %96, label %2384, label %2401

2384:                                             ; preds = %2383
  %2385 = getelementptr inbounds ptr, ptr %2364, i64 -1
  %2386 = load ptr, ptr %2364, align 8, !tbaa !152
  store ptr %2386, ptr @PL_Sv, align 8, !tbaa !152
  %2387 = getelementptr inbounds %struct.sv, ptr %2386, i64 0, i32 2
  %2388 = load i32, ptr %2387, align 4, !tbaa !185
  %2389 = and i32 %2388, 2097408
  %2390 = icmp eq i32 %2389, 256
  br i1 %2390, label %2391, label %2395

2391:                                             ; preds = %2384
  %2392 = load ptr, ptr %2386, align 8, !tbaa !193
  %2393 = getelementptr inbounds %struct.xpviv, ptr %2392, i64 0, i32 4
  %2394 = load i64, ptr %2393, align 8, !tbaa !142
  br label %2397

2395:                                             ; preds = %2384
  %2396 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %2386, i32 noundef 2) #16
  br label %2397

2397:                                             ; preds = %2395, %2391
  %2398 = phi i64 [ %2394, %2391 ], [ %2396, %2395 ]
  %2399 = trunc i64 %2398 to i32
  %2400 = icmp slt i32 %2399, 0
  br i1 %2400, label %2401, label %2405

2401:                                             ; preds = %2377, %2397, %2383
  %2402 = phi ptr [ @.str.15, %2383 ], [ @.str.16, %2397 ], [ @.str.17, %2377 ]
  %2403 = phi i32 [ %2360, %2383 ], [ %2399, %2397 ], [ %2360, %2377 ]
  %2404 = phi ptr [ %2364, %2383 ], [ %2385, %2397 ], [ %2364, %2377 ]
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull %2402) #16
  br label %2405

2405:                                             ; preds = %2401, %2397
  %2406 = phi i32 [ %2399, %2397 ], [ %2403, %2401 ]
  %2407 = phi ptr [ %2385, %2397 ], [ %2404, %2401 ]
  %2408 = load i32, ptr %52, align 8, !tbaa !154
  br label %85

2409:                                             ; preds = %2358, %238
  %2410 = phi i8 [ %88, %238 ], [ %2359, %2358 ]
  %2411 = phi double [ 0.000000e+00, %238 ], [ %2361, %2358 ]
  %2412 = phi i64 [ 0, %238 ], [ %2362, %2358 ]
  %2413 = phi i32 [ %240, %238 ], [ 0, %2358 ]
  %2414 = phi ptr [ %93, %238 ], [ %2363, %2358 ]
  %2415 = phi ptr [ %140, %238 ], [ %2364, %2358 ]
  %2416 = call fastcc zeroext i1 @S_next_symbol(ptr noundef nonnull %0) #15
  br i1 %2416, label %58, label %2417, !prof !144

2417:                                             ; preds = %2409, %76, %2368, %5
  %2418 = phi ptr [ %34, %5 ], [ %2364, %2368 ], [ %2415, %2409 ], [ %59, %76 ]
  %2419 = icmp eq ptr %4, null
  br i1 %2419, label %2422, label %2420, !prof !127

2420:                                             ; preds = %2417
  %2421 = load ptr, ptr %6, align 8, !tbaa !152
  store ptr %2421, ptr %4, align 8, !tbaa !152
  br label %2422

2422:                                             ; preds = %2420, %2417
  store ptr %2418, ptr @PL_stack_sp, align 8, !tbaa !152
  %2423 = load ptr, ptr @PL_stack_base, align 8, !tbaa !152
  %2424 = ptrtoint ptr %2418 to i64
  %2425 = ptrtoint ptr %2423 to i64
  %2426 = sub i64 %2424, %2425
  %2427 = lshr exact i64 %2426, 3
  %2428 = lshr i64 %38, 3
  %2429 = sub nsw i64 %2427, %2428
  %2430 = trunc i64 %2429 to i32
  ret i32 %2430
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_unpack() local_unnamed_addr #0 !prof !126 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !152
  %4 = getelementptr inbounds ptr, ptr %3, i64 -1
  %5 = load ptr, ptr %3, align 8, !tbaa !152
  %6 = getelementptr inbounds ptr, ptr %3, i64 -2
  %7 = load ptr, ptr %4, align 8, !tbaa !152
  %8 = load ptr, ptr @PL_op, align 8, !tbaa !152
  %9 = getelementptr inbounds %struct.op, ptr %8, i64 0, i32 5
  %10 = load i8, ptr %9, align 2, !tbaa !239
  %11 = and i8 %10, 3
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %15, label %13, !prof !128

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
  %20 = load i32, ptr %19, align 4, !tbaa !185
  %21 = and i32 %20, 2098176
  %22 = icmp eq i32 %21, 1024
  br i1 %22, label %23, label %29, !prof !127

23:                                               ; preds = %17
  %24 = load ptr, ptr %7, align 8, !tbaa !193
  %25 = getelementptr inbounds %struct.xpv, ptr %24, i64 0, i32 2
  %26 = load i64, ptr %25, align 8, !tbaa !194
  store i64 %26, ptr %1, align 8, !tbaa !129
  %27 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !142
  br label %31

29:                                               ; preds = %17
  %30 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %7, ptr noundef nonnull %1, i32 noundef 34) #16
  br label %31

31:                                               ; preds = %29, %23
  %32 = phi ptr [ %28, %23 ], [ %30, %29 ]
  %33 = getelementptr inbounds %struct.sv, ptr %5, i64 0, i32 2
  %34 = load i32, ptr %33, align 4, !tbaa !185
  %35 = and i32 %34, 2098176
  %36 = icmp eq i32 %35, 1024
  br i1 %36, label %37, label %43, !prof !241

37:                                               ; preds = %31
  %38 = load ptr, ptr %5, align 8, !tbaa !193
  %39 = getelementptr inbounds %struct.xpv, ptr %38, i64 0, i32 2
  %40 = load i64, ptr %39, align 8, !tbaa !194
  store i64 %40, ptr %2, align 8, !tbaa !129
  %41 = getelementptr inbounds %struct.sv, ptr %5, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !142
  br label %47

43:                                               ; preds = %31
  %44 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %5, ptr noundef nonnull %2, i32 noundef 34) #16
  %45 = load i64, ptr %2, align 8, !tbaa !129
  %46 = load i32, ptr %33, align 4, !tbaa !185
  br label %47

47:                                               ; preds = %43, %37
  %48 = phi i32 [ %34, %37 ], [ %46, %43 ]
  %49 = phi i64 [ %40, %37 ], [ %45, %43 ]
  %50 = phi ptr [ %42, %37 ], [ %44, %43 ]
  %51 = getelementptr inbounds i8, ptr %50, i64 %49
  %52 = load i64, ptr %1, align 8, !tbaa !129
  %53 = getelementptr inbounds i8, ptr %32, i64 %52
  store ptr %6, ptr @PL_stack_sp, align 8, !tbaa !152
  %54 = icmp eq i32 %18, 2
  %55 = select i1 %54, i32 16, i32 0
  %56 = and i32 %48, 536870912
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %64, label %58, !prof !127

58:                                               ; preds = %47
  %59 = load ptr, ptr @PL_curcop, align 8, !tbaa !152
  %60 = getelementptr inbounds %struct.cop, ptr %59, i64 0, i32 10
  %61 = load i32, ptr %60, align 8, !tbaa !242
  %62 = and i32 %61, 8
  %63 = xor i32 %62, 8
  br label %64

64:                                               ; preds = %58, %47
  %65 = phi i32 [ 0, %47 ], [ %63, %58 ]
  %66 = or i32 %65, %55
  %67 = call i32 @Perl_unpackstring(ptr noundef %32, ptr noundef %53, ptr noundef %50, ptr noundef %51, i32 noundef %66) #15
  %68 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !152
  %69 = icmp eq i32 %67, 0
  br i1 %69, label %70, label %73, !prof !128

70:                                               ; preds = %64
  br i1 %54, label %71, label %73

71:                                               ; preds = %70
  %72 = getelementptr inbounds ptr, ptr %68, i64 1
  store ptr @PL_sv_undef, ptr %72, align 8, !tbaa !152
  br label %73

73:                                               ; preds = %71, %70, %64
  %74 = phi ptr [ %68, %64 ], [ %72, %71 ], [ %68, %70 ]
  store ptr %74, ptr @PL_stack_sp, align 8, !tbaa !152
  %75 = load ptr, ptr @PL_op, align 8, !tbaa !152
  %76 = load ptr, ptr %75, align 8, !tbaa !244
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #14
  ret ptr %76
}

; Function Attrs: optsize
declare i32 @Perl_block_gimme() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_packlist(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 !prof !245 {
  %6 = alloca %struct.tempsym, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #14
  store ptr %1, ptr %6, align 8, !tbaa !134
  %7 = getelementptr inbounds %struct.tempsym, ptr %6, i64 0, i32 1
  store ptr %2, ptr %7, align 8, !tbaa !138
  %8 = getelementptr inbounds %struct.tempsym, ptr %6, i64 0, i32 2
  %9 = getelementptr inbounds %struct.tempsym, ptr %6, i64 0, i32 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i64 32, i1 false)
  store i32 1, ptr %9, align 8, !tbaa !139
  %10 = getelementptr inbounds %struct.tempsym, ptr %6, i64 0, i32 9
  %11 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  %12 = load i32, ptr %11, align 4, !tbaa !185
  %13 = and i32 %12, 430018304
  %14 = icmp eq i32 %13, 1024
  br i1 %14, label %18, label %15, !prof !246

15:                                               ; preds = %5
  %16 = tail call ptr @Perl_sv_pvn_force_flags(ptr noundef nonnull %0, ptr noundef null, i32 noundef 2) #16
  %17 = load i32, ptr %11, align 4, !tbaa !185
  br label %18

18:                                               ; preds = %5, %15
  %19 = phi i32 [ %12, %5 ], [ %17, %15 ]
  %20 = and i32 %19, 536870912
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %29, label %22, !prof !246

22:                                               ; preds = %18
  %23 = load ptr, ptr @PL_curcop, align 8, !tbaa !152
  %24 = getelementptr inbounds %struct.cop, ptr %23, i64 0, i32 10
  %25 = load i32, ptr %24, align 8, !tbaa !242
  %26 = and i32 %25, 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 41, ptr %9, align 8, !tbaa !139
  br label %29

29:                                               ; preds = %28, %22, %18
  %30 = call fastcc ptr @S_pack_rec(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef %3, ptr noundef %4) #15
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #14
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_sv_pvn_force_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @S_pack_rec(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !245 !PGOFuncName !247 {
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
  %55 = load i32, ptr %54, align 8, !tbaa !139
  %56 = trunc i32 %55 to i8
  %57 = lshr i8 %56, 5
  %58 = and i8 %57, 1
  %59 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 44) #16
  %60 = getelementptr inbounds %struct.tempsym, ptr %1, i64 0, i32 7
  %61 = load i32, ptr %60, align 4, !tbaa !169
  %62 = icmp eq i32 %61, 0
  %63 = and i1 %53, %62
  br i1 %63, label %64, label %71, !prof !248

64:                                               ; preds = %4
  %65 = getelementptr inbounds %struct.tempsym, ptr %1, i64 0, i32 4
  %66 = load i32, ptr %65, align 8, !tbaa !154
  %67 = icmp eq i32 %66, 85
  br i1 %67, label %68, label %71, !prof !249

68:                                               ; preds = %64
  tail call fastcc void @marked_upgrade(ptr noundef %0, ptr noundef nonnull %1) #15
  %69 = load i32, ptr %54, align 8, !tbaa !139
  %70 = or i32 %69, 8
  store i32 %70, ptr %54, align 8, !tbaa !139
  br label %71

71:                                               ; preds = %4, %68, %64
  %72 = phi i8 [ 0, %68 ], [ %58, %64 ], [ %58, %4 ]
  %73 = load ptr, ptr %0, align 8, !tbaa !193
  %74 = getelementptr inbounds %struct.xpv, ptr %73, i64 0, i32 2
  %75 = load i64, ptr %74, align 8, !tbaa !194
  %76 = getelementptr inbounds %struct.tempsym, ptr %1, i64 0, i32 9
  store i64 %75, ptr %76, align 8, !tbaa !153
  br i1 %53, label %77, label %2893, !prof !250

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.tempsym, ptr %1, i64 0, i32 4
  %79 = getelementptr inbounds %struct.tempsym, ptr %1, i64 0, i32 6
  %80 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %81 = getelementptr inbounds %struct.tempsym, ptr %1, i64 0, i32 5
  br label %82

82:                                               ; preds = %77, %2889
  %83 = phi ptr [ %2, %77 ], [ %2892, %2889 ]
  %84 = phi i32 [ %52, %77 ], [ %2891, %2889 ]
  %85 = phi i8 [ %72, %77 ], [ %2890, %2889 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  %86 = load i32, ptr %78, align 8, !tbaa !154
  %87 = load i32, ptr %79, align 8, !tbaa !157
  %88 = load ptr, ptr %80, align 8, !tbaa !142
  %89 = load ptr, ptr %0, align 8, !tbaa !193
  %90 = getelementptr inbounds %struct.xpv, ptr %89, i64 0, i32 2
  %91 = load i64, ptr %90, align 8, !tbaa !194
  %92 = getelementptr inbounds i8, ptr %88, i64 %91
  %93 = icmp eq i32 %87, 2
  br i1 %93, label %94, label %99, !prof !251

94:                                               ; preds = %82
  %95 = and i32 %86, 255
  %96 = call ptr @memchr(ptr nonnull dereferenceable(1) @.str.43, i32 %95, i64 5)
  %97 = icmp eq ptr %96, null
  %98 = select i1 %97, i32 %84, i32 0
  br label %101

99:                                               ; preds = %82
  %100 = load i32, ptr %81, align 4, !tbaa !159
  br label %101

101:                                              ; preds = %99, %94
  %102 = phi i32 [ %98, %94 ], [ %100, %99 ]
  %103 = freeze i32 %102
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %137, label %105, !prof !251

105:                                              ; preds = %101
  %106 = and i32 %86, -1537
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [512 x i8], ptr @packprops, i64 0, i64 %107
  %109 = load i8, ptr %108, align 1, !tbaa !142
  %110 = zext i8 %109 to i32
  %111 = icmp ne i8 %109, 0
  %112 = and i32 %110, 64
  %113 = icmp eq i32 %112, 0
  %114 = and i1 %111, %113
  br i1 %114, label %115, label %137, !prof !252

115:                                              ; preds = %105
  %116 = and i32 %110, 63
  %117 = zext nneg i32 %116 to i64
  %118 = sext i32 %103 to i64
  %119 = mul nsw i64 %117, %118
  %120 = and i8 %85, 1
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %124, label %122, !prof !253

122:                                              ; preds = %115
  %123 = shl nsw i64 %119, 1
  br label %124

124:                                              ; preds = %122, %115
  %125 = phi i64 [ %123, %122 ], [ %119, %115 ]
  %126 = getelementptr inbounds i8, ptr %92, i64 %125
  %127 = getelementptr inbounds %struct.xpv, ptr %89, i64 0, i32 3
  %128 = load i64, ptr %127, align 8, !tbaa !142
  %129 = getelementptr inbounds i8, ptr %88, i64 %128
  %130 = icmp ult ptr %126, %129
  br i1 %130, label %137, label %131, !prof !253

131:                                              ; preds = %124
  %132 = call fastcc ptr @S_sv_exp_grow(ptr noundef nonnull %0, i64 noundef %125) #15
  %133 = load ptr, ptr %0, align 8, !tbaa !193
  %134 = getelementptr inbounds %struct.xpv, ptr %133, i64 0, i32 2
  %135 = load i64, ptr %134, align 8, !tbaa !194
  %136 = getelementptr inbounds i8, ptr %132, i64 %135
  br label %137

137:                                              ; preds = %105, %131, %124, %101
  %138 = phi ptr [ %92, %101 ], [ %92, %105 ], [ %136, %131 ], [ %92, %124 ]
  %139 = phi ptr [ %88, %101 ], [ %88, %105 ], [ %132, %131 ], [ %88, %124 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false), !tbaa.struct !165
  %140 = call fastcc zeroext i1 @S_next_symbol(ptr noundef nonnull %5) #15
  %141 = load i32, ptr %54, align 8, !tbaa !139
  %142 = and i32 %141, 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %184, label %144, !prof !253

144:                                              ; preds = %137
  %145 = getelementptr inbounds %struct.tempsym, ptr %5, i64 0, i32 4
  %146 = getelementptr inbounds %struct.tempsym, ptr %5, i64 0, i32 6
  %147 = getelementptr inbounds %struct.tempsym, ptr %5, i64 0, i32 5
  br i1 %140, label %149, label %148

148:                                              ; preds = %144
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.44) #16
  br label %149

149:                                              ; preds = %148, %144
  %150 = load i32, ptr %145, align 8, !tbaa !154
  %151 = call ptr @memchr(ptr nonnull dereferenceable(1) @.str.45, i32 %150, i64 4)
  %152 = icmp eq ptr %151, null
  %153 = load i32, ptr %146, align 8, !tbaa !157
  %154 = icmp eq i32 %153, 1
  br i1 %152, label %171, label %155

155:                                              ; preds = %149
  br i1 %154, label %156, label %159

156:                                              ; preds = %155
  %157 = load i32, ptr %147, align 4, !tbaa !159
  %158 = sext i32 %157 to i64
  br label %179

159:                                              ; preds = %155
  %160 = icmp sgt i32 %84, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %159
  %162 = load ptr, ptr %83, align 8, !tbaa !152
  %163 = call i64 @Perl_sv_len_utf8(ptr noundef %162) #16
  %164 = load i32, ptr %145, align 8, !tbaa !154
  br label %165

165:                                              ; preds = %159, %161
  %166 = phi i32 [ %164, %161 ], [ %150, %159 ]
  %167 = phi i64 [ %163, %161 ], [ 0, %159 ]
  %168 = icmp eq i32 %166, 90
  %169 = zext i1 %168 to i64
  %170 = add nsw i64 %167, %169
  br label %179

171:                                              ; preds = %149
  br i1 %154, label %172, label %177

172:                                              ; preds = %171
  %173 = load i32, ptr %147, align 4, !tbaa !159
  %174 = icmp slt i32 %173, %84
  br i1 %174, label %175, label %177

175:                                              ; preds = %172
  %176 = sext i32 %173 to i64
  br label %179

177:                                              ; preds = %172, %171
  %178 = sext i32 %84 to i64
  br label %179

179:                                              ; preds = %165, %175, %177, %156
  %180 = phi i64 [ %158, %156 ], [ %176, %175 ], [ %178, %177 ], [ %170, %165 ]
  store i32 1, ptr %146, align 8, !tbaa !157
  %181 = trunc i64 %180 to i32
  store i32 %181, ptr %147, align 4, !tbaa !159
  %182 = call ptr @Perl_newSViv(i64 noundef %180) #16
  %183 = call ptr @Perl_sv_2mortal(ptr noundef %182) #16
  br label %184

184:                                              ; preds = %179, %137
  %185 = phi ptr [ %183, %179 ], [ null, %137 ]
  %186 = and i32 %86, 1536
  %187 = icmp eq i32 %186, 512
  %188 = and i32 %86, -1537
  switch i32 %188, label %268 [
    i32 37, label %270
    i32 302, label %271
    i32 46, label %271
    i32 320, label %320
    i32 64, label %320
    i32 40, label %400
    i32 344, label %451
    i32 88, label %483
    i32 376, label %556
    i32 120, label %360
    i32 65, label %575
    i32 90, label %575
    i32 97, label %575
    i32 66, label %831
    i32 98, label %831
    i32 72, label %1030
    i32 104, label %1030
    i32 99, label %262
    i32 67, label %1306
    i32 87, label %1359
    i32 85, label %1518
    i32 102, label %256
    i32 100, label %250
    i32 70, label %1730
    i32 366, label %1767
    i32 110, label %1767
    i32 374, label %1811
    i32 118, label %1811
    i32 339, label %1854
    i32 83, label %1854
    i32 371, label %1900
    i32 115, label %1900
    i32 73, label %1946
    i32 329, label %1946
    i32 106, label %244
    i32 74, label %238
    i32 119, label %225
    i32 105, label %2287
    i32 361, label %2287
    i32 334, label %2333
    i32 78, label %2333
    i32 342, label %2377
    i32 86, label %2377
    i32 332, label %219
    i32 76, label %213
    i32 364, label %207
    i32 108, label %201
    i32 81, label %195
    i32 113, label %189
    i32 80, label %2656
    i32 112, label %2672
    i32 117, label %2753
  ], !prof !254

189:                                              ; preds = %184
  %190 = icmp sgt i32 %103, 0
  br i1 %190, label %191, label %2878

191:                                              ; preds = %189
  %192 = icmp eq ptr %185, null
  %193 = and i8 %85, 1
  %194 = icmp eq i8 %193, 0
  br label %2617

195:                                              ; preds = %184
  %196 = icmp sgt i32 %103, 0
  br i1 %196, label %197, label %2878

197:                                              ; preds = %195
  %198 = icmp eq ptr %185, null
  %199 = and i8 %85, 1
  %200 = icmp eq i8 %199, 0
  br label %2578

201:                                              ; preds = %184
  %202 = icmp sgt i32 %103, 0
  br i1 %202, label %203, label %2878

203:                                              ; preds = %201
  %204 = icmp eq ptr %185, null
  %205 = and i8 %85, 1
  %206 = icmp eq i8 %205, 0
  br label %2538

207:                                              ; preds = %184
  %208 = icmp sgt i32 %103, 0
  br i1 %208, label %209, label %2878

209:                                              ; preds = %207
  %210 = icmp eq ptr %185, null
  %211 = and i8 %85, 1
  %212 = icmp eq i8 %211, 0
  br label %2499

213:                                              ; preds = %184
  %214 = icmp sgt i32 %103, 0
  br i1 %214, label %215, label %2878

215:                                              ; preds = %213
  %216 = icmp eq ptr %185, null
  %217 = and i8 %85, 1
  %218 = icmp eq i8 %217, 0
  br label %2459

219:                                              ; preds = %184
  %220 = icmp sgt i32 %103, 0
  br i1 %220, label %221, label %2878, !prof !255

221:                                              ; preds = %219
  %222 = icmp eq ptr %185, null
  %223 = and i8 %85, 1
  %224 = icmp eq i8 %223, 0
  br label %2420

225:                                              ; preds = %184
  %226 = icmp sgt i32 %103, 0
  br i1 %226, label %227, label %2878

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, ptr %32, i64 155
  %229 = getelementptr inbounds [155 x i8], ptr %32, i64 0, i64 154
  %230 = ptrtoint ptr %228 to i64
  %231 = getelementptr inbounds i8, ptr %31, i64 10
  %232 = getelementptr inbounds [10 x i8], ptr %31, i64 0, i64 9
  %233 = ptrtoint ptr %231 to i64
  %234 = icmp eq ptr %185, null
  %235 = and i8 %85, 1
  %236 = icmp eq i8 %235, 0
  %237 = zext nneg i8 %235 to i64
  br label %2070

238:                                              ; preds = %184
  %239 = icmp sgt i32 %103, 0
  br i1 %239, label %240, label %2878

240:                                              ; preds = %238
  %241 = icmp eq ptr %185, null
  %242 = and i8 %85, 1
  %243 = icmp eq i8 %242, 0
  br label %2031

244:                                              ; preds = %184
  %245 = icmp sgt i32 %103, 0
  br i1 %245, label %246, label %2878

246:                                              ; preds = %244
  %247 = icmp eq ptr %185, null
  %248 = and i8 %85, 1
  %249 = icmp eq i8 %248, 0
  br label %1992

250:                                              ; preds = %184
  %251 = icmp sgt i32 %103, 0
  br i1 %251, label %252, label %2878

252:                                              ; preds = %250
  %253 = icmp eq ptr %185, null
  %254 = and i8 %85, 1
  %255 = icmp eq i8 %254, 0
  br label %1692

256:                                              ; preds = %184
  %257 = icmp sgt i32 %103, 0
  br i1 %257, label %258, label %2878

258:                                              ; preds = %256
  %259 = icmp eq ptr %185, null
  %260 = and i8 %85, 1
  %261 = icmp eq i8 %260, 0
  br label %1649

262:                                              ; preds = %184
  %263 = icmp sgt i32 %103, 0
  br i1 %263, label %264, label %2878

264:                                              ; preds = %262
  %265 = icmp eq ptr %185, null
  %266 = and i8 %85, 1
  %267 = icmp eq i8 %266, 0
  br label %1264

268:                                              ; preds = %184
  %269 = and i32 %86, 255
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.46, i32 noundef %269) #16
  br label %270

270:                                              ; preds = %184, %268
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.47) #16
  br label %271

271:                                              ; preds = %184, %184, %270
  %272 = or i1 %93, %104
  %273 = select i1 %93, ptr %139, ptr %138
  br i1 %272, label %293, label %274

274:                                              ; preds = %271
  %275 = add nsw i32 %103, -1
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %286, label %277

277:                                              ; preds = %274, %277
  %278 = phi i32 [ %282, %277 ], [ %275, %274 ]
  %279 = phi ptr [ %281, %277 ], [ %1, %274 ]
  %280 = getelementptr inbounds %struct.tempsym, ptr %279, i64 0, i32 10
  %281 = load ptr, ptr %280, align 8, !tbaa !168
  %282 = add nsw i32 %278, -1
  %283 = icmp ne i32 %282, 0
  %284 = icmp ne ptr %281, null
  %285 = select i1 %283, i1 %284, i1 false
  br i1 %285, label %277, label %286, !llvm.loop !256

286:                                              ; preds = %277, %274
  %287 = phi ptr [ %1, %274 ], [ %281, %277 ]
  %288 = phi i1 [ true, %274 ], [ %284, %277 ]
  br i1 %288, label %289, label %293

289:                                              ; preds = %286
  %290 = getelementptr inbounds %struct.tempsym, ptr %287, i64 0, i32 9
  %291 = load i64, ptr %290, align 8, !tbaa !153
  %292 = getelementptr inbounds i8, ptr %139, i64 %291
  br label %293

293:                                              ; preds = %271, %289, %286
  %294 = phi ptr [ %273, %271 ], [ %292, %289 ], [ %139, %286 ]
  %295 = icmp eq ptr %185, null
  br i1 %295, label %296, label %302

296:                                              ; preds = %293
  %297 = icmp sgt i32 %84, 0
  br i1 %297, label %298, label %302

298:                                              ; preds = %296
  %299 = add nsw i32 %84, -1
  %300 = getelementptr inbounds ptr, ptr %83, i64 1
  %301 = load ptr, ptr %83, align 8, !tbaa !152
  br label %302

302:                                              ; preds = %293, %298, %296
  %303 = phi i32 [ %299, %298 ], [ %84, %296 ], [ %84, %293 ]
  %304 = phi ptr [ %300, %298 ], [ %83, %296 ], [ %83, %293 ]
  %305 = phi ptr [ %301, %298 ], [ @PL_sv_no, %296 ], [ %185, %293 ]
  %306 = call fastcc ptr @S_sv_check_infnan(ptr noundef %305, i32 noundef %86) #15
  %307 = getelementptr inbounds %struct.sv, ptr %306, i64 0, i32 2
  %308 = load i32, ptr %307, align 4, !tbaa !185
  %309 = and i32 %308, 256
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %315, label %311

311:                                              ; preds = %302
  %312 = load ptr, ptr %306, align 8, !tbaa !193
  %313 = getelementptr inbounds %struct.xpviv, ptr %312, i64 0, i32 4
  %314 = load i64, ptr %313, align 8, !tbaa !142
  br label %317

315:                                              ; preds = %302
  %316 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %306, i32 noundef 0) #16
  br label %317

317:                                              ; preds = %315, %311
  %318 = phi i64 [ %314, %311 ], [ %316, %315 ]
  %319 = trunc i64 %318 to i32
  br label %323

320:                                              ; preds = %184, %184
  %321 = load i64, ptr %76, align 8, !tbaa !153
  %322 = getelementptr inbounds i8, ptr %139, i64 %321
  br label %323

323:                                              ; preds = %320, %317
  %324 = phi i32 [ %319, %317 ], [ %103, %320 ]
  %325 = phi ptr [ %294, %317 ], [ %322, %320 ]
  %326 = phi i32 [ %303, %317 ], [ %84, %320 ]
  %327 = phi ptr [ %304, %317 ], [ %83, %320 ]
  %328 = and i8 %85, 1
  %329 = icmp ne i8 %328, 0
  %330 = and i32 %86, 256
  %331 = icmp eq i32 %330, 0
  %332 = select i1 %329, i1 %331, i1 false
  br i1 %332, label %333, label %389

333:                                              ; preds = %323
  %334 = icmp sgt i32 %324, -1
  br i1 %334, label %335, label %387

335:                                              ; preds = %333
  %336 = icmp ne i32 %324, 0
  %337 = icmp ult ptr %325, %138
  %338 = select i1 %336, i1 %337, i1 false
  br i1 %338, label %339, label %352

339:                                              ; preds = %335, %339
  %340 = phi ptr [ %347, %339 ], [ %325, %335 ]
  %341 = phi i32 [ %348, %339 ], [ %324, %335 ]
  %342 = load i8, ptr %340, align 1, !tbaa !142
  %343 = zext i8 %342 to i64
  %344 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %343
  %345 = load i8, ptr %344, align 1, !tbaa !142
  %346 = zext i8 %345 to i64
  %347 = getelementptr inbounds i8, ptr %340, i64 %346
  %348 = add nsw i32 %341, -1
  %349 = icmp ne i32 %348, 0
  %350 = icmp ult ptr %347, %138
  %351 = select i1 %349, i1 %350, i1 false
  br i1 %351, label %339, label %352, !llvm.loop !257

352:                                              ; preds = %339, %335
  %353 = phi i32 [ %324, %335 ], [ %348, %339 ]
  %354 = phi ptr [ %325, %335 ], [ %347, %339 ]
  %355 = phi i1 [ %336, %335 ], [ %349, %339 ]
  %356 = phi i1 [ %337, %335 ], [ %350, %339 ]
  %357 = icmp ugt ptr %354, %138
  br i1 %357, label %358, label %359

358:                                              ; preds = %352
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.48) #16
  br label %359

359:                                              ; preds = %358, %352
  br i1 %355, label %360, label %381

360:                                              ; preds = %570, %184, %389, %359
  %361 = phi i32 [ %394, %389 ], [ %353, %359 ], [ %103, %184 ], [ %574, %570 ]
  %362 = phi i32 [ %326, %389 ], [ %326, %359 ], [ %84, %184 ], [ %84, %570 ]
  %363 = phi ptr [ %327, %389 ], [ %327, %359 ], [ %83, %184 ], [ %83, %570 ]
  %364 = sext i32 %361 to i64
  %365 = getelementptr inbounds i8, ptr %138, i64 %364
  %366 = load ptr, ptr %0, align 8, !tbaa !193
  %367 = getelementptr inbounds %struct.xpv, ptr %366, i64 0, i32 3
  %368 = load i64, ptr %367, align 8, !tbaa !142
  %369 = getelementptr inbounds i8, ptr %139, i64 %368
  %370 = icmp ult ptr %365, %369
  br i1 %370, label %377, label %371

371:                                              ; preds = %360
  %372 = call fastcc ptr @S_sv_exp_grow(ptr noundef nonnull %0, i64 noundef %364) #15
  %373 = load ptr, ptr %0, align 8, !tbaa !193
  %374 = getelementptr inbounds %struct.xpv, ptr %373, i64 0, i32 2
  %375 = load i64, ptr %374, align 8, !tbaa !194
  %376 = getelementptr inbounds i8, ptr %372, i64 %375
  br label %377

377:                                              ; preds = %371, %360
  %378 = phi ptr [ %376, %371 ], [ %138, %360 ]
  %379 = phi ptr [ %372, %371 ], [ %139, %360 ]
  call void @llvm.memset.p0.i64(ptr align 1 %378, i8 0, i64 %364, i1 false)
  %380 = getelementptr inbounds i8, ptr %378, i64 %364
  br label %2878

381:                                              ; preds = %359
  br i1 %356, label %382, label %2889

382:                                              ; preds = %381
  %383 = ptrtoint ptr %138 to i64
  %384 = ptrtoint ptr %354 to i64
  %385 = sub i64 %383, %384
  %386 = trunc i64 %385 to i32
  br label %520

387:                                              ; preds = %333
  %388 = sub nsw i32 0, %324
  br label %491

389:                                              ; preds = %323
  %390 = ptrtoint ptr %138 to i64
  %391 = ptrtoint ptr %325 to i64
  %392 = sub i64 %391, %390
  %393 = trunc i64 %392 to i32
  %394 = add i32 %324, %393
  %395 = icmp sgt i32 %394, 0
  br i1 %395, label %360, label %396

396:                                              ; preds = %389
  %397 = icmp eq i32 %394, 0
  br i1 %397, label %2889, label %398

398:                                              ; preds = %396
  %399 = sub nsw i32 0, %394
  br label %520

400:                                              ; preds = %184
  %401 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %402 = getelementptr inbounds i8, ptr %1, i64 16
  %403 = getelementptr inbounds i8, ptr %1, i64 24
  %404 = getelementptr inbounds %struct.tempsym, ptr %1, i64 0, i32 1
  %405 = getelementptr inbounds %struct.tempsym, ptr %1, i64 0, i32 10
  %406 = load ptr, ptr %402, align 8, !tbaa.struct !258
  %407 = load ptr, ptr %403, align 8, !tbaa.struct !259
  %408 = load i32, ptr %79, align 8, !tbaa.struct !260
  %409 = load i32, ptr %54, align 8, !tbaa !139
  %410 = and i32 %86, -256
  %411 = or i32 %410, %409
  store i32 %411, ptr %54, align 8, !tbaa !139
  store ptr %407, ptr %404, align 8, !tbaa !138
  %412 = load i32, ptr %60, align 4, !tbaa !169
  %413 = add nsw i32 %412, 1
  store i32 %413, ptr %60, align 4, !tbaa !169
  store ptr %5, ptr %405, align 8, !tbaa !168
  %414 = icmp eq i32 %408, 2
  br label %415

415:                                              ; preds = %422, %400
  %416 = phi i32 [ %103, %400 ], [ %423, %422 ]
  %417 = phi i8 [ %85, %400 ], [ %436, %422 ]
  %418 = phi ptr [ %83, %400 ], [ %431, %422 ]
  %419 = icmp eq i32 %416, 0
  br i1 %419, label %420, label %422

420:                                              ; preds = %415
  %421 = ptrtoint ptr %418 to i64
  br label %439

422:                                              ; preds = %415
  %423 = add nsw i32 %416, -1
  %424 = load i32, ptr %54, align 8, !tbaa !139
  %425 = and i32 %424, -33
  %426 = shl i8 %417, 5
  %427 = and i8 %426, 32
  %428 = zext nneg i8 %427 to i32
  %429 = or disjoint i32 %425, %428
  store i32 %429, ptr %54, align 8, !tbaa !139
  %430 = load i32, ptr %401, align 4, !tbaa !185
  store ptr %406, ptr %1, align 8, !tbaa !134
  %431 = call fastcc ptr @S_pack_rec(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %418, ptr noundef %3) #15
  %432 = load i32, ptr %401, align 4, !tbaa !185
  %433 = xor i32 %432, %430
  %434 = and i32 %433, 536870912
  %435 = icmp eq i32 %434, 0
  %436 = select i1 %435, i8 %417, i8 1
  %437 = icmp eq ptr %431, %3
  %438 = select i1 %414, i1 %437, i1 false
  br i1 %438, label %439, label %415

439:                                              ; preds = %422, %420
  %440 = phi i64 [ %421, %420 ], [ %48, %422 ]
  %441 = phi i8 [ %417, %420 ], [ %436, %422 ]
  %442 = phi ptr [ %418, %420 ], [ %3, %422 ]
  %443 = getelementptr inbounds %struct.tempsym, ptr %5, i64 0, i32 8
  %444 = sub i64 %48, %440
  %445 = lshr exact i64 %444, 3
  %446 = trunc i64 %445 to i32
  %447 = load i32, ptr %54, align 8, !tbaa !139
  %448 = xor i32 %410, -1
  %449 = or i32 %409, %448
  %450 = and i32 %447, %449
  store i32 %450, ptr %443, align 8, !tbaa !139
  br label %2889

451:                                              ; preds = %184
  %452 = call i32 @llvm.umax.i32(i32 %103, i32 1)
  %453 = and i8 %85, 1
  %454 = icmp eq i8 %453, 0
  br i1 %454, label %476, label %455

455:                                              ; preds = %451
  %456 = icmp ult ptr %139, %138
  br i1 %456, label %457, label %472

457:                                              ; preds = %455, %457
  %458 = phi ptr [ %466, %457 ], [ %139, %455 ]
  %459 = phi ptr [ %470, %457 ], [ %139, %455 ]
  %460 = phi i32 [ %469, %457 ], [ %452, %455 ]
  %461 = load i8, ptr %458, align 1, !tbaa !142
  %462 = zext i8 %461 to i64
  %463 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %462
  %464 = load i8, ptr %463, align 1, !tbaa !142
  %465 = zext i8 %464 to i64
  %466 = getelementptr inbounds i8, ptr %458, i64 %465
  %467 = add nsw i32 %460, -1
  %468 = icmp eq i32 %467, 0
  %469 = select i1 %468, i32 %452, i32 %467
  %470 = select i1 %468, ptr %466, ptr %459
  %471 = icmp ult ptr %466, %138
  br i1 %471, label %457, label %472, !llvm.loop !261

472:                                              ; preds = %457, %455
  %473 = phi ptr [ %139, %455 ], [ %470, %457 ]
  %474 = icmp ugt ptr %473, %138
  br i1 %474, label %475, label %2878

475:                                              ; preds = %472
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.48) #16
  br label %2878

476:                                              ; preds = %451
  %477 = ptrtoint ptr %138 to i64
  %478 = ptrtoint ptr %139 to i64
  %479 = sub i64 %477, %478
  %480 = sext i32 %452 to i64
  %481 = srem i64 %479, %480
  %482 = trunc i64 %481 to i32
  br label %486

483:                                              ; preds = %184
  %484 = and i8 %85, 1
  %485 = icmp eq i8 %484, 0
  br i1 %485, label %486, label %489

486:                                              ; preds = %476, %483
  %487 = phi i32 [ %482, %476 ], [ %103, %483 ]
  %488 = ptrtoint ptr %138 to i64
  br label %520

489:                                              ; preds = %483
  %490 = icmp slt i32 %103, 1
  br i1 %490, label %2889, label %491

491:                                              ; preds = %387, %489
  %492 = phi ptr [ %325, %387 ], [ %138, %489 ]
  %493 = phi i32 [ %388, %387 ], [ %103, %489 ]
  %494 = phi i32 [ %326, %387 ], [ %84, %489 ]
  %495 = phi ptr [ %327, %387 ], [ %83, %489 ]
  %496 = and i32 %86, 255
  br label %497

497:                                              ; preds = %491, %516
  %498 = phi i32 [ %493, %491 ], [ %518, %516 ]
  %499 = phi ptr [ %492, %491 ], [ %517, %516 ]
  %500 = icmp ugt ptr %499, %139
  br i1 %500, label %502, label %501

501:                                              ; preds = %497
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.49, i32 noundef %496) #16
  br label %502

502:                                              ; preds = %501, %497
  %503 = getelementptr inbounds i8, ptr %499, i64 -1
  %504 = load i8, ptr %503, align 1, !tbaa !142
  %505 = and i8 %504, -64
  %506 = icmp eq i8 %505, -128
  br i1 %506, label %507, label %516

507:                                              ; preds = %502, %511
  %508 = phi ptr [ %512, %511 ], [ %503, %502 ]
  %509 = icmp ugt ptr %508, %139
  br i1 %509, label %511, label %510

510:                                              ; preds = %507
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.49, i32 noundef %496) #16
  br label %511

511:                                              ; preds = %510, %507
  %512 = getelementptr inbounds i8, ptr %508, i64 -1
  %513 = load i8, ptr %512, align 1, !tbaa !142
  %514 = and i8 %513, -64
  %515 = icmp eq i8 %514, -128
  br i1 %515, label %507, label %516, !llvm.loop !262

516:                                              ; preds = %511, %502
  %517 = phi ptr [ %503, %502 ], [ %512, %511 ]
  %518 = add nsw i32 %498, -1
  %519 = icmp sgt i32 %498, 1
  br i1 %519, label %497, label %534, !llvm.loop !263

520:                                              ; preds = %486, %398, %382
  %521 = phi i64 [ %488, %486 ], [ %390, %398 ], [ %383, %382 ]
  %522 = phi i32 [ %487, %486 ], [ %399, %398 ], [ %386, %382 ]
  %523 = phi i32 [ %84, %486 ], [ %326, %398 ], [ %326, %382 ]
  %524 = phi ptr [ %83, %486 ], [ %327, %398 ], [ %327, %382 ]
  %525 = ptrtoint ptr %139 to i64
  %526 = sub i64 %521, %525
  %527 = sext i32 %522 to i64
  %528 = icmp slt i64 %526, %527
  br i1 %528, label %529, label %531

529:                                              ; preds = %520
  %530 = and i32 %86, 255
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.49, i32 noundef %530) #16
  br label %531

531:                                              ; preds = %529, %520
  %532 = sub nsw i64 0, %527
  %533 = getelementptr inbounds i8, ptr %138, i64 %532
  br label %534

534:                                              ; preds = %516, %531
  %535 = phi ptr [ %533, %531 ], [ %517, %516 ]
  %536 = phi i32 [ %523, %531 ], [ %494, %516 ]
  %537 = phi ptr [ %524, %531 ], [ %495, %516 ]
  %538 = load i64, ptr %76, align 8, !tbaa !153
  %539 = getelementptr inbounds i8, ptr %139, i64 %538
  %540 = icmp ult ptr %535, %539
  br i1 %540, label %541, label %2878

541:                                              ; preds = %534
  %542 = ptrtoint ptr %535 to i64
  %543 = ptrtoint ptr %139 to i64
  %544 = sub i64 %542, %543
  br label %545

545:                                              ; preds = %541, %550
  %546 = phi ptr [ %552, %550 ], [ %1, %541 ]
  %547 = getelementptr inbounds %struct.tempsym, ptr %546, i64 0, i32 9
  %548 = load i64, ptr %547, align 8, !tbaa !153
  %549 = icmp ult i64 %544, %548
  br i1 %549, label %550, label %554

550:                                              ; preds = %545
  store i64 %544, ptr %547, align 8, !tbaa !153
  %551 = getelementptr inbounds %struct.tempsym, ptr %546, i64 0, i32 10
  %552 = load ptr, ptr %551, align 8, !tbaa !168
  %553 = icmp eq ptr %552, null
  br i1 %553, label %554, label %545, !llvm.loop !264

554:                                              ; preds = %545, %550
  %555 = getelementptr inbounds %struct.tempsym, ptr %5, i64 0, i32 9
  store i64 %544, ptr %555, align 8, !tbaa !153
  br label %2878

556:                                              ; preds = %184
  %557 = call i32 @llvm.umax.i32(i32 %103, i32 1)
  %558 = and i8 %85, 1
  %559 = icmp eq i8 %558, 0
  br i1 %559, label %564, label %560

560:                                              ; preds = %556
  %561 = call i64 @Perl_utf8_length(ptr noundef %139, ptr noundef %138) #16
  %562 = sext i32 %557 to i64
  %563 = urem i64 %561, %562
  br label %570

564:                                              ; preds = %556
  %565 = ptrtoint ptr %138 to i64
  %566 = ptrtoint ptr %139 to i64
  %567 = sub i64 %565, %566
  %568 = sext i32 %557 to i64
  %569 = srem i64 %567, %568
  br label %570

570:                                              ; preds = %564, %560
  %571 = phi i64 [ %563, %560 ], [ %569, %564 ]
  %572 = trunc i64 %571 to i32
  %573 = icmp eq i32 %572, 0
  %574 = sub nsw i32 %557, %572
  br i1 %573, label %2889, label %360

575:                                              ; preds = %184, %184, %184
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #14
  %576 = icmp eq ptr %185, null
  br i1 %576, label %577, label %583

577:                                              ; preds = %575
  %578 = icmp sgt i32 %84, 0
  br i1 %578, label %579, label %583

579:                                              ; preds = %577
  %580 = add nsw i32 %84, -1
  %581 = getelementptr inbounds ptr, ptr %83, i64 1
  %582 = load ptr, ptr %83, align 8, !tbaa !152
  br label %583

583:                                              ; preds = %575, %579, %577
  %584 = phi i32 [ %580, %579 ], [ %84, %577 ], [ %84, %575 ]
  %585 = phi ptr [ %581, %579 ], [ %83, %577 ], [ %83, %575 ]
  %586 = phi ptr [ %582, %579 ], [ @PL_sv_no, %577 ], [ %185, %575 ]
  %587 = getelementptr inbounds %struct.sv, ptr %586, i64 0, i32 2
  %588 = load i32, ptr %587, align 4, !tbaa !185
  %589 = and i32 %588, 2098176
  %590 = icmp eq i32 %589, 1024
  br i1 %590, label %591, label %597

591:                                              ; preds = %583
  %592 = load ptr, ptr %586, align 8, !tbaa !193
  %593 = getelementptr inbounds %struct.xpv, ptr %592, i64 0, i32 2
  %594 = load i64, ptr %593, align 8, !tbaa !194
  store i64 %594, ptr %6, align 8, !tbaa !129
  %595 = getelementptr inbounds %struct.sv, ptr %586, i64 0, i32 3
  %596 = load ptr, ptr %595, align 8, !tbaa !142
  br label %600

597:                                              ; preds = %583
  %598 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %586, ptr noundef nonnull %6, i32 noundef 34) #16
  %599 = load i32, ptr %587, align 4, !tbaa !185
  br label %600

600:                                              ; preds = %597, %591
  %601 = phi i32 [ %588, %591 ], [ %599, %597 ]
  %602 = phi ptr [ %596, %591 ], [ %598, %597 ]
  store ptr %602, ptr %7, align 8, !tbaa !152
  %603 = and i32 %601, 536870912
  %604 = icmp eq i32 %603, 0
  br i1 %604, label %723, label %605

605:                                              ; preds = %600
  %606 = load ptr, ptr @PL_curcop, align 8, !tbaa !152
  %607 = getelementptr inbounds %struct.cop, ptr %606, i64 0, i32 10
  %608 = load i32, ptr %607, align 8, !tbaa !242
  %609 = and i32 %608, 8
  %610 = icmp eq i32 %609, 0
  br i1 %610, label %611, label %723

611:                                              ; preds = %605
  %612 = and i8 %85, 1
  %613 = icmp eq i8 %612, 0
  br i1 %613, label %614, label %630

614:                                              ; preds = %611
  %615 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %616 = load i32, ptr %615, align 4, !tbaa !185
  %617 = and i32 %616, 536870912
  %618 = icmp eq i32 %617, 0
  br i1 %618, label %619, label %630

619:                                              ; preds = %614
  %620 = getelementptr inbounds %struct.tempsym, ptr %5, i64 0, i32 8
  %621 = getelementptr inbounds %struct.tempsym, ptr %5, i64 0, i32 9
  call fastcc void @marked_upgrade(ptr noundef nonnull %0, ptr noundef nonnull %1) #15
  %622 = load i32, ptr %620, align 8, !tbaa !139
  %623 = or i32 %622, 8
  store i32 %623, ptr %620, align 8, !tbaa !139
  %624 = load i64, ptr %76, align 8, !tbaa !153
  store i64 %624, ptr %621, align 8, !tbaa !153
  %625 = load ptr, ptr %80, align 8, !tbaa !142
  %626 = load ptr, ptr %0, align 8, !tbaa !193
  %627 = getelementptr inbounds %struct.xpv, ptr %626, i64 0, i32 2
  %628 = load i64, ptr %627, align 8, !tbaa !194
  %629 = getelementptr inbounds i8, ptr %625, i64 %628
  br label %630

630:                                              ; preds = %619, %614, %611
  %631 = phi ptr [ %138, %611 ], [ %138, %614 ], [ %629, %619 ]
  %632 = phi ptr [ %139, %611 ], [ %139, %614 ], [ %625, %619 ]
  %633 = phi i8 [ %85, %611 ], [ %85, %614 ], [ 1, %619 ]
  br i1 %93, label %636, label %634

634:                                              ; preds = %630
  %635 = load i64, ptr %6, align 8, !tbaa !129
  br label %643

636:                                              ; preds = %630
  %637 = and i8 %633, 1
  %638 = icmp eq i8 %637, 0
  %639 = load i64, ptr %6, align 8
  br i1 %638, label %640, label %774

640:                                              ; preds = %636
  %641 = trunc i64 %639 to i32
  %642 = add i32 %641, 1
  br label %643

643:                                              ; preds = %634, %640
  %644 = phi i64 [ %639, %640 ], [ %635, %634 ]
  %645 = phi i32 [ %642, %640 ], [ %103, %634 ]
  %646 = getelementptr inbounds i8, ptr %602, i64 %644
  %647 = icmp eq i32 %86, 90
  %648 = sext i1 %647 to i32
  %649 = add nsw i32 %645, %648
  %650 = sext i32 %649 to i64
  store i64 %650, ptr %6, align 8, !tbaa !129
  %651 = icmp sgt i32 %649, 0
  %652 = icmp sgt i64 %644, 0
  %653 = select i1 %651, i1 %652, i1 false
  br i1 %653, label %654, label %668

654:                                              ; preds = %643, %654
  %655 = phi ptr [ %662, %654 ], [ %602, %643 ]
  %656 = phi i64 [ %663, %654 ], [ %650, %643 ]
  %657 = load i8, ptr %655, align 1, !tbaa !142
  %658 = zext i8 %657 to i64
  %659 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %658
  %660 = load i8, ptr %659, align 1, !tbaa !142
  %661 = zext i8 %660 to i64
  %662 = getelementptr inbounds i8, ptr %655, i64 %661
  %663 = add nsw i64 %656, -1
  store i64 %663, ptr %6, align 8, !tbaa !129
  %664 = trunc i64 %663 to i32
  %665 = icmp sgt i32 %664, 0
  %666 = icmp ult ptr %662, %646
  %667 = select i1 %665, i1 %666, i1 false
  br i1 %667, label %654, label %668, !llvm.loop !265

668:                                              ; preds = %654, %643
  %669 = phi ptr [ %602, %643 ], [ %662, %654 ]
  %670 = icmp ugt ptr %669, %646
  br i1 %670, label %671, label %672

671:                                              ; preds = %668
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.48) #16
  br label %672

672:                                              ; preds = %671, %668
  %673 = and i8 %633, 1
  %674 = icmp eq i8 %673, 0
  br i1 %674, label %684, label %675

675:                                              ; preds = %672
  %676 = load i64, ptr %6, align 8, !tbaa !129
  %677 = zext i1 %647 to i64
  %678 = ptrtoint ptr %669 to i64
  %679 = ptrtoint ptr %602 to i64
  %680 = sub i64 %678, %679
  store i64 %680, ptr %6, align 8, !tbaa !129
  %681 = add i64 %680, %677
  %682 = add i64 %681, %676
  %683 = trunc i64 %682 to i32
  br label %774

684:                                              ; preds = %672
  %685 = sext i32 %645 to i64
  %686 = load i64, ptr %6, align 8, !tbaa !129
  %687 = sub i64 %685, %686
  %688 = sext i1 %647 to i64
  %689 = add i64 %687, %688
  store i64 %689, ptr %6, align 8, !tbaa !129
  %690 = trunc i64 %689 to i32
  %691 = zext i1 %647 to i32
  %692 = add nsw i32 %690, %691
  %693 = select i1 %93, i32 %692, i32 %645
  %694 = sext i32 %693 to i64
  %695 = getelementptr inbounds i8, ptr %631, i64 %694
  %696 = load ptr, ptr %0, align 8, !tbaa !193
  %697 = getelementptr inbounds %struct.xpv, ptr %696, i64 0, i32 3
  %698 = load i64, ptr %697, align 8, !tbaa !142
  %699 = getelementptr inbounds i8, ptr %632, i64 %698
  %700 = icmp ult ptr %695, %699
  br i1 %700, label %709, label %701

701:                                              ; preds = %684
  %702 = call fastcc ptr @S_sv_exp_grow(ptr noundef nonnull %0, i64 noundef %694) #15
  %703 = load ptr, ptr %0, align 8, !tbaa !193
  %704 = getelementptr inbounds %struct.xpv, ptr %703, i64 0, i32 2
  %705 = load i64, ptr %704, align 8, !tbaa !194
  %706 = getelementptr inbounds i8, ptr %702, i64 %705
  %707 = load i64, ptr %6, align 8, !tbaa !129
  %708 = trunc i64 %707 to i32
  br label %709

709:                                              ; preds = %701, %684
  %710 = phi i32 [ %708, %701 ], [ %690, %684 ]
  %711 = phi ptr [ %706, %701 ], [ %631, %684 ]
  %712 = phi ptr [ %702, %701 ], [ %632, %684 ]
  %713 = or i32 %86, 2048
  %714 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %7, ptr noundef %646, ptr noundef %711, i32 noundef %710, i32 noundef %713) #15
  br i1 %714, label %718, label %715

715:                                              ; preds = %709
  %716 = load ptr, ptr %7, align 8, !tbaa !152
  %717 = load i64, ptr %6, align 8, !tbaa !129
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.50, i32 noundef %86, ptr noundef %716, ptr noundef %646, ptr noundef %711, i64 noundef %717) #16
  br label %718

718:                                              ; preds = %709, %715
  %719 = load i64, ptr %6, align 8, !tbaa !129
  %720 = getelementptr inbounds i8, ptr %711, i64 %719
  %721 = trunc i64 %719 to i32
  %722 = sub i32 %693, %721
  br label %815

723:                                              ; preds = %605, %600
  %724 = and i8 %85, 1
  %725 = icmp eq i8 %724, 0
  %726 = load i64, ptr %6, align 8
  br i1 %725, label %774, label %727

727:                                              ; preds = %723
  %728 = trunc i64 %726 to i32
  %729 = icmp eq i32 %86, 90
  %730 = zext i1 %729 to i32
  %731 = add nsw i32 %728, %730
  %732 = select i1 %93, i32 %731, i32 %103
  %733 = icmp sgt i32 %732, %728
  %734 = sext i32 %732 to i64
  br i1 %733, label %740, label %735

735:                                              ; preds = %727
  store i64 %734, ptr %6, align 8, !tbaa !129
  %736 = icmp ne i32 %732, 0
  %737 = and i1 %729, %736
  br i1 %737, label %738, label %740

738:                                              ; preds = %735
  %739 = add nsw i64 %734, -1
  store i64 %739, ptr %6, align 8, !tbaa !129
  br label %740

740:                                              ; preds = %727, %738, %735
  %741 = phi i64 [ %739, %738 ], [ %734, %735 ], [ %726, %727 ]
  %742 = add i64 %741, %734
  %743 = getelementptr inbounds i8, ptr %138, i64 %742
  %744 = load ptr, ptr %0, align 8, !tbaa !193
  %745 = getelementptr inbounds %struct.xpv, ptr %744, i64 0, i32 3
  %746 = load i64, ptr %745, align 8, !tbaa !142
  %747 = getelementptr inbounds i8, ptr %139, i64 %746
  %748 = icmp ult ptr %743, %747
  br i1 %748, label %756, label %749

749:                                              ; preds = %740
  %750 = call fastcc ptr @S_sv_exp_grow(ptr noundef nonnull %0, i64 noundef %742) #15
  %751 = load ptr, ptr %0, align 8, !tbaa !193
  %752 = getelementptr inbounds %struct.xpv, ptr %751, i64 0, i32 2
  %753 = load i64, ptr %752, align 8, !tbaa !194
  %754 = getelementptr inbounds i8, ptr %750, i64 %753
  %755 = load i64, ptr %6, align 8, !tbaa !129
  br label %756

756:                                              ; preds = %749, %740
  %757 = phi i64 [ %755, %749 ], [ %741, %740 ]
  %758 = phi ptr [ %754, %749 ], [ %138, %740 ]
  %759 = phi ptr [ %750, %749 ], [ %139, %740 ]
  %760 = trunc i64 %757 to i32
  %761 = sub i32 %732, %760
  %762 = icmp eq i64 %757, 0
  br i1 %762, label %815, label %763

763:                                              ; preds = %756, %763
  %764 = phi ptr [ %770, %763 ], [ %602, %756 ]
  %765 = phi ptr [ %768, %763 ], [ %758, %756 ]
  %766 = load i8, ptr %764, align 1, !tbaa !142
  %767 = zext i8 %766 to i64
  %768 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %765, i64 noundef %767, i64 noundef 0) #16
  %769 = load ptr, ptr %7, align 8, !tbaa !152
  %770 = getelementptr inbounds i8, ptr %769, i64 1
  store ptr %770, ptr %7, align 8, !tbaa !152
  %771 = load i64, ptr %6, align 8, !tbaa !129
  %772 = add i64 %771, -1
  store i64 %772, ptr %6, align 8, !tbaa !129
  %773 = icmp eq i64 %772, 0
  br i1 %773, label %815, label %763, !llvm.loop !266

774:                                              ; preds = %636, %675, %723
  %775 = phi i64 [ %726, %723 ], [ %680, %675 ], [ %639, %636 ]
  %776 = phi ptr [ %138, %723 ], [ %631, %675 ], [ %631, %636 ]
  %777 = phi ptr [ %139, %723 ], [ %632, %675 ], [ %632, %636 ]
  %778 = phi i32 [ %103, %723 ], [ %683, %675 ], [ %103, %636 ]
  %779 = phi i8 [ %85, %723 ], [ %633, %675 ], [ %633, %636 ]
  %780 = trunc i64 %775 to i32
  %781 = icmp eq i32 %86, 90
  %782 = zext i1 %781 to i32
  %783 = add nsw i32 %780, %782
  %784 = select i1 %93, i32 %783, i32 %778
  %785 = icmp sgt i32 %784, %780
  %786 = sext i32 %784 to i64
  br i1 %785, label %792, label %787

787:                                              ; preds = %774
  store i64 %786, ptr %6, align 8, !tbaa !129
  %788 = icmp ne i32 %784, 0
  %789 = and i1 %781, %788
  br i1 %789, label %790, label %792

790:                                              ; preds = %787
  %791 = add nsw i64 %786, -1
  store i64 %791, ptr %6, align 8, !tbaa !129
  br label %792

792:                                              ; preds = %774, %790, %787
  %793 = phi i64 [ %791, %790 ], [ %786, %787 ], [ %775, %774 ]
  %794 = getelementptr inbounds i8, ptr %776, i64 %786
  %795 = load ptr, ptr %0, align 8, !tbaa !193
  %796 = getelementptr inbounds %struct.xpv, ptr %795, i64 0, i32 3
  %797 = load i64, ptr %796, align 8, !tbaa !142
  %798 = getelementptr inbounds i8, ptr %777, i64 %797
  %799 = icmp ult ptr %794, %798
  br i1 %799, label %807, label %800

800:                                              ; preds = %792
  %801 = call fastcc ptr @S_sv_exp_grow(ptr noundef nonnull %0, i64 noundef %786) #15
  %802 = load ptr, ptr %0, align 8, !tbaa !193
  %803 = getelementptr inbounds %struct.xpv, ptr %802, i64 0, i32 2
  %804 = load i64, ptr %803, align 8, !tbaa !194
  %805 = getelementptr inbounds i8, ptr %801, i64 %804
  %806 = load i64, ptr %6, align 8, !tbaa !129
  br label %807

807:                                              ; preds = %800, %792
  %808 = phi i64 [ %806, %800 ], [ %793, %792 ]
  %809 = phi ptr [ %805, %800 ], [ %776, %792 ]
  %810 = phi ptr [ %801, %800 ], [ %777, %792 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %809, ptr align 1 %602, i64 %808, i1 false)
  %811 = load i64, ptr %6, align 8, !tbaa !129
  %812 = getelementptr inbounds i8, ptr %809, i64 %811
  %813 = trunc i64 %811 to i32
  %814 = sub i32 %784, %813
  br label %815

815:                                              ; preds = %763, %756, %718, %807
  %816 = phi ptr [ %812, %807 ], [ %720, %718 ], [ %758, %756 ], [ %768, %763 ]
  %817 = phi ptr [ %810, %807 ], [ %712, %718 ], [ %759, %756 ], [ %759, %763 ]
  %818 = phi i32 [ %814, %807 ], [ %722, %718 ], [ %761, %756 ], [ %761, %763 ]
  %819 = phi i8 [ %779, %807 ], [ %633, %718 ], [ %85, %756 ], [ %85, %763 ]
  %820 = icmp eq i32 %86, 65
  %821 = select i1 %820, i8 32, i8 0
  %822 = sext i32 %818 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %816, i8 %821, i64 %822, i1 false)
  %823 = getelementptr inbounds i8, ptr %816, i64 %822
  %824 = load i8, ptr @PL_tainting, align 1, !tbaa !267, !range !269, !noundef !270
  %825 = icmp eq i8 %824, 0
  %826 = load i8, ptr @PL_tainted, align 1, !range !269
  %827 = icmp eq i8 %826, 0
  %828 = select i1 %825, i1 true, i1 %827
  br i1 %828, label %830, label %829

829:                                              ; preds = %815
  call void @Perl_sv_magic(ptr noundef %0, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0) #16
  br label %830

830:                                              ; preds = %815, %829
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  br label %2878

831:                                              ; preds = %184, %184
  %832 = icmp eq ptr %185, null
  br i1 %832, label %833, label %839

833:                                              ; preds = %831
  %834 = icmp sgt i32 %84, 0
  br i1 %834, label %835, label %839

835:                                              ; preds = %833
  %836 = add nsw i32 %84, -1
  %837 = getelementptr inbounds ptr, ptr %83, i64 1
  %838 = load ptr, ptr %83, align 8, !tbaa !152
  br label %839

839:                                              ; preds = %831, %835, %833
  %840 = phi i32 [ %836, %835 ], [ %84, %833 ], [ %84, %831 ]
  %841 = phi ptr [ %837, %835 ], [ %83, %833 ], [ %83, %831 ]
  %842 = phi ptr [ %838, %835 ], [ @PL_sv_no, %833 ], [ %185, %831 ]
  %843 = getelementptr inbounds %struct.sv, ptr %842, i64 0, i32 2
  %844 = load i32, ptr %843, align 4, !tbaa !185
  %845 = and i32 %844, 2098176
  %846 = icmp eq i32 %845, 1024
  br i1 %846, label %847, label %853

847:                                              ; preds = %839
  %848 = load ptr, ptr %842, align 8, !tbaa !193
  %849 = getelementptr inbounds %struct.xpv, ptr %848, i64 0, i32 2
  %850 = load i64, ptr %849, align 8, !tbaa !194
  store i64 %850, ptr %6, align 8, !tbaa !129
  %851 = getelementptr inbounds %struct.sv, ptr %842, i64 0, i32 3
  %852 = load ptr, ptr %851, align 8, !tbaa !142
  br label %857

853:                                              ; preds = %839
  %854 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %842, ptr noundef nonnull %6, i32 noundef 34) #16
  %855 = load i64, ptr %6, align 8
  %856 = load i32, ptr %843, align 4, !tbaa !185
  br label %857

857:                                              ; preds = %853, %847
  %858 = phi i32 [ %844, %847 ], [ %856, %853 ]
  %859 = phi i64 [ %850, %847 ], [ %855, %853 ]
  %860 = phi ptr [ %852, %847 ], [ %854, %853 ]
  %861 = getelementptr inbounds i8, ptr %860, i64 %859
  %862 = and i32 %858, 536870912
  %863 = icmp eq i32 %862, 0
  br i1 %863, label %872, label %864

864:                                              ; preds = %857
  %865 = select i1 %59, i32 0, i32 -8161
  %866 = load ptr, ptr @PL_curcop, align 8, !tbaa !152
  %867 = getelementptr inbounds %struct.cop, ptr %866, i64 0, i32 10
  %868 = load i32, ptr %867, align 8, !tbaa !242
  %869 = and i32 %868, 8
  %870 = icmp eq i32 %869, 0
  %871 = select i1 %870, i32 %865, i32 0
  br label %872

872:                                              ; preds = %864, %857
  %873 = phi i1 [ false, %857 ], [ %870, %864 ]
  %874 = phi i32 [ 0, %857 ], [ %871, %864 ]
  %875 = trunc i64 %859 to i32
  %876 = select i1 %93, i32 %875, i32 %103
  %877 = add nsw i32 %876, 7
  %878 = sdiv i32 %877, 8
  %879 = sext i32 %878 to i64
  %880 = and i8 %85, 1
  %881 = icmp eq i8 %880, 0
  %882 = zext nneg i8 %880 to i64
  %883 = shl nsw i64 %879, %882
  %884 = getelementptr inbounds i8, ptr %138, i64 %883
  %885 = load ptr, ptr %0, align 8, !tbaa !193
  %886 = getelementptr inbounds %struct.xpv, ptr %885, i64 0, i32 3
  %887 = load i64, ptr %886, align 8, !tbaa !142
  %888 = getelementptr inbounds i8, ptr %139, i64 %887
  %889 = icmp ult ptr %884, %888
  br i1 %889, label %898, label %890

890:                                              ; preds = %872
  %891 = call fastcc ptr @S_sv_exp_grow(ptr noundef nonnull %0, i64 noundef %883) #15
  %892 = load ptr, ptr %0, align 8, !tbaa !193
  %893 = getelementptr inbounds %struct.xpv, ptr %892, i64 0, i32 2
  %894 = load i64, ptr %893, align 8, !tbaa !194
  %895 = getelementptr inbounds i8, ptr %891, i64 %894
  %896 = load i64, ptr %6, align 8, !tbaa !129
  %897 = trunc i64 %896 to i32
  br label %898

898:                                              ; preds = %890, %872
  %899 = phi i32 [ %897, %890 ], [ %875, %872 ]
  %900 = phi ptr [ %895, %890 ], [ %138, %872 ]
  %901 = phi ptr [ %891, %890 ], [ %139, %872 ]
  %902 = call i32 @llvm.smin.i32(i32 %876, i32 %899)
  %903 = icmp eq i32 %86, 66
  %904 = icmp sgt i32 %902, 0
  br i1 %903, label %908, label %905

905:                                              ; preds = %898
  br i1 %904, label %906, label %1020

906:                                              ; preds = %905
  %907 = ptrtoint ptr %861 to i64
  br label %956

908:                                              ; preds = %898
  br i1 %904, label %909, label %1020

909:                                              ; preds = %908
  %910 = ptrtoint ptr %861 to i64
  br label %911

911:                                              ; preds = %909, %951
  %912 = phi i32 [ 1, %909 ], [ %954, %951 ]
  %913 = phi ptr [ %900, %909 ], [ %953, %951 ]
  %914 = phi i8 [ 0, %909 ], [ %952, %951 ]
  %915 = phi ptr [ %860, %909 ], [ %938, %951 ]
  br i1 %873, label %916, label %934

916:                                              ; preds = %911
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #14
  %917 = icmp ult ptr %915, %861
  br i1 %917, label %918, label %930

918:                                              ; preds = %916
  %919 = ptrtoint ptr %915 to i64
  %920 = sub i64 %910, %919
  %921 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %915, i64 noundef %920, ptr noundef nonnull %8, i32 noundef %874) #16
  %922 = load i64, ptr %8, align 8
  %923 = add i64 %922, 1
  %924 = icmp ult i64 %923, 2
  br i1 %924, label %925, label %927

925:                                              ; preds = %918
  store i8 0, ptr %913, align 1, !tbaa !142
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.48) #16
  %926 = load i64, ptr %8, align 8, !tbaa !129
  br label %927

927:                                              ; preds = %918, %925
  %928 = phi i64 [ %922, %918 ], [ %926, %925 ]
  %929 = getelementptr inbounds i8, ptr %915, i64 %928
  br label %930

930:                                              ; preds = %916, %927
  %931 = phi ptr [ %929, %927 ], [ %915, %916 ]
  %932 = phi i64 [ %921, %927 ], [ 0, %916 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #14
  %933 = trunc i64 %932 to i8
  br label %937

934:                                              ; preds = %911
  %935 = getelementptr inbounds i8, ptr %915, i64 1
  %936 = load i8, ptr %915, align 1, !tbaa !142
  br label %937

937:                                              ; preds = %934, %930
  %938 = phi ptr [ %931, %930 ], [ %935, %934 ]
  %939 = phi i8 [ %933, %930 ], [ %936, %934 ]
  %940 = and i8 %939, 1
  %941 = or i8 %940, %914
  %942 = and i32 %912, 7
  %943 = icmp eq i32 %942, 0
  br i1 %943, label %946, label %944

944:                                              ; preds = %937
  %945 = shl i8 %941, 1
  br label %951

946:                                              ; preds = %937
  br i1 %881, label %949, label %947

947:                                              ; preds = %946
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #14
  store i8 %941, ptr %9, align 1, !tbaa !142
  %948 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %9, i64 noundef 1, ptr noundef %913, i1 noundef zeroext false) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #14
  br label %951

949:                                              ; preds = %946
  %950 = getelementptr inbounds i8, ptr %913, i64 1
  store i8 %941, ptr %913, align 1, !tbaa !142
  br label %951

951:                                              ; preds = %947, %949, %944
  %952 = phi i8 [ %945, %944 ], [ 0, %949 ], [ 0, %947 ]
  %953 = phi ptr [ %913, %944 ], [ %950, %949 ], [ %948, %947 ]
  %954 = add nuw i32 %912, 1
  %955 = icmp eq i32 %912, %902
  br i1 %955, label %1001, label %911, !llvm.loop !271

956:                                              ; preds = %906, %996
  %957 = phi i32 [ 1, %906 ], [ %999, %996 ]
  %958 = phi ptr [ %900, %906 ], [ %998, %996 ]
  %959 = phi i8 [ 0, %906 ], [ %997, %996 ]
  %960 = phi ptr [ %860, %906 ], [ %983, %996 ]
  br i1 %873, label %961, label %979

961:                                              ; preds = %956
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #14
  %962 = icmp ult ptr %960, %861
  br i1 %962, label %963, label %975

963:                                              ; preds = %961
  %964 = ptrtoint ptr %960 to i64
  %965 = sub i64 %907, %964
  %966 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %960, i64 noundef %965, ptr noundef nonnull %10, i32 noundef %874) #16
  %967 = load i64, ptr %10, align 8
  %968 = add i64 %967, 1
  %969 = icmp ult i64 %968, 2
  br i1 %969, label %970, label %972

970:                                              ; preds = %963
  store i8 0, ptr %958, align 1, !tbaa !142
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.48) #16
  %971 = load i64, ptr %10, align 8, !tbaa !129
  br label %972

972:                                              ; preds = %963, %970
  %973 = phi i64 [ %967, %963 ], [ %971, %970 ]
  %974 = getelementptr inbounds i8, ptr %960, i64 %973
  br label %975

975:                                              ; preds = %961, %972
  %976 = phi ptr [ %974, %972 ], [ %960, %961 ]
  %977 = phi i64 [ %966, %972 ], [ 0, %961 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #14
  %978 = trunc i64 %977 to i8
  br label %982

979:                                              ; preds = %956
  %980 = getelementptr inbounds i8, ptr %960, i64 1
  %981 = load i8, ptr %960, align 1, !tbaa !142
  br label %982

982:                                              ; preds = %979, %975
  %983 = phi ptr [ %976, %975 ], [ %980, %979 ]
  %984 = phi i8 [ %978, %975 ], [ %981, %979 ]
  %985 = shl i8 %984, 7
  %986 = or i8 %985, %959
  %987 = and i32 %957, 7
  %988 = icmp eq i32 %987, 0
  br i1 %988, label %991, label %989

989:                                              ; preds = %982
  %990 = lshr i8 %986, 1
  br label %996

991:                                              ; preds = %982
  br i1 %881, label %994, label %992

992:                                              ; preds = %991
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #14
  store i8 %986, ptr %11, align 1, !tbaa !142
  %993 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %11, i64 noundef 1, ptr noundef %958, i1 noundef zeroext false) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #14
  br label %996

994:                                              ; preds = %991
  %995 = getelementptr inbounds i8, ptr %958, i64 1
  store i8 %986, ptr %958, align 1, !tbaa !142
  br label %996

996:                                              ; preds = %992, %994, %989
  %997 = phi i8 [ %990, %989 ], [ 0, %994 ], [ 0, %992 ]
  %998 = phi ptr [ %958, %989 ], [ %995, %994 ], [ %993, %992 ]
  %999 = add nuw i32 %957, 1
  %1000 = icmp eq i32 %957, %902
  br i1 %1000, label %1001, label %956, !llvm.loop !272

1001:                                             ; preds = %996, %951
  %1002 = phi i8 [ %952, %951 ], [ %997, %996 ]
  %1003 = phi ptr [ %953, %951 ], [ %998, %996 ]
  %1004 = and i32 %902, 7
  %1005 = icmp eq i32 %1004, 0
  br i1 %1005, label %1020, label %1006

1006:                                             ; preds = %1001
  %1007 = xor i32 %1004, 7
  %1008 = zext i8 %1002 to i32
  %1009 = shl nuw nsw i32 %1008, %1007
  %1010 = lshr i32 %1008, %1007
  %1011 = select i1 %903, i32 %1009, i32 %1010
  %1012 = trunc i32 %1011 to i8
  br i1 %881, label %1015, label %1013

1013:                                             ; preds = %1006
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #14
  store i8 %1012, ptr %12, align 1, !tbaa !142
  %1014 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %12, i64 noundef 1, ptr noundef %1003, i1 noundef zeroext false) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #14
  br label %1017

1015:                                             ; preds = %1006
  %1016 = getelementptr inbounds i8, ptr %1003, i64 1
  store i8 %1012, ptr %1003, align 1, !tbaa !142
  br label %1017

1017:                                             ; preds = %1015, %1013
  %1018 = phi ptr [ %1014, %1013 ], [ %1016, %1015 ]
  %1019 = add nuw nsw i32 %902, 7
  br label %1020

1020:                                             ; preds = %905, %908, %1017, %1001
  %1021 = phi i32 [ %1019, %1017 ], [ %902, %1001 ], [ 0, %908 ], [ 0, %905 ]
  %1022 = phi ptr [ %1018, %1017 ], [ %1003, %1001 ], [ %900, %908 ], [ %900, %905 ]
  br i1 %93, label %1026, label %1023

1023:                                             ; preds = %1020
  %1024 = sdiv i32 %1021, -8
  %1025 = add nsw i32 %1024, %878
  br label %1026

1026:                                             ; preds = %1020, %1023
  %1027 = phi i32 [ %1025, %1023 ], [ 0, %1020 ]
  %1028 = sext i32 %1027 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %1022, i8 0, i64 %1028, i1 false)
  %1029 = getelementptr inbounds i8, ptr %1022, i64 %1028
  br label %2878

1030:                                             ; preds = %184, %184
  %1031 = icmp eq ptr %185, null
  br i1 %1031, label %1032, label %1038

1032:                                             ; preds = %1030
  %1033 = icmp sgt i32 %84, 0
  br i1 %1033, label %1034, label %1038

1034:                                             ; preds = %1032
  %1035 = add nsw i32 %84, -1
  %1036 = getelementptr inbounds ptr, ptr %83, i64 1
  %1037 = load ptr, ptr %83, align 8, !tbaa !152
  br label %1038

1038:                                             ; preds = %1030, %1034, %1032
  %1039 = phi i32 [ %1035, %1034 ], [ %84, %1032 ], [ %84, %1030 ]
  %1040 = phi ptr [ %1036, %1034 ], [ %83, %1032 ], [ %83, %1030 ]
  %1041 = phi ptr [ %1037, %1034 ], [ @PL_sv_no, %1032 ], [ %185, %1030 ]
  %1042 = getelementptr inbounds %struct.sv, ptr %1041, i64 0, i32 2
  %1043 = load i32, ptr %1042, align 4, !tbaa !185
  %1044 = and i32 %1043, 2098176
  %1045 = icmp eq i32 %1044, 1024
  br i1 %1045, label %1046, label %1052

1046:                                             ; preds = %1038
  %1047 = load ptr, ptr %1041, align 8, !tbaa !193
  %1048 = getelementptr inbounds %struct.xpv, ptr %1047, i64 0, i32 2
  %1049 = load i64, ptr %1048, align 8, !tbaa !194
  store i64 %1049, ptr %6, align 8, !tbaa !129
  %1050 = getelementptr inbounds %struct.sv, ptr %1041, i64 0, i32 3
  %1051 = load ptr, ptr %1050, align 8, !tbaa !142
  br label %1056

1052:                                             ; preds = %1038
  %1053 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %1041, ptr noundef nonnull %6, i32 noundef 34) #16
  %1054 = load i64, ptr %6, align 8
  %1055 = load i32, ptr %1042, align 4, !tbaa !185
  br label %1056

1056:                                             ; preds = %1052, %1046
  %1057 = phi i32 [ %1043, %1046 ], [ %1055, %1052 ]
  %1058 = phi i64 [ %1049, %1046 ], [ %1054, %1052 ]
  %1059 = phi ptr [ %1051, %1046 ], [ %1053, %1052 ]
  %1060 = getelementptr inbounds i8, ptr %1059, i64 %1058
  %1061 = and i32 %1057, 536870912
  %1062 = icmp eq i32 %1061, 0
  br i1 %1062, label %1071, label %1063

1063:                                             ; preds = %1056
  %1064 = select i1 %59, i32 0, i32 -8161
  %1065 = load ptr, ptr @PL_curcop, align 8, !tbaa !152
  %1066 = getelementptr inbounds %struct.cop, ptr %1065, i64 0, i32 10
  %1067 = load i32, ptr %1066, align 8, !tbaa !242
  %1068 = and i32 %1067, 8
  %1069 = icmp eq i32 %1068, 0
  %1070 = select i1 %1069, i32 %1064, i32 0
  br label %1071

1071:                                             ; preds = %1063, %1056
  %1072 = phi i1 [ false, %1056 ], [ %1069, %1063 ]
  %1073 = phi i32 [ 0, %1056 ], [ %1070, %1063 ]
  %1074 = trunc i64 %1058 to i32
  %1075 = select i1 %93, i32 %1074, i32 %103
  %1076 = add nsw i32 %1075, 1
  %1077 = sdiv i32 %1076, 2
  %1078 = sext i32 %1077 to i64
  %1079 = and i8 %85, 1
  %1080 = icmp eq i8 %1079, 0
  %1081 = zext nneg i8 %1079 to i64
  %1082 = shl nsw i64 %1078, %1081
  %1083 = getelementptr inbounds i8, ptr %138, i64 %1082
  %1084 = load ptr, ptr %0, align 8, !tbaa !193
  %1085 = getelementptr inbounds %struct.xpv, ptr %1084, i64 0, i32 3
  %1086 = load i64, ptr %1085, align 8, !tbaa !142
  %1087 = getelementptr inbounds i8, ptr %139, i64 %1086
  %1088 = icmp ult ptr %1083, %1087
  br i1 %1088, label %1097, label %1089

1089:                                             ; preds = %1071
  %1090 = call fastcc ptr @S_sv_exp_grow(ptr noundef nonnull %0, i64 noundef %1082) #15
  %1091 = load ptr, ptr %0, align 8, !tbaa !193
  %1092 = getelementptr inbounds %struct.xpv, ptr %1091, i64 0, i32 2
  %1093 = load i64, ptr %1092, align 8, !tbaa !194
  %1094 = getelementptr inbounds i8, ptr %1090, i64 %1093
  %1095 = load i64, ptr %6, align 8
  %1096 = trunc i64 %1095 to i32
  br label %1097

1097:                                             ; preds = %1089, %1071
  %1098 = phi i32 [ %1096, %1089 ], [ %1074, %1071 ]
  %1099 = phi ptr [ %1094, %1089 ], [ %138, %1071 ]
  %1100 = phi ptr [ %1090, %1089 ], [ %139, %1071 ]
  %1101 = call i32 @llvm.smin.i32(i32 %1075, i32 %1098)
  %1102 = select i1 %1080, i32 %1101, i32 %1075
  %1103 = icmp eq i32 %86, 72
  %1104 = icmp sgt i32 %1102, 0
  br i1 %1103, label %1108, label %1105

1105:                                             ; preds = %1097
  br i1 %1104, label %1106, label %1254

1106:                                             ; preds = %1105
  %1107 = ptrtoint ptr %1060 to i64
  br label %1176

1108:                                             ; preds = %1097
  br i1 %1104, label %1109, label %1254

1109:                                             ; preds = %1108
  %1110 = ptrtoint ptr %1060 to i64
  br label %1111

1111:                                             ; preds = %1109, %1171
  %1112 = phi i32 [ 1, %1109 ], [ %1174, %1171 ]
  %1113 = phi ptr [ %1099, %1109 ], [ %1173, %1171 ]
  %1114 = phi i8 [ 0, %1109 ], [ %1172, %1171 ]
  %1115 = phi i32 [ 0, %1109 ], [ %1112, %1171 ]
  %1116 = phi ptr [ %1059, %1109 ], [ %1158, %1171 ]
  br i1 %1072, label %1117, label %1147

1117:                                             ; preds = %1111
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #14
  %1118 = icmp ult ptr %1116, %1060
  br i1 %1118, label %1120, label %1119

1119:                                             ; preds = %1117
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #14
  br label %1133

1120:                                             ; preds = %1117
  %1121 = ptrtoint ptr %1116 to i64
  %1122 = sub i64 %1110, %1121
  %1123 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %1116, i64 noundef %1122, ptr noundef nonnull %13, i32 noundef %1073) #16
  %1124 = load i64, ptr %13, align 8
  %1125 = add i64 %1124, 1
  %1126 = icmp ult i64 %1125, 2
  br i1 %1126, label %1127, label %1129

1127:                                             ; preds = %1120
  store i8 0, ptr %1113, align 1, !tbaa !142
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.48) #16
  %1128 = load i64, ptr %13, align 8, !tbaa !129
  br label %1129

1129:                                             ; preds = %1127, %1120
  %1130 = phi i64 [ %1128, %1127 ], [ %1124, %1120 ]
  %1131 = getelementptr inbounds i8, ptr %1116, i64 %1130
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #14
  %1132 = icmp ult i64 %1123, 256
  br i1 %1132, label %1133, label %1143

1133:                                             ; preds = %1119, %1129
  %1134 = phi i64 [ 0, %1119 ], [ %1123, %1129 ]
  %1135 = phi ptr [ %1116, %1119 ], [ %1131, %1129 ]
  %1136 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %1134
  %1137 = load i32, ptr %1136, align 4, !tbaa !166
  %1138 = and i32 %1137, 16388
  %1139 = icmp eq i32 %1138, 16388
  br i1 %1139, label %1140, label %1143

1140:                                             ; preds = %1133
  %1141 = trunc i64 %1134 to i8
  %1142 = add i8 %1141, 9
  br label %1157

1143:                                             ; preds = %1133, %1129
  %1144 = phi i64 [ %1134, %1133 ], [ %1123, %1129 ]
  %1145 = phi ptr [ %1135, %1133 ], [ %1131, %1129 ]
  %1146 = trunc i64 %1144 to i8
  br label %1157

1147:                                             ; preds = %1111
  %1148 = load i8, ptr %1116, align 1, !tbaa !142
  %1149 = zext i8 %1148 to i64
  %1150 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %1149
  %1151 = load i32, ptr %1150, align 4, !tbaa !166
  %1152 = and i32 %1151, 16388
  %1153 = icmp eq i32 %1152, 16388
  %1154 = getelementptr inbounds i8, ptr %1116, i64 1
  %1155 = add i8 %1148, 9
  %1156 = select i1 %1153, i8 %1155, i8 %1148
  br label %1157

1157:                                             ; preds = %1147, %1140, %1143
  %1158 = phi ptr [ %1145, %1143 ], [ %1135, %1140 ], [ %1154, %1147 ]
  %1159 = phi i8 [ %1146, %1143 ], [ %1142, %1140 ], [ %1156, %1147 ]
  %1160 = and i8 %1159, 15
  %1161 = or i8 %1160, %1114
  %1162 = and i32 %1115, 1
  %1163 = icmp eq i32 %1162, 0
  br i1 %1163, label %1164, label %1166

1164:                                             ; preds = %1157
  %1165 = shl i8 %1161, 4
  br label %1171

1166:                                             ; preds = %1157
  br i1 %1080, label %1169, label %1167

1167:                                             ; preds = %1166
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %14) #14
  store i8 %1161, ptr %14, align 1, !tbaa !142
  %1168 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %14, i64 noundef 1, ptr noundef %1113, i1 noundef zeroext false) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #14
  br label %1171

1169:                                             ; preds = %1166
  %1170 = getelementptr inbounds i8, ptr %1113, i64 1
  store i8 %1161, ptr %1113, align 1, !tbaa !142
  br label %1171

1171:                                             ; preds = %1167, %1169, %1164
  %1172 = phi i8 [ %1165, %1164 ], [ 0, %1169 ], [ 0, %1167 ]
  %1173 = phi ptr [ %1113, %1164 ], [ %1170, %1169 ], [ %1168, %1167 ]
  %1174 = add nuw i32 %1112, 1
  %1175 = icmp eq i32 %1112, %1102
  br i1 %1175, label %1243, label %1111, !llvm.loop !273

1176:                                             ; preds = %1106, %1238
  %1177 = phi i32 [ 1, %1106 ], [ %1241, %1238 ]
  %1178 = phi ptr [ %1099, %1106 ], [ %1240, %1238 ]
  %1179 = phi i8 [ 0, %1106 ], [ %1239, %1238 ]
  %1180 = phi i32 [ 0, %1106 ], [ %1177, %1238 ]
  %1181 = phi ptr [ %1059, %1106 ], [ %1226, %1238 ]
  br i1 %1072, label %1182, label %1214

1182:                                             ; preds = %1176
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #14
  %1183 = icmp ult ptr %1181, %1060
  br i1 %1183, label %1185, label %1184

1184:                                             ; preds = %1182
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #14
  br label %1198

1185:                                             ; preds = %1182
  %1186 = ptrtoint ptr %1181 to i64
  %1187 = sub i64 %1107, %1186
  %1188 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %1181, i64 noundef %1187, ptr noundef nonnull %15, i32 noundef %1073) #16
  %1189 = load i64, ptr %15, align 8
  %1190 = add i64 %1189, 1
  %1191 = icmp ult i64 %1190, 2
  br i1 %1191, label %1192, label %1194

1192:                                             ; preds = %1185
  store i8 0, ptr %1178, align 1, !tbaa !142
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.48) #16
  %1193 = load i64, ptr %15, align 8, !tbaa !129
  br label %1194

1194:                                             ; preds = %1192, %1185
  %1195 = phi i64 [ %1193, %1192 ], [ %1189, %1185 ]
  %1196 = getelementptr inbounds i8, ptr %1181, i64 %1195
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #14
  %1197 = icmp ult i64 %1188, 256
  br i1 %1197, label %1198, label %1209

1198:                                             ; preds = %1184, %1194
  %1199 = phi i64 [ 0, %1184 ], [ %1188, %1194 ]
  %1200 = phi ptr [ %1181, %1184 ], [ %1196, %1194 ]
  %1201 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %1199
  %1202 = load i32, ptr %1201, align 4, !tbaa !166
  %1203 = and i32 %1202, 16388
  %1204 = icmp eq i32 %1203, 16388
  br i1 %1204, label %1205, label %1209

1205:                                             ; preds = %1198
  %1206 = trunc i64 %1199 to i8
  %1207 = shl i8 %1206, 4
  %1208 = add i8 %1207, -112
  br label %1225

1209:                                             ; preds = %1198, %1194
  %1210 = phi i64 [ %1199, %1198 ], [ %1188, %1194 ]
  %1211 = phi ptr [ %1200, %1198 ], [ %1196, %1194 ]
  %1212 = trunc i64 %1210 to i8
  %1213 = shl i8 %1212, 4
  br label %1225

1214:                                             ; preds = %1176
  %1215 = load i8, ptr %1181, align 1, !tbaa !142
  %1216 = zext i8 %1215 to i64
  %1217 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %1216
  %1218 = load i32, ptr %1217, align 4, !tbaa !166
  %1219 = and i32 %1218, 16388
  %1220 = icmp eq i32 %1219, 16388
  %1221 = getelementptr inbounds i8, ptr %1181, i64 1
  %1222 = shl i8 %1215, 4
  %1223 = add i8 %1222, -112
  %1224 = select i1 %1220, i8 %1223, i8 %1222
  br label %1225

1225:                                             ; preds = %1214, %1205, %1209
  %1226 = phi ptr [ %1211, %1209 ], [ %1200, %1205 ], [ %1221, %1214 ]
  %1227 = phi i8 [ %1213, %1209 ], [ %1208, %1205 ], [ %1224, %1214 ]
  %1228 = or i8 %1227, %1179
  %1229 = and i32 %1180, 1
  %1230 = icmp eq i32 %1229, 0
  br i1 %1230, label %1231, label %1233

1231:                                             ; preds = %1225
  %1232 = lshr i8 %1228, 4
  br label %1238

1233:                                             ; preds = %1225
  br i1 %1080, label %1236, label %1234

1234:                                             ; preds = %1233
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %16) #14
  store i8 %1228, ptr %16, align 1, !tbaa !142
  %1235 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %16, i64 noundef 1, ptr noundef %1178, i1 noundef zeroext false) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #14
  br label %1238

1236:                                             ; preds = %1233
  %1237 = getelementptr inbounds i8, ptr %1178, i64 1
  store i8 %1228, ptr %1178, align 1, !tbaa !142
  br label %1238

1238:                                             ; preds = %1234, %1236, %1231
  %1239 = phi i8 [ %1232, %1231 ], [ 0, %1236 ], [ 0, %1234 ]
  %1240 = phi ptr [ %1178, %1231 ], [ %1237, %1236 ], [ %1235, %1234 ]
  %1241 = add nuw i32 %1177, 1
  %1242 = icmp eq i32 %1177, %1102
  br i1 %1242, label %1243, label %1176, !llvm.loop !274

1243:                                             ; preds = %1238, %1171
  %1244 = phi i8 [ %1172, %1171 ], [ %1239, %1238 ]
  %1245 = phi ptr [ %1173, %1171 ], [ %1240, %1238 ]
  %1246 = add nuw i32 %1102, 1
  %1247 = and i32 %1102, 1
  %1248 = icmp eq i32 %1247, 0
  br i1 %1248, label %1254, label %1249

1249:                                             ; preds = %1243
  br i1 %1080, label %1252, label %1250

1250:                                             ; preds = %1249
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %17) #14
  store i8 %1244, ptr %17, align 1, !tbaa !142
  %1251 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %17, i64 noundef 1, ptr noundef %1245, i1 noundef zeroext false) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %17) #14
  br label %1254

1252:                                             ; preds = %1249
  %1253 = getelementptr inbounds i8, ptr %1245, i64 1
  store i8 %1244, ptr %1245, align 1, !tbaa !142
  br label %1254

1254:                                             ; preds = %1105, %1108, %1250, %1252, %1243
  %1255 = phi i32 [ %1102, %1243 ], [ %1246, %1252 ], [ %1246, %1250 ], [ 0, %1108 ], [ 0, %1105 ]
  %1256 = phi ptr [ %1245, %1243 ], [ %1253, %1252 ], [ %1251, %1250 ], [ %1099, %1108 ], [ %1099, %1105 ]
  br i1 %93, label %1260, label %1257

1257:                                             ; preds = %1254
  %1258 = sdiv i32 %1255, -2
  %1259 = add nsw i32 %1258, %1077
  br label %1260

1260:                                             ; preds = %1254, %1257
  %1261 = phi i32 [ %1259, %1257 ], [ 0, %1254 ]
  %1262 = sext i32 %1261 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %1256, i8 0, i64 %1262, i1 false)
  %1263 = getelementptr inbounds i8, ptr %1256, i64 %1262
  br label %2878

1264:                                             ; preds = %264, %1303
  %1265 = phi i32 [ %103, %264 ], [ %1269, %1303 ]
  %1266 = phi ptr [ %83, %264 ], [ %1278, %1303 ]
  %1267 = phi i32 [ %84, %264 ], [ %1277, %1303 ]
  %1268 = phi ptr [ %138, %264 ], [ %1304, %1303 ]
  %1269 = add nsw i32 %1265, -1
  br i1 %265, label %1270, label %1276

1270:                                             ; preds = %1264
  %1271 = icmp sgt i32 %1267, 0
  br i1 %1271, label %1272, label %1276

1272:                                             ; preds = %1270
  %1273 = add nsw i32 %1267, -1
  %1274 = getelementptr inbounds ptr, ptr %1266, i64 1
  %1275 = load ptr, ptr %1266, align 8, !tbaa !152
  br label %1276

1276:                                             ; preds = %1264, %1272, %1270
  %1277 = phi i32 [ %1273, %1272 ], [ %1267, %1270 ], [ %1267, %1264 ]
  %1278 = phi ptr [ %1274, %1272 ], [ %1266, %1270 ], [ %1266, %1264 ]
  %1279 = phi ptr [ %1275, %1272 ], [ @PL_sv_no, %1270 ], [ %185, %1264 ]
  %1280 = call fastcc ptr @S_sv_check_infnan(ptr noundef %1279, i32 noundef %86) #15
  %1281 = getelementptr inbounds %struct.sv, ptr %1280, i64 0, i32 2
  %1282 = load i32, ptr %1281, align 4, !tbaa !185
  %1283 = and i32 %1282, 256
  %1284 = icmp eq i32 %1283, 0
  br i1 %1284, label %1289, label %1285

1285:                                             ; preds = %1276
  %1286 = load ptr, ptr %1280, align 8, !tbaa !193
  %1287 = getelementptr inbounds %struct.xpviv, ptr %1286, i64 0, i32 4
  %1288 = load i64, ptr %1287, align 8, !tbaa !142
  br label %1291

1289:                                             ; preds = %1276
  %1290 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %1280, i32 noundef 0) #16
  br label %1291

1291:                                             ; preds = %1289, %1285
  %1292 = phi i64 [ %1288, %1285 ], [ %1290, %1289 ]
  %1293 = add i64 %1292, -128
  %1294 = icmp ult i64 %1293, -256
  br i1 %1294, label %1295, label %1296

1295:                                             ; preds = %1291
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 16, ptr noundef nonnull @.str.51) #16
  br label %1296

1296:                                             ; preds = %1295, %1291
  br i1 %267, label %1300, label %1297

1297:                                             ; preds = %1296
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %18) #14
  %1298 = trunc i64 %1292 to i8
  store i8 %1298, ptr %18, align 1, !tbaa !142
  %1299 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %18, i64 noundef 1, ptr noundef %1268, i1 noundef zeroext false) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %18) #14
  br label %1303

1300:                                             ; preds = %1296
  %1301 = trunc i64 %1292 to i8
  %1302 = getelementptr inbounds i8, ptr %1268, i64 1
  store i8 %1301, ptr %1268, align 1, !tbaa !142
  br label %1303

1303:                                             ; preds = %1300, %1297
  %1304 = phi ptr [ %1299, %1297 ], [ %1302, %1300 ]
  %1305 = icmp ugt i32 %1265, 1
  br i1 %1305, label %1264, label %2878, !llvm.loop !275

1306:                                             ; preds = %184
  br i1 %104, label %1313, label %1307

1307:                                             ; preds = %1306
  %1308 = icmp sgt i32 %103, 0
  br i1 %1308, label %1309, label %2878

1309:                                             ; preds = %1307
  %1310 = icmp eq ptr %185, null
  %1311 = and i8 %85, 1
  %1312 = icmp eq i8 %1311, 0
  br label %1318

1313:                                             ; preds = %1306
  %1314 = load i32, ptr %54, align 8, !tbaa !139
  %1315 = trunc i32 %1314 to i8
  %1316 = lshr i8 %1315, 3
  %1317 = and i8 %1316, 1
  br label %2878

1318:                                             ; preds = %1309, %1356
  %1319 = phi i32 [ %103, %1309 ], [ %1323, %1356 ]
  %1320 = phi ptr [ %83, %1309 ], [ %1332, %1356 ]
  %1321 = phi i32 [ %84, %1309 ], [ %1331, %1356 ]
  %1322 = phi ptr [ %138, %1309 ], [ %1357, %1356 ]
  %1323 = add nsw i32 %1319, -1
  br i1 %1310, label %1324, label %1330

1324:                                             ; preds = %1318
  %1325 = icmp sgt i32 %1321, 0
  br i1 %1325, label %1326, label %1330

1326:                                             ; preds = %1324
  %1327 = add nsw i32 %1321, -1
  %1328 = getelementptr inbounds ptr, ptr %1320, i64 1
  %1329 = load ptr, ptr %1320, align 8, !tbaa !152
  br label %1330

1330:                                             ; preds = %1318, %1326, %1324
  %1331 = phi i32 [ %1327, %1326 ], [ %1321, %1324 ], [ %1321, %1318 ]
  %1332 = phi ptr [ %1328, %1326 ], [ %1320, %1324 ], [ %1320, %1318 ]
  %1333 = phi ptr [ %1329, %1326 ], [ @PL_sv_no, %1324 ], [ %185, %1318 ]
  %1334 = call fastcc ptr @S_sv_check_infnan(ptr noundef %1333, i32 noundef %86) #15
  %1335 = getelementptr inbounds %struct.sv, ptr %1334, i64 0, i32 2
  %1336 = load i32, ptr %1335, align 4, !tbaa !185
  %1337 = and i32 %1336, 256
  %1338 = icmp eq i32 %1337, 0
  br i1 %1338, label %1343, label %1339

1339:                                             ; preds = %1330
  %1340 = load ptr, ptr %1334, align 8, !tbaa !193
  %1341 = getelementptr inbounds %struct.xpviv, ptr %1340, i64 0, i32 4
  %1342 = load i64, ptr %1341, align 8, !tbaa !142
  br label %1345

1343:                                             ; preds = %1330
  %1344 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %1334, i32 noundef 0) #16
  br label %1345

1345:                                             ; preds = %1343, %1339
  %1346 = phi i64 [ %1342, %1339 ], [ %1344, %1343 ]
  %1347 = icmp ugt i64 %1346, 255
  br i1 %1347, label %1348, label %1349

1348:                                             ; preds = %1345
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 16, ptr noundef nonnull @.str.52) #16
  br label %1349

1349:                                             ; preds = %1348, %1345
  br i1 %1312, label %1353, label %1350

1350:                                             ; preds = %1349
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %19) #14
  %1351 = trunc i64 %1346 to i8
  store i8 %1351, ptr %19, align 1, !tbaa !142
  %1352 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %19, i64 noundef 1, ptr noundef %1322, i1 noundef zeroext false) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %19) #14
  br label %1356

1353:                                             ; preds = %1349
  %1354 = trunc i64 %1346 to i8
  %1355 = getelementptr inbounds i8, ptr %1322, i64 1
  store i8 %1354, ptr %1322, align 1, !tbaa !142
  br label %1356

1356:                                             ; preds = %1353, %1350
  %1357 = phi ptr [ %1352, %1350 ], [ %1355, %1353 ]
  %1358 = icmp ugt i32 %1319, 1
  br i1 %1358, label %1318, label %2878, !llvm.loop !276

1359:                                             ; preds = %184
  %1360 = icmp sgt i32 %103, 0
  br i1 %1360, label %1361, label %2878

1361:                                             ; preds = %1359
  %1362 = getelementptr inbounds %struct.tempsym, ptr %5, i64 0, i32 8
  %1363 = getelementptr inbounds %struct.tempsym, ptr %5, i64 0, i32 9
  %1364 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %1365 = load ptr, ptr %0, align 8, !tbaa !193
  %1366 = getelementptr inbounds %struct.xpv, ptr %1365, i64 0, i32 3
  %1367 = load i64, ptr %1366, align 8, !tbaa !142
  %1368 = getelementptr inbounds i8, ptr %139, i64 %1367
  %1369 = and i8 %85, 1
  %1370 = icmp eq i8 %1369, 0
  %1371 = select i1 %1370, i64 -1, i64 -13
  %1372 = getelementptr inbounds i8, ptr %1368, i64 %1371
  %1373 = load ptr, ptr @PL_curcop, align 8, !tbaa !152
  %1374 = getelementptr inbounds %struct.cop, ptr %1373, i64 0, i32 10
  %1375 = load i32, ptr %1374, align 8, !tbaa !242
  %1376 = icmp eq ptr %185, null
  %1377 = and i32 %1375, 8
  %1378 = icmp eq i32 %1377, 0
  %1379 = zext nneg i32 %103 to i64
  br label %1380

1380:                                             ; preds = %1361, %1512
  %1381 = phi i64 [ %1379, %1361 ], [ %1388, %1512 ]
  %1382 = phi ptr [ %83, %1361 ], [ %1397, %1512 ]
  %1383 = phi i32 [ %84, %1361 ], [ %1396, %1512 ]
  %1384 = phi i8 [ %85, %1361 ], [ %1516, %1512 ]
  %1385 = phi ptr [ %139, %1361 ], [ %1515, %1512 ]
  %1386 = phi ptr [ %138, %1361 ], [ %1514, %1512 ]
  %1387 = phi ptr [ %1372, %1361 ], [ %1513, %1512 ]
  %1388 = add nsw i64 %1381, -1
  br i1 %1376, label %1389, label %1395

1389:                                             ; preds = %1380
  %1390 = icmp sgt i32 %1383, 0
  br i1 %1390, label %1391, label %1395

1391:                                             ; preds = %1389
  %1392 = add nsw i32 %1383, -1
  %1393 = getelementptr inbounds ptr, ptr %1382, i64 1
  %1394 = load ptr, ptr %1382, align 8, !tbaa !152
  br label %1395

1395:                                             ; preds = %1380, %1391, %1389
  %1396 = phi i32 [ %1392, %1391 ], [ %1383, %1389 ], [ %1383, %1380 ]
  %1397 = phi ptr [ %1393, %1391 ], [ %1382, %1389 ], [ %1382, %1380 ]
  %1398 = phi ptr [ %1394, %1391 ], [ @PL_sv_no, %1389 ], [ %185, %1380 ]
  %1399 = call fastcc ptr @S_sv_check_infnan(ptr noundef %1398, i32 noundef %86) #15
  %1400 = getelementptr inbounds %struct.sv, ptr %1399, i64 0, i32 2
  %1401 = load i32, ptr %1400, align 4, !tbaa !185
  %1402 = and i32 %1401, 256
  %1403 = icmp eq i32 %1402, 0
  br i1 %1403, label %1408, label %1404

1404:                                             ; preds = %1395
  %1405 = load ptr, ptr %1399, align 8, !tbaa !193
  %1406 = getelementptr inbounds %struct.xpvuv, ptr %1405, i64 0, i32 4
  %1407 = load i64, ptr %1406, align 8, !tbaa !142
  br label %1410

1408:                                             ; preds = %1395
  %1409 = call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %1399, i32 noundef 0) #16
  br label %1410

1410:                                             ; preds = %1408, %1404
  %1411 = phi i64 [ %1407, %1404 ], [ %1409, %1408 ]
  %1412 = and i64 %1411, 255
  %1413 = select i1 %1378, i64 %1411, i64 %1412
  %1414 = and i8 %1384, 1
  %1415 = icmp eq i8 %1414, 0
  br i1 %1415, label %1453, label %1416

1416:                                             ; preds = %1410, %1459
  %1417 = phi ptr [ %1387, %1410 ], [ %1476, %1459 ]
  %1418 = phi ptr [ %1386, %1410 ], [ %1472, %1459 ]
  %1419 = phi ptr [ %1385, %1410 ], [ %1468, %1459 ]
  %1420 = phi i8 [ %1384, %1410 ], [ 1, %1459 ]
  %1421 = icmp ugt ptr %1418, %1417
  br i1 %1421, label %1422, label %1448

1422:                                             ; preds = %1416
  store i8 0, ptr %1418, align 1, !tbaa !142
  %1423 = ptrtoint ptr %1418 to i64
  %1424 = ptrtoint ptr %1419 to i64
  %1425 = sub i64 %1423, %1424
  %1426 = load ptr, ptr %0, align 8, !tbaa !193
  %1427 = getelementptr inbounds %struct.xpv, ptr %1426, i64 0, i32 2
  store i64 %1425, ptr %1427, align 8, !tbaa !194
  %1428 = add nuw nsw i64 %1381, 12
  %1429 = getelementptr inbounds i8, ptr %1418, i64 %1428
  %1430 = getelementptr inbounds %struct.xpv, ptr %1426, i64 0, i32 3
  %1431 = load i64, ptr %1430, align 8, !tbaa !142
  %1432 = getelementptr inbounds i8, ptr %1419, i64 %1431
  %1433 = icmp ult ptr %1429, %1432
  br i1 %1433, label %1442, label %1434

1434:                                             ; preds = %1422
  %1435 = call fastcc ptr @S_sv_exp_grow(ptr noundef nonnull %0, i64 noundef %1428) #15
  %1436 = load ptr, ptr %0, align 8, !tbaa !193
  %1437 = getelementptr inbounds %struct.xpv, ptr %1436, i64 0, i32 2
  %1438 = load i64, ptr %1437, align 8, !tbaa !194
  %1439 = getelementptr inbounds i8, ptr %1435, i64 %1438
  %1440 = getelementptr inbounds %struct.xpv, ptr %1436, i64 0, i32 3
  %1441 = load i64, ptr %1440, align 8, !tbaa !142
  br label %1442

1442:                                             ; preds = %1434, %1422
  %1443 = phi i64 [ %1441, %1434 ], [ %1431, %1422 ]
  %1444 = phi ptr [ %1439, %1434 ], [ %1418, %1422 ]
  %1445 = phi ptr [ %1435, %1434 ], [ %1419, %1422 ]
  %1446 = getelementptr inbounds i8, ptr %1445, i64 %1443
  %1447 = getelementptr inbounds i8, ptr %1446, i64 -13
  br label %1448

1448:                                             ; preds = %1442, %1416
  %1449 = phi ptr [ %1447, %1442 ], [ %1417, %1416 ]
  %1450 = phi ptr [ %1444, %1442 ], [ %1418, %1416 ]
  %1451 = phi ptr [ %1445, %1442 ], [ %1419, %1416 ]
  %1452 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %1450, i64 noundef %1413, i64 noundef 0) #16
  br label %1512

1453:                                             ; preds = %1410
  %1454 = icmp ugt i64 %1413, 255
  br i1 %1454, label %1455, label %1478

1455:                                             ; preds = %1453
  %1456 = load i32, ptr %1364, align 4, !tbaa !185
  %1457 = and i32 %1456, 536870912
  %1458 = icmp eq i32 %1457, 0
  br i1 %1458, label %1459, label %1477

1459:                                             ; preds = %1455
  store i8 0, ptr %1386, align 1, !tbaa !142
  %1460 = ptrtoint ptr %1386 to i64
  %1461 = ptrtoint ptr %1385 to i64
  %1462 = sub i64 %1460, %1461
  %1463 = load ptr, ptr %0, align 8, !tbaa !193
  %1464 = getelementptr inbounds %struct.xpv, ptr %1463, i64 0, i32 2
  store i64 %1462, ptr %1464, align 8, !tbaa !194
  call fastcc void @marked_upgrade(ptr noundef nonnull %0, ptr noundef %1) #15
  %1465 = load i32, ptr %1362, align 8, !tbaa !139
  %1466 = or i32 %1465, 8
  store i32 %1466, ptr %1362, align 8, !tbaa !139
  %1467 = load i64, ptr %76, align 8, !tbaa !153
  store i64 %1467, ptr %1363, align 8, !tbaa !153
  %1468 = load ptr, ptr %80, align 8, !tbaa !142
  %1469 = load ptr, ptr %0, align 8, !tbaa !193
  %1470 = getelementptr inbounds %struct.xpv, ptr %1469, i64 0, i32 2
  %1471 = load i64, ptr %1470, align 8, !tbaa !194
  %1472 = getelementptr inbounds i8, ptr %1468, i64 %1471
  %1473 = getelementptr inbounds %struct.xpv, ptr %1469, i64 0, i32 3
  %1474 = load i64, ptr %1473, align 8, !tbaa !142
  %1475 = getelementptr inbounds i8, ptr %1468, i64 %1474
  %1476 = getelementptr inbounds i8, ptr %1475, i64 -13
  br label %1416

1477:                                             ; preds = %1455
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 16, ptr noundef nonnull @.str.53) #16
  br label %1478

1478:                                             ; preds = %1477, %1453
  %1479 = phi i64 [ %1412, %1477 ], [ %1413, %1453 ]
  %1480 = icmp ult ptr %1386, %1387
  br i1 %1480, label %1506, label %1481

1481:                                             ; preds = %1478
  store i8 0, ptr %1386, align 1, !tbaa !142
  %1482 = ptrtoint ptr %1386 to i64
  %1483 = ptrtoint ptr %1385 to i64
  %1484 = sub i64 %1482, %1483
  %1485 = load ptr, ptr %0, align 8, !tbaa !193
  %1486 = getelementptr inbounds %struct.xpv, ptr %1485, i64 0, i32 2
  store i64 %1484, ptr %1486, align 8, !tbaa !194
  %1487 = getelementptr inbounds i8, ptr %1386, i64 %1381
  %1488 = getelementptr inbounds %struct.xpv, ptr %1485, i64 0, i32 3
  %1489 = load i64, ptr %1488, align 8, !tbaa !142
  %1490 = getelementptr inbounds i8, ptr %1385, i64 %1489
  %1491 = icmp ult ptr %1487, %1490
  br i1 %1491, label %1500, label %1492

1492:                                             ; preds = %1481
  %1493 = call fastcc ptr @S_sv_exp_grow(ptr noundef nonnull %0, i64 noundef %1381) #15
  %1494 = load ptr, ptr %0, align 8, !tbaa !193
  %1495 = getelementptr inbounds %struct.xpv, ptr %1494, i64 0, i32 2
  %1496 = load i64, ptr %1495, align 8, !tbaa !194
  %1497 = getelementptr inbounds i8, ptr %1493, i64 %1496
  %1498 = getelementptr inbounds %struct.xpv, ptr %1494, i64 0, i32 3
  %1499 = load i64, ptr %1498, align 8, !tbaa !142
  br label %1500

1500:                                             ; preds = %1492, %1481
  %1501 = phi i64 [ %1499, %1492 ], [ %1489, %1481 ]
  %1502 = phi ptr [ %1497, %1492 ], [ %1386, %1481 ]
  %1503 = phi ptr [ %1493, %1492 ], [ %1385, %1481 ]
  %1504 = getelementptr inbounds i8, ptr %1503, i64 %1501
  %1505 = getelementptr inbounds i8, ptr %1504, i64 -1
  br label %1506

1506:                                             ; preds = %1500, %1478
  %1507 = phi ptr [ %1505, %1500 ], [ %1387, %1478 ]
  %1508 = phi ptr [ %1502, %1500 ], [ %1386, %1478 ]
  %1509 = phi ptr [ %1503, %1500 ], [ %1385, %1478 ]
  %1510 = trunc i64 %1479 to i8
  %1511 = getelementptr inbounds i8, ptr %1508, i64 1
  store i8 %1510, ptr %1508, align 1, !tbaa !142
  br label %1512

1512:                                             ; preds = %1506, %1448
  %1513 = phi ptr [ %1449, %1448 ], [ %1507, %1506 ]
  %1514 = phi ptr [ %1452, %1448 ], [ %1511, %1506 ]
  %1515 = phi ptr [ %1451, %1448 ], [ %1509, %1506 ]
  %1516 = phi i8 [ %1420, %1448 ], [ %1384, %1506 ]
  %1517 = icmp ugt i64 %1381, 1
  br i1 %1517, label %1380, label %2878, !llvm.loop !277

1518:                                             ; preds = %184
  br i1 %104, label %1519, label %1529

1519:                                             ; preds = %1518
  %1520 = load i32, ptr %54, align 8, !tbaa !139
  %1521 = and i32 %1520, 8
  %1522 = icmp eq i32 %1521, 0
  br i1 %1522, label %1523, label %2889

1523:                                             ; preds = %1519
  %1524 = getelementptr inbounds %struct.tempsym, ptr %5, i64 0, i32 8
  %1525 = getelementptr inbounds %struct.tempsym, ptr %5, i64 0, i32 9
  call fastcc void @marked_upgrade(ptr noundef %0, ptr noundef nonnull %1) #15
  %1526 = load i32, ptr %1524, align 8, !tbaa !139
  %1527 = or i32 %1526, 8
  store i32 %1527, ptr %1524, align 8, !tbaa !139
  %1528 = load i64, ptr %76, align 8, !tbaa !153
  store i64 %1528, ptr %1525, align 8, !tbaa !153
  br label %2889

1529:                                             ; preds = %1518
  %1530 = and i8 %85, 1
  %1531 = icmp eq i8 %1530, 0
  %1532 = icmp sgt i32 %103, 0
  br i1 %1532, label %1533, label %2878

1533:                                             ; preds = %1529
  %1534 = ptrtoint ptr %20 to i64
  %1535 = load ptr, ptr %0, align 8, !tbaa !193
  %1536 = getelementptr inbounds %struct.xpv, ptr %1535, i64 0, i32 3
  %1537 = load i64, ptr %1536, align 8, !tbaa !142
  %1538 = getelementptr inbounds i8, ptr %139, i64 %1537
  %1539 = select i1 %1531, i64 -13, i64 0
  %1540 = getelementptr inbounds i8, ptr %1538, i64 %1539
  %1541 = icmp eq ptr %185, null
  %1542 = zext nneg i32 %103 to i64
  br label %1543

1543:                                             ; preds = %1533, %1644
  %1544 = phi i64 [ %1542, %1533 ], [ %1550, %1644 ]
  %1545 = phi ptr [ %83, %1533 ], [ %1559, %1644 ]
  %1546 = phi i32 [ %84, %1533 ], [ %1558, %1644 ]
  %1547 = phi ptr [ %139, %1533 ], [ %1647, %1644 ]
  %1548 = phi ptr [ %138, %1533 ], [ %1646, %1644 ]
  %1549 = phi ptr [ %1540, %1533 ], [ %1645, %1644 ]
  %1550 = add nsw i64 %1544, -1
  br i1 %1541, label %1551, label %1557

1551:                                             ; preds = %1543
  %1552 = icmp sgt i32 %1546, 0
  br i1 %1552, label %1553, label %1557

1553:                                             ; preds = %1551
  %1554 = add nsw i32 %1546, -1
  %1555 = getelementptr inbounds ptr, ptr %1545, i64 1
  %1556 = load ptr, ptr %1545, align 8, !tbaa !152
  br label %1557

1557:                                             ; preds = %1543, %1553, %1551
  %1558 = phi i32 [ %1554, %1553 ], [ %1546, %1551 ], [ %1546, %1543 ]
  %1559 = phi ptr [ %1555, %1553 ], [ %1545, %1551 ], [ %1545, %1543 ]
  %1560 = phi ptr [ %1556, %1553 ], [ @PL_sv_no, %1551 ], [ %185, %1543 ]
  %1561 = call fastcc ptr @S_sv_check_infnan(ptr noundef %1560, i32 noundef %86) #15
  %1562 = getelementptr inbounds %struct.sv, ptr %1561, i64 0, i32 2
  %1563 = load i32, ptr %1562, align 4, !tbaa !185
  %1564 = and i32 %1563, 256
  %1565 = icmp eq i32 %1564, 0
  br i1 %1565, label %1570, label %1566

1566:                                             ; preds = %1557
  %1567 = load ptr, ptr %1561, align 8, !tbaa !193
  %1568 = getelementptr inbounds %struct.xpvuv, ptr %1567, i64 0, i32 4
  %1569 = load i64, ptr %1568, align 8, !tbaa !142
  br label %1572

1570:                                             ; preds = %1557
  %1571 = call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %1561, i32 noundef 0) #16
  br label %1572

1572:                                             ; preds = %1570, %1566
  %1573 = phi i64 [ %1569, %1566 ], [ %1571, %1570 ]
  br i1 %1531, label %1611, label %1574

1574:                                             ; preds = %1572
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %20) #14
  %1575 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef nonnull %20, i64 noundef %1573, i64 noundef 0) #16
  %1576 = ptrtoint ptr %1575 to i64
  %1577 = sub i64 %1576, %1534
  %1578 = shl nsw i64 %1577, 1
  %1579 = getelementptr inbounds i8, ptr %1548, i64 %1578
  %1580 = icmp ult ptr %1579, %1549
  br i1 %1580, label %1606, label %1581

1581:                                             ; preds = %1574
  store i8 0, ptr %1548, align 1, !tbaa !142
  %1582 = ptrtoint ptr %1548 to i64
  %1583 = ptrtoint ptr %1547 to i64
  %1584 = sub i64 %1582, %1583
  %1585 = load ptr, ptr %0, align 8, !tbaa !193
  %1586 = getelementptr inbounds %struct.xpv, ptr %1585, i64 0, i32 2
  store i64 %1584, ptr %1586, align 8, !tbaa !194
  %1587 = add nsw i64 %1578, %1550
  %1588 = getelementptr inbounds i8, ptr %1548, i64 %1587
  %1589 = getelementptr inbounds %struct.xpv, ptr %1585, i64 0, i32 3
  %1590 = load i64, ptr %1589, align 8, !tbaa !142
  %1591 = getelementptr inbounds i8, ptr %1547, i64 %1590
  %1592 = icmp ult ptr %1588, %1591
  br i1 %1592, label %1601, label %1593

1593:                                             ; preds = %1581
  %1594 = call fastcc ptr @S_sv_exp_grow(ptr noundef nonnull %0, i64 noundef %1587) #15
  %1595 = load ptr, ptr %0, align 8, !tbaa !193
  %1596 = getelementptr inbounds %struct.xpv, ptr %1595, i64 0, i32 2
  %1597 = load i64, ptr %1596, align 8, !tbaa !194
  %1598 = getelementptr inbounds i8, ptr %1594, i64 %1597
  %1599 = getelementptr inbounds %struct.xpv, ptr %1595, i64 0, i32 3
  %1600 = load i64, ptr %1599, align 8, !tbaa !142
  br label %1601

1601:                                             ; preds = %1593, %1581
  %1602 = phi i64 [ %1600, %1593 ], [ %1590, %1581 ]
  %1603 = phi ptr [ %1598, %1593 ], [ %1548, %1581 ]
  %1604 = phi ptr [ %1594, %1593 ], [ %1547, %1581 ]
  %1605 = getelementptr inbounds i8, ptr %1604, i64 %1602
  br label %1606

1606:                                             ; preds = %1601, %1574
  %1607 = phi ptr [ %1605, %1601 ], [ %1549, %1574 ]
  %1608 = phi ptr [ %1603, %1601 ], [ %1548, %1574 ]
  %1609 = phi ptr [ %1604, %1601 ], [ %1547, %1574 ]
  %1610 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %20, i64 noundef %1577, ptr noundef %1608, i1 noundef zeroext false) #15
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %20) #14
  br label %1644

1611:                                             ; preds = %1572
  %1612 = icmp ult ptr %1548, %1549
  br i1 %1612, label %1639, label %1613

1613:                                             ; preds = %1611
  store i8 0, ptr %1548, align 1, !tbaa !142
  %1614 = ptrtoint ptr %1548 to i64
  %1615 = ptrtoint ptr %1547 to i64
  %1616 = sub i64 %1614, %1615
  %1617 = load ptr, ptr %0, align 8, !tbaa !193
  %1618 = getelementptr inbounds %struct.xpv, ptr %1617, i64 0, i32 2
  store i64 %1616, ptr %1618, align 8, !tbaa !194
  %1619 = add nuw nsw i64 %1544, 12
  %1620 = getelementptr inbounds i8, ptr %1548, i64 %1619
  %1621 = getelementptr inbounds %struct.xpv, ptr %1617, i64 0, i32 3
  %1622 = load i64, ptr %1621, align 8, !tbaa !142
  %1623 = getelementptr inbounds i8, ptr %1547, i64 %1622
  %1624 = icmp ult ptr %1620, %1623
  br i1 %1624, label %1633, label %1625

1625:                                             ; preds = %1613
  %1626 = call fastcc ptr @S_sv_exp_grow(ptr noundef nonnull %0, i64 noundef %1619) #15
  %1627 = load ptr, ptr %0, align 8, !tbaa !193
  %1628 = getelementptr inbounds %struct.xpv, ptr %1627, i64 0, i32 2
  %1629 = load i64, ptr %1628, align 8, !tbaa !194
  %1630 = getelementptr inbounds i8, ptr %1626, i64 %1629
  %1631 = getelementptr inbounds %struct.xpv, ptr %1627, i64 0, i32 3
  %1632 = load i64, ptr %1631, align 8, !tbaa !142
  br label %1633

1633:                                             ; preds = %1625, %1613
  %1634 = phi i64 [ %1632, %1625 ], [ %1622, %1613 ]
  %1635 = phi ptr [ %1630, %1625 ], [ %1548, %1613 ]
  %1636 = phi ptr [ %1626, %1625 ], [ %1547, %1613 ]
  %1637 = getelementptr inbounds i8, ptr %1636, i64 %1634
  %1638 = getelementptr inbounds i8, ptr %1637, i64 -13
  br label %1639

1639:                                             ; preds = %1633, %1611
  %1640 = phi ptr [ %1638, %1633 ], [ %1549, %1611 ]
  %1641 = phi ptr [ %1635, %1633 ], [ %1548, %1611 ]
  %1642 = phi ptr [ %1636, %1633 ], [ %1547, %1611 ]
  %1643 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %1641, i64 noundef %1573, i64 noundef 0) #16
  br label %1644

1644:                                             ; preds = %1639, %1606
  %1645 = phi ptr [ %1607, %1606 ], [ %1640, %1639 ]
  %1646 = phi ptr [ %1610, %1606 ], [ %1643, %1639 ]
  %1647 = phi ptr [ %1609, %1606 ], [ %1642, %1639 ]
  %1648 = icmp ugt i64 %1544, 1
  br i1 %1648, label %1543, label %2878, !llvm.loop !278

1649:                                             ; preds = %258, %1689
  %1650 = phi i32 [ %103, %258 ], [ %1654, %1689 ]
  %1651 = phi ptr [ %83, %258 ], [ %1663, %1689 ]
  %1652 = phi i32 [ %84, %258 ], [ %1662, %1689 ]
  %1653 = phi ptr [ %138, %258 ], [ %1690, %1689 ]
  %1654 = add nsw i32 %1650, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #14
  br i1 %259, label %1655, label %1661

1655:                                             ; preds = %1649
  %1656 = icmp sgt i32 %1652, 0
  br i1 %1656, label %1657, label %1661

1657:                                             ; preds = %1655
  %1658 = add nsw i32 %1652, -1
  %1659 = getelementptr inbounds ptr, ptr %1651, i64 1
  %1660 = load ptr, ptr %1651, align 8, !tbaa !152
  br label %1661

1661:                                             ; preds = %1649, %1657, %1655
  %1662 = phi i32 [ %1658, %1657 ], [ %1652, %1655 ], [ %1652, %1649 ]
  %1663 = phi ptr [ %1659, %1657 ], [ %1651, %1655 ], [ %1651, %1649 ]
  %1664 = phi ptr [ %1660, %1657 ], [ @PL_sv_no, %1655 ], [ %185, %1649 ]
  %1665 = getelementptr inbounds %struct.sv, ptr %1664, i64 0, i32 2
  %1666 = load i32, ptr %1665, align 4, !tbaa !185
  %1667 = and i32 %1666, 2097664
  %1668 = icmp eq i32 %1667, 512
  br i1 %1668, label %1669, label %1673

1669:                                             ; preds = %1661
  %1670 = load ptr, ptr %1664, align 8, !tbaa !193
  %1671 = getelementptr inbounds %struct.xpvnv, ptr %1670, i64 0, i32 5
  %1672 = load double, ptr %1671, align 8, !tbaa !142
  br label %1675

1673:                                             ; preds = %1661
  %1674 = call double @Perl_sv_2nv_flags(ptr noundef nonnull %1664, i32 noundef 2) #16
  br label %1675

1675:                                             ; preds = %1673, %1669
  %1676 = phi double [ %1672, %1669 ], [ %1674, %1673 ]
  %1677 = fcmp ogt double %1676, 0x47EFFFFFE0000000
  %1678 = fcmp olt double %1676, 0xC7EFFFFFE0000000
  %1679 = select i1 %1678, double 0xFFF0000000000000, double %1676
  %1680 = select i1 %1677, double 0x7FF0000000000000, double %1679
  %1681 = fptrunc double %1680 to float
  store float %1681, ptr %21, align 4, !tbaa !226
  br i1 %261, label %1684, label %1682

1682:                                             ; preds = %1675
  %1683 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %21, i64 noundef 4, ptr noundef %1653, i1 noundef zeroext %187) #15
  br label %1689

1684:                                             ; preds = %1675
  br i1 %187, label %1685, label %1686

1685:                                             ; preds = %1684
  call fastcc void @S_reverse_copy(ptr noundef nonnull %21, ptr noundef %1653, i64 noundef 4) #15
  br label %1687

1686:                                             ; preds = %1684
  store float %1681, ptr %1653, align 1
  br label %1687

1687:                                             ; preds = %1686, %1685
  %1688 = getelementptr inbounds i8, ptr %1653, i64 4
  br label %1689

1689:                                             ; preds = %1687, %1682
  %1690 = phi ptr [ %1683, %1682 ], [ %1688, %1687 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #14
  %1691 = icmp ugt i32 %1650, 1
  br i1 %1691, label %1649, label %2878, !llvm.loop !279

1692:                                             ; preds = %252, %1727
  %1693 = phi i32 [ %103, %252 ], [ %1697, %1727 ]
  %1694 = phi ptr [ %83, %252 ], [ %1706, %1727 ]
  %1695 = phi i32 [ %84, %252 ], [ %1705, %1727 ]
  %1696 = phi ptr [ %138, %252 ], [ %1728, %1727 ]
  %1697 = add nsw i32 %1693, -1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %22) #14
  br i1 %253, label %1698, label %1704

1698:                                             ; preds = %1692
  %1699 = icmp sgt i32 %1695, 0
  br i1 %1699, label %1700, label %1704

1700:                                             ; preds = %1698
  %1701 = add nsw i32 %1695, -1
  %1702 = getelementptr inbounds ptr, ptr %1694, i64 1
  %1703 = load ptr, ptr %1694, align 8, !tbaa !152
  br label %1704

1704:                                             ; preds = %1692, %1700, %1698
  %1705 = phi i32 [ %1701, %1700 ], [ %1695, %1698 ], [ %1695, %1692 ]
  %1706 = phi ptr [ %1702, %1700 ], [ %1694, %1698 ], [ %1694, %1692 ]
  %1707 = phi ptr [ %1703, %1700 ], [ @PL_sv_no, %1698 ], [ %185, %1692 ]
  %1708 = getelementptr inbounds %struct.sv, ptr %1707, i64 0, i32 2
  %1709 = load i32, ptr %1708, align 4, !tbaa !185
  %1710 = and i32 %1709, 2097664
  %1711 = icmp eq i32 %1710, 512
  br i1 %1711, label %1712, label %1716

1712:                                             ; preds = %1704
  %1713 = load ptr, ptr %1707, align 8, !tbaa !193
  %1714 = getelementptr inbounds %struct.xpvnv, ptr %1713, i64 0, i32 5
  %1715 = load double, ptr %1714, align 8, !tbaa !142
  br label %1718

1716:                                             ; preds = %1704
  %1717 = call double @Perl_sv_2nv_flags(ptr noundef nonnull %1707, i32 noundef 2) #16
  br label %1718

1718:                                             ; preds = %1716, %1712
  %1719 = phi double [ %1715, %1712 ], [ %1717, %1716 ]
  store double %1719, ptr %22, align 8, !tbaa !229
  br i1 %255, label %1722, label %1720

1720:                                             ; preds = %1718
  %1721 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %22, i64 noundef 8, ptr noundef %1696, i1 noundef zeroext %187) #15
  br label %1727

1722:                                             ; preds = %1718
  br i1 %187, label %1723, label %1724

1723:                                             ; preds = %1722
  call fastcc void @S_reverse_copy(ptr noundef nonnull %22, ptr noundef %1696, i64 noundef 8) #15
  br label %1725

1724:                                             ; preds = %1722
  store double %1719, ptr %1696, align 1
  br label %1725

1725:                                             ; preds = %1724, %1723
  %1726 = getelementptr inbounds i8, ptr %1696, i64 8
  br label %1727

1727:                                             ; preds = %1725, %1720
  %1728 = phi ptr [ %1721, %1720 ], [ %1726, %1725 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %22) #14
  %1729 = icmp ugt i32 %1693, 1
  br i1 %1729, label %1692, label %2878, !llvm.loop !280

1730:                                             ; preds = %184
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %23) #14
  store i64 0, ptr %23, align 8
  %1731 = icmp sgt i32 %103, 0
  br i1 %1731, label %1732, label %1763

1732:                                             ; preds = %1730
  %1733 = icmp eq ptr %185, null
  %1734 = and i8 %85, 1
  %1735 = icmp eq i8 %1734, 0
  br label %1736

1736:                                             ; preds = %1732, %1760
  %1737 = phi i32 [ %103, %1732 ], [ %1741, %1760 ]
  %1738 = phi ptr [ %83, %1732 ], [ %1750, %1760 ]
  %1739 = phi i32 [ %84, %1732 ], [ %1749, %1760 ]
  %1740 = phi ptr [ %138, %1732 ], [ %1761, %1760 ]
  %1741 = add nsw i32 %1737, -1
  br i1 %1733, label %1742, label %1748

1742:                                             ; preds = %1736
  %1743 = icmp sgt i32 %1739, 0
  br i1 %1743, label %1744, label %1748

1744:                                             ; preds = %1742
  %1745 = add nsw i32 %1739, -1
  %1746 = getelementptr inbounds ptr, ptr %1738, i64 1
  %1747 = load ptr, ptr %1738, align 8, !tbaa !152
  br label %1748

1748:                                             ; preds = %1736, %1744, %1742
  %1749 = phi i32 [ %1745, %1744 ], [ %1739, %1742 ], [ %1739, %1736 ]
  %1750 = phi ptr [ %1746, %1744 ], [ %1738, %1742 ], [ %1738, %1736 ]
  %1751 = phi ptr [ %1747, %1744 ], [ @PL_sv_no, %1742 ], [ %185, %1736 ]
  %1752 = call double @Perl_sv_2nv_flags(ptr noundef %1751, i32 noundef 2) #16
  store double %1752, ptr %23, align 8, !tbaa !142
  br i1 %1735, label %1755, label %1753

1753:                                             ; preds = %1748
  %1754 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %23, i64 noundef 8, ptr noundef %1740, i1 noundef zeroext %187) #15
  br label %1760

1755:                                             ; preds = %1748
  br i1 %187, label %1756, label %1757

1756:                                             ; preds = %1755
  call fastcc void @S_reverse_copy(ptr noundef nonnull %23, ptr noundef %1740, i64 noundef 8) #15
  br label %1758

1757:                                             ; preds = %1755
  store double %1752, ptr %1740, align 1
  br label %1758

1758:                                             ; preds = %1757, %1756
  %1759 = getelementptr inbounds i8, ptr %1740, i64 8
  br label %1760

1760:                                             ; preds = %1758, %1753
  %1761 = phi ptr [ %1754, %1753 ], [ %1759, %1758 ]
  %1762 = icmp ugt i32 %1737, 1
  br i1 %1762, label %1736, label %1763, !llvm.loop !281

1763:                                             ; preds = %1760, %1730
  %1764 = phi ptr [ %138, %1730 ], [ %1761, %1760 ]
  %1765 = phi i32 [ %84, %1730 ], [ %1749, %1760 ]
  %1766 = phi ptr [ %83, %1730 ], [ %1750, %1760 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %23) #14
  br label %2878

1767:                                             ; preds = %184, %184
  %1768 = icmp sgt i32 %103, 0
  br i1 %1768, label %1769, label %2878

1769:                                             ; preds = %1767
  %1770 = icmp eq ptr %185, null
  %1771 = and i8 %85, 1
  %1772 = icmp eq i8 %1771, 0
  br label %1773

1773:                                             ; preds = %1769, %1808
  %1774 = phi i32 [ %103, %1769 ], [ %1778, %1808 ]
  %1775 = phi ptr [ %83, %1769 ], [ %1787, %1808 ]
  %1776 = phi i32 [ %84, %1769 ], [ %1786, %1808 ]
  %1777 = phi ptr [ %138, %1769 ], [ %1809, %1808 ]
  %1778 = add nsw i32 %1774, -1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %24) #14
  br i1 %1770, label %1779, label %1785

1779:                                             ; preds = %1773
  %1780 = icmp sgt i32 %1776, 0
  br i1 %1780, label %1781, label %1785

1781:                                             ; preds = %1779
  %1782 = add nsw i32 %1776, -1
  %1783 = getelementptr inbounds ptr, ptr %1775, i64 1
  %1784 = load ptr, ptr %1775, align 8, !tbaa !152
  br label %1785

1785:                                             ; preds = %1773, %1781, %1779
  %1786 = phi i32 [ %1782, %1781 ], [ %1776, %1779 ], [ %1776, %1773 ]
  %1787 = phi ptr [ %1783, %1781 ], [ %1775, %1779 ], [ %1775, %1773 ]
  %1788 = phi ptr [ %1784, %1781 ], [ @PL_sv_no, %1779 ], [ %185, %1773 ]
  %1789 = call fastcc ptr @S_sv_check_infnan(ptr noundef %1788, i32 noundef %86) #15
  %1790 = getelementptr inbounds %struct.sv, ptr %1789, i64 0, i32 2
  %1791 = load i32, ptr %1790, align 4, !tbaa !185
  %1792 = and i32 %1791, 256
  %1793 = icmp eq i32 %1792, 0
  br i1 %1793, label %1798, label %1794

1794:                                             ; preds = %1785
  %1795 = load ptr, ptr %1789, align 8, !tbaa !193
  %1796 = getelementptr inbounds %struct.xpviv, ptr %1795, i64 0, i32 4
  %1797 = load i64, ptr %1796, align 8, !tbaa !142
  br label %1800

1798:                                             ; preds = %1785
  %1799 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %1789, i32 noundef 0) #16
  br label %1800

1800:                                             ; preds = %1798, %1794
  %1801 = phi i64 [ %1797, %1794 ], [ %1799, %1798 ]
  %1802 = trunc i64 %1801 to i16
  %1803 = call fastcc zeroext i16 @__bswap_16(i16 noundef zeroext %1802) #15
  store i16 %1803, ptr %24, align 2, !tbaa !206
  br i1 %1772, label %1806, label %1804

1804:                                             ; preds = %1800
  %1805 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %24, i64 noundef 2, ptr noundef %1777, i1 noundef zeroext false) #15
  br label %1808

1806:                                             ; preds = %1800
  store i16 %1803, ptr %1777, align 1
  %1807 = getelementptr inbounds i8, ptr %1777, i64 2
  br label %1808

1808:                                             ; preds = %1806, %1804
  %1809 = phi ptr [ %1805, %1804 ], [ %1807, %1806 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %24) #14
  %1810 = icmp ugt i32 %1774, 1
  br i1 %1810, label %1773, label %2878, !llvm.loop !282

1811:                                             ; preds = %184, %184
  %1812 = icmp sgt i32 %103, 0
  br i1 %1812, label %1813, label %2878

1813:                                             ; preds = %1811
  %1814 = icmp eq ptr %185, null
  %1815 = and i8 %85, 1
  %1816 = icmp eq i8 %1815, 0
  br label %1817

1817:                                             ; preds = %1813, %1851
  %1818 = phi i32 [ %103, %1813 ], [ %1822, %1851 ]
  %1819 = phi ptr [ %83, %1813 ], [ %1831, %1851 ]
  %1820 = phi i32 [ %84, %1813 ], [ %1830, %1851 ]
  %1821 = phi ptr [ %138, %1813 ], [ %1852, %1851 ]
  %1822 = add nsw i32 %1818, -1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %25) #14
  br i1 %1814, label %1823, label %1829

1823:                                             ; preds = %1817
  %1824 = icmp sgt i32 %1820, 0
  br i1 %1824, label %1825, label %1829

1825:                                             ; preds = %1823
  %1826 = add nsw i32 %1820, -1
  %1827 = getelementptr inbounds ptr, ptr %1819, i64 1
  %1828 = load ptr, ptr %1819, align 8, !tbaa !152
  br label %1829

1829:                                             ; preds = %1817, %1825, %1823
  %1830 = phi i32 [ %1826, %1825 ], [ %1820, %1823 ], [ %1820, %1817 ]
  %1831 = phi ptr [ %1827, %1825 ], [ %1819, %1823 ], [ %1819, %1817 ]
  %1832 = phi ptr [ %1828, %1825 ], [ @PL_sv_no, %1823 ], [ %185, %1817 ]
  %1833 = call fastcc ptr @S_sv_check_infnan(ptr noundef %1832, i32 noundef %86) #15
  %1834 = getelementptr inbounds %struct.sv, ptr %1833, i64 0, i32 2
  %1835 = load i32, ptr %1834, align 4, !tbaa !185
  %1836 = and i32 %1835, 256
  %1837 = icmp eq i32 %1836, 0
  br i1 %1837, label %1842, label %1838

1838:                                             ; preds = %1829
  %1839 = load ptr, ptr %1833, align 8, !tbaa !193
  %1840 = getelementptr inbounds %struct.xpviv, ptr %1839, i64 0, i32 4
  %1841 = load i64, ptr %1840, align 8, !tbaa !142
  br label %1844

1842:                                             ; preds = %1829
  %1843 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %1833, i32 noundef 0) #16
  br label %1844

1844:                                             ; preds = %1842, %1838
  %1845 = phi i64 [ %1841, %1838 ], [ %1843, %1842 ]
  %1846 = trunc i64 %1845 to i16
  store i16 %1846, ptr %25, align 2, !tbaa !206
  br i1 %1816, label %1849, label %1847

1847:                                             ; preds = %1844
  %1848 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %25, i64 noundef 2, ptr noundef %1821, i1 noundef zeroext false) #15
  br label %1851

1849:                                             ; preds = %1844
  store i16 %1846, ptr %1821, align 1
  %1850 = getelementptr inbounds i8, ptr %1821, i64 2
  br label %1851

1851:                                             ; preds = %1849, %1847
  %1852 = phi ptr [ %1848, %1847 ], [ %1850, %1849 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %25) #14
  %1853 = icmp ugt i32 %1818, 1
  br i1 %1853, label %1817, label %2878, !llvm.loop !283

1854:                                             ; preds = %184, %184
  %1855 = icmp sgt i32 %103, 0
  br i1 %1855, label %1856, label %2878

1856:                                             ; preds = %1854
  %1857 = icmp eq ptr %185, null
  %1858 = and i8 %85, 1
  %1859 = icmp eq i8 %1858, 0
  br label %1860

1860:                                             ; preds = %1856, %1897
  %1861 = phi i32 [ %103, %1856 ], [ %1865, %1897 ]
  %1862 = phi ptr [ %83, %1856 ], [ %1874, %1897 ]
  %1863 = phi i32 [ %84, %1856 ], [ %1873, %1897 ]
  %1864 = phi ptr [ %138, %1856 ], [ %1898, %1897 ]
  %1865 = add nsw i32 %1861, -1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %26) #14
  br i1 %1857, label %1866, label %1872

1866:                                             ; preds = %1860
  %1867 = icmp sgt i32 %1863, 0
  br i1 %1867, label %1868, label %1872

1868:                                             ; preds = %1866
  %1869 = add nsw i32 %1863, -1
  %1870 = getelementptr inbounds ptr, ptr %1862, i64 1
  %1871 = load ptr, ptr %1862, align 8, !tbaa !152
  br label %1872

1872:                                             ; preds = %1860, %1868, %1866
  %1873 = phi i32 [ %1869, %1868 ], [ %1863, %1866 ], [ %1863, %1860 ]
  %1874 = phi ptr [ %1870, %1868 ], [ %1862, %1866 ], [ %1862, %1860 ]
  %1875 = phi ptr [ %1871, %1868 ], [ @PL_sv_no, %1866 ], [ %185, %1860 ]
  %1876 = call fastcc ptr @S_sv_check_infnan(ptr noundef %1875, i32 noundef %86) #15
  %1877 = getelementptr inbounds %struct.sv, ptr %1876, i64 0, i32 2
  %1878 = load i32, ptr %1877, align 4, !tbaa !185
  %1879 = and i32 %1878, 256
  %1880 = icmp eq i32 %1879, 0
  br i1 %1880, label %1885, label %1881

1881:                                             ; preds = %1872
  %1882 = load ptr, ptr %1876, align 8, !tbaa !193
  %1883 = getelementptr inbounds %struct.xpvuv, ptr %1882, i64 0, i32 4
  %1884 = load i64, ptr %1883, align 8, !tbaa !142
  br label %1887

1885:                                             ; preds = %1872
  %1886 = call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %1876, i32 noundef 0) #16
  br label %1887

1887:                                             ; preds = %1885, %1881
  %1888 = phi i64 [ %1884, %1881 ], [ %1886, %1885 ]
  %1889 = trunc i64 %1888 to i16
  store i16 %1889, ptr %26, align 2, !tbaa !206
  br i1 %1859, label %1892, label %1890

1890:                                             ; preds = %1887
  %1891 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %26, i64 noundef 2, ptr noundef %1864, i1 noundef zeroext %187) #15
  br label %1897

1892:                                             ; preds = %1887
  br i1 %187, label %1893, label %1894

1893:                                             ; preds = %1892
  call fastcc void @S_reverse_copy(ptr noundef nonnull %26, ptr noundef %1864, i64 noundef 2) #15
  br label %1895

1894:                                             ; preds = %1892
  store i16 %1889, ptr %1864, align 1
  br label %1895

1895:                                             ; preds = %1894, %1893
  %1896 = getelementptr inbounds i8, ptr %1864, i64 2
  br label %1897

1897:                                             ; preds = %1895, %1890
  %1898 = phi ptr [ %1891, %1890 ], [ %1896, %1895 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %26) #14
  %1899 = icmp ugt i32 %1861, 1
  br i1 %1899, label %1860, label %2878, !llvm.loop !284

1900:                                             ; preds = %184, %184
  %1901 = icmp sgt i32 %103, 0
  br i1 %1901, label %1902, label %2878, !prof !285

1902:                                             ; preds = %1900
  %1903 = icmp eq ptr %185, null
  %1904 = and i8 %85, 1
  %1905 = icmp eq i8 %1904, 0
  br label %1906

1906:                                             ; preds = %1902, %1943
  %1907 = phi i32 [ %103, %1902 ], [ %1911, %1943 ]
  %1908 = phi ptr [ %83, %1902 ], [ %1920, %1943 ]
  %1909 = phi i32 [ %84, %1902 ], [ %1919, %1943 ]
  %1910 = phi ptr [ %138, %1902 ], [ %1944, %1943 ]
  %1911 = add nsw i32 %1907, -1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %27) #14
  br i1 %1903, label %1912, label %1918, !prof !286

1912:                                             ; preds = %1906
  %1913 = icmp sgt i32 %1909, 0
  br i1 %1913, label %1914, label %1918, !prof !286

1914:                                             ; preds = %1912
  %1915 = add nsw i32 %1909, -1
  %1916 = getelementptr inbounds ptr, ptr %1908, i64 1
  %1917 = load ptr, ptr %1908, align 8, !tbaa !152
  br label %1918

1918:                                             ; preds = %1906, %1914, %1912
  %1919 = phi i32 [ %1915, %1914 ], [ %1909, %1912 ], [ %1909, %1906 ]
  %1920 = phi ptr [ %1916, %1914 ], [ %1908, %1912 ], [ %1908, %1906 ]
  %1921 = phi ptr [ %1917, %1914 ], [ @PL_sv_no, %1912 ], [ %185, %1906 ]
  %1922 = call fastcc ptr @S_sv_check_infnan(ptr noundef %1921, i32 noundef %86) #15
  %1923 = getelementptr inbounds %struct.sv, ptr %1922, i64 0, i32 2
  %1924 = load i32, ptr %1923, align 4, !tbaa !185
  %1925 = and i32 %1924, 256
  %1926 = icmp eq i32 %1925, 0
  br i1 %1926, label %1931, label %1927, !prof !287

1927:                                             ; preds = %1918
  %1928 = load ptr, ptr %1922, align 8, !tbaa !193
  %1929 = getelementptr inbounds %struct.xpviv, ptr %1928, i64 0, i32 4
  %1930 = load i64, ptr %1929, align 8, !tbaa !142
  br label %1933

1931:                                             ; preds = %1918
  %1932 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %1922, i32 noundef 0) #16
  br label %1933

1933:                                             ; preds = %1931, %1927
  %1934 = phi i64 [ %1930, %1927 ], [ %1932, %1931 ]
  %1935 = trunc i64 %1934 to i16
  store i16 %1935, ptr %27, align 2, !tbaa !206
  br i1 %1905, label %1938, label %1936, !prof !286

1936:                                             ; preds = %1933
  %1937 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %27, i64 noundef 2, ptr noundef %1910, i1 noundef zeroext %187) #15
  br label %1943

1938:                                             ; preds = %1933
  br i1 %187, label %1939, label %1940, !prof !288

1939:                                             ; preds = %1938
  call fastcc void @S_reverse_copy(ptr noundef nonnull %27, ptr noundef %1910, i64 noundef 2) #15
  br label %1941

1940:                                             ; preds = %1938
  store i16 %1935, ptr %1910, align 1
  br label %1941

1941:                                             ; preds = %1940, %1939
  %1942 = getelementptr inbounds i8, ptr %1910, i64 2
  br label %1943

1943:                                             ; preds = %1941, %1936
  %1944 = phi ptr [ %1937, %1936 ], [ %1942, %1941 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %27) #14
  %1945 = icmp ugt i32 %1907, 1
  br i1 %1945, label %1906, label %2878, !prof !289, !llvm.loop !290

1946:                                             ; preds = %184, %184
  %1947 = icmp sgt i32 %103, 0
  br i1 %1947, label %1948, label %2878

1948:                                             ; preds = %1946
  %1949 = icmp eq ptr %185, null
  %1950 = and i8 %85, 1
  %1951 = icmp eq i8 %1950, 0
  br label %1952

1952:                                             ; preds = %1948, %1989
  %1953 = phi i32 [ %103, %1948 ], [ %1957, %1989 ]
  %1954 = phi ptr [ %83, %1948 ], [ %1966, %1989 ]
  %1955 = phi i32 [ %84, %1948 ], [ %1965, %1989 ]
  %1956 = phi ptr [ %138, %1948 ], [ %1990, %1989 ]
  %1957 = add nsw i32 %1953, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %28) #14
  br i1 %1949, label %1958, label %1964

1958:                                             ; preds = %1952
  %1959 = icmp sgt i32 %1955, 0
  br i1 %1959, label %1960, label %1964

1960:                                             ; preds = %1958
  %1961 = add nsw i32 %1955, -1
  %1962 = getelementptr inbounds ptr, ptr %1954, i64 1
  %1963 = load ptr, ptr %1954, align 8, !tbaa !152
  br label %1964

1964:                                             ; preds = %1952, %1960, %1958
  %1965 = phi i32 [ %1961, %1960 ], [ %1955, %1958 ], [ %1955, %1952 ]
  %1966 = phi ptr [ %1962, %1960 ], [ %1954, %1958 ], [ %1954, %1952 ]
  %1967 = phi ptr [ %1963, %1960 ], [ @PL_sv_no, %1958 ], [ %185, %1952 ]
  %1968 = call fastcc ptr @S_sv_check_infnan(ptr noundef %1967, i32 noundef %86) #15
  %1969 = getelementptr inbounds %struct.sv, ptr %1968, i64 0, i32 2
  %1970 = load i32, ptr %1969, align 4, !tbaa !185
  %1971 = and i32 %1970, 256
  %1972 = icmp eq i32 %1971, 0
  br i1 %1972, label %1977, label %1973

1973:                                             ; preds = %1964
  %1974 = load ptr, ptr %1968, align 8, !tbaa !193
  %1975 = getelementptr inbounds %struct.xpvuv, ptr %1974, i64 0, i32 4
  %1976 = load i64, ptr %1975, align 8, !tbaa !142
  br label %1979

1977:                                             ; preds = %1964
  %1978 = call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %1968, i32 noundef 0) #16
  br label %1979

1979:                                             ; preds = %1977, %1973
  %1980 = phi i64 [ %1976, %1973 ], [ %1978, %1977 ]
  %1981 = trunc i64 %1980 to i32
  store i32 %1981, ptr %28, align 4, !tbaa !166
  br i1 %1951, label %1984, label %1982

1982:                                             ; preds = %1979
  %1983 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %28, i64 noundef 4, ptr noundef %1956, i1 noundef zeroext %187) #15
  br label %1989

1984:                                             ; preds = %1979
  br i1 %187, label %1985, label %1986

1985:                                             ; preds = %1984
  call fastcc void @S_reverse_copy(ptr noundef nonnull %28, ptr noundef %1956, i64 noundef 4) #15
  br label %1987

1986:                                             ; preds = %1984
  store i32 %1981, ptr %1956, align 1
  br label %1987

1987:                                             ; preds = %1986, %1985
  %1988 = getelementptr inbounds i8, ptr %1956, i64 4
  br label %1989

1989:                                             ; preds = %1987, %1982
  %1990 = phi ptr [ %1983, %1982 ], [ %1988, %1987 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %28) #14
  %1991 = icmp ugt i32 %1953, 1
  br i1 %1991, label %1952, label %2878, !llvm.loop !291

1992:                                             ; preds = %246, %2028
  %1993 = phi i32 [ %103, %246 ], [ %1997, %2028 ]
  %1994 = phi ptr [ %83, %246 ], [ %2006, %2028 ]
  %1995 = phi i32 [ %84, %246 ], [ %2005, %2028 ]
  %1996 = phi ptr [ %138, %246 ], [ %2029, %2028 ]
  %1997 = add nsw i32 %1993, -1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %29) #14
  br i1 %247, label %1998, label %2004

1998:                                             ; preds = %1992
  %1999 = icmp sgt i32 %1995, 0
  br i1 %1999, label %2000, label %2004

2000:                                             ; preds = %1998
  %2001 = add nsw i32 %1995, -1
  %2002 = getelementptr inbounds ptr, ptr %1994, i64 1
  %2003 = load ptr, ptr %1994, align 8, !tbaa !152
  br label %2004

2004:                                             ; preds = %1992, %2000, %1998
  %2005 = phi i32 [ %2001, %2000 ], [ %1995, %1998 ], [ %1995, %1992 ]
  %2006 = phi ptr [ %2002, %2000 ], [ %1994, %1998 ], [ %1994, %1992 ]
  %2007 = phi ptr [ %2003, %2000 ], [ @PL_sv_no, %1998 ], [ %185, %1992 ]
  %2008 = call fastcc ptr @S_sv_check_infnan(ptr noundef %2007, i32 noundef %86) #15
  %2009 = getelementptr inbounds %struct.sv, ptr %2008, i64 0, i32 2
  %2010 = load i32, ptr %2009, align 4, !tbaa !185
  %2011 = and i32 %2010, 256
  %2012 = icmp eq i32 %2011, 0
  br i1 %2012, label %2017, label %2013

2013:                                             ; preds = %2004
  %2014 = load ptr, ptr %2008, align 8, !tbaa !193
  %2015 = getelementptr inbounds %struct.xpviv, ptr %2014, i64 0, i32 4
  %2016 = load i64, ptr %2015, align 8, !tbaa !142
  br label %2019

2017:                                             ; preds = %2004
  %2018 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %2008, i32 noundef 0) #16
  br label %2019

2019:                                             ; preds = %2017, %2013
  %2020 = phi i64 [ %2016, %2013 ], [ %2018, %2017 ]
  store i64 %2020, ptr %29, align 8, !tbaa !129
  br i1 %249, label %2023, label %2021

2021:                                             ; preds = %2019
  %2022 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %29, i64 noundef 8, ptr noundef %1996, i1 noundef zeroext %187) #15
  br label %2028

2023:                                             ; preds = %2019
  br i1 %187, label %2024, label %2025

2024:                                             ; preds = %2023
  call fastcc void @S_reverse_copy(ptr noundef nonnull %29, ptr noundef %1996, i64 noundef 8) #15
  br label %2026

2025:                                             ; preds = %2023
  store i64 %2020, ptr %1996, align 1
  br label %2026

2026:                                             ; preds = %2025, %2024
  %2027 = getelementptr inbounds i8, ptr %1996, i64 8
  br label %2028

2028:                                             ; preds = %2026, %2021
  %2029 = phi ptr [ %2022, %2021 ], [ %2027, %2026 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %29) #14
  %2030 = icmp ugt i32 %1993, 1
  br i1 %2030, label %1992, label %2878, !llvm.loop !292

2031:                                             ; preds = %240, %2067
  %2032 = phi i32 [ %103, %240 ], [ %2036, %2067 ]
  %2033 = phi ptr [ %83, %240 ], [ %2045, %2067 ]
  %2034 = phi i32 [ %84, %240 ], [ %2044, %2067 ]
  %2035 = phi ptr [ %138, %240 ], [ %2068, %2067 ]
  %2036 = add nsw i32 %2032, -1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %30) #14
  br i1 %241, label %2037, label %2043

2037:                                             ; preds = %2031
  %2038 = icmp sgt i32 %2034, 0
  br i1 %2038, label %2039, label %2043

2039:                                             ; preds = %2037
  %2040 = add nsw i32 %2034, -1
  %2041 = getelementptr inbounds ptr, ptr %2033, i64 1
  %2042 = load ptr, ptr %2033, align 8, !tbaa !152
  br label %2043

2043:                                             ; preds = %2031, %2039, %2037
  %2044 = phi i32 [ %2040, %2039 ], [ %2034, %2037 ], [ %2034, %2031 ]
  %2045 = phi ptr [ %2041, %2039 ], [ %2033, %2037 ], [ %2033, %2031 ]
  %2046 = phi ptr [ %2042, %2039 ], [ @PL_sv_no, %2037 ], [ %185, %2031 ]
  %2047 = call fastcc ptr @S_sv_check_infnan(ptr noundef %2046, i32 noundef %86) #15
  %2048 = getelementptr inbounds %struct.sv, ptr %2047, i64 0, i32 2
  %2049 = load i32, ptr %2048, align 4, !tbaa !185
  %2050 = and i32 %2049, 256
  %2051 = icmp eq i32 %2050, 0
  br i1 %2051, label %2056, label %2052

2052:                                             ; preds = %2043
  %2053 = load ptr, ptr %2047, align 8, !tbaa !193
  %2054 = getelementptr inbounds %struct.xpvuv, ptr %2053, i64 0, i32 4
  %2055 = load i64, ptr %2054, align 8, !tbaa !142
  br label %2058

2056:                                             ; preds = %2043
  %2057 = call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %2047, i32 noundef 0) #16
  br label %2058

2058:                                             ; preds = %2056, %2052
  %2059 = phi i64 [ %2055, %2052 ], [ %2057, %2056 ]
  store i64 %2059, ptr %30, align 8, !tbaa !129
  br i1 %243, label %2062, label %2060

2060:                                             ; preds = %2058
  %2061 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %30, i64 noundef 8, ptr noundef %2035, i1 noundef zeroext %187) #15
  br label %2067

2062:                                             ; preds = %2058
  br i1 %187, label %2063, label %2064

2063:                                             ; preds = %2062
  call fastcc void @S_reverse_copy(ptr noundef nonnull %30, ptr noundef %2035, i64 noundef 8) #15
  br label %2065

2064:                                             ; preds = %2062
  store i64 %2059, ptr %2035, align 1
  br label %2065

2065:                                             ; preds = %2064, %2063
  %2066 = getelementptr inbounds i8, ptr %2035, i64 8
  br label %2067

2067:                                             ; preds = %2065, %2060
  %2068 = phi ptr [ %2061, %2060 ], [ %2066, %2065 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %30) #14
  %2069 = icmp ugt i32 %2032, 1
  br i1 %2069, label %2031, label %2878, !llvm.loop !293

2070:                                             ; preds = %227, %2283
  %2071 = phi i32 [ %103, %227 ], [ %2076, %2283 ]
  %2072 = phi ptr [ %83, %227 ], [ %2085, %2283 ]
  %2073 = phi i32 [ %84, %227 ], [ %2084, %2283 ]
  %2074 = phi ptr [ %139, %227 ], [ %2285, %2283 ]
  %2075 = phi ptr [ %138, %227 ], [ %2284, %2283 ]
  %2076 = add nsw i32 %2071, -1
  br i1 %234, label %2077, label %2083

2077:                                             ; preds = %2070
  %2078 = icmp sgt i32 %2073, 0
  br i1 %2078, label %2079, label %2083

2079:                                             ; preds = %2077
  %2080 = add nsw i32 %2073, -1
  %2081 = getelementptr inbounds ptr, ptr %2072, i64 1
  %2082 = load ptr, ptr %2072, align 8, !tbaa !152
  br label %2083

2083:                                             ; preds = %2070, %2079, %2077
  %2084 = phi i32 [ %2080, %2079 ], [ %2073, %2077 ], [ %2073, %2070 ]
  %2085 = phi ptr [ %2081, %2079 ], [ %2072, %2077 ], [ %2072, %2070 ]
  %2086 = phi ptr [ %2082, %2079 ], [ @PL_sv_no, %2077 ], [ %185, %2070 ]
  %2087 = call fastcc ptr @S_sv_check_infnan(ptr noundef %2086, i32 noundef %86) #15
  %2088 = getelementptr inbounds %struct.sv, ptr %2086, i64 0, i32 2
  %2089 = load i32, ptr %2088, align 4, !tbaa !185
  %2090 = and i32 %2089, 512
  %2091 = icmp eq i32 %2090, 0
  br i1 %2091, label %2096, label %2092

2092:                                             ; preds = %2083
  %2093 = load ptr, ptr %2086, align 8, !tbaa !193
  %2094 = getelementptr inbounds %struct.xpvnv, ptr %2093, i64 0, i32 5
  %2095 = load double, ptr %2094, align 8, !tbaa !142
  br label %2098

2096:                                             ; preds = %2083
  %2097 = call double @Perl_sv_2nv_flags(ptr noundef nonnull %2086, i32 noundef 0) #16
  br label %2098

2098:                                             ; preds = %2096, %2092
  %2099 = phi double [ %2095, %2092 ], [ %2097, %2096 ]
  %2100 = fcmp olt double %2099, 0.000000e+00
  br i1 %2100, label %2101, label %2107

2101:                                             ; preds = %2098
  store i8 0, ptr %2075, align 1, !tbaa !142
  %2102 = ptrtoint ptr %2075 to i64
  %2103 = ptrtoint ptr %2074 to i64
  %2104 = sub i64 %2102, %2103
  %2105 = load ptr, ptr %0, align 8, !tbaa !193
  %2106 = getelementptr inbounds %struct.xpv, ptr %2105, i64 0, i32 2
  store i64 %2104, ptr %2106, align 8, !tbaa !194
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.54) #16
  br label %2107

2107:                                             ; preds = %2101, %2098
  %2108 = load i32, ptr %2088, align 4, !tbaa !185
  %2109 = and i32 %2108, 256
  %2110 = icmp ne i32 %2109, 0
  %2111 = fcmp olt double %2099, 0x43F0000000000000
  %2112 = or i1 %2111, %2110
  br i1 %2112, label %2113, label %2163

2113:                                             ; preds = %2107
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %31) #14
  %2114 = icmp eq i32 %2109, 0
  br i1 %2114, label %2119, label %2115

2115:                                             ; preds = %2113
  %2116 = load ptr, ptr %2086, align 8, !tbaa !193
  %2117 = getelementptr inbounds %struct.xpvuv, ptr %2116, i64 0, i32 4
  %2118 = load i64, ptr %2117, align 8, !tbaa !142
  br label %2121

2119:                                             ; preds = %2113
  %2120 = call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %2086, i32 noundef 0) #16
  br label %2121

2121:                                             ; preds = %2119, %2115
  %2122 = phi i64 [ %2118, %2115 ], [ %2120, %2119 ]
  br label %2123

2123:                                             ; preds = %2121, %2123
  %2124 = phi ptr [ %2128, %2123 ], [ %231, %2121 ]
  %2125 = phi i64 [ %2129, %2123 ], [ %2122, %2121 ]
  %2126 = trunc i64 %2125 to i8
  %2127 = or i8 %2126, -128
  %2128 = getelementptr inbounds i8, ptr %2124, i64 -1
  store i8 %2127, ptr %2128, align 1, !tbaa !142
  %2129 = lshr i64 %2125, 7
  %2130 = icmp ult i64 %2125, 128
  br i1 %2130, label %2131, label %2123, !llvm.loop !294

2131:                                             ; preds = %2123
  %2132 = load i8, ptr %232, align 1, !tbaa !142
  %2133 = and i8 %2132, 127
  store i8 %2133, ptr %232, align 1, !tbaa !142
  %2134 = ptrtoint ptr %2128 to i64
  %2135 = sub i64 %233, %2134
  %2136 = shl i64 %2135, %237
  %2137 = getelementptr inbounds i8, ptr %2075, i64 %2136
  %2138 = load ptr, ptr %0, align 8, !tbaa !193
  %2139 = getelementptr inbounds %struct.xpv, ptr %2138, i64 0, i32 3
  %2140 = load i64, ptr %2139, align 8, !tbaa !142
  %2141 = getelementptr inbounds i8, ptr %2074, i64 %2140
  %2142 = icmp ult ptr %2137, %2141
  br i1 %2142, label %2154, label %2143

2143:                                             ; preds = %2131
  store i8 0, ptr %2075, align 1, !tbaa !142
  %2144 = ptrtoint ptr %2075 to i64
  %2145 = ptrtoint ptr %2074 to i64
  %2146 = sub i64 %2144, %2145
  %2147 = load ptr, ptr %0, align 8, !tbaa !193
  %2148 = getelementptr inbounds %struct.xpv, ptr %2147, i64 0, i32 2
  store i64 %2146, ptr %2148, align 8, !tbaa !194
  %2149 = call fastcc ptr @S_sv_exp_grow(ptr noundef nonnull %0, i64 noundef %2136) #15
  %2150 = load ptr, ptr %0, align 8, !tbaa !193
  %2151 = getelementptr inbounds %struct.xpv, ptr %2150, i64 0, i32 2
  %2152 = load i64, ptr %2151, align 8, !tbaa !194
  %2153 = getelementptr inbounds i8, ptr %2149, i64 %2152
  br label %2154

2154:                                             ; preds = %2131, %2143
  %2155 = phi ptr [ %2153, %2143 ], [ %2075, %2131 ]
  %2156 = phi ptr [ %2149, %2143 ], [ %2074, %2131 ]
  br i1 %236, label %2159, label %2157

2157:                                             ; preds = %2154
  %2158 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %2128, i64 noundef %2135, ptr noundef %2155, i1 noundef zeroext false) #15
  br label %2161

2159:                                             ; preds = %2154
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %2155, ptr noundef nonnull align 1 dereferenceable(1) %2128, i64 %2135, i1 false)
  %2160 = getelementptr inbounds i8, ptr %2155, i64 %2135
  br label %2161

2161:                                             ; preds = %2159, %2157
  %2162 = phi ptr [ %2158, %2157 ], [ %2160, %2159 ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %31) #14
  br label %2283

2163:                                             ; preds = %2107
  %2164 = and i32 %2108, 24576
  %2165 = icmp eq i32 %2164, 8192
  br i1 %2165, label %2166, label %2214

2166:                                             ; preds = %2163
  call void @llvm.lifetime.start.p0(i64 155, ptr nonnull %32) #14
  %2167 = call double @llvm.floor.f64(double %2099)
  br label %2168

2168:                                             ; preds = %2175, %2166
  %2169 = phi double [ %2167, %2166 ], [ %2172, %2175 ]
  %2170 = phi ptr [ %228, %2166 ], [ %2180, %2175 ]
  %2171 = fmul double %2169, 7.812500e-03
  %2172 = call double @llvm.floor.f64(double %2171)
  %2173 = icmp ugt ptr %2170, %32
  br i1 %2173, label %2175, label %2174

2174:                                             ; preds = %2168
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.55) #16
  br label %2175

2175:                                             ; preds = %2174, %2168
  %2176 = fneg double %2172
  %2177 = call double @llvm.fmuladd.f64(double %2176, double 1.280000e+02, double %2169)
  %2178 = fptoui double %2177 to i8
  %2179 = or i8 %2178, -128
  %2180 = getelementptr inbounds i8, ptr %2170, i64 -1
  store i8 %2179, ptr %2180, align 1, !tbaa !142
  %2181 = fcmp ogt double %2172, 0.000000e+00
  br i1 %2181, label %2168, label %2182, !llvm.loop !295

2182:                                             ; preds = %2175
  %2183 = load i8, ptr %229, align 2, !tbaa !142
  %2184 = and i8 %2183, 127
  store i8 %2184, ptr %229, align 2, !tbaa !142
  %2185 = ptrtoint ptr %2180 to i64
  %2186 = sub i64 %230, %2185
  %2187 = shl i64 %2186, %237
  %2188 = getelementptr inbounds i8, ptr %2075, i64 %2187
  %2189 = load ptr, ptr %0, align 8, !tbaa !193
  %2190 = getelementptr inbounds %struct.xpv, ptr %2189, i64 0, i32 3
  %2191 = load i64, ptr %2190, align 8, !tbaa !142
  %2192 = getelementptr inbounds i8, ptr %2074, i64 %2191
  %2193 = icmp ult ptr %2188, %2192
  br i1 %2193, label %2205, label %2194

2194:                                             ; preds = %2182
  store i8 0, ptr %2075, align 1, !tbaa !142
  %2195 = ptrtoint ptr %2075 to i64
  %2196 = ptrtoint ptr %2074 to i64
  %2197 = sub i64 %2195, %2196
  %2198 = load ptr, ptr %0, align 8, !tbaa !193
  %2199 = getelementptr inbounds %struct.xpv, ptr %2198, i64 0, i32 2
  store i64 %2197, ptr %2199, align 8, !tbaa !194
  %2200 = call fastcc ptr @S_sv_exp_grow(ptr noundef nonnull %0, i64 noundef %2187) #15
  %2201 = load ptr, ptr %0, align 8, !tbaa !193
  %2202 = getelementptr inbounds %struct.xpv, ptr %2201, i64 0, i32 2
  %2203 = load i64, ptr %2202, align 8, !tbaa !194
  %2204 = getelementptr inbounds i8, ptr %2200, i64 %2203
  br label %2205

2205:                                             ; preds = %2182, %2194
  %2206 = phi ptr [ %2204, %2194 ], [ %2075, %2182 ]
  %2207 = phi ptr [ %2200, %2194 ], [ %2074, %2182 ]
  br i1 %236, label %2210, label %2208

2208:                                             ; preds = %2205
  %2209 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %2180, i64 noundef %2186, ptr noundef %2206, i1 noundef zeroext false) #15
  br label %2212

2210:                                             ; preds = %2205
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %2206, ptr noundef nonnull align 1 dereferenceable(1) %2180, i64 %2186, i1 false)
  %2211 = getelementptr inbounds i8, ptr %2206, i64 %2186
  br label %2212

2212:                                             ; preds = %2210, %2208
  %2213 = phi ptr [ %2209, %2208 ], [ %2211, %2210 ]
  call void @llvm.lifetime.end.p0(i64 155, ptr nonnull %32) #14
  br label %2283

2214:                                             ; preds = %2163
  %2215 = and i32 %2108, 2098176
  %2216 = icmp eq i32 %2215, 1024
  br i1 %2216, label %2217, label %2223

2217:                                             ; preds = %2214
  %2218 = load ptr, ptr %2086, align 8, !tbaa !193
  %2219 = getelementptr inbounds %struct.xpv, ptr %2218, i64 0, i32 2
  %2220 = load i64, ptr %2219, align 8, !tbaa !194
  store i64 %2220, ptr %33, align 8, !tbaa !129
  %2221 = getelementptr inbounds %struct.sv, ptr %2086, i64 0, i32 3
  %2222 = load ptr, ptr %2221, align 8, !tbaa !142
  br label %2226

2223:                                             ; preds = %2214
  %2224 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %2086, ptr noundef nonnull %33, i32 noundef 32) #16
  %2225 = load i64, ptr %33, align 8, !tbaa !129
  br label %2226

2226:                                             ; preds = %2223, %2217
  %2227 = phi i64 [ %2220, %2217 ], [ %2225, %2223 ]
  %2228 = phi ptr [ %2222, %2217 ], [ %2224, %2223 ]
  %2229 = call fastcc ptr @S_is_an_int(ptr noundef %2228, i64 noundef %2227) #15
  %2230 = icmp eq ptr %2229, null
  br i1 %2230, label %2231, label %2232

2231:                                             ; preds = %2226
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.56) #16
  br label %2232

2232:                                             ; preds = %2231, %2226
  %2233 = load i64, ptr %33, align 8, !tbaa !129
  %2234 = call ptr @Perl_safesysmalloc(i64 noundef %2233) #16
  %2235 = load i64, ptr %33, align 8, !tbaa !129
  %2236 = getelementptr inbounds i8, ptr %2234, i64 %2235
  store i8 0, ptr %34, align 1, !tbaa !267
  br label %2237

2237:                                             ; preds = %2232, %2237
  %2238 = phi ptr [ %2236, %2232 ], [ %2242, %2237 ]
  %2239 = call fastcc i32 @S_div128(ptr noundef %2229, ptr noundef nonnull %34) #15, !range !296
  %2240 = trunc i32 %2239 to i8
  %2241 = or disjoint i8 %2240, -128
  %2242 = getelementptr inbounds i8, ptr %2238, i64 -1
  store i8 %2241, ptr %2242, align 1, !tbaa !142
  %2243 = load i8, ptr %34, align 1, !tbaa !267
  %2244 = icmp eq i8 %2243, 0
  br i1 %2244, label %2237, label %2245, !llvm.loop !297

2245:                                             ; preds = %2237
  %2246 = load i64, ptr %33, align 8, !tbaa !129
  %2247 = getelementptr i8, ptr %2234, i64 %2246
  %2248 = getelementptr i8, ptr %2247, i64 -1
  %2249 = load i8, ptr %2248, align 1, !tbaa !142
  %2250 = and i8 %2249, 127
  store i8 %2250, ptr %2248, align 1, !tbaa !142
  %2251 = load i64, ptr %33, align 8, !tbaa !129
  %2252 = getelementptr inbounds i8, ptr %2234, i64 %2251
  %2253 = ptrtoint ptr %2252 to i64
  %2254 = ptrtoint ptr %2242 to i64
  %2255 = sub i64 %2253, %2254
  %2256 = shl i64 %2255, %237
  %2257 = getelementptr inbounds i8, ptr %2075, i64 %2256
  %2258 = load ptr, ptr %0, align 8, !tbaa !193
  %2259 = getelementptr inbounds %struct.xpv, ptr %2258, i64 0, i32 3
  %2260 = load i64, ptr %2259, align 8, !tbaa !142
  %2261 = getelementptr inbounds i8, ptr %2074, i64 %2260
  %2262 = icmp ult ptr %2257, %2261
  br i1 %2262, label %2274, label %2263

2263:                                             ; preds = %2245
  store i8 0, ptr %2075, align 1, !tbaa !142
  %2264 = ptrtoint ptr %2075 to i64
  %2265 = ptrtoint ptr %2074 to i64
  %2266 = sub i64 %2264, %2265
  %2267 = load ptr, ptr %0, align 8, !tbaa !193
  %2268 = getelementptr inbounds %struct.xpv, ptr %2267, i64 0, i32 2
  store i64 %2266, ptr %2268, align 8, !tbaa !194
  %2269 = call fastcc ptr @S_sv_exp_grow(ptr noundef nonnull %0, i64 noundef %2256) #15
  %2270 = load ptr, ptr %0, align 8, !tbaa !193
  %2271 = getelementptr inbounds %struct.xpv, ptr %2270, i64 0, i32 2
  %2272 = load i64, ptr %2271, align 8, !tbaa !194
  %2273 = getelementptr inbounds i8, ptr %2269, i64 %2272
  br label %2274

2274:                                             ; preds = %2245, %2263
  %2275 = phi ptr [ %2273, %2263 ], [ %2075, %2245 ]
  %2276 = phi ptr [ %2269, %2263 ], [ %2074, %2245 ]
  br i1 %236, label %2279, label %2277

2277:                                             ; preds = %2274
  %2278 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %2242, i64 noundef %2255, ptr noundef %2275, i1 noundef zeroext false) #15
  br label %2281

2279:                                             ; preds = %2274
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2275, ptr nonnull align 1 %2242, i64 %2255, i1 false)
  %2280 = getelementptr inbounds i8, ptr %2275, i64 %2255
  br label %2281

2281:                                             ; preds = %2279, %2277
  %2282 = phi ptr [ %2278, %2277 ], [ %2280, %2279 ]
  call void @Perl_safesysfree(ptr noundef nonnull %2234) #16
  call fastcc void @S_SvREFCNT_dec(ptr noundef %2229) #15
  br label %2283

2283:                                             ; preds = %2281, %2212, %2161
  %2284 = phi ptr [ %2162, %2161 ], [ %2282, %2281 ], [ %2213, %2212 ]
  %2285 = phi ptr [ %2156, %2161 ], [ %2276, %2281 ], [ %2207, %2212 ]
  %2286 = icmp sgt i32 %2071, 1
  br i1 %2286, label %2070, label %2878, !llvm.loop !298

2287:                                             ; preds = %184, %184
  %2288 = icmp sgt i32 %103, 0
  br i1 %2288, label %2289, label %2878

2289:                                             ; preds = %2287
  %2290 = icmp eq ptr %185, null
  %2291 = and i8 %85, 1
  %2292 = icmp eq i8 %2291, 0
  br label %2293

2293:                                             ; preds = %2289, %2330
  %2294 = phi i32 [ %103, %2289 ], [ %2298, %2330 ]
  %2295 = phi ptr [ %83, %2289 ], [ %2307, %2330 ]
  %2296 = phi i32 [ %84, %2289 ], [ %2306, %2330 ]
  %2297 = phi ptr [ %138, %2289 ], [ %2331, %2330 ]
  %2298 = add nsw i32 %2294, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %35) #14
  br i1 %2290, label %2299, label %2305

2299:                                             ; preds = %2293
  %2300 = icmp sgt i32 %2296, 0
  br i1 %2300, label %2301, label %2305

2301:                                             ; preds = %2299
  %2302 = add nsw i32 %2296, -1
  %2303 = getelementptr inbounds ptr, ptr %2295, i64 1
  %2304 = load ptr, ptr %2295, align 8, !tbaa !152
  br label %2305

2305:                                             ; preds = %2293, %2301, %2299
  %2306 = phi i32 [ %2302, %2301 ], [ %2296, %2299 ], [ %2296, %2293 ]
  %2307 = phi ptr [ %2303, %2301 ], [ %2295, %2299 ], [ %2295, %2293 ]
  %2308 = phi ptr [ %2304, %2301 ], [ @PL_sv_no, %2299 ], [ %185, %2293 ]
  %2309 = call fastcc ptr @S_sv_check_infnan(ptr noundef %2308, i32 noundef %86) #15
  %2310 = getelementptr inbounds %struct.sv, ptr %2309, i64 0, i32 2
  %2311 = load i32, ptr %2310, align 4, !tbaa !185
  %2312 = and i32 %2311, 256
  %2313 = icmp eq i32 %2312, 0
  br i1 %2313, label %2318, label %2314

2314:                                             ; preds = %2305
  %2315 = load ptr, ptr %2309, align 8, !tbaa !193
  %2316 = getelementptr inbounds %struct.xpviv, ptr %2315, i64 0, i32 4
  %2317 = load i64, ptr %2316, align 8, !tbaa !142
  br label %2320

2318:                                             ; preds = %2305
  %2319 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %2309, i32 noundef 0) #16
  br label %2320

2320:                                             ; preds = %2318, %2314
  %2321 = phi i64 [ %2317, %2314 ], [ %2319, %2318 ]
  %2322 = trunc i64 %2321 to i32
  store i32 %2322, ptr %35, align 4, !tbaa !166
  br i1 %2292, label %2325, label %2323

2323:                                             ; preds = %2320
  %2324 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %35, i64 noundef 4, ptr noundef %2297, i1 noundef zeroext %187) #15
  br label %2330

2325:                                             ; preds = %2320
  br i1 %187, label %2326, label %2327

2326:                                             ; preds = %2325
  call fastcc void @S_reverse_copy(ptr noundef nonnull %35, ptr noundef %2297, i64 noundef 4) #15
  br label %2328

2327:                                             ; preds = %2325
  store i32 %2322, ptr %2297, align 1
  br label %2328

2328:                                             ; preds = %2327, %2326
  %2329 = getelementptr inbounds i8, ptr %2297, i64 4
  br label %2330

2330:                                             ; preds = %2328, %2323
  %2331 = phi ptr [ %2324, %2323 ], [ %2329, %2328 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %35) #14
  %2332 = icmp ugt i32 %2294, 1
  br i1 %2332, label %2293, label %2878, !llvm.loop !299

2333:                                             ; preds = %184, %184
  %2334 = icmp sgt i32 %103, 0
  br i1 %2334, label %2335, label %2878

2335:                                             ; preds = %2333
  %2336 = icmp eq ptr %185, null
  %2337 = and i8 %85, 1
  %2338 = icmp eq i8 %2337, 0
  br label %2339

2339:                                             ; preds = %2335, %2374
  %2340 = phi i32 [ %103, %2335 ], [ %2344, %2374 ]
  %2341 = phi ptr [ %83, %2335 ], [ %2353, %2374 ]
  %2342 = phi i32 [ %84, %2335 ], [ %2352, %2374 ]
  %2343 = phi ptr [ %138, %2335 ], [ %2375, %2374 ]
  %2344 = add nsw i32 %2340, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %36) #14
  br i1 %2336, label %2345, label %2351

2345:                                             ; preds = %2339
  %2346 = icmp sgt i32 %2342, 0
  br i1 %2346, label %2347, label %2351

2347:                                             ; preds = %2345
  %2348 = add nsw i32 %2342, -1
  %2349 = getelementptr inbounds ptr, ptr %2341, i64 1
  %2350 = load ptr, ptr %2341, align 8, !tbaa !152
  br label %2351

2351:                                             ; preds = %2339, %2347, %2345
  %2352 = phi i32 [ %2348, %2347 ], [ %2342, %2345 ], [ %2342, %2339 ]
  %2353 = phi ptr [ %2349, %2347 ], [ %2341, %2345 ], [ %2341, %2339 ]
  %2354 = phi ptr [ %2350, %2347 ], [ @PL_sv_no, %2345 ], [ %185, %2339 ]
  %2355 = call fastcc ptr @S_sv_check_infnan(ptr noundef %2354, i32 noundef %86) #15
  %2356 = getelementptr inbounds %struct.sv, ptr %2355, i64 0, i32 2
  %2357 = load i32, ptr %2356, align 4, !tbaa !185
  %2358 = and i32 %2357, 256
  %2359 = icmp eq i32 %2358, 0
  br i1 %2359, label %2364, label %2360

2360:                                             ; preds = %2351
  %2361 = load ptr, ptr %2355, align 8, !tbaa !193
  %2362 = getelementptr inbounds %struct.xpvuv, ptr %2361, i64 0, i32 4
  %2363 = load i64, ptr %2362, align 8, !tbaa !142
  br label %2366

2364:                                             ; preds = %2351
  %2365 = call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %2355, i32 noundef 0) #16
  br label %2366

2366:                                             ; preds = %2364, %2360
  %2367 = phi i64 [ %2363, %2360 ], [ %2365, %2364 ]
  %2368 = trunc i64 %2367 to i32
  %2369 = call fastcc i32 @__bswap_32(i32 noundef %2368) #15
  store i32 %2369, ptr %36, align 4, !tbaa !166
  br i1 %2338, label %2372, label %2370

2370:                                             ; preds = %2366
  %2371 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %36, i64 noundef 4, ptr noundef %2343, i1 noundef zeroext false) #15
  br label %2374

2372:                                             ; preds = %2366
  store i32 %2369, ptr %2343, align 1
  %2373 = getelementptr inbounds i8, ptr %2343, i64 4
  br label %2374

2374:                                             ; preds = %2372, %2370
  %2375 = phi ptr [ %2371, %2370 ], [ %2373, %2372 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %36) #14
  %2376 = icmp ugt i32 %2340, 1
  br i1 %2376, label %2339, label %2878, !llvm.loop !300

2377:                                             ; preds = %184, %184
  %2378 = icmp sgt i32 %103, 0
  br i1 %2378, label %2379, label %2878

2379:                                             ; preds = %2377
  %2380 = icmp eq ptr %185, null
  %2381 = and i8 %85, 1
  %2382 = icmp eq i8 %2381, 0
  br label %2383

2383:                                             ; preds = %2379, %2417
  %2384 = phi i32 [ %103, %2379 ], [ %2388, %2417 ]
  %2385 = phi ptr [ %83, %2379 ], [ %2397, %2417 ]
  %2386 = phi i32 [ %84, %2379 ], [ %2396, %2417 ]
  %2387 = phi ptr [ %138, %2379 ], [ %2418, %2417 ]
  %2388 = add nsw i32 %2384, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %37) #14
  br i1 %2380, label %2389, label %2395

2389:                                             ; preds = %2383
  %2390 = icmp sgt i32 %2386, 0
  br i1 %2390, label %2391, label %2395

2391:                                             ; preds = %2389
  %2392 = add nsw i32 %2386, -1
  %2393 = getelementptr inbounds ptr, ptr %2385, i64 1
  %2394 = load ptr, ptr %2385, align 8, !tbaa !152
  br label %2395

2395:                                             ; preds = %2383, %2391, %2389
  %2396 = phi i32 [ %2392, %2391 ], [ %2386, %2389 ], [ %2386, %2383 ]
  %2397 = phi ptr [ %2393, %2391 ], [ %2385, %2389 ], [ %2385, %2383 ]
  %2398 = phi ptr [ %2394, %2391 ], [ @PL_sv_no, %2389 ], [ %185, %2383 ]
  %2399 = call fastcc ptr @S_sv_check_infnan(ptr noundef %2398, i32 noundef %86) #15
  %2400 = getelementptr inbounds %struct.sv, ptr %2399, i64 0, i32 2
  %2401 = load i32, ptr %2400, align 4, !tbaa !185
  %2402 = and i32 %2401, 256
  %2403 = icmp eq i32 %2402, 0
  br i1 %2403, label %2408, label %2404

2404:                                             ; preds = %2395
  %2405 = load ptr, ptr %2399, align 8, !tbaa !193
  %2406 = getelementptr inbounds %struct.xpvuv, ptr %2405, i64 0, i32 4
  %2407 = load i64, ptr %2406, align 8, !tbaa !142
  br label %2410

2408:                                             ; preds = %2395
  %2409 = call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %2399, i32 noundef 0) #16
  br label %2410

2410:                                             ; preds = %2408, %2404
  %2411 = phi i64 [ %2407, %2404 ], [ %2409, %2408 ]
  %2412 = trunc i64 %2411 to i32
  store i32 %2412, ptr %37, align 4, !tbaa !166
  br i1 %2382, label %2415, label %2413

2413:                                             ; preds = %2410
  %2414 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %37, i64 noundef 4, ptr noundef %2387, i1 noundef zeroext false) #15
  br label %2417

2415:                                             ; preds = %2410
  store i32 %2412, ptr %2387, align 1
  %2416 = getelementptr inbounds i8, ptr %2387, i64 4
  br label %2417

2417:                                             ; preds = %2415, %2413
  %2418 = phi ptr [ %2414, %2413 ], [ %2416, %2415 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %37) #14
  %2419 = icmp ugt i32 %2384, 1
  br i1 %2419, label %2383, label %2878, !llvm.loop !301

2420:                                             ; preds = %221, %2456
  %2421 = phi i32 [ %103, %221 ], [ %2425, %2456 ]
  %2422 = phi ptr [ %83, %221 ], [ %2434, %2456 ]
  %2423 = phi i32 [ %84, %221 ], [ %2433, %2456 ]
  %2424 = phi ptr [ %138, %221 ], [ %2457, %2456 ]
  %2425 = add nsw i32 %2421, -1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %38) #14
  br i1 %222, label %2426, label %2432, !prof !302

2426:                                             ; preds = %2420
  %2427 = icmp sgt i32 %2423, 0
  br i1 %2427, label %2428, label %2432, !prof !302

2428:                                             ; preds = %2426
  %2429 = add nsw i32 %2423, -1
  %2430 = getelementptr inbounds ptr, ptr %2422, i64 1
  %2431 = load ptr, ptr %2422, align 8, !tbaa !152
  br label %2432

2432:                                             ; preds = %2420, %2428, %2426
  %2433 = phi i32 [ %2429, %2428 ], [ %2423, %2426 ], [ %2423, %2420 ]
  %2434 = phi ptr [ %2430, %2428 ], [ %2422, %2426 ], [ %2422, %2420 ]
  %2435 = phi ptr [ %2431, %2428 ], [ @PL_sv_no, %2426 ], [ %185, %2420 ]
  %2436 = call fastcc ptr @S_sv_check_infnan(ptr noundef %2435, i32 noundef %86) #15
  %2437 = getelementptr inbounds %struct.sv, ptr %2436, i64 0, i32 2
  %2438 = load i32, ptr %2437, align 4, !tbaa !185
  %2439 = and i32 %2438, 256
  %2440 = icmp eq i32 %2439, 0
  br i1 %2440, label %2445, label %2441, !prof !303

2441:                                             ; preds = %2432
  %2442 = load ptr, ptr %2436, align 8, !tbaa !193
  %2443 = getelementptr inbounds %struct.xpvuv, ptr %2442, i64 0, i32 4
  %2444 = load i64, ptr %2443, align 8, !tbaa !142
  br label %2447

2445:                                             ; preds = %2432
  %2446 = call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %2436, i32 noundef 0) #16
  br label %2447

2447:                                             ; preds = %2445, %2441
  %2448 = phi i64 [ %2444, %2441 ], [ %2446, %2445 ]
  store i64 %2448, ptr %38, align 8, !tbaa !129
  br i1 %224, label %2451, label %2449, !prof !302

2449:                                             ; preds = %2447
  %2450 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %38, i64 noundef 8, ptr noundef %2424, i1 noundef zeroext %187) #15
  br label %2456

2451:                                             ; preds = %2447
  br i1 %187, label %2452, label %2453, !prof !303

2452:                                             ; preds = %2451
  call fastcc void @S_reverse_copy(ptr noundef nonnull %38, ptr noundef %2424, i64 noundef 8) #15
  br label %2454

2453:                                             ; preds = %2451
  store i64 %2448, ptr %2424, align 1
  br label %2454

2454:                                             ; preds = %2453, %2452
  %2455 = getelementptr inbounds i8, ptr %2424, i64 8
  br label %2456

2456:                                             ; preds = %2454, %2449
  %2457 = phi ptr [ %2450, %2449 ], [ %2455, %2454 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %38) #14
  %2458 = icmp ugt i32 %2421, 1
  br i1 %2458, label %2420, label %2878, !prof !304, !llvm.loop !305

2459:                                             ; preds = %215, %2496
  %2460 = phi i32 [ %103, %215 ], [ %2464, %2496 ]
  %2461 = phi ptr [ %83, %215 ], [ %2473, %2496 ]
  %2462 = phi i32 [ %84, %215 ], [ %2472, %2496 ]
  %2463 = phi ptr [ %138, %215 ], [ %2497, %2496 ]
  %2464 = add nsw i32 %2460, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %39) #14
  br i1 %216, label %2465, label %2471

2465:                                             ; preds = %2459
  %2466 = icmp sgt i32 %2462, 0
  br i1 %2466, label %2467, label %2471

2467:                                             ; preds = %2465
  %2468 = add nsw i32 %2462, -1
  %2469 = getelementptr inbounds ptr, ptr %2461, i64 1
  %2470 = load ptr, ptr %2461, align 8, !tbaa !152
  br label %2471

2471:                                             ; preds = %2459, %2467, %2465
  %2472 = phi i32 [ %2468, %2467 ], [ %2462, %2465 ], [ %2462, %2459 ]
  %2473 = phi ptr [ %2469, %2467 ], [ %2461, %2465 ], [ %2461, %2459 ]
  %2474 = phi ptr [ %2470, %2467 ], [ @PL_sv_no, %2465 ], [ %185, %2459 ]
  %2475 = call fastcc ptr @S_sv_check_infnan(ptr noundef %2474, i32 noundef %86) #15
  %2476 = getelementptr inbounds %struct.sv, ptr %2475, i64 0, i32 2
  %2477 = load i32, ptr %2476, align 4, !tbaa !185
  %2478 = and i32 %2477, 256
  %2479 = icmp eq i32 %2478, 0
  br i1 %2479, label %2484, label %2480

2480:                                             ; preds = %2471
  %2481 = load ptr, ptr %2475, align 8, !tbaa !193
  %2482 = getelementptr inbounds %struct.xpvuv, ptr %2481, i64 0, i32 4
  %2483 = load i64, ptr %2482, align 8, !tbaa !142
  br label %2486

2484:                                             ; preds = %2471
  %2485 = call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %2475, i32 noundef 0) #16
  br label %2486

2486:                                             ; preds = %2484, %2480
  %2487 = phi i64 [ %2483, %2480 ], [ %2485, %2484 ]
  %2488 = trunc i64 %2487 to i32
  store i32 %2488, ptr %39, align 4, !tbaa !166
  br i1 %218, label %2491, label %2489

2489:                                             ; preds = %2486
  %2490 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %39, i64 noundef 4, ptr noundef %2463, i1 noundef zeroext %187) #15
  br label %2496

2491:                                             ; preds = %2486
  br i1 %187, label %2492, label %2493

2492:                                             ; preds = %2491
  call fastcc void @S_reverse_copy(ptr noundef nonnull %39, ptr noundef %2463, i64 noundef 4) #15
  br label %2494

2493:                                             ; preds = %2491
  store i32 %2488, ptr %2463, align 1
  br label %2494

2494:                                             ; preds = %2493, %2492
  %2495 = getelementptr inbounds i8, ptr %2463, i64 4
  br label %2496

2496:                                             ; preds = %2494, %2489
  %2497 = phi ptr [ %2490, %2489 ], [ %2495, %2494 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %39) #14
  %2498 = icmp ugt i32 %2460, 1
  br i1 %2498, label %2459, label %2878, !llvm.loop !306

2499:                                             ; preds = %209, %2535
  %2500 = phi i32 [ %103, %209 ], [ %2504, %2535 ]
  %2501 = phi ptr [ %83, %209 ], [ %2513, %2535 ]
  %2502 = phi i32 [ %84, %209 ], [ %2512, %2535 ]
  %2503 = phi ptr [ %138, %209 ], [ %2536, %2535 ]
  %2504 = add nsw i32 %2500, -1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %40) #14
  br i1 %210, label %2505, label %2511

2505:                                             ; preds = %2499
  %2506 = icmp sgt i32 %2502, 0
  br i1 %2506, label %2507, label %2511

2507:                                             ; preds = %2505
  %2508 = add nsw i32 %2502, -1
  %2509 = getelementptr inbounds ptr, ptr %2501, i64 1
  %2510 = load ptr, ptr %2501, align 8, !tbaa !152
  br label %2511

2511:                                             ; preds = %2499, %2507, %2505
  %2512 = phi i32 [ %2508, %2507 ], [ %2502, %2505 ], [ %2502, %2499 ]
  %2513 = phi ptr [ %2509, %2507 ], [ %2501, %2505 ], [ %2501, %2499 ]
  %2514 = phi ptr [ %2510, %2507 ], [ @PL_sv_no, %2505 ], [ %185, %2499 ]
  %2515 = call fastcc ptr @S_sv_check_infnan(ptr noundef %2514, i32 noundef %86) #15
  %2516 = getelementptr inbounds %struct.sv, ptr %2515, i64 0, i32 2
  %2517 = load i32, ptr %2516, align 4, !tbaa !185
  %2518 = and i32 %2517, 256
  %2519 = icmp eq i32 %2518, 0
  br i1 %2519, label %2524, label %2520

2520:                                             ; preds = %2511
  %2521 = load ptr, ptr %2515, align 8, !tbaa !193
  %2522 = getelementptr inbounds %struct.xpviv, ptr %2521, i64 0, i32 4
  %2523 = load i64, ptr %2522, align 8, !tbaa !142
  br label %2526

2524:                                             ; preds = %2511
  %2525 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %2515, i32 noundef 0) #16
  br label %2526

2526:                                             ; preds = %2524, %2520
  %2527 = phi i64 [ %2523, %2520 ], [ %2525, %2524 ]
  store i64 %2527, ptr %40, align 8, !tbaa !129
  br i1 %212, label %2530, label %2528

2528:                                             ; preds = %2526
  %2529 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %40, i64 noundef 8, ptr noundef %2503, i1 noundef zeroext %187) #15
  br label %2535

2530:                                             ; preds = %2526
  br i1 %187, label %2531, label %2532

2531:                                             ; preds = %2530
  call fastcc void @S_reverse_copy(ptr noundef nonnull %40, ptr noundef %2503, i64 noundef 8) #15
  br label %2533

2532:                                             ; preds = %2530
  store i64 %2527, ptr %2503, align 1
  br label %2533

2533:                                             ; preds = %2532, %2531
  %2534 = getelementptr inbounds i8, ptr %2503, i64 8
  br label %2535

2535:                                             ; preds = %2533, %2528
  %2536 = phi ptr [ %2529, %2528 ], [ %2534, %2533 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %40) #14
  %2537 = icmp ugt i32 %2500, 1
  br i1 %2537, label %2499, label %2878, !llvm.loop !307

2538:                                             ; preds = %203, %2575
  %2539 = phi i32 [ %103, %203 ], [ %2543, %2575 ]
  %2540 = phi ptr [ %83, %203 ], [ %2552, %2575 ]
  %2541 = phi i32 [ %84, %203 ], [ %2551, %2575 ]
  %2542 = phi ptr [ %138, %203 ], [ %2576, %2575 ]
  %2543 = add nsw i32 %2539, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %41) #14
  br i1 %204, label %2544, label %2550

2544:                                             ; preds = %2538
  %2545 = icmp sgt i32 %2541, 0
  br i1 %2545, label %2546, label %2550

2546:                                             ; preds = %2544
  %2547 = add nsw i32 %2541, -1
  %2548 = getelementptr inbounds ptr, ptr %2540, i64 1
  %2549 = load ptr, ptr %2540, align 8, !tbaa !152
  br label %2550

2550:                                             ; preds = %2538, %2546, %2544
  %2551 = phi i32 [ %2547, %2546 ], [ %2541, %2544 ], [ %2541, %2538 ]
  %2552 = phi ptr [ %2548, %2546 ], [ %2540, %2544 ], [ %2540, %2538 ]
  %2553 = phi ptr [ %2549, %2546 ], [ @PL_sv_no, %2544 ], [ %185, %2538 ]
  %2554 = call fastcc ptr @S_sv_check_infnan(ptr noundef %2553, i32 noundef %86) #15
  %2555 = getelementptr inbounds %struct.sv, ptr %2554, i64 0, i32 2
  %2556 = load i32, ptr %2555, align 4, !tbaa !185
  %2557 = and i32 %2556, 256
  %2558 = icmp eq i32 %2557, 0
  br i1 %2558, label %2563, label %2559

2559:                                             ; preds = %2550
  %2560 = load ptr, ptr %2554, align 8, !tbaa !193
  %2561 = getelementptr inbounds %struct.xpviv, ptr %2560, i64 0, i32 4
  %2562 = load i64, ptr %2561, align 8, !tbaa !142
  br label %2565

2563:                                             ; preds = %2550
  %2564 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %2554, i32 noundef 0) #16
  br label %2565

2565:                                             ; preds = %2563, %2559
  %2566 = phi i64 [ %2562, %2559 ], [ %2564, %2563 ]
  %2567 = trunc i64 %2566 to i32
  store i32 %2567, ptr %41, align 4, !tbaa !166
  br i1 %206, label %2570, label %2568

2568:                                             ; preds = %2565
  %2569 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %41, i64 noundef 4, ptr noundef %2542, i1 noundef zeroext %187) #15
  br label %2575

2570:                                             ; preds = %2565
  br i1 %187, label %2571, label %2572

2571:                                             ; preds = %2570
  call fastcc void @S_reverse_copy(ptr noundef nonnull %41, ptr noundef %2542, i64 noundef 4) #15
  br label %2573

2572:                                             ; preds = %2570
  store i32 %2567, ptr %2542, align 1
  br label %2573

2573:                                             ; preds = %2572, %2571
  %2574 = getelementptr inbounds i8, ptr %2542, i64 4
  br label %2575

2575:                                             ; preds = %2573, %2568
  %2576 = phi ptr [ %2569, %2568 ], [ %2574, %2573 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %41) #14
  %2577 = icmp ugt i32 %2539, 1
  br i1 %2577, label %2538, label %2878, !llvm.loop !308

2578:                                             ; preds = %197, %2614
  %2579 = phi i32 [ %103, %197 ], [ %2583, %2614 ]
  %2580 = phi ptr [ %83, %197 ], [ %2592, %2614 ]
  %2581 = phi i32 [ %84, %197 ], [ %2591, %2614 ]
  %2582 = phi ptr [ %138, %197 ], [ %2615, %2614 ]
  %2583 = add nsw i32 %2579, -1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %42) #14
  br i1 %198, label %2584, label %2590

2584:                                             ; preds = %2578
  %2585 = icmp sgt i32 %2581, 0
  br i1 %2585, label %2586, label %2590

2586:                                             ; preds = %2584
  %2587 = add nsw i32 %2581, -1
  %2588 = getelementptr inbounds ptr, ptr %2580, i64 1
  %2589 = load ptr, ptr %2580, align 8, !tbaa !152
  br label %2590

2590:                                             ; preds = %2578, %2586, %2584
  %2591 = phi i32 [ %2587, %2586 ], [ %2581, %2584 ], [ %2581, %2578 ]
  %2592 = phi ptr [ %2588, %2586 ], [ %2580, %2584 ], [ %2580, %2578 ]
  %2593 = phi ptr [ %2589, %2586 ], [ @PL_sv_no, %2584 ], [ %185, %2578 ]
  %2594 = call fastcc ptr @S_sv_check_infnan(ptr noundef %2593, i32 noundef %86) #15
  %2595 = getelementptr inbounds %struct.sv, ptr %2594, i64 0, i32 2
  %2596 = load i32, ptr %2595, align 4, !tbaa !185
  %2597 = and i32 %2596, 256
  %2598 = icmp eq i32 %2597, 0
  br i1 %2598, label %2603, label %2599

2599:                                             ; preds = %2590
  %2600 = load ptr, ptr %2594, align 8, !tbaa !193
  %2601 = getelementptr inbounds %struct.xpvuv, ptr %2600, i64 0, i32 4
  %2602 = load i64, ptr %2601, align 8, !tbaa !142
  br label %2605

2603:                                             ; preds = %2590
  %2604 = call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %2594, i32 noundef 0) #16
  br label %2605

2605:                                             ; preds = %2603, %2599
  %2606 = phi i64 [ %2602, %2599 ], [ %2604, %2603 ]
  store i64 %2606, ptr %42, align 8, !tbaa !129
  br i1 %200, label %2609, label %2607

2607:                                             ; preds = %2605
  %2608 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %42, i64 noundef 8, ptr noundef %2582, i1 noundef zeroext %187) #15
  br label %2614

2609:                                             ; preds = %2605
  br i1 %187, label %2610, label %2611

2610:                                             ; preds = %2609
  call fastcc void @S_reverse_copy(ptr noundef nonnull %42, ptr noundef %2582, i64 noundef 8) #15
  br label %2612

2611:                                             ; preds = %2609
  store i64 %2606, ptr %2582, align 1
  br label %2612

2612:                                             ; preds = %2611, %2610
  %2613 = getelementptr inbounds i8, ptr %2582, i64 8
  br label %2614

2614:                                             ; preds = %2612, %2607
  %2615 = phi ptr [ %2608, %2607 ], [ %2613, %2612 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %42) #14
  %2616 = icmp ugt i32 %2579, 1
  br i1 %2616, label %2578, label %2878, !llvm.loop !309

2617:                                             ; preds = %191, %2653
  %2618 = phi i32 [ %103, %191 ], [ %2622, %2653 ]
  %2619 = phi ptr [ %83, %191 ], [ %2631, %2653 ]
  %2620 = phi i32 [ %84, %191 ], [ %2630, %2653 ]
  %2621 = phi ptr [ %138, %191 ], [ %2654, %2653 ]
  %2622 = add nsw i32 %2618, -1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %43) #14
  br i1 %192, label %2623, label %2629

2623:                                             ; preds = %2617
  %2624 = icmp sgt i32 %2620, 0
  br i1 %2624, label %2625, label %2629

2625:                                             ; preds = %2623
  %2626 = add nsw i32 %2620, -1
  %2627 = getelementptr inbounds ptr, ptr %2619, i64 1
  %2628 = load ptr, ptr %2619, align 8, !tbaa !152
  br label %2629

2629:                                             ; preds = %2617, %2625, %2623
  %2630 = phi i32 [ %2626, %2625 ], [ %2620, %2623 ], [ %2620, %2617 ]
  %2631 = phi ptr [ %2627, %2625 ], [ %2619, %2623 ], [ %2619, %2617 ]
  %2632 = phi ptr [ %2628, %2625 ], [ @PL_sv_no, %2623 ], [ %185, %2617 ]
  %2633 = call fastcc ptr @S_sv_check_infnan(ptr noundef %2632, i32 noundef %86) #15
  %2634 = getelementptr inbounds %struct.sv, ptr %2633, i64 0, i32 2
  %2635 = load i32, ptr %2634, align 4, !tbaa !185
  %2636 = and i32 %2635, 256
  %2637 = icmp eq i32 %2636, 0
  br i1 %2637, label %2642, label %2638

2638:                                             ; preds = %2629
  %2639 = load ptr, ptr %2633, align 8, !tbaa !193
  %2640 = getelementptr inbounds %struct.xpviv, ptr %2639, i64 0, i32 4
  %2641 = load i64, ptr %2640, align 8, !tbaa !142
  br label %2644

2642:                                             ; preds = %2629
  %2643 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %2633, i32 noundef 0) #16
  br label %2644

2644:                                             ; preds = %2642, %2638
  %2645 = phi i64 [ %2641, %2638 ], [ %2643, %2642 ]
  store i64 %2645, ptr %43, align 8, !tbaa !129
  br i1 %194, label %2648, label %2646

2646:                                             ; preds = %2644
  %2647 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %43, i64 noundef 8, ptr noundef %2621, i1 noundef zeroext %187) #15
  br label %2653

2648:                                             ; preds = %2644
  br i1 %187, label %2649, label %2650

2649:                                             ; preds = %2648
  call fastcc void @S_reverse_copy(ptr noundef nonnull %43, ptr noundef %2621, i64 noundef 8) #15
  br label %2651

2650:                                             ; preds = %2648
  store i64 %2645, ptr %2621, align 1
  br label %2651

2651:                                             ; preds = %2650, %2649
  %2652 = getelementptr inbounds i8, ptr %2621, i64 8
  br label %2653

2653:                                             ; preds = %2651, %2646
  %2654 = phi ptr [ %2647, %2646 ], [ %2652, %2651 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %43) #14
  %2655 = icmp ugt i32 %2618, 1
  br i1 %2655, label %2617, label %2878, !llvm.loop !310

2656:                                             ; preds = %184
  %2657 = and i8 %85, 1
  %2658 = icmp eq i8 %2657, 0
  %2659 = select i1 %2658, i64 8, i64 16
  %2660 = getelementptr inbounds i8, ptr %138, i64 %2659
  %2661 = load ptr, ptr %0, align 8, !tbaa !193
  %2662 = getelementptr inbounds %struct.xpv, ptr %2661, i64 0, i32 3
  %2663 = load i64, ptr %2662, align 8, !tbaa !142
  %2664 = getelementptr inbounds i8, ptr %139, i64 %2663
  %2665 = icmp ult ptr %2660, %2664
  br i1 %2665, label %2674, label %2666

2666:                                             ; preds = %2656
  %2667 = call fastcc ptr @S_sv_exp_grow(ptr noundef nonnull %0, i64 noundef %2659) #15
  %2668 = load ptr, ptr %0, align 8, !tbaa !193
  %2669 = getelementptr inbounds %struct.xpv, ptr %2668, i64 0, i32 2
  %2670 = load i64, ptr %2669, align 8, !tbaa !194
  %2671 = getelementptr inbounds i8, ptr %2667, i64 %2670
  br label %2674

2672:                                             ; preds = %184
  %2673 = icmp sgt i32 %103, 0
  br i1 %2673, label %2674, label %2878

2674:                                             ; preds = %2656, %2666, %2672
  %2675 = phi i32 [ %103, %2672 ], [ 1, %2666 ], [ 1, %2656 ]
  %2676 = phi ptr [ %139, %2672 ], [ %2667, %2666 ], [ %139, %2656 ]
  %2677 = phi ptr [ %138, %2672 ], [ %2671, %2666 ], [ %138, %2656 ]
  %2678 = icmp eq ptr %185, null
  %2679 = and i8 %85, 1
  %2680 = icmp eq i8 %2679, 0
  br label %2681

2681:                                             ; preds = %2674, %2750
  %2682 = phi i32 [ %2675, %2674 ], [ %2686, %2750 ]
  %2683 = phi ptr [ %83, %2674 ], [ %2695, %2750 ]
  %2684 = phi i32 [ %84, %2674 ], [ %2694, %2750 ]
  %2685 = phi ptr [ %2677, %2674 ], [ %2751, %2750 ]
  %2686 = add nsw i32 %2682, -1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %44) #14
  br i1 %2678, label %2687, label %2693

2687:                                             ; preds = %2681
  %2688 = icmp sgt i32 %2684, 0
  br i1 %2688, label %2689, label %2693

2689:                                             ; preds = %2687
  %2690 = add nsw i32 %2684, -1
  %2691 = getelementptr inbounds ptr, ptr %2683, i64 1
  %2692 = load ptr, ptr %2683, align 8, !tbaa !152
  br label %2693

2693:                                             ; preds = %2681, %2689, %2687
  %2694 = phi i32 [ %2690, %2689 ], [ %2684, %2687 ], [ %2684, %2681 ]
  %2695 = phi ptr [ %2691, %2689 ], [ %2683, %2687 ], [ %2683, %2681 ]
  %2696 = phi ptr [ %2692, %2689 ], [ @PL_sv_no, %2687 ], [ %185, %2681 ]
  %2697 = getelementptr inbounds %struct.sv, ptr %2696, i64 0, i32 2
  %2698 = load i32, ptr %2697, align 4, !tbaa !185
  %2699 = and i32 %2698, 2097152
  %2700 = icmp eq i32 %2699, 0
  br i1 %2700, label %2704, label %2701

2701:                                             ; preds = %2693
  %2702 = call i32 @Perl_mg_get(ptr noundef nonnull %2696) #16
  %2703 = load i32, ptr %2697, align 4, !tbaa !185
  br label %2704

2704:                                             ; preds = %2693, %2701
  %2705 = phi i32 [ %2698, %2693 ], [ %2703, %2701 ]
  %2706 = and i32 %2705, 65280
  %2707 = icmp ne i32 %2706, 0
  %2708 = and i32 %2705, 255
  %2709 = icmp eq i32 %2708, 8
  %2710 = or i1 %2707, %2709
  %2711 = and i32 %2705, 16777471
  %2712 = icmp eq i32 %2711, 16777226
  %2713 = or i1 %2712, %2710
  br i1 %2713, label %2715, label %2714

2714:                                             ; preds = %2704
  store ptr null, ptr %44, align 8, !tbaa !152
  br label %2741

2715:                                             ; preds = %2704
  %2716 = and i32 %2705, 524288
  %2717 = icmp ne i32 %2716, 0
  %2718 = and i32 %2705, 134414336
  %2719 = icmp eq i32 %2718, 131072
  %2720 = or i1 %2717, %2719
  br i1 %2720, label %2721, label %2723

2721:                                             ; preds = %2715
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 16, ptr noundef nonnull @.str.57) #16
  %2722 = load i32, ptr %2697, align 4, !tbaa !185
  br label %2723

2723:                                             ; preds = %2715, %2721
  %2724 = phi i32 [ %2705, %2715 ], [ %2722, %2721 ]
  %2725 = and i32 %2724, 1792
  %2726 = icmp eq i32 %2725, 0
  br i1 %2726, label %2738, label %2727

2727:                                             ; preds = %2723
  %2728 = and i32 %2724, 2098176
  %2729 = icmp eq i32 %2728, 1024
  br i1 %2729, label %2730, label %2733

2730:                                             ; preds = %2727
  %2731 = getelementptr inbounds %struct.sv, ptr %2696, i64 0, i32 3
  %2732 = load ptr, ptr %2731, align 8, !tbaa !142
  br label %2735

2733:                                             ; preds = %2727
  %2734 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %2696, ptr noundef null, i32 noundef 32) #16
  br label %2735

2735:                                             ; preds = %2733, %2730
  %2736 = phi ptr [ %2732, %2730 ], [ %2734, %2733 ]
  store ptr %2736, ptr %44, align 8, !tbaa !152
  %2737 = ptrtoint ptr %2736 to i64
  br label %2741

2738:                                             ; preds = %2723
  %2739 = call ptr @Perl_sv_pvn_force_flags(ptr noundef nonnull %2696, ptr noundef null, i32 noundef 0) #16
  store ptr %2739, ptr %44, align 8, !tbaa !152
  %2740 = ptrtoint ptr %2739 to i64
  br label %2741

2741:                                             ; preds = %2714, %2738, %2735
  %2742 = phi i64 [ 0, %2714 ], [ %2740, %2738 ], [ %2737, %2735 ]
  br i1 %2680, label %2745, label %2743

2743:                                             ; preds = %2741
  %2744 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %44, i64 noundef 8, ptr noundef %2685, i1 noundef zeroext %187) #15
  br label %2750

2745:                                             ; preds = %2741
  br i1 %187, label %2746, label %2747

2746:                                             ; preds = %2745
  call fastcc void @S_reverse_copy(ptr noundef nonnull %44, ptr noundef %2685, i64 noundef 8) #15
  br label %2748

2747:                                             ; preds = %2745
  store i64 %2742, ptr %2685, align 1
  br label %2748

2748:                                             ; preds = %2747, %2746
  %2749 = getelementptr inbounds i8, ptr %2685, i64 8
  br label %2750

2750:                                             ; preds = %2748, %2743
  %2751 = phi ptr [ %2744, %2743 ], [ %2749, %2748 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %44) #14
  %2752 = icmp ugt i32 %2682, 1
  br i1 %2752, label %2681, label %2878, !llvm.loop !311

2753:                                             ; preds = %184
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %45) #14
  %2754 = icmp eq ptr %185, null
  br i1 %2754, label %2755, label %2761

2755:                                             ; preds = %2753
  %2756 = icmp sgt i32 %84, 0
  br i1 %2756, label %2757, label %2761

2757:                                             ; preds = %2755
  %2758 = add nsw i32 %84, -1
  %2759 = getelementptr inbounds ptr, ptr %83, i64 1
  %2760 = load ptr, ptr %83, align 8, !tbaa !152
  br label %2761

2761:                                             ; preds = %2753, %2757, %2755
  %2762 = phi i32 [ %2758, %2757 ], [ %84, %2755 ], [ %84, %2753 ]
  %2763 = phi ptr [ %2759, %2757 ], [ %83, %2755 ], [ %83, %2753 ]
  %2764 = phi ptr [ %2760, %2757 ], [ @PL_sv_no, %2755 ], [ %185, %2753 ]
  %2765 = icmp slt i32 %103, 3
  br i1 %2765, label %2771, label %2766

2766:                                             ; preds = %2761
  %2767 = urem i32 %103, 3
  %2768 = sub nuw nsw i32 %103, %2767
  %2769 = icmp ugt i32 %2768, 63
  br i1 %2769, label %2770, label %2771

2770:                                             ; preds = %2766
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 16, ptr noundef nonnull @.str.58) #16
  br label %2771

2771:                                             ; preds = %2761, %2770, %2766
  %2772 = phi i32 [ 63, %2770 ], [ %2768, %2766 ], [ 45, %2761 ]
  %2773 = getelementptr inbounds %struct.sv, ptr %2764, i64 0, i32 2
  %2774 = load i32, ptr %2773, align 4, !tbaa !185
  %2775 = and i32 %2774, 2098176
  %2776 = icmp eq i32 %2775, 1024
  br i1 %2776, label %2777, label %2783

2777:                                             ; preds = %2771
  %2778 = load ptr, ptr %2764, align 8, !tbaa !193
  %2779 = getelementptr inbounds %struct.xpv, ptr %2778, i64 0, i32 2
  %2780 = load i64, ptr %2779, align 8, !tbaa !194
  store i64 %2780, ptr %6, align 8, !tbaa !129
  %2781 = getelementptr inbounds %struct.sv, ptr %2764, i64 0, i32 3
  %2782 = load ptr, ptr %2781, align 8, !tbaa !142
  br label %2786

2783:                                             ; preds = %2771
  %2784 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %2764, ptr noundef nonnull %6, i32 noundef 34) #16
  %2785 = load i32, ptr %2773, align 4, !tbaa !185
  br label %2786

2786:                                             ; preds = %2783, %2777
  %2787 = phi i32 [ %2774, %2777 ], [ %2785, %2783 ]
  %2788 = phi ptr [ %2782, %2777 ], [ %2784, %2783 ]
  store ptr %2788, ptr %45, align 8, !tbaa !152
  %2789 = and i32 %2787, 536870912
  %2790 = icmp eq i32 %2789, 0
  br i1 %2790, label %2791, label %2793

2791:                                             ; preds = %2786
  %2792 = load i64, ptr %6, align 8, !tbaa !129
  br label %2803

2793:                                             ; preds = %2786
  %2794 = load ptr, ptr @PL_curcop, align 8, !tbaa !152
  %2795 = getelementptr inbounds %struct.cop, ptr %2794, i64 0, i32 10
  %2796 = load i32, ptr %2795, align 8, !tbaa !242
  %2797 = and i32 %2796, 8
  %2798 = icmp eq i32 %2797, 0
  %2799 = load i64, ptr %6, align 8, !tbaa !129
  br i1 %2798, label %2800, label %2803

2800:                                             ; preds = %2793
  %2801 = getelementptr inbounds i8, ptr %2788, i64 %2799
  %2802 = call i64 @Perl_sv_len_utf8_nomg(ptr noundef nonnull %2764) #16
  store i64 %2802, ptr %6, align 8, !tbaa !129
  br label %2803

2803:                                             ; preds = %2791, %2793, %2800
  %2804 = phi i64 [ %2802, %2800 ], [ %2799, %2793 ], [ %2792, %2791 ]
  %2805 = phi i1 [ true, %2800 ], [ false, %2793 ], [ false, %2791 ]
  %2806 = phi ptr [ %2801, %2800 ], [ null, %2793 ], [ null, %2791 ]
  %2807 = add i64 %2804, 2
  %2808 = udiv i64 %2807, 3
  %2809 = shl i64 %2808, 2
  %2810 = zext nneg i32 %2772 to i64
  %2811 = add nsw i64 %2810, -1
  %2812 = add i64 %2811, %2804
  %2813 = udiv i64 %2812, %2810
  %2814 = shl nuw i64 %2813, 1
  %2815 = add i64 %2809, %2814
  %2816 = and i8 %85, 1
  %2817 = icmp eq i8 %2816, 0
  %2818 = zext nneg i8 %2816 to i64
  %2819 = shl i64 %2815, %2818
  %2820 = getelementptr inbounds i8, ptr %138, i64 %2819
  %2821 = load ptr, ptr %0, align 8, !tbaa !193
  %2822 = getelementptr inbounds %struct.xpv, ptr %2821, i64 0, i32 3
  %2823 = load i64, ptr %2822, align 8, !tbaa !142
  %2824 = getelementptr inbounds i8, ptr %139, i64 %2823
  %2825 = icmp ult ptr %2820, %2824
  br i1 %2825, label %2833, label %2826

2826:                                             ; preds = %2803
  %2827 = call fastcc ptr @S_sv_exp_grow(ptr noundef nonnull %0, i64 noundef %2819) #15
  %2828 = load ptr, ptr %0, align 8, !tbaa !193
  %2829 = getelementptr inbounds %struct.xpv, ptr %2828, i64 0, i32 2
  %2830 = load i64, ptr %2829, align 8, !tbaa !194
  %2831 = getelementptr inbounds i8, ptr %2827, i64 %2830
  %2832 = load i64, ptr %6, align 8, !tbaa !129
  br label %2833

2833:                                             ; preds = %2826, %2803
  %2834 = phi i64 [ %2832, %2826 ], [ %2804, %2803 ]
  %2835 = phi ptr [ %2831, %2826 ], [ %138, %2803 ]
  %2836 = phi ptr [ %2827, %2826 ], [ %139, %2803 ]
  %2837 = icmp eq i64 %2834, 0
  br i1 %2837, label %2876, label %2838

2838:                                             ; preds = %2833
  %2839 = ptrtoint ptr %46 to i64
  %2840 = ptrtoint ptr %2836 to i64
  br label %2841

2841:                                             ; preds = %2838, %2870
  %2842 = phi ptr [ %2835, %2838 ], [ %2871, %2870 ]
  %2843 = phi i64 [ %2834, %2838 ], [ %2874, %2870 ]
  call void @llvm.lifetime.start.p0(i64 86, ptr nonnull %46) #14
  %2844 = trunc i64 %2843 to i32
  %2845 = call i32 @llvm.smin.i32(i32 %2772, i32 %2844)
  br i1 %2805, label %2846, label %2857

2846:                                             ; preds = %2841
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %47) #14
  %2847 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %45, ptr noundef %2806, ptr noundef nonnull %47, i32 noundef %2845, i32 noundef 2165) #15
  br i1 %2847, label %2855, label %2848

2848:                                             ; preds = %2846
  store i8 0, ptr %2842, align 1, !tbaa !142
  %2849 = ptrtoint ptr %2842 to i64
  %2850 = sub i64 %2849, %2840
  %2851 = load ptr, ptr %0, align 8, !tbaa !193
  %2852 = getelementptr inbounds %struct.xpv, ptr %2851, i64 0, i32 2
  store i64 %2850, ptr %2852, align 8, !tbaa !194
  %2853 = load ptr, ptr %45, align 8, !tbaa !152
  %2854 = sext i32 %2845 to i64
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.59, ptr noundef %2853, ptr noundef %2806, ptr noundef nonnull %47, i64 noundef %2854) #16
  br label %2855

2855:                                             ; preds = %2848, %2846
  %2856 = call fastcc ptr @doencodes(ptr noundef nonnull %46, ptr noundef nonnull %47, i32 noundef %2845) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %47) #14
  br label %2862

2857:                                             ; preds = %2841
  %2858 = load ptr, ptr %45, align 8, !tbaa !152
  %2859 = call fastcc ptr @doencodes(ptr noundef nonnull %46, ptr noundef %2858, i32 noundef %2845) #15
  %2860 = sext i32 %2845 to i64
  %2861 = getelementptr inbounds i8, ptr %2858, i64 %2860
  store ptr %2861, ptr %45, align 8, !tbaa !152
  br label %2862

2862:                                             ; preds = %2855, %2857
  %2863 = phi ptr [ %2856, %2855 ], [ %2859, %2857 ]
  %2864 = ptrtoint ptr %2863 to i64
  %2865 = sub i64 %2864, %2839
  br i1 %2817, label %2868, label %2866

2866:                                             ; preds = %2862
  %2867 = call fastcc ptr @S_my_bytes_to_utf8(ptr noundef nonnull %46, i64 noundef %2865, ptr noundef %2842, i1 noundef zeroext false) #15
  br label %2870

2868:                                             ; preds = %2862
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2842, ptr nonnull align 16 %46, i64 %2865, i1 false)
  %2869 = getelementptr inbounds i8, ptr %2842, i64 %2865
  br label %2870

2870:                                             ; preds = %2868, %2866
  %2871 = phi ptr [ %2867, %2866 ], [ %2869, %2868 ]
  %2872 = sext i32 %2845 to i64
  %2873 = load i64, ptr %6, align 8, !tbaa !129
  %2874 = sub i64 %2873, %2872
  store i64 %2874, ptr %6, align 8, !tbaa !129
  call void @llvm.lifetime.end.p0(i64 86, ptr nonnull %46) #14
  %2875 = icmp eq i64 %2874, 0
  br i1 %2875, label %2876, label %2841, !llvm.loop !312

2876:                                             ; preds = %2870, %2833
  %2877 = phi ptr [ %2835, %2833 ], [ %2871, %2870 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %45) #14
  br label %2878

2878:                                             ; preds = %2750, %2653, %2614, %2575, %2535, %2496, %2456, %2417, %2374, %2330, %2283, %2067, %2028, %1989, %1943, %1897, %1851, %1808, %1727, %1689, %1644, %1512, %1356, %1303, %2672, %189, %195, %201, %207, %213, %219, %2377, %2333, %2287, %225, %238, %244, %1946, %1900, %1854, %1811, %1767, %250, %256, %1529, %1359, %1307, %262, %472, %475, %534, %554, %2876, %1763, %1313, %1260, %1026, %830, %377
  %2879 = phi ptr [ %380, %377 ], [ %535, %554 ], [ %535, %534 ], [ %2877, %2876 ], [ %1764, %1763 ], [ %138, %1313 ], [ %1263, %1260 ], [ %1029, %1026 ], [ %823, %830 ], [ %473, %475 ], [ %473, %472 ], [ %138, %262 ], [ %138, %1307 ], [ %138, %1359 ], [ %138, %1529 ], [ %138, %256 ], [ %138, %250 ], [ %138, %1767 ], [ %138, %1811 ], [ %138, %1854 ], [ %138, %1900 ], [ %138, %1946 ], [ %138, %244 ], [ %138, %238 ], [ %138, %225 ], [ %138, %2287 ], [ %138, %2333 ], [ %138, %2377 ], [ %138, %219 ], [ %138, %213 ], [ %138, %207 ], [ %138, %201 ], [ %138, %195 ], [ %138, %189 ], [ %138, %2672 ], [ %1304, %1303 ], [ %1357, %1356 ], [ %1514, %1512 ], [ %1646, %1644 ], [ %1690, %1689 ], [ %1728, %1727 ], [ %1809, %1808 ], [ %1852, %1851 ], [ %1898, %1897 ], [ %1944, %1943 ], [ %1990, %1989 ], [ %2029, %2028 ], [ %2068, %2067 ], [ %2284, %2283 ], [ %2331, %2330 ], [ %2375, %2374 ], [ %2418, %2417 ], [ %2457, %2456 ], [ %2497, %2496 ], [ %2536, %2535 ], [ %2576, %2575 ], [ %2615, %2614 ], [ %2654, %2653 ], [ %2751, %2750 ]
  %2880 = phi ptr [ %379, %377 ], [ %139, %554 ], [ %139, %534 ], [ %2836, %2876 ], [ %139, %1763 ], [ %139, %1313 ], [ %1100, %1260 ], [ %901, %1026 ], [ %817, %830 ], [ %139, %475 ], [ %139, %472 ], [ %139, %262 ], [ %139, %1307 ], [ %139, %1359 ], [ %139, %1529 ], [ %139, %256 ], [ %139, %250 ], [ %139, %1767 ], [ %139, %1811 ], [ %139, %1854 ], [ %139, %1900 ], [ %139, %1946 ], [ %139, %244 ], [ %139, %238 ], [ %139, %225 ], [ %139, %2287 ], [ %139, %2333 ], [ %139, %2377 ], [ %139, %219 ], [ %139, %213 ], [ %139, %207 ], [ %139, %201 ], [ %139, %195 ], [ %139, %189 ], [ %139, %2672 ], [ %139, %1303 ], [ %139, %1356 ], [ %1515, %1512 ], [ %1647, %1644 ], [ %139, %1689 ], [ %139, %1727 ], [ %139, %1808 ], [ %139, %1851 ], [ %139, %1897 ], [ %139, %1943 ], [ %139, %1989 ], [ %139, %2028 ], [ %139, %2067 ], [ %2285, %2283 ], [ %139, %2330 ], [ %139, %2374 ], [ %139, %2417 ], [ %139, %2456 ], [ %139, %2496 ], [ %139, %2535 ], [ %139, %2575 ], [ %139, %2614 ], [ %139, %2653 ], [ %2676, %2750 ]
  %2881 = phi i8 [ %85, %377 ], [ %85, %554 ], [ %85, %534 ], [ %85, %2876 ], [ %85, %1763 ], [ %1317, %1313 ], [ %85, %1260 ], [ %85, %1026 ], [ %819, %830 ], [ %85, %475 ], [ %85, %472 ], [ %85, %262 ], [ %85, %1307 ], [ %85, %1359 ], [ %85, %1529 ], [ %85, %256 ], [ %85, %250 ], [ %85, %1767 ], [ %85, %1811 ], [ %85, %1854 ], [ %85, %1900 ], [ %85, %1946 ], [ %85, %244 ], [ %85, %238 ], [ %85, %225 ], [ %85, %2287 ], [ %85, %2333 ], [ %85, %2377 ], [ %85, %219 ], [ %85, %213 ], [ %85, %207 ], [ %85, %201 ], [ %85, %195 ], [ %85, %189 ], [ %85, %2672 ], [ %85, %1303 ], [ %85, %1356 ], [ %1516, %1512 ], [ %85, %1644 ], [ %85, %1689 ], [ %85, %1727 ], [ %85, %1808 ], [ %85, %1851 ], [ %85, %1897 ], [ %85, %1943 ], [ %85, %1989 ], [ %85, %2028 ], [ %85, %2067 ], [ %85, %2283 ], [ %85, %2330 ], [ %85, %2374 ], [ %85, %2417 ], [ %85, %2456 ], [ %85, %2496 ], [ %85, %2535 ], [ %85, %2575 ], [ %85, %2614 ], [ %85, %2653 ], [ %85, %2750 ]
  %2882 = phi i32 [ %362, %377 ], [ %536, %554 ], [ %536, %534 ], [ %2762, %2876 ], [ %1765, %1763 ], [ %84, %1313 ], [ %1039, %1260 ], [ %840, %1026 ], [ %584, %830 ], [ %84, %475 ], [ %84, %472 ], [ %84, %262 ], [ %84, %1307 ], [ %84, %1359 ], [ %84, %1529 ], [ %84, %256 ], [ %84, %250 ], [ %84, %1767 ], [ %84, %1811 ], [ %84, %1854 ], [ %84, %1900 ], [ %84, %1946 ], [ %84, %244 ], [ %84, %238 ], [ %84, %225 ], [ %84, %2287 ], [ %84, %2333 ], [ %84, %2377 ], [ %84, %219 ], [ %84, %213 ], [ %84, %207 ], [ %84, %201 ], [ %84, %195 ], [ %84, %189 ], [ %84, %2672 ], [ %1277, %1303 ], [ %1331, %1356 ], [ %1396, %1512 ], [ %1558, %1644 ], [ %1662, %1689 ], [ %1705, %1727 ], [ %1786, %1808 ], [ %1830, %1851 ], [ %1873, %1897 ], [ %1919, %1943 ], [ %1965, %1989 ], [ %2005, %2028 ], [ %2044, %2067 ], [ %2084, %2283 ], [ %2306, %2330 ], [ %2352, %2374 ], [ %2396, %2417 ], [ %2433, %2456 ], [ %2472, %2496 ], [ %2512, %2535 ], [ %2551, %2575 ], [ %2591, %2614 ], [ %2630, %2653 ], [ %2694, %2750 ]
  %2883 = phi ptr [ %363, %377 ], [ %537, %554 ], [ %537, %534 ], [ %2763, %2876 ], [ %1766, %1763 ], [ %83, %1313 ], [ %1040, %1260 ], [ %841, %1026 ], [ %585, %830 ], [ %83, %475 ], [ %83, %472 ], [ %83, %262 ], [ %83, %1307 ], [ %83, %1359 ], [ %83, %1529 ], [ %83, %256 ], [ %83, %250 ], [ %83, %1767 ], [ %83, %1811 ], [ %83, %1854 ], [ %83, %1900 ], [ %83, %1946 ], [ %83, %244 ], [ %83, %238 ], [ %83, %225 ], [ %83, %2287 ], [ %83, %2333 ], [ %83, %2377 ], [ %83, %219 ], [ %83, %213 ], [ %83, %207 ], [ %83, %201 ], [ %83, %195 ], [ %83, %189 ], [ %83, %2672 ], [ %1278, %1303 ], [ %1332, %1356 ], [ %1397, %1512 ], [ %1559, %1644 ], [ %1663, %1689 ], [ %1706, %1727 ], [ %1787, %1808 ], [ %1831, %1851 ], [ %1874, %1897 ], [ %1920, %1943 ], [ %1966, %1989 ], [ %2006, %2028 ], [ %2045, %2067 ], [ %2085, %2283 ], [ %2307, %2330 ], [ %2353, %2374 ], [ %2397, %2417 ], [ %2434, %2456 ], [ %2473, %2496 ], [ %2513, %2535 ], [ %2552, %2575 ], [ %2592, %2614 ], [ %2631, %2653 ], [ %2695, %2750 ]
  store i8 0, ptr %2879, align 1, !tbaa !142
  %2884 = ptrtoint ptr %2879 to i64
  %2885 = ptrtoint ptr %2880 to i64
  %2886 = sub i64 %2884, %2885
  %2887 = load ptr, ptr %0, align 8, !tbaa !193
  %2888 = getelementptr inbounds %struct.xpv, ptr %2887, i64 0, i32 2
  store i64 %2886, ptr %2888, align 8, !tbaa !194
  br label %2889

2889:                                             ; preds = %1519, %1523, %570, %489, %396, %381, %439, %2878
  %2890 = phi i8 [ %2881, %2878 ], [ %85, %396 ], [ %85, %381 ], [ %85, %570 ], [ %85, %489 ], [ %441, %439 ], [ 0, %1523 ], [ 0, %1519 ]
  %2891 = phi i32 [ %2882, %2878 ], [ %326, %396 ], [ %326, %381 ], [ %84, %570 ], [ %84, %489 ], [ %446, %439 ], [ %84, %1523 ], [ %84, %1519 ]
  %2892 = phi ptr [ %2883, %2878 ], [ %327, %396 ], [ %327, %381 ], [ %83, %570 ], [ %83, %489 ], [ %442, %439 ], [ %83, %1523 ], [ %83, %1519 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %5, i64 72, i1 false), !tbaa.struct !165
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  br i1 %140, label %82, label %2893, !prof !313, !llvm.loop !314

2893:                                             ; preds = %2889, %71
  %2894 = phi ptr [ %2, %71 ], [ %2892, %2889 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #14
  ret ptr %2894
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_pack() local_unnamed_addr #0 !prof !245 {
  %1 = alloca i64, align 8
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !152
  %3 = load ptr, ptr @PL_stack_base, align 8, !tbaa !152
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !152
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !152
  %6 = load i32, ptr %4, align 4, !tbaa !166
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %3, i64 %7
  %9 = load ptr, ptr @PL_curpad, align 8, !tbaa !152
  %10 = load ptr, ptr @PL_op, align 8, !tbaa !152
  %11 = getelementptr inbounds %struct.op, ptr %10, i64 0, i32 3
  %12 = load i64, ptr %11, align 8, !tbaa !315
  %13 = getelementptr inbounds ptr, ptr %9, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !152
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #14
  %15 = getelementptr inbounds ptr, ptr %8, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !152
  %17 = getelementptr inbounds %struct.sv, ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !185
  %19 = and i32 %18, 2098176
  %20 = icmp eq i32 %19, 1024
  br i1 %20, label %21, label %27, !prof !246

21:                                               ; preds = %0
  %22 = load ptr, ptr %16, align 8, !tbaa !193
  %23 = getelementptr inbounds %struct.xpv, ptr %22, i64 0, i32 2
  %24 = load i64, ptr %23, align 8, !tbaa !194
  store i64 %24, ptr %1, align 8, !tbaa !129
  %25 = getelementptr inbounds %struct.sv, ptr %16, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !142
  br label %30

27:                                               ; preds = %0
  %28 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %16, ptr noundef nonnull %1, i32 noundef 34) #16
  %29 = load i64, ptr %1, align 8, !tbaa !129
  br label %30

30:                                               ; preds = %27, %21
  %31 = phi i64 [ %24, %21 ], [ %29, %27 ]
  %32 = phi ptr [ %26, %21 ], [ %28, %27 ]
  %33 = getelementptr inbounds i8, ptr %32, i64 %31
  %34 = getelementptr inbounds ptr, ptr %8, i64 2
  call void @Perl_sv_setpvn(ptr noundef %14, ptr noundef nonnull @.str, i64 noundef 0) #16
  %35 = getelementptr inbounds %struct.sv, ptr %14, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !185
  %37 = and i32 %36, -536870913
  store i32 %37, ptr %35, align 4, !tbaa !185
  %38 = getelementptr inbounds ptr, ptr %2, i64 1
  call void @Perl_packlist(ptr noundef %14, ptr noundef %32, ptr noundef %33, ptr noundef nonnull %34, ptr noundef nonnull %38) #15
  %39 = load i32, ptr %35, align 4, !tbaa !185
  %40 = and i32 %39, 4194304
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42, !prof !246

42:                                               ; preds = %30
  %43 = call i32 @Perl_mg_set(ptr noundef nonnull %14) #16
  br label %44

44:                                               ; preds = %30, %42
  %45 = load ptr, ptr @PL_stack_base, align 8, !tbaa !152
  %46 = getelementptr inbounds ptr, ptr %45, i64 %7
  %47 = getelementptr inbounds ptr, ptr %46, i64 1
  store ptr %14, ptr %47, align 8, !tbaa !152
  store ptr %47, ptr @PL_stack_sp, align 8, !tbaa !152
  %48 = load ptr, ptr @PL_op, align 8, !tbaa !152
  %49 = load ptr, ptr %48, align 8, !tbaa !244
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
define internal fastcc noundef zeroext i1 @S_next_symbol(ptr nocapture noundef %0) unnamed_addr #0 !prof !316 !PGOFuncName !317 {
  %2 = alloca [36 x i8], align 8
  %3 = alloca { i32, i32, i32, i64, ptr }, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !134
  %5 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !138
  %7 = ptrtoint ptr %6 to i64
  %8 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 8
  %9 = load i32, ptr %8, align 8, !tbaa !139
  %10 = and i32 %9, -5
  store i32 %10, ptr %8, align 8, !tbaa !139
  %11 = icmp ult ptr %4, %6
  br i1 %11, label %12, label %215, !prof !318

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 6
  %14 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 5
  %15 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 4
  br label %16

16:                                               ; preds = %12, %212
  %17 = phi ptr [ %4, %12 ], [ %213, %212 ]
  %18 = load i8, ptr %17, align 1, !tbaa !142
  %19 = zext i8 %18 to i64
  %20 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !166
  %22 = and i32 %21, 17408
  %23 = icmp eq i32 %22, 17408
  br i1 %23, label %24, label %26, !prof !319

24:                                               ; preds = %16
  %25 = getelementptr inbounds i8, ptr %17, i64 1
  br label %212

26:                                               ; preds = %16
  %27 = icmp eq i8 %18, 35
  br i1 %27, label %28, label %38, !prof !319

28:                                               ; preds = %26, %32
  %29 = phi ptr [ %30, %32 ], [ %17, %26 ]
  %30 = getelementptr inbounds i8, ptr %29, i64 1
  %31 = icmp ult ptr %30, %6
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i8, ptr %30, align 1, !tbaa !142
  %34 = icmp eq i8 %33, 10
  br i1 %34, label %35, label %28, !llvm.loop !320

35:                                               ; preds = %28, %32
  %36 = getelementptr inbounds i8, ptr %29, i64 2
  %37 = select i1 %31, ptr %36, ptr %30
  br label %212

38:                                               ; preds = %26
  %39 = zext i8 %18 to i32
  %40 = getelementptr inbounds i8, ptr %17, i64 1
  %41 = icmp eq i8 %18, 44
  br i1 %41, label %42, label %52, !prof !319

42:                                               ; preds = %38
  %43 = load i32, ptr %8, align 8, !tbaa !139
  %44 = and i32 %43, 2
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %212, !llvm.loop !321

46:                                               ; preds = %42
  %47 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 42) #16
  br i1 %47, label %48, label %212, !llvm.loop !321

48:                                               ; preds = %46
  %49 = load i32, ptr %8, align 8, !tbaa !139
  %50 = or i32 %49, 2
  store i32 %50, ptr %8, align 8, !tbaa !139
  %51 = tail call fastcc ptr @_action(ptr noundef nonnull %0) #15
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 42, ptr noundef nonnull @.str.18, ptr noundef nonnull %51) #16
  br label %212, !llvm.loop !321

52:                                               ; preds = %38
  %53 = icmp eq i8 %18, 40
  br i1 %53, label %54, label %75, !prof !319

54:                                               ; preds = %52
  %55 = load i8, ptr %40, align 1, !tbaa !142
  %56 = zext i8 %55 to i64
  %57 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %56
  %58 = load i32, ptr %57, align 4, !tbaa !166
  %59 = freeze i32 %58
  %60 = and i32 %59, 2
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  switch i8 %55, label %65 [
    i8 91, label %63
    i8 42, label %63
  ]

63:                                               ; preds = %62, %62, %54
  %64 = tail call fastcc ptr @_action(ptr noundef nonnull %0) #15
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.19, ptr noundef nonnull %64) #16
  br label %65

65:                                               ; preds = %62, %63
  %66 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 2
  %67 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 3
  %68 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 7
  store ptr %40, ptr %66, align 8, !tbaa !170
  %69 = tail call fastcc ptr @S_group_end(ptr noundef nonnull %40, ptr noundef nonnull %6, i8 noundef signext 41) #15
  store ptr %69, ptr %67, align 8, !tbaa !167
  %70 = getelementptr inbounds i8, ptr %69, i64 1
  %71 = load i32, ptr %68, align 4, !tbaa !169
  %72 = icmp sgt i32 %71, 99
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = tail call fastcc ptr @_action(ptr noundef nonnull %0) #15
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.20, ptr noundef nonnull %74) #16
  br label %75

75:                                               ; preds = %65, %73, %52
  %76 = phi ptr [ %70, %73 ], [ %70, %65 ], [ %40, %52 ]
  %77 = ptrtoint ptr %76 to i64
  %78 = load i32, ptr %8, align 8, !tbaa !139
  %79 = and i32 %78, 1536
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %85, label %81, !prof !322

81:                                               ; preds = %75
  %82 = tail call ptr @memchr(ptr nonnull dereferenceable(1) @.str.21, i32 %39, i64 18)
  %83 = icmp eq ptr %82, null
  %84 = select i1 %83, i32 0, i32 %79
  br label %85

85:                                               ; preds = %81, %75
  %86 = phi i32 [ 0, %75 ], [ %84, %81 ]
  %87 = icmp ult ptr %76, %6
  br i1 %87, label %88, label %130, !prof !323

88:                                               ; preds = %85
  %89 = getelementptr i8, ptr %76, i64 %7
  %90 = sub i64 0, %77
  %91 = getelementptr i8, ptr %89, i64 %90
  br label %92

92:                                               ; preds = %88, %127
  %93 = phi i32 [ %108, %127 ], [ %39, %88 ]
  %94 = phi ptr [ %128, %127 ], [ %76, %88 ]
  %95 = load i8, ptr %94, align 1, !tbaa !142
  switch i8 %95, label %130 [
    i8 33, label %98
    i8 62, label %96
    i8 60, label %97
  ], !prof !324

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
  br i1 %103, label %104, label %107, !prof !303

104:                                              ; preds = %98
  %105 = zext nneg i8 %95 to i32
  %106 = tail call fastcc ptr @_action(ptr noundef nonnull %0) #15
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.23, i32 noundef %105, ptr noundef nonnull %99, ptr noundef nonnull %106) #16
  br label %107

107:                                              ; preds = %104, %98
  %108 = or i32 %100, %93
  %109 = and i32 %108, 1536
  %110 = icmp eq i32 %109, 1536
  br i1 %110, label %111, label %113, !prof !303

111:                                              ; preds = %107
  %112 = tail call fastcc ptr @_action(ptr noundef nonnull %0) #15
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.24, i32 noundef %101, ptr noundef nonnull %112) #16
  br label %120

113:                                              ; preds = %107
  %114 = or i32 %109, %86
  %115 = icmp eq i32 %114, 1536
  br i1 %115, label %116, label %120, !prof !303

116:                                              ; preds = %113
  %117 = load i8, ptr %94, align 1, !tbaa !142
  %118 = sext i8 %117 to i32
  %119 = tail call fastcc ptr @_action(ptr noundef nonnull %0) #15
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.25, i32 noundef %118, ptr noundef nonnull %119) #16
  br label %120

120:                                              ; preds = %113, %116, %111
  %121 = and i32 %100, %93
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %127, label %123, !prof !302

123:                                              ; preds = %120
  %124 = load i8, ptr %94, align 1, !tbaa !142
  %125 = sext i8 %124 to i32
  %126 = tail call fastcc ptr @_action(ptr noundef nonnull %0) #15
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 42, ptr noundef nonnull @.str.26, i32 noundef %125, i32 noundef %101, ptr noundef nonnull %126) #16
  br label %127

127:                                              ; preds = %120, %123
  %128 = getelementptr inbounds i8, ptr %94, i64 1
  %129 = icmp eq ptr %128, %91
  br i1 %129, label %130, label %92, !prof !325

130:                                              ; preds = %127, %92, %85
  %131 = phi ptr [ %76, %85 ], [ %94, %92 ], [ %91, %127 ]
  %132 = phi i32 [ %39, %85 ], [ %93, %92 ], [ %108, %127 ]
  %133 = or i32 %132, %86
  %134 = icmp ult ptr %131, %6
  br i1 %134, label %135, label %209, !prof !326

135:                                              ; preds = %130
  %136 = load i8, ptr %131, align 1, !tbaa !142
  %137 = zext i8 %136 to i64
  %138 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %137
  %139 = load i32, ptr %138, align 4, !tbaa !166
  %140 = and i32 %139, 2
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %144, label %142, !prof !327

142:                                              ; preds = %135
  %143 = tail call fastcc ptr @S_get_num(ptr noundef nonnull %131, ptr noundef nonnull %14) #15
  store i32 1, ptr %13, align 8, !tbaa !157
  br label %166

144:                                              ; preds = %135
  switch i8 %136, label %165 [
    i8 42, label %145
    i8 91, label %147
  ], !prof !328

145:                                              ; preds = %144
  %146 = getelementptr inbounds i8, ptr %131, i64 1
  store i32 2, ptr %13, align 8, !tbaa !157
  br label %166

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, ptr %131, i64 1
  store i32 1, ptr %13, align 8, !tbaa !157
  %149 = tail call fastcc ptr @S_group_end(ptr noundef nonnull %148, ptr noundef nonnull %6, i8 noundef signext 93) #15
  %150 = getelementptr inbounds i8, ptr %149, i64 1
  %151 = load i8, ptr %148, align 1, !tbaa !142
  %152 = zext i8 %151 to i64
  %153 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %152
  %154 = load i32, ptr %153, align 4, !tbaa !166
  %155 = and i32 %154, 2
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %163, label %157

157:                                              ; preds = %147
  %158 = tail call fastcc ptr @S_get_num(ptr noundef nonnull %148, ptr noundef nonnull %14) #15
  %159 = load i8, ptr %158, align 1, !tbaa !142
  %160 = icmp eq i8 %159, 93
  br i1 %160, label %166, label %161

161:                                              ; preds = %157
  %162 = tail call fastcc ptr @_action(ptr noundef nonnull %0) #15
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.27, ptr noundef nonnull %162) #16
  br label %166

163:                                              ; preds = %147
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %2)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(36) %0, i64 36, i1 false), !tbaa.struct !165
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %13, i64 32, i1 false), !tbaa.struct !260
  store ptr %149, ptr %5, align 8, !tbaa !138
  store ptr %148, ptr %0, align 8, !tbaa !134
  %164 = tail call fastcc i32 @S_measure_struct(ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %2, i64 36, i1 false), !tbaa.struct !165
  store i32 %164, ptr %14, align 4, !tbaa.struct !329
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !260
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3)
  br label %166

165:                                              ; preds = %144
  store i32 0, ptr %13, align 8, !tbaa !157
  store i32 1, ptr %14, align 4, !tbaa !159
  br label %166

166:                                              ; preds = %163, %161, %157, %145, %165, %142
  %167 = phi ptr [ %143, %142 ], [ %146, %145 ], [ %131, %165 ], [ %150, %157 ], [ %150, %161 ], [ %150, %163 ]
  %168 = icmp ult ptr %167, %6
  br i1 %168, label %169, label %210, !prof !148

169:                                              ; preds = %166, %206
  %170 = phi ptr [ %207, %206 ], [ %167, %166 ]
  %171 = load i8, ptr %170, align 1, !tbaa !142
  %172 = zext i8 %171 to i64
  %173 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %172
  %174 = load i32, ptr %173, align 4, !tbaa !166
  %175 = and i32 %174, 17408
  %176 = icmp eq i32 %175, 17408
  br i1 %176, label %177, label %179, !prof !330

177:                                              ; preds = %169
  %178 = getelementptr inbounds i8, ptr %170, i64 1
  br label %206

179:                                              ; preds = %169
  switch i8 %171, label %210 [
    i8 35, label %180
    i8 47, label %190
  ], !prof !328

180:                                              ; preds = %179, %184
  %181 = phi ptr [ %182, %184 ], [ %170, %179 ]
  %182 = getelementptr inbounds i8, ptr %181, i64 1
  %183 = icmp ult ptr %182, %6
  br i1 %183, label %184, label %187

184:                                              ; preds = %180
  %185 = load i8, ptr %182, align 1, !tbaa !142
  %186 = icmp eq i8 %185, 10
  br i1 %186, label %187, label %180, !llvm.loop !331

187:                                              ; preds = %180, %184
  %188 = getelementptr inbounds i8, ptr %181, i64 2
  %189 = select i1 %183, ptr %188, ptr %182
  br label %206

190:                                              ; preds = %179
  %191 = load i32, ptr %8, align 8, !tbaa !139
  %192 = or i32 %191, 4
  store i32 %192, ptr %8, align 8, !tbaa !139
  %193 = getelementptr inbounds i8, ptr %170, i64 1
  %194 = icmp ult ptr %193, %6
  br i1 %194, label %195, label %210

195:                                              ; preds = %190
  %196 = load i8, ptr %193, align 1, !tbaa !142
  %197 = zext i8 %196 to i64
  %198 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %197
  %199 = load i32, ptr %198, align 4, !tbaa !166
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
  br i1 %208, label %169, label %210, !prof !332, !llvm.loop !333

209:                                              ; preds = %130
  store i32 0, ptr %13, align 8, !tbaa !157
  store i32 1, ptr %14, align 4, !tbaa !159
  br label %210

210:                                              ; preds = %179, %206, %209, %204, %190, %203, %166
  %211 = phi ptr [ %193, %204 ], [ %193, %190 ], [ %131, %209 ], [ %193, %203 ], [ %167, %166 ], [ %207, %206 ], [ %170, %179 ]
  store i32 %133, ptr %15, align 8, !tbaa !154
  store ptr %211, ptr %0, align 8, !tbaa !134
  br i1 %41, label %212, label %217

212:                                              ; preds = %48, %46, %42, %24, %35, %210
  %213 = phi ptr [ %211, %210 ], [ %25, %24 ], [ %37, %35 ], [ %40, %42 ], [ %40, %46 ], [ %40, %48 ]
  %214 = icmp ult ptr %213, %6
  br i1 %214, label %16, label %215, !prof !334, !llvm.loop !321

215:                                              ; preds = %212, %1
  %216 = phi ptr [ %4, %1 ], [ %213, %212 ]
  store ptr %216, ptr %0, align 8, !tbaa !134
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
define internal fastcc zeroext i8 @utf8_to_byte(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !prof !335 !PGOFuncName !336 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  %5 = load ptr, ptr %0, align 8, !tbaa !152
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
  %24 = load i64, ptr %4, align 8, !tbaa !129
  %25 = load ptr, ptr %0, align 8, !tbaa !152
  %26 = getelementptr inbounds i8, ptr %25, i64 %24
  store ptr %26, ptr %0, align 8, !tbaa !152
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
define internal fastcc noundef zeroext i1 @S_utf8_to_bytes(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 !prof !335 !PGOFuncName !337 {
  %6 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  %7 = load ptr, ptr %0, align 8, !tbaa !152
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
  %32 = load i8, ptr %22, align 1, !tbaa !142
  %33 = zext i8 %32 to i64
  %34 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !142
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
  store i8 %45, ptr %48, align 1, !tbaa !142
  %50 = add nsw i32 %20, -1
  %51 = icmp slt i32 %20, 2
  br i1 %51, label %52, label %18, !llvm.loop !338

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
  %60 = load ptr, ptr %0, align 8, !tbaa !152
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
  %71 = load i8, ptr %67, align 1, !tbaa !142
  %72 = zext i8 %71 to i64
  %73 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %72
  %74 = load i8, ptr %73, align 1, !tbaa !142
  %75 = zext i8 %74 to i64
  %76 = getelementptr inbounds i8, ptr %67, i64 %75
  %77 = icmp ult ptr %76, %41
  %78 = icmp ult ptr %76, %1
  %79 = and i1 %77, %78
  br i1 %79, label %66, label %80, !llvm.loop !339

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
  store ptr %94, ptr %0, align 8, !tbaa !152
  br label %95

95:                                               ; preds = %18, %93
  %96 = phi i1 [ true, %93 ], [ false, %18 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  ret i1 %96
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @S_reverse_copy(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i64 noundef %2) unnamed_addr #6 !prof !335 !PGOFuncName !340 {
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
  %13 = load i8, ptr %10, align 1, !tbaa !142
  %14 = getelementptr inbounds i8, ptr %9, i64 -1
  store i8 %13, ptr %14, align 1, !tbaa !142
  %15 = icmp eq i64 %11, 0
  br i1 %15, label %16, label %7, !llvm.loop !341

16:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef zeroext i16 @__bswap_16(i16 noundef zeroext %0) unnamed_addr #7 !prof !335 !PGOFuncName !342 {
  %2 = tail call i16 @llvm.bswap.i16(i16 %0)
  ret i16 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @__bswap_32(i32 noundef %0) unnamed_addr #7 !prof !335 !PGOFuncName !343 {
  %2 = tail call i32 @llvm.bswap.i32(i32 %0)
  ret i32 %2
}

; Function Attrs: optsize
declare ptr @Perl_newSVpv(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @Perl_newSVpvf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @S_mul128(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !335 !PGOFuncName !344 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !185
  %6 = and i32 %5, 2098176
  %7 = icmp eq i32 %6, 1024
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !193
  %10 = getelementptr inbounds %struct.xpv, ptr %9, i64 0, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !194
  store i64 %11, ptr %3, align 8, !tbaa !129
  %12 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !142
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
  %23 = load i32, ptr %22, align 4, !tbaa !185
  %24 = and i32 %23, 2098176
  %25 = icmp eq i32 %24, 1024
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load ptr, ptr %21, align 8, !tbaa !193
  %28 = getelementptr inbounds %struct.xpv, ptr %27, i64 0, i32 2
  %29 = load i64, ptr %28, align 8, !tbaa !194
  store i64 %29, ptr %3, align 8, !tbaa !129
  %30 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !142
  br label %34

32:                                               ; preds = %20
  %33 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %21, ptr noundef nonnull %3, i32 noundef 2) #16
  br label %34

34:                                               ; preds = %26, %32, %16
  %35 = phi ptr [ %17, %16 ], [ %31, %26 ], [ %33, %32 ]
  %36 = phi ptr [ %0, %16 ], [ %21, %26 ], [ %21, %32 ]
  %37 = load i64, ptr %3, align 8, !tbaa !129
  %38 = getelementptr inbounds i8, ptr %35, i64 %37
  br label %39

39:                                               ; preds = %39, %34
  %40 = phi ptr [ %38, %34 ], [ %41, %39 ]
  %41 = getelementptr inbounds i8, ptr %40, i64 -1
  %42 = load i8, ptr %41, align 1, !tbaa !142
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %39, label %44, !llvm.loop !345

44:                                               ; preds = %39
  %45 = icmp ugt ptr %41, %35
  br i1 %45, label %46, label %62

46:                                               ; preds = %44, %46
  %47 = phi i8 [ %60, %46 ], [ %1, %44 ]
  %48 = phi ptr [ %58, %46 ], [ %41, %44 ]
  %49 = load i8, ptr %48, align 1, !tbaa !142
  %50 = sext i8 %49 to i32
  %51 = shl nsw i32 %50, 7
  %52 = zext i8 %47 to i32
  %53 = or disjoint i32 %52, -6144
  %54 = add nsw i32 %53, %51
  %55 = urem i32 %54, 10
  %56 = trunc i32 %55 to i8
  %57 = or disjoint i8 %56, 48
  %58 = getelementptr inbounds i8, ptr %48, i64 -1
  store i8 %57, ptr %48, align 1, !tbaa !142
  %59 = udiv i32 %54, 10
  %60 = trunc i32 %59 to i8
  %61 = icmp ugt ptr %58, %35
  br i1 %61, label %46, label %62, !llvm.loop !346

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
define internal fastcc nonnull ptr @_action(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !335 !PGOFuncName !347 {
  %2 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !139
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, ptr @.str.30, ptr @.str.29
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @S_group_end(ptr noundef %0, ptr noundef %1, i8 noundef signext %2) unnamed_addr #0 !prof !335 !PGOFuncName !348 {
  %4 = ptrtoint ptr %1 to i64
  %5 = icmp ult ptr %0, %1
  br i1 %5, label %6, label %40

6:                                                ; preds = %3, %37
  %7 = phi ptr [ %38, %37 ], [ %0, %3 ]
  %8 = ptrtoint ptr %7 to i64
  %9 = getelementptr inbounds i8, ptr %7, i64 1
  %10 = load i8, ptr %7, align 1, !tbaa !142
  %11 = zext i8 %10 to i64
  %12 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !166
  %14 = and i32 %13, 17408
  %15 = icmp eq i32 %14, 17408
  br i1 %15, label %37, label %16, !llvm.loop !349

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
  br i1 %20, label %21, label %37, !llvm.loop !349

21:                                               ; preds = %19
  %22 = getelementptr i8, ptr %7, i64 %4
  %23 = sub i64 0, %8
  %24 = getelementptr i8, ptr %22, i64 %23
  br label %25

25:                                               ; preds = %21, %29
  %26 = phi ptr [ %30, %29 ], [ %9, %21 ]
  %27 = load i8, ptr %26, align 1, !tbaa !142
  %28 = icmp eq i8 %27, 10
  br i1 %28, label %37, label %29, !llvm.loop !349

29:                                               ; preds = %25
  %30 = getelementptr inbounds i8, ptr %26, i64 1
  %31 = icmp eq ptr %30, %24
  br i1 %31, label %37, label %25, !llvm.loop !350

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
define internal fastcc noundef nonnull ptr @S_get_num(ptr noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !prof !335 !PGOFuncName !351 {
  %3 = load i8, ptr %0, align 1, !tbaa !142
  %4 = sext i8 %3 to i32
  %5 = add nsw i32 %4, -48
  %6 = getelementptr inbounds i8, ptr %0, i64 1
  %7 = load i8, ptr %6, align 1, !tbaa !142
  %8 = zext i8 %7 to i64
  %9 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !166
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
  %19 = load i8, ptr %15, align 1, !tbaa !142
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi i8 [ %19, %18 ], [ %14, %13 ]
  %22 = mul nsw i32 %16, 10
  %23 = sext i8 %21 to i32
  %24 = add i32 %22, -48
  %25 = add i32 %24, %23
  %26 = getelementptr inbounds i8, ptr %15, i64 1
  %27 = load i8, ptr %26, align 1, !tbaa !142
  %28 = zext i8 %27 to i64
  %29 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !166
  %31 = and i32 %30, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %13, !llvm.loop !352

33:                                               ; preds = %20, %2
  %34 = phi i32 [ %5, %2 ], [ %25, %20 ]
  %35 = phi ptr [ %6, %2 ], [ %26, %20 ]
  store i32 %34, ptr %1, align 4, !tbaa !166
  ret ptr %35
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @S_measure_struct(ptr nocapture noundef %0) unnamed_addr #0 !prof !335 !PGOFuncName !353 {
  %2 = alloca { ptr, ptr }, align 8
  %3 = alloca { i32, i32, i32, i32, i32, i64, ptr }, align 8
  %4 = tail call fastcc zeroext i1 @S_next_symbol(ptr noundef %0) #15
  br i1 %4, label %5, label %69

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 6
  %7 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 5
  %8 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 4
  br label %9

9:                                                ; preds = %5, %63
  %10 = phi i32 [ 0, %5 ], [ %67, %63 ]
  %11 = load i32, ptr %6, align 8, !tbaa !157
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = tail call fastcc ptr @_action(ptr noundef nonnull %0) #15
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.33, ptr noundef nonnull %14) #16
  br label %15

15:                                               ; preds = %9, %13
  %16 = load i32, ptr %7, align 4, !tbaa !159
  %17 = load i32, ptr %8, align 8, !tbaa !154
  %18 = and i32 %17, -1537
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [512 x i8], ptr @packprops, i64 0, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !142
  %22 = and i8 %21, 63
  %23 = zext nneg i8 %22 to i32
  %24 = icmp eq i8 %22, 0
  br i1 %24, label %25, label %63

25:                                               ; preds = %15
  switch i32 %18, label %26 [
    i32 302, label %30
    i32 320, label %30
    i32 64, label %30
    i32 46, label %30
    i32 47, label %30
    i32 85, label %30
    i32 119, label %30
    i32 117, label %30
    i32 37, label %63
    i32 40, label %34
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

26:                                               ; preds = %25
  %27 = and i32 %17, 255
  %28 = tail call fastcc ptr @_action(ptr noundef nonnull %0) #15
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.34, i32 noundef %27, ptr noundef nonnull %28) #16
  %29 = load i32, ptr %8, align 8, !tbaa !154
  br label %30

30:                                               ; preds = %25, %25, %25, %25, %25, %25, %25, %25, %26
  %31 = phi i32 [ %17, %25 ], [ %17, %25 ], [ %17, %25 ], [ %17, %25 ], [ %17, %25 ], [ %17, %25 ], [ %17, %25 ], [ %17, %25 ], [ %29, %26 ]
  %32 = and i32 %31, 255
  %33 = tail call fastcc ptr @_action(ptr noundef nonnull %0) #15
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.35, i32 noundef %32, ptr noundef nonnull %33) #16
  br label %63

34:                                               ; preds = %25
  %35 = getelementptr inbounds i8, ptr %0, i64 16
  %36 = getelementptr inbounds i8, ptr %0, i64 24
  %37 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !165
  %38 = load ptr, ptr %35, align 8, !tbaa.struct !258
  %39 = load ptr, ptr %36, align 8, !tbaa.struct !259
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %8, i64 40, i1 false), !tbaa.struct !354
  store ptr %38, ptr %0, align 8, !tbaa !134
  store ptr %39, ptr %37, align 8, !tbaa !138
  %40 = tail call fastcc i32 @S_measure_struct(ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !165
  store ptr %38, ptr %35, align 8, !tbaa.struct !258
  store ptr %39, ptr %36, align 8, !tbaa.struct !259
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !354
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3)
  br label %63

41:                                               ; preds = %25
  %42 = tail call i32 @llvm.umax.i32(i32 %16, i32 1)
  %43 = srem i32 %10, %42
  br label %44

44:                                               ; preds = %25, %41
  %45 = phi i32 [ %16, %25 ], [ %43, %41 ]
  %46 = icmp slt i32 %10, %45
  br i1 %46, label %47, label %63

47:                                               ; preds = %44
  %48 = tail call fastcc ptr @_action(ptr noundef nonnull %0) #15
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.36, ptr noundef nonnull %48) #16
  br label %63

49:                                               ; preds = %25
  %50 = tail call i32 @llvm.umax.i32(i32 %16, i32 1)
  %51 = srem i32 %10, %50
  %52 = icmp eq i32 %51, 0
  %53 = sub nsw i32 %50, %51
  %54 = select i1 %52, i32 0, i32 %53
  br label %63

55:                                               ; preds = %25, %25, %25, %25
  br label %63

56:                                               ; preds = %25, %25
  %57 = add nsw i32 %16, 7
  %58 = sdiv i32 %57, 8
  br label %63

59:                                               ; preds = %25, %25
  %60 = add nsw i32 %16, 1
  %61 = sdiv i32 %60, 2
  br label %63

62:                                               ; preds = %25
  br label %63

63:                                               ; preds = %49, %34, %55, %56, %59, %62, %47, %44, %25, %30, %15
  %64 = phi i32 [ %23, %15 ], [ 8, %62 ], [ 1, %59 ], [ 1, %56 ], [ -1, %47 ], [ -1, %44 ], [ %40, %34 ], [ 0, %25 ], [ 0, %30 ], [ 1, %55 ], [ 1, %49 ]
  %65 = phi i32 [ %16, %15 ], [ 1, %62 ], [ %61, %59 ], [ %58, %56 ], [ %45, %47 ], [ %45, %44 ], [ %16, %34 ], [ %16, %25 ], [ %16, %30 ], [ %16, %55 ], [ %54, %49 ]
  %66 = mul nsw i32 %65, %64
  %67 = add nsw i32 %66, %10
  %68 = tail call fastcc zeroext i1 @S_next_symbol(ptr noundef nonnull %0) #15
  br i1 %68, label %9, label %69, !llvm.loop !355

69:                                               ; preds = %63, %1
  %70 = phi i32 [ 0, %1 ], [ %67, %63 ]
  ret i32 %70
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @Perl_sv_catsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_SvREFCNT_dec(ptr noundef %0) unnamed_addr #0 !prof !335 !PGOFuncName !356 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !357
  %6 = icmp ugt i32 %5, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = add i32 %5, -1
  store i32 %8, ptr %4, align 8, !tbaa !357
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
define internal fastcc void @marked_upgrade(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !335 !PGOFuncName !358 {
  %3 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !185
  %5 = and i32 %4, 536870912
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %171

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !142
  %10 = load ptr, ptr %0, align 8, !tbaa !193
  %11 = getelementptr inbounds %struct.xpv, ptr %10, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !194
  %13 = getelementptr inbounds i8, ptr %9, i64 %12
  %14 = icmp sgt i64 %12, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %7, %19
  %16 = phi ptr [ %20, %19 ], [ %9, %7 ]
  %17 = load i8, ptr %16, align 1, !tbaa !142
  %18 = icmp sgt i8 %17, -1
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = getelementptr inbounds i8, ptr %16, i64 1
  %21 = icmp ult ptr %20, %13
  br i1 %21, label %15, label %22, !llvm.loop !359

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
  %37 = load i32, ptr %36, align 4, !tbaa !169
  %38 = add nsw i32 %37, 2
  %39 = sext i32 %38 to i64
  %40 = shl nsw i64 %39, 3
  %41 = tail call ptr @Perl_safesysmalloc(i64 noundef %40) #16
  br label %42

42:                                               ; preds = %25, %42
  %43 = phi ptr [ %52, %42 ], [ %1, %25 ]
  %44 = getelementptr inbounds %struct.tempsym, ptr %43, i64 0, i32 9
  %45 = load i64, ptr %44, align 8, !tbaa !153
  %46 = getelementptr inbounds i8, ptr %9, i64 %45
  %47 = getelementptr inbounds %struct.tempsym, ptr %43, i64 0, i32 7
  %48 = load i32, ptr %47, align 4, !tbaa !169
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds ptr, ptr %41, i64 %49
  store ptr %46, ptr %50, align 8, !tbaa !152
  %51 = getelementptr inbounds %struct.tempsym, ptr %43, i64 0, i32 10
  %52 = load ptr, ptr %51, align 8, !tbaa !168
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %42, !llvm.loop !360

54:                                               ; preds = %42
  %55 = getelementptr inbounds i8, ptr %13, i64 1
  %56 = load i32, ptr %36, align 4, !tbaa !169
  %57 = sext i32 %56 to i64
  %58 = getelementptr ptr, ptr %41, i64 %57
  %59 = getelementptr ptr, ptr %58, i64 1
  store ptr %55, ptr %59, align 8, !tbaa !152
  %60 = load ptr, ptr %41, align 8, !tbaa !152
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
  store ptr %70, ptr %67, align 8, !tbaa !152
  %71 = getelementptr inbounds ptr, ptr %67, i64 1
  %72 = load ptr, ptr %71, align 8, !tbaa !152
  %73 = icmp ult ptr %72, %23
  br i1 %73, label %65, label %62, !llvm.loop !361

74:                                               ; preds = %62, %85
  %75 = phi ptr [ %89, %85 ], [ %35, %62 ]
  %76 = phi ptr [ %86, %85 ], [ %63, %62 ]
  %77 = phi ptr [ %90, %85 ], [ %23, %62 ]
  %78 = load ptr, ptr %76, align 8, !tbaa !152
  %79 = icmp eq ptr %78, %77
  br i1 %79, label %80, label %85

80:                                               ; preds = %74, %80
  %81 = phi ptr [ %82, %80 ], [ %76, %74 ]
  %82 = getelementptr inbounds ptr, ptr %81, i64 1
  store ptr %75, ptr %81, align 8, !tbaa !152
  %83 = load ptr, ptr %82, align 8, !tbaa !152
  %84 = icmp eq ptr %83, %77
  br i1 %84, label %80, label %85, !llvm.loop !362

85:                                               ; preds = %80, %74
  %86 = phi ptr [ %76, %74 ], [ %82, %80 ]
  %87 = load i8, ptr %77, align 1, !tbaa !142
  %88 = zext i8 %87 to i64
  %89 = tail call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %75, i64 noundef %88, i64 noundef 0) #16
  %90 = getelementptr inbounds i8, ptr %77, i64 1
  %91 = icmp ult ptr %90, %13
  br i1 %91, label %74, label %92, !llvm.loop !363

92:                                               ; preds = %85, %62
  %93 = phi ptr [ %23, %62 ], [ %90, %85 ]
  %94 = phi ptr [ %63, %62 ], [ %86, %85 ]
  %95 = phi ptr [ %35, %62 ], [ %89, %85 ]
  store i8 0, ptr %95, align 1, !tbaa !142
  %96 = load ptr, ptr %94, align 8, !tbaa !152
  %97 = icmp eq ptr %96, %93
  br i1 %97, label %98, label %103

98:                                               ; preds = %92, %98
  %99 = phi ptr [ %100, %98 ], [ %94, %92 ]
  %100 = getelementptr inbounds ptr, ptr %99, i64 1
  store ptr %95, ptr %99, align 8, !tbaa !152
  %101 = load ptr, ptr %100, align 8, !tbaa !152
  %102 = icmp eq ptr %101, %93
  br i1 %102, label %98, label %103, !llvm.loop !364

103:                                              ; preds = %98, %92
  %104 = phi ptr [ %94, %92 ], [ %100, %98 ]
  %105 = load i32, ptr %36, align 4, !tbaa !169
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds ptr, ptr %41, i64 %106
  %108 = getelementptr inbounds ptr, ptr %107, i64 1
  %109 = icmp eq ptr %104, %108
  br i1 %109, label %112, label %110

110:                                              ; preds = %103
  tail call void @Perl_safesysfree(ptr noundef nonnull %41) #16
  tail call void @Perl_safesysfree(ptr noundef %34) #16
  %111 = load i32, ptr %36, align 4, !tbaa !169
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.60, ptr noundef nonnull %104, ptr noundef nonnull %41, i32 noundef %111) #16
  br label %112

112:                                              ; preds = %103, %110
  %113 = ptrtoint ptr %34 to i64
  br label %114

114:                                              ; preds = %112, %114
  %115 = phi ptr [ %1, %112 ], [ %125, %114 ]
  %116 = getelementptr inbounds %struct.tempsym, ptr %115, i64 0, i32 7
  %117 = load i32, ptr %116, align 4, !tbaa !169
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds ptr, ptr %41, i64 %118
  %120 = load ptr, ptr %119, align 8, !tbaa !152
  %121 = ptrtoint ptr %120 to i64
  %122 = sub i64 %121, %113
  %123 = getelementptr inbounds %struct.tempsym, ptr %115, i64 0, i32 9
  store i64 %122, ptr %123, align 8, !tbaa !153
  %124 = getelementptr inbounds %struct.tempsym, ptr %115, i64 0, i32 10
  %125 = load ptr, ptr %124, align 8, !tbaa !168
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %114, !llvm.loop !365

127:                                              ; preds = %114
  tail call void @Perl_safesysfree(ptr noundef nonnull %41) #16
  %128 = load i32, ptr %3, align 4, !tbaa !185
  %129 = and i32 %128, 33554432
  %130 = icmp eq i32 %129, 0
  %131 = load ptr, ptr %0, align 8, !tbaa !193
  br i1 %130, label %152, label %132

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.xpviv, ptr %131, i64 0, i32 4
  %134 = load i64, ptr %133, align 8, !tbaa !142
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %147, label %136

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.xpv, ptr %131, i64 0, i32 3
  %138 = load i64, ptr %137, align 8, !tbaa !142
  %139 = add i64 %138, %134
  store i64 %139, ptr %137, align 8, !tbaa !142
  %140 = load ptr, ptr %0, align 8, !tbaa !193
  %141 = getelementptr inbounds %struct.xpviv, ptr %140, i64 0, i32 4
  %142 = load i64, ptr %141, align 8, !tbaa !142
  %143 = sub i64 0, %142
  %144 = getelementptr inbounds i8, ptr %9, i64 %143
  store i64 0, ptr %141, align 8, !tbaa !142
  %145 = load i32, ptr %3, align 4, !tbaa !185
  %146 = load ptr, ptr %0, align 8, !tbaa !193
  br label %147

147:                                              ; preds = %136, %132
  %148 = phi ptr [ %146, %136 ], [ %131, %132 ]
  %149 = phi i32 [ %145, %136 ], [ %128, %132 ]
  %150 = phi ptr [ %144, %136 ], [ %9, %132 ]
  %151 = and i32 %149, -33554433
  store i32 %151, ptr %3, align 4, !tbaa !185
  br label %152

152:                                              ; preds = %147, %127
  %153 = phi ptr [ %148, %147 ], [ %131, %127 ]
  %154 = phi ptr [ %150, %147 ], [ %9, %127 ]
  %155 = getelementptr inbounds %struct.xpv, ptr %153, i64 0, i32 3
  %156 = load i64, ptr %155, align 8, !tbaa !142
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %160, label %158

158:                                              ; preds = %152
  tail call void @Perl_safesysfree(ptr noundef %154) #16
  %159 = load ptr, ptr %0, align 8, !tbaa !193
  br label %160

160:                                              ; preds = %152, %158
  %161 = phi ptr [ %153, %152 ], [ %159, %158 ]
  store ptr %34, ptr %8, align 8, !tbaa !142
  %162 = ptrtoint ptr %95 to i64
  %163 = ptrtoint ptr %34 to i64
  %164 = sub i64 %162, %163
  %165 = getelementptr inbounds %struct.xpv, ptr %161, i64 0, i32 2
  store i64 %164, ptr %165, align 8, !tbaa !194
  %166 = getelementptr inbounds %struct.xpv, ptr %161, i64 0, i32 3
  store i64 %33, ptr %166, align 8, !tbaa !142
  %167 = load i32, ptr %3, align 4, !tbaa !185
  br label %168

168:                                              ; preds = %22, %160
  %169 = phi i32 [ %167, %160 ], [ %4, %22 ]
  %170 = or i32 %169, 536870912
  store i32 %170, ptr %3, align 4, !tbaa !185
  br label %171

171:                                              ; preds = %168, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @S_sv_exp_grow(ptr noundef %0, i64 noundef %1) unnamed_addr #0 !prof !335 !PGOFuncName !366 {
  %3 = load ptr, ptr %0, align 8, !tbaa !193
  %4 = getelementptr inbounds %struct.xpv, ptr %3, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !194
  %6 = getelementptr inbounds %struct.xpv, ptr %3, i64 0, i32 3
  %7 = load i64, ptr %6, align 8, !tbaa !142
  %8 = sub i64 %7, %5
  %9 = icmp ugt i64 %8, %1
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !142
  br label %28

13:                                               ; preds = %2
  %14 = tail call i64 @llvm.umax.i64(i64 %7, i64 %1)
  %15 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !185
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
  %27 = load ptr, ptr %26, align 8, !tbaa !142
  br label %28

28:                                               ; preds = %23, %25, %10
  %29 = phi ptr [ %12, %10 ], [ %24, %23 ], [ %27, %25 ]
  ret ptr %29
}

; Function Attrs: optsize
declare i64 @Perl_sv_len_utf8(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @S_sv_check_infnan(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !367 !PGOFuncName !368 {
  %3 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !185
  %5 = and i32 %4, 2097152
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7, !prof !253

7:                                                ; preds = %2
  %8 = tail call i32 @Perl_mg_get(ptr noundef nonnull %0) #16
  %9 = load i32, ptr %3, align 4, !tbaa !185
  br label %10

10:                                               ; preds = %2, %7
  %11 = phi i32 [ %4, %2 ], [ %9, %7 ]
  %12 = and i32 %11, 2048
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %30, label %14, !prof !253

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !142
  %17 = getelementptr inbounds %struct.sv, ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !185
  %19 = and i32 %18, 1048576
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %14
  %22 = load ptr, ptr %16, align 8, !tbaa !193
  %23 = load ptr, ptr %22, align 8, !tbaa !369
  %24 = getelementptr inbounds %struct.hv, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !371
  %26 = and i32 %25, 268435456
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %21
  %29 = tail call ptr @Perl_sv_2num(ptr noundef nonnull %0) #16
  br label %30

30:                                               ; preds = %10, %14, %21, %28
  %31 = phi ptr [ %29, %28 ], [ %0, %21 ], [ %0, %14 ], [ %0, %10 ]
  %32 = tail call zeroext i1 @Perl_isinfnansv(ptr noundef %31) #16
  br i1 %32, label %33, label %50, !prof !251

33:                                               ; preds = %30
  %34 = and i32 %1, 255
  %35 = getelementptr inbounds %struct.sv, ptr %31, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !185
  %37 = and i32 %36, 512
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %33
  %40 = load ptr, ptr %31, align 8, !tbaa !193
  %41 = getelementptr inbounds %struct.xpvnv, ptr %40, i64 0, i32 5
  %42 = load double, ptr %41, align 8, !tbaa !142
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
define internal fastcc ptr @S_my_bytes_to_utf8(ptr noundef readonly %0, i64 noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #6 !prof !335 !PGOFuncName !373 {
  %5 = alloca ptr, align 8
  store ptr %2, ptr %5, align 8, !tbaa !152
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
  %13 = load i8, ptr %12, align 1, !tbaa !142
  call fastcc void @S_append_utf8_from_native_byte(i8 noundef zeroext %13, ptr noundef nonnull %5) #15
  %14 = icmp ugt ptr %12, %0
  br i1 %14, label %10, label %23, !llvm.loop !374

15:                                               ; preds = %4
  %16 = getelementptr inbounds i8, ptr %0, i64 %1
  %17 = icmp sgt i64 %1, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %15, %18
  %19 = phi ptr [ %21, %18 ], [ %0, %15 ]
  %20 = load i8, ptr %19, align 1, !tbaa !142
  call fastcc void @S_append_utf8_from_native_byte(i8 noundef zeroext %20, ptr noundef nonnull %5) #15
  %21 = getelementptr inbounds i8, ptr %19, i64 1
  %22 = icmp ult ptr %21, %16
  br i1 %22, label %18, label %23, !llvm.loop !375

23:                                               ; preds = %18, %10, %15, %6
  %24 = load ptr, ptr %5, align 8, !tbaa !152
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
define internal fastcc ptr @S_is_an_int(ptr noundef %0, i64 noundef %1) unnamed_addr #0 !prof !335 !PGOFuncName !376 {
  %3 = tail call ptr @Perl_newSVpvn(ptr noundef %0, i64 noundef %1) #16
  %4 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !185
  %6 = and i32 %5, 2098176
  %7 = icmp eq i32 %6, 1024
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !142
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
  %20 = load i8, ptr %16, align 1, !tbaa !142
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
  store i8 %20, ptr %17, align 1, !tbaa !142
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
  br label %15, !llvm.loop !377

37:                                               ; preds = %15
  %38 = getelementptr inbounds i8, ptr %17, i64 1
  store i8 0, ptr %17, align 1, !tbaa !142
  %39 = ptrtoint ptr %38 to i64
  %40 = ptrtoint ptr %14 to i64
  %41 = sub i64 %39, %40
  %42 = load ptr, ptr %3, align 8, !tbaa !193
  %43 = getelementptr inbounds %struct.xpv, ptr %42, i64 0, i32 2
  store i64 %41, ptr %43, align 8, !tbaa !194
  br label %44

44:                                               ; preds = %37, %31, %24
  %45 = phi ptr [ null, %31 ], [ null, %24 ], [ %3, %37 ]
  ret ptr %45
}

; Function Attrs: optsize
declare ptr @Perl_safesysmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @S_div128(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !prof !335 !PGOFuncName !378 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !185
  %6 = and i32 %5, 2098176
  %7 = icmp eq i32 %6, 1024
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !193
  %10 = getelementptr inbounds %struct.xpv, ptr %9, i64 0, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !194
  store i64 %11, ptr %3, align 8, !tbaa !129
  %12 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !142
  br label %16

14:                                               ; preds = %2
  %15 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 2) #16
  br label %16

16:                                               ; preds = %14, %8
  %17 = phi ptr [ %13, %8 ], [ %15, %14 ]
  store i8 1, ptr %1, align 1, !tbaa !267
  %18 = load i8, ptr %17, align 1, !tbaa !142
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
  store i8 0, ptr %1, align 1, !tbaa !267
  br label %32

32:                                               ; preds = %31, %20
  %33 = trunc i32 %28 to i8
  %34 = add i8 %33, 48
  %35 = getelementptr inbounds i8, ptr %22, i64 1
  store i8 %34, ptr %22, align 1, !tbaa !142
  %36 = load i8, ptr %35, align 1, !tbaa !142
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %20, !llvm.loop !379

38:                                               ; preds = %32, %16
  %39 = phi i32 [ 0, %16 ], [ %29, %32 ]
  %40 = phi ptr [ %17, %16 ], [ %35, %32 ]
  %41 = getelementptr inbounds i8, ptr %40, i64 1
  store i8 0, ptr %40, align 1, !tbaa !142
  %42 = ptrtoint ptr %41 to i64
  %43 = ptrtoint ptr %17 to i64
  %44 = sub i64 %42, %43
  %45 = load ptr, ptr %0, align 8, !tbaa !193
  %46 = getelementptr inbounds %struct.xpv, ptr %45, i64 0, i32 2
  store i64 %44, ptr %46, align 8, !tbaa !194
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
define internal fastcc nonnull ptr @doencodes(ptr noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #6 !prof !335 !PGOFuncName !380 {
  %4 = sext i32 %2 to i64
  %5 = getelementptr inbounds [65 x i8], ptr @PL_uuemap, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !142
  %7 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %6, ptr %0, align 1, !tbaa !142
  %8 = icmp sgt i32 %2, 2
  br i1 %8, label %9, label %52

9:                                                ; preds = %3, %9
  %10 = phi ptr [ %48, %9 ], [ %7, %3 ]
  %11 = phi i32 [ %50, %9 ], [ %2, %3 ]
  %12 = phi ptr [ %49, %9 ], [ %1, %3 ]
  %13 = load i8, ptr %12, align 1, !tbaa !142
  %14 = lshr i8 %13, 2
  %15 = zext nneg i8 %14 to i64
  %16 = getelementptr inbounds [65 x i8], ptr @PL_uuemap, i64 0, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !142
  %18 = getelementptr inbounds i8, ptr %10, i64 1
  store i8 %17, ptr %10, align 1, !tbaa !142
  %19 = load i8, ptr %12, align 1, !tbaa !142
  %20 = zext i8 %19 to i64
  %21 = shl nuw nsw i64 %20, 4
  %22 = and i64 %21, 48
  %23 = getelementptr inbounds i8, ptr %12, i64 1
  %24 = load i8, ptr %23, align 1, !tbaa !142
  %25 = lshr i8 %24, 4
  %26 = zext nneg i8 %25 to i64
  %27 = or disjoint i64 %22, %26
  %28 = getelementptr inbounds [65 x i8], ptr @PL_uuemap, i64 0, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !142
  %30 = getelementptr inbounds i8, ptr %10, i64 2
  store i8 %29, ptr %18, align 1, !tbaa !142
  %31 = load i8, ptr %23, align 1, !tbaa !142
  %32 = zext i8 %31 to i64
  %33 = shl nuw nsw i64 %32, 2
  %34 = and i64 %33, 60
  %35 = getelementptr inbounds i8, ptr %12, i64 2
  %36 = load i8, ptr %35, align 1, !tbaa !142
  %37 = lshr i8 %36, 6
  %38 = zext nneg i8 %37 to i64
  %39 = or disjoint i64 %34, %38
  %40 = getelementptr inbounds [65 x i8], ptr @PL_uuemap, i64 0, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !142
  %42 = getelementptr inbounds i8, ptr %10, i64 3
  store i8 %41, ptr %30, align 1, !tbaa !142
  %43 = load i8, ptr %35, align 1, !tbaa !142
  %44 = and i8 %43, 63
  %45 = zext nneg i8 %44 to i64
  %46 = getelementptr inbounds [65 x i8], ptr @PL_uuemap, i64 0, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !142
  %48 = getelementptr inbounds i8, ptr %10, i64 4
  store i8 %47, ptr %42, align 1, !tbaa !142
  %49 = getelementptr inbounds i8, ptr %12, i64 3
  %50 = add nsw i32 %11, -3
  %51 = icmp ugt i32 %11, 5
  br i1 %51, label %9, label %52, !llvm.loop !381

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
  %61 = load i8, ptr %60, align 1, !tbaa !142
  %62 = zext i8 %61 to i32
  br label %63

63:                                               ; preds = %57, %59
  %64 = phi i32 [ %62, %59 ], [ 0, %57 ]
  %65 = load i8, ptr %53, align 1, !tbaa !142
  %66 = lshr i8 %65, 2
  %67 = zext nneg i8 %66 to i64
  %68 = getelementptr inbounds [65 x i8], ptr @PL_uuemap, i64 0, i64 %67
  %69 = load i8, ptr %68, align 1, !tbaa !142
  %70 = getelementptr inbounds i8, ptr %55, i64 1
  store i8 %69, ptr %55, align 1, !tbaa !142
  %71 = load i8, ptr %53, align 1, !tbaa !142
  %72 = zext i8 %71 to i32
  %73 = shl nuw nsw i32 %72, 4
  %74 = and i32 %73, 48
  %75 = lshr i32 %64, 4
  %76 = or disjoint i32 %74, %75
  %77 = zext nneg i32 %76 to i64
  %78 = getelementptr inbounds [65 x i8], ptr @PL_uuemap, i64 0, i64 %77
  %79 = load i8, ptr %78, align 1, !tbaa !142
  %80 = getelementptr inbounds i8, ptr %55, i64 2
  store i8 %79, ptr %70, align 1, !tbaa !142
  %81 = shl nuw nsw i32 %64, 2
  %82 = and i32 %81, 60
  %83 = zext nneg i32 %82 to i64
  %84 = getelementptr inbounds [65 x i8], ptr @PL_uuemap, i64 0, i64 %83
  %85 = load i8, ptr %84, align 4, !tbaa !142
  %86 = getelementptr inbounds i8, ptr %55, i64 3
  store i8 %85, ptr %80, align 1, !tbaa !142
  %87 = load i8, ptr @PL_uuemap, align 16, !tbaa !142
  %88 = getelementptr inbounds i8, ptr %55, i64 4
  store i8 %87, ptr %86, align 1, !tbaa !142
  br label %89

89:                                               ; preds = %63, %52
  %90 = phi ptr [ %88, %63 ], [ %55, %52 ]
  %91 = getelementptr inbounds i8, ptr %90, i64 1
  store i8 10, ptr %90, align 1, !tbaa !142
  ret ptr %91
}

; Function Attrs: optsize
declare ptr @Perl_sv_grow(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @Perl_sv_2num(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i1 @Perl_isinfnansv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @S_append_utf8_from_native_byte(i8 noundef zeroext %0, ptr nocapture noundef %1) unnamed_addr #12 !prof !335 !PGOFuncName !382 {
  %3 = icmp sgt i8 %0, -1
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !tbaa !152
  %6 = getelementptr inbounds i8, ptr %5, i64 1
  store ptr %6, ptr %1, align 8, !tbaa !152
  store i8 %0, ptr %5, align 1, !tbaa !142
  br label %15

7:                                                ; preds = %2
  %8 = lshr i8 %0, 6
  %9 = or disjoint i8 %8, -64
  %10 = load ptr, ptr %1, align 8, !tbaa !152
  %11 = getelementptr inbounds i8, ptr %10, i64 1
  store ptr %11, ptr %1, align 8, !tbaa !152
  store i8 %9, ptr %10, align 1, !tbaa !142
  %12 = and i8 %0, -65
  %13 = load ptr, ptr %1, align 8, !tbaa !152
  %14 = getelementptr inbounds i8, ptr %13, i64 1
  store ptr %14, ptr %1, align 8, !tbaa !152
  store i8 %12, ptr %13, align 1, !tbaa !142
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!125}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 43491971510}
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
!23 = !{i32 950000, i64 21523442, i32 170}
!24 = !{i32 990000, i64 1957094, i32 384}
!25 = !{i32 999000, i64 104162, i32 1106}
!26 = !{i32 999900, i64 11423, i32 2014}
!27 = !{i32 999990, i64 757, i32 3020}
!28 = !{i32 999999, i64 63, i32 4652}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124}
!35 = !{ptr @Perl_unpackstring, ptr @S_need_utf8, i64 266260}
!36 = !{ptr @Perl_unpackstring, ptr @Perl_bytes_to_utf8, i64 1}
!37 = !{ptr @Perl_unpackstring, ptr @Perl_save_pushptr, i64 1}
!38 = !{ptr @Perl_unpackstring, ptr @S_first_symbol, i64 266261}
!39 = !{ptr @Perl_unpackstring, ptr @S_unpack_rec, i64 266261}
!40 = !{ptr @S_need_utf8, ptr @memchr, i64 1}
!41 = !{ptr @S_first_symbol, ptr @memchr, i64 1}
!42 = !{ptr @S_unpack_rec, ptr @S_next_symbol, i64 532533}
!43 = !{ptr @S_unpack_rec, ptr @Perl_stack_grow, i64 4}
!44 = !{ptr @S_unpack_rec, ptr @Perl_tmps_grow_p, i64 1}
!45 = !{ptr @S_unpack_rec, ptr @Perl_croak, i64 119}
!46 = !{ptr @S_unpack_rec, ptr @S_unpack_rec, i64 16}
!47 = !{ptr @S_unpack_rec, ptr @Perl_newSVuv, i64 9}
!48 = !{ptr @S_unpack_rec, ptr @Perl_newSViv, i64 8}
!49 = !{ptr @S_unpack_rec, ptr @Perl_sv_2mortal, i64 58}
!50 = !{ptr @S_unpack_rec, ptr @Perl_newSVpvn, i64 15}
!51 = !{ptr @S_unpack_rec, ptr @Perl_sv_utf8_downgrade, i64 1}
!52 = !{ptr @S_unpack_rec, ptr @utf8_to_byte, i64 48}
!53 = !{ptr @S_unpack_rec, ptr @Perl_newSV, i64 2}
!54 = !{ptr @S_unpack_rec, ptr @Perl_ckwarn, i64 23}
!55 = !{ptr @S_unpack_rec, ptr @Perl_utf8n_to_uvchr, i64 23}
!56 = !{ptr @S_unpack_rec, ptr @Perl_sv_newmortal, i64 266411}
!57 = !{ptr @S_unpack_rec, ptr @Perl_sv_setiv, i64 266287}
!58 = !{ptr @S_unpack_rec, ptr @Perl_sv_setuv, i64 103}
!59 = !{ptr @S_unpack_rec, ptr @S_utf8_to_bytes, i64 285}
!60 = !{ptr @S_unpack_rec, ptr @S_reverse_copy, i64 140}
!61 = !{ptr @S_unpack_rec, ptr @__bswap_16, i64 60}
!62 = !{ptr @S_unpack_rec, ptr @__bswap_32, i64 50}
!63 = !{ptr @S_unpack_rec, ptr @Perl_newSVpv, i64 20}
!64 = !{ptr @S_unpack_rec, ptr @Perl_newSVpvf, i64 3}
!65 = !{ptr @S_unpack_rec, ptr @S_mul128, i64 47}
!66 = !{ptr @S_unpack_rec, ptr @Perl_sv_2pv_flags, i64 1}
!67 = !{ptr @S_unpack_rec, ptr @Perl_sv_chop, i64 3}
!68 = !{ptr @S_unpack_rec, ptr @Perl_sv_setnv, i64 21}
!69 = !{ptr @S_unpack_rec, ptr @Perl_sv_catpvn_flags, i64 30}
!70 = !{ptr @S_unpack_rec, ptr @memchr, i64 2}
!71 = !{ptr @S_unpack_rec, ptr @modf, i64 1}
!72 = !{ptr @S_unpack_rec, ptr @Perl_newSVnv, i64 1}
!73 = !{ptr @Perl_pp_unpack, ptr @Perl_block_gimme, i64 1}
!74 = !{ptr @Perl_pp_unpack, ptr @Perl_sv_2pv_flags, i64 266259}
!75 = !{ptr @Perl_pp_unpack, ptr @Perl_unpackstring, i64 266261}
!76 = !{ptr @Perl_packlist, ptr @Perl_sv_pvn_force_flags, i64 1}
!77 = !{ptr @Perl_packlist, ptr @S_pack_rec, i64 19625}
!78 = !{ptr @S_pack_rec, ptr @S_next_symbol, i64 58872}
!79 = !{ptr @S_pack_rec, ptr @Perl_ckwarn, i64 19625}
!80 = !{ptr @S_pack_rec, ptr @marked_upgrade, i64 3}
!81 = !{ptr @S_pack_rec, ptr @memchr, i64 2}
!82 = !{ptr @S_pack_rec, ptr @S_sv_exp_grow, i64 25}
!83 = !{ptr @S_pack_rec, ptr @Perl_newSViv, i64 1}
!84 = !{ptr @S_pack_rec, ptr @Perl_sv_2mortal, i64 1}
!85 = !{ptr @S_pack_rec, ptr @Perl_croak, i64 500}
!86 = !{ptr @S_pack_rec, ptr @S_sv_check_infnan, i64 39705}
!87 = !{ptr @S_pack_rec, ptr @Perl_sv_2iv_flags, i64 120}
!88 = !{ptr @S_pack_rec, ptr @S_pack_rec, i64 16}
!89 = !{ptr @S_pack_rec, ptr @Perl_sv_2pv_flags, i64 13}
!90 = !{ptr @S_pack_rec, ptr @Perl_uvoffuni_to_utf8_flags, i64 46}
!91 = !{ptr @S_pack_rec, ptr @Perl_sv_magic, i64 1}
!92 = !{ptr @S_pack_rec, ptr @Perl_utf8n_to_uvchr, i64 20}
!93 = !{ptr @S_pack_rec, ptr @S_my_bytes_to_utf8, i64 327}
!94 = !{ptr @S_pack_rec, ptr @Perl_ck_warner, i64 31}
!95 = !{ptr @S_pack_rec, ptr @Perl_sv_2uv_flags, i64 132}
!96 = !{ptr @S_pack_rec, ptr @Perl_sv_2nv_flags, i64 50}
!97 = !{ptr @S_pack_rec, ptr @S_reverse_copy, i64 95}
!98 = !{ptr @S_pack_rec, ptr @__bswap_16, i64 40}
!99 = !{ptr @S_pack_rec, ptr @S_is_an_int, i64 5}
!100 = !{ptr @S_pack_rec, ptr @Perl_safesysmalloc, i64 5}
!101 = !{ptr @S_pack_rec, ptr @S_div128, i64 160}
!102 = !{ptr @S_pack_rec, ptr @Perl_safesysfree, i64 5}
!103 = !{ptr @S_pack_rec, ptr @S_SvREFCNT_dec, i64 5}
!104 = !{ptr @S_pack_rec, ptr @__bswap_32, i64 40}
!105 = !{ptr @S_pack_rec, ptr @Perl_mg_get, i64 26}
!106 = !{ptr @S_pack_rec, ptr @Perl_sv_pvn_force_flags, i64 10}
!107 = !{ptr @S_pack_rec, ptr @S_utf8_to_bytes, i64 10}
!108 = !{ptr @S_pack_rec, ptr @doencodes, i64 20}
!109 = !{ptr @Perl_pp_pack, ptr @Perl_sv_2pv_flags, i64 1}
!110 = !{ptr @Perl_pp_pack, ptr @Perl_sv_setpvn, i64 19625}
!111 = !{ptr @Perl_pp_pack, ptr @Perl_packlist, i64 19625}
!112 = !{ptr @Perl_pp_pack, ptr @Perl_mg_set, i64 1}
!113 = !{ptr @S_next_symbol, ptr @Perl_ckwarn, i64 1}
!114 = !{ptr @S_next_symbol, ptr @_action, i64 17}
!115 = !{ptr @S_next_symbol, ptr @Perl_warner, i64 1}
!116 = !{ptr @S_next_symbol, ptr @Perl_croak, i64 13}
!117 = !{ptr @S_next_symbol, ptr @S_group_end, i64 4}
!118 = !{ptr @S_next_symbol, ptr @memchr, i64 2}
!119 = !{ptr @S_next_symbol, ptr @strchr, i64 11}
!120 = !{ptr @S_next_symbol, ptr @Perl_ck_warner, i64 3}
!121 = !{ptr @S_next_symbol, ptr @S_get_num, i64 3}
!122 = !{ptr @S_next_symbol, ptr @S_measure_struct, i64 1}
!123 = !{ptr @S_sv_check_infnan, ptr @Perl_mg_get, i64 1}
!124 = !{ptr @S_sv_check_infnan, ptr @Perl_isinfnansv, i64 39248}
!125 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!126 = !{!"function_entry_count", i64 266261}
!127 = !{!"branch_weights", i32 266262, i32 1}
!128 = !{!"branch_weights", i32 1, i32 266262}
!129 = !{!130, !130, i64 0}
!130 = !{!"long", !131, i64 0}
!131 = !{!"omnipotent char", !132, i64 0}
!132 = !{!"Simple C/C++ TBAA"}
!133 = !{!"branch_weights", i32 -2079476081, i32 8320}
!134 = !{!135, !136, i64 0}
!135 = !{!"tempsym", !136, i64 0, !136, i64 8, !136, i64 16, !136, i64 24, !137, i64 32, !137, i64 36, !137, i64 40, !137, i64 44, !137, i64 48, !130, i64 56, !136, i64 64}
!136 = !{!"any pointer", !131, i64 0}
!137 = !{!"int", !131, i64 0}
!138 = !{!135, !136, i64 8}
!139 = !{!135, !137, i64 48}
!140 = !{!"pp_pack.c:S_need_utf8"}
!141 = !{!"branch_weights", i32 266261, i32 1}
!142 = !{!131, !131, i64 0}
!143 = !{!"branch_weights", i32 -2079317984, i32 8321, i32 8321}
!144 = !{!"branch_weights", i32 11, i32 266261}
!145 = distinct !{!145, !146}
!146 = !{!"llvm.loop.mustprogress"}
!147 = !{!"pp_pack.c:S_first_symbol"}
!148 = !{!"branch_weights", i32 127, i32 1}
!149 = !{!"branch_weights", i32 34081409, i32 34081663}
!150 = distinct !{!150, !146}
!151 = !{!"pp_pack.c:S_unpack_rec"}
!152 = !{!136, !136, i64 0}
!153 = !{!135, !130, i64 56}
!154 = !{!135, !137, i64 32}
!155 = !{!"branch_weights", i32 248480, i32 17793}
!156 = !{!"branch_weights", i32 1, i32 17793}
!157 = !{!135, !137, i64 40}
!158 = !{!"branch_weights", i32 1, i32 266272}
!159 = !{!135, !137, i64 36}
!160 = !{!"branch_weights", i32 13, i32 266260}
!161 = !{!"branch_weights", i32 1, i32 266260}
!162 = !{!"branch_weights", i32 266260, i32 1}
!163 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 13, i32 1, i32 1, i32 1, i32 1, i32 266260, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!164 = distinct !{!164, !146}
!165 = !{i64 0, i64 8, !152, i64 8, i64 8, !152, i64 16, i64 8, !152, i64 24, i64 8, !152, i64 32, i64 4, !166, i64 36, i64 4, !166, i64 40, i64 4, !166, i64 44, i64 4, !166, i64 48, i64 4, !166, i64 56, i64 8, !129, i64 64, i64 8, !152}
!166 = !{!137, !137, i64 0}
!167 = !{!135, !136, i64 24}
!168 = !{!135, !136, i64 64}
!169 = !{!135, !137, i64 44}
!170 = !{!135, !136, i64 16}
!171 = distinct !{!171, !146}
!172 = distinct !{!172, !146}
!173 = distinct !{!173, !146}
!174 = distinct !{!174, !146}
!175 = distinct !{!175, !146}
!176 = distinct !{!176, !146}
!177 = distinct !{!177, !146}
!178 = !{!"branch_weights", i32 13, i32 1}
!179 = distinct !{!179, !146}
!180 = !{!"branch_weights", i32 1, i32 13}
!181 = !{!"branch_weights", i32 169, i32 14, i32 13}
!182 = distinct !{!182, !146}
!183 = distinct !{!183, !146}
!184 = distinct !{!184, !146}
!185 = !{!186, !137, i64 12}
!186 = !{!"sv", !136, i64 0, !137, i64 8, !137, i64 12, !131, i64 16}
!187 = distinct !{!187, !146}
!188 = distinct !{!188, !146}
!189 = distinct !{!189, !146}
!190 = distinct !{!190, !146}
!191 = distinct !{!191, !146}
!192 = distinct !{!192, !146}
!193 = !{!186, !136, i64 0}
!194 = !{!195, !130, i64 16}
!195 = !{!"xpv", !136, i64 0, !131, i64 8, !130, i64 16, !131, i64 24}
!196 = distinct !{!196, !146}
!197 = distinct !{!197, !146}
!198 = !{!"branch_weights", i32 266260, i32 266260}
!199 = !{!"branch_weights", i32 266259, i32 1}
!200 = !{!"branch_weights", i32 1, i32 266259}
!201 = distinct !{!201, !146}
!202 = distinct !{!202, !146}
!203 = distinct !{!203, !146}
!204 = distinct !{!204, !146}
!205 = distinct !{!205, !146}
!206 = !{!207, !207, i64 0}
!207 = !{!"short", !131, i64 0}
!208 = distinct !{!208, !146}
!209 = distinct !{!209, !146}
!210 = distinct !{!210, !146}
!211 = distinct !{!211, !146}
!212 = distinct !{!212, !146}
!213 = distinct !{!213, !146}
!214 = distinct !{!214, !146}
!215 = distinct !{!215, !146}
!216 = distinct !{!216, !146}
!217 = distinct !{!217, !146}
!218 = distinct !{!218, !146}
!219 = distinct !{!219, !146}
!220 = distinct !{!220, !146}
!221 = distinct !{!221, !146}
!222 = distinct !{!222, !146}
!223 = distinct !{!223, !146}
!224 = distinct !{!224, !146}
!225 = distinct !{!225, !146}
!226 = !{!227, !227, i64 0}
!227 = !{!"float", !131, i64 0}
!228 = distinct !{!228, !146}
!229 = !{!230, !230, i64 0}
!230 = !{!"double", !131, i64 0}
!231 = distinct !{!231, !146}
!232 = distinct !{!232, !146}
!233 = distinct !{!233, !146}
!234 = distinct !{!234, !146}
!235 = !{!"branch_weights", i32 -2147483648, i32 0}
!236 = distinct !{!236, !146}
!237 = distinct !{!237, !146}
!238 = !{!"branch_weights", i32 266272, i32 1}
!239 = !{!240, !131, i64 34}
!240 = !{!"op", !136, i64 0, !136, i64 8, !136, i64 16, !130, i64 24, !137, i64 32, !137, i64 33, !137, i64 33, !137, i64 33, !137, i64 33, !137, i64 33, !137, i64 33, !137, i64 33, !131, i64 34, !131, i64 35}
!241 = !{!"branch_weights", i32 3, i32 266260}
!242 = !{!243, !137, i64 56}
!243 = !{!"cop", !136, i64 0, !136, i64 8, !136, i64 16, !130, i64 24, !137, i64 32, !137, i64 33, !137, i64 33, !137, i64 33, !137, i64 33, !137, i64 33, !137, i64 33, !137, i64 33, !131, i64 34, !131, i64 35, !137, i64 36, !136, i64 40, !136, i64 48, !137, i64 56, !137, i64 60, !136, i64 64, !136, i64 72}
!244 = !{!240, !136, i64 0}
!245 = !{!"function_entry_count", i64 19625}
!246 = !{!"branch_weights", i32 19626, i32 1}
!247 = !{!"pp_pack.c:S_pack_rec"}
!248 = !{!"branch_weights", i32 385179876, i32 39253}
!249 = !{!"branch_weights", i32 1, i32 19626}
!250 = !{!"branch_weights", i32 19625, i32 1}
!251 = !{!"branch_weights", i32 1, i32 39249}
!252 = !{!"branch_weights", i32 1540484001, i32 78499}
!253 = !{!"branch_weights", i32 39249, i32 1}
!254 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 39247, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 3, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!255 = !{!"branch_weights", i32 191, i32 1}
!256 = distinct !{!256, !146}
!257 = distinct !{!257, !146}
!258 = !{i64 0, i64 8, !152, i64 8, i64 8, !152, i64 16, i64 4, !166, i64 20, i64 4, !166, i64 24, i64 4, !166, i64 28, i64 4, !166, i64 32, i64 4, !166, i64 40, i64 8, !129, i64 48, i64 8, !152}
!259 = !{i64 0, i64 8, !152, i64 8, i64 4, !166, i64 12, i64 4, !166, i64 16, i64 4, !166, i64 20, i64 4, !166, i64 24, i64 4, !166, i64 32, i64 8, !129, i64 40, i64 8, !152}
!260 = !{i64 0, i64 4, !166, i64 4, i64 4, !166, i64 8, i64 4, !166, i64 16, i64 8, !129, i64 24, i64 8, !152}
!261 = distinct !{!261, !146}
!262 = distinct !{!262, !146}
!263 = distinct !{!263, !146}
!264 = distinct !{!264, !146}
!265 = distinct !{!265, !146}
!266 = distinct !{!266, !146}
!267 = !{!268, !268, i64 0}
!268 = !{!"_Bool", !131, i64 0}
!269 = !{i8 0, i8 2}
!270 = !{}
!271 = distinct !{!271, !146}
!272 = distinct !{!272, !146}
!273 = distinct !{!273, !146}
!274 = distinct !{!274, !146}
!275 = distinct !{!275, !146}
!276 = distinct !{!276, !146}
!277 = distinct !{!277, !146}
!278 = distinct !{!278, !146}
!279 = distinct !{!279, !146}
!280 = distinct !{!280, !146}
!281 = distinct !{!281, !146}
!282 = distinct !{!282, !146}
!283 = distinct !{!283, !146}
!284 = distinct !{!284, !146}
!285 = !{!"branch_weights", i32 39246, i32 1}
!286 = !{!"branch_weights", i32 39247, i32 1}
!287 = !{!"branch_weights", i32 2, i32 39246}
!288 = !{!"branch_weights", i32 1, i32 39247}
!289 = !{!"branch_weights", i32 1, i32 39246}
!290 = distinct !{!290, !146}
!291 = distinct !{!291, !146}
!292 = distinct !{!292, !146}
!293 = distinct !{!293, !146}
!294 = distinct !{!294, !146}
!295 = distinct !{!295, !146}
!296 = !{i32 0, i32 128}
!297 = distinct !{!297, !146}
!298 = distinct !{!298, !146}
!299 = distinct !{!299, !146}
!300 = distinct !{!300, !146}
!301 = distinct !{!301, !146}
!302 = !{!"branch_weights", i32 3, i32 1}
!303 = !{!"branch_weights", i32 1, i32 3}
!304 = !{!"branch_weights", i32 1, i32 191}
!305 = distinct !{!305, !146}
!306 = distinct !{!306, !146}
!307 = distinct !{!307, !146}
!308 = distinct !{!308, !146}
!309 = distinct !{!309, !146}
!310 = distinct !{!310, !146}
!311 = distinct !{!311, !146}
!312 = distinct !{!312, !146}
!313 = !{!"branch_weights", i32 19624, i32 19625}
!314 = distinct !{!314, !146}
!315 = !{!240, !130, i64 24}
!316 = !{!"function_entry_count", i64 591405}
!317 = !{!"pp_pack.c:S_next_symbol"}
!318 = !{!"branch_weights", i32 285886, i32 1}
!319 = !{!"branch_weights", i32 1, i32 305520}
!320 = distinct !{!320, !146}
!321 = distinct !{!321, !146}
!322 = !{!"branch_weights", i32 305520, i32 1}
!323 = !{!"branch_weights", i32 19636, i32 266251}
!324 = !{!"branch_weights", i32 19634, i32 3, i32 1, i32 1}
!325 = !{!"branch_weights", i32 19636, i32 0}
!326 = !{!"branch_weights", i32 19634, i32 285887}
!327 = !{!"branch_weights", i32 19634, i32 1}
!328 = !{!"branch_weights", i32 385493956, i32 19635, i32 19634}
!329 = !{i64 0, i64 4, !166, i64 4, i64 4, !166, i64 8, i64 4, !166, i64 12, i64 4, !166, i64 20, i64 8, !129, i64 28, i64 8, !152}
!330 = !{!"branch_weights", i32 1, i32 19634}
!331 = distinct !{!331, !146}
!332 = !{!"branch_weights", i32 2513025, i32 127}
!333 = distinct !{!333, !146}
!334 = !{!"branch_weights", i32 19634, i32 285886}
!335 = !{!"function_entry_count", i64 0}
!336 = !{!"pp_pack.c:utf8_to_byte"}
!337 = !{!"pp_pack.c:S_utf8_to_bytes"}
!338 = distinct !{!338, !146}
!339 = distinct !{!339, !146}
!340 = !{!"pp_pack.c:S_reverse_copy"}
!341 = distinct !{!341, !146}
!342 = !{!"pp_pack.c:__bswap_16"}
!343 = !{!"pp_pack.c:__bswap_32"}
!344 = !{!"pp_pack.c:S_mul128"}
!345 = distinct !{!345, !146}
!346 = distinct !{!346, !146}
!347 = !{!"pp_pack.c:_action"}
!348 = !{!"pp_pack.c:S_group_end"}
!349 = distinct !{!349, !146}
!350 = distinct !{!350, !146}
!351 = !{!"pp_pack.c:S_get_num"}
!352 = distinct !{!352, !146}
!353 = !{!"pp_pack.c:S_measure_struct"}
!354 = !{i64 0, i64 4, !166, i64 4, i64 4, !166, i64 8, i64 4, !166, i64 12, i64 4, !166, i64 16, i64 4, !166, i64 24, i64 8, !129, i64 32, i64 8, !152}
!355 = distinct !{!355, !146}
!356 = !{!"pp_pack.c:S_SvREFCNT_dec"}
!357 = !{!186, !137, i64 8}
!358 = !{!"pp_pack.c:marked_upgrade"}
!359 = distinct !{!359, !146}
!360 = distinct !{!360, !146}
!361 = distinct !{!361, !146}
!362 = distinct !{!362, !146}
!363 = distinct !{!363, !146}
!364 = distinct !{!364, !146}
!365 = distinct !{!365, !146}
!366 = !{!"pp_pack.c:S_sv_exp_grow"}
!367 = !{!"function_entry_count", i64 39248}
!368 = !{!"pp_pack.c:S_sv_check_infnan"}
!369 = !{!370, !136, i64 0}
!370 = !{!"xpvmg", !136, i64 0, !131, i64 8, !130, i64 16, !131, i64 24, !131, i64 32, !131, i64 40}
!371 = !{!372, !137, i64 12}
!372 = !{!"hv", !136, i64 0, !137, i64 8, !137, i64 12, !131, i64 16}
!373 = !{!"pp_pack.c:S_my_bytes_to_utf8"}
!374 = distinct !{!374, !146}
!375 = distinct !{!375, !146}
!376 = !{!"pp_pack.c:S_is_an_int"}
!377 = distinct !{!377, !146}
!378 = !{!"pp_pack.c:S_div128"}
!379 = distinct !{!379, !146}
!380 = !{!"pp_pack.c:doencodes"}
!381 = distinct !{!381, !146}
!382 = !{!"pp_pack.c:S_append_utf8_from_native_byte"}
