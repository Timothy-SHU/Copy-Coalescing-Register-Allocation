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

; Function Attrs: nounwind uwtable
define dso_local i32 @Perl_unpackstring(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 !prof !52 {
  %6 = alloca %struct.tempsym, align 8
  %7 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #11
  %8 = and i32 %4, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12, !prof !53

10:                                               ; preds = %5
  %11 = icmp ult ptr %0, %1
  br i1 %11, label %14, label %45, !prof !54

12:                                               ; preds = %5
  %13 = or i32 %4, 64
  br label %45

14:                                               ; preds = %10, %32
  %15 = phi i8 [ %34, %32 ], [ 1, %10 ]
  %16 = phi ptr [ %35, %32 ], [ %0, %10 ]
  %17 = load i8, ptr %16, align 1, !tbaa !55
  switch i8 %17, label %32 [
    i8 35, label %18
    i8 85, label %25
  ], !prof !58

18:                                               ; preds = %14
  %19 = ptrtoint ptr %1 to i64
  %20 = getelementptr inbounds i8, ptr %16, i64 1
  %21 = ptrtoint ptr %20 to i64
  %22 = sub i64 %19, %21
  %23 = tail call ptr @memchr(ptr noundef nonnull %20, i32 noundef 10, i64 noundef %22) #12
  %24 = icmp eq ptr %23, null
  br i1 %24, label %45, label %32

25:                                               ; preds = %14
  %26 = and i8 %15, 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = getelementptr inbounds i8, ptr %16, i64 1
  %30 = load i8, ptr %29, align 1, !tbaa !55
  %31 = icmp eq i8 %30, 48
  br i1 %31, label %37, label %32

32:                                               ; preds = %28, %18, %14
  %33 = phi ptr [ %23, %18 ], [ %16, %28 ], [ %16, %14 ]
  %34 = phi i8 [ %15, %18 ], [ %15, %28 ], [ 0, %14 ]
  %35 = getelementptr inbounds i8, ptr %33, i64 1
  %36 = icmp ult ptr %35, %1
  br i1 %36, label %14, label %45, !prof !59, !llvm.loop !60

37:                                               ; preds = %28, %25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  %38 = ptrtoint ptr %3 to i64
  %39 = ptrtoint ptr %2 to i64
  %40 = sub i64 %38, %39
  store i64 %40, ptr %7, align 8, !tbaa !63
  %41 = call ptr @Perl_bytes_to_utf8(ptr noundef %2, ptr noundef nonnull %7) #11
  call void @Perl_save_pushptr(ptr noundef %41, i32 noundef 10) #11
  %42 = load i64, ptr %7, align 8, !tbaa !63
  %43 = getelementptr inbounds i8, ptr %41, i64 %42
  %44 = or disjoint i32 %4, 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  br label %45

45:                                               ; preds = %32, %18, %10, %37, %12
  %46 = phi ptr [ %2, %12 ], [ %41, %37 ], [ %2, %10 ], [ %2, %18 ], [ %2, %32 ]
  %47 = phi ptr [ %3, %12 ], [ %43, %37 ], [ %3, %10 ], [ %3, %18 ], [ %3, %32 ]
  %48 = phi i32 [ %13, %12 ], [ %44, %37 ], [ %4, %10 ], [ %4, %18 ], [ %4, %32 ]
  %49 = icmp ult ptr %0, %1
  br i1 %49, label %50, label %67, !prof !65

50:                                               ; preds = %45, %54
  %51 = phi ptr [ %61, %54 ], [ %0, %45 ]
  %52 = load i8, ptr %51, align 1, !tbaa !55
  %53 = icmp eq i8 %52, 35
  br i1 %53, label %54, label %64, !prof !66

54:                                               ; preds = %50
  %55 = ptrtoint ptr %1 to i64
  %56 = getelementptr inbounds i8, ptr %51, i64 1
  %57 = ptrtoint ptr %56 to i64
  %58 = sub i64 %55, %57
  %59 = call ptr @memchr(ptr noundef nonnull %56, i32 noundef 10, i64 noundef %58) #12
  %60 = icmp ne ptr %59, null
  %61 = getelementptr inbounds i8, ptr %59, i64 1
  %62 = icmp ult ptr %61, %1
  %63 = select i1 %60, i1 %62, i1 false
  br i1 %63, label %50, label %64, !prof !67, !llvm.loop !68

64:                                               ; preds = %50, %54
  %65 = phi i8 [ 0, %54 ], [ %52, %50 ]
  %66 = icmp eq i8 %65, 85
  br label %67

67:                                               ; preds = %64, %45
  %68 = phi i1 [ false, %45 ], [ %66, %64 ]
  %69 = and i32 %48, 8
  %70 = icmp eq i32 %69, 0
  %71 = select i1 %68, i1 true, i1 %70, !prof !66
  %72 = or i32 %48, 32
  %73 = select i1 %71, i32 %48, i32 %72, !prof !53
  store ptr %0, ptr %6, align 8, !tbaa !69
  %74 = getelementptr inbounds %struct.tempsym, ptr %6, i64 0, i32 1
  store ptr %1, ptr %74, align 8, !tbaa !73
  %75 = getelementptr inbounds %struct.tempsym, ptr %6, i64 0, i32 2
  %76 = getelementptr inbounds %struct.tempsym, ptr %6, i64 0, i32 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %75, i8 0, i64 32, i1 false)
  store i32 %73, ptr %76, align 8, !tbaa !74
  %77 = getelementptr inbounds %struct.tempsym, ptr %6, i64 0, i32 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %77, i8 0, i64 16, i1 false)
  %78 = call fastcc i32 @S_unpack_rec(ptr noundef nonnull %6, ptr noundef %46, ptr noundef %46, ptr noundef %47, ptr noundef null)
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #11
  ret i32 %78
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @Perl_bytes_to_utf8(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Perl_save_pushptr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @S_unpack_rec(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef writeonly %4) unnamed_addr #0 !prof !52 !PGOFuncName !75 {
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %struct.tempsym, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca [13 x i8], align 1
  %13 = alloca ptr, align 8
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  %16 = alloca i16, align 2
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca ptr, align 8
  %27 = alloca ptr, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca float, align 4
  %31 = alloca double, align 8
  %32 = alloca %union.NV_bytes, align 8
  %33 = alloca [3 x i8], align 1
  %34 = alloca double, align 8
  store ptr %1, ptr %7, align 8, !tbaa !76
  %35 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !76
  %36 = load ptr, ptr @PL_stack_base, align 8, !tbaa !76
  %37 = ptrtoint ptr %35 to i64
  %38 = ptrtoint ptr %36 to i64
  %39 = sub i64 %37, %38
  %40 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 8
  %41 = load i32, ptr %40, align 8, !tbaa !74
  %42 = and i32 %41, 16
  %43 = icmp eq i32 %42, 0
  %44 = trunc i32 %41 to i8
  %45 = lshr i8 %44, 5
  %46 = and i8 %45, 1
  %47 = ptrtoint ptr %1 to i64
  %48 = ptrtoint ptr %2 to i64
  %49 = sub i64 %47, %48
  %50 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 9
  store i64 %49, ptr %50, align 8, !tbaa !77
  %51 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 4
  %52 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 6
  %53 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 5
  %54 = ptrtoint ptr %3 to i64
  %55 = sub i64 %54, %48
  %56 = trunc i64 %55 to i32
  br label %57

57:                                               ; preds = %2616, %5
  %58 = phi i8 [ %46, %5 ], [ %2618, %2616 ]
  %59 = phi double [ 0.000000e+00, %5 ], [ %2619, %2616 ]
  %60 = phi i64 [ 0, %5 ], [ %2620, %2616 ]
  %61 = phi i64 [ undef, %5 ], [ %2621, %2616 ]
  %62 = phi i32 [ 0, %5 ], [ %2622, %2616 ]
  %63 = phi ptr [ null, %5 ], [ %2623, %2616 ]
  %64 = phi ptr [ %35, %5 ], [ %2624, %2616 ]
  %65 = call fastcc zeroext i1 @S_next_symbol(ptr noundef %0)
  br i1 %65, label %66, label %2625, !prof !78

66:                                               ; preds = %57
  %67 = load i32, ptr %51, align 8, !tbaa !79
  br i1 %43, label %80, label %68, !prof !80

68:                                               ; preds = %66
  %69 = shl i64 %39, 29
  %70 = add i64 %69, 4294967296
  %71 = ashr i64 %70, 32
  %72 = load ptr, ptr @PL_stack_base, align 8, !tbaa !76
  %73 = ptrtoint ptr %64 to i64
  %74 = ptrtoint ptr %72 to i64
  %75 = sub i64 %73, %74
  %76 = ashr exact i64 %75, 3
  %77 = icmp eq i64 %76, %71
  %78 = icmp ne i32 %67, 47
  %79 = select i1 %77, i1 %78, i1 false, !prof !81
  br i1 %79, label %2616, label %80, !prof !81

80:                                               ; preds = %68, %66
  %81 = load i32, ptr %52, align 8, !tbaa !82
  %82 = icmp eq i32 %81, 2
  br i1 %82, label %85, label %83, !prof !83

83:                                               ; preds = %80
  %84 = load i32, ptr %53, align 4, !tbaa !84
  br label %85

85:                                               ; preds = %80, %83
  %86 = phi i32 [ %84, %83 ], [ %56, %80 ]
  br label %87

87:                                               ; preds = %2612, %85
  %88 = phi i32 [ %67, %85 ], [ %2615, %2612 ]
  %89 = phi i32 [ %86, %85 ], [ %2613, %2612 ]
  %90 = phi i8 [ %58, %85 ], [ %2504, %2612 ]
  %91 = phi i1 [ true, %85 ], [ false, %2612 ]
  %92 = phi double [ %59, %85 ], [ %2568, %2612 ]
  %93 = phi i64 [ %60, %85 ], [ %2569, %2612 ]
  %94 = phi i64 [ %61, %85 ], [ %2507, %2612 ]
  %95 = phi i32 [ %62, %85 ], [ 0, %2612 ]
  %96 = phi ptr [ %63, %85 ], [ %2570, %2612 ]
  %97 = phi ptr [ %64, %85 ], [ %2614, %2612 ]
  %98 = load ptr, ptr %7, align 8, !tbaa !76
  %99 = icmp ult ptr %98, %3
  %100 = and i32 %88, -1537
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [512 x i8], ptr @packprops, i64 0, i64 %101
  %103 = load i8, ptr %102, align 1, !tbaa !55
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %140, label %105, !prof !85

105:                                              ; preds = %87
  %106 = ptrtoint ptr %3 to i64
  %107 = and i8 %103, 63
  %108 = zext nneg i8 %107 to i64
  %109 = ptrtoint ptr %98 to i64
  %110 = sub i64 %106, %109
  %111 = sdiv i64 %110, %108
  %112 = sext i32 %89 to i64
  %113 = icmp slt i64 %111, %112
  %114 = trunc i64 %111 to i32
  %115 = select i1 %113, i32 %114, i32 %89, !prof !86
  %116 = icmp ne i32 %95, 0
  %117 = icmp sgt i8 %103, -1
  %118 = and i1 %116, %117
  br i1 %118, label %140, label %119, !prof !86

119:                                              ; preds = %105
  %120 = icmp eq i32 %115, 0
  %121 = select i1 %43, i32 %115, i32 1, !prof !87
  %122 = select i1 %120, i32 0, i32 %121, !prof !86
  %123 = load ptr, ptr @PL_stack_max, align 8, !tbaa !76
  %124 = ptrtoint ptr %123 to i64
  %125 = ptrtoint ptr %97 to i64
  %126 = sub i64 %124, %125
  %127 = ashr exact i64 %126, 3
  %128 = sext i32 %122 to i64
  %129 = icmp slt i64 %127, %128
  br i1 %129, label %130, label %132, !prof !86

130:                                              ; preds = %119
  %131 = call ptr @Perl_stack_grow(ptr noundef %97, ptr noundef %97, i64 noundef %128) #11
  br label %132

132:                                              ; preds = %130, %119
  %133 = phi ptr [ %131, %130 ], [ %97, %119 ]
  %134 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !63
  %135 = add nsw i64 %134, %128
  %136 = load i64, ptr @PL_tmps_max, align 8, !tbaa !63
  %137 = icmp slt i64 %135, %136
  br i1 %137, label %140, label %138, !prof !88

138:                                              ; preds = %132
  %139 = call i64 @Perl_tmps_grow_p(i64 noundef %135) #11
  br label %140

140:                                              ; preds = %105, %132, %138, %87
  %141 = phi i32 [ %89, %87 ], [ %115, %105 ], [ %122, %132 ], [ %122, %138 ]
  %142 = phi ptr [ %97, %87 ], [ %97, %105 ], [ %133, %132 ], [ %133, %138 ]
  %143 = and i32 %88, 1536
  %144 = icmp eq i32 %143, 512
  switch i32 %100, label %247 [
    i32 37, label %249
    i32 40, label %252
    i32 302, label %295
    i32 46, label %295
    i32 320, label %366
    i32 64, label %366
    i32 344, label %406
    i32 88, label %439
    i32 376, label %480
    i32 120, label %499
    i32 47, label %531
    i32 65, label %532
    i32 90, label %532
    i32 97, label %532
    i32 66, label %757
    i32 98, label %757
    i32 72, label %941
    i32 104, label %941
    i32 67, label %1062
    i32 99, label %1070
    i32 87, label %1134
    i32 85, label %1231
    i32 371, label %1345
    i32 115, label %1345
    i32 339, label %1397
    i32 118, label %1397
    i32 110, label %1397
    i32 83, label %1397
    i32 374, label %1454
    i32 366, label %1454
    i32 105, label %1511
    i32 361, label %1511
    i32 73, label %1563
    i32 329, label %1563
    i32 106, label %238
    i32 74, label %229
    i32 364, label %220
    i32 108, label %211
    i32 332, label %202
    i32 86, label %1822
    i32 78, label %1822
    i32 76, label %1822
    i32 342, label %1879
    i32 334, label %1879
    i32 112, label %195
    i32 119, label %187
    i32 80, label %2117
    i32 113, label %178
    i32 81, label %169
    i32 102, label %161
    i32 100, label %153
    i32 70, label %145
    i32 117, label %2348
  ], !prof !89

145:                                              ; preds = %140
  %146 = add nsw i32 %141, -1
  %147 = icmp sgt i32 %141, 0
  br i1 %147, label %148, label %2502

148:                                              ; preds = %145
  %149 = getelementptr inbounds i8, ptr %32, i64 8
  %150 = and i8 %90, 1
  %151 = icmp eq i8 %150, 0
  %152 = icmp eq i32 %95, 0
  br label %2313

153:                                              ; preds = %140
  %154 = add nsw i32 %141, -1
  %155 = icmp sgt i32 %141, 0
  br i1 %155, label %156, label %2502

156:                                              ; preds = %153
  %157 = getelementptr inbounds i8, ptr %31, i64 8
  %158 = and i8 %90, 1
  %159 = icmp eq i8 %158, 0
  %160 = icmp eq i32 %95, 0
  br label %2278

161:                                              ; preds = %140
  %162 = add nsw i32 %141, -1
  %163 = icmp sgt i32 %141, 0
  br i1 %163, label %164, label %2502

164:                                              ; preds = %161
  %165 = getelementptr inbounds i8, ptr %30, i64 4
  %166 = and i8 %90, 1
  %167 = icmp eq i8 %166, 0
  %168 = icmp eq i32 %95, 0
  br label %2241

169:                                              ; preds = %140
  %170 = add nsw i32 %141, -1
  %171 = icmp sgt i32 %141, 0
  br i1 %171, label %172, label %2502

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, ptr %29, i64 8
  %174 = and i8 %90, 1
  %175 = icmp eq i8 %174, 0
  %176 = icmp eq i32 %95, 0
  %177 = icmp sgt i32 %95, 64
  br label %2200

178:                                              ; preds = %140
  %179 = add nsw i32 %141, -1
  %180 = icmp sgt i32 %141, 0
  br i1 %180, label %181, label %2502

181:                                              ; preds = %178
  %182 = getelementptr inbounds i8, ptr %28, i64 8
  %183 = and i8 %90, 1
  %184 = icmp eq i8 %183, 0
  %185 = icmp eq i32 %95, 0
  %186 = icmp sgt i32 %95, 64
  br label %2159

187:                                              ; preds = %140
  %188 = icmp sgt i32 %141, 0
  %189 = load ptr, ptr %7, align 8
  %190 = icmp ult ptr %189, %3
  %191 = select i1 %188, i1 %190, i1 false
  br i1 %191, label %192, label %2107

192:                                              ; preds = %187
  %193 = and i8 %90, 1
  %194 = icmp eq i8 %193, 0
  br label %1964

195:                                              ; preds = %140
  %196 = add nsw i32 %141, -1
  %197 = icmp sgt i32 %141, 0
  br i1 %197, label %198, label %2502

198:                                              ; preds = %195
  %199 = getelementptr inbounds i8, ptr %26, i64 8
  %200 = and i8 %90, 1
  %201 = icmp eq i8 %200, 0
  br label %1936

202:                                              ; preds = %140
  %203 = add nsw i32 %141, -1
  %204 = icmp sgt i32 %141, 0
  br i1 %204, label %205, label %2502

205:                                              ; preds = %202
  %206 = getelementptr inbounds i8, ptr %23, i64 8
  %207 = and i8 %90, 1
  %208 = icmp eq i8 %207, 0
  %209 = icmp eq i32 %95, 0
  %210 = icmp sgt i32 %95, 64
  br label %1781

211:                                              ; preds = %140
  %212 = add nsw i32 %141, -1
  %213 = icmp sgt i32 %141, 0
  br i1 %213, label %214, label %2502

214:                                              ; preds = %211
  %215 = getelementptr inbounds i8, ptr %22, i64 4
  %216 = and i8 %90, 1
  %217 = icmp eq i8 %216, 0
  %218 = icmp eq i32 %95, 0
  %219 = icmp sgt i32 %95, 64
  br label %1738

220:                                              ; preds = %140
  %221 = add nsw i32 %141, -1
  %222 = icmp sgt i32 %141, 0
  br i1 %222, label %223, label %2502

223:                                              ; preds = %220
  %224 = getelementptr inbounds i8, ptr %21, i64 8
  %225 = and i8 %90, 1
  %226 = icmp eq i8 %225, 0
  %227 = icmp eq i32 %95, 0
  %228 = icmp sgt i32 %95, 64
  br label %1697

229:                                              ; preds = %140
  %230 = add nsw i32 %141, -1
  %231 = icmp sgt i32 %141, 0
  br i1 %231, label %232, label %2502

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, ptr %20, i64 8
  %234 = and i8 %90, 1
  %235 = icmp eq i8 %234, 0
  %236 = icmp eq i32 %95, 0
  %237 = icmp sgt i32 %95, 64
  br label %1656

238:                                              ; preds = %140
  %239 = add nsw i32 %141, -1
  %240 = icmp sgt i32 %141, 0
  br i1 %240, label %241, label %2502

241:                                              ; preds = %238
  %242 = getelementptr inbounds i8, ptr %19, i64 8
  %243 = and i8 %90, 1
  %244 = icmp eq i8 %243, 0
  %245 = icmp eq i32 %95, 0
  %246 = icmp sgt i32 %95, 64
  br label %1615

247:                                              ; preds = %140
  %248 = and i32 %88, 255
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.1, i32 noundef %248) #11
  br label %249

249:                                              ; preds = %140, %247
  %250 = icmp eq i32 %81, 0
  %251 = select i1 %250, i32 16, i32 %141
  br label %2616, !llvm.loop !90

252:                                              ; preds = %140
  %253 = getelementptr inbounds %struct.tempsym, ptr %8, i64 0, i32 3
  %254 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 1
  %255 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 10
  %256 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 7
  %257 = getelementptr inbounds %struct.tempsym, ptr %8, i64 0, i32 2
  %258 = getelementptr inbounds %struct.tempsym, ptr %8, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %8) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(72) %0, i64 72, i1 false), !tbaa.struct !91
  %259 = load i32, ptr %40, align 8, !tbaa !74
  %260 = and i32 %88, -256
  %261 = or i32 %260, %259
  store i32 %261, ptr %40, align 8, !tbaa !74
  %262 = load ptr, ptr %253, align 8, !tbaa !93
  store ptr %262, ptr %254, align 8, !tbaa !73
  store ptr %8, ptr %255, align 8, !tbaa !94
  %263 = load i32, ptr %256, align 4, !tbaa !95
  %264 = add nsw i32 %263, 1
  store i32 %264, ptr %256, align 4, !tbaa !95
  store ptr %142, ptr @PL_stack_sp, align 8, !tbaa !76
  %265 = icmp eq i32 %141, 0
  %266 = select i1 %43, i32 %141, i32 1
  %267 = select i1 %265, i32 0, i32 %266
  %268 = shl i8 %90, 5
  %269 = and i8 %268, 32
  %270 = zext nneg i8 %269 to i32
  br label %271

271:                                              ; preds = %274, %252
  %272 = phi i32 [ %267, %252 ], [ %275, %274 ]
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %287, label %274

274:                                              ; preds = %271
  %275 = add nsw i32 %272, -1
  %276 = load ptr, ptr %257, align 8, !tbaa !96
  store ptr %276, ptr %0, align 8, !tbaa !69
  %277 = load i32, ptr %40, align 8, !tbaa !74
  %278 = and i32 %277, -33
  %279 = or disjoint i32 %278, %270
  store i32 %279, ptr %40, align 8, !tbaa !74
  %280 = load ptr, ptr %7, align 8, !tbaa !76
  %281 = call fastcc i32 @S_unpack_rec(ptr noundef nonnull %0, ptr noundef %280, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %7)
  %282 = load ptr, ptr %7, align 8, !tbaa !76
  %283 = icmp eq ptr %282, %3
  %284 = load i32, ptr %258, align 8
  %285 = icmp eq i32 %284, 2
  %286 = select i1 %283, i1 %285, i1 false
  br i1 %286, label %287, label %271, !llvm.loop !97

287:                                              ; preds = %274, %271
  %288 = phi i32 [ %275, %274 ], [ -1, %271 ]
  %289 = getelementptr inbounds %struct.tempsym, ptr %8, i64 0, i32 8
  %290 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !76
  %291 = load i32, ptr %40, align 8, !tbaa !74
  %292 = xor i32 %260, -1
  %293 = or i32 %259, %292
  %294 = and i32 %291, %293
  store i32 %294, ptr %289, align 8, !tbaa !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %8, i64 72, i1 false), !tbaa.struct !91
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %8) #11
  br label %2502

295:                                              ; preds = %140, %140
  %296 = and i8 %90, 1
  %297 = icmp ne i8 %296, 0
  %298 = and i32 %88, 256
  %299 = icmp eq i32 %298, 0
  %300 = and i1 %299, %297
  br i1 %82, label %327, label %301

301:                                              ; preds = %295
  %302 = icmp slt i32 %141, 1
  br i1 %302, label %308, label %303

303:                                              ; preds = %301
  %304 = icmp ne ptr %0, null
  %305 = add nsw i32 %141, -1
  %306 = icmp ne i32 %305, 0
  %307 = and i1 %306, %304
  br i1 %307, label %310, label %319

308:                                              ; preds = %301
  %309 = load ptr, ptr %7, align 8, !tbaa !76
  br label %327

310:                                              ; preds = %303, %310
  %311 = phi i32 [ %315, %310 ], [ %305, %303 ]
  %312 = phi ptr [ %314, %310 ], [ %0, %303 ]
  %313 = getelementptr inbounds %struct.tempsym, ptr %312, i64 0, i32 10
  %314 = load ptr, ptr %313, align 8, !tbaa !94
  %315 = add nsw i32 %311, -1
  %316 = icmp ne i32 %315, 0
  %317 = icmp ne ptr %314, null
  %318 = select i1 %316, i1 %317, i1 false
  br i1 %318, label %310, label %319, !llvm.loop !98

319:                                              ; preds = %310, %303
  %320 = phi ptr [ %0, %303 ], [ %314, %310 ]
  %321 = phi i32 [ %305, %303 ], [ %315, %310 ]
  %322 = phi i1 [ %304, %303 ], [ %317, %310 ]
  br i1 %322, label %323, label %327

323:                                              ; preds = %319
  %324 = getelementptr inbounds %struct.tempsym, ptr %320, i64 0, i32 9
  %325 = load i64, ptr %324, align 8, !tbaa !77
  %326 = getelementptr inbounds i8, ptr %2, i64 %325
  br label %327

327:                                              ; preds = %323, %319, %295, %308
  %328 = phi ptr [ %309, %308 ], [ %2, %295 ], [ %326, %323 ], [ %2, %319 ]
  %329 = phi i32 [ %141, %308 ], [ %141, %295 ], [ %321, %323 ], [ %321, %319 ]
  %330 = load ptr, ptr %7, align 8, !tbaa !76
  %331 = icmp ugt ptr %328, %330
  br i1 %331, label %342, label %332

332:                                              ; preds = %327
  br i1 %300, label %333, label %335

333:                                              ; preds = %332
  %334 = call i64 @Perl_utf8_length(ptr noundef %328, ptr noundef %330) #11
  br label %339

335:                                              ; preds = %332
  %336 = ptrtoint ptr %330 to i64
  %337 = ptrtoint ptr %328 to i64
  %338 = sub i64 %336, %337
  br label %339

339:                                              ; preds = %335, %333
  %340 = phi i64 [ %334, %333 ], [ %338, %335 ]
  %341 = call ptr @Perl_newSVuv(i64 noundef %340) #11
  br label %353

342:                                              ; preds = %327
  br i1 %300, label %343, label %345

343:                                              ; preds = %342
  %344 = call i64 @Perl_utf8_length(ptr noundef %330, ptr noundef nonnull %328) #11
  br label %349

345:                                              ; preds = %342
  %346 = ptrtoint ptr %328 to i64
  %347 = ptrtoint ptr %330 to i64
  %348 = sub i64 %346, %347
  br label %349

349:                                              ; preds = %345, %343
  %350 = phi i64 [ %344, %343 ], [ %348, %345 ]
  %351 = sub nsw i64 0, %350
  %352 = call ptr @Perl_newSViv(i64 noundef %351) #11
  br label %353

353:                                              ; preds = %349, %339
  %354 = phi ptr [ %341, %339 ], [ %352, %349 ]
  %355 = load ptr, ptr @PL_stack_max, align 8, !tbaa !76
  %356 = ptrtoint ptr %355 to i64
  %357 = ptrtoint ptr %142 to i64
  %358 = sub i64 %356, %357
  %359 = icmp slt i64 %358, 8
  br i1 %359, label %360, label %362

360:                                              ; preds = %353
  %361 = call ptr @Perl_stack_grow(ptr noundef %142, ptr noundef %142, i64 noundef 1) #11
  br label %362

362:                                              ; preds = %353, %360
  %363 = phi ptr [ %361, %360 ], [ %142, %353 ]
  %364 = call ptr @Perl_sv_2mortal(ptr noundef %354) #11
  %365 = getelementptr inbounds ptr, ptr %363, i64 1
  store ptr %364, ptr %365, align 8, !tbaa !76
  br label %2502

366:                                              ; preds = %140, %140
  %367 = load i64, ptr %50, align 8, !tbaa !77
  %368 = getelementptr inbounds i8, ptr %2, i64 %367
  store ptr %368, ptr %7, align 8, !tbaa !76
  %369 = and i8 %90, 1
  %370 = icmp ne i8 %369, 0
  %371 = and i32 %88, 256
  %372 = icmp eq i32 %371, 0
  %373 = and i1 %372, %370
  br i1 %373, label %374, label %396

374:                                              ; preds = %366
  %375 = icmp sgt i32 %141, 0
  br i1 %375, label %376, label %391

376:                                              ; preds = %374, %381
  %377 = phi i32 [ %389, %381 ], [ %141, %374 ]
  %378 = load ptr, ptr %7, align 8, !tbaa !76
  %379 = icmp ult ptr %378, %3
  br i1 %379, label %381, label %380

380:                                              ; preds = %376
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.2) #11
  br label %381

381:                                              ; preds = %380, %376
  %382 = load ptr, ptr %7, align 8, !tbaa !76
  %383 = load i8, ptr %382, align 1, !tbaa !55
  %384 = zext i8 %383 to i64
  %385 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %384
  %386 = load i8, ptr %385, align 1, !tbaa !55
  %387 = zext i8 %386 to i64
  %388 = getelementptr inbounds i8, ptr %382, i64 %387
  store ptr %388, ptr %7, align 8, !tbaa !76
  %389 = add nsw i32 %377, -1
  %390 = icmp sgt i32 %377, 1
  br i1 %390, label %376, label %391, !llvm.loop !99

391:                                              ; preds = %381, %374
  %392 = phi i32 [ %141, %374 ], [ 0, %381 ]
  %393 = load ptr, ptr %7, align 8, !tbaa !76
  %394 = icmp ugt ptr %393, %3
  br i1 %394, label %395, label %2502

395:                                              ; preds = %391
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.3) #11
  br label %2502

396:                                              ; preds = %366
  %397 = ptrtoint ptr %3 to i64
  %398 = ptrtoint ptr %368 to i64
  %399 = sub i64 %397, %398
  %400 = sext i32 %141 to i64
  %401 = icmp slt i64 %399, %400
  br i1 %401, label %402, label %403

402:                                              ; preds = %396
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.2) #11
  br label %403

403:                                              ; preds = %402, %396
  %404 = load ptr, ptr %7, align 8, !tbaa !76
  %405 = getelementptr inbounds i8, ptr %404, i64 %400
  store ptr %405, ptr %7, align 8, !tbaa !76
  br label %2502

406:                                              ; preds = %140
  %407 = call i32 @llvm.umax.i32(i32 %141, i32 1)
  %408 = and i8 %90, 1
  %409 = icmp eq i8 %408, 0
  %410 = load ptr, ptr %7, align 8, !tbaa !76
  br i1 %409, label %433, label %411

411:                                              ; preds = %406
  %412 = icmp ugt ptr %410, %2
  br i1 %412, label %413, label %428

413:                                              ; preds = %411, %413
  %414 = phi i32 [ %426, %413 ], [ %407, %411 ]
  %415 = phi ptr [ %425, %413 ], [ %2, %411 ]
  %416 = phi ptr [ %422, %413 ], [ %2, %411 ]
  %417 = load i8, ptr %416, align 1, !tbaa !55
  %418 = zext i8 %417 to i64
  %419 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %418
  %420 = load i8, ptr %419, align 1, !tbaa !55
  %421 = zext i8 %420 to i64
  %422 = getelementptr inbounds i8, ptr %416, i64 %421
  %423 = add nsw i32 %414, -1
  %424 = icmp eq i32 %423, 0
  %425 = select i1 %424, ptr %422, ptr %415
  %426 = select i1 %424, i32 %407, i32 %423
  %427 = icmp ult ptr %422, %410
  br i1 %427, label %413, label %428, !llvm.loop !100

428:                                              ; preds = %413, %411
  %429 = phi ptr [ %2, %411 ], [ %425, %413 ]
  %430 = icmp ugt ptr %429, %410
  br i1 %430, label %431, label %432

431:                                              ; preds = %428
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.4) #11
  br label %432

432:                                              ; preds = %431, %428
  store ptr %429, ptr %7, align 8, !tbaa !76
  br label %2502

433:                                              ; preds = %406
  %434 = ptrtoint ptr %410 to i64
  %435 = sub i64 %434, %48
  %436 = sext i32 %407 to i64
  %437 = srem i64 %435, %436
  %438 = trunc i64 %437 to i32
  br label %439

439:                                              ; preds = %140, %433
  %440 = phi i32 [ %141, %140 ], [ %438, %433 ]
  %441 = and i8 %90, 1
  %442 = icmp eq i8 %441, 0
  br i1 %442, label %469, label %443

443:                                              ; preds = %439
  %444 = icmp sgt i32 %440, 0
  br i1 %444, label %445, label %2502

445:                                              ; preds = %443, %466
  %446 = phi i32 [ %467, %466 ], [ %440, %443 ]
  %447 = load ptr, ptr %7, align 8, !tbaa !76
  %448 = icmp ugt ptr %447, %2
  br i1 %448, label %450, label %449

449:                                              ; preds = %445
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.5) #11
  br label %450

450:                                              ; preds = %449, %445
  %451 = load ptr, ptr %7, align 8, !tbaa !76
  %452 = getelementptr inbounds i8, ptr %451, i64 -1
  store ptr %452, ptr %7, align 8, !tbaa !76
  %453 = load i8, ptr %452, align 1, !tbaa !55
  %454 = and i8 %453, -64
  %455 = icmp eq i8 %454, -128
  br i1 %455, label %456, label %466

456:                                              ; preds = %450, %460
  %457 = phi ptr [ %462, %460 ], [ %452, %450 ]
  %458 = icmp ugt ptr %457, %2
  br i1 %458, label %460, label %459

459:                                              ; preds = %456
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.5) #11
  br label %460

460:                                              ; preds = %459, %456
  %461 = load ptr, ptr %7, align 8, !tbaa !76
  %462 = getelementptr inbounds i8, ptr %461, i64 -1
  store ptr %462, ptr %7, align 8, !tbaa !76
  %463 = load i8, ptr %462, align 1, !tbaa !55
  %464 = and i8 %463, -64
  %465 = icmp eq i8 %464, -128
  br i1 %465, label %456, label %466, !llvm.loop !101

466:                                              ; preds = %460, %450
  %467 = add nsw i32 %446, -1
  %468 = icmp sgt i32 %446, 1
  br i1 %468, label %445, label %2502, !llvm.loop !102

469:                                              ; preds = %439
  %470 = sext i32 %440 to i64
  %471 = load ptr, ptr %7, align 8, !tbaa !76
  %472 = ptrtoint ptr %471 to i64
  %473 = sub i64 %472, %48
  %474 = icmp slt i64 %473, %470
  br i1 %474, label %475, label %476

475:                                              ; preds = %469
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.5) #11
  br label %476

476:                                              ; preds = %475, %469
  %477 = load ptr, ptr %7, align 8, !tbaa !76
  %478 = sub nsw i64 0, %470
  %479 = getelementptr inbounds i8, ptr %477, i64 %478
  store ptr %479, ptr %7, align 8, !tbaa !76
  br label %2502

480:                                              ; preds = %140
  %481 = call i32 @llvm.umax.i32(i32 %141, i32 1)
  %482 = and i8 %90, 1
  %483 = icmp eq i8 %482, 0
  %484 = load ptr, ptr %7, align 8, !tbaa !76
  br i1 %483, label %489, label %485

485:                                              ; preds = %480
  %486 = call i64 @Perl_utf8_length(ptr noundef %2, ptr noundef %484) #11
  %487 = sext i32 %481 to i64
  %488 = urem i64 %486, %487
  br label %494

489:                                              ; preds = %480
  %490 = ptrtoint ptr %484 to i64
  %491 = sub i64 %490, %48
  %492 = sext i32 %481 to i64
  %493 = srem i64 %491, %492
  br label %494

494:                                              ; preds = %489, %485
  %495 = phi i64 [ %488, %485 ], [ %493, %489 ]
  %496 = trunc i64 %495 to i32
  %497 = icmp eq i32 %496, 0
  %498 = sub nsw i32 %481, %496
  br i1 %497, label %2502, label %499

499:                                              ; preds = %494, %140
  %500 = phi i32 [ %141, %140 ], [ %498, %494 ]
  %501 = and i8 %90, 1
  %502 = icmp eq i8 %501, 0
  br i1 %502, label %520, label %503

503:                                              ; preds = %499
  %504 = icmp sgt i32 %500, 0
  br i1 %504, label %505, label %2502

505:                                              ; preds = %503, %510
  %506 = phi i32 [ %518, %510 ], [ %500, %503 ]
  %507 = load ptr, ptr %7, align 8, !tbaa !76
  %508 = icmp ult ptr %507, %3
  br i1 %508, label %510, label %509

509:                                              ; preds = %505
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.6) #11
  br label %510

510:                                              ; preds = %509, %505
  %511 = load ptr, ptr %7, align 8, !tbaa !76
  %512 = load i8, ptr %511, align 1, !tbaa !55
  %513 = zext i8 %512 to i64
  %514 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %513
  %515 = load i8, ptr %514, align 1, !tbaa !55
  %516 = zext i8 %515 to i64
  %517 = getelementptr inbounds i8, ptr %511, i64 %516
  store ptr %517, ptr %7, align 8, !tbaa !76
  %518 = add nsw i32 %506, -1
  %519 = icmp sgt i32 %506, 1
  br i1 %519, label %505, label %2502, !llvm.loop !103

520:                                              ; preds = %499
  %521 = ptrtoint ptr %3 to i64
  %522 = sext i32 %500 to i64
  %523 = load ptr, ptr %7, align 8, !tbaa !76
  %524 = ptrtoint ptr %523 to i64
  %525 = sub i64 %521, %524
  %526 = icmp slt i64 %525, %522
  br i1 %526, label %527, label %528

527:                                              ; preds = %520
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.6) #11
  br label %528

528:                                              ; preds = %527, %520
  %529 = load ptr, ptr %7, align 8, !tbaa !76
  %530 = getelementptr inbounds i8, ptr %529, i64 %522
  store ptr %530, ptr %7, align 8, !tbaa !76
  br label %2502

531:                                              ; preds = %140
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.7) #11
  br label %532

532:                                              ; preds = %140, %140, %140, %531
  %533 = icmp eq i32 %95, 0
  br i1 %533, label %543, label %534, !prof !104

534:                                              ; preds = %532
  %535 = ptrtoint ptr %3 to i64
  %536 = sext i32 %141 to i64
  %537 = load ptr, ptr %7, align 8, !tbaa !76
  %538 = ptrtoint ptr %537 to i64
  %539 = sub i64 %535, %538
  %540 = icmp slt i64 %539, %536
  %541 = trunc i64 %539 to i32
  %542 = select i1 %540, i32 %541, i32 %141
  br label %1134

543:                                              ; preds = %532
  %544 = and i8 %90, 1
  %545 = icmp eq i8 %544, 0
  br i1 %545, label %575, label %546, !prof !104

546:                                              ; preds = %543
  %547 = load ptr, ptr %7, align 8, !tbaa !76
  %548 = icmp sgt i32 %141, 0
  br i1 %548, label %549, label %565

549:                                              ; preds = %546, %556
  %550 = phi ptr [ %563, %556 ], [ %547, %546 ]
  %551 = phi i32 [ %557, %556 ], [ %141, %546 ]
  %552 = icmp ult ptr %550, %3
  br i1 %552, label %556, label %553

553:                                              ; preds = %549
  %554 = icmp ugt ptr %550, %3
  br i1 %554, label %555, label %565

555:                                              ; preds = %553
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.4) #11
  br label %565

556:                                              ; preds = %549
  %557 = add nsw i32 %551, -1
  %558 = load i8, ptr %550, align 1, !tbaa !55
  %559 = zext i8 %558 to i64
  %560 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %559
  %561 = load i8, ptr %560, align 1, !tbaa !55
  %562 = zext i8 %561 to i64
  %563 = getelementptr inbounds i8, ptr %550, i64 %562
  %564 = icmp sgt i32 %551, 1
  br i1 %564, label %549, label %565, !llvm.loop !105

565:                                              ; preds = %556, %546, %553, %555
  %566 = phi ptr [ %550, %553 ], [ %550, %555 ], [ %547, %546 ], [ %563, %556 ]
  %567 = icmp ugt ptr %566, %3
  br i1 %567, label %568, label %569

568:                                              ; preds = %565
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.4) #11
  br label %569

569:                                              ; preds = %568, %565
  %570 = load ptr, ptr %7, align 8, !tbaa !76
  %571 = ptrtoint ptr %566 to i64
  %572 = ptrtoint ptr %570 to i64
  %573 = sub i64 %571, %572
  %574 = trunc i64 %573 to i32
  br label %584

575:                                              ; preds = %543
  %576 = ptrtoint ptr %3 to i64
  %577 = sext i32 %141 to i64
  %578 = load ptr, ptr %7, align 8, !tbaa !76
  %579 = ptrtoint ptr %578 to i64
  %580 = sub i64 %576, %579
  %581 = icmp slt i64 %580, %577
  %582 = trunc i64 %580 to i32
  %583 = select i1 %581, i32 %582, i32 %141, !prof !106
  br label %584

584:                                              ; preds = %575, %569
  %585 = phi i32 [ %574, %569 ], [ %583, %575 ]
  switch i32 %88, label %726 [
    i32 90, label %586
    i32 65, label %612
  ], !prof !107

586:                                              ; preds = %584
  %587 = load ptr, ptr %7, align 8, !tbaa !76
  %588 = sext i32 %585 to i64
  %589 = getelementptr inbounds i8, ptr %587, i64 %588
  %590 = icmp sgt i32 %585, 0
  br i1 %590, label %591, label %598

591:                                              ; preds = %586, %595
  %592 = phi ptr [ %596, %595 ], [ %587, %586 ]
  %593 = load i8, ptr %592, align 1, !tbaa !55
  %594 = icmp eq i8 %593, 0
  br i1 %594, label %598, label %595

595:                                              ; preds = %591
  %596 = getelementptr inbounds i8, ptr %592, i64 1
  %597 = icmp ult ptr %596, %589
  br i1 %597, label %591, label %598, !llvm.loop !108

598:                                              ; preds = %595, %591, %586
  %599 = phi ptr [ %587, %586 ], [ %596, %595 ], [ %592, %591 ]
  %600 = ptrtoint ptr %599 to i64
  %601 = ptrtoint ptr %587 to i64
  %602 = sub i64 %600, %601
  %603 = call ptr @Perl_newSVpvn(ptr noundef %587, i64 noundef %602) #11
  br i1 %82, label %604, label %730

604:                                              ; preds = %598
  %605 = load ptr, ptr %7, align 8, !tbaa !76
  %606 = ptrtoint ptr %605 to i64
  %607 = icmp ne ptr %599, %3
  %608 = zext i1 %607 to i64
  %609 = add i64 %608, %600
  %610 = sub i64 %609, %606
  %611 = trunc i64 %610 to i32
  br label %730

612:                                              ; preds = %584
  br i1 %545, label %699, label %613

613:                                              ; preds = %612
  %614 = load i32, ptr %40, align 8, !tbaa !74
  %615 = and i32 %614, 64
  %616 = icmp eq i32 %615, 0
  br i1 %616, label %699, label %617

617:                                              ; preds = %613
  %618 = load ptr, ptr %7, align 8, !tbaa !76
  %619 = sext i32 %585 to i64
  %620 = getelementptr inbounds i8, ptr %618, i64 %619
  %621 = getelementptr inbounds i8, ptr %620, i64 -1
  %622 = icmp ult ptr %621, %618
  br i1 %622, label %695, label %623

623:                                              ; preds = %617, %684
  %624 = phi i1 [ %686, %684 ], [ %622, %617 ]
  %625 = phi ptr [ %685, %684 ], [ %621, %617 ]
  %626 = phi ptr [ %625, %684 ], [ %620, %617 ]
  %627 = load i8, ptr %625, align 1, !tbaa !55
  %628 = icmp eq i8 %627, 0
  br i1 %628, label %684, label %629

629:                                              ; preds = %623
  %630 = zext i8 %627 to i32
  %631 = and i32 %630, 192
  %632 = icmp eq i32 %631, 128
  br i1 %632, label %684, label %633

633:                                              ; preds = %629
  %634 = icmp sgt i8 %627, -1
  br i1 %634, label %635, label %641

635:                                              ; preds = %633
  %636 = zext nneg i8 %627 to i64
  %637 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %636
  %638 = load i32, ptr %637, align 4, !tbaa !92
  %639 = and i32 %638, 1024
  %640 = icmp eq i32 %639, 0
  br i1 %640, label %687, label %684

641:                                              ; preds = %633
  %642 = and i32 %630, 254
  %643 = icmp eq i32 %642, 194
  br i1 %643, label %644, label %657

644:                                              ; preds = %641
  %645 = and i8 %627, 28
  %646 = icmp eq i8 %645, 0
  br i1 %646, label %647, label %687

647:                                              ; preds = %644
  %648 = shl i8 %627, 6
  %649 = load i8, ptr %626, align 1, !tbaa !55
  %650 = and i8 %649, 63
  %651 = or disjoint i8 %650, %648
  %652 = zext i8 %651 to i64
  %653 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %652
  %654 = load i32, ptr %653, align 4, !tbaa !92
  %655 = and i32 %654, 1024
  %656 = icmp eq i32 %655, 0
  br i1 %656, label %687, label %684

657:                                              ; preds = %641
  switch i8 %627, label %687 [
    i8 -31, label %658
    i8 -30, label %665
    i8 -29, label %677
  ]

658:                                              ; preds = %657
  %659 = load i8, ptr %626, align 1, !tbaa !55
  %660 = icmp eq i8 %659, -102
  br i1 %660, label %661, label %687

661:                                              ; preds = %658
  %662 = getelementptr inbounds i8, ptr %626, i64 1
  %663 = load i8, ptr %662, align 1, !tbaa !55
  %664 = icmp eq i8 %663, -128
  br i1 %664, label %684, label %687

665:                                              ; preds = %657
  %666 = load i8, ptr %626, align 1, !tbaa !55
  switch i8 %666, label %687 [
    i8 -128, label %667
    i8 -127, label %673
  ]

667:                                              ; preds = %665
  %668 = getelementptr inbounds i8, ptr %626, i64 1
  %669 = load i8, ptr %668, align 1, !tbaa !55
  %670 = freeze i8 %669
  %671 = icmp ult i8 %670, -117
  br i1 %671, label %684, label %672

672:                                              ; preds = %667
  switch i8 %670, label %687 [
    i8 -81, label %684
    i8 -87, label %684
    i8 -88, label %684
  ]

673:                                              ; preds = %665
  %674 = getelementptr inbounds i8, ptr %626, i64 1
  %675 = load i8, ptr %674, align 1, !tbaa !55
  %676 = icmp eq i8 %675, -97
  br i1 %676, label %684, label %687

677:                                              ; preds = %657
  %678 = load i8, ptr %626, align 1, !tbaa !55
  %679 = icmp eq i8 %678, -128
  br i1 %679, label %680, label %687

680:                                              ; preds = %677
  %681 = getelementptr inbounds i8, ptr %626, i64 1
  %682 = load i8, ptr %681, align 1, !tbaa !55
  %683 = icmp eq i8 %682, -128
  br i1 %683, label %684, label %687

684:                                              ; preds = %672, %672, %672, %667, %623, %629, %635, %647, %661, %673, %680
  %685 = getelementptr inbounds i8, ptr %625, i64 -1
  %686 = icmp ult ptr %685, %618
  br i1 %686, label %695, label %623, !llvm.loop !109

687:                                              ; preds = %680, %673, %672, %661, %647, %657, %665, %635, %644, %658, %677
  br i1 %624, label %695, label %688

688:                                              ; preds = %687
  %689 = load i8, ptr %625, align 1, !tbaa !55
  %690 = zext i8 %689 to i64
  %691 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %690
  %692 = load i8, ptr %691, align 1, !tbaa !55
  %693 = zext i8 %692 to i64
  %694 = getelementptr inbounds i8, ptr %625, i64 %693
  br label %695

695:                                              ; preds = %684, %617, %687, %688
  %696 = phi ptr [ %694, %688 ], [ %626, %687 ], [ %620, %617 ], [ %625, %684 ]
  %697 = icmp ugt ptr %696, %620
  br i1 %697, label %698, label %719

698:                                              ; preds = %695
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.4) #11
  br label %719

699:                                              ; preds = %613, %612
  %700 = load ptr, ptr %7, align 8, !tbaa !76
  %701 = sext i32 %585 to i64
  %702 = getelementptr inbounds i8, ptr %700, i64 %701
  %703 = getelementptr inbounds i8, ptr %702, i64 -1
  %704 = icmp ult ptr %703, %700
  br i1 %704, label %719, label %705

705:                                              ; preds = %699, %716
  %706 = phi ptr [ %717, %716 ], [ %703, %699 ]
  %707 = phi ptr [ %706, %716 ], [ %702, %699 ]
  %708 = load i8, ptr %706, align 1, !tbaa !55
  %709 = icmp eq i8 %708, 0
  br i1 %709, label %716, label %710

710:                                              ; preds = %705
  %711 = zext i8 %708 to i64
  %712 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %711
  %713 = load i32, ptr %712, align 4, !tbaa !92
  %714 = and i32 %713, 17408
  %715 = icmp eq i32 %714, 17408
  br i1 %715, label %716, label %719

716:                                              ; preds = %705, %710
  %717 = getelementptr inbounds i8, ptr %706, i64 -1
  %718 = icmp ult ptr %717, %700
  br i1 %718, label %719, label %705, !llvm.loop !110

719:                                              ; preds = %710, %716, %699, %695, %698
  %720 = phi ptr [ %696, %698 ], [ %696, %695 ], [ %702, %699 ], [ %706, %716 ], [ %707, %710 ]
  %721 = load ptr, ptr %7, align 8, !tbaa !76
  %722 = ptrtoint ptr %720 to i64
  %723 = ptrtoint ptr %721 to i64
  %724 = sub i64 %722, %723
  %725 = call ptr @Perl_newSVpvn(ptr noundef %721, i64 noundef %724) #11
  br label %730

726:                                              ; preds = %584
  %727 = load ptr, ptr %7, align 8, !tbaa !76
  %728 = sext i32 %585 to i64
  %729 = call ptr @Perl_newSVpvn(ptr noundef %727, i64 noundef %728) #11
  br label %730

730:                                              ; preds = %598, %604, %719, %726
  %731 = phi i32 [ %585, %719 ], [ %585, %726 ], [ %611, %604 ], [ %585, %598 ]
  %732 = phi ptr [ %725, %719 ], [ %729, %726 ], [ %603, %604 ], [ %603, %598 ]
  br i1 %545, label %742, label %733, !prof !104

733:                                              ; preds = %730
  %734 = getelementptr inbounds %struct.sv, ptr %732, i64 0, i32 2
  %735 = load i32, ptr %734, align 4, !tbaa !111
  %736 = or i32 %735, 536870912
  store i32 %736, ptr %734, align 4, !tbaa !111
  %737 = load i32, ptr %40, align 8, !tbaa !74
  %738 = and i32 %737, 64
  %739 = icmp eq i32 %738, 0
  br i1 %739, label %740, label %742

740:                                              ; preds = %733
  %741 = call zeroext i1 @Perl_sv_utf8_downgrade(ptr noundef %732, i1 noundef zeroext false) #11
  br label %742

742:                                              ; preds = %733, %740, %730
  %743 = load ptr, ptr @PL_stack_max, align 8, !tbaa !76
  %744 = ptrtoint ptr %743 to i64
  %745 = ptrtoint ptr %142 to i64
  %746 = sub i64 %744, %745
  %747 = icmp slt i64 %746, 8
  br i1 %747, label %748, label %750, !prof !106

748:                                              ; preds = %742
  %749 = call ptr @Perl_stack_grow(ptr noundef %142, ptr noundef %142, i64 noundef 1) #11
  br label %750

750:                                              ; preds = %742, %748
  %751 = phi ptr [ %749, %748 ], [ %142, %742 ]
  %752 = call ptr @Perl_sv_2mortal(ptr noundef %732) #11
  %753 = getelementptr inbounds ptr, ptr %751, i64 1
  store ptr %752, ptr %753, align 8, !tbaa !76
  %754 = load ptr, ptr %7, align 8, !tbaa !76
  %755 = sext i32 %731 to i64
  %756 = getelementptr inbounds i8, ptr %754, i64 %755
  store ptr %756, ptr %7, align 8, !tbaa !76
  br label %2502

757:                                              ; preds = %140, %140
  br i1 %82, label %766, label %758

758:                                              ; preds = %757
  %759 = ptrtoint ptr %3 to i64
  %760 = sext i32 %141 to i64
  %761 = load ptr, ptr %7, align 8, !tbaa !76
  %762 = ptrtoint ptr %761 to i64
  %763 = sub i64 %759, %762
  %764 = shl nsw i64 %763, 3
  %765 = icmp slt i64 %764, %760
  br i1 %765, label %766, label %773

766:                                              ; preds = %758, %757
  %767 = ptrtoint ptr %3 to i64
  %768 = load ptr, ptr %7, align 8, !tbaa !76
  %769 = ptrtoint ptr %768 to i64
  %770 = sub i64 %767, %769
  %771 = trunc i64 %770 to i32
  %772 = shl i32 %771, 3
  br label %773

773:                                              ; preds = %766, %758
  %774 = phi i32 [ %772, %766 ], [ %141, %758 ]
  %775 = icmp eq i32 %95, 0
  br i1 %775, label %854, label %776

776:                                              ; preds = %773
  %777 = and i8 %90, 1
  %778 = icmp eq i8 %777, 0
  %779 = icmp sgt i32 %774, 7
  br i1 %778, label %784, label %780

780:                                              ; preds = %776
  %781 = load ptr, ptr %7, align 8
  %782 = icmp ult ptr %781, %3
  %783 = select i1 %779, i1 %782, i1 false
  br i1 %783, label %787, label %814

784:                                              ; preds = %776
  br i1 %779, label %785, label %814

785:                                              ; preds = %784
  %786 = load ptr, ptr %7, align 8, !tbaa !76
  br label %801

787:                                              ; preds = %780, %787
  %788 = phi i64 [ %795, %787 ], [ %93, %780 ]
  %789 = phi i32 [ %796, %787 ], [ %774, %780 ]
  %790 = call fastcc zeroext i8 @utf8_to_byte(ptr noundef nonnull %7, ptr noundef nonnull %3, i32 noundef %88)
  %791 = zext i8 %790 to i64
  %792 = getelementptr inbounds [256 x i8], ptr @PL_bitcount, i64 0, i64 %791
  %793 = load i8, ptr %792, align 1, !tbaa !55
  %794 = sext i8 %793 to i64
  %795 = add i64 %788, %794
  %796 = add nsw i32 %789, -8
  %797 = icmp sgt i32 %789, 15
  %798 = load ptr, ptr %7, align 8
  %799 = icmp ult ptr %798, %3
  %800 = select i1 %797, i1 %799, i1 false
  br i1 %800, label %787, label %814, !llvm.loop !113

801:                                              ; preds = %785, %801
  %802 = phi i64 [ %811, %801 ], [ %93, %785 ]
  %803 = phi i32 [ %812, %801 ], [ %774, %785 ]
  %804 = phi ptr [ %805, %801 ], [ %786, %785 ]
  %805 = getelementptr inbounds i8, ptr %804, i64 1
  store ptr %805, ptr %7, align 8, !tbaa !76
  %806 = load i8, ptr %804, align 1, !tbaa !55
  %807 = zext i8 %806 to i64
  %808 = getelementptr inbounds [256 x i8], ptr @PL_bitcount, i64 0, i64 %807
  %809 = load i8, ptr %808, align 1, !tbaa !55
  %810 = sext i8 %809 to i64
  %811 = add i64 %802, %810
  %812 = add nsw i32 %803, -8
  %813 = icmp sgt i32 %803, 15
  br i1 %813, label %801, label %814, !llvm.loop !114

814:                                              ; preds = %787, %801, %780, %784
  %815 = phi i32 [ %774, %784 ], [ %774, %780 ], [ %812, %801 ], [ %796, %787 ]
  %816 = phi i64 [ %93, %784 ], [ %93, %780 ], [ %811, %801 ], [ %795, %787 ]
  %817 = icmp eq i32 %815, 0
  br i1 %817, label %2502, label %818

818:                                              ; preds = %814
  %819 = load ptr, ptr %7, align 8, !tbaa !76
  %820 = icmp ult ptr %819, %3
  br i1 %820, label %821, label %2502

821:                                              ; preds = %818
  br i1 %778, label %824, label %822

822:                                              ; preds = %821
  %823 = call fastcc zeroext i8 @utf8_to_byte(ptr noundef nonnull %7, ptr noundef %3, i32 noundef %88)
  br label %827

824:                                              ; preds = %821
  %825 = getelementptr inbounds i8, ptr %819, i64 1
  store ptr %825, ptr %7, align 8, !tbaa !76
  %826 = load i8, ptr %819, align 1, !tbaa !55
  br label %827

827:                                              ; preds = %824, %822
  %828 = phi i8 [ %823, %822 ], [ %826, %824 ]
  %829 = icmp eq i32 %88, 98
  %830 = add nsw i32 %815, -1
  %831 = icmp sgt i32 %815, 0
  br i1 %829, label %833, label %832

832:                                              ; preds = %827
  br i1 %831, label %844, label %2502

833:                                              ; preds = %827
  br i1 %831, label %834, label %2502

834:                                              ; preds = %833, %834
  %835 = phi i32 [ %842, %834 ], [ %830, %833 ]
  %836 = phi i64 [ %840, %834 ], [ %816, %833 ]
  %837 = phi i8 [ %841, %834 ], [ %828, %833 ]
  %838 = and i8 %837, 1
  %839 = zext nneg i8 %838 to i64
  %840 = add i64 %836, %839
  %841 = lshr i8 %837, 1
  %842 = add nsw i32 %835, -1
  %843 = icmp sgt i32 %835, 0
  br i1 %843, label %834, label %2502, !llvm.loop !115

844:                                              ; preds = %832, %844
  %845 = phi i32 [ %852, %844 ], [ %830, %832 ]
  %846 = phi i64 [ %850, %844 ], [ %816, %832 ]
  %847 = phi i8 [ %851, %844 ], [ %828, %832 ]
  %848 = lshr i8 %847, 7
  %849 = zext nneg i8 %848 to i64
  %850 = add i64 %846, %849
  %851 = shl i8 %847, 1
  %852 = add nsw i32 %845, -1
  %853 = icmp sgt i32 %845, 0
  br i1 %853, label %844, label %2502, !llvm.loop !116

854:                                              ; preds = %773
  %855 = call i32 @llvm.umax.i32(i32 %774, i32 1)
  %856 = sext i32 %855 to i64
  %857 = call ptr @Perl_newSV(i64 noundef %856) #11
  %858 = call ptr @Perl_sv_2mortal(ptr noundef %857) #11
  %859 = getelementptr inbounds %struct.sv, ptr %858, i64 0, i32 2
  %860 = load i32, ptr %859, align 4, !tbaa !111
  %861 = or i32 %860, 17408
  store i32 %861, ptr %859, align 4, !tbaa !111
  %862 = getelementptr inbounds %struct.sv, ptr %858, i64 0, i32 3
  %863 = load ptr, ptr %862, align 8, !tbaa !55
  %864 = icmp eq i32 %88, 98
  %865 = icmp sgt i32 %774, 0
  br i1 %864, label %870, label %866

866:                                              ; preds = %854
  br i1 %865, label %867, label %922

867:                                              ; preds = %866
  %868 = and i8 %90, 1
  %869 = icmp eq i8 %868, 0
  br label %898

870:                                              ; preds = %854
  br i1 %865, label %871, label %922

871:                                              ; preds = %870
  %872 = and i8 %90, 1
  %873 = icmp eq i8 %872, 0
  br label %874

874:                                              ; preds = %871, %891
  %875 = phi i32 [ 0, %871 ], [ %896, %891 ]
  %876 = phi i8 [ 0, %871 ], [ %892, %891 ]
  %877 = phi ptr [ %863, %871 ], [ %895, %891 ]
  %878 = and i32 %875, 7
  %879 = icmp eq i32 %878, 0
  br i1 %879, label %882, label %880

880:                                              ; preds = %874
  %881 = lshr i8 %876, 1
  br label %891

882:                                              ; preds = %874
  %883 = load ptr, ptr %7, align 8, !tbaa !76
  br i1 %873, label %888, label %884

884:                                              ; preds = %882
  %885 = icmp ult ptr %883, %3
  br i1 %885, label %886, label %922

886:                                              ; preds = %884
  %887 = call fastcc zeroext i8 @utf8_to_byte(ptr noundef nonnull %7, ptr noundef %3, i32 noundef 98)
  br label %891

888:                                              ; preds = %882
  %889 = getelementptr inbounds i8, ptr %883, i64 1
  store ptr %889, ptr %7, align 8, !tbaa !76
  %890 = load i8, ptr %883, align 1, !tbaa !55
  br label %891

891:                                              ; preds = %886, %888, %880
  %892 = phi i8 [ %881, %880 ], [ %887, %886 ], [ %890, %888 ]
  %893 = and i8 %892, 1
  %894 = or disjoint i8 %893, 48
  %895 = getelementptr inbounds i8, ptr %877, i64 1
  store i8 %894, ptr %877, align 1, !tbaa !55
  %896 = add nuw nsw i32 %875, 1
  %897 = icmp eq i32 %896, %774
  br i1 %897, label %922, label %874, !llvm.loop !117

898:                                              ; preds = %867, %915
  %899 = phi i32 [ 0, %867 ], [ %920, %915 ]
  %900 = phi i8 [ 0, %867 ], [ %916, %915 ]
  %901 = phi ptr [ %863, %867 ], [ %919, %915 ]
  %902 = and i32 %899, 7
  %903 = icmp eq i32 %902, 0
  br i1 %903, label %906, label %904

904:                                              ; preds = %898
  %905 = shl i8 %900, 1
  br label %915

906:                                              ; preds = %898
  %907 = load ptr, ptr %7, align 8, !tbaa !76
  br i1 %869, label %912, label %908

908:                                              ; preds = %906
  %909 = icmp ult ptr %907, %3
  br i1 %909, label %910, label %922

910:                                              ; preds = %908
  %911 = call fastcc zeroext i8 @utf8_to_byte(ptr noundef nonnull %7, ptr noundef %3, i32 noundef %88)
  br label %915

912:                                              ; preds = %906
  %913 = getelementptr inbounds i8, ptr %907, i64 1
  store ptr %913, ptr %7, align 8, !tbaa !76
  %914 = load i8, ptr %907, align 1, !tbaa !55
  br label %915

915:                                              ; preds = %910, %912, %904
  %916 = phi i8 [ %905, %904 ], [ %911, %910 ], [ %914, %912 ]
  %917 = icmp sgt i8 %916, -1
  %918 = select i1 %917, i8 48, i8 49
  %919 = getelementptr inbounds i8, ptr %901, i64 1
  store i8 %918, ptr %901, align 1, !tbaa !55
  %920 = add nuw nsw i32 %899, 1
  %921 = icmp eq i32 %920, %774
  br i1 %921, label %922, label %898, !llvm.loop !118

922:                                              ; preds = %908, %915, %884, %891, %866, %870
  %923 = phi ptr [ %863, %870 ], [ %863, %866 ], [ %895, %891 ], [ %877, %884 ], [ %919, %915 ], [ %901, %908 ]
  %924 = phi i32 [ 0, %870 ], [ 0, %866 ], [ %774, %891 ], [ %875, %884 ], [ %774, %915 ], [ %899, %908 ]
  store i8 0, ptr %923, align 1, !tbaa !55
  %925 = load ptr, ptr %862, align 8, !tbaa !55
  %926 = ptrtoint ptr %923 to i64
  %927 = ptrtoint ptr %925 to i64
  %928 = sub i64 %926, %927
  %929 = load ptr, ptr %858, align 8, !tbaa !119
  %930 = getelementptr inbounds %struct.xpv, ptr %929, i64 0, i32 2
  store i64 %928, ptr %930, align 8, !tbaa !120
  %931 = load ptr, ptr @PL_stack_max, align 8, !tbaa !76
  %932 = ptrtoint ptr %931 to i64
  %933 = ptrtoint ptr %142 to i64
  %934 = sub i64 %932, %933
  %935 = icmp slt i64 %934, 8
  br i1 %935, label %936, label %938

936:                                              ; preds = %922
  %937 = call ptr @Perl_stack_grow(ptr noundef %142, ptr noundef %142, i64 noundef 1) #11
  br label %938

938:                                              ; preds = %922, %936
  %939 = phi ptr [ %937, %936 ], [ %142, %922 ]
  %940 = getelementptr inbounds ptr, ptr %939, i64 1
  store ptr %858, ptr %940, align 8, !tbaa !76
  br label %2502

941:                                              ; preds = %140, %140
  br i1 %82, label %950, label %942

942:                                              ; preds = %941
  %943 = ptrtoint ptr %3 to i64
  %944 = sext i32 %141 to i64
  %945 = load ptr, ptr %7, align 8, !tbaa !76
  %946 = ptrtoint ptr %945 to i64
  %947 = sub i64 %943, %946
  %948 = shl nsw i64 %947, 1
  %949 = icmp slt i64 %948, %944
  br i1 %949, label %950, label %957

950:                                              ; preds = %942, %941
  %951 = ptrtoint ptr %3 to i64
  %952 = load ptr, ptr %7, align 8, !tbaa !76
  %953 = ptrtoint ptr %952 to i64
  %954 = sub i64 %951, %953
  %955 = trunc i64 %954 to i32
  %956 = shl i32 %955, 1
  br label %957

957:                                              ; preds = %942, %950
  %958 = phi i32 [ %956, %950 ], [ %141, %942 ]
  %959 = icmp eq i32 %95, 0
  br i1 %959, label %960, label %970

960:                                              ; preds = %957
  %961 = call i32 @llvm.umax.i32(i32 %958, i32 1)
  %962 = sext i32 %961 to i64
  %963 = call ptr @Perl_newSV(i64 noundef %962) #11
  %964 = call ptr @Perl_sv_2mortal(ptr noundef %963) #11
  %965 = getelementptr inbounds %struct.sv, ptr %964, i64 0, i32 2
  %966 = load i32, ptr %965, align 4, !tbaa !111
  %967 = or i32 %966, 17408
  store i32 %967, ptr %965, align 4, !tbaa !111
  %968 = getelementptr inbounds %struct.sv, ptr %964, i64 0, i32 3
  %969 = load ptr, ptr %968, align 8, !tbaa !55
  br label %970

970:                                              ; preds = %960, %957
  %971 = phi ptr [ null, %957 ], [ %969, %960 ]
  %972 = phi ptr [ %96, %957 ], [ %964, %960 ]
  %973 = icmp eq i32 %88, 104
  %974 = icmp sgt i32 %958, 0
  br i1 %973, label %979, label %975

975:                                              ; preds = %970
  br i1 %974, label %976, label %1041

976:                                              ; preds = %975
  %977 = and i8 %90, 1
  %978 = icmp eq i8 %977, 0
  br label %1012

979:                                              ; preds = %970
  br i1 %974, label %980, label %1041

980:                                              ; preds = %979
  %981 = and i8 %90, 1
  %982 = icmp eq i8 %981, 0
  br label %983

983:                                              ; preds = %980, %1008
  %984 = phi i8 [ 0, %980 ], [ %1001, %1008 ]
  %985 = phi ptr [ %971, %980 ], [ %1009, %1008 ]
  %986 = phi i32 [ 0, %980 ], [ %1010, %1008 ]
  %987 = and i32 %986, 1
  %988 = icmp eq i32 %987, 0
  br i1 %988, label %991, label %989

989:                                              ; preds = %983
  %990 = lshr i8 %984, 4
  br label %1000

991:                                              ; preds = %983
  %992 = load ptr, ptr %7, align 8, !tbaa !76
  br i1 %982, label %997, label %993

993:                                              ; preds = %991
  %994 = icmp ult ptr %992, %3
  br i1 %994, label %995, label %1041

995:                                              ; preds = %993
  %996 = call fastcc zeroext i8 @utf8_to_byte(ptr noundef nonnull %7, ptr noundef %3, i32 noundef 104)
  br label %1000

997:                                              ; preds = %991
  %998 = getelementptr inbounds i8, ptr %992, i64 1
  store ptr %998, ptr %7, align 8, !tbaa !76
  %999 = load i8, ptr %992, align 1, !tbaa !55
  br label %1000

1000:                                             ; preds = %995, %997, %989
  %1001 = phi i8 [ %990, %989 ], [ %996, %995 ], [ %999, %997 ]
  br i1 %959, label %1002, label %1008

1002:                                             ; preds = %1000
  %1003 = and i8 %1001, 15
  %1004 = zext nneg i8 %1003 to i64
  %1005 = getelementptr inbounds [0 x i8], ptr @PL_hexdigit, i64 0, i64 %1004
  %1006 = load i8, ptr %1005, align 1, !tbaa !55
  %1007 = getelementptr inbounds i8, ptr %985, i64 1
  store i8 %1006, ptr %985, align 1, !tbaa !55
  br label %1008

1008:                                             ; preds = %1000, %1002
  %1009 = phi ptr [ %985, %1000 ], [ %1007, %1002 ]
  %1010 = add nuw nsw i32 %986, 1
  %1011 = icmp eq i32 %1010, %958
  br i1 %1011, label %1041, label %983, !llvm.loop !122

1012:                                             ; preds = %976, %1037
  %1013 = phi i8 [ 0, %976 ], [ %1030, %1037 ]
  %1014 = phi ptr [ %971, %976 ], [ %1038, %1037 ]
  %1015 = phi i32 [ 0, %976 ], [ %1039, %1037 ]
  %1016 = and i32 %1015, 1
  %1017 = icmp eq i32 %1016, 0
  br i1 %1017, label %1020, label %1018

1018:                                             ; preds = %1012
  %1019 = shl i8 %1013, 4
  br label %1029

1020:                                             ; preds = %1012
  %1021 = load ptr, ptr %7, align 8, !tbaa !76
  br i1 %978, label %1026, label %1022

1022:                                             ; preds = %1020
  %1023 = icmp ult ptr %1021, %3
  br i1 %1023, label %1024, label %1041

1024:                                             ; preds = %1022
  %1025 = call fastcc zeroext i8 @utf8_to_byte(ptr noundef nonnull %7, ptr noundef %3, i32 noundef %88)
  br label %1029

1026:                                             ; preds = %1020
  %1027 = getelementptr inbounds i8, ptr %1021, i64 1
  store ptr %1027, ptr %7, align 8, !tbaa !76
  %1028 = load i8, ptr %1021, align 1, !tbaa !55
  br label %1029

1029:                                             ; preds = %1024, %1026, %1018
  %1030 = phi i8 [ %1019, %1018 ], [ %1025, %1024 ], [ %1028, %1026 ]
  br i1 %959, label %1031, label %1037

1031:                                             ; preds = %1029
  %1032 = lshr i8 %1030, 4
  %1033 = zext nneg i8 %1032 to i64
  %1034 = getelementptr inbounds [0 x i8], ptr @PL_hexdigit, i64 0, i64 %1033
  %1035 = load i8, ptr %1034, align 1, !tbaa !55
  %1036 = getelementptr inbounds i8, ptr %1014, i64 1
  store i8 %1035, ptr %1014, align 1, !tbaa !55
  br label %1037

1037:                                             ; preds = %1029, %1031
  %1038 = phi ptr [ %1014, %1029 ], [ %1036, %1031 ]
  %1039 = add nuw nsw i32 %1015, 1
  %1040 = icmp eq i32 %1039, %958
  br i1 %1040, label %1041, label %1012, !llvm.loop !123

1041:                                             ; preds = %1022, %1037, %993, %1008, %975, %979
  %1042 = phi i32 [ 0, %979 ], [ 0, %975 ], [ %958, %1008 ], [ %986, %993 ], [ %958, %1037 ], [ %1015, %1022 ]
  %1043 = phi ptr [ %971, %979 ], [ %971, %975 ], [ %1009, %1008 ], [ %985, %993 ], [ %1038, %1037 ], [ %1014, %1022 ]
  br i1 %959, label %1044, label %2502

1044:                                             ; preds = %1041
  store i8 0, ptr %1043, align 1, !tbaa !55
  %1045 = getelementptr inbounds %struct.sv, ptr %972, i64 0, i32 3
  %1046 = load ptr, ptr %1045, align 8, !tbaa !55
  %1047 = ptrtoint ptr %1043 to i64
  %1048 = ptrtoint ptr %1046 to i64
  %1049 = sub i64 %1047, %1048
  %1050 = load ptr, ptr %972, align 8, !tbaa !119
  %1051 = getelementptr inbounds %struct.xpv, ptr %1050, i64 0, i32 2
  store i64 %1049, ptr %1051, align 8, !tbaa !120
  %1052 = load ptr, ptr @PL_stack_max, align 8, !tbaa !76
  %1053 = ptrtoint ptr %1052 to i64
  %1054 = ptrtoint ptr %142 to i64
  %1055 = sub i64 %1053, %1054
  %1056 = icmp slt i64 %1055, 8
  br i1 %1056, label %1057, label %1059

1057:                                             ; preds = %1044
  %1058 = call ptr @Perl_stack_grow(ptr noundef %142, ptr noundef %142, i64 noundef 1) #11
  br label %1059

1059:                                             ; preds = %1044, %1057
  %1060 = phi ptr [ %1058, %1057 ], [ %142, %1044 ]
  %1061 = getelementptr inbounds ptr, ptr %1060, i64 1
  store ptr %972, ptr %1061, align 8, !tbaa !76
  br label %2502

1062:                                             ; preds = %140
  %1063 = icmp eq i32 %141, 0
  br i1 %1063, label %1064, label %1070, !prof !86

1064:                                             ; preds = %1062
  br i1 %91, label %1065, label %2502

1065:                                             ; preds = %1064
  %1066 = load i32, ptr %40, align 8, !tbaa !74
  %1067 = trunc i32 %1066 to i8
  %1068 = lshr i8 %1067, 3
  %1069 = and i8 %1068, 1
  br label %2502

1070:                                             ; preds = %1062, %140
  %1071 = add nsw i32 %141, -1
  %1072 = icmp sgt i32 %141, 0
  %1073 = load ptr, ptr %7, align 8
  %1074 = icmp ult ptr %1073, %3
  %1075 = select i1 %1072, i1 %1074, i1 false, !prof !124
  br i1 %1075, label %1076, label %2502, !prof !125

1076:                                             ; preds = %1070
  %1077 = and i8 %90, 1
  %1078 = icmp eq i8 %1077, 0
  %1079 = icmp ne i32 %88, 67
  %1080 = icmp eq i32 %95, 0
  br label %1081

1081:                                             ; preds = %1076, %1125
  %1082 = phi ptr [ %1073, %1076 ], [ %1131, %1125 ]
  %1083 = phi i32 [ %1071, %1076 ], [ %1129, %1125 ]
  %1084 = phi ptr [ %142, %1076 ], [ %1128, %1125 ]
  %1085 = phi i64 [ %93, %1076 ], [ %1127, %1125 ]
  %1086 = phi double [ %92, %1076 ], [ %1126, %1125 ]
  br i1 %1078, label %1103, label %1087, !prof !88

1087:                                             ; preds = %1081
  %1088 = ptrtoint ptr %3 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #11
  %1089 = ptrtoint ptr %1082 to i64
  %1090 = sub i64 %1088, %1089
  %1091 = call zeroext i1 @Perl_ckwarn(i32 noundef 44) #11
  %1092 = select i1 %1091, i32 0, i32 -8161
  %1093 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %1082, i64 noundef %1090, ptr noundef nonnull %9, i32 noundef %1092) #11
  %1094 = trunc i64 %1093 to i32
  %1095 = load i64, ptr %9, align 8
  %1096 = add i64 %1095, 1
  %1097 = icmp ult i64 %1096, 2
  br i1 %1097, label %1098, label %1099

1098:                                             ; preds = %1087
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.4) #11
  br label %1099

1099:                                             ; preds = %1087, %1098
  %1100 = load i64, ptr %9, align 8, !tbaa !63
  %1101 = load ptr, ptr %7, align 8, !tbaa !76
  %1102 = getelementptr inbounds i8, ptr %1101, i64 %1100
  store ptr %1102, ptr %7, align 8, !tbaa !76
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  br label %1107

1103:                                             ; preds = %1081
  %1104 = getelementptr inbounds i8, ptr %1082, i64 1
  store ptr %1104, ptr %7, align 8, !tbaa !76
  %1105 = load i8, ptr %1082, align 1, !tbaa !55
  %1106 = zext i8 %1105 to i32
  br label %1107

1107:                                             ; preds = %1103, %1099
  %1108 = phi i32 [ %1094, %1099 ], [ %1106, %1103 ]
  %1109 = icmp sgt i32 %1108, 127
  %1110 = and i1 %1079, %1109
  %1111 = add nsw i32 %1108, -256
  %1112 = select i1 %1110, i32 %1111, i32 %1108, !prof !86
  br i1 %1080, label %1113, label %1117, !prof !88

1113:                                             ; preds = %1107
  %1114 = call ptr @Perl_sv_newmortal() #11
  %1115 = getelementptr inbounds ptr, ptr %1084, i64 1
  store ptr %1114, ptr %1115, align 8, !tbaa !76
  %1116 = sext i32 %1112 to i64
  call void @Perl_sv_setiv(ptr noundef %1114, i64 noundef %1116) #11
  br label %1125

1117:                                             ; preds = %1107
  %1118 = icmp sgt i32 %95, 64
  br i1 %1118, label %1119, label %1122

1119:                                             ; preds = %1117
  %1120 = sitofp i32 %1112 to double
  %1121 = fadd double %1086, %1120
  br label %1125

1122:                                             ; preds = %1117
  %1123 = sext i32 %1112 to i64
  %1124 = add i64 %1085, %1123
  br label %1125

1125:                                             ; preds = %1119, %1122, %1113
  %1126 = phi double [ %1121, %1119 ], [ %1086, %1122 ], [ %1086, %1113 ]
  %1127 = phi i64 [ %1085, %1119 ], [ %1124, %1122 ], [ %1085, %1113 ]
  %1128 = phi ptr [ %1084, %1119 ], [ %1084, %1122 ], [ %1115, %1113 ]
  %1129 = add nsw i32 %1083, -1
  %1130 = icmp sgt i32 %1083, 0
  %1131 = load ptr, ptr %7, align 8
  %1132 = icmp ult ptr %1131, %3
  %1133 = select i1 %1130, i1 %1132, i1 false, !prof !124
  br i1 %1133, label %1081, label %2502, !prof !126, !llvm.loop !127

1134:                                             ; preds = %534, %140
  %1135 = phi i32 [ %141, %140 ], [ %542, %534 ]
  %1136 = and i8 %90, 1
  %1137 = icmp eq i8 %1136, 0
  br i1 %1137, label %1185, label %1138

1138:                                             ; preds = %1134
  %1139 = add nsw i32 %1135, -1
  %1140 = icmp sgt i32 %1135, 0
  %1141 = load ptr, ptr %7, align 8
  %1142 = icmp ult ptr %1141, %3
  %1143 = select i1 %1140, i1 %1142, i1 false
  br i1 %1143, label %1144, label %2502

1144:                                             ; preds = %1138
  %1145 = ptrtoint ptr %3 to i64
  %1146 = icmp eq i32 %95, 0
  %1147 = icmp sgt i32 %95, 64
  br label %1148

1148:                                             ; preds = %1144, %1176
  %1149 = phi ptr [ %1141, %1144 ], [ %1182, %1176 ]
  %1150 = phi i32 [ %1139, %1144 ], [ %1180, %1176 ]
  %1151 = phi ptr [ %142, %1144 ], [ %1179, %1176 ]
  %1152 = phi i64 [ %93, %1144 ], [ %1178, %1176 ]
  %1153 = phi double [ %92, %1144 ], [ %1177, %1176 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #11
  %1154 = ptrtoint ptr %1149 to i64
  %1155 = sub i64 %1145, %1154
  %1156 = call zeroext i1 @Perl_ckwarn(i32 noundef 44) #11
  %1157 = select i1 %1156, i32 0, i32 -8161
  %1158 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %1149, i64 noundef %1155, ptr noundef nonnull %10, i32 noundef %1157) #11
  %1159 = load i64, ptr %10, align 8
  %1160 = add i64 %1159, 1
  %1161 = icmp ult i64 %1160, 2
  br i1 %1161, label %1162, label %1163

1162:                                             ; preds = %1148
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.4) #11
  br label %1163

1163:                                             ; preds = %1148, %1162
  %1164 = load i64, ptr %10, align 8, !tbaa !63
  %1165 = load ptr, ptr %7, align 8, !tbaa !76
  %1166 = getelementptr inbounds i8, ptr %1165, i64 %1164
  store ptr %1166, ptr %7, align 8, !tbaa !76
  br i1 %1146, label %1167, label %1170

1167:                                             ; preds = %1163
  %1168 = call ptr @Perl_sv_newmortal() #11
  %1169 = getelementptr inbounds ptr, ptr %1151, i64 1
  store ptr %1168, ptr %1169, align 8, !tbaa !76
  call void @Perl_sv_setuv(ptr noundef %1168, i64 noundef %1158) #11
  br label %1176

1170:                                             ; preds = %1163
  br i1 %1147, label %1171, label %1174

1171:                                             ; preds = %1170
  %1172 = uitofp i64 %1158 to double
  %1173 = fadd double %1153, %1172
  br label %1176

1174:                                             ; preds = %1170
  %1175 = add i64 %1158, %1152
  br label %1176

1176:                                             ; preds = %1171, %1174, %1167
  %1177 = phi double [ %1173, %1171 ], [ %1153, %1174 ], [ %1153, %1167 ]
  %1178 = phi i64 [ %1152, %1171 ], [ %1175, %1174 ], [ %1152, %1167 ]
  %1179 = phi ptr [ %1151, %1171 ], [ %1151, %1174 ], [ %1169, %1167 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  %1180 = add nsw i32 %1150, -1
  %1181 = icmp sgt i32 %1150, 0
  %1182 = load ptr, ptr %7, align 8
  %1183 = icmp ult ptr %1182, %3
  %1184 = select i1 %1181, i1 %1183, i1 false
  br i1 %1184, label %1148, label %2502, !llvm.loop !128

1185:                                             ; preds = %1134
  %1186 = icmp eq i32 %95, 0
  br i1 %1186, label %1187, label %1201

1187:                                             ; preds = %1185
  %1188 = add nsw i32 %1135, -1
  %1189 = icmp sgt i32 %1135, 0
  br i1 %1189, label %1190, label %2502

1190:                                             ; preds = %1187, %1190
  %1191 = phi i32 [ %1199, %1190 ], [ %1188, %1187 ]
  %1192 = phi ptr [ %1197, %1190 ], [ %142, %1187 ]
  %1193 = load ptr, ptr %7, align 8, !tbaa !76
  %1194 = getelementptr inbounds i8, ptr %1193, i64 1
  store ptr %1194, ptr %7, align 8, !tbaa !76
  %1195 = load i8, ptr %1193, align 1, !tbaa !55
  %1196 = call ptr @Perl_sv_newmortal() #11
  %1197 = getelementptr inbounds ptr, ptr %1192, i64 1
  store ptr %1196, ptr %1197, align 8, !tbaa !76
  %1198 = zext i8 %1195 to i64
  call void @Perl_sv_setuv(ptr noundef %1196, i64 noundef %1198) #11
  %1199 = add nsw i32 %1191, -1
  %1200 = icmp sgt i32 %1191, 0
  br i1 %1200, label %1190, label %2502, !llvm.loop !129

1201:                                             ; preds = %1185
  %1202 = icmp sgt i32 %95, 64
  %1203 = add nsw i32 %1135, -1
  %1204 = icmp sgt i32 %1135, 0
  br i1 %1202, label %1208, label %1205

1205:                                             ; preds = %1201
  br i1 %1204, label %1206, label %2502

1206:                                             ; preds = %1205
  %1207 = load ptr, ptr %7, align 8, !tbaa !76
  br label %1221

1208:                                             ; preds = %1201
  br i1 %1204, label %1209, label %2502

1209:                                             ; preds = %1208
  %1210 = load ptr, ptr %7, align 8, !tbaa !76
  br label %1211

1211:                                             ; preds = %1209, %1211
  %1212 = phi i32 [ %1219, %1211 ], [ %1203, %1209 ]
  %1213 = phi double [ %1218, %1211 ], [ %92, %1209 ]
  %1214 = phi ptr [ %1215, %1211 ], [ %1210, %1209 ]
  %1215 = getelementptr inbounds i8, ptr %1214, i64 1
  store ptr %1215, ptr %7, align 8, !tbaa !76
  %1216 = load i8, ptr %1214, align 1, !tbaa !55
  %1217 = uitofp i8 %1216 to double
  %1218 = fadd double %1213, %1217
  %1219 = add nsw i32 %1212, -1
  %1220 = icmp sgt i32 %1212, 0
  br i1 %1220, label %1211, label %2502, !llvm.loop !130

1221:                                             ; preds = %1206, %1221
  %1222 = phi i32 [ %1229, %1221 ], [ %1203, %1206 ]
  %1223 = phi i64 [ %1228, %1221 ], [ %93, %1206 ]
  %1224 = phi ptr [ %1225, %1221 ], [ %1207, %1206 ]
  %1225 = getelementptr inbounds i8, ptr %1224, i64 1
  store ptr %1225, ptr %7, align 8, !tbaa !76
  %1226 = load i8, ptr %1224, align 1, !tbaa !55
  %1227 = zext i8 %1226 to i64
  %1228 = add i64 %1223, %1227
  %1229 = add nsw i32 %1222, -1
  %1230 = icmp sgt i32 %1222, 0
  br i1 %1230, label %1221, label %2502, !llvm.loop !131

1231:                                             ; preds = %140
  %1232 = icmp eq i32 %141, 0
  br i1 %1232, label %1233, label %1241

1233:                                             ; preds = %1231
  %1234 = icmp ne i32 %81, 2
  %1235 = and i1 %1234, %91
  br i1 %1235, label %1236, label %2502

1236:                                             ; preds = %1233
  %1237 = load i32, ptr %40, align 8, !tbaa !74
  %1238 = and i32 %1237, 8
  %1239 = icmp eq i32 %1238, 0
  br i1 %1239, label %1240, label %2502

1240:                                             ; preds = %1236
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.8) #11
  br label %2502

1241:                                             ; preds = %1231
  %1242 = ptrtoint ptr %3 to i64
  %1243 = sext i32 %141 to i64
  %1244 = load ptr, ptr %7, align 8, !tbaa !76
  %1245 = ptrtoint ptr %1244 to i64
  %1246 = sub i64 %1242, %1245
  %1247 = icmp slt i64 %1246, %1243
  %1248 = trunc i64 %1246 to i32
  %1249 = select i1 %1247, i32 %1248, i32 %141
  %1250 = icmp eq i32 %95, 0
  br i1 %1250, label %1251, label %1272

1251:                                             ; preds = %1241
  %1252 = icmp eq i32 %1249, 0
  %1253 = select i1 %43, i32 %1249, i32 1
  %1254 = select i1 %1252, i32 0, i32 %1253
  %1255 = load ptr, ptr @PL_stack_max, align 8, !tbaa !76
  %1256 = ptrtoint ptr %1255 to i64
  %1257 = ptrtoint ptr %142 to i64
  %1258 = sub i64 %1256, %1257
  %1259 = ashr exact i64 %1258, 3
  %1260 = sext i32 %1254 to i64
  %1261 = icmp slt i64 %1259, %1260
  br i1 %1261, label %1262, label %1264

1262:                                             ; preds = %1251
  %1263 = call ptr @Perl_stack_grow(ptr noundef %142, ptr noundef %142, i64 noundef %1260) #11
  br label %1264

1264:                                             ; preds = %1262, %1251
  %1265 = phi ptr [ %1263, %1262 ], [ %142, %1251 ]
  %1266 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !63
  %1267 = add nsw i64 %1266, %1260
  %1268 = load i64, ptr @PL_tmps_max, align 8, !tbaa !63
  %1269 = icmp slt i64 %1267, %1268
  br i1 %1269, label %1272, label %1270

1270:                                             ; preds = %1264
  %1271 = call i64 @Perl_tmps_grow_p(i64 noundef %1267) #11
  br label %1272

1272:                                             ; preds = %1270, %1264, %1241
  %1273 = phi i32 [ %1249, %1241 ], [ %1254, %1264 ], [ %1254, %1270 ]
  %1274 = phi ptr [ %142, %1241 ], [ %1265, %1264 ], [ %1265, %1270 ]
  %1275 = and i8 %90, 1
  %1276 = icmp eq i8 %1275, 0
  %1277 = icmp sgt i32 %95, 64
  br label %1278

1278:                                             ; preds = %1338, %1272
  %1279 = phi i32 [ %1273, %1272 ], [ %1284, %1338 ]
  %1280 = phi double [ %92, %1272 ], [ %1340, %1338 ]
  %1281 = phi i64 [ %93, %1272 ], [ %1341, %1338 ]
  %1282 = phi i64 [ %94, %1272 ], [ %1342, %1338 ]
  %1283 = phi ptr [ %1274, %1272 ], [ %1343, %1338 ]
  %1284 = add nsw i32 %1279, -1
  %1285 = icmp sgt i32 %1279, 0
  %1286 = load ptr, ptr %7, align 8
  %1287 = icmp ult ptr %1286, %3
  %1288 = select i1 %1285, i1 %1287, i1 false
  br i1 %1288, label %1289, label %2502

1289:                                             ; preds = %1278
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #11
  br i1 %1276, label %1312, label %1290

1290:                                             ; preds = %1289
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %12) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #11
  store ptr %1286, ptr %13, align 8, !tbaa !76
  %1291 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %13, ptr noundef %3, ptr noundef nonnull %12, i32 noundef 1, i32 noundef 85)
  br i1 %1291, label %1292, label %1308

1292:                                             ; preds = %1290
  %1293 = getelementptr inbounds [13 x i8], ptr %12, i64 0, i64 1
  %1294 = load i8, ptr %12, align 1, !tbaa !55
  %1295 = zext i8 %1294 to i64
  %1296 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %1295
  %1297 = load i8, ptr %1296, align 1, !tbaa !55
  %1298 = zext i8 %1297 to i32
  %1299 = add nsw i32 %1298, -1
  %1300 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %13, ptr noundef %3, ptr noundef nonnull %1293, i32 noundef %1299, i32 noundef 85)
  br i1 %1300, label %1301, label %1308

1301:                                             ; preds = %1292
  %1302 = zext i8 %1297 to i64
  %1303 = call zeroext i1 @Perl_ckwarn(i32 noundef 44) #11
  %1304 = xor i1 %1303, true
  %1305 = zext i1 %1304 to i32
  %1306 = call i64 @Perl_utf8n_to_uvchr(ptr noundef nonnull %12, i64 noundef %1302, ptr noundef nonnull %11, i32 noundef %1305) #11
  %1307 = load ptr, ptr %13, align 8, !tbaa !76
  store ptr %1307, ptr %7, align 8, !tbaa !76
  br label %1308

1308:                                             ; preds = %1292, %1290, %1301
  %1309 = phi i1 [ true, %1301 ], [ false, %1290 ], [ false, %1292 ]
  %1310 = phi i32 [ 0, %1301 ], [ 93, %1290 ], [ 93, %1292 ]
  %1311 = phi i64 [ %1306, %1301 ], [ %1282, %1290 ], [ %1282, %1292 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %12) #11
  br i1 %1309, label %1327, label %1338

1312:                                             ; preds = %1289
  %1313 = ptrtoint ptr %1286 to i64
  %1314 = sub i64 %1242, %1313
  %1315 = call zeroext i1 @Perl_ckwarn(i32 noundef 44) #11
  %1316 = xor i1 %1315, true
  %1317 = zext i1 %1316 to i32
  %1318 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %1286, i64 noundef %1314, ptr noundef nonnull %11, i32 noundef %1317) #11
  %1319 = load i64, ptr %11, align 8
  %1320 = add i64 %1319, 1
  %1321 = icmp ult i64 %1320, 2
  br i1 %1321, label %1322, label %1323

1322:                                             ; preds = %1312
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.4) #11
  br label %1323

1323:                                             ; preds = %1312, %1322
  %1324 = load i64, ptr %11, align 8, !tbaa !63
  %1325 = load ptr, ptr %7, align 8, !tbaa !76
  %1326 = getelementptr inbounds i8, ptr %1325, i64 %1324
  store ptr %1326, ptr %7, align 8, !tbaa !76
  br label %1327

1327:                                             ; preds = %1308, %1323
  %1328 = phi i64 [ %1311, %1308 ], [ %1318, %1323 ]
  br i1 %1250, label %1329, label %1332

1329:                                             ; preds = %1327
  %1330 = call ptr @Perl_sv_newmortal() #11
  %1331 = getelementptr inbounds ptr, ptr %1283, i64 1
  store ptr %1330, ptr %1331, align 8, !tbaa !76
  call void @Perl_sv_setuv(ptr noundef %1330, i64 noundef %1328) #11
  br label %1338

1332:                                             ; preds = %1327
  br i1 %1277, label %1333, label %1336

1333:                                             ; preds = %1332
  %1334 = uitofp i64 %1328 to double
  %1335 = fadd double %1280, %1334
  br label %1338

1336:                                             ; preds = %1332
  %1337 = add i64 %1328, %1281
  br label %1338

1338:                                             ; preds = %1329, %1336, %1333, %1308
  %1339 = phi i32 [ %1310, %1308 ], [ 0, %1333 ], [ 0, %1336 ], [ 0, %1329 ]
  %1340 = phi double [ %1280, %1308 ], [ %1335, %1333 ], [ %1280, %1336 ], [ %1280, %1329 ]
  %1341 = phi i64 [ %1281, %1308 ], [ %1281, %1333 ], [ %1337, %1336 ], [ %1281, %1329 ]
  %1342 = phi i64 [ %1311, %1308 ], [ %1328, %1333 ], [ %1328, %1336 ], [ %1328, %1329 ]
  %1343 = phi ptr [ %1283, %1308 ], [ %1283, %1333 ], [ %1283, %1336 ], [ %1331, %1329 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #11
  %1344 = icmp eq i32 %1339, 0
  br i1 %1344, label %1278, label %2502

1345:                                             ; preds = %140, %140
  %1346 = add nsw i32 %141, -1
  %1347 = icmp sgt i32 %141, 0
  br i1 %1347, label %1348, label %2502

1348:                                             ; preds = %1345
  %1349 = getelementptr inbounds i8, ptr %14, i64 2
  %1350 = and i8 %90, 1
  %1351 = icmp eq i8 %1350, 0
  %1352 = icmp eq i32 %95, 0
  %1353 = icmp sgt i32 %95, 64
  br label %1354

1354:                                             ; preds = %1348, %1391
  %1355 = phi i32 [ %1346, %1348 ], [ %1395, %1391 ]
  %1356 = phi ptr [ %142, %1348 ], [ %1394, %1391 ]
  %1357 = phi i64 [ %93, %1348 ], [ %1393, %1391 ]
  %1358 = phi double [ %92, %1348 ], [ %1392, %1391 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #11
  br i1 %1351, label %1361, label %1359

1359:                                             ; preds = %1354
  %1360 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %7, ptr noundef %3, ptr noundef nonnull %14, i32 noundef 2, i32 noundef %88)
  br label %1377

1361:                                             ; preds = %1354
  %1362 = load ptr, ptr %7, align 8, !tbaa !76
  br i1 %144, label %1363, label %1372

1363:                                             ; preds = %1361, %1363
  %1364 = phi i64 [ %1367, %1363 ], [ 2, %1361 ]
  %1365 = phi ptr [ %1370, %1363 ], [ %1349, %1361 ]
  %1366 = phi ptr [ %1368, %1363 ], [ %1362, %1361 ]
  %1367 = add nsw i64 %1364, -1
  %1368 = getelementptr inbounds i8, ptr %1366, i64 1
  %1369 = load i8, ptr %1366, align 1, !tbaa !55
  %1370 = getelementptr inbounds i8, ptr %1365, i64 -1
  store i8 %1369, ptr %1370, align 1, !tbaa !55
  %1371 = icmp eq i64 %1367, 0
  br i1 %1371, label %1374, label %1363, !llvm.loop !132

1372:                                             ; preds = %1361
  %1373 = load i16, ptr %1362, align 1
  store i16 %1373, ptr %14, align 2
  br label %1374

1374:                                             ; preds = %1363, %1372
  %1375 = load ptr, ptr %7, align 8, !tbaa !76
  %1376 = getelementptr inbounds i8, ptr %1375, i64 2
  store ptr %1376, ptr %7, align 8, !tbaa !76
  br label %1377

1377:                                             ; preds = %1359, %1374
  br i1 %1352, label %1378, label %1383

1378:                                             ; preds = %1377
  %1379 = call ptr @Perl_sv_newmortal() #11
  %1380 = getelementptr inbounds ptr, ptr %1356, i64 1
  store ptr %1379, ptr %1380, align 8, !tbaa !76
  %1381 = load i16, ptr %14, align 2, !tbaa !133
  %1382 = sext i16 %1381 to i64
  call void @Perl_sv_setiv(ptr noundef %1379, i64 noundef %1382) #11
  br label %1391

1383:                                             ; preds = %1377
  %1384 = load i16, ptr %14, align 2, !tbaa !133
  br i1 %1353, label %1385, label %1388

1385:                                             ; preds = %1383
  %1386 = sitofp i16 %1384 to double
  %1387 = fadd double %1358, %1386
  br label %1391

1388:                                             ; preds = %1383
  %1389 = sext i16 %1384 to i64
  %1390 = add i64 %1357, %1389
  br label %1391

1391:                                             ; preds = %1385, %1388, %1378
  %1392 = phi double [ %1387, %1385 ], [ %1358, %1388 ], [ %1358, %1378 ]
  %1393 = phi i64 [ %1357, %1385 ], [ %1390, %1388 ], [ %1357, %1378 ]
  %1394 = phi ptr [ %1356, %1385 ], [ %1356, %1388 ], [ %1380, %1378 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #11
  %1395 = add nsw i32 %1355, -1
  %1396 = icmp sgt i32 %1355, 0
  br i1 %1396, label %1354, label %2502, !llvm.loop !135

1397:                                             ; preds = %140, %140, %140, %140
  %1398 = add nsw i32 %141, -1
  %1399 = icmp sgt i32 %141, 0
  br i1 %1399, label %1400, label %2502

1400:                                             ; preds = %1397
  %1401 = getelementptr inbounds i8, ptr %15, i64 2
  %1402 = and i8 %90, 1
  %1403 = icmp eq i8 %1402, 0
  %1404 = icmp eq i32 %88, 110
  %1405 = icmp eq i32 %95, 0
  %1406 = icmp sgt i32 %95, 64
  br label %1407

1407:                                             ; preds = %1400, %1448
  %1408 = phi i32 [ %1398, %1400 ], [ %1452, %1448 ]
  %1409 = phi ptr [ %142, %1400 ], [ %1451, %1448 ]
  %1410 = phi i64 [ %93, %1400 ], [ %1450, %1448 ]
  %1411 = phi double [ %92, %1400 ], [ %1449, %1448 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %15) #11
  br i1 %1403, label %1414, label %1412

1412:                                             ; preds = %1407
  %1413 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %7, ptr noundef %3, ptr noundef nonnull %15, i32 noundef 2, i32 noundef %88)
  br label %1430

1414:                                             ; preds = %1407
  %1415 = load ptr, ptr %7, align 8, !tbaa !76
  br i1 %144, label %1416, label %1425

1416:                                             ; preds = %1414, %1416
  %1417 = phi i64 [ %1420, %1416 ], [ 2, %1414 ]
  %1418 = phi ptr [ %1423, %1416 ], [ %1401, %1414 ]
  %1419 = phi ptr [ %1421, %1416 ], [ %1415, %1414 ]
  %1420 = add nsw i64 %1417, -1
  %1421 = getelementptr inbounds i8, ptr %1419, i64 1
  %1422 = load i8, ptr %1419, align 1, !tbaa !55
  %1423 = getelementptr inbounds i8, ptr %1418, i64 -1
  store i8 %1422, ptr %1423, align 1, !tbaa !55
  %1424 = icmp eq i64 %1420, 0
  br i1 %1424, label %1427, label %1416, !llvm.loop !132

1425:                                             ; preds = %1414
  %1426 = load i16, ptr %1415, align 1
  store i16 %1426, ptr %15, align 2
  br label %1427

1427:                                             ; preds = %1416, %1425
  %1428 = load ptr, ptr %7, align 8, !tbaa !76
  %1429 = getelementptr inbounds i8, ptr %1428, i64 2
  store ptr %1429, ptr %7, align 8, !tbaa !76
  br label %1430

1430:                                             ; preds = %1412, %1427
  br i1 %1404, label %1431, label %1434

1431:                                             ; preds = %1430
  %1432 = load i16, ptr %15, align 2, !tbaa !133
  %1433 = call i16 @llvm.bswap.i16(i16 %1432)
  store i16 %1433, ptr %15, align 2, !tbaa !133
  br label %1434

1434:                                             ; preds = %1431, %1430
  br i1 %1405, label %1435, label %1440

1435:                                             ; preds = %1434
  %1436 = call ptr @Perl_sv_newmortal() #11
  %1437 = getelementptr inbounds ptr, ptr %1409, i64 1
  store ptr %1436, ptr %1437, align 8, !tbaa !76
  %1438 = load i16, ptr %15, align 2, !tbaa !133
  %1439 = zext i16 %1438 to i64
  call void @Perl_sv_setuv(ptr noundef %1436, i64 noundef %1439) #11
  br label %1448

1440:                                             ; preds = %1434
  %1441 = load i16, ptr %15, align 2, !tbaa !133
  br i1 %1406, label %1442, label %1445

1442:                                             ; preds = %1440
  %1443 = uitofp i16 %1441 to double
  %1444 = fadd double %1411, %1443
  br label %1448

1445:                                             ; preds = %1440
  %1446 = zext i16 %1441 to i64
  %1447 = add i64 %1410, %1446
  br label %1448

1448:                                             ; preds = %1442, %1445, %1435
  %1449 = phi double [ %1444, %1442 ], [ %1411, %1445 ], [ %1411, %1435 ]
  %1450 = phi i64 [ %1410, %1442 ], [ %1447, %1445 ], [ %1410, %1435 ]
  %1451 = phi ptr [ %1409, %1442 ], [ %1409, %1445 ], [ %1437, %1435 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #11
  %1452 = add nsw i32 %1408, -1
  %1453 = icmp sgt i32 %1408, 0
  br i1 %1453, label %1407, label %2502, !llvm.loop !136

1454:                                             ; preds = %140, %140
  %1455 = add nsw i32 %141, -1
  %1456 = icmp sgt i32 %141, 0
  br i1 %1456, label %1457, label %2502

1457:                                             ; preds = %1454
  %1458 = getelementptr inbounds i8, ptr %16, i64 2
  %1459 = and i8 %90, 1
  %1460 = icmp eq i8 %1459, 0
  %1461 = icmp eq i32 %88, 366
  %1462 = icmp eq i32 %95, 0
  %1463 = icmp sgt i32 %95, 64
  br label %1464

1464:                                             ; preds = %1457, %1505
  %1465 = phi i32 [ %1455, %1457 ], [ %1509, %1505 ]
  %1466 = phi ptr [ %142, %1457 ], [ %1508, %1505 ]
  %1467 = phi i64 [ %93, %1457 ], [ %1507, %1505 ]
  %1468 = phi double [ %92, %1457 ], [ %1506, %1505 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #11
  br i1 %1460, label %1471, label %1469

1469:                                             ; preds = %1464
  %1470 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %7, ptr noundef %3, ptr noundef nonnull %16, i32 noundef 2, i32 noundef %88)
  br label %1487

1471:                                             ; preds = %1464
  %1472 = load ptr, ptr %7, align 8, !tbaa !76
  br i1 %144, label %1473, label %1482

1473:                                             ; preds = %1471, %1473
  %1474 = phi i64 [ %1477, %1473 ], [ 2, %1471 ]
  %1475 = phi ptr [ %1480, %1473 ], [ %1458, %1471 ]
  %1476 = phi ptr [ %1478, %1473 ], [ %1472, %1471 ]
  %1477 = add nsw i64 %1474, -1
  %1478 = getelementptr inbounds i8, ptr %1476, i64 1
  %1479 = load i8, ptr %1476, align 1, !tbaa !55
  %1480 = getelementptr inbounds i8, ptr %1475, i64 -1
  store i8 %1479, ptr %1480, align 1, !tbaa !55
  %1481 = icmp eq i64 %1477, 0
  br i1 %1481, label %1484, label %1473, !llvm.loop !132

1482:                                             ; preds = %1471
  %1483 = load i16, ptr %1472, align 1
  store i16 %1483, ptr %16, align 2
  br label %1484

1484:                                             ; preds = %1473, %1482
  %1485 = load ptr, ptr %7, align 8, !tbaa !76
  %1486 = getelementptr inbounds i8, ptr %1485, i64 2
  store ptr %1486, ptr %7, align 8, !tbaa !76
  br label %1487

1487:                                             ; preds = %1469, %1484
  br i1 %1461, label %1488, label %1491

1488:                                             ; preds = %1487
  %1489 = load i16, ptr %16, align 2, !tbaa !133
  %1490 = call i16 @llvm.bswap.i16(i16 %1489)
  store i16 %1490, ptr %16, align 2, !tbaa !133
  br label %1491

1491:                                             ; preds = %1488, %1487
  br i1 %1462, label %1492, label %1497

1492:                                             ; preds = %1491
  %1493 = call ptr @Perl_sv_newmortal() #11
  %1494 = getelementptr inbounds ptr, ptr %1466, i64 1
  store ptr %1493, ptr %1494, align 8, !tbaa !76
  %1495 = load i16, ptr %16, align 2, !tbaa !133
  %1496 = sext i16 %1495 to i64
  call void @Perl_sv_setiv(ptr noundef %1493, i64 noundef %1496) #11
  br label %1505

1497:                                             ; preds = %1491
  %1498 = load i16, ptr %16, align 2, !tbaa !133
  br i1 %1463, label %1499, label %1502

1499:                                             ; preds = %1497
  %1500 = sitofp i16 %1498 to double
  %1501 = fadd double %1468, %1500
  br label %1505

1502:                                             ; preds = %1497
  %1503 = sext i16 %1498 to i64
  %1504 = add i64 %1467, %1503
  br label %1505

1505:                                             ; preds = %1499, %1502, %1492
  %1506 = phi double [ %1501, %1499 ], [ %1468, %1502 ], [ %1468, %1492 ]
  %1507 = phi i64 [ %1467, %1499 ], [ %1504, %1502 ], [ %1467, %1492 ]
  %1508 = phi ptr [ %1466, %1499 ], [ %1466, %1502 ], [ %1494, %1492 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #11
  %1509 = add nsw i32 %1465, -1
  %1510 = icmp sgt i32 %1465, 0
  br i1 %1510, label %1464, label %2502, !llvm.loop !137

1511:                                             ; preds = %140, %140
  %1512 = add nsw i32 %141, -1
  %1513 = icmp sgt i32 %141, 0
  br i1 %1513, label %1514, label %2502

1514:                                             ; preds = %1511
  %1515 = getelementptr inbounds i8, ptr %17, i64 4
  %1516 = and i8 %90, 1
  %1517 = icmp eq i8 %1516, 0
  %1518 = icmp eq i32 %95, 0
  %1519 = icmp sgt i32 %95, 64
  br label %1520

1520:                                             ; preds = %1514, %1557
  %1521 = phi i32 [ %1512, %1514 ], [ %1561, %1557 ]
  %1522 = phi ptr [ %142, %1514 ], [ %1560, %1557 ]
  %1523 = phi i64 [ %93, %1514 ], [ %1559, %1557 ]
  %1524 = phi double [ %92, %1514 ], [ %1558, %1557 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #11
  br i1 %1517, label %1527, label %1525

1525:                                             ; preds = %1520
  %1526 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %7, ptr noundef %3, ptr noundef nonnull %17, i32 noundef 4, i32 noundef %88)
  br label %1543

1527:                                             ; preds = %1520
  %1528 = load ptr, ptr %7, align 8, !tbaa !76
  br i1 %144, label %1529, label %1538

1529:                                             ; preds = %1527, %1529
  %1530 = phi i64 [ %1533, %1529 ], [ 4, %1527 ]
  %1531 = phi ptr [ %1536, %1529 ], [ %1515, %1527 ]
  %1532 = phi ptr [ %1534, %1529 ], [ %1528, %1527 ]
  %1533 = add nsw i64 %1530, -1
  %1534 = getelementptr inbounds i8, ptr %1532, i64 1
  %1535 = load i8, ptr %1532, align 1, !tbaa !55
  %1536 = getelementptr inbounds i8, ptr %1531, i64 -1
  store i8 %1535, ptr %1536, align 1, !tbaa !55
  %1537 = icmp eq i64 %1533, 0
  br i1 %1537, label %1540, label %1529, !llvm.loop !132

1538:                                             ; preds = %1527
  %1539 = load i32, ptr %1528, align 1
  store i32 %1539, ptr %17, align 4
  br label %1540

1540:                                             ; preds = %1529, %1538
  %1541 = load ptr, ptr %7, align 8, !tbaa !76
  %1542 = getelementptr inbounds i8, ptr %1541, i64 4
  store ptr %1542, ptr %7, align 8, !tbaa !76
  br label %1543

1543:                                             ; preds = %1525, %1540
  br i1 %1518, label %1544, label %1549

1544:                                             ; preds = %1543
  %1545 = call ptr @Perl_sv_newmortal() #11
  %1546 = getelementptr inbounds ptr, ptr %1522, i64 1
  store ptr %1545, ptr %1546, align 8, !tbaa !76
  %1547 = load i32, ptr %17, align 4, !tbaa !92
  %1548 = sext i32 %1547 to i64
  call void @Perl_sv_setiv(ptr noundef %1545, i64 noundef %1548) #11
  br label %1557

1549:                                             ; preds = %1543
  %1550 = load i32, ptr %17, align 4, !tbaa !92
  br i1 %1519, label %1551, label %1554

1551:                                             ; preds = %1549
  %1552 = sitofp i32 %1550 to double
  %1553 = fadd double %1524, %1552
  br label %1557

1554:                                             ; preds = %1549
  %1555 = sext i32 %1550 to i64
  %1556 = add i64 %1523, %1555
  br label %1557

1557:                                             ; preds = %1551, %1554, %1544
  %1558 = phi double [ %1553, %1551 ], [ %1524, %1554 ], [ %1524, %1544 ]
  %1559 = phi i64 [ %1523, %1551 ], [ %1556, %1554 ], [ %1523, %1544 ]
  %1560 = phi ptr [ %1522, %1551 ], [ %1522, %1554 ], [ %1546, %1544 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #11
  %1561 = add nsw i32 %1521, -1
  %1562 = icmp sgt i32 %1521, 0
  br i1 %1562, label %1520, label %2502, !llvm.loop !138

1563:                                             ; preds = %140, %140
  %1564 = add nsw i32 %141, -1
  %1565 = icmp sgt i32 %141, 0
  br i1 %1565, label %1566, label %2502

1566:                                             ; preds = %1563
  %1567 = getelementptr inbounds i8, ptr %18, i64 4
  %1568 = and i8 %90, 1
  %1569 = icmp eq i8 %1568, 0
  %1570 = icmp eq i32 %95, 0
  %1571 = icmp sgt i32 %95, 64
  br label %1572

1572:                                             ; preds = %1566, %1609
  %1573 = phi i32 [ %1564, %1566 ], [ %1613, %1609 ]
  %1574 = phi ptr [ %142, %1566 ], [ %1612, %1609 ]
  %1575 = phi i64 [ %93, %1566 ], [ %1611, %1609 ]
  %1576 = phi double [ %92, %1566 ], [ %1610, %1609 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #11
  br i1 %1569, label %1579, label %1577

1577:                                             ; preds = %1572
  %1578 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %7, ptr noundef %3, ptr noundef nonnull %18, i32 noundef 4, i32 noundef %88)
  br label %1595

1579:                                             ; preds = %1572
  %1580 = load ptr, ptr %7, align 8, !tbaa !76
  br i1 %144, label %1581, label %1590

1581:                                             ; preds = %1579, %1581
  %1582 = phi i64 [ %1585, %1581 ], [ 4, %1579 ]
  %1583 = phi ptr [ %1588, %1581 ], [ %1567, %1579 ]
  %1584 = phi ptr [ %1586, %1581 ], [ %1580, %1579 ]
  %1585 = add nsw i64 %1582, -1
  %1586 = getelementptr inbounds i8, ptr %1584, i64 1
  %1587 = load i8, ptr %1584, align 1, !tbaa !55
  %1588 = getelementptr inbounds i8, ptr %1583, i64 -1
  store i8 %1587, ptr %1588, align 1, !tbaa !55
  %1589 = icmp eq i64 %1585, 0
  br i1 %1589, label %1592, label %1581, !llvm.loop !132

1590:                                             ; preds = %1579
  %1591 = load i32, ptr %1580, align 1
  store i32 %1591, ptr %18, align 4
  br label %1592

1592:                                             ; preds = %1581, %1590
  %1593 = load ptr, ptr %7, align 8, !tbaa !76
  %1594 = getelementptr inbounds i8, ptr %1593, i64 4
  store ptr %1594, ptr %7, align 8, !tbaa !76
  br label %1595

1595:                                             ; preds = %1577, %1592
  br i1 %1570, label %1596, label %1601

1596:                                             ; preds = %1595
  %1597 = call ptr @Perl_sv_newmortal() #11
  %1598 = getelementptr inbounds ptr, ptr %1574, i64 1
  store ptr %1597, ptr %1598, align 8, !tbaa !76
  %1599 = load i32, ptr %18, align 4, !tbaa !92
  %1600 = zext i32 %1599 to i64
  call void @Perl_sv_setuv(ptr noundef %1597, i64 noundef %1600) #11
  br label %1609

1601:                                             ; preds = %1595
  %1602 = load i32, ptr %18, align 4, !tbaa !92
  br i1 %1571, label %1603, label %1606

1603:                                             ; preds = %1601
  %1604 = uitofp i32 %1602 to double
  %1605 = fadd double %1576, %1604
  br label %1609

1606:                                             ; preds = %1601
  %1607 = zext i32 %1602 to i64
  %1608 = add i64 %1575, %1607
  br label %1609

1609:                                             ; preds = %1603, %1606, %1596
  %1610 = phi double [ %1605, %1603 ], [ %1576, %1606 ], [ %1576, %1596 ]
  %1611 = phi i64 [ %1575, %1603 ], [ %1608, %1606 ], [ %1575, %1596 ]
  %1612 = phi ptr [ %1574, %1603 ], [ %1574, %1606 ], [ %1598, %1596 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #11
  %1613 = add nsw i32 %1573, -1
  %1614 = icmp sgt i32 %1573, 0
  br i1 %1614, label %1572, label %2502, !llvm.loop !139

1615:                                             ; preds = %241, %1650
  %1616 = phi i32 [ %239, %241 ], [ %1654, %1650 ]
  %1617 = phi ptr [ %142, %241 ], [ %1653, %1650 ]
  %1618 = phi i64 [ %93, %241 ], [ %1652, %1650 ]
  %1619 = phi double [ %92, %241 ], [ %1651, %1650 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #11
  br i1 %244, label %1622, label %1620

1620:                                             ; preds = %1615
  %1621 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %7, ptr noundef %3, ptr noundef nonnull %19, i32 noundef 8, i32 noundef %88)
  br label %1638

1622:                                             ; preds = %1615
  %1623 = load ptr, ptr %7, align 8, !tbaa !76
  br i1 %144, label %1624, label %1633

1624:                                             ; preds = %1622, %1624
  %1625 = phi i64 [ %1628, %1624 ], [ 8, %1622 ]
  %1626 = phi ptr [ %1631, %1624 ], [ %242, %1622 ]
  %1627 = phi ptr [ %1629, %1624 ], [ %1623, %1622 ]
  %1628 = add nsw i64 %1625, -1
  %1629 = getelementptr inbounds i8, ptr %1627, i64 1
  %1630 = load i8, ptr %1627, align 1, !tbaa !55
  %1631 = getelementptr inbounds i8, ptr %1626, i64 -1
  store i8 %1630, ptr %1631, align 1, !tbaa !55
  %1632 = icmp eq i64 %1628, 0
  br i1 %1632, label %1635, label %1624, !llvm.loop !132

1633:                                             ; preds = %1622
  %1634 = load i64, ptr %1623, align 1
  store i64 %1634, ptr %19, align 8
  br label %1635

1635:                                             ; preds = %1624, %1633
  %1636 = load ptr, ptr %7, align 8, !tbaa !76
  %1637 = getelementptr inbounds i8, ptr %1636, i64 8
  store ptr %1637, ptr %7, align 8, !tbaa !76
  br label %1638

1638:                                             ; preds = %1620, %1635
  br i1 %245, label %1639, label %1643

1639:                                             ; preds = %1638
  %1640 = call ptr @Perl_sv_newmortal() #11
  %1641 = getelementptr inbounds ptr, ptr %1617, i64 1
  store ptr %1640, ptr %1641, align 8, !tbaa !76
  %1642 = load i64, ptr %19, align 8, !tbaa !63
  call void @Perl_sv_setiv(ptr noundef %1640, i64 noundef %1642) #11
  br label %1650

1643:                                             ; preds = %1638
  %1644 = load i64, ptr %19, align 8, !tbaa !63
  br i1 %246, label %1645, label %1648

1645:                                             ; preds = %1643
  %1646 = sitofp i64 %1644 to double
  %1647 = fadd double %1619, %1646
  br label %1650

1648:                                             ; preds = %1643
  %1649 = add i64 %1644, %1618
  br label %1650

1650:                                             ; preds = %1645, %1648, %1639
  %1651 = phi double [ %1647, %1645 ], [ %1619, %1648 ], [ %1619, %1639 ]
  %1652 = phi i64 [ %1618, %1645 ], [ %1649, %1648 ], [ %1618, %1639 ]
  %1653 = phi ptr [ %1617, %1645 ], [ %1617, %1648 ], [ %1641, %1639 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #11
  %1654 = add nsw i32 %1616, -1
  %1655 = icmp sgt i32 %1616, 0
  br i1 %1655, label %1615, label %2502, !llvm.loop !140

1656:                                             ; preds = %232, %1691
  %1657 = phi i32 [ %230, %232 ], [ %1695, %1691 ]
  %1658 = phi ptr [ %142, %232 ], [ %1694, %1691 ]
  %1659 = phi i64 [ %93, %232 ], [ %1693, %1691 ]
  %1660 = phi double [ %92, %232 ], [ %1692, %1691 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #11
  br i1 %235, label %1663, label %1661

1661:                                             ; preds = %1656
  %1662 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %7, ptr noundef %3, ptr noundef nonnull %20, i32 noundef 8, i32 noundef %88)
  br label %1679

1663:                                             ; preds = %1656
  %1664 = load ptr, ptr %7, align 8, !tbaa !76
  br i1 %144, label %1665, label %1674

1665:                                             ; preds = %1663, %1665
  %1666 = phi i64 [ %1669, %1665 ], [ 8, %1663 ]
  %1667 = phi ptr [ %1672, %1665 ], [ %233, %1663 ]
  %1668 = phi ptr [ %1670, %1665 ], [ %1664, %1663 ]
  %1669 = add nsw i64 %1666, -1
  %1670 = getelementptr inbounds i8, ptr %1668, i64 1
  %1671 = load i8, ptr %1668, align 1, !tbaa !55
  %1672 = getelementptr inbounds i8, ptr %1667, i64 -1
  store i8 %1671, ptr %1672, align 1, !tbaa !55
  %1673 = icmp eq i64 %1669, 0
  br i1 %1673, label %1676, label %1665, !llvm.loop !132

1674:                                             ; preds = %1663
  %1675 = load i64, ptr %1664, align 1
  store i64 %1675, ptr %20, align 8
  br label %1676

1676:                                             ; preds = %1665, %1674
  %1677 = load ptr, ptr %7, align 8, !tbaa !76
  %1678 = getelementptr inbounds i8, ptr %1677, i64 8
  store ptr %1678, ptr %7, align 8, !tbaa !76
  br label %1679

1679:                                             ; preds = %1661, %1676
  br i1 %236, label %1680, label %1684

1680:                                             ; preds = %1679
  %1681 = call ptr @Perl_sv_newmortal() #11
  %1682 = getelementptr inbounds ptr, ptr %1658, i64 1
  store ptr %1681, ptr %1682, align 8, !tbaa !76
  %1683 = load i64, ptr %20, align 8, !tbaa !63
  call void @Perl_sv_setuv(ptr noundef %1681, i64 noundef %1683) #11
  br label %1691

1684:                                             ; preds = %1679
  %1685 = load i64, ptr %20, align 8, !tbaa !63
  br i1 %237, label %1686, label %1689

1686:                                             ; preds = %1684
  %1687 = uitofp i64 %1685 to double
  %1688 = fadd double %1660, %1687
  br label %1691

1689:                                             ; preds = %1684
  %1690 = add i64 %1685, %1659
  br label %1691

1691:                                             ; preds = %1686, %1689, %1680
  %1692 = phi double [ %1688, %1686 ], [ %1660, %1689 ], [ %1660, %1680 ]
  %1693 = phi i64 [ %1659, %1686 ], [ %1690, %1689 ], [ %1659, %1680 ]
  %1694 = phi ptr [ %1658, %1686 ], [ %1658, %1689 ], [ %1682, %1680 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #11
  %1695 = add nsw i32 %1657, -1
  %1696 = icmp sgt i32 %1657, 0
  br i1 %1696, label %1656, label %2502, !llvm.loop !141

1697:                                             ; preds = %223, %1732
  %1698 = phi i32 [ %221, %223 ], [ %1736, %1732 ]
  %1699 = phi ptr [ %142, %223 ], [ %1735, %1732 ]
  %1700 = phi i64 [ %93, %223 ], [ %1734, %1732 ]
  %1701 = phi double [ %92, %223 ], [ %1733, %1732 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %21) #11
  br i1 %226, label %1704, label %1702

1702:                                             ; preds = %1697
  %1703 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %7, ptr noundef %3, ptr noundef nonnull %21, i32 noundef 8, i32 noundef %88)
  br label %1720

1704:                                             ; preds = %1697
  %1705 = load ptr, ptr %7, align 8, !tbaa !76
  br i1 %144, label %1706, label %1715

1706:                                             ; preds = %1704, %1706
  %1707 = phi i64 [ %1710, %1706 ], [ 8, %1704 ]
  %1708 = phi ptr [ %1713, %1706 ], [ %224, %1704 ]
  %1709 = phi ptr [ %1711, %1706 ], [ %1705, %1704 ]
  %1710 = add nsw i64 %1707, -1
  %1711 = getelementptr inbounds i8, ptr %1709, i64 1
  %1712 = load i8, ptr %1709, align 1, !tbaa !55
  %1713 = getelementptr inbounds i8, ptr %1708, i64 -1
  store i8 %1712, ptr %1713, align 1, !tbaa !55
  %1714 = icmp eq i64 %1710, 0
  br i1 %1714, label %1717, label %1706, !llvm.loop !132

1715:                                             ; preds = %1704
  %1716 = load i64, ptr %1705, align 1
  store i64 %1716, ptr %21, align 8
  br label %1717

1717:                                             ; preds = %1706, %1715
  %1718 = load ptr, ptr %7, align 8, !tbaa !76
  %1719 = getelementptr inbounds i8, ptr %1718, i64 8
  store ptr %1719, ptr %7, align 8, !tbaa !76
  br label %1720

1720:                                             ; preds = %1702, %1717
  br i1 %227, label %1721, label %1725

1721:                                             ; preds = %1720
  %1722 = call ptr @Perl_sv_newmortal() #11
  %1723 = getelementptr inbounds ptr, ptr %1699, i64 1
  store ptr %1722, ptr %1723, align 8, !tbaa !76
  %1724 = load i64, ptr %21, align 8, !tbaa !63
  call void @Perl_sv_setiv(ptr noundef %1722, i64 noundef %1724) #11
  br label %1732

1725:                                             ; preds = %1720
  %1726 = load i64, ptr %21, align 8, !tbaa !63
  br i1 %228, label %1727, label %1730

1727:                                             ; preds = %1725
  %1728 = sitofp i64 %1726 to double
  %1729 = fadd double %1701, %1728
  br label %1732

1730:                                             ; preds = %1725
  %1731 = add i64 %1726, %1700
  br label %1732

1732:                                             ; preds = %1727, %1730, %1721
  %1733 = phi double [ %1729, %1727 ], [ %1701, %1730 ], [ %1701, %1721 ]
  %1734 = phi i64 [ %1700, %1727 ], [ %1731, %1730 ], [ %1700, %1721 ]
  %1735 = phi ptr [ %1699, %1727 ], [ %1699, %1730 ], [ %1723, %1721 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #11
  %1736 = add nsw i32 %1698, -1
  %1737 = icmp sgt i32 %1698, 0
  br i1 %1737, label %1697, label %2502, !llvm.loop !142

1738:                                             ; preds = %214, %1775
  %1739 = phi i32 [ %212, %214 ], [ %1779, %1775 ]
  %1740 = phi ptr [ %142, %214 ], [ %1778, %1775 ]
  %1741 = phi i64 [ %93, %214 ], [ %1777, %1775 ]
  %1742 = phi double [ %92, %214 ], [ %1776, %1775 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %22) #11
  br i1 %217, label %1745, label %1743

1743:                                             ; preds = %1738
  %1744 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %7, ptr noundef %3, ptr noundef nonnull %22, i32 noundef 4, i32 noundef %88)
  br label %1761

1745:                                             ; preds = %1738
  %1746 = load ptr, ptr %7, align 8, !tbaa !76
  br i1 %144, label %1747, label %1756

1747:                                             ; preds = %1745, %1747
  %1748 = phi i64 [ %1751, %1747 ], [ 4, %1745 ]
  %1749 = phi ptr [ %1754, %1747 ], [ %215, %1745 ]
  %1750 = phi ptr [ %1752, %1747 ], [ %1746, %1745 ]
  %1751 = add nsw i64 %1748, -1
  %1752 = getelementptr inbounds i8, ptr %1750, i64 1
  %1753 = load i8, ptr %1750, align 1, !tbaa !55
  %1754 = getelementptr inbounds i8, ptr %1749, i64 -1
  store i8 %1753, ptr %1754, align 1, !tbaa !55
  %1755 = icmp eq i64 %1751, 0
  br i1 %1755, label %1758, label %1747, !llvm.loop !132

1756:                                             ; preds = %1745
  %1757 = load i32, ptr %1746, align 1
  store i32 %1757, ptr %22, align 4
  br label %1758

1758:                                             ; preds = %1747, %1756
  %1759 = load ptr, ptr %7, align 8, !tbaa !76
  %1760 = getelementptr inbounds i8, ptr %1759, i64 4
  store ptr %1760, ptr %7, align 8, !tbaa !76
  br label %1761

1761:                                             ; preds = %1743, %1758
  br i1 %218, label %1762, label %1767

1762:                                             ; preds = %1761
  %1763 = call ptr @Perl_sv_newmortal() #11
  %1764 = getelementptr inbounds ptr, ptr %1740, i64 1
  store ptr %1763, ptr %1764, align 8, !tbaa !76
  %1765 = load i32, ptr %22, align 4, !tbaa !92
  %1766 = sext i32 %1765 to i64
  call void @Perl_sv_setiv(ptr noundef %1763, i64 noundef %1766) #11
  br label %1775

1767:                                             ; preds = %1761
  %1768 = load i32, ptr %22, align 4, !tbaa !92
  br i1 %219, label %1769, label %1772

1769:                                             ; preds = %1767
  %1770 = sitofp i32 %1768 to double
  %1771 = fadd double %1742, %1770
  br label %1775

1772:                                             ; preds = %1767
  %1773 = sext i32 %1768 to i64
  %1774 = add i64 %1741, %1773
  br label %1775

1775:                                             ; preds = %1769, %1772, %1762
  %1776 = phi double [ %1771, %1769 ], [ %1742, %1772 ], [ %1742, %1762 ]
  %1777 = phi i64 [ %1741, %1769 ], [ %1774, %1772 ], [ %1741, %1762 ]
  %1778 = phi ptr [ %1740, %1769 ], [ %1740, %1772 ], [ %1764, %1762 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %22) #11
  %1779 = add nsw i32 %1739, -1
  %1780 = icmp sgt i32 %1739, 0
  br i1 %1780, label %1738, label %2502, !llvm.loop !143

1781:                                             ; preds = %205, %1816
  %1782 = phi i32 [ %203, %205 ], [ %1820, %1816 ]
  %1783 = phi ptr [ %142, %205 ], [ %1819, %1816 ]
  %1784 = phi i64 [ %93, %205 ], [ %1818, %1816 ]
  %1785 = phi double [ %92, %205 ], [ %1817, %1816 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %23) #11
  br i1 %208, label %1788, label %1786

1786:                                             ; preds = %1781
  %1787 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %7, ptr noundef %3, ptr noundef nonnull %23, i32 noundef 8, i32 noundef %88)
  br label %1804

1788:                                             ; preds = %1781
  %1789 = load ptr, ptr %7, align 8, !tbaa !76
  br i1 %144, label %1790, label %1799

1790:                                             ; preds = %1788, %1790
  %1791 = phi i64 [ %1794, %1790 ], [ 8, %1788 ]
  %1792 = phi ptr [ %1797, %1790 ], [ %206, %1788 ]
  %1793 = phi ptr [ %1795, %1790 ], [ %1789, %1788 ]
  %1794 = add nsw i64 %1791, -1
  %1795 = getelementptr inbounds i8, ptr %1793, i64 1
  %1796 = load i8, ptr %1793, align 1, !tbaa !55
  %1797 = getelementptr inbounds i8, ptr %1792, i64 -1
  store i8 %1796, ptr %1797, align 1, !tbaa !55
  %1798 = icmp eq i64 %1794, 0
  br i1 %1798, label %1801, label %1790, !llvm.loop !132

1799:                                             ; preds = %1788
  %1800 = load i64, ptr %1789, align 1
  store i64 %1800, ptr %23, align 8
  br label %1801

1801:                                             ; preds = %1790, %1799
  %1802 = load ptr, ptr %7, align 8, !tbaa !76
  %1803 = getelementptr inbounds i8, ptr %1802, i64 8
  store ptr %1803, ptr %7, align 8, !tbaa !76
  br label %1804

1804:                                             ; preds = %1786, %1801
  br i1 %209, label %1805, label %1809

1805:                                             ; preds = %1804
  %1806 = call ptr @Perl_sv_newmortal() #11
  %1807 = getelementptr inbounds ptr, ptr %1783, i64 1
  store ptr %1806, ptr %1807, align 8, !tbaa !76
  %1808 = load i64, ptr %23, align 8, !tbaa !63
  call void @Perl_sv_setuv(ptr noundef %1806, i64 noundef %1808) #11
  br label %1816

1809:                                             ; preds = %1804
  %1810 = load i64, ptr %23, align 8, !tbaa !63
  br i1 %210, label %1811, label %1814

1811:                                             ; preds = %1809
  %1812 = uitofp i64 %1810 to double
  %1813 = fadd double %1785, %1812
  br label %1816

1814:                                             ; preds = %1809
  %1815 = add i64 %1810, %1784
  br label %1816

1816:                                             ; preds = %1811, %1814, %1805
  %1817 = phi double [ %1813, %1811 ], [ %1785, %1814 ], [ %1785, %1805 ]
  %1818 = phi i64 [ %1784, %1811 ], [ %1815, %1814 ], [ %1784, %1805 ]
  %1819 = phi ptr [ %1783, %1811 ], [ %1783, %1814 ], [ %1807, %1805 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %23) #11
  %1820 = add nsw i32 %1782, -1
  %1821 = icmp sgt i32 %1782, 0
  br i1 %1821, label %1781, label %2502, !llvm.loop !144

1822:                                             ; preds = %140, %140, %140
  %1823 = add nsw i32 %141, -1
  %1824 = icmp sgt i32 %141, 0
  br i1 %1824, label %1825, label %2502

1825:                                             ; preds = %1822
  %1826 = getelementptr inbounds i8, ptr %24, i64 4
  %1827 = and i8 %90, 1
  %1828 = icmp eq i8 %1827, 0
  %1829 = icmp eq i32 %88, 78
  %1830 = icmp eq i32 %95, 0
  %1831 = icmp sgt i32 %95, 64
  br label %1832

1832:                                             ; preds = %1825, %1873
  %1833 = phi i32 [ %1823, %1825 ], [ %1877, %1873 ]
  %1834 = phi ptr [ %142, %1825 ], [ %1876, %1873 ]
  %1835 = phi i64 [ %93, %1825 ], [ %1875, %1873 ]
  %1836 = phi double [ %92, %1825 ], [ %1874, %1873 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %24) #11
  br i1 %1828, label %1839, label %1837

1837:                                             ; preds = %1832
  %1838 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %7, ptr noundef %3, ptr noundef nonnull %24, i32 noundef 4, i32 noundef %88)
  br label %1855

1839:                                             ; preds = %1832
  %1840 = load ptr, ptr %7, align 8, !tbaa !76
  br i1 %144, label %1841, label %1850

1841:                                             ; preds = %1839, %1841
  %1842 = phi i64 [ %1845, %1841 ], [ 4, %1839 ]
  %1843 = phi ptr [ %1848, %1841 ], [ %1826, %1839 ]
  %1844 = phi ptr [ %1846, %1841 ], [ %1840, %1839 ]
  %1845 = add nsw i64 %1842, -1
  %1846 = getelementptr inbounds i8, ptr %1844, i64 1
  %1847 = load i8, ptr %1844, align 1, !tbaa !55
  %1848 = getelementptr inbounds i8, ptr %1843, i64 -1
  store i8 %1847, ptr %1848, align 1, !tbaa !55
  %1849 = icmp eq i64 %1845, 0
  br i1 %1849, label %1852, label %1841, !llvm.loop !132

1850:                                             ; preds = %1839
  %1851 = load i32, ptr %1840, align 1
  store i32 %1851, ptr %24, align 4
  br label %1852

1852:                                             ; preds = %1841, %1850
  %1853 = load ptr, ptr %7, align 8, !tbaa !76
  %1854 = getelementptr inbounds i8, ptr %1853, i64 4
  store ptr %1854, ptr %7, align 8, !tbaa !76
  br label %1855

1855:                                             ; preds = %1837, %1852
  br i1 %1829, label %1856, label %1859

1856:                                             ; preds = %1855
  %1857 = load i32, ptr %24, align 4, !tbaa !92
  %1858 = call i32 @llvm.bswap.i32(i32 %1857)
  store i32 %1858, ptr %24, align 4, !tbaa !92
  br label %1859

1859:                                             ; preds = %1856, %1855
  br i1 %1830, label %1860, label %1865

1860:                                             ; preds = %1859
  %1861 = call ptr @Perl_sv_newmortal() #11
  %1862 = getelementptr inbounds ptr, ptr %1834, i64 1
  store ptr %1861, ptr %1862, align 8, !tbaa !76
  %1863 = load i32, ptr %24, align 4, !tbaa !92
  %1864 = zext i32 %1863 to i64
  call void @Perl_sv_setuv(ptr noundef %1861, i64 noundef %1864) #11
  br label %1873

1865:                                             ; preds = %1859
  %1866 = load i32, ptr %24, align 4, !tbaa !92
  br i1 %1831, label %1867, label %1870

1867:                                             ; preds = %1865
  %1868 = uitofp i32 %1866 to double
  %1869 = fadd double %1836, %1868
  br label %1873

1870:                                             ; preds = %1865
  %1871 = zext i32 %1866 to i64
  %1872 = add i64 %1835, %1871
  br label %1873

1873:                                             ; preds = %1867, %1870, %1860
  %1874 = phi double [ %1869, %1867 ], [ %1836, %1870 ], [ %1836, %1860 ]
  %1875 = phi i64 [ %1835, %1867 ], [ %1872, %1870 ], [ %1835, %1860 ]
  %1876 = phi ptr [ %1834, %1867 ], [ %1834, %1870 ], [ %1862, %1860 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %24) #11
  %1877 = add nsw i32 %1833, -1
  %1878 = icmp sgt i32 %1833, 0
  br i1 %1878, label %1832, label %2502, !llvm.loop !145

1879:                                             ; preds = %140, %140
  %1880 = add nsw i32 %141, -1
  %1881 = icmp sgt i32 %141, 0
  br i1 %1881, label %1882, label %2502

1882:                                             ; preds = %1879
  %1883 = getelementptr inbounds i8, ptr %25, i64 4
  %1884 = and i8 %90, 1
  %1885 = icmp eq i8 %1884, 0
  %1886 = icmp eq i32 %88, 334
  %1887 = icmp eq i32 %95, 0
  %1888 = icmp sgt i32 %95, 64
  br label %1889

1889:                                             ; preds = %1882, %1930
  %1890 = phi i32 [ %1880, %1882 ], [ %1934, %1930 ]
  %1891 = phi ptr [ %142, %1882 ], [ %1933, %1930 ]
  %1892 = phi i64 [ %93, %1882 ], [ %1932, %1930 ]
  %1893 = phi double [ %92, %1882 ], [ %1931, %1930 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %25) #11
  br i1 %1885, label %1896, label %1894

1894:                                             ; preds = %1889
  %1895 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %7, ptr noundef %3, ptr noundef nonnull %25, i32 noundef 4, i32 noundef %88)
  br label %1912

1896:                                             ; preds = %1889
  %1897 = load ptr, ptr %7, align 8, !tbaa !76
  br i1 %144, label %1898, label %1907

1898:                                             ; preds = %1896, %1898
  %1899 = phi i64 [ %1902, %1898 ], [ 4, %1896 ]
  %1900 = phi ptr [ %1905, %1898 ], [ %1883, %1896 ]
  %1901 = phi ptr [ %1903, %1898 ], [ %1897, %1896 ]
  %1902 = add nsw i64 %1899, -1
  %1903 = getelementptr inbounds i8, ptr %1901, i64 1
  %1904 = load i8, ptr %1901, align 1, !tbaa !55
  %1905 = getelementptr inbounds i8, ptr %1900, i64 -1
  store i8 %1904, ptr %1905, align 1, !tbaa !55
  %1906 = icmp eq i64 %1902, 0
  br i1 %1906, label %1909, label %1898, !llvm.loop !132

1907:                                             ; preds = %1896
  %1908 = load i32, ptr %1897, align 1
  store i32 %1908, ptr %25, align 4
  br label %1909

1909:                                             ; preds = %1898, %1907
  %1910 = load ptr, ptr %7, align 8, !tbaa !76
  %1911 = getelementptr inbounds i8, ptr %1910, i64 4
  store ptr %1911, ptr %7, align 8, !tbaa !76
  br label %1912

1912:                                             ; preds = %1894, %1909
  br i1 %1886, label %1913, label %1916

1913:                                             ; preds = %1912
  %1914 = load i32, ptr %25, align 4, !tbaa !92
  %1915 = call i32 @llvm.bswap.i32(i32 %1914)
  store i32 %1915, ptr %25, align 4, !tbaa !92
  br label %1916

1916:                                             ; preds = %1913, %1912
  br i1 %1887, label %1917, label %1922

1917:                                             ; preds = %1916
  %1918 = call ptr @Perl_sv_newmortal() #11
  %1919 = getelementptr inbounds ptr, ptr %1891, i64 1
  store ptr %1918, ptr %1919, align 8, !tbaa !76
  %1920 = load i32, ptr %25, align 4, !tbaa !92
  %1921 = sext i32 %1920 to i64
  call void @Perl_sv_setiv(ptr noundef %1918, i64 noundef %1921) #11
  br label %1930

1922:                                             ; preds = %1916
  %1923 = load i32, ptr %25, align 4, !tbaa !92
  br i1 %1888, label %1924, label %1927

1924:                                             ; preds = %1922
  %1925 = sitofp i32 %1923 to double
  %1926 = fadd double %1893, %1925
  br label %1930

1927:                                             ; preds = %1922
  %1928 = sext i32 %1923 to i64
  %1929 = add i64 %1892, %1928
  br label %1930

1930:                                             ; preds = %1924, %1927, %1917
  %1931 = phi double [ %1926, %1924 ], [ %1893, %1927 ], [ %1893, %1917 ]
  %1932 = phi i64 [ %1892, %1924 ], [ %1929, %1927 ], [ %1892, %1917 ]
  %1933 = phi ptr [ %1891, %1924 ], [ %1891, %1927 ], [ %1919, %1917 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %25) #11
  %1934 = add nsw i32 %1890, -1
  %1935 = icmp sgt i32 %1890, 0
  br i1 %1935, label %1889, label %2502, !llvm.loop !146

1936:                                             ; preds = %198, %1957
  %1937 = phi i32 [ %196, %198 ], [ %1962, %1957 ]
  %1938 = phi ptr [ %142, %198 ], [ %1961, %1957 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %26) #11
  br i1 %201, label %1941, label %1939

1939:                                             ; preds = %1936
  %1940 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %7, ptr noundef %3, ptr noundef nonnull %26, i32 noundef 8, i32 noundef %88)
  br label %1957

1941:                                             ; preds = %1936
  %1942 = load ptr, ptr %7, align 8, !tbaa !76
  br i1 %144, label %1943, label %1952

1943:                                             ; preds = %1941, %1943
  %1944 = phi i64 [ %1947, %1943 ], [ 8, %1941 ]
  %1945 = phi ptr [ %1950, %1943 ], [ %199, %1941 ]
  %1946 = phi ptr [ %1948, %1943 ], [ %1942, %1941 ]
  %1947 = add nsw i64 %1944, -1
  %1948 = getelementptr inbounds i8, ptr %1946, i64 1
  %1949 = load i8, ptr %1946, align 1, !tbaa !55
  %1950 = getelementptr inbounds i8, ptr %1945, i64 -1
  store i8 %1949, ptr %1950, align 1, !tbaa !55
  %1951 = icmp eq i64 %1947, 0
  br i1 %1951, label %1954, label %1943, !llvm.loop !132

1952:                                             ; preds = %1941
  %1953 = load i64, ptr %1942, align 1
  store i64 %1953, ptr %26, align 8
  br label %1954

1954:                                             ; preds = %1943, %1952
  %1955 = load ptr, ptr %7, align 8, !tbaa !76
  %1956 = getelementptr inbounds i8, ptr %1955, i64 8
  store ptr %1956, ptr %7, align 8, !tbaa !76
  br label %1957

1957:                                             ; preds = %1939, %1954
  %1958 = load ptr, ptr %26, align 8, !tbaa !76
  %1959 = call ptr @Perl_newSVpv(ptr noundef %1958, i64 noundef 0) #11
  %1960 = call ptr @Perl_sv_2mortal(ptr noundef %1959) #11
  %1961 = getelementptr inbounds ptr, ptr %1938, i64 1
  store ptr %1960, ptr %1961, align 8, !tbaa !76
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %26) #11
  %1962 = add nsw i32 %1937, -1
  %1963 = icmp sgt i32 %1937, 0
  br i1 %1963, label %1936, label %2502, !llvm.loop !147

1964:                                             ; preds = %192, %2097
  %1965 = phi ptr [ %189, %192 ], [ %2104, %2097 ]
  %1966 = phi ptr [ %142, %192 ], [ %2102, %2097 ]
  %1967 = phi ptr [ %96, %192 ], [ %2101, %2097 ]
  %1968 = phi i32 [ 0, %192 ], [ %2100, %2097 ]
  %1969 = phi i64 [ 0, %192 ], [ %2099, %2097 ]
  %1970 = phi i32 [ %141, %192 ], [ %2098, %2097 ]
  br i1 %194, label %1973, label %1971

1971:                                             ; preds = %1964
  %1972 = call fastcc zeroext i8 @utf8_to_byte(ptr noundef nonnull %7, ptr noundef nonnull %3, i32 noundef %88)
  br label %1976

1973:                                             ; preds = %1964
  %1974 = getelementptr inbounds i8, ptr %1965, i64 1
  store ptr %1974, ptr %7, align 8, !tbaa !76
  %1975 = load i8, ptr %1965, align 1, !tbaa !55
  br label %1976

1976:                                             ; preds = %1973, %1971
  %1977 = phi i8 [ %1972, %1971 ], [ %1975, %1973 ]
  %1978 = shl i64 %1969, 7
  %1979 = and i8 %1977, 127
  %1980 = zext nneg i8 %1979 to i64
  %1981 = or disjoint i64 %1978, %1980
  %1982 = icmp sgt i8 %1977, -1
  br i1 %1982, label %1983, label %1987

1983:                                             ; preds = %1976
  %1984 = call ptr @Perl_sv_newmortal() #11
  %1985 = getelementptr inbounds ptr, ptr %1966, i64 1
  store ptr %1984, ptr %1985, align 8, !tbaa !76
  call void @Perl_sv_setuv(ptr noundef %1984, i64 noundef %1981) #11
  %1986 = add nsw i32 %1970, -1
  br label %2097, !llvm.loop !148

1987:                                             ; preds = %1976
  %1988 = add i32 %1968, 1
  %1989 = icmp ugt i32 %1988, 7
  br i1 %1989, label %1990, label %2097

1990:                                             ; preds = %1987
  %1991 = call ptr (ptr, ...) @Perl_newSVpvf(ptr noundef nonnull @.str.9, i32 noundef 20, i64 noundef %1981) #11
  br label %1992

1992:                                             ; preds = %2072, %1990
  %1993 = phi ptr [ %1991, %1990 ], [ %2046, %2072 ]
  %1994 = load ptr, ptr %7, align 8, !tbaa !76
  %1995 = icmp ult ptr %1994, %3
  br i1 %1995, label %1996, label %2074

1996:                                             ; preds = %1992
  br i1 %194, label %1999, label %1997

1997:                                             ; preds = %1996
  %1998 = call fastcc zeroext i8 @utf8_to_byte(ptr noundef nonnull %7, ptr noundef nonnull %3, i32 noundef %88)
  br label %2002

1999:                                             ; preds = %1996
  %2000 = getelementptr inbounds i8, ptr %1994, i64 1
  store ptr %2000, ptr %7, align 8, !tbaa !76
  %2001 = load i8, ptr %1994, align 1, !tbaa !55
  br label %2002

2002:                                             ; preds = %1999, %1997
  %2003 = phi i8 [ %1998, %1997 ], [ %2001, %1999 ]
  %2004 = and i8 %2003, 127
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  %2005 = getelementptr inbounds %struct.sv, ptr %1993, i64 0, i32 2
  %2006 = load i32, ptr %2005, align 4, !tbaa !111
  %2007 = and i32 %2006, 2098176
  %2008 = icmp eq i32 %2007, 1024
  br i1 %2008, label %2009, label %2015

2009:                                             ; preds = %2002
  %2010 = load ptr, ptr %1993, align 8, !tbaa !119
  %2011 = getelementptr inbounds %struct.xpv, ptr %2010, i64 0, i32 2
  %2012 = load i64, ptr %2011, align 8, !tbaa !120
  store i64 %2012, ptr %6, align 8, !tbaa !63
  %2013 = getelementptr inbounds %struct.sv, ptr %1993, i64 0, i32 3
  %2014 = load ptr, ptr %2013, align 8, !tbaa !55
  br label %2017

2015:                                             ; preds = %2002
  %2016 = call ptr @Perl_sv_2pv_flags(ptr noundef %1993, ptr noundef nonnull %6, i32 noundef 2) #11
  br label %2017

2017:                                             ; preds = %2015, %2009
  %2018 = phi ptr [ %2014, %2009 ], [ %2016, %2015 ]
  %2019 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %2018, ptr noundef nonnull dereferenceable(5) @.str.41, i64 noundef 4) #12
  %2020 = icmp eq i32 %2019, 0
  br i1 %2020, label %2044, label %2021

2021:                                             ; preds = %2017
  %2022 = call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.42, i64 noundef 10) #11
  call void @Perl_sv_catsv_flags(ptr noundef %2022, ptr noundef %1993, i32 noundef 2) #11
  %2023 = icmp eq ptr %1993, null
  br i1 %2023, label %2031, label %2024

2024:                                             ; preds = %2021
  %2025 = getelementptr inbounds %struct.sv, ptr %1993, i64 0, i32 1
  %2026 = load i32, ptr %2025, align 8, !tbaa !149
  %2027 = icmp ugt i32 %2026, 1
  br i1 %2027, label %2028, label %2030

2028:                                             ; preds = %2024
  %2029 = add i32 %2026, -1
  store i32 %2029, ptr %2025, align 8, !tbaa !149
  br label %2031

2030:                                             ; preds = %2024
  call void @Perl_sv_free2(ptr noundef nonnull %1993, i32 noundef %2026) #11
  br label %2031

2031:                                             ; preds = %2030, %2028, %2021
  %2032 = getelementptr inbounds %struct.sv, ptr %2022, i64 0, i32 2
  %2033 = load i32, ptr %2032, align 4, !tbaa !111
  %2034 = and i32 %2033, 2098176
  %2035 = icmp eq i32 %2034, 1024
  br i1 %2035, label %2036, label %2042

2036:                                             ; preds = %2031
  %2037 = load ptr, ptr %2022, align 8, !tbaa !119
  %2038 = getelementptr inbounds %struct.xpv, ptr %2037, i64 0, i32 2
  %2039 = load i64, ptr %2038, align 8, !tbaa !120
  store i64 %2039, ptr %6, align 8, !tbaa !63
  %2040 = getelementptr inbounds %struct.sv, ptr %2022, i64 0, i32 3
  %2041 = load ptr, ptr %2040, align 8, !tbaa !55
  br label %2044

2042:                                             ; preds = %2031
  %2043 = call ptr @Perl_sv_2pv_flags(ptr noundef %2022, ptr noundef nonnull %6, i32 noundef 2) #11
  br label %2044

2044:                                             ; preds = %2042, %2036, %2017
  %2045 = phi ptr [ %2018, %2017 ], [ %2041, %2036 ], [ %2043, %2042 ]
  %2046 = phi ptr [ %1993, %2017 ], [ %2022, %2036 ], [ %2022, %2042 ]
  %2047 = load i64, ptr %6, align 8, !tbaa !63
  %2048 = getelementptr inbounds i8, ptr %2045, i64 %2047
  br label %2049

2049:                                             ; preds = %2049, %2044
  %2050 = phi ptr [ %2048, %2044 ], [ %2051, %2049 ]
  %2051 = getelementptr inbounds i8, ptr %2050, i64 -1
  %2052 = load i8, ptr %2051, align 1, !tbaa !55
  %2053 = icmp eq i8 %2052, 0
  br i1 %2053, label %2049, label %2054, !llvm.loop !150

2054:                                             ; preds = %2049
  %2055 = icmp ugt ptr %2051, %2045
  br i1 %2055, label %2056, label %2072

2056:                                             ; preds = %2054, %2056
  %2057 = phi i8 [ %2070, %2056 ], [ %2004, %2054 ]
  %2058 = phi ptr [ %2068, %2056 ], [ %2051, %2054 ]
  %2059 = load i8, ptr %2058, align 1, !tbaa !55
  %2060 = sext i8 %2059 to i32
  %2061 = shl nsw i32 %2060, 7
  %2062 = zext i8 %2057 to i32
  %2063 = or disjoint i32 %2062, -6144
  %2064 = add nsw i32 %2063, %2061
  %2065 = urem i32 %2064, 10
  %2066 = trunc i32 %2065 to i8
  %2067 = or disjoint i8 %2066, 48
  %2068 = getelementptr inbounds i8, ptr %2058, i64 -1
  store i8 %2067, ptr %2058, align 1, !tbaa !55
  %2069 = udiv i32 %2064, 10
  %2070 = trunc i32 %2069 to i8
  %2071 = icmp ugt ptr %2068, %2045
  br i1 %2071, label %2056, label %2072, !llvm.loop !151

2072:                                             ; preds = %2056, %2054
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  %2073 = icmp sgt i8 %2003, -1
  br i1 %2073, label %2074, label %1992, !llvm.loop !152

2074:                                             ; preds = %2072, %1992
  %2075 = phi i32 [ %1988, %1992 ], [ 0, %2072 ]
  %2076 = phi ptr [ %1993, %1992 ], [ %2046, %2072 ]
  %2077 = getelementptr inbounds %struct.sv, ptr %2076, i64 0, i32 2
  %2078 = load i32, ptr %2077, align 4, !tbaa !111
  %2079 = and i32 %2078, 2098176
  %2080 = icmp eq i32 %2079, 1024
  br i1 %2080, label %2081, label %2084

2081:                                             ; preds = %2074
  %2082 = getelementptr inbounds %struct.sv, ptr %2076, i64 0, i32 3
  %2083 = load ptr, ptr %2082, align 8, !tbaa !55
  br label %2086

2084:                                             ; preds = %2074
  %2085 = call ptr @Perl_sv_2pv_flags(ptr noundef %2076, ptr noundef null, i32 noundef 34) #11
  br label %2086

2086:                                             ; preds = %2084, %2081
  %2087 = phi ptr [ %2085, %2084 ], [ %2083, %2081 ]
  br label %2088

2088:                                             ; preds = %2086, %2088
  %2089 = phi ptr [ %2092, %2088 ], [ %2087, %2086 ]
  %2090 = load i8, ptr %2089, align 1, !tbaa !55
  %2091 = icmp eq i8 %2090, 48
  %2092 = getelementptr inbounds i8, ptr %2089, i64 1
  br i1 %2091, label %2088, label %2093, !llvm.loop !153

2093:                                             ; preds = %2088
  call void @Perl_sv_chop(ptr noundef %2076, ptr noundef nonnull %2089) #11
  %2094 = call ptr @Perl_sv_2mortal(ptr noundef %2076) #11
  %2095 = getelementptr inbounds ptr, ptr %1966, i64 1
  store ptr %2094, ptr %2095, align 8, !tbaa !76
  %2096 = add nsw i32 %1970, -1
  br label %2097

2097:                                             ; preds = %1987, %2093, %1983
  %2098 = phi i32 [ %1986, %1983 ], [ %2096, %2093 ], [ %1970, %1987 ]
  %2099 = phi i64 [ 0, %1983 ], [ 0, %2093 ], [ %1981, %1987 ]
  %2100 = phi i32 [ 0, %1983 ], [ %2075, %2093 ], [ %1988, %1987 ]
  %2101 = phi ptr [ %1967, %1983 ], [ %2076, %2093 ], [ %1967, %1987 ]
  %2102 = phi ptr [ %1985, %1983 ], [ %2095, %2093 ], [ %1966, %1987 ]
  %2103 = icmp sgt i32 %2098, 0
  %2104 = load ptr, ptr %7, align 8
  %2105 = icmp ult ptr %2104, %3
  %2106 = select i1 %2103, i1 %2105, i1 false
  br i1 %2106, label %1964, label %2107

2107:                                             ; preds = %2097, %187
  %2108 = phi i32 [ %141, %187 ], [ %2098, %2097 ]
  %2109 = phi i32 [ 0, %187 ], [ %2100, %2097 ]
  %2110 = phi ptr [ %96, %187 ], [ %2101, %2097 ]
  %2111 = phi ptr [ %142, %187 ], [ %2102, %2097 ]
  %2112 = phi ptr [ %189, %187 ], [ %2104, %2097 ]
  %2113 = icmp uge ptr %2112, %3
  %2114 = icmp ne i32 %2109, 0
  %2115 = and i1 %2114, %2113
  br i1 %2115, label %2116, label %2502

2116:                                             ; preds = %2107
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.10) #11
  br label %2502

2117:                                             ; preds = %140
  %2118 = load i32, ptr %52, align 8, !tbaa !82
  %2119 = icmp eq i32 %2118, 2
  br i1 %2119, label %2120, label %2121

2120:                                             ; preds = %2117
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.11) #11
  br label %2121

2121:                                             ; preds = %2117, %2120
  %2122 = load ptr, ptr @PL_stack_max, align 8, !tbaa !76
  %2123 = ptrtoint ptr %2122 to i64
  %2124 = ptrtoint ptr %142 to i64
  %2125 = sub i64 %2123, %2124
  %2126 = icmp slt i64 %2125, 8
  br i1 %2126, label %2127, label %2129

2127:                                             ; preds = %2121
  %2128 = call ptr @Perl_stack_grow(ptr noundef %142, ptr noundef %142, i64 noundef 1) #11
  br label %2129

2129:                                             ; preds = %2121, %2127
  %2130 = phi ptr [ %2128, %2127 ], [ %142, %2121 ]
  %2131 = load ptr, ptr %7, align 8, !tbaa !76
  %2132 = getelementptr inbounds i8, ptr %2131, i64 8
  %2133 = icmp ugt ptr %2132, %3
  br i1 %2133, label %2502, label %2134

2134:                                             ; preds = %2129
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %27) #11
  %2135 = and i8 %90, 1
  %2136 = icmp eq i8 %2135, 0
  br i1 %2136, label %2139, label %2137

2137:                                             ; preds = %2134
  %2138 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %7, ptr noundef %3, ptr noundef nonnull %27, i32 noundef 8, i32 noundef %88)
  br label %2154

2139:                                             ; preds = %2134
  br i1 %144, label %2140, label %2151

2140:                                             ; preds = %2139
  %2141 = getelementptr inbounds i8, ptr %27, i64 8
  br label %2142

2142:                                             ; preds = %2140, %2142
  %2143 = phi i64 [ %2146, %2142 ], [ 8, %2140 ]
  %2144 = phi ptr [ %2149, %2142 ], [ %2141, %2140 ]
  %2145 = phi ptr [ %2147, %2142 ], [ %2131, %2140 ]
  %2146 = add nsw i64 %2143, -1
  %2147 = getelementptr inbounds i8, ptr %2145, i64 1
  %2148 = load i8, ptr %2145, align 1, !tbaa !55
  %2149 = getelementptr inbounds i8, ptr %2144, i64 -1
  store i8 %2148, ptr %2149, align 1, !tbaa !55
  %2150 = icmp eq i64 %2146, 0
  br i1 %2150, label %2153, label %2142, !llvm.loop !132

2151:                                             ; preds = %2139
  %2152 = load i64, ptr %2131, align 1
  store i64 %2152, ptr %27, align 8
  br label %2153

2153:                                             ; preds = %2142, %2151
  store ptr %2132, ptr %7, align 8, !tbaa !76
  br label %2154

2154:                                             ; preds = %2137, %2153
  %2155 = load ptr, ptr %27, align 8, !tbaa !76
  %2156 = sext i32 %141 to i64
  %2157 = call ptr @Perl_newSVpvn_flags(ptr noundef %2155, i64 noundef %2156, i32 noundef 524288) #11
  %2158 = getelementptr inbounds ptr, ptr %2130, i64 1
  store ptr %2157, ptr %2158, align 8, !tbaa !76
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %27) #11
  br label %2502

2159:                                             ; preds = %181, %2194
  %2160 = phi i32 [ %179, %181 ], [ %2198, %2194 ]
  %2161 = phi ptr [ %142, %181 ], [ %2197, %2194 ]
  %2162 = phi i64 [ %93, %181 ], [ %2196, %2194 ]
  %2163 = phi double [ %92, %181 ], [ %2195, %2194 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %28) #11
  br i1 %184, label %2166, label %2164

2164:                                             ; preds = %2159
  %2165 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %7, ptr noundef %3, ptr noundef nonnull %28, i32 noundef 8, i32 noundef %88)
  br label %2182

2166:                                             ; preds = %2159
  %2167 = load ptr, ptr %7, align 8, !tbaa !76
  br i1 %144, label %2168, label %2177

2168:                                             ; preds = %2166, %2168
  %2169 = phi i64 [ %2172, %2168 ], [ 8, %2166 ]
  %2170 = phi ptr [ %2175, %2168 ], [ %182, %2166 ]
  %2171 = phi ptr [ %2173, %2168 ], [ %2167, %2166 ]
  %2172 = add nsw i64 %2169, -1
  %2173 = getelementptr inbounds i8, ptr %2171, i64 1
  %2174 = load i8, ptr %2171, align 1, !tbaa !55
  %2175 = getelementptr inbounds i8, ptr %2170, i64 -1
  store i8 %2174, ptr %2175, align 1, !tbaa !55
  %2176 = icmp eq i64 %2172, 0
  br i1 %2176, label %2179, label %2168, !llvm.loop !132

2177:                                             ; preds = %2166
  %2178 = load i64, ptr %2167, align 1
  store i64 %2178, ptr %28, align 8
  br label %2179

2179:                                             ; preds = %2168, %2177
  %2180 = load ptr, ptr %7, align 8, !tbaa !76
  %2181 = getelementptr inbounds i8, ptr %2180, i64 8
  store ptr %2181, ptr %7, align 8, !tbaa !76
  br label %2182

2182:                                             ; preds = %2164, %2179
  %2183 = load i64, ptr %28, align 8, !tbaa !63
  br i1 %185, label %2184, label %2188

2184:                                             ; preds = %2182
  %2185 = call ptr @Perl_newSViv(i64 noundef %2183) #11
  %2186 = call ptr @Perl_sv_2mortal(ptr noundef %2185) #11
  %2187 = getelementptr inbounds ptr, ptr %2161, i64 1
  store ptr %2186, ptr %2187, align 8, !tbaa !76
  br label %2194

2188:                                             ; preds = %2182
  br i1 %186, label %2189, label %2192

2189:                                             ; preds = %2188
  %2190 = sitofp i64 %2183 to double
  %2191 = fadd double %2163, %2190
  br label %2194

2192:                                             ; preds = %2188
  %2193 = add i64 %2183, %2162
  br label %2194

2194:                                             ; preds = %2189, %2192, %2184
  %2195 = phi double [ %2191, %2189 ], [ %2163, %2192 ], [ %2163, %2184 ]
  %2196 = phi i64 [ %2162, %2189 ], [ %2193, %2192 ], [ %2162, %2184 ]
  %2197 = phi ptr [ %2161, %2189 ], [ %2161, %2192 ], [ %2187, %2184 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %28) #11
  %2198 = add nsw i32 %2160, -1
  %2199 = icmp sgt i32 %2160, 0
  br i1 %2199, label %2159, label %2502, !llvm.loop !154

2200:                                             ; preds = %172, %2235
  %2201 = phi i32 [ %170, %172 ], [ %2239, %2235 ]
  %2202 = phi ptr [ %142, %172 ], [ %2238, %2235 ]
  %2203 = phi i64 [ %93, %172 ], [ %2237, %2235 ]
  %2204 = phi double [ %92, %172 ], [ %2236, %2235 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %29) #11
  br i1 %175, label %2207, label %2205

2205:                                             ; preds = %2200
  %2206 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %7, ptr noundef %3, ptr noundef nonnull %29, i32 noundef 8, i32 noundef %88)
  br label %2223

2207:                                             ; preds = %2200
  %2208 = load ptr, ptr %7, align 8, !tbaa !76
  br i1 %144, label %2209, label %2218

2209:                                             ; preds = %2207, %2209
  %2210 = phi i64 [ %2213, %2209 ], [ 8, %2207 ]
  %2211 = phi ptr [ %2216, %2209 ], [ %173, %2207 ]
  %2212 = phi ptr [ %2214, %2209 ], [ %2208, %2207 ]
  %2213 = add nsw i64 %2210, -1
  %2214 = getelementptr inbounds i8, ptr %2212, i64 1
  %2215 = load i8, ptr %2212, align 1, !tbaa !55
  %2216 = getelementptr inbounds i8, ptr %2211, i64 -1
  store i8 %2215, ptr %2216, align 1, !tbaa !55
  %2217 = icmp eq i64 %2213, 0
  br i1 %2217, label %2220, label %2209, !llvm.loop !132

2218:                                             ; preds = %2207
  %2219 = load i64, ptr %2208, align 1
  store i64 %2219, ptr %29, align 8
  br label %2220

2220:                                             ; preds = %2209, %2218
  %2221 = load ptr, ptr %7, align 8, !tbaa !76
  %2222 = getelementptr inbounds i8, ptr %2221, i64 8
  store ptr %2222, ptr %7, align 8, !tbaa !76
  br label %2223

2223:                                             ; preds = %2205, %2220
  %2224 = load i64, ptr %29, align 8, !tbaa !63
  br i1 %176, label %2225, label %2229

2225:                                             ; preds = %2223
  %2226 = call ptr @Perl_newSVuv(i64 noundef %2224) #11
  %2227 = call ptr @Perl_sv_2mortal(ptr noundef %2226) #11
  %2228 = getelementptr inbounds ptr, ptr %2202, i64 1
  store ptr %2227, ptr %2228, align 8, !tbaa !76
  br label %2235

2229:                                             ; preds = %2223
  br i1 %177, label %2230, label %2233

2230:                                             ; preds = %2229
  %2231 = uitofp i64 %2224 to double
  %2232 = fadd double %2204, %2231
  br label %2235

2233:                                             ; preds = %2229
  %2234 = add i64 %2224, %2203
  br label %2235

2235:                                             ; preds = %2230, %2233, %2225
  %2236 = phi double [ %2232, %2230 ], [ %2204, %2233 ], [ %2204, %2225 ]
  %2237 = phi i64 [ %2203, %2230 ], [ %2234, %2233 ], [ %2203, %2225 ]
  %2238 = phi ptr [ %2202, %2230 ], [ %2202, %2233 ], [ %2228, %2225 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %29) #11
  %2239 = add nsw i32 %2201, -1
  %2240 = icmp sgt i32 %2201, 0
  br i1 %2240, label %2200, label %2502, !llvm.loop !155

2241:                                             ; preds = %164, %2273
  %2242 = phi i32 [ %162, %164 ], [ %2276, %2273 ]
  %2243 = phi ptr [ %142, %164 ], [ %2275, %2273 ]
  %2244 = phi double [ %92, %164 ], [ %2274, %2273 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %30) #11
  br i1 %167, label %2247, label %2245

2245:                                             ; preds = %2241
  %2246 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %7, ptr noundef %3, ptr noundef nonnull %30, i32 noundef 4, i32 noundef %88)
  br label %2263

2247:                                             ; preds = %2241
  %2248 = load ptr, ptr %7, align 8, !tbaa !76
  br i1 %144, label %2249, label %2258

2249:                                             ; preds = %2247, %2249
  %2250 = phi i64 [ %2253, %2249 ], [ 4, %2247 ]
  %2251 = phi ptr [ %2256, %2249 ], [ %165, %2247 ]
  %2252 = phi ptr [ %2254, %2249 ], [ %2248, %2247 ]
  %2253 = add nsw i64 %2250, -1
  %2254 = getelementptr inbounds i8, ptr %2252, i64 1
  %2255 = load i8, ptr %2252, align 1, !tbaa !55
  %2256 = getelementptr inbounds i8, ptr %2251, i64 -1
  store i8 %2255, ptr %2256, align 1, !tbaa !55
  %2257 = icmp eq i64 %2253, 0
  br i1 %2257, label %2260, label %2249, !llvm.loop !132

2258:                                             ; preds = %2247
  %2259 = load i32, ptr %2248, align 1
  store i32 %2259, ptr %30, align 4
  br label %2260

2260:                                             ; preds = %2249, %2258
  %2261 = load ptr, ptr %7, align 8, !tbaa !76
  %2262 = getelementptr inbounds i8, ptr %2261, i64 4
  store ptr %2262, ptr %7, align 8, !tbaa !76
  br label %2263

2263:                                             ; preds = %2245, %2260
  br i1 %168, label %2264, label %2269

2264:                                             ; preds = %2263
  %2265 = call ptr @Perl_sv_newmortal() #11
  %2266 = getelementptr inbounds ptr, ptr %2243, i64 1
  store ptr %2265, ptr %2266, align 8, !tbaa !76
  %2267 = load float, ptr %30, align 4, !tbaa !156
  %2268 = fpext float %2267 to double
  call void @Perl_sv_setnv(ptr noundef %2265, double noundef %2268) #11
  br label %2273

2269:                                             ; preds = %2263
  %2270 = load float, ptr %30, align 4, !tbaa !156
  %2271 = fpext float %2270 to double
  %2272 = fadd double %2244, %2271
  br label %2273

2273:                                             ; preds = %2269, %2264
  %2274 = phi double [ %2272, %2269 ], [ %2244, %2264 ]
  %2275 = phi ptr [ %2243, %2269 ], [ %2266, %2264 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %30) #11
  %2276 = add nsw i32 %2242, -1
  %2277 = icmp sgt i32 %2242, 0
  br i1 %2277, label %2241, label %2502, !llvm.loop !158

2278:                                             ; preds = %156, %2308
  %2279 = phi i32 [ %154, %156 ], [ %2311, %2308 ]
  %2280 = phi ptr [ %142, %156 ], [ %2310, %2308 ]
  %2281 = phi double [ %92, %156 ], [ %2309, %2308 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %31) #11
  br i1 %159, label %2284, label %2282

2282:                                             ; preds = %2278
  %2283 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %7, ptr noundef %3, ptr noundef nonnull %31, i32 noundef 8, i32 noundef %88)
  br label %2300

2284:                                             ; preds = %2278
  %2285 = load ptr, ptr %7, align 8, !tbaa !76
  br i1 %144, label %2286, label %2295

2286:                                             ; preds = %2284, %2286
  %2287 = phi i64 [ %2290, %2286 ], [ 8, %2284 ]
  %2288 = phi ptr [ %2293, %2286 ], [ %157, %2284 ]
  %2289 = phi ptr [ %2291, %2286 ], [ %2285, %2284 ]
  %2290 = add nsw i64 %2287, -1
  %2291 = getelementptr inbounds i8, ptr %2289, i64 1
  %2292 = load i8, ptr %2289, align 1, !tbaa !55
  %2293 = getelementptr inbounds i8, ptr %2288, i64 -1
  store i8 %2292, ptr %2293, align 1, !tbaa !55
  %2294 = icmp eq i64 %2290, 0
  br i1 %2294, label %2297, label %2286, !llvm.loop !132

2295:                                             ; preds = %2284
  %2296 = load i64, ptr %2285, align 1
  store i64 %2296, ptr %31, align 8
  br label %2297

2297:                                             ; preds = %2286, %2295
  %2298 = load ptr, ptr %7, align 8, !tbaa !76
  %2299 = getelementptr inbounds i8, ptr %2298, i64 8
  store ptr %2299, ptr %7, align 8, !tbaa !76
  br label %2300

2300:                                             ; preds = %2282, %2297
  br i1 %160, label %2301, label %2305

2301:                                             ; preds = %2300
  %2302 = call ptr @Perl_sv_newmortal() #11
  %2303 = getelementptr inbounds ptr, ptr %2280, i64 1
  store ptr %2302, ptr %2303, align 8, !tbaa !76
  %2304 = load double, ptr %31, align 8, !tbaa !159
  call void @Perl_sv_setnv(ptr noundef %2302, double noundef %2304) #11
  br label %2308

2305:                                             ; preds = %2300
  %2306 = load double, ptr %31, align 8, !tbaa !159
  %2307 = fadd double %2281, %2306
  br label %2308

2308:                                             ; preds = %2305, %2301
  %2309 = phi double [ %2307, %2305 ], [ %2281, %2301 ]
  %2310 = phi ptr [ %2280, %2305 ], [ %2303, %2301 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %31) #11
  %2311 = add nsw i32 %2279, -1
  %2312 = icmp sgt i32 %2279, 0
  br i1 %2312, label %2278, label %2502, !llvm.loop !161

2313:                                             ; preds = %148, %2343
  %2314 = phi i32 [ %146, %148 ], [ %2346, %2343 ]
  %2315 = phi ptr [ %142, %148 ], [ %2345, %2343 ]
  %2316 = phi double [ %92, %148 ], [ %2344, %2343 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %32) #11
  br i1 %151, label %2319, label %2317

2317:                                             ; preds = %2313
  %2318 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %7, ptr noundef %3, ptr noundef nonnull %32, i32 noundef 8, i32 noundef %88)
  br label %2335

2319:                                             ; preds = %2313
  %2320 = load ptr, ptr %7, align 8, !tbaa !76
  br i1 %144, label %2321, label %2330

2321:                                             ; preds = %2319, %2321
  %2322 = phi i64 [ %2325, %2321 ], [ 8, %2319 ]
  %2323 = phi ptr [ %2328, %2321 ], [ %149, %2319 ]
  %2324 = phi ptr [ %2326, %2321 ], [ %2320, %2319 ]
  %2325 = add nsw i64 %2322, -1
  %2326 = getelementptr inbounds i8, ptr %2324, i64 1
  %2327 = load i8, ptr %2324, align 1, !tbaa !55
  %2328 = getelementptr inbounds i8, ptr %2323, i64 -1
  store i8 %2327, ptr %2328, align 1, !tbaa !55
  %2329 = icmp eq i64 %2325, 0
  br i1 %2329, label %2332, label %2321, !llvm.loop !132

2330:                                             ; preds = %2319
  %2331 = load i64, ptr %2320, align 1
  store i64 %2331, ptr %32, align 8
  br label %2332

2332:                                             ; preds = %2321, %2330
  %2333 = load ptr, ptr %7, align 8, !tbaa !76
  %2334 = getelementptr inbounds i8, ptr %2333, i64 8
  store ptr %2334, ptr %7, align 8, !tbaa !76
  br label %2335

2335:                                             ; preds = %2317, %2332
  br i1 %152, label %2336, label %2340

2336:                                             ; preds = %2335
  %2337 = call ptr @Perl_sv_newmortal() #11
  %2338 = getelementptr inbounds ptr, ptr %2315, i64 1
  store ptr %2337, ptr %2338, align 8, !tbaa !76
  %2339 = load double, ptr %32, align 8, !tbaa !55
  call void @Perl_sv_setnv(ptr noundef %2337, double noundef %2339) #11
  br label %2343

2340:                                             ; preds = %2335
  %2341 = load double, ptr %32, align 8, !tbaa !55
  %2342 = fadd double %2316, %2341
  br label %2343

2343:                                             ; preds = %2340, %2336
  %2344 = phi double [ %2342, %2340 ], [ %2316, %2336 ]
  %2345 = phi ptr [ %2315, %2340 ], [ %2338, %2336 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %32) #11
  %2346 = add nsw i32 %2314, -1
  %2347 = icmp sgt i32 %2314, 0
  br i1 %2347, label %2313, label %2502, !llvm.loop !162

2348:                                             ; preds = %140
  %2349 = icmp eq i32 %95, 0
  br i1 %2349, label %2350, label %2364

2350:                                             ; preds = %2348
  %2351 = ptrtoint ptr %3 to i64
  %2352 = load ptr, ptr %7, align 8, !tbaa !76
  %2353 = ptrtoint ptr %2352 to i64
  %2354 = sub i64 %2351, %2353
  %2355 = mul i64 %2354, 3
  %2356 = lshr i64 %2355, 2
  %2357 = call ptr @Perl_newSV(i64 noundef %2356) #11
  %2358 = call ptr @Perl_sv_2mortal(ptr noundef %2357) #11
  %2359 = icmp ult i64 %2355, 4
  br i1 %2359, label %2364, label %2360

2360:                                             ; preds = %2350
  %2361 = getelementptr inbounds %struct.sv, ptr %2358, i64 0, i32 2
  %2362 = load i32, ptr %2361, align 4, !tbaa !111
  %2363 = or i32 %2362, 17408
  store i32 %2363, ptr %2361, align 4, !tbaa !111
  br label %2364

2364:                                             ; preds = %2350, %2360, %2348
  %2365 = phi ptr [ %96, %2348 ], [ %2358, %2360 ], [ %2358, %2350 ]
  %2366 = load ptr, ptr %7, align 8, !tbaa !76
  %2367 = icmp ult ptr %2366, %3
  br i1 %2367, label %2368, label %2489

2368:                                             ; preds = %2364
  %2369 = load i8, ptr %2366, align 1, !tbaa !55
  %2370 = add i8 %2369, -33
  %2371 = icmp ult i8 %2370, 64
  br i1 %2371, label %2372, label %2489

2372:                                             ; preds = %2368
  %2373 = getelementptr inbounds [3 x i8], ptr %33, i64 0, i64 1
  %2374 = getelementptr inbounds [3 x i8], ptr %33, i64 0, i64 2
  br label %2379

2375:                                             ; preds = %2486
  %2376 = load i8, ptr %2487, align 1, !tbaa !55
  %2377 = add i8 %2376, -33
  %2378 = icmp ult i8 %2377, 64
  br i1 %2378, label %2379, label %2489, !llvm.loop !163

2379:                                             ; preds = %2372, %2375
  %2380 = phi ptr [ %2487, %2375 ], [ %2366, %2372 ]
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %33) #11
  %2381 = getelementptr inbounds i8, ptr %2380, i64 1
  store ptr %2381, ptr %7, align 8, !tbaa !76
  %2382 = load i8, ptr %2380, align 1, !tbaa !55
  %2383 = zext i8 %2382 to i64
  %2384 = getelementptr inbounds [256 x i8], ptr @PL_uudmap, i64 0, i64 %2383
  %2385 = load i8, ptr %2384, align 1, !tbaa !55
  %2386 = and i8 %2385, 63
  %2387 = zext nneg i8 %2386 to i32
  %2388 = icmp eq i8 %2386, 0
  br i1 %2388, label %2472, label %2389

2389:                                             ; preds = %2379, %2469
  %2390 = phi i32 [ %2470, %2469 ], [ %2387, %2379 ]
  %2391 = load ptr, ptr %7, align 8, !tbaa !76
  %2392 = icmp ult ptr %2391, %3
  br i1 %2392, label %2393, label %2405

2393:                                             ; preds = %2389
  %2394 = load i8, ptr %2391, align 1, !tbaa !55
  %2395 = add i8 %2394, -32
  %2396 = icmp ult i8 %2395, 65
  br i1 %2396, label %2397, label %2405

2397:                                             ; preds = %2393
  %2398 = getelementptr inbounds i8, ptr %2391, i64 1
  store ptr %2398, ptr %7, align 8, !tbaa !76
  %2399 = load i8, ptr %2391, align 1, !tbaa !55
  %2400 = zext i8 %2399 to i64
  %2401 = getelementptr inbounds [256 x i8], ptr @PL_uudmap, i64 0, i64 %2400
  %2402 = load i8, ptr %2401, align 1, !tbaa !55
  %2403 = and i8 %2402, 63
  %2404 = zext nneg i8 %2403 to i32
  br label %2405

2405:                                             ; preds = %2389, %2393, %2397
  %2406 = phi i32 [ %2404, %2397 ], [ 0, %2393 ], [ 0, %2389 ]
  %2407 = load ptr, ptr %7, align 8, !tbaa !76
  %2408 = icmp ult ptr %2407, %3
  br i1 %2408, label %2409, label %2421

2409:                                             ; preds = %2405
  %2410 = load i8, ptr %2407, align 1, !tbaa !55
  %2411 = add i8 %2410, -32
  %2412 = icmp ult i8 %2411, 65
  br i1 %2412, label %2413, label %2421

2413:                                             ; preds = %2409
  %2414 = getelementptr inbounds i8, ptr %2407, i64 1
  store ptr %2414, ptr %7, align 8, !tbaa !76
  %2415 = load i8, ptr %2407, align 1, !tbaa !55
  %2416 = zext i8 %2415 to i64
  %2417 = getelementptr inbounds [256 x i8], ptr @PL_uudmap, i64 0, i64 %2416
  %2418 = load i8, ptr %2417, align 1, !tbaa !55
  %2419 = and i8 %2418, 63
  %2420 = zext nneg i8 %2419 to i32
  br label %2421

2421:                                             ; preds = %2405, %2409, %2413
  %2422 = phi i32 [ %2420, %2413 ], [ 0, %2409 ], [ 0, %2405 ]
  %2423 = load ptr, ptr %7, align 8, !tbaa !76
  %2424 = icmp ult ptr %2423, %3
  br i1 %2424, label %2425, label %2437

2425:                                             ; preds = %2421
  %2426 = load i8, ptr %2423, align 1, !tbaa !55
  %2427 = add i8 %2426, -32
  %2428 = icmp ult i8 %2427, 65
  br i1 %2428, label %2429, label %2437

2429:                                             ; preds = %2425
  %2430 = getelementptr inbounds i8, ptr %2423, i64 1
  store ptr %2430, ptr %7, align 8, !tbaa !76
  %2431 = load i8, ptr %2423, align 1, !tbaa !55
  %2432 = zext i8 %2431 to i64
  %2433 = getelementptr inbounds [256 x i8], ptr @PL_uudmap, i64 0, i64 %2432
  %2434 = load i8, ptr %2433, align 1, !tbaa !55
  %2435 = and i8 %2434, 63
  %2436 = zext nneg i8 %2435 to i32
  br label %2437

2437:                                             ; preds = %2421, %2425, %2429
  %2438 = phi i32 [ %2436, %2429 ], [ 0, %2425 ], [ 0, %2421 ]
  %2439 = load ptr, ptr %7, align 8, !tbaa !76
  %2440 = icmp ult ptr %2439, %3
  br i1 %2440, label %2441, label %2453

2441:                                             ; preds = %2437
  %2442 = load i8, ptr %2439, align 1, !tbaa !55
  %2443 = add i8 %2442, -32
  %2444 = icmp ult i8 %2443, 65
  br i1 %2444, label %2445, label %2453

2445:                                             ; preds = %2441
  %2446 = getelementptr inbounds i8, ptr %2439, i64 1
  store ptr %2446, ptr %7, align 8, !tbaa !76
  %2447 = load i8, ptr %2439, align 1, !tbaa !55
  %2448 = zext i8 %2447 to i64
  %2449 = getelementptr inbounds [256 x i8], ptr @PL_uudmap, i64 0, i64 %2448
  %2450 = load i8, ptr %2449, align 1, !tbaa !55
  %2451 = and i8 %2450, 63
  %2452 = zext nneg i8 %2451 to i32
  br label %2453

2453:                                             ; preds = %2437, %2441, %2445
  %2454 = phi i32 [ %2452, %2445 ], [ 0, %2441 ], [ 0, %2437 ]
  %2455 = shl nuw nsw i32 %2406, 2
  %2456 = lshr i32 %2422, 4
  %2457 = or i32 %2456, %2455
  %2458 = trunc i32 %2457 to i8
  store i8 %2458, ptr %33, align 1, !tbaa !55
  %2459 = shl nuw nsw i32 %2422, 4
  %2460 = lshr i32 %2438, 2
  %2461 = or i32 %2460, %2459
  %2462 = trunc i32 %2461 to i8
  store i8 %2462, ptr %2373, align 1, !tbaa !55
  %2463 = shl nuw nsw i32 %2438, 6
  %2464 = or i32 %2454, %2463
  %2465 = trunc i32 %2464 to i8
  store i8 %2465, ptr %2374, align 1, !tbaa !55
  br i1 %2349, label %2466, label %2469

2466:                                             ; preds = %2453
  %2467 = call i32 @llvm.smin.i32(i32 %2390, i32 3)
  %2468 = zext nneg i32 %2467 to i64
  call void @Perl_sv_catpvn_flags(ptr noundef %2365, ptr noundef nonnull %33, i64 noundef %2468, i32 noundef 2) #11
  br label %2469

2469:                                             ; preds = %2466, %2453
  %2470 = add nsw i32 %2390, -3
  %2471 = icmp sgt i32 %2390, 3
  br i1 %2471, label %2389, label %2472, !llvm.loop !164

2472:                                             ; preds = %2469, %2379
  %2473 = phi i32 [ %2387, %2379 ], [ %2470, %2469 ]
  %2474 = load ptr, ptr %7, align 8, !tbaa !76
  %2475 = load i8, ptr %2474, align 1, !tbaa !55
  %2476 = icmp eq i8 %2475, 10
  %2477 = getelementptr inbounds i8, ptr %2474, i64 1
  br i1 %2476, label %2478, label %2479

2478:                                             ; preds = %2472
  store ptr %2477, ptr %7, align 8, !tbaa !76
  br label %2486

2479:                                             ; preds = %2472
  %2480 = icmp ult ptr %2477, %3
  br i1 %2480, label %2481, label %2486

2481:                                             ; preds = %2479
  %2482 = load i8, ptr %2477, align 1, !tbaa !55
  %2483 = icmp eq i8 %2482, 10
  br i1 %2483, label %2484, label %2486

2484:                                             ; preds = %2481
  %2485 = getelementptr inbounds i8, ptr %2474, i64 2
  store ptr %2485, ptr %7, align 8, !tbaa !76
  br label %2486

2486:                                             ; preds = %2479, %2481, %2484, %2478
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %33) #11
  %2487 = load ptr, ptr %7, align 8, !tbaa !76
  %2488 = icmp ult ptr %2487, %3
  br i1 %2488, label %2375, label %2489, !llvm.loop !163

2489:                                             ; preds = %2375, %2486, %2368, %2364
  %2490 = phi i32 [ %141, %2364 ], [ %141, %2368 ], [ %2473, %2486 ], [ %2473, %2375 ]
  br i1 %2349, label %2491, label %2502

2491:                                             ; preds = %2489
  %2492 = load ptr, ptr @PL_stack_max, align 8, !tbaa !76
  %2493 = ptrtoint ptr %2492 to i64
  %2494 = ptrtoint ptr %142 to i64
  %2495 = sub i64 %2493, %2494
  %2496 = icmp slt i64 %2495, 8
  br i1 %2496, label %2497, label %2499

2497:                                             ; preds = %2491
  %2498 = call ptr @Perl_stack_grow(ptr noundef %142, ptr noundef %142, i64 noundef 1) #11
  br label %2499

2499:                                             ; preds = %2491, %2497
  %2500 = phi ptr [ %2498, %2497 ], [ %142, %2491 ]
  %2501 = getelementptr inbounds ptr, ptr %2500, i64 1
  store ptr %2365, ptr %2501, align 8, !tbaa !76
  br label %2502

2502:                                             ; preds = %2343, %2308, %2273, %2235, %2194, %1957, %1930, %1873, %1816, %1775, %1732, %1691, %1650, %1609, %1557, %1505, %1448, %1391, %1338, %1278, %1125, %844, %834, %1176, %1221, %1211, %1190, %510, %466, %145, %153, %161, %169, %178, %195, %1879, %1822, %202, %211, %220, %229, %238, %1563, %1511, %1454, %1397, %1345, %1070, %832, %833, %1138, %1205, %1208, %1187, %503, %443, %494, %2107, %2116, %1236, %1041, %1059, %938, %818, %814, %2489, %2499, %2129, %2154, %1233, %1240, %1064, %1065, %528, %476, %403, %395, %391, %750, %432, %362, %287
  %2503 = phi i32 [ %2490, %2489 ], [ %2490, %2499 ], [ %141, %2154 ], [ %141, %2129 ], [ 0, %1240 ], [ 0, %1233 ], [ 0, %1065 ], [ 0, %1064 ], [ %731, %750 ], [ %500, %528 ], [ %440, %476 ], [ %407, %432 ], [ %141, %403 ], [ %392, %395 ], [ %392, %391 ], [ %329, %362 ], [ %288, %287 ], [ %924, %938 ], [ %815, %818 ], [ 0, %814 ], [ %1042, %1059 ], [ %1042, %1041 ], [ 0, %1236 ], [ %2108, %2116 ], [ %2108, %2107 ], [ %498, %494 ], [ %440, %443 ], [ %500, %503 ], [ %1188, %1187 ], [ %1203, %1208 ], [ %1203, %1205 ], [ %1139, %1138 ], [ %830, %833 ], [ %830, %832 ], [ %1071, %1070 ], [ %1346, %1345 ], [ %1398, %1397 ], [ %1455, %1454 ], [ %1512, %1511 ], [ %1564, %1563 ], [ %239, %238 ], [ %230, %229 ], [ %221, %220 ], [ %212, %211 ], [ %203, %202 ], [ %1823, %1822 ], [ %1880, %1879 ], [ %196, %195 ], [ %179, %178 ], [ %170, %169 ], [ %162, %161 ], [ %154, %153 ], [ %146, %145 ], [ 0, %466 ], [ 0, %510 ], [ -1, %1190 ], [ -1, %1211 ], [ -1, %1221 ], [ %1180, %1176 ], [ -1, %834 ], [ -1, %844 ], [ %1129, %1125 ], [ %1284, %1278 ], [ %1284, %1338 ], [ -1, %1391 ], [ -1, %1448 ], [ -1, %1505 ], [ -1, %1557 ], [ -1, %1609 ], [ -1, %1650 ], [ -1, %1691 ], [ -1, %1732 ], [ -1, %1775 ], [ -1, %1816 ], [ -1, %1873 ], [ -1, %1930 ], [ -1, %1957 ], [ -1, %2194 ], [ -1, %2235 ], [ -1, %2273 ], [ -1, %2308 ], [ -1, %2343 ]
  %2504 = phi i8 [ %90, %2489 ], [ %90, %2499 ], [ %90, %2154 ], [ %90, %2129 ], [ %90, %1240 ], [ %90, %1233 ], [ %1069, %1065 ], [ %90, %1064 ], [ %90, %750 ], [ %90, %528 ], [ %90, %476 ], [ %90, %432 ], [ %90, %403 ], [ %90, %395 ], [ %90, %391 ], [ %90, %362 ], [ %90, %287 ], [ %90, %938 ], [ %90, %818 ], [ %90, %814 ], [ %90, %1059 ], [ %90, %1041 ], [ 0, %1236 ], [ %90, %2116 ], [ %90, %2107 ], [ %90, %494 ], [ %90, %443 ], [ %90, %503 ], [ %90, %1187 ], [ %90, %1208 ], [ %90, %1205 ], [ %90, %1138 ], [ %90, %833 ], [ %90, %832 ], [ %90, %1070 ], [ %90, %1345 ], [ %90, %1397 ], [ %90, %1454 ], [ %90, %1511 ], [ %90, %1563 ], [ %90, %238 ], [ %90, %229 ], [ %90, %220 ], [ %90, %211 ], [ %90, %202 ], [ %90, %1822 ], [ %90, %1879 ], [ %90, %195 ], [ %90, %178 ], [ %90, %169 ], [ %90, %161 ], [ %90, %153 ], [ %90, %145 ], [ %90, %466 ], [ %90, %510 ], [ %90, %1190 ], [ %90, %1211 ], [ %90, %1221 ], [ %90, %1176 ], [ %90, %834 ], [ %90, %844 ], [ %90, %1125 ], [ %90, %1278 ], [ %90, %1338 ], [ %90, %1391 ], [ %90, %1448 ], [ %90, %1505 ], [ %90, %1557 ], [ %90, %1609 ], [ %90, %1650 ], [ %90, %1691 ], [ %90, %1732 ], [ %90, %1775 ], [ %90, %1816 ], [ %90, %1873 ], [ %90, %1930 ], [ %90, %1957 ], [ %90, %2194 ], [ %90, %2235 ], [ %90, %2273 ], [ %90, %2308 ], [ %90, %2343 ]
  %2505 = phi double [ %92, %2489 ], [ %92, %2499 ], [ %92, %2154 ], [ %92, %2129 ], [ %92, %1240 ], [ %92, %1233 ], [ %92, %1065 ], [ %92, %1064 ], [ %92, %750 ], [ %92, %528 ], [ %92, %476 ], [ %92, %432 ], [ %92, %403 ], [ %92, %395 ], [ %92, %391 ], [ %92, %362 ], [ %92, %287 ], [ %92, %938 ], [ %92, %818 ], [ %92, %814 ], [ %92, %1059 ], [ %92, %1041 ], [ %92, %1236 ], [ %92, %2116 ], [ %92, %2107 ], [ %92, %494 ], [ %92, %443 ], [ %92, %503 ], [ %92, %1187 ], [ %92, %1208 ], [ %92, %1205 ], [ %92, %1138 ], [ %92, %833 ], [ %92, %832 ], [ %92, %1070 ], [ %92, %1345 ], [ %92, %1397 ], [ %92, %1454 ], [ %92, %1511 ], [ %92, %1563 ], [ %92, %238 ], [ %92, %229 ], [ %92, %220 ], [ %92, %211 ], [ %92, %202 ], [ %92, %1822 ], [ %92, %1879 ], [ %92, %195 ], [ %92, %178 ], [ %92, %169 ], [ %92, %161 ], [ %92, %153 ], [ %92, %145 ], [ %92, %466 ], [ %92, %510 ], [ %92, %1190 ], [ %1218, %1211 ], [ %92, %1221 ], [ %1177, %1176 ], [ %92, %834 ], [ %92, %844 ], [ %1126, %1125 ], [ %1340, %1338 ], [ %1280, %1278 ], [ %1392, %1391 ], [ %1449, %1448 ], [ %1506, %1505 ], [ %1558, %1557 ], [ %1610, %1609 ], [ %1651, %1650 ], [ %1692, %1691 ], [ %1733, %1732 ], [ %1776, %1775 ], [ %1817, %1816 ], [ %1874, %1873 ], [ %1931, %1930 ], [ %92, %1957 ], [ %2195, %2194 ], [ %2236, %2235 ], [ %2274, %2273 ], [ %2309, %2308 ], [ %2344, %2343 ]
  %2506 = phi i64 [ %93, %2489 ], [ %93, %2499 ], [ %93, %2154 ], [ %93, %2129 ], [ %93, %1240 ], [ %93, %1233 ], [ %93, %1065 ], [ %93, %1064 ], [ %93, %750 ], [ %93, %528 ], [ %93, %476 ], [ %93, %432 ], [ %93, %403 ], [ %93, %395 ], [ %93, %391 ], [ %93, %362 ], [ %93, %287 ], [ %93, %938 ], [ %816, %818 ], [ %816, %814 ], [ %93, %1059 ], [ %93, %1041 ], [ %93, %1236 ], [ %93, %2116 ], [ %93, %2107 ], [ %93, %494 ], [ %93, %443 ], [ %93, %503 ], [ %93, %1187 ], [ %93, %1208 ], [ %93, %1205 ], [ %93, %1138 ], [ %816, %833 ], [ %816, %832 ], [ %93, %1070 ], [ %93, %1345 ], [ %93, %1397 ], [ %93, %1454 ], [ %93, %1511 ], [ %93, %1563 ], [ %93, %238 ], [ %93, %229 ], [ %93, %220 ], [ %93, %211 ], [ %93, %202 ], [ %93, %1822 ], [ %93, %1879 ], [ %93, %195 ], [ %93, %178 ], [ %93, %169 ], [ %93, %161 ], [ %93, %153 ], [ %93, %145 ], [ %93, %466 ], [ %93, %510 ], [ %93, %1190 ], [ %93, %1211 ], [ %1228, %1221 ], [ %1178, %1176 ], [ %840, %834 ], [ %850, %844 ], [ %1127, %1125 ], [ %1341, %1338 ], [ %1281, %1278 ], [ %1393, %1391 ], [ %1450, %1448 ], [ %1507, %1505 ], [ %1559, %1557 ], [ %1611, %1609 ], [ %1652, %1650 ], [ %1693, %1691 ], [ %1734, %1732 ], [ %1777, %1775 ], [ %1818, %1816 ], [ %1875, %1873 ], [ %1932, %1930 ], [ %93, %1957 ], [ %2196, %2194 ], [ %2237, %2235 ], [ %93, %2273 ], [ %93, %2308 ], [ %93, %2343 ]
  %2507 = phi i64 [ %94, %2489 ], [ %94, %2499 ], [ %94, %2154 ], [ %94, %2129 ], [ %94, %1240 ], [ %94, %1233 ], [ %94, %1065 ], [ %94, %1064 ], [ %94, %750 ], [ %94, %528 ], [ %94, %476 ], [ %94, %432 ], [ %94, %403 ], [ %94, %395 ], [ %94, %391 ], [ %94, %362 ], [ %94, %287 ], [ %94, %938 ], [ %94, %818 ], [ %94, %814 ], [ %94, %1059 ], [ %94, %1041 ], [ %94, %1236 ], [ %94, %2116 ], [ %94, %2107 ], [ %94, %494 ], [ %94, %443 ], [ %94, %503 ], [ %94, %1187 ], [ %94, %1208 ], [ %94, %1205 ], [ %94, %1138 ], [ %94, %833 ], [ %94, %832 ], [ %94, %1070 ], [ %94, %1345 ], [ %94, %1397 ], [ %94, %1454 ], [ %94, %1511 ], [ %94, %1563 ], [ %94, %238 ], [ %94, %229 ], [ %94, %220 ], [ %94, %211 ], [ %94, %202 ], [ %94, %1822 ], [ %94, %1879 ], [ %94, %195 ], [ %94, %178 ], [ %94, %169 ], [ %94, %161 ], [ %94, %153 ], [ %94, %145 ], [ %94, %466 ], [ %94, %510 ], [ %94, %1190 ], [ %94, %1211 ], [ %94, %1221 ], [ %94, %1176 ], [ %94, %834 ], [ %94, %844 ], [ %94, %1125 ], [ %1342, %1338 ], [ %1282, %1278 ], [ %94, %1391 ], [ %94, %1448 ], [ %94, %1505 ], [ %94, %1557 ], [ %94, %1609 ], [ %94, %1650 ], [ %94, %1691 ], [ %94, %1732 ], [ %94, %1775 ], [ %94, %1816 ], [ %94, %1873 ], [ %94, %1930 ], [ %94, %1957 ], [ %94, %2194 ], [ %94, %2235 ], [ %94, %2273 ], [ %94, %2308 ], [ %94, %2343 ]
  %2508 = phi ptr [ %2365, %2489 ], [ %2365, %2499 ], [ %96, %2154 ], [ %96, %2129 ], [ %96, %1240 ], [ %96, %1233 ], [ %96, %1065 ], [ %96, %1064 ], [ %732, %750 ], [ %96, %528 ], [ %96, %476 ], [ %96, %432 ], [ %96, %403 ], [ %96, %395 ], [ %96, %391 ], [ %96, %362 ], [ %96, %287 ], [ %858, %938 ], [ %96, %818 ], [ %96, %814 ], [ %972, %1059 ], [ %972, %1041 ], [ %96, %1236 ], [ %2110, %2116 ], [ %2110, %2107 ], [ %96, %494 ], [ %96, %443 ], [ %96, %503 ], [ %96, %1187 ], [ %96, %1208 ], [ %96, %1205 ], [ %96, %1138 ], [ %96, %833 ], [ %96, %832 ], [ %96, %1070 ], [ %96, %1345 ], [ %96, %1397 ], [ %96, %1454 ], [ %96, %1511 ], [ %96, %1563 ], [ %96, %238 ], [ %96, %229 ], [ %96, %220 ], [ %96, %211 ], [ %96, %202 ], [ %96, %1822 ], [ %96, %1879 ], [ %96, %195 ], [ %96, %178 ], [ %96, %169 ], [ %96, %161 ], [ %96, %153 ], [ %96, %145 ], [ %96, %466 ], [ %96, %510 ], [ %96, %1190 ], [ %96, %1211 ], [ %96, %1221 ], [ %96, %1176 ], [ %96, %834 ], [ %96, %844 ], [ %96, %1125 ], [ %96, %1278 ], [ %96, %1338 ], [ %96, %1391 ], [ %96, %1448 ], [ %96, %1505 ], [ %96, %1557 ], [ %96, %1609 ], [ %96, %1650 ], [ %96, %1691 ], [ %96, %1732 ], [ %96, %1775 ], [ %96, %1816 ], [ %96, %1873 ], [ %96, %1930 ], [ %96, %1957 ], [ %96, %2194 ], [ %96, %2235 ], [ %96, %2273 ], [ %96, %2308 ], [ %96, %2343 ]
  %2509 = phi ptr [ %142, %2489 ], [ %2501, %2499 ], [ %2158, %2154 ], [ %2130, %2129 ], [ %142, %1240 ], [ %142, %1233 ], [ %142, %1065 ], [ %142, %1064 ], [ %753, %750 ], [ %142, %528 ], [ %142, %476 ], [ %142, %432 ], [ %142, %403 ], [ %142, %395 ], [ %142, %391 ], [ %365, %362 ], [ %290, %287 ], [ %940, %938 ], [ %142, %818 ], [ %142, %814 ], [ %1061, %1059 ], [ %142, %1041 ], [ %142, %1236 ], [ %2111, %2116 ], [ %2111, %2107 ], [ %142, %494 ], [ %142, %443 ], [ %142, %503 ], [ %142, %1187 ], [ %142, %1208 ], [ %142, %1205 ], [ %142, %1138 ], [ %142, %833 ], [ %142, %832 ], [ %142, %1070 ], [ %142, %1345 ], [ %142, %1397 ], [ %142, %1454 ], [ %142, %1511 ], [ %142, %1563 ], [ %142, %238 ], [ %142, %229 ], [ %142, %220 ], [ %142, %211 ], [ %142, %202 ], [ %142, %1822 ], [ %142, %1879 ], [ %142, %195 ], [ %142, %178 ], [ %142, %169 ], [ %142, %161 ], [ %142, %153 ], [ %142, %145 ], [ %142, %466 ], [ %142, %510 ], [ %1197, %1190 ], [ %142, %1211 ], [ %142, %1221 ], [ %1179, %1176 ], [ %142, %834 ], [ %142, %844 ], [ %1128, %1125 ], [ %1343, %1338 ], [ %1283, %1278 ], [ %1394, %1391 ], [ %1451, %1448 ], [ %1508, %1505 ], [ %1560, %1557 ], [ %1612, %1609 ], [ %1653, %1650 ], [ %1694, %1691 ], [ %1735, %1732 ], [ %1778, %1775 ], [ %1819, %1816 ], [ %1876, %1873 ], [ %1933, %1930 ], [ %1961, %1957 ], [ %2197, %2194 ], [ %2238, %2235 ], [ %2275, %2273 ], [ %2310, %2308 ], [ %2345, %2343 ]
  %2510 = icmp eq i32 %95, 0
  br i1 %2510, label %2567, label %2511, !prof !165

2511:                                             ; preds = %2502
  %2512 = and i32 %88, 255
  %2513 = call ptr @memchr(ptr nonnull dereferenceable(1) @.str.12, i32 %2512, i64 5)
  %2514 = icmp eq ptr %2513, null
  br i1 %2514, label %2515, label %2520

2515:                                             ; preds = %2511
  %2516 = icmp sgt i32 %95, 64
  br i1 %2516, label %2517, label %2544

2517:                                             ; preds = %2515
  %2518 = call ptr @memchr(ptr nonnull dereferenceable(1) @.str.13, i32 %2512, i64 19)
  %2519 = icmp eq ptr %2518, null
  br i1 %2519, label %2544, label %2520

2520:                                             ; preds = %2517, %2511
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %34) #11
  %2521 = and i32 %95, 15
  %2522 = shl nuw nsw i32 1, %2521
  %2523 = sitofp i32 %2522 to double
  %2524 = icmp sgt i32 %95, 15
  br i1 %2524, label %2528, label %2525

2525:                                             ; preds = %2528, %2520
  %2526 = phi double [ %2523, %2520 ], [ %2532, %2528 ]
  %2527 = fcmp olt double %2505, 0.000000e+00
  br i1 %2527, label %2534, label %2538

2528:                                             ; preds = %2520, %2528
  %2529 = phi double [ %2532, %2528 ], [ %2523, %2520 ]
  %2530 = phi i32 [ %2531, %2528 ], [ %95, %2520 ]
  %2531 = add nsw i32 %2530, -16
  %2532 = fmul double %2529, 6.553600e+04
  %2533 = icmp sgt i32 %2530, 31
  br i1 %2533, label %2528, label %2525, !llvm.loop !166

2534:                                             ; preds = %2525, %2534
  %2535 = phi double [ %2536, %2534 ], [ %2505, %2525 ]
  %2536 = fadd double %2526, %2535
  %2537 = fcmp olt double %2536, 0.000000e+00
  br i1 %2537, label %2534, label %2538, !llvm.loop !167

2538:                                             ; preds = %2534, %2525
  %2539 = phi double [ %2505, %2525 ], [ %2536, %2534 ]
  %2540 = fdiv double %2539, %2526
  %2541 = call double @modf(double noundef %2540, ptr noundef nonnull %34) #11
  %2542 = fmul double %2526, %2541
  %2543 = call ptr @Perl_newSVnv(double noundef %2542) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %34) #11
  br label %2552

2544:                                             ; preds = %2517, %2515
  %2545 = icmp slt i32 %95, 64
  %2546 = zext nneg i32 %95 to i64
  %2547 = shl nsw i64 -1, %2546
  %2548 = xor i64 %2547, -1
  %2549 = select i1 %2545, i64 %2548, i64 -1
  %2550 = and i64 %2506, %2549
  %2551 = call ptr @Perl_newSVuv(i64 noundef %2550) #11
  br label %2552

2552:                                             ; preds = %2544, %2538
  %2553 = phi double [ %2542, %2538 ], [ %2505, %2544 ]
  %2554 = phi i64 [ %2506, %2538 ], [ %2550, %2544 ]
  %2555 = phi ptr [ %2543, %2538 ], [ %2551, %2544 ]
  %2556 = load ptr, ptr @PL_stack_max, align 8, !tbaa !76
  %2557 = ptrtoint ptr %2556 to i64
  %2558 = ptrtoint ptr %2509 to i64
  %2559 = sub i64 %2557, %2558
  %2560 = icmp slt i64 %2559, 8
  br i1 %2560, label %2561, label %2563

2561:                                             ; preds = %2552
  %2562 = call ptr @Perl_stack_grow(ptr noundef %2509, ptr noundef %2509, i64 noundef 1) #11
  br label %2563

2563:                                             ; preds = %2552, %2561
  %2564 = phi ptr [ %2562, %2561 ], [ %2509, %2552 ]
  %2565 = call ptr @Perl_sv_2mortal(ptr noundef %2555) #11
  %2566 = getelementptr inbounds ptr, ptr %2564, i64 1
  store ptr %2565, ptr %2566, align 8, !tbaa !76
  br label %2567

2567:                                             ; preds = %2563, %2502
  %2568 = phi double [ %2553, %2563 ], [ %2505, %2502 ]
  %2569 = phi i64 [ %2554, %2563 ], [ %2506, %2502 ]
  %2570 = phi ptr [ %2555, %2563 ], [ %2508, %2502 ]
  %2571 = phi ptr [ %2566, %2563 ], [ %2509, %2502 ]
  %2572 = load i32, ptr %40, align 8, !tbaa !74
  %2573 = and i32 %2572, 4
  %2574 = icmp ne i32 %2573, 0
  br i1 %2574, label %2575, label %2616, !prof !83

2575:                                             ; preds = %2567
  %2576 = shl i64 %39, 29
  %2577 = ashr i64 %2576, 32
  %2578 = load ptr, ptr @PL_stack_base, align 8, !tbaa !76
  %2579 = ptrtoint ptr %2571 to i64
  %2580 = ptrtoint ptr %2578 to i64
  %2581 = sub i64 %2579, %2580
  %2582 = ashr exact i64 %2581, 3
  %2583 = icmp sgt i64 %2582, %2577
  br i1 %2583, label %2584, label %2616

2584:                                             ; preds = %2575
  %2585 = call fastcc zeroext i1 @S_next_symbol(ptr noundef %0)
  br i1 %2585, label %2586, label %2608

2586:                                             ; preds = %2584
  %2587 = load i32, ptr %52, align 8, !tbaa !82
  %2588 = icmp eq i32 %2587, 1
  br i1 %2588, label %2589, label %2590

2589:                                             ; preds = %2586
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.14) #11
  br label %2590

2590:                                             ; preds = %2589, %2586
  br i1 %99, label %2591, label %2608

2591:                                             ; preds = %2590
  %2592 = getelementptr inbounds ptr, ptr %2571, i64 -1
  %2593 = load ptr, ptr %2571, align 8, !tbaa !76
  store ptr %2593, ptr @PL_Sv, align 8, !tbaa !76
  %2594 = getelementptr inbounds %struct.sv, ptr %2593, i64 0, i32 2
  %2595 = load i32, ptr %2594, align 4, !tbaa !111
  %2596 = and i32 %2595, 2097408
  %2597 = icmp eq i32 %2596, 256
  br i1 %2597, label %2598, label %2602

2598:                                             ; preds = %2591
  %2599 = load ptr, ptr %2593, align 8, !tbaa !119
  %2600 = getelementptr inbounds %struct.xpviv, ptr %2599, i64 0, i32 4
  %2601 = load i64, ptr %2600, align 8, !tbaa !55
  br label %2604

2602:                                             ; preds = %2591
  %2603 = call i64 @Perl_sv_2iv_flags(ptr noundef %2593, i32 noundef 2) #11
  br label %2604

2604:                                             ; preds = %2602, %2598
  %2605 = phi i64 [ %2601, %2598 ], [ %2603, %2602 ]
  %2606 = trunc i64 %2605 to i32
  %2607 = icmp slt i32 %2606, 0
  br i1 %2607, label %2608, label %2612

2608:                                             ; preds = %2584, %2604, %2590
  %2609 = phi ptr [ @.str.15, %2590 ], [ @.str.16, %2604 ], [ @.str.17, %2584 ]
  %2610 = phi i32 [ %2503, %2590 ], [ %2606, %2604 ], [ %2503, %2584 ]
  %2611 = phi ptr [ %2571, %2590 ], [ %2592, %2604 ], [ %2571, %2584 ]
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull %2609) #11
  br label %2612

2612:                                             ; preds = %2608, %2604
  %2613 = phi i32 [ %2606, %2604 ], [ %2610, %2608 ]
  %2614 = phi ptr [ %2592, %2604 ], [ %2611, %2608 ]
  %2615 = load i32, ptr %51, align 8, !tbaa !79
  br label %87

2616:                                             ; preds = %2567, %2575, %68, %249
  %2617 = phi i1 [ false, %249 ], [ true, %68 ], [ %2574, %2575 ], [ %2574, %2567 ]
  %2618 = phi i8 [ %90, %249 ], [ %58, %68 ], [ %2504, %2575 ], [ %2504, %2567 ]
  %2619 = phi double [ 0.000000e+00, %249 ], [ %59, %68 ], [ %2568, %2575 ], [ %2568, %2567 ]
  %2620 = phi i64 [ 0, %249 ], [ %60, %68 ], [ %2569, %2575 ], [ %2569, %2567 ]
  %2621 = phi i64 [ %94, %249 ], [ %61, %68 ], [ %2507, %2575 ], [ %2507, %2567 ]
  %2622 = phi i32 [ %251, %249 ], [ %62, %68 ], [ 0, %2575 ], [ 0, %2567 ]
  %2623 = phi ptr [ %96, %249 ], [ %63, %68 ], [ %2570, %2575 ], [ %2570, %2567 ]
  %2624 = phi ptr [ %142, %249 ], [ %64, %68 ], [ %2571, %2575 ], [ %2571, %2567 ]
  br i1 %2617, label %2625, label %57, !prof !83

2625:                                             ; preds = %2616, %57
  %2626 = phi ptr [ %64, %57 ], [ %2624, %2616 ]
  %2627 = icmp eq ptr %4, null
  br i1 %2627, label %2630, label %2628, !prof !53

2628:                                             ; preds = %2625
  %2629 = load ptr, ptr %7, align 8, !tbaa !76
  store ptr %2629, ptr %4, align 8, !tbaa !76
  br label %2630

2630:                                             ; preds = %2628, %2625
  store ptr %2626, ptr @PL_stack_sp, align 8, !tbaa !76
  %2631 = load ptr, ptr @PL_stack_base, align 8, !tbaa !76
  %2632 = ptrtoint ptr %2626 to i64
  %2633 = ptrtoint ptr %2631 to i64
  %2634 = sub i64 %2632, %2633
  %2635 = lshr exact i64 %2634, 3
  %2636 = lshr i64 %39, 3
  %2637 = sub nsw i64 %2635, %2636
  %2638 = trunc i64 %2637 to i32
  ret i32 %2638
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_pp_unpack() local_unnamed_addr #0 !prof !52 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !76
  %4 = getelementptr inbounds ptr, ptr %3, i64 -1
  %5 = load ptr, ptr %3, align 8, !tbaa !76
  %6 = getelementptr inbounds ptr, ptr %3, i64 -2
  %7 = load ptr, ptr %4, align 8, !tbaa !76
  %8 = load ptr, ptr @PL_op, align 8, !tbaa !76
  %9 = getelementptr inbounds %struct.op, ptr %8, i64 0, i32 5
  %10 = load i8, ptr %9, align 2, !tbaa !168
  %11 = and i8 %10, 3
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %15, label %13, !prof !66

13:                                               ; preds = %0
  %14 = zext nneg i8 %11 to i32
  br label %17

15:                                               ; preds = %0
  %16 = tail call i32 @Perl_block_gimme() #11
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  %19 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !111
  %21 = and i32 %20, 2098176
  %22 = icmp eq i32 %21, 1024
  br i1 %22, label %23, label %29, !prof !53

23:                                               ; preds = %17
  %24 = load ptr, ptr %7, align 8, !tbaa !119
  %25 = getelementptr inbounds %struct.xpv, ptr %24, i64 0, i32 2
  %26 = load i64, ptr %25, align 8, !tbaa !120
  store i64 %26, ptr %1, align 8, !tbaa !63
  %27 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !55
  br label %31

29:                                               ; preds = %17
  %30 = call ptr @Perl_sv_2pv_flags(ptr noundef %7, ptr noundef nonnull %1, i32 noundef 34) #11
  br label %31

31:                                               ; preds = %29, %23
  %32 = phi ptr [ %28, %23 ], [ %30, %29 ]
  %33 = getelementptr inbounds %struct.sv, ptr %5, i64 0, i32 2
  %34 = load i32, ptr %33, align 4, !tbaa !111
  %35 = and i32 %34, 2098176
  %36 = icmp eq i32 %35, 1024
  br i1 %36, label %37, label %43, !prof !170

37:                                               ; preds = %31
  %38 = load ptr, ptr %5, align 8, !tbaa !119
  %39 = getelementptr inbounds %struct.xpv, ptr %38, i64 0, i32 2
  %40 = load i64, ptr %39, align 8, !tbaa !120
  store i64 %40, ptr %2, align 8, !tbaa !63
  %41 = getelementptr inbounds %struct.sv, ptr %5, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !55
  br label %45

43:                                               ; preds = %31
  %44 = call ptr @Perl_sv_2pv_flags(ptr noundef %5, ptr noundef nonnull %2, i32 noundef 34) #11
  br label %45

45:                                               ; preds = %43, %37
  %46 = phi ptr [ %42, %37 ], [ %44, %43 ]
  %47 = load i64, ptr %2, align 8, !tbaa !63
  %48 = getelementptr inbounds i8, ptr %46, i64 %47
  %49 = load i64, ptr %1, align 8, !tbaa !63
  %50 = getelementptr inbounds i8, ptr %32, i64 %49
  store ptr %6, ptr @PL_stack_sp, align 8, !tbaa !76
  %51 = icmp eq i32 %18, 2
  %52 = select i1 %51, i32 16, i32 0, !prof !171
  %53 = load i32, ptr %33, align 4, !tbaa !111
  %54 = and i32 %53, 536870912
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %62, label %56, !prof !53

56:                                               ; preds = %45
  %57 = load ptr, ptr @PL_curcop, align 8, !tbaa !76
  %58 = getelementptr inbounds %struct.cop, ptr %57, i64 0, i32 10
  %59 = load i32, ptr %58, align 8, !tbaa !172
  %60 = and i32 %59, 8
  %61 = xor i32 %60, 8
  br label %62

62:                                               ; preds = %56, %45
  %63 = phi i32 [ 0, %45 ], [ %61, %56 ]
  %64 = or i32 %63, %52
  %65 = call i32 @Perl_unpackstring(ptr noundef %32, ptr noundef %50, ptr noundef %46, ptr noundef %48, i32 noundef %64)
  %66 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !76
  %67 = icmp eq i32 %65, 0
  %68 = select i1 %67, i1 %51, i1 false, !prof !66
  br i1 %68, label %69, label %71, !prof !66

69:                                               ; preds = %62
  %70 = getelementptr inbounds ptr, ptr %66, i64 1
  store ptr @PL_sv_undef, ptr %70, align 8, !tbaa !76
  br label %71

71:                                               ; preds = %69, %62
  %72 = phi ptr [ %70, %69 ], [ %66, %62 ]
  store ptr %72, ptr @PL_stack_sp, align 8, !tbaa !76
  %73 = load ptr, ptr @PL_op, align 8, !tbaa !76
  %74 = load ptr, ptr %73, align 8, !tbaa !174
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #11
  ret ptr %74
}

declare i32 @Perl_block_gimme() local_unnamed_addr #2

declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @Perl_packlist(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 !prof !175 {
  %6 = alloca %struct.tempsym, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #11
  store ptr %1, ptr %6, align 8, !tbaa !69
  %7 = getelementptr inbounds %struct.tempsym, ptr %6, i64 0, i32 1
  store ptr %2, ptr %7, align 8, !tbaa !73
  %8 = getelementptr inbounds %struct.tempsym, ptr %6, i64 0, i32 2
  %9 = getelementptr inbounds %struct.tempsym, ptr %6, i64 0, i32 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i64 32, i1 false)
  store i32 1, ptr %9, align 8, !tbaa !74
  %10 = getelementptr inbounds %struct.tempsym, ptr %6, i64 0, i32 9
  %11 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  %12 = load i32, ptr %11, align 4, !tbaa !111
  %13 = and i32 %12, 430018304
  %14 = icmp eq i32 %13, 1024
  br i1 %14, label %17, label %15, !prof !176

15:                                               ; preds = %5
  %16 = tail call ptr @Perl_sv_pvn_force_flags(ptr noundef %0, ptr noundef null, i32 noundef 2) #11
  br label %17

17:                                               ; preds = %5, %15
  %18 = load i32, ptr %11, align 4, !tbaa !111
  %19 = and i32 %18, 536870912
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %30, label %21, !prof !176

21:                                               ; preds = %17
  %22 = load ptr, ptr @PL_curcop, align 8, !tbaa !76
  %23 = getelementptr inbounds %struct.cop, ptr %22, i64 0, i32 10
  %24 = load i32, ptr %23, align 8, !tbaa !172
  %25 = and i32 %24, 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, ptr %9, align 8, !tbaa !74
  %29 = or i32 %28, 40
  store i32 %29, ptr %9, align 8, !tbaa !74
  br label %30

30:                                               ; preds = %27, %21, %17
  %31 = call fastcc ptr @S_pack_rec(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %3, ptr noundef %4)
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #11
  ret void
}

declare ptr @Perl_sv_pvn_force_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @S_pack_rec(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !177 !PGOFuncName !178 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.tempsym, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca [13 x i8], align 1
  %14 = ptrtoint ptr %13 to i64
  %15 = alloca float, align 4
  %16 = alloca double, align 8
  %17 = alloca %union.NV_bytes, align 8
  %18 = alloca i16, align 2
  %19 = alloca i16, align 2
  %20 = alloca i16, align 2
  %21 = alloca i16, align 2
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca [10 x i8], align 1
  %26 = alloca [155 x i8], align 16
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i64, align 8
  %32 = alloca i32, align 4
  %33 = alloca i64, align 8
  %34 = alloca i32, align 4
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca ptr, align 8
  %38 = alloca ptr, align 8
  %39 = alloca [86 x i8], align 16
  %40 = ptrtoint ptr %39 to i64
  %41 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #11
  %42 = ptrtoint ptr %3 to i64
  %43 = ptrtoint ptr %2 to i64
  %44 = sub i64 %42, %43
  %45 = lshr exact i64 %44, 3
  %46 = trunc i64 %45 to i32
  %47 = call fastcc zeroext i1 @S_next_symbol(ptr noundef %1)
  %48 = getelementptr inbounds %struct.tempsym, ptr %1, i64 0, i32 8
  %49 = load i32, ptr %48, align 8, !tbaa !74
  %50 = trunc i32 %49 to i8
  %51 = lshr i8 %50, 5
  %52 = and i8 %51, 1
  %53 = call zeroext i1 @Perl_ckwarn(i32 noundef 44) #11
  %54 = getelementptr inbounds %struct.tempsym, ptr %1, i64 0, i32 7
  %55 = load i32, ptr %54, align 4, !tbaa !95
  %56 = icmp eq i32 %55, 0
  %57 = and i1 %47, %56
  br i1 %57, label %58, label %65, !prof !176

58:                                               ; preds = %4
  %59 = getelementptr inbounds %struct.tempsym, ptr %1, i64 0, i32 4
  %60 = load i32, ptr %59, align 8, !tbaa !79
  %61 = icmp eq i32 %60, 85
  br i1 %61, label %62, label %65, !prof !179

62:                                               ; preds = %58
  call fastcc void @marked_upgrade(ptr noundef %0, ptr noundef %1)
  %63 = load i32, ptr %48, align 8, !tbaa !74
  %64 = or i32 %63, 8
  store i32 %64, ptr %48, align 8, !tbaa !74
  br label %65

65:                                               ; preds = %4, %62, %58
  %66 = phi i8 [ 0, %62 ], [ %52, %58 ], [ %52, %4 ]
  %67 = load ptr, ptr %0, align 8, !tbaa !119
  %68 = getelementptr inbounds %struct.xpv, ptr %67, i64 0, i32 2
  %69 = load i64, ptr %68, align 8, !tbaa !120
  %70 = getelementptr inbounds %struct.tempsym, ptr %1, i64 0, i32 9
  store i64 %69, ptr %70, align 8, !tbaa !77
  br i1 %47, label %71, label %3945, !prof !180

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.tempsym, ptr %1, i64 0, i32 4
  %73 = getelementptr inbounds %struct.tempsym, ptr %1, i64 0, i32 6
  %74 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %75 = getelementptr inbounds %struct.tempsym, ptr %1, i64 0, i32 5
  br label %76

76:                                               ; preds = %71, %3941
  %77 = phi ptr [ %2, %71 ], [ %3944, %3941 ]
  %78 = phi i32 [ %46, %71 ], [ %3943, %3941 ]
  %79 = phi i8 [ %66, %71 ], [ %3942, %3941 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  %80 = load i32, ptr %72, align 8, !tbaa !79
  %81 = load i32, ptr %73, align 8, !tbaa !82
  %82 = load ptr, ptr %74, align 8, !tbaa !55
  %83 = load ptr, ptr %0, align 8, !tbaa !119
  %84 = getelementptr inbounds %struct.xpv, ptr %83, i64 0, i32 2
  %85 = load i64, ptr %84, align 8, !tbaa !120
  %86 = getelementptr inbounds i8, ptr %82, i64 %85
  %87 = icmp eq i32 %81, 2
  br i1 %87, label %88, label %93, !prof !181

88:                                               ; preds = %76
  %89 = and i32 %80, 255
  %90 = call ptr @memchr(ptr nonnull dereferenceable(1) @.str.43, i32 %89, i64 5)
  %91 = icmp eq ptr %90, null
  %92 = select i1 %91, i32 %78, i32 0
  br label %95

93:                                               ; preds = %76
  %94 = load i32, ptr %75, align 4, !tbaa !84
  br label %95

95:                                               ; preds = %93, %88
  %96 = phi i32 [ %92, %88 ], [ %94, %93 ]
  %97 = freeze i32 %96
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %128, label %99, !prof !181

99:                                               ; preds = %95
  %100 = and i32 %80, -1537
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [512 x i8], ptr @packprops, i64 0, i64 %101
  %103 = load i8, ptr %102, align 1, !tbaa !55
  %104 = zext i8 %103 to i32
  %105 = icmp ne i8 %103, 0
  %106 = and i32 %104, 64
  %107 = icmp eq i32 %106, 0
  %108 = and i1 %105, %107
  br i1 %108, label %109, label %128, !prof !182

109:                                              ; preds = %99
  %110 = and i32 %104, 63
  %111 = zext nneg i32 %110 to i64
  %112 = sext i32 %97 to i64
  %113 = mul nsw i64 %111, %112
  %114 = and i8 %79, 1
  %115 = zext nneg i8 %114 to i64
  %116 = shl nsw i64 %113, %115
  %117 = getelementptr inbounds i8, ptr %86, i64 %116
  %118 = getelementptr inbounds %struct.xpv, ptr %83, i64 0, i32 3
  %119 = load i64, ptr %118, align 8, !tbaa !55
  %120 = getelementptr inbounds i8, ptr %82, i64 %119
  %121 = icmp ult ptr %117, %120
  br i1 %121, label %128, label %122, !prof !182

122:                                              ; preds = %109
  %123 = call fastcc ptr @S_sv_exp_grow(ptr noundef %0, i64 noundef %116)
  %124 = load ptr, ptr %0, align 8, !tbaa !119
  %125 = getelementptr inbounds %struct.xpv, ptr %124, i64 0, i32 2
  %126 = load i64, ptr %125, align 8, !tbaa !120
  %127 = getelementptr inbounds i8, ptr %123, i64 %126
  br label %128

128:                                              ; preds = %99, %122, %109, %95
  %129 = phi ptr [ %86, %95 ], [ %86, %99 ], [ %127, %122 ], [ %86, %109 ]
  %130 = phi ptr [ %82, %95 ], [ %82, %99 ], [ %123, %122 ], [ %82, %109 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false), !tbaa.struct !91
  %131 = call fastcc zeroext i1 @S_next_symbol(ptr noundef nonnull %6)
  %132 = load i32, ptr %48, align 8, !tbaa !74
  %133 = and i32 %132, 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %180, label %135, !prof !182

135:                                              ; preds = %128
  %136 = getelementptr inbounds %struct.tempsym, ptr %6, i64 0, i32 4
  br i1 %131, label %138, label %137

137:                                              ; preds = %135
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.44) #11
  br label %138

138:                                              ; preds = %137, %135
  %139 = load i32, ptr %136, align 8, !tbaa !79
  %140 = call ptr @memchr(ptr nonnull dereferenceable(1) @.str.45, i32 %139, i64 4)
  %141 = icmp eq ptr %140, null
  br i1 %141, label %161, label %142

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.tempsym, ptr %6, i64 0, i32 6
  %144 = load i32, ptr %143, align 8, !tbaa !82
  %145 = icmp eq i32 %144, 1
  br i1 %145, label %146, label %150

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.tempsym, ptr %6, i64 0, i32 5
  %148 = load i32, ptr %147, align 4, !tbaa !84
  %149 = sext i32 %148 to i64
  br label %173

150:                                              ; preds = %142
  %151 = icmp sgt i32 %78, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %150
  %153 = load ptr, ptr %77, align 8, !tbaa !76
  %154 = call i64 @Perl_sv_len_utf8(ptr noundef %153) #11
  br label %155

155:                                              ; preds = %150, %152
  %156 = phi i64 [ %154, %152 ], [ 0, %150 ]
  %157 = load i32, ptr %136, align 8, !tbaa !79
  %158 = icmp eq i32 %157, 90
  %159 = zext i1 %158 to i64
  %160 = add nsw i64 %156, %159
  br label %173

161:                                              ; preds = %138
  %162 = getelementptr inbounds %struct.tempsym, ptr %6, i64 0, i32 6
  %163 = load i32, ptr %162, align 8, !tbaa !82
  %164 = icmp eq i32 %163, 1
  br i1 %164, label %165, label %171

165:                                              ; preds = %161
  %166 = getelementptr inbounds %struct.tempsym, ptr %6, i64 0, i32 5
  %167 = load i32, ptr %166, align 4, !tbaa !84
  %168 = icmp slt i32 %167, %78
  br i1 %168, label %169, label %171

169:                                              ; preds = %165
  %170 = sext i32 %167 to i64
  br label %173

171:                                              ; preds = %165, %161
  %172 = sext i32 %78 to i64
  br label %173

173:                                              ; preds = %155, %169, %171, %146
  %174 = phi i64 [ %149, %146 ], [ %170, %169 ], [ %172, %171 ], [ %160, %155 ]
  %175 = getelementptr inbounds %struct.tempsym, ptr %6, i64 0, i32 6
  %176 = getelementptr inbounds %struct.tempsym, ptr %6, i64 0, i32 5
  store i32 1, ptr %175, align 8, !tbaa !82
  %177 = trunc i64 %174 to i32
  store i32 %177, ptr %176, align 4, !tbaa !84
  %178 = call ptr @Perl_newSViv(i64 noundef %174) #11
  %179 = call ptr @Perl_sv_2mortal(ptr noundef %178) #11
  br label %180

180:                                              ; preds = %173, %128
  %181 = phi ptr [ %179, %173 ], [ null, %128 ]
  %182 = and i32 %80, 1536
  %183 = icmp eq i32 %182, 512
  %184 = and i32 %80, -1537
  switch i32 %184, label %275 [
    i32 37, label %277
    i32 302, label %278
    i32 46, label %278
    i32 320, label %329
    i32 64, label %329
    i32 40, label %409
    i32 344, label %458
    i32 88, label %490
    i32 376, label %565
    i32 120, label %369
    i32 65, label %584
    i32 90, label %584
    i32 97, label %584
    i32 66, label %844
    i32 98, label %844
    i32 72, label %1063
    i32 104, label %1063
    i32 99, label %269
    i32 67, label %1364
    i32 87, label %1424
    i32 85, label %1583
    i32 102, label %262
    i32 100, label %255
    i32 70, label %1914
    i32 366, label %1997
    i32 110, label %1997
    i32 374, label %2057
    i32 118, label %2057
    i32 339, label %2116
    i32 83, label %2116
    i32 371, label %2207
    i32 115, label %2207
    i32 73, label %2299
    i32 329, label %2299
    i32 106, label %248
    i32 74, label %241
    i32 119, label %226
    i32 105, label %2934
    i32 361, label %2934
    i32 334, label %3025
    i32 78, label %3025
    i32 342, label %3085
    i32 86, label %3085
    i32 332, label %220
    i32 76, label %213
    i32 364, label %206
    i32 108, label %199
    i32 81, label %192
    i32 113, label %185
    i32 80, label %3646
    i32 112, label %3662
    i32 117, label %3784
  ], !prof !183

185:                                              ; preds = %180
  %186 = icmp sgt i32 %97, 0
  br i1 %186, label %187, label %3930

187:                                              ; preds = %185
  %188 = getelementptr inbounds i8, ptr %36, i64 8
  %189 = icmp eq ptr %181, null
  %190 = and i8 %79, 1
  %191 = icmp eq i8 %190, 0
  br label %3563

192:                                              ; preds = %180
  %193 = icmp sgt i32 %97, 0
  br i1 %193, label %194, label %3930

194:                                              ; preds = %192
  %195 = getelementptr inbounds i8, ptr %35, i64 8
  %196 = icmp eq ptr %181, null
  %197 = and i8 %79, 1
  %198 = icmp eq i8 %197, 0
  br label %3480

199:                                              ; preds = %180
  %200 = icmp sgt i32 %97, 0
  br i1 %200, label %201, label %3930

201:                                              ; preds = %199
  %202 = getelementptr inbounds i8, ptr %34, i64 4
  %203 = icmp eq ptr %181, null
  %204 = and i8 %79, 1
  %205 = icmp eq i8 %204, 0
  br label %3396

206:                                              ; preds = %180
  %207 = icmp sgt i32 %97, 0
  br i1 %207, label %208, label %3930

208:                                              ; preds = %206
  %209 = getelementptr inbounds i8, ptr %33, i64 8
  %210 = icmp eq ptr %181, null
  %211 = and i8 %79, 1
  %212 = icmp eq i8 %211, 0
  br label %3313

213:                                              ; preds = %180
  %214 = icmp sgt i32 %97, 0
  br i1 %214, label %215, label %3930

215:                                              ; preds = %213
  %216 = getelementptr inbounds i8, ptr %32, i64 4
  %217 = icmp eq ptr %181, null
  %218 = and i8 %79, 1
  %219 = icmp eq i8 %218, 0
  br label %3229

220:                                              ; preds = %180
  %221 = icmp sgt i32 %97, 0
  br i1 %221, label %222, label %3930, !prof !184

222:                                              ; preds = %220
  %223 = icmp eq ptr %181, null
  %224 = and i8 %79, 1
  %225 = icmp eq i8 %224, 0
  br label %3144

226:                                              ; preds = %180
  %227 = icmp sgt i32 %97, 0
  br i1 %227, label %228, label %3930

228:                                              ; preds = %226
  %229 = getelementptr inbounds [155 x i8], ptr %26, i64 0, i64 154
  %230 = getelementptr inbounds [10 x i8], ptr %25, i64 0, i64 9
  %231 = icmp eq ptr %181, null
  %232 = and i8 %79, 1
  %233 = icmp eq i8 %232, 0
  %234 = zext nneg i8 %232 to i64
  %235 = and i8 %79, 1
  %236 = icmp eq i8 %235, 0
  %237 = zext nneg i8 %235 to i64
  %238 = and i8 %79, 1
  %239 = icmp eq i8 %238, 0
  %240 = zext nneg i8 %238 to i64
  br label %2556

241:                                              ; preds = %180
  %242 = icmp sgt i32 %97, 0
  br i1 %242, label %243, label %3930

243:                                              ; preds = %241
  %244 = getelementptr inbounds i8, ptr %24, i64 8
  %245 = icmp eq ptr %181, null
  %246 = and i8 %79, 1
  %247 = icmp eq i8 %246, 0
  br label %2473

248:                                              ; preds = %180
  %249 = icmp sgt i32 %97, 0
  br i1 %249, label %250, label %3930

250:                                              ; preds = %248
  %251 = getelementptr inbounds i8, ptr %23, i64 8
  %252 = icmp eq ptr %181, null
  %253 = and i8 %79, 1
  %254 = icmp eq i8 %253, 0
  br label %2390

255:                                              ; preds = %180
  %256 = icmp sgt i32 %97, 0
  br i1 %256, label %257, label %3930

257:                                              ; preds = %255
  %258 = getelementptr inbounds i8, ptr %16, i64 8
  %259 = icmp eq ptr %181, null
  %260 = and i8 %79, 1
  %261 = icmp eq i8 %260, 0
  br label %1831

262:                                              ; preds = %180
  %263 = icmp sgt i32 %97, 0
  br i1 %263, label %264, label %3930

264:                                              ; preds = %262
  %265 = getelementptr inbounds i8, ptr %15, i64 4
  %266 = icmp eq ptr %181, null
  %267 = and i8 %79, 1
  %268 = icmp eq i8 %267, 0
  br label %1743

269:                                              ; preds = %180
  %270 = icmp sgt i32 %97, 0
  br i1 %270, label %271, label %3930

271:                                              ; preds = %269
  %272 = icmp eq ptr %181, null
  %273 = and i8 %79, 1
  %274 = icmp eq i8 %273, 0
  br label %1315

275:                                              ; preds = %180
  %276 = and i32 %80, 255
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.46, i32 noundef %276) #11
  br label %277

277:                                              ; preds = %180, %275
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.47) #11
  br label %278

278:                                              ; preds = %180, %180, %277
  %279 = or i1 %87, %98
  %280 = select i1 %87, ptr %130, ptr %129
  br i1 %279, label %302, label %281

281:                                              ; preds = %278
  %282 = icmp ne ptr %1, null
  %283 = add nsw i32 %97, -1
  %284 = icmp ne i32 %283, 0
  %285 = and i1 %284, %282
  br i1 %285, label %286, label %295

286:                                              ; preds = %281, %286
  %287 = phi i32 [ %291, %286 ], [ %283, %281 ]
  %288 = phi ptr [ %290, %286 ], [ %1, %281 ]
  %289 = getelementptr inbounds %struct.tempsym, ptr %288, i64 0, i32 10
  %290 = load ptr, ptr %289, align 8, !tbaa !94
  %291 = add nsw i32 %287, -1
  %292 = icmp ne i32 %291, 0
  %293 = icmp ne ptr %290, null
  %294 = select i1 %292, i1 %293, i1 false
  br i1 %294, label %286, label %295, !llvm.loop !185

295:                                              ; preds = %286, %281
  %296 = phi ptr [ %1, %281 ], [ %290, %286 ]
  %297 = phi i1 [ %282, %281 ], [ %293, %286 ]
  br i1 %297, label %298, label %302

298:                                              ; preds = %295
  %299 = getelementptr inbounds %struct.tempsym, ptr %296, i64 0, i32 9
  %300 = load i64, ptr %299, align 8, !tbaa !77
  %301 = getelementptr inbounds i8, ptr %130, i64 %300
  br label %302

302:                                              ; preds = %278, %298, %295
  %303 = phi ptr [ %280, %278 ], [ %301, %298 ], [ %130, %295 ]
  %304 = icmp eq ptr %181, null
  br i1 %304, label %305, label %311

305:                                              ; preds = %302
  %306 = icmp sgt i32 %78, 0
  br i1 %306, label %307, label %311

307:                                              ; preds = %305
  %308 = add nsw i32 %78, -1
  %309 = getelementptr inbounds ptr, ptr %77, i64 1
  %310 = load ptr, ptr %77, align 8, !tbaa !76
  br label %311

311:                                              ; preds = %302, %307, %305
  %312 = phi i32 [ %308, %307 ], [ %78, %305 ], [ %78, %302 ]
  %313 = phi ptr [ %309, %307 ], [ %77, %305 ], [ %77, %302 ]
  %314 = phi ptr [ %310, %307 ], [ @PL_sv_no, %305 ], [ %181, %302 ]
  %315 = call fastcc ptr @S_sv_check_infnan(ptr noundef %314, i32 noundef %80)
  %316 = getelementptr inbounds %struct.sv, ptr %315, i64 0, i32 2
  %317 = load i32, ptr %316, align 4, !tbaa !111
  %318 = and i32 %317, 256
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %324, label %320

320:                                              ; preds = %311
  %321 = load ptr, ptr %315, align 8, !tbaa !119
  %322 = getelementptr inbounds %struct.xpviv, ptr %321, i64 0, i32 4
  %323 = load i64, ptr %322, align 8, !tbaa !55
  br label %326

324:                                              ; preds = %311
  %325 = call i64 @Perl_sv_2iv_flags(ptr noundef %315, i32 noundef 0) #11
  br label %326

326:                                              ; preds = %324, %320
  %327 = phi i64 [ %323, %320 ], [ %325, %324 ]
  %328 = trunc i64 %327 to i32
  br label %332

329:                                              ; preds = %180, %180
  %330 = load i64, ptr %70, align 8, !tbaa !77
  %331 = getelementptr inbounds i8, ptr %130, i64 %330
  br label %332

332:                                              ; preds = %329, %326
  %333 = phi i32 [ %328, %326 ], [ %97, %329 ]
  %334 = phi ptr [ %303, %326 ], [ %331, %329 ]
  %335 = phi i32 [ %312, %326 ], [ %78, %329 ]
  %336 = phi ptr [ %313, %326 ], [ %77, %329 ]
  %337 = and i8 %79, 1
  %338 = icmp ne i8 %337, 0
  %339 = and i32 %80, 256
  %340 = icmp eq i32 %339, 0
  %341 = select i1 %338, i1 %340, i1 false
  br i1 %341, label %342, label %398

342:                                              ; preds = %332
  %343 = icmp sgt i32 %333, -1
  br i1 %343, label %344, label %396

344:                                              ; preds = %342
  %345 = icmp ne i32 %333, 0
  %346 = icmp ult ptr %334, %129
  %347 = select i1 %345, i1 %346, i1 false
  br i1 %347, label %348, label %361

348:                                              ; preds = %344, %348
  %349 = phi ptr [ %356, %348 ], [ %334, %344 ]
  %350 = phi i32 [ %357, %348 ], [ %333, %344 ]
  %351 = load i8, ptr %349, align 1, !tbaa !55
  %352 = zext i8 %351 to i64
  %353 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %352
  %354 = load i8, ptr %353, align 1, !tbaa !55
  %355 = zext i8 %354 to i64
  %356 = getelementptr inbounds i8, ptr %349, i64 %355
  %357 = add nsw i32 %350, -1
  %358 = icmp ne i32 %357, 0
  %359 = icmp ult ptr %356, %129
  %360 = select i1 %358, i1 %359, i1 false
  br i1 %360, label %348, label %361, !llvm.loop !186

361:                                              ; preds = %348, %344
  %362 = phi i32 [ %333, %344 ], [ %357, %348 ]
  %363 = phi ptr [ %334, %344 ], [ %356, %348 ]
  %364 = phi i1 [ %345, %344 ], [ %358, %348 ]
  %365 = phi i1 [ %346, %344 ], [ %359, %348 ]
  %366 = icmp ugt ptr %363, %129
  br i1 %366, label %367, label %368

367:                                              ; preds = %361
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.48) #11
  br label %368

368:                                              ; preds = %367, %361
  br i1 %364, label %369, label %390

369:                                              ; preds = %579, %180, %398, %368
  %370 = phi i32 [ %403, %398 ], [ %362, %368 ], [ %97, %180 ], [ %583, %579 ]
  %371 = phi i32 [ %335, %398 ], [ %335, %368 ], [ %78, %180 ], [ %78, %579 ]
  %372 = phi ptr [ %336, %398 ], [ %336, %368 ], [ %77, %180 ], [ %77, %579 ]
  %373 = sext i32 %370 to i64
  %374 = getelementptr inbounds i8, ptr %129, i64 %373
  %375 = load ptr, ptr %0, align 8, !tbaa !119
  %376 = getelementptr inbounds %struct.xpv, ptr %375, i64 0, i32 3
  %377 = load i64, ptr %376, align 8, !tbaa !55
  %378 = getelementptr inbounds i8, ptr %130, i64 %377
  %379 = icmp ult ptr %374, %378
  br i1 %379, label %386, label %380

380:                                              ; preds = %369
  %381 = call fastcc ptr @S_sv_exp_grow(ptr noundef %0, i64 noundef %373)
  %382 = load ptr, ptr %0, align 8, !tbaa !119
  %383 = getelementptr inbounds %struct.xpv, ptr %382, i64 0, i32 2
  %384 = load i64, ptr %383, align 8, !tbaa !120
  %385 = getelementptr inbounds i8, ptr %381, i64 %384
  br label %386

386:                                              ; preds = %380, %369
  %387 = phi ptr [ %385, %380 ], [ %129, %369 ]
  %388 = phi ptr [ %381, %380 ], [ %130, %369 ]
  call void @llvm.memset.p0.i64(ptr align 1 %387, i8 0, i64 %373, i1 false)
  %389 = getelementptr inbounds i8, ptr %387, i64 %373
  br label %3930

390:                                              ; preds = %368
  br i1 %365, label %391, label %3941

391:                                              ; preds = %390
  %392 = ptrtoint ptr %129 to i64
  %393 = ptrtoint ptr %363 to i64
  %394 = sub i64 %392, %393
  %395 = trunc i64 %394 to i32
  br label %528

396:                                              ; preds = %342
  %397 = sub nsw i32 0, %333
  br label %496

398:                                              ; preds = %332
  %399 = ptrtoint ptr %129 to i64
  %400 = ptrtoint ptr %334 to i64
  %401 = sub i64 %400, %399
  %402 = trunc i64 %401 to i32
  %403 = add i32 %333, %402
  %404 = icmp sgt i32 %403, 0
  br i1 %404, label %369, label %405

405:                                              ; preds = %398
  %406 = icmp eq i32 %403, 0
  br i1 %406, label %3941, label %407

407:                                              ; preds = %405
  %408 = sub nsw i32 0, %403
  br label %528

409:                                              ; preds = %180
  %410 = getelementptr inbounds i8, ptr %1, i64 16
  %411 = getelementptr inbounds i8, ptr %1, i64 24
  %412 = getelementptr inbounds %struct.tempsym, ptr %1, i64 0, i32 1
  %413 = getelementptr inbounds %struct.tempsym, ptr %1, i64 0, i32 10
  %414 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %415 = load ptr, ptr %410, align 8, !tbaa.struct !187
  %416 = load ptr, ptr %411, align 8, !tbaa.struct !188
  %417 = load i32, ptr %73, align 8, !tbaa.struct !189
  %418 = load i32, ptr %48, align 8, !tbaa !74
  %419 = and i32 %80, -256
  %420 = or i32 %419, %418
  store i32 %420, ptr %48, align 8, !tbaa !74
  store ptr %416, ptr %412, align 8, !tbaa !73
  %421 = load i32, ptr %54, align 4, !tbaa !95
  %422 = add nsw i32 %421, 1
  store i32 %422, ptr %54, align 4, !tbaa !95
  store ptr %6, ptr %413, align 8, !tbaa !94
  %423 = icmp eq i32 %417, 2
  br label %424

424:                                              ; preds = %429, %409
  %425 = phi i32 [ %97, %409 ], [ %430, %429 ]
  %426 = phi i8 [ %79, %409 ], [ %443, %429 ]
  %427 = phi ptr [ %77, %409 ], [ %438, %429 ]
  %428 = icmp eq i32 %425, 0
  br i1 %428, label %446, label %429

429:                                              ; preds = %424
  %430 = add nsw i32 %425, -1
  %431 = load i32, ptr %48, align 8, !tbaa !74
  %432 = and i32 %431, -33
  %433 = shl i8 %426, 5
  %434 = and i8 %433, 32
  %435 = zext nneg i8 %434 to i32
  %436 = or disjoint i32 %432, %435
  store i32 %436, ptr %48, align 8, !tbaa !74
  %437 = load i32, ptr %414, align 4, !tbaa !111
  store ptr %415, ptr %1, align 8, !tbaa !69
  %438 = call fastcc ptr @S_pack_rec(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %427, ptr noundef %3)
  %439 = load i32, ptr %414, align 4, !tbaa !111
  %440 = xor i32 %439, %437
  %441 = and i32 %440, 536870912
  %442 = icmp eq i32 %441, 0
  %443 = select i1 %442, i8 %426, i8 1
  %444 = icmp eq ptr %438, %3
  %445 = select i1 %423, i1 %444, i1 false
  br i1 %445, label %446, label %424

446:                                              ; preds = %429, %424
  %447 = phi i8 [ %426, %424 ], [ %443, %429 ]
  %448 = phi ptr [ %427, %424 ], [ %438, %429 ]
  %449 = getelementptr inbounds %struct.tempsym, ptr %6, i64 0, i32 8
  %450 = ptrtoint ptr %448 to i64
  %451 = sub i64 %42, %450
  %452 = lshr exact i64 %451, 3
  %453 = trunc i64 %452 to i32
  %454 = load i32, ptr %48, align 8, !tbaa !74
  %455 = xor i32 %419, -1
  %456 = or i32 %418, %455
  %457 = and i32 %454, %456
  store i32 %457, ptr %449, align 8, !tbaa !74
  br label %3941

458:                                              ; preds = %180
  %459 = call i32 @llvm.umax.i32(i32 %97, i32 1)
  %460 = and i8 %79, 1
  %461 = icmp eq i8 %460, 0
  br i1 %461, label %483, label %462

462:                                              ; preds = %458
  %463 = icmp ult ptr %130, %129
  br i1 %463, label %464, label %479

464:                                              ; preds = %462, %464
  %465 = phi ptr [ %473, %464 ], [ %130, %462 ]
  %466 = phi ptr [ %477, %464 ], [ %130, %462 ]
  %467 = phi i32 [ %476, %464 ], [ %459, %462 ]
  %468 = load i8, ptr %465, align 1, !tbaa !55
  %469 = zext i8 %468 to i64
  %470 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %469
  %471 = load i8, ptr %470, align 1, !tbaa !55
  %472 = zext i8 %471 to i64
  %473 = getelementptr inbounds i8, ptr %465, i64 %472
  %474 = add nsw i32 %467, -1
  %475 = icmp eq i32 %474, 0
  %476 = select i1 %475, i32 %459, i32 %474
  %477 = select i1 %475, ptr %473, ptr %466
  %478 = icmp ult ptr %473, %129
  br i1 %478, label %464, label %479, !llvm.loop !190

479:                                              ; preds = %464, %462
  %480 = phi ptr [ %130, %462 ], [ %477, %464 ]
  %481 = icmp ugt ptr %480, %129
  br i1 %481, label %482, label %3930

482:                                              ; preds = %479
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.48) #11
  br label %3930

483:                                              ; preds = %458
  %484 = ptrtoint ptr %129 to i64
  %485 = ptrtoint ptr %130 to i64
  %486 = sub i64 %484, %485
  %487 = sext i32 %459 to i64
  %488 = srem i64 %486, %487
  %489 = trunc i64 %488 to i32
  br label %490

490:                                              ; preds = %180, %483
  %491 = phi i32 [ %97, %180 ], [ %489, %483 ]
  %492 = and i8 %79, 1
  %493 = icmp eq i8 %492, 0
  br i1 %493, label %528, label %494

494:                                              ; preds = %490
  %495 = icmp slt i32 %491, 1
  br i1 %495, label %3941, label %496

496:                                              ; preds = %494, %396
  %497 = phi ptr [ %334, %396 ], [ %129, %494 ]
  %498 = phi i32 [ %397, %396 ], [ %491, %494 ]
  %499 = phi i32 [ %335, %396 ], [ %78, %494 ]
  %500 = phi ptr [ %336, %396 ], [ %77, %494 ]
  %501 = icmp sgt i32 %498, 0
  br i1 %501, label %502, label %542

502:                                              ; preds = %496
  %503 = and i32 %80, 255
  %504 = and i32 %80, 255
  br label %505

505:                                              ; preds = %502, %524
  %506 = phi i32 [ %498, %502 ], [ %526, %524 ]
  %507 = phi ptr [ %497, %502 ], [ %525, %524 ]
  %508 = icmp ugt ptr %507, %130
  br i1 %508, label %510, label %509

509:                                              ; preds = %505
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.49, i32 noundef %503) #11
  br label %510

510:                                              ; preds = %509, %505
  %511 = getelementptr inbounds i8, ptr %507, i64 -1
  %512 = load i8, ptr %511, align 1, !tbaa !55
  %513 = and i8 %512, -64
  %514 = icmp eq i8 %513, -128
  br i1 %514, label %515, label %524

515:                                              ; preds = %510, %519
  %516 = phi ptr [ %520, %519 ], [ %511, %510 ]
  %517 = icmp ugt ptr %516, %130
  br i1 %517, label %519, label %518

518:                                              ; preds = %515
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.49, i32 noundef %504) #11
  br label %519

519:                                              ; preds = %518, %515
  %520 = getelementptr inbounds i8, ptr %516, i64 -1
  %521 = load i8, ptr %520, align 1, !tbaa !55
  %522 = and i8 %521, -64
  %523 = icmp eq i8 %522, -128
  br i1 %523, label %515, label %524, !llvm.loop !191

524:                                              ; preds = %519, %510
  %525 = phi ptr [ %511, %510 ], [ %520, %519 ]
  %526 = add nsw i32 %506, -1
  %527 = icmp sgt i32 %506, 1
  br i1 %527, label %505, label %542, !llvm.loop !192

528:                                              ; preds = %490, %407, %391
  %529 = phi i32 [ %408, %407 ], [ %395, %391 ], [ %491, %490 ]
  %530 = phi i32 [ %335, %407 ], [ %335, %391 ], [ %78, %490 ]
  %531 = phi ptr [ %336, %407 ], [ %336, %391 ], [ %77, %490 ]
  %532 = ptrtoint ptr %129 to i64
  %533 = ptrtoint ptr %130 to i64
  %534 = sub i64 %532, %533
  %535 = sext i32 %529 to i64
  %536 = icmp slt i64 %534, %535
  br i1 %536, label %537, label %539

537:                                              ; preds = %528
  %538 = and i32 %80, 255
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.49, i32 noundef %538) #11
  br label %539

539:                                              ; preds = %537, %528
  %540 = sub nsw i64 0, %535
  %541 = getelementptr inbounds i8, ptr %129, i64 %540
  br label %542

542:                                              ; preds = %524, %496, %539
  %543 = phi ptr [ %541, %539 ], [ %497, %496 ], [ %525, %524 ]
  %544 = phi i32 [ %530, %539 ], [ %499, %496 ], [ %499, %524 ]
  %545 = phi ptr [ %531, %539 ], [ %500, %496 ], [ %500, %524 ]
  %546 = load i64, ptr %70, align 8, !tbaa !77
  %547 = getelementptr inbounds i8, ptr %130, i64 %546
  %548 = icmp ult ptr %543, %547
  br i1 %548, label %549, label %3930

549:                                              ; preds = %542
  %550 = icmp eq ptr %1, null
  %551 = ptrtoint ptr %543 to i64
  %552 = ptrtoint ptr %130 to i64
  %553 = sub i64 %551, %552
  br i1 %550, label %563, label %554

554:                                              ; preds = %549, %559
  %555 = phi ptr [ %561, %559 ], [ %1, %549 ]
  %556 = getelementptr inbounds %struct.tempsym, ptr %555, i64 0, i32 9
  %557 = load i64, ptr %556, align 8, !tbaa !77
  %558 = icmp ult i64 %553, %557
  br i1 %558, label %559, label %563

559:                                              ; preds = %554
  store i64 %553, ptr %556, align 8, !tbaa !77
  %560 = getelementptr inbounds %struct.tempsym, ptr %555, i64 0, i32 10
  %561 = load ptr, ptr %560, align 8, !tbaa !94
  %562 = icmp eq ptr %561, null
  br i1 %562, label %563, label %554, !llvm.loop !193

563:                                              ; preds = %554, %559, %549
  %564 = getelementptr inbounds %struct.tempsym, ptr %6, i64 0, i32 9
  store i64 %553, ptr %564, align 8, !tbaa !77
  br label %3930

565:                                              ; preds = %180
  %566 = call i32 @llvm.umax.i32(i32 %97, i32 1)
  %567 = and i8 %79, 1
  %568 = icmp eq i8 %567, 0
  br i1 %568, label %573, label %569

569:                                              ; preds = %565
  %570 = call i64 @Perl_utf8_length(ptr noundef %130, ptr noundef %129) #11
  %571 = sext i32 %566 to i64
  %572 = urem i64 %570, %571
  br label %579

573:                                              ; preds = %565
  %574 = ptrtoint ptr %129 to i64
  %575 = ptrtoint ptr %130 to i64
  %576 = sub i64 %574, %575
  %577 = sext i32 %566 to i64
  %578 = srem i64 %576, %577
  br label %579

579:                                              ; preds = %573, %569
  %580 = phi i64 [ %572, %569 ], [ %578, %573 ]
  %581 = trunc i64 %580 to i32
  %582 = icmp eq i32 %581, 0
  %583 = sub nsw i32 %566, %581
  br i1 %582, label %3941, label %369

584:                                              ; preds = %180, %180, %180
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  %585 = icmp eq ptr %181, null
  br i1 %585, label %586, label %592

586:                                              ; preds = %584
  %587 = icmp sgt i32 %78, 0
  br i1 %587, label %588, label %592

588:                                              ; preds = %586
  %589 = add nsw i32 %78, -1
  %590 = getelementptr inbounds ptr, ptr %77, i64 1
  %591 = load ptr, ptr %77, align 8, !tbaa !76
  br label %592

592:                                              ; preds = %584, %588, %586
  %593 = phi i32 [ %589, %588 ], [ %78, %586 ], [ %78, %584 ]
  %594 = phi ptr [ %590, %588 ], [ %77, %586 ], [ %77, %584 ]
  %595 = phi ptr [ %591, %588 ], [ @PL_sv_no, %586 ], [ %181, %584 ]
  %596 = getelementptr inbounds %struct.sv, ptr %595, i64 0, i32 2
  %597 = load i32, ptr %596, align 4, !tbaa !111
  %598 = and i32 %597, 2098176
  %599 = icmp eq i32 %598, 1024
  br i1 %599, label %600, label %606

600:                                              ; preds = %592
  %601 = load ptr, ptr %595, align 8, !tbaa !119
  %602 = getelementptr inbounds %struct.xpv, ptr %601, i64 0, i32 2
  %603 = load i64, ptr %602, align 8, !tbaa !120
  store i64 %603, ptr %7, align 8, !tbaa !63
  %604 = getelementptr inbounds %struct.sv, ptr %595, i64 0, i32 3
  %605 = load ptr, ptr %604, align 8, !tbaa !55
  br label %608

606:                                              ; preds = %592
  %607 = call ptr @Perl_sv_2pv_flags(ptr noundef %595, ptr noundef nonnull %7, i32 noundef 34) #11
  br label %608

608:                                              ; preds = %606, %600
  %609 = phi ptr [ %605, %600 ], [ %607, %606 ]
  store ptr %609, ptr %8, align 8, !tbaa !76
  %610 = load i32, ptr %596, align 4, !tbaa !111
  %611 = and i32 %610, 536870912
  %612 = icmp eq i32 %611, 0
  br i1 %612, label %733, label %613

613:                                              ; preds = %608
  %614 = load ptr, ptr @PL_curcop, align 8, !tbaa !76
  %615 = getelementptr inbounds %struct.cop, ptr %614, i64 0, i32 10
  %616 = load i32, ptr %615, align 8, !tbaa !172
  %617 = and i32 %616, 8
  %618 = icmp eq i32 %617, 0
  br i1 %618, label %619, label %733

619:                                              ; preds = %613
  %620 = and i8 %79, 1
  %621 = icmp eq i8 %620, 0
  br i1 %621, label %622, label %638

622:                                              ; preds = %619
  %623 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %624 = load i32, ptr %623, align 4, !tbaa !111
  %625 = and i32 %624, 536870912
  %626 = icmp eq i32 %625, 0
  br i1 %626, label %627, label %638

627:                                              ; preds = %622
  %628 = getelementptr inbounds %struct.tempsym, ptr %6, i64 0, i32 8
  %629 = getelementptr inbounds %struct.tempsym, ptr %6, i64 0, i32 9
  call fastcc void @marked_upgrade(ptr noundef %0, ptr noundef %1)
  %630 = load i32, ptr %628, align 8, !tbaa !74
  %631 = or i32 %630, 8
  store i32 %631, ptr %628, align 8, !tbaa !74
  %632 = load i64, ptr %70, align 8, !tbaa !77
  store i64 %632, ptr %629, align 8, !tbaa !77
  %633 = load ptr, ptr %74, align 8, !tbaa !55
  %634 = load ptr, ptr %0, align 8, !tbaa !119
  %635 = getelementptr inbounds %struct.xpv, ptr %634, i64 0, i32 2
  %636 = load i64, ptr %635, align 8, !tbaa !120
  %637 = getelementptr inbounds i8, ptr %633, i64 %636
  br label %638

638:                                              ; preds = %627, %622, %619
  %639 = phi ptr [ %129, %619 ], [ %129, %622 ], [ %637, %627 ]
  %640 = phi ptr [ %130, %619 ], [ %130, %622 ], [ %633, %627 ]
  %641 = phi i8 [ %79, %619 ], [ %79, %622 ], [ 1, %627 ]
  br i1 %87, label %642, label %649

642:                                              ; preds = %638
  %643 = and i8 %641, 1
  %644 = icmp eq i8 %643, 0
  br i1 %644, label %645, label %728

645:                                              ; preds = %642
  %646 = load i64, ptr %7, align 8, !tbaa !63
  %647 = trunc i64 %646 to i32
  %648 = add i32 %647, 1
  br label %649

649:                                              ; preds = %645, %638
  %650 = phi i32 [ %648, %645 ], [ %97, %638 ]
  %651 = load i64, ptr %7, align 8, !tbaa !63
  %652 = getelementptr inbounds i8, ptr %609, i64 %651
  %653 = icmp eq i32 %80, 90
  %654 = sext i1 %653 to i32
  %655 = add nsw i32 %650, %654
  %656 = sext i32 %655 to i64
  store i64 %656, ptr %7, align 8, !tbaa !63
  %657 = icmp sgt i32 %655, 0
  %658 = icmp sgt i64 %651, 0
  %659 = select i1 %657, i1 %658, i1 false
  br i1 %659, label %660, label %674

660:                                              ; preds = %649, %660
  %661 = phi ptr [ %668, %660 ], [ %609, %649 ]
  %662 = phi i64 [ %669, %660 ], [ %656, %649 ]
  %663 = load i8, ptr %661, align 1, !tbaa !55
  %664 = zext i8 %663 to i64
  %665 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %664
  %666 = load i8, ptr %665, align 1, !tbaa !55
  %667 = zext i8 %666 to i64
  %668 = getelementptr inbounds i8, ptr %661, i64 %667
  %669 = add nsw i64 %662, -1
  store i64 %669, ptr %7, align 8, !tbaa !63
  %670 = trunc i64 %669 to i32
  %671 = icmp sgt i32 %670, 0
  %672 = icmp ult ptr %668, %652
  %673 = select i1 %671, i1 %672, i1 false
  br i1 %673, label %660, label %674, !llvm.loop !194

674:                                              ; preds = %660, %649
  %675 = phi ptr [ %609, %649 ], [ %668, %660 ]
  %676 = icmp ugt ptr %675, %652
  br i1 %676, label %677, label %678

677:                                              ; preds = %674
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.48) #11
  br label %678

678:                                              ; preds = %677, %674
  %679 = and i8 %641, 1
  %680 = icmp eq i8 %679, 0
  br i1 %680, label %690, label %681

681:                                              ; preds = %678
  %682 = load i64, ptr %7, align 8, !tbaa !63
  %683 = zext i1 %653 to i64
  %684 = ptrtoint ptr %675 to i64
  %685 = ptrtoint ptr %609 to i64
  %686 = sub i64 %684, %685
  store i64 %686, ptr %7, align 8, !tbaa !63
  %687 = add i64 %686, %683
  %688 = add i64 %687, %682
  %689 = trunc i64 %688 to i32
  br label %728

690:                                              ; preds = %678
  %691 = sext i32 %650 to i64
  %692 = load i64, ptr %7, align 8, !tbaa !63
  %693 = sub i64 %691, %692
  %694 = sext i1 %653 to i64
  %695 = add i64 %693, %694
  store i64 %695, ptr %7, align 8, !tbaa !63
  %696 = trunc i64 %695 to i32
  %697 = zext i1 %653 to i32
  %698 = add nsw i32 %696, %697
  %699 = select i1 %87, i32 %698, i32 %650
  %700 = sext i32 %699 to i64
  %701 = getelementptr inbounds i8, ptr %639, i64 %700
  %702 = load ptr, ptr %0, align 8, !tbaa !119
  %703 = getelementptr inbounds %struct.xpv, ptr %702, i64 0, i32 3
  %704 = load i64, ptr %703, align 8, !tbaa !55
  %705 = getelementptr inbounds i8, ptr %640, i64 %704
  %706 = icmp ult ptr %701, %705
  br i1 %706, label %713, label %707

707:                                              ; preds = %690
  %708 = call fastcc ptr @S_sv_exp_grow(ptr noundef %0, i64 noundef %700)
  %709 = load ptr, ptr %0, align 8, !tbaa !119
  %710 = getelementptr inbounds %struct.xpv, ptr %709, i64 0, i32 2
  %711 = load i64, ptr %710, align 8, !tbaa !120
  %712 = getelementptr inbounds i8, ptr %708, i64 %711
  br label %713

713:                                              ; preds = %707, %690
  %714 = phi ptr [ %712, %707 ], [ %639, %690 ]
  %715 = phi ptr [ %708, %707 ], [ %640, %690 ]
  %716 = load i64, ptr %7, align 8, !tbaa !63
  %717 = trunc i64 %716 to i32
  %718 = or i32 %80, 2048
  %719 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %8, ptr noundef %652, ptr noundef %714, i32 noundef %717, i32 noundef %718)
  br i1 %719, label %723, label %720

720:                                              ; preds = %713
  %721 = load ptr, ptr %8, align 8, !tbaa !76
  %722 = load i64, ptr %7, align 8, !tbaa !63
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.50, i32 noundef %80, ptr noundef %721, ptr noundef %652, ptr noundef %714, i64 noundef %722) #11
  br label %723

723:                                              ; preds = %720, %713
  %724 = load i64, ptr %7, align 8, !tbaa !63
  %725 = getelementptr inbounds i8, ptr %714, i64 %724
  %726 = trunc i64 %724 to i32
  %727 = sub i32 %699, %726
  br label %728

728:                                              ; preds = %642, %681, %723
  %729 = phi i32 [ 30, %681 ], [ 0, %723 ], [ 30, %642 ]
  %730 = phi ptr [ %639, %681 ], [ %725, %723 ], [ %639, %642 ]
  %731 = phi ptr [ %640, %681 ], [ %715, %723 ], [ %640, %642 ]
  %732 = phi i32 [ %689, %681 ], [ %727, %723 ], [ %97, %642 ]
  switch i32 %729, label %840 [
    i32 0, label %825
    i32 30, label %784
  ]

733:                                              ; preds = %613, %608
  %734 = and i8 %79, 1
  %735 = icmp eq i8 %734, 0
  br i1 %735, label %784, label %736

736:                                              ; preds = %733
  %737 = load i64, ptr %7, align 8
  %738 = trunc i64 %737 to i32
  %739 = icmp eq i32 %80, 90
  %740 = zext i1 %739 to i32
  %741 = add nsw i32 %738, %740
  %742 = select i1 %87, i32 %741, i32 %97
  %743 = icmp sgt i32 %742, %738
  br i1 %743, label %750, label %744

744:                                              ; preds = %736
  %745 = sext i32 %742 to i64
  store i64 %745, ptr %7, align 8, !tbaa !63
  %746 = icmp ne i32 %742, 0
  %747 = and i1 %739, %746
  br i1 %747, label %748, label %750

748:                                              ; preds = %744
  %749 = add nsw i64 %745, -1
  store i64 %749, ptr %7, align 8, !tbaa !63
  br label %750

750:                                              ; preds = %736, %748, %744
  %751 = load i64, ptr %7, align 8, !tbaa !63
  %752 = sext i32 %742 to i64
  %753 = add i64 %751, %752
  %754 = getelementptr inbounds i8, ptr %129, i64 %753
  %755 = load ptr, ptr %0, align 8, !tbaa !119
  %756 = getelementptr inbounds %struct.xpv, ptr %755, i64 0, i32 3
  %757 = load i64, ptr %756, align 8, !tbaa !55
  %758 = getelementptr inbounds i8, ptr %130, i64 %757
  %759 = icmp ult ptr %754, %758
  br i1 %759, label %766, label %760

760:                                              ; preds = %750
  %761 = call fastcc ptr @S_sv_exp_grow(ptr noundef %0, i64 noundef %753)
  %762 = load ptr, ptr %0, align 8, !tbaa !119
  %763 = getelementptr inbounds %struct.xpv, ptr %762, i64 0, i32 2
  %764 = load i64, ptr %763, align 8, !tbaa !120
  %765 = getelementptr inbounds i8, ptr %761, i64 %764
  br label %766

766:                                              ; preds = %760, %750
  %767 = phi ptr [ %765, %760 ], [ %129, %750 ]
  %768 = phi ptr [ %761, %760 ], [ %130, %750 ]
  %769 = load i64, ptr %7, align 8, !tbaa !63
  %770 = trunc i64 %769 to i32
  %771 = sub i32 %742, %770
  %772 = icmp eq i64 %769, 0
  br i1 %772, label %825, label %773

773:                                              ; preds = %766, %773
  %774 = phi ptr [ %778, %773 ], [ %767, %766 ]
  %775 = load ptr, ptr %8, align 8, !tbaa !76
  %776 = load i8, ptr %775, align 1, !tbaa !55
  %777 = zext i8 %776 to i64
  %778 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %774, i64 noundef %777, i64 noundef 0) #11
  %779 = load ptr, ptr %8, align 8, !tbaa !76
  %780 = getelementptr inbounds i8, ptr %779, i64 1
  store ptr %780, ptr %8, align 8, !tbaa !76
  %781 = load i64, ptr %7, align 8, !tbaa !63
  %782 = add i64 %781, -1
  store i64 %782, ptr %7, align 8, !tbaa !63
  %783 = icmp eq i64 %782, 0
  br i1 %783, label %825, label %773, !llvm.loop !195

784:                                              ; preds = %733, %728
  %785 = phi ptr [ %129, %733 ], [ %730, %728 ]
  %786 = phi ptr [ %130, %733 ], [ %731, %728 ]
  %787 = phi i32 [ %97, %733 ], [ %732, %728 ]
  %788 = phi i8 [ %79, %733 ], [ %641, %728 ]
  %789 = load i64, ptr %7, align 8
  %790 = trunc i64 %789 to i32
  %791 = icmp eq i32 %80, 90
  %792 = zext i1 %791 to i32
  %793 = add nsw i32 %790, %792
  %794 = select i1 %87, i32 %793, i32 %787
  %795 = icmp sgt i32 %794, %790
  br i1 %795, label %802, label %796

796:                                              ; preds = %784
  %797 = sext i32 %794 to i64
  store i64 %797, ptr %7, align 8, !tbaa !63
  %798 = icmp ne i32 %794, 0
  %799 = and i1 %791, %798
  br i1 %799, label %800, label %802

800:                                              ; preds = %796
  %801 = add nsw i64 %797, -1
  store i64 %801, ptr %7, align 8, !tbaa !63
  br label %802

802:                                              ; preds = %784, %800, %796
  %803 = sext i32 %794 to i64
  %804 = getelementptr inbounds i8, ptr %785, i64 %803
  %805 = load ptr, ptr %0, align 8, !tbaa !119
  %806 = getelementptr inbounds %struct.xpv, ptr %805, i64 0, i32 3
  %807 = load i64, ptr %806, align 8, !tbaa !55
  %808 = getelementptr inbounds i8, ptr %786, i64 %807
  %809 = icmp ult ptr %804, %808
  br i1 %809, label %816, label %810

810:                                              ; preds = %802
  %811 = call fastcc ptr @S_sv_exp_grow(ptr noundef %0, i64 noundef %803)
  %812 = load ptr, ptr %0, align 8, !tbaa !119
  %813 = getelementptr inbounds %struct.xpv, ptr %812, i64 0, i32 2
  %814 = load i64, ptr %813, align 8, !tbaa !120
  %815 = getelementptr inbounds i8, ptr %811, i64 %814
  br label %816

816:                                              ; preds = %810, %802
  %817 = phi ptr [ %815, %810 ], [ %785, %802 ]
  %818 = phi ptr [ %811, %810 ], [ %786, %802 ]
  %819 = load ptr, ptr %8, align 8, !tbaa !76
  %820 = load i64, ptr %7, align 8, !tbaa !63
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %817, ptr align 1 %819, i64 %820, i1 false)
  %821 = load i64, ptr %7, align 8, !tbaa !63
  %822 = getelementptr inbounds i8, ptr %817, i64 %821
  %823 = trunc i64 %821 to i32
  %824 = sub i32 %794, %823
  br label %825

825:                                              ; preds = %773, %766, %728, %816
  %826 = phi ptr [ %822, %816 ], [ %730, %728 ], [ %767, %766 ], [ %778, %773 ]
  %827 = phi ptr [ %818, %816 ], [ %731, %728 ], [ %768, %766 ], [ %768, %773 ]
  %828 = phi i32 [ %824, %816 ], [ %732, %728 ], [ %771, %766 ], [ %771, %773 ]
  %829 = phi i8 [ %788, %816 ], [ %641, %728 ], [ %79, %766 ], [ %79, %773 ]
  %830 = icmp eq i32 %80, 65
  %831 = select i1 %830, i8 32, i8 0
  %832 = sext i32 %828 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %826, i8 %831, i64 %832, i1 false)
  %833 = getelementptr inbounds i8, ptr %826, i64 %832
  %834 = load i8, ptr @PL_tainting, align 1, !tbaa !196, !range !198, !noundef !199
  %835 = icmp eq i8 %834, 0
  %836 = load i8, ptr @PL_tainted, align 1, !range !198
  %837 = icmp eq i8 %836, 0
  %838 = select i1 %835, i1 true, i1 %837
  br i1 %838, label %840, label %839

839:                                              ; preds = %825
  call void @Perl_sv_magic(ptr noundef %0, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0) #11
  br label %840

840:                                              ; preds = %825, %839, %728
  %841 = phi ptr [ %730, %728 ], [ %833, %839 ], [ %833, %825 ]
  %842 = phi ptr [ %731, %728 ], [ %827, %839 ], [ %827, %825 ]
  %843 = phi i8 [ %641, %728 ], [ %829, %839 ], [ %829, %825 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  br label %3930

844:                                              ; preds = %180, %180
  %845 = icmp eq ptr %181, null
  br i1 %845, label %846, label %852

846:                                              ; preds = %844
  %847 = icmp sgt i32 %78, 0
  br i1 %847, label %848, label %852

848:                                              ; preds = %846
  %849 = add nsw i32 %78, -1
  %850 = getelementptr inbounds ptr, ptr %77, i64 1
  %851 = load ptr, ptr %77, align 8, !tbaa !76
  br label %852

852:                                              ; preds = %844, %848, %846
  %853 = phi i32 [ %849, %848 ], [ %78, %846 ], [ %78, %844 ]
  %854 = phi ptr [ %850, %848 ], [ %77, %846 ], [ %77, %844 ]
  %855 = phi ptr [ %851, %848 ], [ @PL_sv_no, %846 ], [ %181, %844 ]
  %856 = getelementptr inbounds %struct.sv, ptr %855, i64 0, i32 2
  %857 = load i32, ptr %856, align 4, !tbaa !111
  %858 = and i32 %857, 2098176
  %859 = icmp eq i32 %858, 1024
  br i1 %859, label %860, label %866

860:                                              ; preds = %852
  %861 = load ptr, ptr %855, align 8, !tbaa !119
  %862 = getelementptr inbounds %struct.xpv, ptr %861, i64 0, i32 2
  %863 = load i64, ptr %862, align 8, !tbaa !120
  store i64 %863, ptr %7, align 8, !tbaa !63
  %864 = getelementptr inbounds %struct.sv, ptr %855, i64 0, i32 3
  %865 = load ptr, ptr %864, align 8, !tbaa !55
  br label %868

866:                                              ; preds = %852
  %867 = call ptr @Perl_sv_2pv_flags(ptr noundef %855, ptr noundef nonnull %7, i32 noundef 34) #11
  br label %868

868:                                              ; preds = %866, %860
  %869 = phi ptr [ %865, %860 ], [ %867, %866 ]
  %870 = load i64, ptr %7, align 8
  %871 = getelementptr inbounds i8, ptr %869, i64 %870
  %872 = load i32, ptr %856, align 4, !tbaa !111
  %873 = and i32 %872, 536870912
  %874 = icmp eq i32 %873, 0
  br i1 %874, label %883, label %875

875:                                              ; preds = %868
  %876 = select i1 %53, i32 0, i32 -8161
  %877 = load ptr, ptr @PL_curcop, align 8, !tbaa !76
  %878 = getelementptr inbounds %struct.cop, ptr %877, i64 0, i32 10
  %879 = load i32, ptr %878, align 8, !tbaa !172
  %880 = and i32 %879, 8
  %881 = icmp eq i32 %880, 0
  %882 = select i1 %881, i32 %876, i32 0
  br label %883

883:                                              ; preds = %875, %868
  %884 = phi i1 [ false, %868 ], [ %881, %875 ]
  %885 = phi i32 [ 0, %868 ], [ %882, %875 ]
  %886 = trunc i64 %870 to i32
  %887 = select i1 %87, i32 %886, i32 %97
  %888 = add nsw i32 %887, 7
  %889 = sdiv i32 %888, 8
  %890 = sext i32 %889 to i64
  %891 = and i8 %79, 1
  %892 = icmp eq i8 %891, 0
  %893 = zext nneg i8 %891 to i64
  %894 = shl nsw i64 %890, %893
  %895 = getelementptr inbounds i8, ptr %129, i64 %894
  %896 = load ptr, ptr %0, align 8, !tbaa !119
  %897 = getelementptr inbounds %struct.xpv, ptr %896, i64 0, i32 3
  %898 = load i64, ptr %897, align 8, !tbaa !55
  %899 = getelementptr inbounds i8, ptr %130, i64 %898
  %900 = icmp ult ptr %895, %899
  br i1 %900, label %907, label %901

901:                                              ; preds = %883
  %902 = call fastcc ptr @S_sv_exp_grow(ptr noundef %0, i64 noundef %894)
  %903 = load ptr, ptr %0, align 8, !tbaa !119
  %904 = getelementptr inbounds %struct.xpv, ptr %903, i64 0, i32 2
  %905 = load i64, ptr %904, align 8, !tbaa !120
  %906 = getelementptr inbounds i8, ptr %902, i64 %905
  br label %907

907:                                              ; preds = %901, %883
  %908 = phi ptr [ %906, %901 ], [ %129, %883 ]
  %909 = phi ptr [ %902, %901 ], [ %130, %883 ]
  %910 = load i64, ptr %7, align 8, !tbaa !63
  %911 = trunc i64 %910 to i32
  %912 = call i32 @llvm.smin.i32(i32 %887, i32 %911)
  %913 = icmp eq i32 %80, 66
  %914 = icmp sgt i32 %912, 0
  br i1 %913, label %918, label %915

915:                                              ; preds = %907
  br i1 %914, label %916, label %1025

916:                                              ; preds = %915
  %917 = ptrtoint ptr %871 to i64
  br label %973

918:                                              ; preds = %907
  br i1 %914, label %919, label %1025

919:                                              ; preds = %918
  %920 = ptrtoint ptr %871 to i64
  br label %921

921:                                              ; preds = %919, %968
  %922 = phi i32 [ 1, %919 ], [ %971, %968 ]
  %923 = phi ptr [ %908, %919 ], [ %970, %968 ]
  %924 = phi i8 [ 0, %919 ], [ %969, %968 ]
  %925 = phi ptr [ %869, %919 ], [ %947, %968 ]
  br i1 %884, label %926, label %943

926:                                              ; preds = %921
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #11
  %927 = icmp ult ptr %925, %871
  br i1 %927, label %928, label %939

928:                                              ; preds = %926
  %929 = ptrtoint ptr %925 to i64
  %930 = sub i64 %920, %929
  %931 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %925, i64 noundef %930, ptr noundef nonnull %9, i32 noundef %885) #11
  %932 = load i64, ptr %9, align 8
  %933 = add i64 %932, 1
  %934 = icmp ult i64 %933, 2
  br i1 %934, label %935, label %936

935:                                              ; preds = %928
  store i8 0, ptr %923, align 1, !tbaa !55
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.48) #11
  br label %936

936:                                              ; preds = %928, %935
  %937 = load i64, ptr %9, align 8, !tbaa !63
  %938 = getelementptr inbounds i8, ptr %925, i64 %937
  br label %939

939:                                              ; preds = %926, %936
  %940 = phi ptr [ %938, %936 ], [ %925, %926 ]
  %941 = phi i64 [ %931, %936 ], [ 0, %926 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  %942 = trunc i64 %941 to i8
  br label %946

943:                                              ; preds = %921
  %944 = getelementptr inbounds i8, ptr %925, i64 1
  %945 = load i8, ptr %925, align 1, !tbaa !55
  br label %946

946:                                              ; preds = %943, %939
  %947 = phi ptr [ %940, %939 ], [ %944, %943 ]
  %948 = phi i8 [ %942, %939 ], [ %945, %943 ]
  %949 = and i8 %948, 1
  %950 = or i8 %949, %924
  %951 = and i32 %922, 7
  %952 = icmp eq i32 %951, 0
  br i1 %952, label %955, label %953

953:                                              ; preds = %946
  %954 = shl i8 %950, 1
  br label %968

955:                                              ; preds = %946
  br i1 %892, label %966, label %956

956:                                              ; preds = %955
  %957 = icmp sgt i8 %950, -1
  br i1 %957, label %958, label %960

958:                                              ; preds = %956
  %959 = getelementptr inbounds i8, ptr %923, i64 1
  store i8 %950, ptr %923, align 1, !tbaa !55
  br label %968

960:                                              ; preds = %956
  %961 = and i8 %950, -65
  %962 = lshr i8 %924, 6
  %963 = or disjoint i8 %962, -64
  %964 = getelementptr inbounds i8, ptr %923, i64 1
  store i8 %963, ptr %923, align 1, !tbaa !55
  %965 = getelementptr inbounds i8, ptr %923, i64 2
  store i8 %961, ptr %964, align 1, !tbaa !55
  br label %968

966:                                              ; preds = %955
  %967 = getelementptr inbounds i8, ptr %923, i64 1
  store i8 %950, ptr %923, align 1, !tbaa !55
  br label %968

968:                                              ; preds = %960, %958, %966, %953
  %969 = phi i8 [ %954, %953 ], [ 0, %966 ], [ 0, %958 ], [ 0, %960 ]
  %970 = phi ptr [ %923, %953 ], [ %967, %966 ], [ %959, %958 ], [ %965, %960 ]
  %971 = add nuw i32 %922, 1
  %972 = icmp eq i32 %922, %912
  br i1 %972, label %1025, label %921, !llvm.loop !200

973:                                              ; preds = %916, %1020
  %974 = phi i32 [ 1, %916 ], [ %1023, %1020 ]
  %975 = phi ptr [ %908, %916 ], [ %1022, %1020 ]
  %976 = phi i8 [ 0, %916 ], [ %1021, %1020 ]
  %977 = phi ptr [ %869, %916 ], [ %999, %1020 ]
  br i1 %884, label %978, label %995

978:                                              ; preds = %973
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #11
  %979 = icmp ult ptr %977, %871
  br i1 %979, label %980, label %991

980:                                              ; preds = %978
  %981 = ptrtoint ptr %977 to i64
  %982 = sub i64 %917, %981
  %983 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %977, i64 noundef %982, ptr noundef nonnull %10, i32 noundef %885) #11
  %984 = load i64, ptr %10, align 8
  %985 = add i64 %984, 1
  %986 = icmp ult i64 %985, 2
  br i1 %986, label %987, label %988

987:                                              ; preds = %980
  store i8 0, ptr %975, align 1, !tbaa !55
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.48) #11
  br label %988

988:                                              ; preds = %980, %987
  %989 = load i64, ptr %10, align 8, !tbaa !63
  %990 = getelementptr inbounds i8, ptr %977, i64 %989
  br label %991

991:                                              ; preds = %978, %988
  %992 = phi ptr [ %990, %988 ], [ %977, %978 ]
  %993 = phi i64 [ %983, %988 ], [ 0, %978 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  %994 = trunc i64 %993 to i8
  br label %998

995:                                              ; preds = %973
  %996 = getelementptr inbounds i8, ptr %977, i64 1
  %997 = load i8, ptr %977, align 1, !tbaa !55
  br label %998

998:                                              ; preds = %995, %991
  %999 = phi ptr [ %992, %991 ], [ %996, %995 ]
  %1000 = phi i8 [ %994, %991 ], [ %997, %995 ]
  %1001 = shl i8 %1000, 7
  %1002 = or i8 %1001, %976
  %1003 = and i32 %974, 7
  %1004 = icmp eq i32 %1003, 0
  br i1 %1004, label %1007, label %1005

1005:                                             ; preds = %998
  %1006 = lshr i8 %1002, 1
  br label %1020

1007:                                             ; preds = %998
  br i1 %892, label %1018, label %1008

1008:                                             ; preds = %1007
  %1009 = icmp sgt i8 %1002, -1
  br i1 %1009, label %1010, label %1012

1010:                                             ; preds = %1008
  %1011 = getelementptr inbounds i8, ptr %975, i64 1
  store i8 %1002, ptr %975, align 1, !tbaa !55
  br label %1020

1012:                                             ; preds = %1008
  %1013 = and i8 %1002, -65
  %1014 = lshr i8 %1002, 6
  %1015 = or disjoint i8 %1014, -64
  %1016 = getelementptr inbounds i8, ptr %975, i64 1
  store i8 %1015, ptr %975, align 1, !tbaa !55
  %1017 = getelementptr inbounds i8, ptr %975, i64 2
  store i8 %1013, ptr %1016, align 1, !tbaa !55
  br label %1020

1018:                                             ; preds = %1007
  %1019 = getelementptr inbounds i8, ptr %975, i64 1
  store i8 %1002, ptr %975, align 1, !tbaa !55
  br label %1020

1020:                                             ; preds = %1012, %1010, %1018, %1005
  %1021 = phi i8 [ %1006, %1005 ], [ 0, %1018 ], [ 0, %1010 ], [ 0, %1012 ]
  %1022 = phi ptr [ %975, %1005 ], [ %1019, %1018 ], [ %1011, %1010 ], [ %1017, %1012 ]
  %1023 = add nuw i32 %974, 1
  %1024 = icmp eq i32 %974, %912
  br i1 %1024, label %1025, label %973, !llvm.loop !201

1025:                                             ; preds = %1020, %968, %915, %918
  %1026 = phi i32 [ 0, %918 ], [ 0, %915 ], [ %912, %968 ], [ %912, %1020 ]
  %1027 = phi i8 [ 0, %918 ], [ 0, %915 ], [ %969, %968 ], [ %1021, %1020 ]
  %1028 = phi ptr [ %908, %918 ], [ %908, %915 ], [ %970, %968 ], [ %1022, %1020 ]
  %1029 = and i32 %1026, 7
  %1030 = icmp eq i32 %1029, 0
  br i1 %1030, label %1053, label %1031

1031:                                             ; preds = %1025
  %1032 = xor i32 %1029, 7
  %1033 = zext i8 %1027 to i32
  %1034 = shl nuw nsw i32 %1033, %1032
  %1035 = lshr i32 %1033, %1032
  %1036 = select i1 %913, i32 %1034, i32 %1035
  %1037 = trunc i32 %1036 to i8
  br i1 %892, label %1048, label %1038

1038:                                             ; preds = %1031
  %1039 = icmp sgt i8 %1037, -1
  br i1 %1039, label %1040, label %1042

1040:                                             ; preds = %1038
  %1041 = getelementptr inbounds i8, ptr %1028, i64 1
  store i8 %1037, ptr %1028, align 1, !tbaa !55
  br label %1050

1042:                                             ; preds = %1038
  %1043 = and i8 %1037, -65
  %1044 = lshr i8 %1037, 6
  %1045 = or disjoint i8 %1044, -64
  %1046 = getelementptr inbounds i8, ptr %1028, i64 1
  store i8 %1045, ptr %1028, align 1, !tbaa !55
  %1047 = getelementptr inbounds i8, ptr %1028, i64 2
  store i8 %1043, ptr %1046, align 1, !tbaa !55
  br label %1050

1048:                                             ; preds = %1031
  %1049 = getelementptr inbounds i8, ptr %1028, i64 1
  store i8 %1037, ptr %1028, align 1, !tbaa !55
  br label %1050

1050:                                             ; preds = %1042, %1040, %1048
  %1051 = phi ptr [ %1049, %1048 ], [ %1041, %1040 ], [ %1047, %1042 ]
  %1052 = add nuw nsw i32 %1026, 7
  br label %1053

1053:                                             ; preds = %1050, %1025
  %1054 = phi i32 [ %1052, %1050 ], [ %1026, %1025 ]
  %1055 = phi ptr [ %1051, %1050 ], [ %1028, %1025 ]
  br i1 %87, label %1059, label %1056

1056:                                             ; preds = %1053
  %1057 = sdiv i32 %1054, -8
  %1058 = add nsw i32 %1057, %889
  br label %1059

1059:                                             ; preds = %1053, %1056
  %1060 = phi i32 [ %1058, %1056 ], [ 0, %1053 ]
  %1061 = sext i32 %1060 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %1055, i8 0, i64 %1061, i1 false)
  %1062 = getelementptr inbounds i8, ptr %1055, i64 %1061
  br label %3930

1063:                                             ; preds = %180, %180
  %1064 = icmp eq ptr %181, null
  br i1 %1064, label %1065, label %1071

1065:                                             ; preds = %1063
  %1066 = icmp sgt i32 %78, 0
  br i1 %1066, label %1067, label %1071

1067:                                             ; preds = %1065
  %1068 = add nsw i32 %78, -1
  %1069 = getelementptr inbounds ptr, ptr %77, i64 1
  %1070 = load ptr, ptr %77, align 8, !tbaa !76
  br label %1071

1071:                                             ; preds = %1063, %1067, %1065
  %1072 = phi i32 [ %1068, %1067 ], [ %78, %1065 ], [ %78, %1063 ]
  %1073 = phi ptr [ %1069, %1067 ], [ %77, %1065 ], [ %77, %1063 ]
  %1074 = phi ptr [ %1070, %1067 ], [ @PL_sv_no, %1065 ], [ %181, %1063 ]
  %1075 = getelementptr inbounds %struct.sv, ptr %1074, i64 0, i32 2
  %1076 = load i32, ptr %1075, align 4, !tbaa !111
  %1077 = and i32 %1076, 2098176
  %1078 = icmp eq i32 %1077, 1024
  br i1 %1078, label %1079, label %1085

1079:                                             ; preds = %1071
  %1080 = load ptr, ptr %1074, align 8, !tbaa !119
  %1081 = getelementptr inbounds %struct.xpv, ptr %1080, i64 0, i32 2
  %1082 = load i64, ptr %1081, align 8, !tbaa !120
  store i64 %1082, ptr %7, align 8, !tbaa !63
  %1083 = getelementptr inbounds %struct.sv, ptr %1074, i64 0, i32 3
  %1084 = load ptr, ptr %1083, align 8, !tbaa !55
  br label %1087

1085:                                             ; preds = %1071
  %1086 = call ptr @Perl_sv_2pv_flags(ptr noundef %1074, ptr noundef nonnull %7, i32 noundef 34) #11
  br label %1087

1087:                                             ; preds = %1085, %1079
  %1088 = phi ptr [ %1084, %1079 ], [ %1086, %1085 ]
  %1089 = load i64, ptr %7, align 8
  %1090 = getelementptr inbounds i8, ptr %1088, i64 %1089
  %1091 = load i32, ptr %1075, align 4, !tbaa !111
  %1092 = and i32 %1091, 536870912
  %1093 = icmp eq i32 %1092, 0
  br i1 %1093, label %1102, label %1094

1094:                                             ; preds = %1087
  %1095 = select i1 %53, i32 0, i32 -8161
  %1096 = load ptr, ptr @PL_curcop, align 8, !tbaa !76
  %1097 = getelementptr inbounds %struct.cop, ptr %1096, i64 0, i32 10
  %1098 = load i32, ptr %1097, align 8, !tbaa !172
  %1099 = and i32 %1098, 8
  %1100 = icmp eq i32 %1099, 0
  %1101 = select i1 %1100, i32 %1095, i32 0
  br label %1102

1102:                                             ; preds = %1094, %1087
  %1103 = phi i1 [ false, %1087 ], [ %1100, %1094 ]
  %1104 = phi i32 [ 0, %1087 ], [ %1101, %1094 ]
  %1105 = trunc i64 %1089 to i32
  %1106 = select i1 %87, i32 %1105, i32 %97
  %1107 = add nsw i32 %1106, 1
  %1108 = sdiv i32 %1107, 2
  %1109 = sext i32 %1108 to i64
  %1110 = and i8 %79, 1
  %1111 = icmp eq i8 %1110, 0
  %1112 = zext nneg i8 %1110 to i64
  %1113 = shl nsw i64 %1109, %1112
  %1114 = getelementptr inbounds i8, ptr %129, i64 %1113
  %1115 = load ptr, ptr %0, align 8, !tbaa !119
  %1116 = getelementptr inbounds %struct.xpv, ptr %1115, i64 0, i32 3
  %1117 = load i64, ptr %1116, align 8, !tbaa !55
  %1118 = getelementptr inbounds i8, ptr %130, i64 %1117
  %1119 = icmp ult ptr %1114, %1118
  br i1 %1119, label %1126, label %1120

1120:                                             ; preds = %1102
  %1121 = call fastcc ptr @S_sv_exp_grow(ptr noundef %0, i64 noundef %1113)
  %1122 = load ptr, ptr %0, align 8, !tbaa !119
  %1123 = getelementptr inbounds %struct.xpv, ptr %1122, i64 0, i32 2
  %1124 = load i64, ptr %1123, align 8, !tbaa !120
  %1125 = getelementptr inbounds i8, ptr %1121, i64 %1124
  br label %1126

1126:                                             ; preds = %1120, %1102
  %1127 = phi ptr [ %1125, %1120 ], [ %129, %1102 ]
  %1128 = phi ptr [ %1121, %1120 ], [ %130, %1102 ]
  %1129 = load i64, ptr %7, align 8
  %1130 = trunc i64 %1129 to i32
  %1131 = call i32 @llvm.smin.i32(i32 %1106, i32 %1130)
  %1132 = select i1 %1111, i32 %1131, i32 %1106
  %1133 = icmp eq i32 %80, 72
  %1134 = icmp sgt i32 %1132, 0
  br i1 %1133, label %1139, label %1135

1135:                                             ; preds = %1126
  br i1 %1134, label %1136, label %1285

1136:                                             ; preds = %1135
  %1137 = ptrtoint ptr %1090 to i64
  %1138 = add nuw i32 %1132, 1
  br label %1213

1139:                                             ; preds = %1126
  br i1 %1134, label %1140, label %1285

1140:                                             ; preds = %1139
  %1141 = ptrtoint ptr %1090 to i64
  %1142 = add nuw i32 %1132, 1
  br label %1143

1143:                                             ; preds = %1140, %1208
  %1144 = phi i32 [ 1, %1140 ], [ %1211, %1208 ]
  %1145 = phi ptr [ %1127, %1140 ], [ %1210, %1208 ]
  %1146 = phi i8 [ 0, %1140 ], [ %1209, %1208 ]
  %1147 = phi i32 [ 0, %1140 ], [ %1144, %1208 ]
  %1148 = phi ptr [ %1088, %1140 ], [ %1187, %1208 ]
  br i1 %1103, label %1149, label %1176

1149:                                             ; preds = %1143
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #11
  %1150 = icmp ult ptr %1148, %1090
  br i1 %1150, label %1151, label %1162

1151:                                             ; preds = %1149
  %1152 = ptrtoint ptr %1148 to i64
  %1153 = sub i64 %1141, %1152
  %1154 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %1148, i64 noundef %1153, ptr noundef nonnull %11, i32 noundef %1104) #11
  %1155 = load i64, ptr %11, align 8
  %1156 = add i64 %1155, 1
  %1157 = icmp ult i64 %1156, 2
  br i1 %1157, label %1158, label %1159

1158:                                             ; preds = %1151
  store i8 0, ptr %1145, align 1, !tbaa !55
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.48) #11
  br label %1159

1159:                                             ; preds = %1151, %1158
  %1160 = load i64, ptr %11, align 8, !tbaa !63
  %1161 = getelementptr inbounds i8, ptr %1148, i64 %1160
  br label %1162

1162:                                             ; preds = %1149, %1159
  %1163 = phi ptr [ %1161, %1159 ], [ %1148, %1149 ]
  %1164 = phi i64 [ %1154, %1159 ], [ 0, %1149 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #11
  %1165 = icmp ult i64 %1164, 256
  br i1 %1165, label %1166, label %1174

1166:                                             ; preds = %1162
  %1167 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %1164
  %1168 = load i32, ptr %1167, align 4, !tbaa !92
  %1169 = and i32 %1168, 16388
  %1170 = icmp eq i32 %1169, 16388
  br i1 %1170, label %1171, label %1174

1171:                                             ; preds = %1166
  %1172 = trunc i64 %1164 to i8
  %1173 = add i8 %1172, 9
  br label %1186

1174:                                             ; preds = %1166, %1162
  %1175 = trunc i64 %1164 to i8
  br label %1186

1176:                                             ; preds = %1143
  %1177 = load i8, ptr %1148, align 1, !tbaa !55
  %1178 = zext i8 %1177 to i64
  %1179 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %1178
  %1180 = load i32, ptr %1179, align 4, !tbaa !92
  %1181 = and i32 %1180, 16388
  %1182 = icmp eq i32 %1181, 16388
  %1183 = getelementptr inbounds i8, ptr %1148, i64 1
  %1184 = add i8 %1177, 9
  %1185 = select i1 %1182, i8 %1184, i8 %1177
  br label %1186

1186:                                             ; preds = %1176, %1171, %1174
  %1187 = phi ptr [ %1163, %1174 ], [ %1163, %1171 ], [ %1183, %1176 ]
  %1188 = phi i8 [ %1175, %1174 ], [ %1173, %1171 ], [ %1185, %1176 ]
  %1189 = and i8 %1188, 15
  %1190 = or i8 %1189, %1146
  %1191 = and i32 %1147, 1
  %1192 = icmp eq i32 %1191, 0
  br i1 %1192, label %1193, label %1195

1193:                                             ; preds = %1186
  %1194 = shl i8 %1190, 4
  br label %1208

1195:                                             ; preds = %1186
  br i1 %1111, label %1206, label %1196

1196:                                             ; preds = %1195
  %1197 = icmp sgt i8 %1190, -1
  br i1 %1197, label %1198, label %1200

1198:                                             ; preds = %1196
  %1199 = getelementptr inbounds i8, ptr %1145, i64 1
  store i8 %1190, ptr %1145, align 1, !tbaa !55
  br label %1208

1200:                                             ; preds = %1196
  %1201 = and i8 %1190, -65
  %1202 = lshr i8 %1146, 6
  %1203 = or disjoint i8 %1202, -64
  %1204 = getelementptr inbounds i8, ptr %1145, i64 1
  store i8 %1203, ptr %1145, align 1, !tbaa !55
  %1205 = getelementptr inbounds i8, ptr %1145, i64 2
  store i8 %1201, ptr %1204, align 1, !tbaa !55
  br label %1208

1206:                                             ; preds = %1195
  %1207 = getelementptr inbounds i8, ptr %1145, i64 1
  store i8 %1190, ptr %1145, align 1, !tbaa !55
  br label %1208

1208:                                             ; preds = %1200, %1198, %1206, %1193
  %1209 = phi i8 [ %1194, %1193 ], [ 0, %1206 ], [ 0, %1198 ], [ 0, %1200 ]
  %1210 = phi ptr [ %1145, %1193 ], [ %1207, %1206 ], [ %1199, %1198 ], [ %1205, %1200 ]
  %1211 = add nuw i32 %1144, 1
  %1212 = icmp eq i32 %1144, %1132
  br i1 %1212, label %1285, label %1143, !llvm.loop !202

1213:                                             ; preds = %1136, %1280
  %1214 = phi i32 [ 1, %1136 ], [ %1283, %1280 ]
  %1215 = phi ptr [ %1127, %1136 ], [ %1282, %1280 ]
  %1216 = phi i8 [ 0, %1136 ], [ %1281, %1280 ]
  %1217 = phi i32 [ 0, %1136 ], [ %1214, %1280 ]
  %1218 = phi ptr [ %1088, %1136 ], [ %1260, %1280 ]
  br i1 %1103, label %1219, label %1248

1219:                                             ; preds = %1213
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #11
  %1220 = icmp ult ptr %1218, %1090
  br i1 %1220, label %1221, label %1232

1221:                                             ; preds = %1219
  %1222 = ptrtoint ptr %1218 to i64
  %1223 = sub i64 %1137, %1222
  %1224 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %1218, i64 noundef %1223, ptr noundef nonnull %12, i32 noundef %1104) #11
  %1225 = load i64, ptr %12, align 8
  %1226 = add i64 %1225, 1
  %1227 = icmp ult i64 %1226, 2
  br i1 %1227, label %1228, label %1229

1228:                                             ; preds = %1221
  store i8 0, ptr %1215, align 1, !tbaa !55
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.48) #11
  br label %1229

1229:                                             ; preds = %1221, %1228
  %1230 = load i64, ptr %12, align 8, !tbaa !63
  %1231 = getelementptr inbounds i8, ptr %1218, i64 %1230
  br label %1232

1232:                                             ; preds = %1219, %1229
  %1233 = phi ptr [ %1231, %1229 ], [ %1218, %1219 ]
  %1234 = phi i64 [ %1224, %1229 ], [ 0, %1219 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #11
  %1235 = icmp ult i64 %1234, 256
  br i1 %1235, label %1236, label %1245

1236:                                             ; preds = %1232
  %1237 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %1234
  %1238 = load i32, ptr %1237, align 4, !tbaa !92
  %1239 = and i32 %1238, 16388
  %1240 = icmp eq i32 %1239, 16388
  br i1 %1240, label %1241, label %1245

1241:                                             ; preds = %1236
  %1242 = trunc i64 %1234 to i8
  %1243 = shl i8 %1242, 4
  %1244 = add i8 %1243, -112
  br label %1259

1245:                                             ; preds = %1236, %1232
  %1246 = trunc i64 %1234 to i8
  %1247 = shl i8 %1246, 4
  br label %1259

1248:                                             ; preds = %1213
  %1249 = load i8, ptr %1218, align 1, !tbaa !55
  %1250 = zext i8 %1249 to i64
  %1251 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %1250
  %1252 = load i32, ptr %1251, align 4, !tbaa !92
  %1253 = and i32 %1252, 16388
  %1254 = icmp eq i32 %1253, 16388
  %1255 = getelementptr inbounds i8, ptr %1218, i64 1
  %1256 = shl i8 %1249, 4
  %1257 = add i8 %1256, -112
  %1258 = select i1 %1254, i8 %1257, i8 %1256
  br label %1259

1259:                                             ; preds = %1248, %1241, %1245
  %1260 = phi ptr [ %1233, %1245 ], [ %1233, %1241 ], [ %1255, %1248 ]
  %1261 = phi i8 [ %1247, %1245 ], [ %1244, %1241 ], [ %1258, %1248 ]
  %1262 = or i8 %1261, %1216
  %1263 = and i32 %1217, 1
  %1264 = icmp eq i32 %1263, 0
  br i1 %1264, label %1265, label %1267

1265:                                             ; preds = %1259
  %1266 = lshr i8 %1262, 4
  br label %1280

1267:                                             ; preds = %1259
  br i1 %1111, label %1278, label %1268

1268:                                             ; preds = %1267
  %1269 = icmp sgt i8 %1262, -1
  br i1 %1269, label %1270, label %1272

1270:                                             ; preds = %1268
  %1271 = getelementptr inbounds i8, ptr %1215, i64 1
  store i8 %1262, ptr %1215, align 1, !tbaa !55
  br label %1280

1272:                                             ; preds = %1268
  %1273 = and i8 %1262, -65
  %1274 = lshr i8 %1262, 6
  %1275 = or disjoint i8 %1274, -64
  %1276 = getelementptr inbounds i8, ptr %1215, i64 1
  store i8 %1275, ptr %1215, align 1, !tbaa !55
  %1277 = getelementptr inbounds i8, ptr %1215, i64 2
  store i8 %1273, ptr %1276, align 1, !tbaa !55
  br label %1280

1278:                                             ; preds = %1267
  %1279 = getelementptr inbounds i8, ptr %1215, i64 1
  store i8 %1262, ptr %1215, align 1, !tbaa !55
  br label %1280

1280:                                             ; preds = %1272, %1270, %1278, %1265
  %1281 = phi i8 [ %1266, %1265 ], [ 0, %1278 ], [ 0, %1270 ], [ 0, %1272 ]
  %1282 = phi ptr [ %1215, %1265 ], [ %1279, %1278 ], [ %1271, %1270 ], [ %1277, %1272 ]
  %1283 = add nuw i32 %1214, 1
  %1284 = icmp eq i32 %1214, %1132
  br i1 %1284, label %1285, label %1213, !llvm.loop !203

1285:                                             ; preds = %1280, %1208, %1135, %1139
  %1286 = phi i32 [ 1, %1139 ], [ 1, %1135 ], [ %1142, %1208 ], [ %1138, %1280 ]
  %1287 = phi i8 [ 0, %1139 ], [ 0, %1135 ], [ %1209, %1208 ], [ %1281, %1280 ]
  %1288 = phi ptr [ %1127, %1139 ], [ %1127, %1135 ], [ %1210, %1208 ], [ %1282, %1280 ]
  %1289 = add nsw i32 %1286, -1
  %1290 = and i32 %1289, 1
  %1291 = icmp eq i32 %1290, 0
  br i1 %1291, label %1305, label %1292

1292:                                             ; preds = %1285
  br i1 %1111, label %1303, label %1293

1293:                                             ; preds = %1292
  %1294 = icmp sgt i8 %1287, -1
  br i1 %1294, label %1295, label %1297

1295:                                             ; preds = %1293
  %1296 = getelementptr inbounds i8, ptr %1288, i64 1
  store i8 %1287, ptr %1288, align 1, !tbaa !55
  br label %1305

1297:                                             ; preds = %1293
  %1298 = and i8 %1287, -65
  %1299 = lshr i8 %1287, 6
  %1300 = or disjoint i8 %1299, -64
  %1301 = getelementptr inbounds i8, ptr %1288, i64 1
  store i8 %1300, ptr %1288, align 1, !tbaa !55
  %1302 = getelementptr inbounds i8, ptr %1288, i64 2
  store i8 %1298, ptr %1301, align 1, !tbaa !55
  br label %1305

1303:                                             ; preds = %1292
  %1304 = getelementptr inbounds i8, ptr %1288, i64 1
  store i8 %1287, ptr %1288, align 1, !tbaa !55
  br label %1305

1305:                                             ; preds = %1297, %1295, %1303, %1285
  %1306 = phi i32 [ %1289, %1285 ], [ %1286, %1303 ], [ %1286, %1295 ], [ %1286, %1297 ]
  %1307 = phi ptr [ %1288, %1285 ], [ %1304, %1303 ], [ %1296, %1295 ], [ %1302, %1297 ]
  br i1 %87, label %1311, label %1308

1308:                                             ; preds = %1305
  %1309 = sdiv i32 %1306, -2
  %1310 = add nsw i32 %1309, %1108
  br label %1311

1311:                                             ; preds = %1305, %1308
  %1312 = phi i32 [ %1310, %1308 ], [ 0, %1305 ]
  %1313 = sext i32 %1312 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %1307, i8 0, i64 %1313, i1 false)
  %1314 = getelementptr inbounds i8, ptr %1307, i64 %1313
  br label %3930

1315:                                             ; preds = %271, %1361
  %1316 = phi i32 [ %97, %271 ], [ %1320, %1361 ]
  %1317 = phi ptr [ %77, %271 ], [ %1329, %1361 ]
  %1318 = phi i32 [ %78, %271 ], [ %1328, %1361 ]
  %1319 = phi ptr [ %129, %271 ], [ %1362, %1361 ]
  %1320 = add nsw i32 %1316, -1
  br i1 %272, label %1321, label %1327

1321:                                             ; preds = %1315
  %1322 = icmp sgt i32 %1318, 0
  br i1 %1322, label %1323, label %1327

1323:                                             ; preds = %1321
  %1324 = add nsw i32 %1318, -1
  %1325 = getelementptr inbounds ptr, ptr %1317, i64 1
  %1326 = load ptr, ptr %1317, align 8, !tbaa !76
  br label %1327

1327:                                             ; preds = %1315, %1323, %1321
  %1328 = phi i32 [ %1324, %1323 ], [ %1318, %1321 ], [ %1318, %1315 ]
  %1329 = phi ptr [ %1325, %1323 ], [ %1317, %1321 ], [ %1317, %1315 ]
  %1330 = phi ptr [ %1326, %1323 ], [ @PL_sv_no, %1321 ], [ %181, %1315 ]
  %1331 = call fastcc ptr @S_sv_check_infnan(ptr noundef %1330, i32 noundef %80)
  %1332 = getelementptr inbounds %struct.sv, ptr %1331, i64 0, i32 2
  %1333 = load i32, ptr %1332, align 4, !tbaa !111
  %1334 = and i32 %1333, 256
  %1335 = icmp eq i32 %1334, 0
  br i1 %1335, label %1340, label %1336

1336:                                             ; preds = %1327
  %1337 = load ptr, ptr %1331, align 8, !tbaa !119
  %1338 = getelementptr inbounds %struct.xpviv, ptr %1337, i64 0, i32 4
  %1339 = load i64, ptr %1338, align 8, !tbaa !55
  br label %1342

1340:                                             ; preds = %1327
  %1341 = call i64 @Perl_sv_2iv_flags(ptr noundef %1331, i32 noundef 0) #11
  br label %1342

1342:                                             ; preds = %1340, %1336
  %1343 = phi i64 [ %1339, %1336 ], [ %1341, %1340 ]
  %1344 = add i64 %1343, -128
  %1345 = icmp ult i64 %1344, -256
  br i1 %1345, label %1346, label %1347

1346:                                             ; preds = %1342
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 16, ptr noundef nonnull @.str.51) #11
  br label %1347

1347:                                             ; preds = %1346, %1342
  %1348 = trunc i64 %1343 to i8
  br i1 %274, label %1359, label %1349

1349:                                             ; preds = %1347
  %1350 = icmp sgt i8 %1348, -1
  br i1 %1350, label %1351, label %1353

1351:                                             ; preds = %1349
  %1352 = getelementptr inbounds i8, ptr %1319, i64 1
  store i8 %1348, ptr %1319, align 1, !tbaa !55
  br label %1361

1353:                                             ; preds = %1349
  %1354 = and i8 %1348, -65
  %1355 = lshr i8 %1348, 6
  %1356 = or disjoint i8 %1355, -64
  %1357 = getelementptr inbounds i8, ptr %1319, i64 1
  store i8 %1356, ptr %1319, align 1, !tbaa !55
  %1358 = getelementptr inbounds i8, ptr %1319, i64 2
  store i8 %1354, ptr %1357, align 1, !tbaa !55
  br label %1361

1359:                                             ; preds = %1347
  %1360 = getelementptr inbounds i8, ptr %1319, i64 1
  store i8 %1348, ptr %1319, align 1, !tbaa !55
  br label %1361

1361:                                             ; preds = %1353, %1351, %1359
  %1362 = phi ptr [ %1360, %1359 ], [ %1352, %1351 ], [ %1358, %1353 ]
  %1363 = icmp sgt i32 %1316, 1
  br i1 %1363, label %1315, label %3930, !llvm.loop !204

1364:                                             ; preds = %180
  br i1 %98, label %1371, label %1365

1365:                                             ; preds = %1364
  %1366 = icmp sgt i32 %97, 0
  br i1 %1366, label %1367, label %3930

1367:                                             ; preds = %1365
  %1368 = icmp eq ptr %181, null
  %1369 = and i8 %79, 1
  %1370 = icmp eq i8 %1369, 0
  br label %1376

1371:                                             ; preds = %1364
  %1372 = load i32, ptr %48, align 8, !tbaa !74
  %1373 = trunc i32 %1372 to i8
  %1374 = lshr i8 %1373, 3
  %1375 = and i8 %1374, 1
  br label %3930

1376:                                             ; preds = %1367, %1421
  %1377 = phi i32 [ %97, %1367 ], [ %1381, %1421 ]
  %1378 = phi ptr [ %77, %1367 ], [ %1390, %1421 ]
  %1379 = phi i32 [ %78, %1367 ], [ %1389, %1421 ]
  %1380 = phi ptr [ %129, %1367 ], [ %1422, %1421 ]
  %1381 = add nsw i32 %1377, -1
  br i1 %1368, label %1382, label %1388

1382:                                             ; preds = %1376
  %1383 = icmp sgt i32 %1379, 0
  br i1 %1383, label %1384, label %1388

1384:                                             ; preds = %1382
  %1385 = add nsw i32 %1379, -1
  %1386 = getelementptr inbounds ptr, ptr %1378, i64 1
  %1387 = load ptr, ptr %1378, align 8, !tbaa !76
  br label %1388

1388:                                             ; preds = %1376, %1384, %1382
  %1389 = phi i32 [ %1385, %1384 ], [ %1379, %1382 ], [ %1379, %1376 ]
  %1390 = phi ptr [ %1386, %1384 ], [ %1378, %1382 ], [ %1378, %1376 ]
  %1391 = phi ptr [ %1387, %1384 ], [ @PL_sv_no, %1382 ], [ %181, %1376 ]
  %1392 = call fastcc ptr @S_sv_check_infnan(ptr noundef %1391, i32 noundef %80)
  %1393 = getelementptr inbounds %struct.sv, ptr %1392, i64 0, i32 2
  %1394 = load i32, ptr %1393, align 4, !tbaa !111
  %1395 = and i32 %1394, 256
  %1396 = icmp eq i32 %1395, 0
  br i1 %1396, label %1401, label %1397

1397:                                             ; preds = %1388
  %1398 = load ptr, ptr %1392, align 8, !tbaa !119
  %1399 = getelementptr inbounds %struct.xpviv, ptr %1398, i64 0, i32 4
  %1400 = load i64, ptr %1399, align 8, !tbaa !55
  br label %1403

1401:                                             ; preds = %1388
  %1402 = call i64 @Perl_sv_2iv_flags(ptr noundef %1392, i32 noundef 0) #11
  br label %1403

1403:                                             ; preds = %1401, %1397
  %1404 = phi i64 [ %1400, %1397 ], [ %1402, %1401 ]
  %1405 = icmp ugt i64 %1404, 255
  br i1 %1405, label %1406, label %1407

1406:                                             ; preds = %1403
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 16, ptr noundef nonnull @.str.52) #11
  br label %1407

1407:                                             ; preds = %1406, %1403
  %1408 = trunc i64 %1404 to i8
  br i1 %1370, label %1419, label %1409

1409:                                             ; preds = %1407
  %1410 = icmp sgt i8 %1408, -1
  br i1 %1410, label %1411, label %1413

1411:                                             ; preds = %1409
  %1412 = getelementptr inbounds i8, ptr %1380, i64 1
  store i8 %1408, ptr %1380, align 1, !tbaa !55
  br label %1421

1413:                                             ; preds = %1409
  %1414 = and i8 %1408, -65
  %1415 = lshr i8 %1408, 6
  %1416 = or disjoint i8 %1415, -64
  %1417 = getelementptr inbounds i8, ptr %1380, i64 1
  store i8 %1416, ptr %1380, align 1, !tbaa !55
  %1418 = getelementptr inbounds i8, ptr %1380, i64 2
  store i8 %1414, ptr %1417, align 1, !tbaa !55
  br label %1421

1419:                                             ; preds = %1407
  %1420 = getelementptr inbounds i8, ptr %1380, i64 1
  store i8 %1408, ptr %1380, align 1, !tbaa !55
  br label %1421

1421:                                             ; preds = %1413, %1411, %1419
  %1422 = phi ptr [ %1420, %1419 ], [ %1412, %1411 ], [ %1418, %1413 ]
  %1423 = icmp sgt i32 %1377, 1
  br i1 %1423, label %1376, label %3930, !llvm.loop !205

1424:                                             ; preds = %180
  %1425 = icmp sgt i32 %97, 0
  br i1 %1425, label %1426, label %3930

1426:                                             ; preds = %1424
  %1427 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %1428 = load ptr, ptr %0, align 8, !tbaa !119
  %1429 = getelementptr inbounds %struct.xpv, ptr %1428, i64 0, i32 3
  %1430 = load i64, ptr %1429, align 8, !tbaa !55
  %1431 = getelementptr inbounds i8, ptr %130, i64 %1430
  %1432 = and i8 %79, 1
  %1433 = icmp eq i8 %1432, 0
  %1434 = select i1 %1433, i64 -1, i64 -13
  %1435 = getelementptr inbounds i8, ptr %1431, i64 %1434
  %1436 = load ptr, ptr @PL_curcop, align 8, !tbaa !76
  %1437 = getelementptr inbounds %struct.cop, ptr %1436, i64 0, i32 10
  %1438 = load i32, ptr %1437, align 8, !tbaa !172
  %1439 = icmp eq ptr %181, null
  %1440 = and i32 %1438, 8
  %1441 = icmp eq i32 %1440, 0
  %1442 = zext nneg i32 %97 to i64
  br label %1443

1443:                                             ; preds = %1426, %1577
  %1444 = phi i64 [ %1442, %1426 ], [ %1451, %1577 ]
  %1445 = phi ptr [ %77, %1426 ], [ %1460, %1577 ]
  %1446 = phi i32 [ %78, %1426 ], [ %1459, %1577 ]
  %1447 = phi i8 [ %79, %1426 ], [ %1581, %1577 ]
  %1448 = phi ptr [ %130, %1426 ], [ %1580, %1577 ]
  %1449 = phi ptr [ %129, %1426 ], [ %1579, %1577 ]
  %1450 = phi ptr [ %1435, %1426 ], [ %1578, %1577 ]
  %1451 = add nsw i64 %1444, -1
  br i1 %1439, label %1452, label %1458

1452:                                             ; preds = %1443
  %1453 = icmp sgt i32 %1446, 0
  br i1 %1453, label %1454, label %1458

1454:                                             ; preds = %1452
  %1455 = add nsw i32 %1446, -1
  %1456 = getelementptr inbounds ptr, ptr %1445, i64 1
  %1457 = load ptr, ptr %1445, align 8, !tbaa !76
  br label %1458

1458:                                             ; preds = %1443, %1454, %1452
  %1459 = phi i32 [ %1455, %1454 ], [ %1446, %1452 ], [ %1446, %1443 ]
  %1460 = phi ptr [ %1456, %1454 ], [ %1445, %1452 ], [ %1445, %1443 ]
  %1461 = phi ptr [ %1457, %1454 ], [ @PL_sv_no, %1452 ], [ %181, %1443 ]
  %1462 = call fastcc ptr @S_sv_check_infnan(ptr noundef %1461, i32 noundef %80)
  %1463 = getelementptr inbounds %struct.sv, ptr %1462, i64 0, i32 2
  %1464 = load i32, ptr %1463, align 4, !tbaa !111
  %1465 = and i32 %1464, 256
  %1466 = icmp eq i32 %1465, 0
  br i1 %1466, label %1471, label %1467

1467:                                             ; preds = %1458
  %1468 = load ptr, ptr %1462, align 8, !tbaa !119
  %1469 = getelementptr inbounds %struct.xpvuv, ptr %1468, i64 0, i32 4
  %1470 = load i64, ptr %1469, align 8, !tbaa !55
  br label %1473

1471:                                             ; preds = %1458
  %1472 = call i64 @Perl_sv_2uv_flags(ptr noundef %1462, i32 noundef 0) #11
  br label %1473

1473:                                             ; preds = %1471, %1467
  %1474 = phi i64 [ %1470, %1467 ], [ %1472, %1471 ]
  %1475 = and i64 %1474, 255
  %1476 = select i1 %1441, i64 %1474, i64 %1475
  %1477 = and i8 %1447, 1
  %1478 = icmp eq i8 %1477, 0
  br i1 %1478, label %1516, label %1479

1479:                                             ; preds = %1473, %1522
  %1480 = phi ptr [ %1450, %1473 ], [ %1541, %1522 ]
  %1481 = phi ptr [ %1449, %1473 ], [ %1537, %1522 ]
  %1482 = phi ptr [ %1448, %1473 ], [ %1533, %1522 ]
  %1483 = phi i8 [ %1447, %1473 ], [ 1, %1522 ]
  %1484 = icmp ugt ptr %1481, %1480
  br i1 %1484, label %1485, label %1511

1485:                                             ; preds = %1479
  store i8 0, ptr %1481, align 1, !tbaa !55
  %1486 = ptrtoint ptr %1481 to i64
  %1487 = ptrtoint ptr %1482 to i64
  %1488 = sub i64 %1486, %1487
  %1489 = load ptr, ptr %0, align 8, !tbaa !119
  %1490 = getelementptr inbounds %struct.xpv, ptr %1489, i64 0, i32 2
  store i64 %1488, ptr %1490, align 8, !tbaa !120
  %1491 = add nuw nsw i64 %1444, 12
  %1492 = getelementptr inbounds i8, ptr %1481, i64 %1491
  %1493 = getelementptr inbounds %struct.xpv, ptr %1489, i64 0, i32 3
  %1494 = load i64, ptr %1493, align 8, !tbaa !55
  %1495 = getelementptr inbounds i8, ptr %1482, i64 %1494
  %1496 = icmp ult ptr %1492, %1495
  br i1 %1496, label %1503, label %1497

1497:                                             ; preds = %1485
  %1498 = call fastcc ptr @S_sv_exp_grow(ptr noundef %0, i64 noundef %1491)
  %1499 = load ptr, ptr %0, align 8, !tbaa !119
  %1500 = getelementptr inbounds %struct.xpv, ptr %1499, i64 0, i32 2
  %1501 = load i64, ptr %1500, align 8, !tbaa !120
  %1502 = getelementptr inbounds i8, ptr %1498, i64 %1501
  br label %1503

1503:                                             ; preds = %1497, %1485
  %1504 = phi ptr [ %1502, %1497 ], [ %1481, %1485 ]
  %1505 = phi ptr [ %1498, %1497 ], [ %1482, %1485 ]
  %1506 = load ptr, ptr %0, align 8, !tbaa !119
  %1507 = getelementptr inbounds %struct.xpv, ptr %1506, i64 0, i32 3
  %1508 = load i64, ptr %1507, align 8, !tbaa !55
  %1509 = getelementptr inbounds i8, ptr %1505, i64 %1508
  %1510 = getelementptr inbounds i8, ptr %1509, i64 -13
  br label %1511

1511:                                             ; preds = %1503, %1479
  %1512 = phi ptr [ %1510, %1503 ], [ %1480, %1479 ]
  %1513 = phi ptr [ %1504, %1503 ], [ %1481, %1479 ]
  %1514 = phi ptr [ %1505, %1503 ], [ %1482, %1479 ]
  %1515 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %1513, i64 noundef %1476, i64 noundef 0) #11
  br label %1577

1516:                                             ; preds = %1473
  %1517 = icmp ugt i64 %1476, 255
  br i1 %1517, label %1518, label %1543

1518:                                             ; preds = %1516
  %1519 = load i32, ptr %1427, align 4, !tbaa !111
  %1520 = and i32 %1519, 536870912
  %1521 = icmp eq i32 %1520, 0
  br i1 %1521, label %1522, label %1542

1522:                                             ; preds = %1518
  %1523 = getelementptr inbounds %struct.tempsym, ptr %6, i64 0, i32 8
  %1524 = getelementptr inbounds %struct.tempsym, ptr %6, i64 0, i32 9
  store i8 0, ptr %1449, align 1, !tbaa !55
  %1525 = ptrtoint ptr %1449 to i64
  %1526 = ptrtoint ptr %1448 to i64
  %1527 = sub i64 %1525, %1526
  %1528 = load ptr, ptr %0, align 8, !tbaa !119
  %1529 = getelementptr inbounds %struct.xpv, ptr %1528, i64 0, i32 2
  store i64 %1527, ptr %1529, align 8, !tbaa !120
  call fastcc void @marked_upgrade(ptr noundef %0, ptr noundef %1)
  %1530 = load i32, ptr %1523, align 8, !tbaa !74
  %1531 = or i32 %1530, 8
  store i32 %1531, ptr %1523, align 8, !tbaa !74
  %1532 = load i64, ptr %70, align 8, !tbaa !77
  store i64 %1532, ptr %1524, align 8, !tbaa !77
  %1533 = load ptr, ptr %74, align 8, !tbaa !55
  %1534 = load ptr, ptr %0, align 8, !tbaa !119
  %1535 = getelementptr inbounds %struct.xpv, ptr %1534, i64 0, i32 2
  %1536 = load i64, ptr %1535, align 8, !tbaa !120
  %1537 = getelementptr inbounds i8, ptr %1533, i64 %1536
  %1538 = getelementptr inbounds %struct.xpv, ptr %1534, i64 0, i32 3
  %1539 = load i64, ptr %1538, align 8, !tbaa !55
  %1540 = getelementptr inbounds i8, ptr %1533, i64 %1539
  %1541 = getelementptr inbounds i8, ptr %1540, i64 -13
  br label %1479

1542:                                             ; preds = %1518
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 16, ptr noundef nonnull @.str.53) #11
  br label %1543

1543:                                             ; preds = %1542, %1516
  %1544 = phi i64 [ %1475, %1542 ], [ %1476, %1516 ]
  %1545 = icmp ult ptr %1449, %1450
  br i1 %1545, label %1571, label %1546

1546:                                             ; preds = %1543
  store i8 0, ptr %1449, align 1, !tbaa !55
  %1547 = ptrtoint ptr %1449 to i64
  %1548 = ptrtoint ptr %1448 to i64
  %1549 = sub i64 %1547, %1548
  %1550 = load ptr, ptr %0, align 8, !tbaa !119
  %1551 = getelementptr inbounds %struct.xpv, ptr %1550, i64 0, i32 2
  store i64 %1549, ptr %1551, align 8, !tbaa !120
  %1552 = getelementptr inbounds i8, ptr %1449, i64 %1444
  %1553 = getelementptr inbounds %struct.xpv, ptr %1550, i64 0, i32 3
  %1554 = load i64, ptr %1553, align 8, !tbaa !55
  %1555 = getelementptr inbounds i8, ptr %1448, i64 %1554
  %1556 = icmp ult ptr %1552, %1555
  br i1 %1556, label %1563, label %1557

1557:                                             ; preds = %1546
  %1558 = call fastcc ptr @S_sv_exp_grow(ptr noundef %0, i64 noundef %1444)
  %1559 = load ptr, ptr %0, align 8, !tbaa !119
  %1560 = getelementptr inbounds %struct.xpv, ptr %1559, i64 0, i32 2
  %1561 = load i64, ptr %1560, align 8, !tbaa !120
  %1562 = getelementptr inbounds i8, ptr %1558, i64 %1561
  br label %1563

1563:                                             ; preds = %1557, %1546
  %1564 = phi ptr [ %1562, %1557 ], [ %1449, %1546 ]
  %1565 = phi ptr [ %1558, %1557 ], [ %1448, %1546 ]
  %1566 = load ptr, ptr %0, align 8, !tbaa !119
  %1567 = getelementptr inbounds %struct.xpv, ptr %1566, i64 0, i32 3
  %1568 = load i64, ptr %1567, align 8, !tbaa !55
  %1569 = getelementptr inbounds i8, ptr %1565, i64 %1568
  %1570 = getelementptr inbounds i8, ptr %1569, i64 -1
  br label %1571

1571:                                             ; preds = %1563, %1543
  %1572 = phi ptr [ %1570, %1563 ], [ %1450, %1543 ]
  %1573 = phi ptr [ %1564, %1563 ], [ %1449, %1543 ]
  %1574 = phi ptr [ %1565, %1563 ], [ %1448, %1543 ]
  %1575 = trunc i64 %1544 to i8
  %1576 = getelementptr inbounds i8, ptr %1573, i64 1
  store i8 %1575, ptr %1573, align 1, !tbaa !55
  br label %1577

1577:                                             ; preds = %1571, %1511
  %1578 = phi ptr [ %1512, %1511 ], [ %1572, %1571 ]
  %1579 = phi ptr [ %1515, %1511 ], [ %1576, %1571 ]
  %1580 = phi ptr [ %1514, %1511 ], [ %1574, %1571 ]
  %1581 = phi i8 [ %1483, %1511 ], [ %1447, %1571 ]
  %1582 = icmp sgt i64 %1444, 1
  br i1 %1582, label %1443, label %3930, !llvm.loop !206

1583:                                             ; preds = %180
  br i1 %98, label %1584, label %1594

1584:                                             ; preds = %1583
  %1585 = load i32, ptr %48, align 8, !tbaa !74
  %1586 = and i32 %1585, 8
  %1587 = icmp eq i32 %1586, 0
  br i1 %1587, label %1588, label %1737

1588:                                             ; preds = %1584
  %1589 = getelementptr inbounds %struct.tempsym, ptr %6, i64 0, i32 8
  %1590 = getelementptr inbounds %struct.tempsym, ptr %6, i64 0, i32 9
  call fastcc void @marked_upgrade(ptr noundef %0, ptr noundef %1)
  %1591 = load i32, ptr %1589, align 8, !tbaa !74
  %1592 = or i32 %1591, 8
  store i32 %1592, ptr %1589, align 8, !tbaa !74
  %1593 = load i64, ptr %70, align 8, !tbaa !77
  store i64 %1593, ptr %1590, align 8, !tbaa !77
  br label %1737

1594:                                             ; preds = %1583
  %1595 = and i8 %79, 1
  %1596 = icmp eq i8 %1595, 0
  %1597 = icmp sgt i32 %97, 0
  br i1 %1597, label %1598, label %1737

1598:                                             ; preds = %1594
  %1599 = ptrtoint ptr %13 to i64
  %1600 = sub i64 0, %14
  %1601 = getelementptr i8, ptr %13, i64 %1600
  %1602 = load ptr, ptr %0, align 8, !tbaa !119
  %1603 = getelementptr inbounds %struct.xpv, ptr %1602, i64 0, i32 3
  %1604 = load i64, ptr %1603, align 8, !tbaa !55
  %1605 = getelementptr inbounds i8, ptr %130, i64 %1604
  %1606 = select i1 %1596, i64 -13, i64 0
  %1607 = getelementptr inbounds i8, ptr %1605, i64 %1606
  %1608 = icmp eq ptr %181, null
  %1609 = zext nneg i32 %97 to i64
  br label %1610

1610:                                             ; preds = %1598, %1732
  %1611 = phi i64 [ %1609, %1598 ], [ %1617, %1732 ]
  %1612 = phi ptr [ %77, %1598 ], [ %1626, %1732 ]
  %1613 = phi i32 [ %78, %1598 ], [ %1625, %1732 ]
  %1614 = phi ptr [ %130, %1598 ], [ %1735, %1732 ]
  %1615 = phi ptr [ %129, %1598 ], [ %1734, %1732 ]
  %1616 = phi ptr [ %1607, %1598 ], [ %1733, %1732 ]
  %1617 = add nsw i64 %1611, -1
  br i1 %1608, label %1618, label %1624

1618:                                             ; preds = %1610
  %1619 = icmp sgt i32 %1613, 0
  br i1 %1619, label %1620, label %1624

1620:                                             ; preds = %1618
  %1621 = add nsw i32 %1613, -1
  %1622 = getelementptr inbounds ptr, ptr %1612, i64 1
  %1623 = load ptr, ptr %1612, align 8, !tbaa !76
  br label %1624

1624:                                             ; preds = %1610, %1620, %1618
  %1625 = phi i32 [ %1621, %1620 ], [ %1613, %1618 ], [ %1613, %1610 ]
  %1626 = phi ptr [ %1622, %1620 ], [ %1612, %1618 ], [ %1612, %1610 ]
  %1627 = phi ptr [ %1623, %1620 ], [ @PL_sv_no, %1618 ], [ %181, %1610 ]
  %1628 = call fastcc ptr @S_sv_check_infnan(ptr noundef %1627, i32 noundef %80)
  %1629 = getelementptr inbounds %struct.sv, ptr %1628, i64 0, i32 2
  %1630 = load i32, ptr %1629, align 4, !tbaa !111
  %1631 = and i32 %1630, 256
  %1632 = icmp eq i32 %1631, 0
  br i1 %1632, label %1637, label %1633

1633:                                             ; preds = %1624
  %1634 = load ptr, ptr %1628, align 8, !tbaa !119
  %1635 = getelementptr inbounds %struct.xpvuv, ptr %1634, i64 0, i32 4
  %1636 = load i64, ptr %1635, align 8, !tbaa !55
  br label %1639

1637:                                             ; preds = %1624
  %1638 = call i64 @Perl_sv_2uv_flags(ptr noundef %1628, i32 noundef 0) #11
  br label %1639

1639:                                             ; preds = %1637, %1633
  %1640 = phi i64 [ %1636, %1633 ], [ %1638, %1637 ]
  br i1 %1596, label %1699, label %1641

1641:                                             ; preds = %1639
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %13) #11
  %1642 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef nonnull %13, i64 noundef %1640, i64 noundef 0) #11
  %1643 = ptrtoint ptr %1642 to i64
  %1644 = sub i64 %1643, %1599
  %1645 = shl nsw i64 %1644, 1
  %1646 = getelementptr inbounds i8, ptr %1615, i64 %1645
  %1647 = icmp ult ptr %1646, %1616
  br i1 %1647, label %1673, label %1648

1648:                                             ; preds = %1641
  store i8 0, ptr %1615, align 1, !tbaa !55
  %1649 = ptrtoint ptr %1615 to i64
  %1650 = ptrtoint ptr %1614 to i64
  %1651 = sub i64 %1649, %1650
  %1652 = load ptr, ptr %0, align 8, !tbaa !119
  %1653 = getelementptr inbounds %struct.xpv, ptr %1652, i64 0, i32 2
  store i64 %1651, ptr %1653, align 8, !tbaa !120
  %1654 = add nsw i64 %1645, %1617
  %1655 = getelementptr inbounds i8, ptr %1615, i64 %1654
  %1656 = getelementptr inbounds %struct.xpv, ptr %1652, i64 0, i32 3
  %1657 = load i64, ptr %1656, align 8, !tbaa !55
  %1658 = getelementptr inbounds i8, ptr %1614, i64 %1657
  %1659 = icmp ult ptr %1655, %1658
  br i1 %1659, label %1666, label %1660

1660:                                             ; preds = %1648
  %1661 = call fastcc ptr @S_sv_exp_grow(ptr noundef %0, i64 noundef %1654)
  %1662 = load ptr, ptr %0, align 8, !tbaa !119
  %1663 = getelementptr inbounds %struct.xpv, ptr %1662, i64 0, i32 2
  %1664 = load i64, ptr %1663, align 8, !tbaa !120
  %1665 = getelementptr inbounds i8, ptr %1661, i64 %1664
  br label %1666

1666:                                             ; preds = %1660, %1648
  %1667 = phi ptr [ %1665, %1660 ], [ %1615, %1648 ]
  %1668 = phi ptr [ %1661, %1660 ], [ %1614, %1648 ]
  %1669 = load ptr, ptr %0, align 8, !tbaa !119
  %1670 = getelementptr inbounds %struct.xpv, ptr %1669, i64 0, i32 3
  %1671 = load i64, ptr %1670, align 8, !tbaa !55
  %1672 = getelementptr inbounds i8, ptr %1668, i64 %1671
  br label %1673

1673:                                             ; preds = %1666, %1641
  %1674 = phi ptr [ %1672, %1666 ], [ %1616, %1641 ]
  %1675 = phi ptr [ %1667, %1666 ], [ %1615, %1641 ]
  %1676 = phi ptr [ %1668, %1666 ], [ %1614, %1641 ]
  %1677 = icmp ult ptr %13, %1642
  br i1 %1677, label %1678, label %1697

1678:                                             ; preds = %1673
  %1679 = getelementptr i8, ptr %1601, i64 %1643
  br label %1680

1680:                                             ; preds = %1678, %1693
  %1681 = phi ptr [ %1695, %1693 ], [ %13, %1678 ]
  %1682 = phi ptr [ %1694, %1693 ], [ %1675, %1678 ]
  %1683 = load i8, ptr %1681, align 1, !tbaa !55
  %1684 = icmp sgt i8 %1683, -1
  br i1 %1684, label %1685, label %1687

1685:                                             ; preds = %1680
  %1686 = getelementptr inbounds i8, ptr %1682, i64 1
  store i8 %1683, ptr %1682, align 1, !tbaa !55
  br label %1693

1687:                                             ; preds = %1680
  %1688 = lshr i8 %1683, 6
  %1689 = or disjoint i8 %1688, -64
  %1690 = getelementptr inbounds i8, ptr %1682, i64 1
  store i8 %1689, ptr %1682, align 1, !tbaa !55
  %1691 = and i8 %1683, -65
  %1692 = getelementptr inbounds i8, ptr %1682, i64 2
  store i8 %1691, ptr %1690, align 1, !tbaa !55
  br label %1693

1693:                                             ; preds = %1687, %1685
  %1694 = phi ptr [ %1686, %1685 ], [ %1692, %1687 ]
  %1695 = getelementptr inbounds i8, ptr %1681, i64 1
  %1696 = icmp eq ptr %1695, %1679
  br i1 %1696, label %1697, label %1680, !llvm.loop !207

1697:                                             ; preds = %1693, %1673
  %1698 = phi ptr [ %1675, %1673 ], [ %1694, %1693 ]
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %13) #11
  br label %1732

1699:                                             ; preds = %1639
  %1700 = icmp ult ptr %1615, %1616
  br i1 %1700, label %1727, label %1701

1701:                                             ; preds = %1699
  store i8 0, ptr %1615, align 1, !tbaa !55
  %1702 = ptrtoint ptr %1615 to i64
  %1703 = ptrtoint ptr %1614 to i64
  %1704 = sub i64 %1702, %1703
  %1705 = load ptr, ptr %0, align 8, !tbaa !119
  %1706 = getelementptr inbounds %struct.xpv, ptr %1705, i64 0, i32 2
  store i64 %1704, ptr %1706, align 8, !tbaa !120
  %1707 = add nuw nsw i64 %1611, 12
  %1708 = getelementptr inbounds i8, ptr %1615, i64 %1707
  %1709 = getelementptr inbounds %struct.xpv, ptr %1705, i64 0, i32 3
  %1710 = load i64, ptr %1709, align 8, !tbaa !55
  %1711 = getelementptr inbounds i8, ptr %1614, i64 %1710
  %1712 = icmp ult ptr %1708, %1711
  br i1 %1712, label %1719, label %1713

1713:                                             ; preds = %1701
  %1714 = call fastcc ptr @S_sv_exp_grow(ptr noundef nonnull %0, i64 noundef %1707)
  %1715 = load ptr, ptr %0, align 8, !tbaa !119
  %1716 = getelementptr inbounds %struct.xpv, ptr %1715, i64 0, i32 2
  %1717 = load i64, ptr %1716, align 8, !tbaa !120
  %1718 = getelementptr inbounds i8, ptr %1714, i64 %1717
  br label %1719

1719:                                             ; preds = %1713, %1701
  %1720 = phi ptr [ %1718, %1713 ], [ %1615, %1701 ]
  %1721 = phi ptr [ %1714, %1713 ], [ %1614, %1701 ]
  %1722 = load ptr, ptr %0, align 8, !tbaa !119
  %1723 = getelementptr inbounds %struct.xpv, ptr %1722, i64 0, i32 3
  %1724 = load i64, ptr %1723, align 8, !tbaa !55
  %1725 = getelementptr inbounds i8, ptr %1721, i64 %1724
  %1726 = getelementptr inbounds i8, ptr %1725, i64 -13
  br label %1727

1727:                                             ; preds = %1719, %1699
  %1728 = phi ptr [ %1726, %1719 ], [ %1616, %1699 ]
  %1729 = phi ptr [ %1720, %1719 ], [ %1615, %1699 ]
  %1730 = phi ptr [ %1721, %1719 ], [ %1614, %1699 ]
  %1731 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %1729, i64 noundef %1640, i64 noundef 0) #11
  br label %1732

1732:                                             ; preds = %1727, %1697
  %1733 = phi ptr [ %1674, %1697 ], [ %1728, %1727 ]
  %1734 = phi ptr [ %1698, %1697 ], [ %1731, %1727 ]
  %1735 = phi ptr [ %1676, %1697 ], [ %1730, %1727 ]
  %1736 = icmp sgt i64 %1611, 1
  br i1 %1736, label %1610, label %1737, !llvm.loop !208

1737:                                             ; preds = %1732, %1594, %1584, %1588
  %1738 = phi ptr [ %129, %1588 ], [ %129, %1584 ], [ %129, %1594 ], [ %1734, %1732 ]
  %1739 = phi ptr [ %130, %1588 ], [ %130, %1584 ], [ %130, %1594 ], [ %1735, %1732 ]
  %1740 = phi i8 [ 0, %1588 ], [ 0, %1584 ], [ %79, %1594 ], [ %79, %1732 ]
  %1741 = phi i32 [ %78, %1588 ], [ %78, %1584 ], [ %78, %1594 ], [ %1625, %1732 ]
  %1742 = phi ptr [ %77, %1588 ], [ %77, %1584 ], [ %77, %1594 ], [ %1626, %1732 ]
  br i1 %98, label %3941, label %3930

1743:                                             ; preds = %264, %1828
  %1744 = phi i32 [ %97, %264 ], [ %1748, %1828 ]
  %1745 = phi ptr [ %77, %264 ], [ %1757, %1828 ]
  %1746 = phi i32 [ %78, %264 ], [ %1756, %1828 ]
  %1747 = phi ptr [ %129, %264 ], [ %1829, %1828 ]
  %1748 = add nsw i32 %1744, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #11
  br i1 %266, label %1749, label %1755

1749:                                             ; preds = %1743
  %1750 = icmp sgt i32 %1746, 0
  br i1 %1750, label %1751, label %1755

1751:                                             ; preds = %1749
  %1752 = add nsw i32 %1746, -1
  %1753 = getelementptr inbounds ptr, ptr %1745, i64 1
  %1754 = load ptr, ptr %1745, align 8, !tbaa !76
  br label %1755

1755:                                             ; preds = %1743, %1751, %1749
  %1756 = phi i32 [ %1752, %1751 ], [ %1746, %1749 ], [ %1746, %1743 ]
  %1757 = phi ptr [ %1753, %1751 ], [ %1745, %1749 ], [ %1745, %1743 ]
  %1758 = phi ptr [ %1754, %1751 ], [ @PL_sv_no, %1749 ], [ %181, %1743 ]
  %1759 = getelementptr inbounds %struct.sv, ptr %1758, i64 0, i32 2
  %1760 = load i32, ptr %1759, align 4, !tbaa !111
  %1761 = and i32 %1760, 2097664
  %1762 = icmp eq i32 %1761, 512
  br i1 %1762, label %1763, label %1767

1763:                                             ; preds = %1755
  %1764 = load ptr, ptr %1758, align 8, !tbaa !119
  %1765 = getelementptr inbounds %struct.xpvnv, ptr %1764, i64 0, i32 5
  %1766 = load double, ptr %1765, align 8, !tbaa !55
  br label %1769

1767:                                             ; preds = %1755
  %1768 = call double @Perl_sv_2nv_flags(ptr noundef %1758, i32 noundef 2) #11
  br label %1769

1769:                                             ; preds = %1767, %1763
  %1770 = phi double [ %1766, %1763 ], [ %1768, %1767 ]
  %1771 = fcmp ogt double %1770, 0x47EFFFFFE0000000
  %1772 = fcmp olt double %1770, 0xC7EFFFFFE0000000
  %1773 = select i1 %1772, double 0xFFF0000000000000, double %1770
  %1774 = select i1 %1771, double 0x7FF0000000000000, double %1773
  %1775 = fptrunc double %1774 to float
  store float %1775, ptr %15, align 4, !tbaa !156
  br i1 %268, label %1812, label %1776

1776:                                             ; preds = %1769
  br i1 %183, label %1777, label %1794

1777:                                             ; preds = %1776, %1791
  %1778 = phi ptr [ %1780, %1791 ], [ %265, %1776 ]
  %1779 = phi ptr [ %1792, %1791 ], [ %1747, %1776 ]
  %1780 = getelementptr inbounds i8, ptr %1778, i64 -1
  %1781 = load i8, ptr %1780, align 1, !tbaa !55
  %1782 = icmp sgt i8 %1781, -1
  br i1 %1782, label %1783, label %1785

1783:                                             ; preds = %1777
  %1784 = getelementptr inbounds i8, ptr %1779, i64 1
  store i8 %1781, ptr %1779, align 1, !tbaa !55
  br label %1791

1785:                                             ; preds = %1777
  %1786 = lshr i8 %1781, 6
  %1787 = or disjoint i8 %1786, -64
  %1788 = getelementptr inbounds i8, ptr %1779, i64 1
  store i8 %1787, ptr %1779, align 1, !tbaa !55
  %1789 = and i8 %1781, -65
  %1790 = getelementptr inbounds i8, ptr %1779, i64 2
  store i8 %1789, ptr %1788, align 1, !tbaa !55
  br label %1791

1791:                                             ; preds = %1785, %1783
  %1792 = phi ptr [ %1784, %1783 ], [ %1790, %1785 ]
  %1793 = icmp ugt ptr %1780, %15
  br i1 %1793, label %1777, label %1828, !llvm.loop !209

1794:                                             ; preds = %1776, %1808
  %1795 = phi i64 [ %1810, %1808 ], [ 0, %1776 ]
  %1796 = phi ptr [ %1809, %1808 ], [ %1747, %1776 ]
  %1797 = getelementptr inbounds i8, ptr %15, i64 %1795
  %1798 = load i8, ptr %1797, align 1, !tbaa !55
  %1799 = icmp sgt i8 %1798, -1
  br i1 %1799, label %1800, label %1802

1800:                                             ; preds = %1794
  %1801 = getelementptr inbounds i8, ptr %1796, i64 1
  store i8 %1798, ptr %1796, align 1, !tbaa !55
  br label %1808

1802:                                             ; preds = %1794
  %1803 = lshr i8 %1798, 6
  %1804 = or disjoint i8 %1803, -64
  %1805 = getelementptr inbounds i8, ptr %1796, i64 1
  store i8 %1804, ptr %1796, align 1, !tbaa !55
  %1806 = and i8 %1798, -65
  %1807 = getelementptr inbounds i8, ptr %1796, i64 2
  store i8 %1806, ptr %1805, align 1, !tbaa !55
  br label %1808

1808:                                             ; preds = %1802, %1800
  %1809 = phi ptr [ %1801, %1800 ], [ %1807, %1802 ]
  %1810 = add nuw nsw i64 %1795, 1
  %1811 = icmp eq i64 %1810, 4
  br i1 %1811, label %1828, label %1794, !llvm.loop !207

1812:                                             ; preds = %1769
  br i1 %183, label %1813, label %1824

1813:                                             ; preds = %1812
  %1814 = getelementptr inbounds i8, ptr %1747, i64 4
  br label %1815

1815:                                             ; preds = %1813, %1815
  %1816 = phi i64 [ 4, %1813 ], [ %1819, %1815 ]
  %1817 = phi ptr [ %1814, %1813 ], [ %1822, %1815 ]
  %1818 = phi ptr [ %15, %1813 ], [ %1820, %1815 ]
  %1819 = add nsw i64 %1816, -1
  %1820 = getelementptr inbounds i8, ptr %1818, i64 1
  %1821 = load i8, ptr %1818, align 1, !tbaa !55
  %1822 = getelementptr inbounds i8, ptr %1817, i64 -1
  store i8 %1821, ptr %1822, align 1, !tbaa !55
  %1823 = icmp eq i64 %1819, 0
  br i1 %1823, label %1826, label %1815, !llvm.loop !132

1824:                                             ; preds = %1812
  %1825 = load i32, ptr %15, align 4
  store i32 %1825, ptr %1747, align 1
  br label %1826

1826:                                             ; preds = %1815, %1824
  %1827 = getelementptr inbounds i8, ptr %1747, i64 4
  br label %1828

1828:                                             ; preds = %1808, %1791, %1826
  %1829 = phi ptr [ %1827, %1826 ], [ %1792, %1791 ], [ %1809, %1808 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #11
  %1830 = icmp sgt i32 %1744, 1
  br i1 %1830, label %1743, label %3930, !llvm.loop !210

1831:                                             ; preds = %257, %1911
  %1832 = phi i32 [ %97, %257 ], [ %1836, %1911 ]
  %1833 = phi ptr [ %77, %257 ], [ %1845, %1911 ]
  %1834 = phi i32 [ %78, %257 ], [ %1844, %1911 ]
  %1835 = phi ptr [ %129, %257 ], [ %1912, %1911 ]
  %1836 = add nsw i32 %1832, -1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #11
  br i1 %259, label %1837, label %1843

1837:                                             ; preds = %1831
  %1838 = icmp sgt i32 %1834, 0
  br i1 %1838, label %1839, label %1843

1839:                                             ; preds = %1837
  %1840 = add nsw i32 %1834, -1
  %1841 = getelementptr inbounds ptr, ptr %1833, i64 1
  %1842 = load ptr, ptr %1833, align 8, !tbaa !76
  br label %1843

1843:                                             ; preds = %1831, %1839, %1837
  %1844 = phi i32 [ %1840, %1839 ], [ %1834, %1837 ], [ %1834, %1831 ]
  %1845 = phi ptr [ %1841, %1839 ], [ %1833, %1837 ], [ %1833, %1831 ]
  %1846 = phi ptr [ %1842, %1839 ], [ @PL_sv_no, %1837 ], [ %181, %1831 ]
  %1847 = getelementptr inbounds %struct.sv, ptr %1846, i64 0, i32 2
  %1848 = load i32, ptr %1847, align 4, !tbaa !111
  %1849 = and i32 %1848, 2097664
  %1850 = icmp eq i32 %1849, 512
  br i1 %1850, label %1851, label %1855

1851:                                             ; preds = %1843
  %1852 = load ptr, ptr %1846, align 8, !tbaa !119
  %1853 = getelementptr inbounds %struct.xpvnv, ptr %1852, i64 0, i32 5
  %1854 = load double, ptr %1853, align 8, !tbaa !55
  br label %1857

1855:                                             ; preds = %1843
  %1856 = call double @Perl_sv_2nv_flags(ptr noundef %1846, i32 noundef 2) #11
  br label %1857

1857:                                             ; preds = %1855, %1851
  %1858 = phi double [ %1854, %1851 ], [ %1856, %1855 ]
  store double %1858, ptr %16, align 8, !tbaa !159
  br i1 %261, label %1895, label %1859

1859:                                             ; preds = %1857
  br i1 %183, label %1860, label %1877

1860:                                             ; preds = %1859, %1874
  %1861 = phi ptr [ %1863, %1874 ], [ %258, %1859 ]
  %1862 = phi ptr [ %1875, %1874 ], [ %1835, %1859 ]
  %1863 = getelementptr inbounds i8, ptr %1861, i64 -1
  %1864 = load i8, ptr %1863, align 1, !tbaa !55
  %1865 = icmp sgt i8 %1864, -1
  br i1 %1865, label %1866, label %1868

1866:                                             ; preds = %1860
  %1867 = getelementptr inbounds i8, ptr %1862, i64 1
  store i8 %1864, ptr %1862, align 1, !tbaa !55
  br label %1874

1868:                                             ; preds = %1860
  %1869 = lshr i8 %1864, 6
  %1870 = or disjoint i8 %1869, -64
  %1871 = getelementptr inbounds i8, ptr %1862, i64 1
  store i8 %1870, ptr %1862, align 1, !tbaa !55
  %1872 = and i8 %1864, -65
  %1873 = getelementptr inbounds i8, ptr %1862, i64 2
  store i8 %1872, ptr %1871, align 1, !tbaa !55
  br label %1874

1874:                                             ; preds = %1868, %1866
  %1875 = phi ptr [ %1867, %1866 ], [ %1873, %1868 ]
  %1876 = icmp ugt ptr %1863, %16
  br i1 %1876, label %1860, label %1911, !llvm.loop !209

1877:                                             ; preds = %1859, %1891
  %1878 = phi i64 [ %1893, %1891 ], [ 0, %1859 ]
  %1879 = phi ptr [ %1892, %1891 ], [ %1835, %1859 ]
  %1880 = getelementptr inbounds i8, ptr %16, i64 %1878
  %1881 = load i8, ptr %1880, align 1, !tbaa !55
  %1882 = icmp sgt i8 %1881, -1
  br i1 %1882, label %1883, label %1885

1883:                                             ; preds = %1877
  %1884 = getelementptr inbounds i8, ptr %1879, i64 1
  store i8 %1881, ptr %1879, align 1, !tbaa !55
  br label %1891

1885:                                             ; preds = %1877
  %1886 = lshr i8 %1881, 6
  %1887 = or disjoint i8 %1886, -64
  %1888 = getelementptr inbounds i8, ptr %1879, i64 1
  store i8 %1887, ptr %1879, align 1, !tbaa !55
  %1889 = and i8 %1881, -65
  %1890 = getelementptr inbounds i8, ptr %1879, i64 2
  store i8 %1889, ptr %1888, align 1, !tbaa !55
  br label %1891

1891:                                             ; preds = %1885, %1883
  %1892 = phi ptr [ %1884, %1883 ], [ %1890, %1885 ]
  %1893 = add nuw nsw i64 %1878, 1
  %1894 = icmp eq i64 %1893, 8
  br i1 %1894, label %1911, label %1877, !llvm.loop !207

1895:                                             ; preds = %1857
  br i1 %183, label %1896, label %1907

1896:                                             ; preds = %1895
  %1897 = getelementptr inbounds i8, ptr %1835, i64 8
  br label %1898

1898:                                             ; preds = %1896, %1898
  %1899 = phi i64 [ 8, %1896 ], [ %1902, %1898 ]
  %1900 = phi ptr [ %1897, %1896 ], [ %1905, %1898 ]
  %1901 = phi ptr [ %16, %1896 ], [ %1903, %1898 ]
  %1902 = add nsw i64 %1899, -1
  %1903 = getelementptr inbounds i8, ptr %1901, i64 1
  %1904 = load i8, ptr %1901, align 1, !tbaa !55
  %1905 = getelementptr inbounds i8, ptr %1900, i64 -1
  store i8 %1904, ptr %1905, align 1, !tbaa !55
  %1906 = icmp eq i64 %1902, 0
  br i1 %1906, label %1909, label %1898, !llvm.loop !132

1907:                                             ; preds = %1895
  %1908 = load i64, ptr %16, align 8
  store i64 %1908, ptr %1835, align 1
  br label %1909

1909:                                             ; preds = %1898, %1907
  %1910 = getelementptr inbounds i8, ptr %1835, i64 8
  br label %1911

1911:                                             ; preds = %1891, %1874, %1909
  %1912 = phi ptr [ %1910, %1909 ], [ %1875, %1874 ], [ %1892, %1891 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #11
  %1913 = icmp sgt i32 %1832, 1
  br i1 %1913, label %1831, label %3930, !llvm.loop !211

1914:                                             ; preds = %180
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #11
  store i64 0, ptr %17, align 8
  %1915 = icmp sgt i32 %97, 0
  br i1 %1915, label %1916, label %1993

1916:                                             ; preds = %1914
  %1917 = getelementptr inbounds i8, ptr %17, i64 8
  %1918 = icmp eq ptr %181, null
  %1919 = and i8 %79, 1
  %1920 = icmp eq i8 %1919, 0
  br label %1921

1921:                                             ; preds = %1916, %1990
  %1922 = phi i32 [ %97, %1916 ], [ %1926, %1990 ]
  %1923 = phi ptr [ %77, %1916 ], [ %1935, %1990 ]
  %1924 = phi i32 [ %78, %1916 ], [ %1934, %1990 ]
  %1925 = phi ptr [ %129, %1916 ], [ %1991, %1990 ]
  %1926 = add nsw i32 %1922, -1
  br i1 %1918, label %1927, label %1933

1927:                                             ; preds = %1921
  %1928 = icmp sgt i32 %1924, 0
  br i1 %1928, label %1929, label %1933

1929:                                             ; preds = %1927
  %1930 = add nsw i32 %1924, -1
  %1931 = getelementptr inbounds ptr, ptr %1923, i64 1
  %1932 = load ptr, ptr %1923, align 8, !tbaa !76
  br label %1933

1933:                                             ; preds = %1921, %1929, %1927
  %1934 = phi i32 [ %1930, %1929 ], [ %1924, %1927 ], [ %1924, %1921 ]
  %1935 = phi ptr [ %1931, %1929 ], [ %1923, %1927 ], [ %1923, %1921 ]
  %1936 = phi ptr [ %1932, %1929 ], [ @PL_sv_no, %1927 ], [ %181, %1921 ]
  %1937 = call double @Perl_sv_2nv_flags(ptr noundef %1936, i32 noundef 2) #11
  store double %1937, ptr %17, align 8, !tbaa !55
  br i1 %1920, label %1974, label %1938

1938:                                             ; preds = %1933
  br i1 %183, label %1939, label %1956

1939:                                             ; preds = %1938, %1953
  %1940 = phi ptr [ %1942, %1953 ], [ %1917, %1938 ]
  %1941 = phi ptr [ %1954, %1953 ], [ %1925, %1938 ]
  %1942 = getelementptr inbounds i8, ptr %1940, i64 -1
  %1943 = load i8, ptr %1942, align 1, !tbaa !55
  %1944 = icmp sgt i8 %1943, -1
  br i1 %1944, label %1945, label %1947

1945:                                             ; preds = %1939
  %1946 = getelementptr inbounds i8, ptr %1941, i64 1
  store i8 %1943, ptr %1941, align 1, !tbaa !55
  br label %1953

1947:                                             ; preds = %1939
  %1948 = lshr i8 %1943, 6
  %1949 = or disjoint i8 %1948, -64
  %1950 = getelementptr inbounds i8, ptr %1941, i64 1
  store i8 %1949, ptr %1941, align 1, !tbaa !55
  %1951 = and i8 %1943, -65
  %1952 = getelementptr inbounds i8, ptr %1941, i64 2
  store i8 %1951, ptr %1950, align 1, !tbaa !55
  br label %1953

1953:                                             ; preds = %1947, %1945
  %1954 = phi ptr [ %1946, %1945 ], [ %1952, %1947 ]
  %1955 = icmp ugt ptr %1942, %17
  br i1 %1955, label %1939, label %1990, !llvm.loop !209

1956:                                             ; preds = %1938, %1970
  %1957 = phi i64 [ %1972, %1970 ], [ 0, %1938 ]
  %1958 = phi ptr [ %1971, %1970 ], [ %1925, %1938 ]
  %1959 = getelementptr inbounds i8, ptr %17, i64 %1957
  %1960 = load i8, ptr %1959, align 1, !tbaa !55
  %1961 = icmp sgt i8 %1960, -1
  br i1 %1961, label %1962, label %1964

1962:                                             ; preds = %1956
  %1963 = getelementptr inbounds i8, ptr %1958, i64 1
  store i8 %1960, ptr %1958, align 1, !tbaa !55
  br label %1970

1964:                                             ; preds = %1956
  %1965 = lshr i8 %1960, 6
  %1966 = or disjoint i8 %1965, -64
  %1967 = getelementptr inbounds i8, ptr %1958, i64 1
  store i8 %1966, ptr %1958, align 1, !tbaa !55
  %1968 = and i8 %1960, -65
  %1969 = getelementptr inbounds i8, ptr %1958, i64 2
  store i8 %1968, ptr %1967, align 1, !tbaa !55
  br label %1970

1970:                                             ; preds = %1964, %1962
  %1971 = phi ptr [ %1963, %1962 ], [ %1969, %1964 ]
  %1972 = add nuw nsw i64 %1957, 1
  %1973 = icmp eq i64 %1972, 8
  br i1 %1973, label %1990, label %1956, !llvm.loop !207

1974:                                             ; preds = %1933
  br i1 %183, label %1975, label %1986

1975:                                             ; preds = %1974
  %1976 = getelementptr inbounds i8, ptr %1925, i64 8
  br label %1977

1977:                                             ; preds = %1975, %1977
  %1978 = phi i64 [ 8, %1975 ], [ %1981, %1977 ]
  %1979 = phi ptr [ %1976, %1975 ], [ %1984, %1977 ]
  %1980 = phi ptr [ %17, %1975 ], [ %1982, %1977 ]
  %1981 = add nsw i64 %1978, -1
  %1982 = getelementptr inbounds i8, ptr %1980, i64 1
  %1983 = load i8, ptr %1980, align 1, !tbaa !55
  %1984 = getelementptr inbounds i8, ptr %1979, i64 -1
  store i8 %1983, ptr %1984, align 1, !tbaa !55
  %1985 = icmp eq i64 %1981, 0
  br i1 %1985, label %1988, label %1977, !llvm.loop !132

1986:                                             ; preds = %1974
  %1987 = load i64, ptr %17, align 8
  store i64 %1987, ptr %1925, align 1
  br label %1988

1988:                                             ; preds = %1977, %1986
  %1989 = getelementptr inbounds i8, ptr %1925, i64 8
  br label %1990

1990:                                             ; preds = %1970, %1953, %1988
  %1991 = phi ptr [ %1989, %1988 ], [ %1954, %1953 ], [ %1971, %1970 ]
  %1992 = icmp sgt i32 %1922, 1
  br i1 %1992, label %1921, label %1993, !llvm.loop !212

1993:                                             ; preds = %1990, %1914
  %1994 = phi ptr [ %129, %1914 ], [ %1991, %1990 ]
  %1995 = phi i32 [ %78, %1914 ], [ %1934, %1990 ]
  %1996 = phi ptr [ %77, %1914 ], [ %1935, %1990 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #11
  br label %3930

1997:                                             ; preds = %180, %180
  %1998 = icmp sgt i32 %97, 0
  br i1 %1998, label %1999, label %3930

1999:                                             ; preds = %1997
  %2000 = icmp eq ptr %181, null
  %2001 = and i8 %79, 1
  %2002 = icmp eq i8 %2001, 0
  br label %2003

2003:                                             ; preds = %1999, %2054
  %2004 = phi i32 [ %97, %1999 ], [ %2008, %2054 ]
  %2005 = phi ptr [ %77, %1999 ], [ %2017, %2054 ]
  %2006 = phi i32 [ %78, %1999 ], [ %2016, %2054 ]
  %2007 = phi ptr [ %129, %1999 ], [ %2055, %2054 ]
  %2008 = add nsw i32 %2004, -1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %18) #11
  br i1 %2000, label %2009, label %2015

2009:                                             ; preds = %2003
  %2010 = icmp sgt i32 %2006, 0
  br i1 %2010, label %2011, label %2015

2011:                                             ; preds = %2009
  %2012 = add nsw i32 %2006, -1
  %2013 = getelementptr inbounds ptr, ptr %2005, i64 1
  %2014 = load ptr, ptr %2005, align 8, !tbaa !76
  br label %2015

2015:                                             ; preds = %2003, %2011, %2009
  %2016 = phi i32 [ %2012, %2011 ], [ %2006, %2009 ], [ %2006, %2003 ]
  %2017 = phi ptr [ %2013, %2011 ], [ %2005, %2009 ], [ %2005, %2003 ]
  %2018 = phi ptr [ %2014, %2011 ], [ @PL_sv_no, %2009 ], [ %181, %2003 ]
  %2019 = call fastcc ptr @S_sv_check_infnan(ptr noundef %2018, i32 noundef %80)
  %2020 = getelementptr inbounds %struct.sv, ptr %2019, i64 0, i32 2
  %2021 = load i32, ptr %2020, align 4, !tbaa !111
  %2022 = and i32 %2021, 256
  %2023 = icmp eq i32 %2022, 0
  br i1 %2023, label %2028, label %2024

2024:                                             ; preds = %2015
  %2025 = load ptr, ptr %2019, align 8, !tbaa !119
  %2026 = getelementptr inbounds %struct.xpviv, ptr %2025, i64 0, i32 4
  %2027 = load i64, ptr %2026, align 8, !tbaa !55
  br label %2030

2028:                                             ; preds = %2015
  %2029 = call i64 @Perl_sv_2iv_flags(ptr noundef %2019, i32 noundef 0) #11
  br label %2030

2030:                                             ; preds = %2028, %2024
  %2031 = phi i64 [ %2027, %2024 ], [ %2029, %2028 ]
  %2032 = trunc i64 %2031 to i16
  %2033 = call i16 @llvm.bswap.i16(i16 %2032)
  store i16 %2033, ptr %18, align 2, !tbaa !133
  br i1 %2002, label %2052, label %2034

2034:                                             ; preds = %2030, %2048
  %2035 = phi i64 [ %2050, %2048 ], [ 0, %2030 ]
  %2036 = phi ptr [ %2049, %2048 ], [ %2007, %2030 ]
  %2037 = getelementptr inbounds i8, ptr %18, i64 %2035
  %2038 = load i8, ptr %2037, align 1, !tbaa !55
  %2039 = icmp sgt i8 %2038, -1
  br i1 %2039, label %2040, label %2042

2040:                                             ; preds = %2034
  %2041 = getelementptr inbounds i8, ptr %2036, i64 1
  store i8 %2038, ptr %2036, align 1, !tbaa !55
  br label %2048

2042:                                             ; preds = %2034
  %2043 = lshr i8 %2038, 6
  %2044 = or disjoint i8 %2043, -64
  %2045 = getelementptr inbounds i8, ptr %2036, i64 1
  store i8 %2044, ptr %2036, align 1, !tbaa !55
  %2046 = and i8 %2038, -65
  %2047 = getelementptr inbounds i8, ptr %2036, i64 2
  store i8 %2046, ptr %2045, align 1, !tbaa !55
  br label %2048

2048:                                             ; preds = %2042, %2040
  %2049 = phi ptr [ %2041, %2040 ], [ %2047, %2042 ]
  %2050 = add nuw nsw i64 %2035, 1
  %2051 = icmp eq i64 %2035, 0
  br i1 %2051, label %2034, label %2054, !llvm.loop !207

2052:                                             ; preds = %2030
  store i16 %2033, ptr %2007, align 1
  %2053 = getelementptr inbounds i8, ptr %2007, i64 2
  br label %2054

2054:                                             ; preds = %2048, %2052
  %2055 = phi ptr [ %2053, %2052 ], [ %2049, %2048 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #11
  %2056 = icmp sgt i32 %2004, 1
  br i1 %2056, label %2003, label %3930, !llvm.loop !213

2057:                                             ; preds = %180, %180
  %2058 = icmp sgt i32 %97, 0
  br i1 %2058, label %2059, label %3930

2059:                                             ; preds = %2057
  %2060 = icmp eq ptr %181, null
  %2061 = and i8 %79, 1
  %2062 = icmp eq i8 %2061, 0
  br label %2063

2063:                                             ; preds = %2059, %2113
  %2064 = phi i32 [ %97, %2059 ], [ %2068, %2113 ]
  %2065 = phi ptr [ %77, %2059 ], [ %2077, %2113 ]
  %2066 = phi i32 [ %78, %2059 ], [ %2076, %2113 ]
  %2067 = phi ptr [ %129, %2059 ], [ %2114, %2113 ]
  %2068 = add nsw i32 %2064, -1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %19) #11
  br i1 %2060, label %2069, label %2075

2069:                                             ; preds = %2063
  %2070 = icmp sgt i32 %2066, 0
  br i1 %2070, label %2071, label %2075

2071:                                             ; preds = %2069
  %2072 = add nsw i32 %2066, -1
  %2073 = getelementptr inbounds ptr, ptr %2065, i64 1
  %2074 = load ptr, ptr %2065, align 8, !tbaa !76
  br label %2075

2075:                                             ; preds = %2063, %2071, %2069
  %2076 = phi i32 [ %2072, %2071 ], [ %2066, %2069 ], [ %2066, %2063 ]
  %2077 = phi ptr [ %2073, %2071 ], [ %2065, %2069 ], [ %2065, %2063 ]
  %2078 = phi ptr [ %2074, %2071 ], [ @PL_sv_no, %2069 ], [ %181, %2063 ]
  %2079 = call fastcc ptr @S_sv_check_infnan(ptr noundef %2078, i32 noundef %80)
  %2080 = getelementptr inbounds %struct.sv, ptr %2079, i64 0, i32 2
  %2081 = load i32, ptr %2080, align 4, !tbaa !111
  %2082 = and i32 %2081, 256
  %2083 = icmp eq i32 %2082, 0
  br i1 %2083, label %2088, label %2084

2084:                                             ; preds = %2075
  %2085 = load ptr, ptr %2079, align 8, !tbaa !119
  %2086 = getelementptr inbounds %struct.xpviv, ptr %2085, i64 0, i32 4
  %2087 = load i64, ptr %2086, align 8, !tbaa !55
  br label %2090

2088:                                             ; preds = %2075
  %2089 = call i64 @Perl_sv_2iv_flags(ptr noundef %2079, i32 noundef 0) #11
  br label %2090

2090:                                             ; preds = %2088, %2084
  %2091 = phi i64 [ %2087, %2084 ], [ %2089, %2088 ]
  %2092 = trunc i64 %2091 to i16
  store i16 %2092, ptr %19, align 2, !tbaa !133
  br i1 %2062, label %2111, label %2093

2093:                                             ; preds = %2090, %2107
  %2094 = phi i64 [ %2109, %2107 ], [ 0, %2090 ]
  %2095 = phi ptr [ %2108, %2107 ], [ %2067, %2090 ]
  %2096 = getelementptr inbounds i8, ptr %19, i64 %2094
  %2097 = load i8, ptr %2096, align 1, !tbaa !55
  %2098 = icmp sgt i8 %2097, -1
  br i1 %2098, label %2099, label %2101

2099:                                             ; preds = %2093
  %2100 = getelementptr inbounds i8, ptr %2095, i64 1
  store i8 %2097, ptr %2095, align 1, !tbaa !55
  br label %2107

2101:                                             ; preds = %2093
  %2102 = lshr i8 %2097, 6
  %2103 = or disjoint i8 %2102, -64
  %2104 = getelementptr inbounds i8, ptr %2095, i64 1
  store i8 %2103, ptr %2095, align 1, !tbaa !55
  %2105 = and i8 %2097, -65
  %2106 = getelementptr inbounds i8, ptr %2095, i64 2
  store i8 %2105, ptr %2104, align 1, !tbaa !55
  br label %2107

2107:                                             ; preds = %2101, %2099
  %2108 = phi ptr [ %2100, %2099 ], [ %2106, %2101 ]
  %2109 = add nuw nsw i64 %2094, 1
  %2110 = icmp eq i64 %2094, 0
  br i1 %2110, label %2093, label %2113, !llvm.loop !207

2111:                                             ; preds = %2090
  store i16 %2092, ptr %2067, align 1
  %2112 = getelementptr inbounds i8, ptr %2067, i64 2
  br label %2113

2113:                                             ; preds = %2107, %2111
  %2114 = phi ptr [ %2112, %2111 ], [ %2108, %2107 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %19) #11
  %2115 = icmp sgt i32 %2064, 1
  br i1 %2115, label %2063, label %3930, !llvm.loop !214

2116:                                             ; preds = %180, %180
  %2117 = icmp sgt i32 %97, 0
  br i1 %2117, label %2118, label %3930

2118:                                             ; preds = %2116
  %2119 = getelementptr inbounds i8, ptr %20, i64 2
  %2120 = icmp eq ptr %181, null
  %2121 = and i8 %79, 1
  %2122 = icmp eq i8 %2121, 0
  br label %2123

2123:                                             ; preds = %2118, %2204
  %2124 = phi i32 [ %97, %2118 ], [ %2128, %2204 ]
  %2125 = phi ptr [ %77, %2118 ], [ %2137, %2204 ]
  %2126 = phi i32 [ %78, %2118 ], [ %2136, %2204 ]
  %2127 = phi ptr [ %129, %2118 ], [ %2205, %2204 ]
  %2128 = add nsw i32 %2124, -1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %20) #11
  br i1 %2120, label %2129, label %2135

2129:                                             ; preds = %2123
  %2130 = icmp sgt i32 %2126, 0
  br i1 %2130, label %2131, label %2135

2131:                                             ; preds = %2129
  %2132 = add nsw i32 %2126, -1
  %2133 = getelementptr inbounds ptr, ptr %2125, i64 1
  %2134 = load ptr, ptr %2125, align 8, !tbaa !76
  br label %2135

2135:                                             ; preds = %2123, %2131, %2129
  %2136 = phi i32 [ %2132, %2131 ], [ %2126, %2129 ], [ %2126, %2123 ]
  %2137 = phi ptr [ %2133, %2131 ], [ %2125, %2129 ], [ %2125, %2123 ]
  %2138 = phi ptr [ %2134, %2131 ], [ @PL_sv_no, %2129 ], [ %181, %2123 ]
  %2139 = call fastcc ptr @S_sv_check_infnan(ptr noundef %2138, i32 noundef %80)
  %2140 = getelementptr inbounds %struct.sv, ptr %2139, i64 0, i32 2
  %2141 = load i32, ptr %2140, align 4, !tbaa !111
  %2142 = and i32 %2141, 256
  %2143 = icmp eq i32 %2142, 0
  br i1 %2143, label %2148, label %2144

2144:                                             ; preds = %2135
  %2145 = load ptr, ptr %2139, align 8, !tbaa !119
  %2146 = getelementptr inbounds %struct.xpvuv, ptr %2145, i64 0, i32 4
  %2147 = load i64, ptr %2146, align 8, !tbaa !55
  br label %2150

2148:                                             ; preds = %2135
  %2149 = call i64 @Perl_sv_2uv_flags(ptr noundef %2139, i32 noundef 0) #11
  br label %2150

2150:                                             ; preds = %2148, %2144
  %2151 = phi i64 [ %2147, %2144 ], [ %2149, %2148 ]
  %2152 = trunc i64 %2151 to i16
  store i16 %2152, ptr %20, align 2, !tbaa !133
  br i1 %2122, label %2189, label %2153

2153:                                             ; preds = %2150
  br i1 %183, label %2154, label %2171

2154:                                             ; preds = %2153, %2168
  %2155 = phi ptr [ %2157, %2168 ], [ %2119, %2153 ]
  %2156 = phi ptr [ %2169, %2168 ], [ %2127, %2153 ]
  %2157 = getelementptr inbounds i8, ptr %2155, i64 -1
  %2158 = load i8, ptr %2157, align 1, !tbaa !55
  %2159 = icmp sgt i8 %2158, -1
  br i1 %2159, label %2160, label %2162

2160:                                             ; preds = %2154
  %2161 = getelementptr inbounds i8, ptr %2156, i64 1
  store i8 %2158, ptr %2156, align 1, !tbaa !55
  br label %2168

2162:                                             ; preds = %2154
  %2163 = lshr i8 %2158, 6
  %2164 = or disjoint i8 %2163, -64
  %2165 = getelementptr inbounds i8, ptr %2156, i64 1
  store i8 %2164, ptr %2156, align 1, !tbaa !55
  %2166 = and i8 %2158, -65
  %2167 = getelementptr inbounds i8, ptr %2156, i64 2
  store i8 %2166, ptr %2165, align 1, !tbaa !55
  br label %2168

2168:                                             ; preds = %2162, %2160
  %2169 = phi ptr [ %2161, %2160 ], [ %2167, %2162 ]
  %2170 = icmp ugt ptr %2157, %20
  br i1 %2170, label %2154, label %2204, !llvm.loop !209

2171:                                             ; preds = %2153, %2185
  %2172 = phi i64 [ %2187, %2185 ], [ 0, %2153 ]
  %2173 = phi ptr [ %2186, %2185 ], [ %2127, %2153 ]
  %2174 = getelementptr inbounds i8, ptr %20, i64 %2172
  %2175 = load i8, ptr %2174, align 1, !tbaa !55
  %2176 = icmp sgt i8 %2175, -1
  br i1 %2176, label %2177, label %2179

2177:                                             ; preds = %2171
  %2178 = getelementptr inbounds i8, ptr %2173, i64 1
  store i8 %2175, ptr %2173, align 1, !tbaa !55
  br label %2185

2179:                                             ; preds = %2171
  %2180 = lshr i8 %2175, 6
  %2181 = or disjoint i8 %2180, -64
  %2182 = getelementptr inbounds i8, ptr %2173, i64 1
  store i8 %2181, ptr %2173, align 1, !tbaa !55
  %2183 = and i8 %2175, -65
  %2184 = getelementptr inbounds i8, ptr %2173, i64 2
  store i8 %2183, ptr %2182, align 1, !tbaa !55
  br label %2185

2185:                                             ; preds = %2179, %2177
  %2186 = phi ptr [ %2178, %2177 ], [ %2184, %2179 ]
  %2187 = add nuw nsw i64 %2172, 1
  %2188 = icmp eq i64 %2172, 0
  br i1 %2188, label %2171, label %2204, !llvm.loop !207

2189:                                             ; preds = %2150
  br i1 %183, label %2190, label %2201

2190:                                             ; preds = %2189
  %2191 = getelementptr inbounds i8, ptr %2127, i64 2
  br label %2192

2192:                                             ; preds = %2190, %2192
  %2193 = phi i64 [ 2, %2190 ], [ %2196, %2192 ]
  %2194 = phi ptr [ %2191, %2190 ], [ %2199, %2192 ]
  %2195 = phi ptr [ %20, %2190 ], [ %2197, %2192 ]
  %2196 = add nsw i64 %2193, -1
  %2197 = getelementptr inbounds i8, ptr %2195, i64 1
  %2198 = load i8, ptr %2195, align 1, !tbaa !55
  %2199 = getelementptr inbounds i8, ptr %2194, i64 -1
  store i8 %2198, ptr %2199, align 1, !tbaa !55
  %2200 = icmp eq i64 %2196, 0
  br i1 %2200, label %2202, label %2192, !llvm.loop !132

2201:                                             ; preds = %2189
  store i16 %2152, ptr %2127, align 1
  br label %2202

2202:                                             ; preds = %2192, %2201
  %2203 = getelementptr inbounds i8, ptr %2127, i64 2
  br label %2204

2204:                                             ; preds = %2185, %2168, %2202
  %2205 = phi ptr [ %2203, %2202 ], [ %2169, %2168 ], [ %2186, %2185 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %20) #11
  %2206 = icmp sgt i32 %2124, 1
  br i1 %2206, label %2123, label %3930, !llvm.loop !215

2207:                                             ; preds = %180, %180
  %2208 = icmp sgt i32 %97, 0
  br i1 %2208, label %2209, label %3930, !prof !216

2209:                                             ; preds = %2207
  %2210 = icmp eq ptr %181, null
  %2211 = and i8 %79, 1
  %2212 = icmp eq i8 %2211, 0
  br label %2213

2213:                                             ; preds = %2209, %2296
  %2214 = phi i32 [ %97, %2209 ], [ %2218, %2296 ]
  %2215 = phi ptr [ %77, %2209 ], [ %2227, %2296 ]
  %2216 = phi i32 [ %78, %2209 ], [ %2226, %2296 ]
  %2217 = phi ptr [ %129, %2209 ], [ %2297, %2296 ]
  %2218 = add nsw i32 %2214, -1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %21) #11
  br i1 %2210, label %2219, label %2225, !prof !217

2219:                                             ; preds = %2213
  %2220 = icmp sgt i32 %2216, 0
  br i1 %2220, label %2221, label %2225, !prof !217

2221:                                             ; preds = %2219
  %2222 = add nsw i32 %2216, -1
  %2223 = getelementptr inbounds ptr, ptr %2215, i64 1
  %2224 = load ptr, ptr %2215, align 8, !tbaa !76
  br label %2225

2225:                                             ; preds = %2213, %2221, %2219
  %2226 = phi i32 [ %2222, %2221 ], [ %2216, %2219 ], [ %2216, %2213 ]
  %2227 = phi ptr [ %2223, %2221 ], [ %2215, %2219 ], [ %2215, %2213 ]
  %2228 = phi ptr [ %2224, %2221 ], [ @PL_sv_no, %2219 ], [ %181, %2213 ]
  %2229 = call fastcc ptr @S_sv_check_infnan(ptr noundef %2228, i32 noundef %80)
  %2230 = getelementptr inbounds %struct.sv, ptr %2229, i64 0, i32 2
  %2231 = load i32, ptr %2230, align 4, !tbaa !111
  %2232 = and i32 %2231, 256
  %2233 = icmp eq i32 %2232, 0
  br i1 %2233, label %2238, label %2234, !prof !218

2234:                                             ; preds = %2225
  %2235 = load ptr, ptr %2229, align 8, !tbaa !119
  %2236 = getelementptr inbounds %struct.xpviv, ptr %2235, i64 0, i32 4
  %2237 = load i64, ptr %2236, align 8, !tbaa !55
  br label %2240

2238:                                             ; preds = %2225
  %2239 = call i64 @Perl_sv_2iv_flags(ptr noundef %2229, i32 noundef 0) #11
  br label %2240

2240:                                             ; preds = %2238, %2234
  %2241 = phi i64 [ %2237, %2234 ], [ %2239, %2238 ]
  %2242 = trunc i64 %2241 to i16
  store i16 %2242, ptr %21, align 2, !tbaa !133
  br i1 %2212, label %2281, label %2243, !prof !217

2243:                                             ; preds = %2240
  br i1 %183, label %2244, label %2263

2244:                                             ; preds = %2243
  %2245 = getelementptr inbounds i8, ptr %21, i64 2
  br label %2246

2246:                                             ; preds = %2244, %2260
  %2247 = phi ptr [ %2249, %2260 ], [ %2245, %2244 ]
  %2248 = phi ptr [ %2261, %2260 ], [ %2217, %2244 ]
  %2249 = getelementptr inbounds i8, ptr %2247, i64 -1
  %2250 = load i8, ptr %2249, align 1, !tbaa !55
  %2251 = icmp sgt i8 %2250, -1
  br i1 %2251, label %2252, label %2254

2252:                                             ; preds = %2246
  %2253 = getelementptr inbounds i8, ptr %2248, i64 1
  store i8 %2250, ptr %2248, align 1, !tbaa !55
  br label %2260

2254:                                             ; preds = %2246
  %2255 = lshr i8 %2250, 6
  %2256 = or disjoint i8 %2255, -64
  %2257 = getelementptr inbounds i8, ptr %2248, i64 1
  store i8 %2256, ptr %2248, align 1, !tbaa !55
  %2258 = and i8 %2250, -65
  %2259 = getelementptr inbounds i8, ptr %2248, i64 2
  store i8 %2258, ptr %2257, align 1, !tbaa !55
  br label %2260

2260:                                             ; preds = %2254, %2252
  %2261 = phi ptr [ %2253, %2252 ], [ %2259, %2254 ]
  %2262 = icmp ugt ptr %2249, %21
  br i1 %2262, label %2246, label %2296, !llvm.loop !209

2263:                                             ; preds = %2243, %2277
  %2264 = phi i64 [ %2279, %2277 ], [ 0, %2243 ]
  %2265 = phi ptr [ %2278, %2277 ], [ %2217, %2243 ]
  %2266 = getelementptr inbounds i8, ptr %21, i64 %2264
  %2267 = load i8, ptr %2266, align 1, !tbaa !55
  %2268 = icmp sgt i8 %2267, -1
  br i1 %2268, label %2269, label %2271

2269:                                             ; preds = %2263
  %2270 = getelementptr inbounds i8, ptr %2265, i64 1
  store i8 %2267, ptr %2265, align 1, !tbaa !55
  br label %2277

2271:                                             ; preds = %2263
  %2272 = lshr i8 %2267, 6
  %2273 = or disjoint i8 %2272, -64
  %2274 = getelementptr inbounds i8, ptr %2265, i64 1
  store i8 %2273, ptr %2265, align 1, !tbaa !55
  %2275 = and i8 %2267, -65
  %2276 = getelementptr inbounds i8, ptr %2265, i64 2
  store i8 %2275, ptr %2274, align 1, !tbaa !55
  br label %2277

2277:                                             ; preds = %2271, %2269
  %2278 = phi ptr [ %2270, %2269 ], [ %2276, %2271 ]
  %2279 = add nuw nsw i64 %2264, 1
  %2280 = icmp eq i64 %2264, 0
  br i1 %2280, label %2263, label %2296, !llvm.loop !207

2281:                                             ; preds = %2240
  br i1 %183, label %2282, label %2293, !prof !219

2282:                                             ; preds = %2281
  %2283 = getelementptr inbounds i8, ptr %2217, i64 2
  br label %2284

2284:                                             ; preds = %2282, %2284
  %2285 = phi i64 [ 2, %2282 ], [ %2288, %2284 ]
  %2286 = phi ptr [ %2283, %2282 ], [ %2291, %2284 ]
  %2287 = phi ptr [ %21, %2282 ], [ %2289, %2284 ]
  %2288 = add nsw i64 %2285, -1
  %2289 = getelementptr inbounds i8, ptr %2287, i64 1
  %2290 = load i8, ptr %2287, align 1, !tbaa !55
  %2291 = getelementptr inbounds i8, ptr %2286, i64 -1
  store i8 %2290, ptr %2291, align 1, !tbaa !55
  %2292 = icmp eq i64 %2288, 0
  br i1 %2292, label %2294, label %2284, !llvm.loop !132

2293:                                             ; preds = %2281
  store i16 %2242, ptr %2217, align 1
  br label %2294

2294:                                             ; preds = %2284, %2293
  %2295 = getelementptr inbounds i8, ptr %2217, i64 2
  br label %2296

2296:                                             ; preds = %2277, %2260, %2294
  %2297 = phi ptr [ %2295, %2294 ], [ %2261, %2260 ], [ %2278, %2277 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %21) #11
  %2298 = icmp sgt i32 %2214, 1
  br i1 %2298, label %2213, label %3930, !prof !218, !llvm.loop !220

2299:                                             ; preds = %180, %180
  %2300 = icmp sgt i32 %97, 0
  br i1 %2300, label %2301, label %3930

2301:                                             ; preds = %2299
  %2302 = getelementptr inbounds i8, ptr %22, i64 4
  %2303 = icmp eq ptr %181, null
  %2304 = and i8 %79, 1
  %2305 = icmp eq i8 %2304, 0
  br label %2306

2306:                                             ; preds = %2301, %2387
  %2307 = phi i32 [ %97, %2301 ], [ %2311, %2387 ]
  %2308 = phi ptr [ %77, %2301 ], [ %2320, %2387 ]
  %2309 = phi i32 [ %78, %2301 ], [ %2319, %2387 ]
  %2310 = phi ptr [ %129, %2301 ], [ %2388, %2387 ]
  %2311 = add nsw i32 %2307, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %22) #11
  br i1 %2303, label %2312, label %2318

2312:                                             ; preds = %2306
  %2313 = icmp sgt i32 %2309, 0
  br i1 %2313, label %2314, label %2318

2314:                                             ; preds = %2312
  %2315 = add nsw i32 %2309, -1
  %2316 = getelementptr inbounds ptr, ptr %2308, i64 1
  %2317 = load ptr, ptr %2308, align 8, !tbaa !76
  br label %2318

2318:                                             ; preds = %2306, %2314, %2312
  %2319 = phi i32 [ %2315, %2314 ], [ %2309, %2312 ], [ %2309, %2306 ]
  %2320 = phi ptr [ %2316, %2314 ], [ %2308, %2312 ], [ %2308, %2306 ]
  %2321 = phi ptr [ %2317, %2314 ], [ @PL_sv_no, %2312 ], [ %181, %2306 ]
  %2322 = call fastcc ptr @S_sv_check_infnan(ptr noundef %2321, i32 noundef %80)
  %2323 = getelementptr inbounds %struct.sv, ptr %2322, i64 0, i32 2
  %2324 = load i32, ptr %2323, align 4, !tbaa !111
  %2325 = and i32 %2324, 256
  %2326 = icmp eq i32 %2325, 0
  br i1 %2326, label %2331, label %2327

2327:                                             ; preds = %2318
  %2328 = load ptr, ptr %2322, align 8, !tbaa !119
  %2329 = getelementptr inbounds %struct.xpvuv, ptr %2328, i64 0, i32 4
  %2330 = load i64, ptr %2329, align 8, !tbaa !55
  br label %2333

2331:                                             ; preds = %2318
  %2332 = call i64 @Perl_sv_2uv_flags(ptr noundef %2322, i32 noundef 0) #11
  br label %2333

2333:                                             ; preds = %2331, %2327
  %2334 = phi i64 [ %2330, %2327 ], [ %2332, %2331 ]
  %2335 = trunc i64 %2334 to i32
  store i32 %2335, ptr %22, align 4, !tbaa !92
  br i1 %2305, label %2372, label %2336

2336:                                             ; preds = %2333
  br i1 %183, label %2337, label %2354

2337:                                             ; preds = %2336, %2351
  %2338 = phi ptr [ %2340, %2351 ], [ %2302, %2336 ]
  %2339 = phi ptr [ %2352, %2351 ], [ %2310, %2336 ]
  %2340 = getelementptr inbounds i8, ptr %2338, i64 -1
  %2341 = load i8, ptr %2340, align 1, !tbaa !55
  %2342 = icmp sgt i8 %2341, -1
  br i1 %2342, label %2343, label %2345

2343:                                             ; preds = %2337
  %2344 = getelementptr inbounds i8, ptr %2339, i64 1
  store i8 %2341, ptr %2339, align 1, !tbaa !55
  br label %2351

2345:                                             ; preds = %2337
  %2346 = lshr i8 %2341, 6
  %2347 = or disjoint i8 %2346, -64
  %2348 = getelementptr inbounds i8, ptr %2339, i64 1
  store i8 %2347, ptr %2339, align 1, !tbaa !55
  %2349 = and i8 %2341, -65
  %2350 = getelementptr inbounds i8, ptr %2339, i64 2
  store i8 %2349, ptr %2348, align 1, !tbaa !55
  br label %2351

2351:                                             ; preds = %2345, %2343
  %2352 = phi ptr [ %2344, %2343 ], [ %2350, %2345 ]
  %2353 = icmp ugt ptr %2340, %22
  br i1 %2353, label %2337, label %2387, !llvm.loop !209

2354:                                             ; preds = %2336, %2368
  %2355 = phi i64 [ %2370, %2368 ], [ 0, %2336 ]
  %2356 = phi ptr [ %2369, %2368 ], [ %2310, %2336 ]
  %2357 = getelementptr inbounds i8, ptr %22, i64 %2355
  %2358 = load i8, ptr %2357, align 1, !tbaa !55
  %2359 = icmp sgt i8 %2358, -1
  br i1 %2359, label %2360, label %2362

2360:                                             ; preds = %2354
  %2361 = getelementptr inbounds i8, ptr %2356, i64 1
  store i8 %2358, ptr %2356, align 1, !tbaa !55
  br label %2368

2362:                                             ; preds = %2354
  %2363 = lshr i8 %2358, 6
  %2364 = or disjoint i8 %2363, -64
  %2365 = getelementptr inbounds i8, ptr %2356, i64 1
  store i8 %2364, ptr %2356, align 1, !tbaa !55
  %2366 = and i8 %2358, -65
  %2367 = getelementptr inbounds i8, ptr %2356, i64 2
  store i8 %2366, ptr %2365, align 1, !tbaa !55
  br label %2368

2368:                                             ; preds = %2362, %2360
  %2369 = phi ptr [ %2361, %2360 ], [ %2367, %2362 ]
  %2370 = add nuw nsw i64 %2355, 1
  %2371 = icmp eq i64 %2370, 4
  br i1 %2371, label %2387, label %2354, !llvm.loop !207

2372:                                             ; preds = %2333
  br i1 %183, label %2373, label %2384

2373:                                             ; preds = %2372
  %2374 = getelementptr inbounds i8, ptr %2310, i64 4
  br label %2375

2375:                                             ; preds = %2373, %2375
  %2376 = phi i64 [ 4, %2373 ], [ %2379, %2375 ]
  %2377 = phi ptr [ %2374, %2373 ], [ %2382, %2375 ]
  %2378 = phi ptr [ %22, %2373 ], [ %2380, %2375 ]
  %2379 = add nsw i64 %2376, -1
  %2380 = getelementptr inbounds i8, ptr %2378, i64 1
  %2381 = load i8, ptr %2378, align 1, !tbaa !55
  %2382 = getelementptr inbounds i8, ptr %2377, i64 -1
  store i8 %2381, ptr %2382, align 1, !tbaa !55
  %2383 = icmp eq i64 %2379, 0
  br i1 %2383, label %2385, label %2375, !llvm.loop !132

2384:                                             ; preds = %2372
  store i32 %2335, ptr %2310, align 1
  br label %2385

2385:                                             ; preds = %2375, %2384
  %2386 = getelementptr inbounds i8, ptr %2310, i64 4
  br label %2387

2387:                                             ; preds = %2368, %2351, %2385
  %2388 = phi ptr [ %2386, %2385 ], [ %2352, %2351 ], [ %2369, %2368 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %22) #11
  %2389 = icmp sgt i32 %2307, 1
  br i1 %2389, label %2306, label %3930, !llvm.loop !221

2390:                                             ; preds = %250, %2470
  %2391 = phi i32 [ %97, %250 ], [ %2395, %2470 ]
  %2392 = phi ptr [ %77, %250 ], [ %2404, %2470 ]
  %2393 = phi i32 [ %78, %250 ], [ %2403, %2470 ]
  %2394 = phi ptr [ %129, %250 ], [ %2471, %2470 ]
  %2395 = add nsw i32 %2391, -1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %23) #11
  br i1 %252, label %2396, label %2402

2396:                                             ; preds = %2390
  %2397 = icmp sgt i32 %2393, 0
  br i1 %2397, label %2398, label %2402

2398:                                             ; preds = %2396
  %2399 = add nsw i32 %2393, -1
  %2400 = getelementptr inbounds ptr, ptr %2392, i64 1
  %2401 = load ptr, ptr %2392, align 8, !tbaa !76
  br label %2402

2402:                                             ; preds = %2390, %2398, %2396
  %2403 = phi i32 [ %2399, %2398 ], [ %2393, %2396 ], [ %2393, %2390 ]
  %2404 = phi ptr [ %2400, %2398 ], [ %2392, %2396 ], [ %2392, %2390 ]
  %2405 = phi ptr [ %2401, %2398 ], [ @PL_sv_no, %2396 ], [ %181, %2390 ]
  %2406 = call fastcc ptr @S_sv_check_infnan(ptr noundef %2405, i32 noundef %80)
  %2407 = getelementptr inbounds %struct.sv, ptr %2406, i64 0, i32 2
  %2408 = load i32, ptr %2407, align 4, !tbaa !111
  %2409 = and i32 %2408, 256
  %2410 = icmp eq i32 %2409, 0
  br i1 %2410, label %2415, label %2411

2411:                                             ; preds = %2402
  %2412 = load ptr, ptr %2406, align 8, !tbaa !119
  %2413 = getelementptr inbounds %struct.xpviv, ptr %2412, i64 0, i32 4
  %2414 = load i64, ptr %2413, align 8, !tbaa !55
  br label %2417

2415:                                             ; preds = %2402
  %2416 = call i64 @Perl_sv_2iv_flags(ptr noundef %2406, i32 noundef 0) #11
  br label %2417

2417:                                             ; preds = %2415, %2411
  %2418 = phi i64 [ %2414, %2411 ], [ %2416, %2415 ]
  store i64 %2418, ptr %23, align 8, !tbaa !63
  br i1 %254, label %2455, label %2419

2419:                                             ; preds = %2417
  br i1 %183, label %2420, label %2437

2420:                                             ; preds = %2419, %2434
  %2421 = phi ptr [ %2423, %2434 ], [ %251, %2419 ]
  %2422 = phi ptr [ %2435, %2434 ], [ %2394, %2419 ]
  %2423 = getelementptr inbounds i8, ptr %2421, i64 -1
  %2424 = load i8, ptr %2423, align 1, !tbaa !55
  %2425 = icmp sgt i8 %2424, -1
  br i1 %2425, label %2426, label %2428

2426:                                             ; preds = %2420
  %2427 = getelementptr inbounds i8, ptr %2422, i64 1
  store i8 %2424, ptr %2422, align 1, !tbaa !55
  br label %2434

2428:                                             ; preds = %2420
  %2429 = lshr i8 %2424, 6
  %2430 = or disjoint i8 %2429, -64
  %2431 = getelementptr inbounds i8, ptr %2422, i64 1
  store i8 %2430, ptr %2422, align 1, !tbaa !55
  %2432 = and i8 %2424, -65
  %2433 = getelementptr inbounds i8, ptr %2422, i64 2
  store i8 %2432, ptr %2431, align 1, !tbaa !55
  br label %2434

2434:                                             ; preds = %2428, %2426
  %2435 = phi ptr [ %2427, %2426 ], [ %2433, %2428 ]
  %2436 = icmp ugt ptr %2423, %23
  br i1 %2436, label %2420, label %2470, !llvm.loop !209

2437:                                             ; preds = %2419, %2451
  %2438 = phi i64 [ %2453, %2451 ], [ 0, %2419 ]
  %2439 = phi ptr [ %2452, %2451 ], [ %2394, %2419 ]
  %2440 = getelementptr inbounds i8, ptr %23, i64 %2438
  %2441 = load i8, ptr %2440, align 1, !tbaa !55
  %2442 = icmp sgt i8 %2441, -1
  br i1 %2442, label %2443, label %2445

2443:                                             ; preds = %2437
  %2444 = getelementptr inbounds i8, ptr %2439, i64 1
  store i8 %2441, ptr %2439, align 1, !tbaa !55
  br label %2451

2445:                                             ; preds = %2437
  %2446 = lshr i8 %2441, 6
  %2447 = or disjoint i8 %2446, -64
  %2448 = getelementptr inbounds i8, ptr %2439, i64 1
  store i8 %2447, ptr %2439, align 1, !tbaa !55
  %2449 = and i8 %2441, -65
  %2450 = getelementptr inbounds i8, ptr %2439, i64 2
  store i8 %2449, ptr %2448, align 1, !tbaa !55
  br label %2451

2451:                                             ; preds = %2445, %2443
  %2452 = phi ptr [ %2444, %2443 ], [ %2450, %2445 ]
  %2453 = add nuw nsw i64 %2438, 1
  %2454 = icmp eq i64 %2453, 8
  br i1 %2454, label %2470, label %2437, !llvm.loop !207

2455:                                             ; preds = %2417
  br i1 %183, label %2456, label %2467

2456:                                             ; preds = %2455
  %2457 = getelementptr inbounds i8, ptr %2394, i64 8
  br label %2458

2458:                                             ; preds = %2456, %2458
  %2459 = phi i64 [ 8, %2456 ], [ %2462, %2458 ]
  %2460 = phi ptr [ %2457, %2456 ], [ %2465, %2458 ]
  %2461 = phi ptr [ %23, %2456 ], [ %2463, %2458 ]
  %2462 = add nsw i64 %2459, -1
  %2463 = getelementptr inbounds i8, ptr %2461, i64 1
  %2464 = load i8, ptr %2461, align 1, !tbaa !55
  %2465 = getelementptr inbounds i8, ptr %2460, i64 -1
  store i8 %2464, ptr %2465, align 1, !tbaa !55
  %2466 = icmp eq i64 %2462, 0
  br i1 %2466, label %2468, label %2458, !llvm.loop !132

2467:                                             ; preds = %2455
  store i64 %2418, ptr %2394, align 1
  br label %2468

2468:                                             ; preds = %2458, %2467
  %2469 = getelementptr inbounds i8, ptr %2394, i64 8
  br label %2470

2470:                                             ; preds = %2451, %2434, %2468
  %2471 = phi ptr [ %2469, %2468 ], [ %2435, %2434 ], [ %2452, %2451 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %23) #11
  %2472 = icmp sgt i32 %2391, 1
  br i1 %2472, label %2390, label %3930, !llvm.loop !222

2473:                                             ; preds = %243, %2553
  %2474 = phi i32 [ %97, %243 ], [ %2478, %2553 ]
  %2475 = phi ptr [ %77, %243 ], [ %2487, %2553 ]
  %2476 = phi i32 [ %78, %243 ], [ %2486, %2553 ]
  %2477 = phi ptr [ %129, %243 ], [ %2554, %2553 ]
  %2478 = add nsw i32 %2474, -1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %24) #11
  br i1 %245, label %2479, label %2485

2479:                                             ; preds = %2473
  %2480 = icmp sgt i32 %2476, 0
  br i1 %2480, label %2481, label %2485

2481:                                             ; preds = %2479
  %2482 = add nsw i32 %2476, -1
  %2483 = getelementptr inbounds ptr, ptr %2475, i64 1
  %2484 = load ptr, ptr %2475, align 8, !tbaa !76
  br label %2485

2485:                                             ; preds = %2473, %2481, %2479
  %2486 = phi i32 [ %2482, %2481 ], [ %2476, %2479 ], [ %2476, %2473 ]
  %2487 = phi ptr [ %2483, %2481 ], [ %2475, %2479 ], [ %2475, %2473 ]
  %2488 = phi ptr [ %2484, %2481 ], [ @PL_sv_no, %2479 ], [ %181, %2473 ]
  %2489 = call fastcc ptr @S_sv_check_infnan(ptr noundef %2488, i32 noundef %80)
  %2490 = getelementptr inbounds %struct.sv, ptr %2489, i64 0, i32 2
  %2491 = load i32, ptr %2490, align 4, !tbaa !111
  %2492 = and i32 %2491, 256
  %2493 = icmp eq i32 %2492, 0
  br i1 %2493, label %2498, label %2494

2494:                                             ; preds = %2485
  %2495 = load ptr, ptr %2489, align 8, !tbaa !119
  %2496 = getelementptr inbounds %struct.xpvuv, ptr %2495, i64 0, i32 4
  %2497 = load i64, ptr %2496, align 8, !tbaa !55
  br label %2500

2498:                                             ; preds = %2485
  %2499 = call i64 @Perl_sv_2uv_flags(ptr noundef %2489, i32 noundef 0) #11
  br label %2500

2500:                                             ; preds = %2498, %2494
  %2501 = phi i64 [ %2497, %2494 ], [ %2499, %2498 ]
  store i64 %2501, ptr %24, align 8, !tbaa !63
  br i1 %247, label %2538, label %2502

2502:                                             ; preds = %2500
  br i1 %183, label %2503, label %2520

2503:                                             ; preds = %2502, %2517
  %2504 = phi ptr [ %2506, %2517 ], [ %244, %2502 ]
  %2505 = phi ptr [ %2518, %2517 ], [ %2477, %2502 ]
  %2506 = getelementptr inbounds i8, ptr %2504, i64 -1
  %2507 = load i8, ptr %2506, align 1, !tbaa !55
  %2508 = icmp sgt i8 %2507, -1
  br i1 %2508, label %2509, label %2511

2509:                                             ; preds = %2503
  %2510 = getelementptr inbounds i8, ptr %2505, i64 1
  store i8 %2507, ptr %2505, align 1, !tbaa !55
  br label %2517

2511:                                             ; preds = %2503
  %2512 = lshr i8 %2507, 6
  %2513 = or disjoint i8 %2512, -64
  %2514 = getelementptr inbounds i8, ptr %2505, i64 1
  store i8 %2513, ptr %2505, align 1, !tbaa !55
  %2515 = and i8 %2507, -65
  %2516 = getelementptr inbounds i8, ptr %2505, i64 2
  store i8 %2515, ptr %2514, align 1, !tbaa !55
  br label %2517

2517:                                             ; preds = %2511, %2509
  %2518 = phi ptr [ %2510, %2509 ], [ %2516, %2511 ]
  %2519 = icmp ugt ptr %2506, %24
  br i1 %2519, label %2503, label %2553, !llvm.loop !209

2520:                                             ; preds = %2502, %2534
  %2521 = phi i64 [ %2536, %2534 ], [ 0, %2502 ]
  %2522 = phi ptr [ %2535, %2534 ], [ %2477, %2502 ]
  %2523 = getelementptr inbounds i8, ptr %24, i64 %2521
  %2524 = load i8, ptr %2523, align 1, !tbaa !55
  %2525 = icmp sgt i8 %2524, -1
  br i1 %2525, label %2526, label %2528

2526:                                             ; preds = %2520
  %2527 = getelementptr inbounds i8, ptr %2522, i64 1
  store i8 %2524, ptr %2522, align 1, !tbaa !55
  br label %2534

2528:                                             ; preds = %2520
  %2529 = lshr i8 %2524, 6
  %2530 = or disjoint i8 %2529, -64
  %2531 = getelementptr inbounds i8, ptr %2522, i64 1
  store i8 %2530, ptr %2522, align 1, !tbaa !55
  %2532 = and i8 %2524, -65
  %2533 = getelementptr inbounds i8, ptr %2522, i64 2
  store i8 %2532, ptr %2531, align 1, !tbaa !55
  br label %2534

2534:                                             ; preds = %2528, %2526
  %2535 = phi ptr [ %2527, %2526 ], [ %2533, %2528 ]
  %2536 = add nuw nsw i64 %2521, 1
  %2537 = icmp eq i64 %2536, 8
  br i1 %2537, label %2553, label %2520, !llvm.loop !207

2538:                                             ; preds = %2500
  br i1 %183, label %2539, label %2550

2539:                                             ; preds = %2538
  %2540 = getelementptr inbounds i8, ptr %2477, i64 8
  br label %2541

2541:                                             ; preds = %2539, %2541
  %2542 = phi i64 [ 8, %2539 ], [ %2545, %2541 ]
  %2543 = phi ptr [ %2540, %2539 ], [ %2548, %2541 ]
  %2544 = phi ptr [ %24, %2539 ], [ %2546, %2541 ]
  %2545 = add nsw i64 %2542, -1
  %2546 = getelementptr inbounds i8, ptr %2544, i64 1
  %2547 = load i8, ptr %2544, align 1, !tbaa !55
  %2548 = getelementptr inbounds i8, ptr %2543, i64 -1
  store i8 %2547, ptr %2548, align 1, !tbaa !55
  %2549 = icmp eq i64 %2545, 0
  br i1 %2549, label %2551, label %2541, !llvm.loop !132

2550:                                             ; preds = %2538
  store i64 %2501, ptr %2477, align 1
  br label %2551

2551:                                             ; preds = %2541, %2550
  %2552 = getelementptr inbounds i8, ptr %2477, i64 8
  br label %2553

2553:                                             ; preds = %2534, %2517, %2551
  %2554 = phi ptr [ %2552, %2551 ], [ %2518, %2517 ], [ %2535, %2534 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %24) #11
  %2555 = icmp sgt i32 %2474, 1
  br i1 %2555, label %2473, label %3930, !llvm.loop !223

2556:                                             ; preds = %228, %2930
  %2557 = phi i32 [ %97, %228 ], [ %2562, %2930 ]
  %2558 = phi ptr [ %77, %228 ], [ %2571, %2930 ]
  %2559 = phi i32 [ %78, %228 ], [ %2570, %2930 ]
  %2560 = phi ptr [ %130, %228 ], [ %2932, %2930 ]
  %2561 = phi ptr [ %129, %228 ], [ %2931, %2930 ]
  %2562 = add nsw i32 %2557, -1
  br i1 %231, label %2563, label %2569

2563:                                             ; preds = %2556
  %2564 = icmp sgt i32 %2559, 0
  br i1 %2564, label %2565, label %2569

2565:                                             ; preds = %2563
  %2566 = add nsw i32 %2559, -1
  %2567 = getelementptr inbounds ptr, ptr %2558, i64 1
  %2568 = load ptr, ptr %2558, align 8, !tbaa !76
  br label %2569

2569:                                             ; preds = %2556, %2565, %2563
  %2570 = phi i32 [ %2566, %2565 ], [ %2559, %2563 ], [ %2559, %2556 ]
  %2571 = phi ptr [ %2567, %2565 ], [ %2558, %2563 ], [ %2558, %2556 ]
  %2572 = phi ptr [ %2568, %2565 ], [ @PL_sv_no, %2563 ], [ %181, %2556 ]
  %2573 = call fastcc ptr @S_sv_check_infnan(ptr noundef %2572, i32 noundef %80)
  %2574 = getelementptr inbounds %struct.sv, ptr %2572, i64 0, i32 2
  %2575 = load i32, ptr %2574, align 4, !tbaa !111
  %2576 = and i32 %2575, 512
  %2577 = icmp eq i32 %2576, 0
  br i1 %2577, label %2582, label %2578

2578:                                             ; preds = %2569
  %2579 = load ptr, ptr %2572, align 8, !tbaa !119
  %2580 = getelementptr inbounds %struct.xpvnv, ptr %2579, i64 0, i32 5
  %2581 = load double, ptr %2580, align 8, !tbaa !55
  br label %2584

2582:                                             ; preds = %2569
  %2583 = call double @Perl_sv_2nv_flags(ptr noundef %2572, i32 noundef 0) #11
  br label %2584

2584:                                             ; preds = %2582, %2578
  %2585 = phi double [ %2581, %2578 ], [ %2583, %2582 ]
  %2586 = fcmp olt double %2585, 0.000000e+00
  br i1 %2586, label %2587, label %2593

2587:                                             ; preds = %2584
  store i8 0, ptr %2561, align 1, !tbaa !55
  %2588 = ptrtoint ptr %2561 to i64
  %2589 = ptrtoint ptr %2560 to i64
  %2590 = sub i64 %2588, %2589
  %2591 = load ptr, ptr %0, align 8, !tbaa !119
  %2592 = getelementptr inbounds %struct.xpv, ptr %2591, i64 0, i32 2
  store i64 %2590, ptr %2592, align 8, !tbaa !120
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.54) #11
  br label %2593

2593:                                             ; preds = %2587, %2584
  %2594 = load i32, ptr %2574, align 4, !tbaa !111
  %2595 = and i32 %2594, 256
  %2596 = icmp ne i32 %2595, 0
  %2597 = fcmp olt double %2585, 0x43F0000000000000
  %2598 = or i1 %2597, %2596
  br i1 %2598, label %2599, label %2668

2599:                                             ; preds = %2593
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %25) #11
  %2600 = icmp eq i32 %2595, 0
  br i1 %2600, label %2605, label %2601

2601:                                             ; preds = %2599
  %2602 = load ptr, ptr %2572, align 8, !tbaa !119
  %2603 = getelementptr inbounds %struct.xpvuv, ptr %2602, i64 0, i32 4
  %2604 = load i64, ptr %2603, align 8, !tbaa !55
  br label %2607

2605:                                             ; preds = %2599
  %2606 = call i64 @Perl_sv_2uv_flags(ptr noundef %2572, i32 noundef 0) #11
  br label %2607

2607:                                             ; preds = %2605, %2601
  %2608 = phi i64 [ %2604, %2601 ], [ %2606, %2605 ]
  br label %2609

2609:                                             ; preds = %2607, %2609
  %2610 = phi i64 [ %2614, %2609 ], [ 10, %2607 ]
  %2611 = phi i64 [ %2616, %2609 ], [ %2608, %2607 ]
  %2612 = trunc i64 %2611 to i8
  %2613 = or i8 %2612, -128
  %2614 = add nsw i64 %2610, -1
  %2615 = getelementptr inbounds i8, ptr %25, i64 %2614
  store i8 %2613, ptr %2615, align 1, !tbaa !55
  %2616 = lshr i64 %2611, 7
  %2617 = icmp ult i64 %2611, 128
  br i1 %2617, label %2618, label %2609, !llvm.loop !224

2618:                                             ; preds = %2609
  %2619 = getelementptr inbounds i8, ptr %25, i64 %2614
  %2620 = load i8, ptr %230, align 1, !tbaa !55
  %2621 = and i8 %2620, 127
  store i8 %2621, ptr %230, align 1, !tbaa !55
  %2622 = sub nsw i64 11, %2610
  %2623 = shl i64 %2622, %240
  %2624 = getelementptr inbounds i8, ptr %2561, i64 %2623
  %2625 = load ptr, ptr %0, align 8, !tbaa !119
  %2626 = getelementptr inbounds %struct.xpv, ptr %2625, i64 0, i32 3
  %2627 = load i64, ptr %2626, align 8, !tbaa !55
  %2628 = getelementptr inbounds i8, ptr %2560, i64 %2627
  %2629 = icmp ult ptr %2624, %2628
  br i1 %2629, label %2641, label %2630

2630:                                             ; preds = %2618
  store i8 0, ptr %2561, align 1, !tbaa !55
  %2631 = ptrtoint ptr %2561 to i64
  %2632 = ptrtoint ptr %2560 to i64
  %2633 = sub i64 %2631, %2632
  %2634 = load ptr, ptr %0, align 8, !tbaa !119
  %2635 = getelementptr inbounds %struct.xpv, ptr %2634, i64 0, i32 2
  store i64 %2633, ptr %2635, align 8, !tbaa !120
  %2636 = call fastcc ptr @S_sv_exp_grow(ptr noundef nonnull %0, i64 noundef %2623)
  %2637 = load ptr, ptr %0, align 8, !tbaa !119
  %2638 = getelementptr inbounds %struct.xpv, ptr %2637, i64 0, i32 2
  %2639 = load i64, ptr %2638, align 8, !tbaa !120
  %2640 = getelementptr inbounds i8, ptr %2636, i64 %2639
  br label %2641

2641:                                             ; preds = %2618, %2630
  %2642 = phi ptr [ %2640, %2630 ], [ %2561, %2618 ]
  %2643 = phi ptr [ %2636, %2630 ], [ %2560, %2618 ]
  br i1 %239, label %2664, label %2644

2644:                                             ; preds = %2641
  %2645 = icmp slt i64 %2610, 11
  br i1 %2645, label %2646, label %2666

2646:                                             ; preds = %2644, %2660
  %2647 = phi i64 [ %2662, %2660 ], [ %2614, %2644 ]
  %2648 = phi ptr [ %2661, %2660 ], [ %2642, %2644 ]
  %2649 = getelementptr inbounds i8, ptr %25, i64 %2647
  %2650 = load i8, ptr %2649, align 1, !tbaa !55
  %2651 = icmp sgt i8 %2650, -1
  br i1 %2651, label %2652, label %2654

2652:                                             ; preds = %2646
  %2653 = getelementptr inbounds i8, ptr %2648, i64 1
  store i8 %2650, ptr %2648, align 1, !tbaa !55
  br label %2660

2654:                                             ; preds = %2646
  %2655 = lshr i8 %2650, 6
  %2656 = or disjoint i8 %2655, -64
  %2657 = getelementptr inbounds i8, ptr %2648, i64 1
  store i8 %2656, ptr %2648, align 1, !tbaa !55
  %2658 = and i8 %2650, -65
  %2659 = getelementptr inbounds i8, ptr %2648, i64 2
  store i8 %2658, ptr %2657, align 1, !tbaa !55
  br label %2660

2660:                                             ; preds = %2654, %2652
  %2661 = phi ptr [ %2653, %2652 ], [ %2659, %2654 ]
  %2662 = add nsw i64 %2647, 1
  %2663 = icmp eq i64 %2662, 10
  br i1 %2663, label %2666, label %2646, !llvm.loop !207

2664:                                             ; preds = %2641
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %2642, ptr noundef nonnull align 1 dereferenceable(1) %2619, i64 %2622, i1 false)
  %2665 = getelementptr inbounds i8, ptr %2642, i64 %2622
  br label %2666

2666:                                             ; preds = %2660, %2644, %2664
  %2667 = phi ptr [ %2665, %2664 ], [ %2642, %2644 ], [ %2661, %2660 ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %25) #11
  br label %2930

2668:                                             ; preds = %2593
  %2669 = and i32 %2594, 24576
  %2670 = icmp eq i32 %2669, 8192
  br i1 %2670, label %2671, label %2738

2671:                                             ; preds = %2668
  call void @llvm.lifetime.start.p0(i64 155, ptr nonnull %26) #11
  %2672 = call double @llvm.floor.f64(double %2585)
  br label %2673

2673:                                             ; preds = %2680, %2671
  %2674 = phi double [ %2672, %2671 ], [ %2677, %2680 ]
  %2675 = phi i64 [ 155, %2671 ], [ %2685, %2680 ]
  %2676 = fmul double %2674, 7.812500e-03
  %2677 = call double @llvm.floor.f64(double %2676)
  %2678 = icmp sgt i64 %2675, 0
  br i1 %2678, label %2680, label %2679

2679:                                             ; preds = %2673
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.55) #11
  br label %2680

2680:                                             ; preds = %2673, %2679
  %2681 = fneg double %2677
  %2682 = call double @llvm.fmuladd.f64(double %2681, double 1.280000e+02, double %2674)
  %2683 = fptoui double %2682 to i8
  %2684 = or i8 %2683, -128
  %2685 = add nsw i64 %2675, -1
  %2686 = getelementptr inbounds i8, ptr %26, i64 %2685
  store i8 %2684, ptr %2686, align 1, !tbaa !55
  %2687 = fcmp ogt double %2677, 0.000000e+00
  br i1 %2687, label %2673, label %2688, !llvm.loop !225

2688:                                             ; preds = %2680
  %2689 = getelementptr inbounds i8, ptr %26, i64 %2685
  %2690 = load i8, ptr %229, align 2, !tbaa !55
  %2691 = and i8 %2690, 127
  store i8 %2691, ptr %229, align 2, !tbaa !55
  %2692 = sub nsw i64 156, %2675
  %2693 = shl i64 %2692, %237
  %2694 = getelementptr inbounds i8, ptr %2561, i64 %2693
  %2695 = load ptr, ptr %0, align 8, !tbaa !119
  %2696 = getelementptr inbounds %struct.xpv, ptr %2695, i64 0, i32 3
  %2697 = load i64, ptr %2696, align 8, !tbaa !55
  %2698 = getelementptr inbounds i8, ptr %2560, i64 %2697
  %2699 = icmp ult ptr %2694, %2698
  br i1 %2699, label %2711, label %2700

2700:                                             ; preds = %2688
  store i8 0, ptr %2561, align 1, !tbaa !55
  %2701 = ptrtoint ptr %2561 to i64
  %2702 = ptrtoint ptr %2560 to i64
  %2703 = sub i64 %2701, %2702
  %2704 = load ptr, ptr %0, align 8, !tbaa !119
  %2705 = getelementptr inbounds %struct.xpv, ptr %2704, i64 0, i32 2
  store i64 %2703, ptr %2705, align 8, !tbaa !120
  %2706 = call fastcc ptr @S_sv_exp_grow(ptr noundef nonnull %0, i64 noundef %2693)
  %2707 = load ptr, ptr %0, align 8, !tbaa !119
  %2708 = getelementptr inbounds %struct.xpv, ptr %2707, i64 0, i32 2
  %2709 = load i64, ptr %2708, align 8, !tbaa !120
  %2710 = getelementptr inbounds i8, ptr %2706, i64 %2709
  br label %2711

2711:                                             ; preds = %2688, %2700
  %2712 = phi ptr [ %2710, %2700 ], [ %2561, %2688 ]
  %2713 = phi ptr [ %2706, %2700 ], [ %2560, %2688 ]
  br i1 %236, label %2734, label %2714

2714:                                             ; preds = %2711
  %2715 = icmp slt i64 %2675, 156
  br i1 %2715, label %2716, label %2736

2716:                                             ; preds = %2714, %2730
  %2717 = phi i64 [ %2732, %2730 ], [ %2685, %2714 ]
  %2718 = phi ptr [ %2731, %2730 ], [ %2712, %2714 ]
  %2719 = getelementptr inbounds i8, ptr %26, i64 %2717
  %2720 = load i8, ptr %2719, align 1, !tbaa !55
  %2721 = icmp sgt i8 %2720, -1
  br i1 %2721, label %2722, label %2724

2722:                                             ; preds = %2716
  %2723 = getelementptr inbounds i8, ptr %2718, i64 1
  store i8 %2720, ptr %2718, align 1, !tbaa !55
  br label %2730

2724:                                             ; preds = %2716
  %2725 = lshr i8 %2720, 6
  %2726 = or disjoint i8 %2725, -64
  %2727 = getelementptr inbounds i8, ptr %2718, i64 1
  store i8 %2726, ptr %2718, align 1, !tbaa !55
  %2728 = and i8 %2720, -65
  %2729 = getelementptr inbounds i8, ptr %2718, i64 2
  store i8 %2728, ptr %2727, align 1, !tbaa !55
  br label %2730

2730:                                             ; preds = %2724, %2722
  %2731 = phi ptr [ %2723, %2722 ], [ %2729, %2724 ]
  %2732 = add nsw i64 %2717, 1
  %2733 = icmp slt i64 %2717, 154
  br i1 %2733, label %2716, label %2736, !llvm.loop !207

2734:                                             ; preds = %2711
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %2712, ptr noundef nonnull align 1 dereferenceable(1) %2689, i64 %2692, i1 false)
  %2735 = getelementptr inbounds i8, ptr %2712, i64 %2692
  br label %2736

2736:                                             ; preds = %2730, %2714, %2734
  %2737 = phi ptr [ %2735, %2734 ], [ %2712, %2714 ], [ %2731, %2730 ]
  call void @llvm.lifetime.end.p0(i64 155, ptr nonnull %26) #11
  br label %2930

2738:                                             ; preds = %2668
  %2739 = and i32 %2594, 2098176
  %2740 = icmp eq i32 %2739, 1024
  br i1 %2740, label %2741, label %2747

2741:                                             ; preds = %2738
  %2742 = load ptr, ptr %2572, align 8, !tbaa !119
  %2743 = getelementptr inbounds %struct.xpv, ptr %2742, i64 0, i32 2
  %2744 = load i64, ptr %2743, align 8, !tbaa !120
  store i64 %2744, ptr %27, align 8, !tbaa !63
  %2745 = getelementptr inbounds %struct.sv, ptr %2572, i64 0, i32 3
  %2746 = load ptr, ptr %2745, align 8, !tbaa !55
  br label %2749

2747:                                             ; preds = %2738
  %2748 = call ptr @Perl_sv_2pv_flags(ptr noundef %2572, ptr noundef nonnull %27, i32 noundef 32) #11
  br label %2749

2749:                                             ; preds = %2747, %2741
  %2750 = phi ptr [ %2746, %2741 ], [ %2748, %2747 ]
  %2751 = load i64, ptr %27, align 8, !tbaa !63
  %2752 = call ptr @Perl_newSVpvn(ptr noundef %2750, i64 noundef %2751) #11
  %2753 = getelementptr inbounds %struct.sv, ptr %2752, i64 0, i32 2
  %2754 = load i32, ptr %2753, align 4, !tbaa !111
  %2755 = and i32 %2754, 2098176
  %2756 = icmp eq i32 %2755, 1024
  br i1 %2756, label %2757, label %2760

2757:                                             ; preds = %2749
  %2758 = getelementptr inbounds %struct.sv, ptr %2752, i64 0, i32 3
  %2759 = load ptr, ptr %2758, align 8, !tbaa !55
  br label %2762

2760:                                             ; preds = %2749
  %2761 = call ptr @Perl_sv_2pv_flags(ptr noundef %2752, ptr noundef null, i32 noundef 2) #11
  br label %2762

2762:                                             ; preds = %2760, %2757
  %2763 = phi ptr [ %2759, %2757 ], [ %2761, %2760 ]
  br label %2764

2764:                                             ; preds = %2797, %2762
  %2765 = phi ptr [ %2750, %2762 ], [ %2801, %2797 ]
  %2766 = phi ptr [ %2763, %2762 ], [ %2798, %2797 ]
  %2767 = phi i8 [ 1, %2762 ], [ %2799, %2797 ]
  %2768 = phi i8 [ 0, %2762 ], [ %2800, %2797 ]
  %2769 = load i8, ptr %2765, align 1, !tbaa !55
  switch i8 %2769, label %2788 [
    i8 0, label %2802
    i8 32, label %2797
    i8 43, label %2770
    i8 48, label %2782
    i8 49, label %2782
    i8 50, label %2782
    i8 51, label %2782
    i8 52, label %2782
    i8 53, label %2782
    i8 54, label %2782
    i8 55, label %2782
    i8 56, label %2782
    i8 57, label %2782
    i8 46, label %2787
  ]

2770:                                             ; preds = %2764
  %2771 = and i8 %2767, 1
  %2772 = icmp eq i8 %2771, 0
  br i1 %2772, label %2773, label %2797

2773:                                             ; preds = %2770
  %2774 = icmp eq ptr %2752, null
  br i1 %2774, label %2809, label %2775

2775:                                             ; preds = %2773
  %2776 = getelementptr inbounds %struct.sv, ptr %2752, i64 0, i32 1
  %2777 = load i32, ptr %2776, align 8, !tbaa !149
  %2778 = icmp ugt i32 %2777, 1
  br i1 %2778, label %2779, label %2781

2779:                                             ; preds = %2775
  %2780 = add i32 %2777, -1
  store i32 %2780, ptr %2776, align 8, !tbaa !149
  br label %2809

2781:                                             ; preds = %2775
  call void @Perl_sv_free2(ptr noundef nonnull %2752, i32 noundef %2777) #11
  br label %2809

2782:                                             ; preds = %2764, %2764, %2764, %2764, %2764, %2764, %2764, %2764, %2764, %2764
  %2783 = and i8 %2768, 1
  %2784 = icmp eq i8 %2783, 0
  br i1 %2784, label %2785, label %2797

2785:                                             ; preds = %2782
  %2786 = getelementptr inbounds i8, ptr %2766, i64 1
  store i8 %2769, ptr %2766, align 1, !tbaa !55
  br label %2797

2787:                                             ; preds = %2764
  br label %2797

2788:                                             ; preds = %2764
  %2789 = icmp eq ptr %2752, null
  br i1 %2789, label %2809, label %2790

2790:                                             ; preds = %2788
  %2791 = getelementptr inbounds %struct.sv, ptr %2752, i64 0, i32 1
  %2792 = load i32, ptr %2791, align 8, !tbaa !149
  %2793 = icmp ugt i32 %2792, 1
  br i1 %2793, label %2794, label %2796

2794:                                             ; preds = %2790
  %2795 = add i32 %2792, -1
  store i32 %2795, ptr %2791, align 8, !tbaa !149
  br label %2809

2796:                                             ; preds = %2790
  call void @Perl_sv_free2(ptr noundef nonnull %2752, i32 noundef %2792) #11
  br label %2809

2797:                                             ; preds = %2764, %2787, %2785, %2782, %2770
  %2798 = phi ptr [ %2766, %2787 ], [ %2766, %2782 ], [ %2786, %2785 ], [ %2766, %2770 ], [ %2766, %2764 ]
  %2799 = phi i8 [ %2767, %2787 ], [ 0, %2782 ], [ 0, %2785 ], [ %2767, %2770 ], [ %2767, %2764 ]
  %2800 = phi i8 [ 1, %2787 ], [ %2768, %2782 ], [ %2768, %2785 ], [ %2768, %2770 ], [ %2768, %2764 ]
  %2801 = getelementptr inbounds i8, ptr %2765, i64 1
  br label %2764, !llvm.loop !226

2802:                                             ; preds = %2764
  %2803 = getelementptr inbounds i8, ptr %2766, i64 1
  store i8 0, ptr %2766, align 1, !tbaa !55
  %2804 = ptrtoint ptr %2803 to i64
  %2805 = ptrtoint ptr %2763 to i64
  %2806 = sub i64 %2804, %2805
  %2807 = load ptr, ptr %2752, align 8, !tbaa !119
  %2808 = getelementptr inbounds %struct.xpv, ptr %2807, i64 0, i32 2
  store i64 %2806, ptr %2808, align 8, !tbaa !120
  br label %2809

2809:                                             ; preds = %2773, %2779, %2781, %2788, %2794, %2796, %2802
  %2810 = phi ptr [ %2752, %2802 ], [ null, %2773 ], [ null, %2779 ], [ null, %2781 ], [ null, %2788 ], [ null, %2794 ], [ null, %2796 ]
  %2811 = icmp eq ptr %2810, null
  br i1 %2811, label %2812, label %2813

2812:                                             ; preds = %2809
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.56) #11
  br label %2813

2813:                                             ; preds = %2812, %2809
  %2814 = load i64, ptr %27, align 8, !tbaa !63
  %2815 = call ptr @Perl_safesysmalloc(i64 noundef %2814) #11
  %2816 = load i64, ptr %27, align 8, !tbaa !63
  %2817 = getelementptr inbounds i8, ptr %2815, i64 %2816
  %2818 = getelementptr inbounds %struct.sv, ptr %2810, i64 0, i32 2
  %2819 = getelementptr inbounds %struct.sv, ptr %2810, i64 0, i32 3
  br label %2820

2820:                                             ; preds = %2813, %2854
  %2821 = phi ptr [ %2817, %2813 ], [ %2866, %2854 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %2822 = load i32, ptr %2818, align 4, !tbaa !111
  %2823 = and i32 %2822, 2098176
  %2824 = icmp eq i32 %2823, 1024
  br i1 %2824, label %2825, label %2830

2825:                                             ; preds = %2820
  %2826 = load ptr, ptr %2810, align 8, !tbaa !119
  %2827 = getelementptr inbounds %struct.xpv, ptr %2826, i64 0, i32 2
  %2828 = load i64, ptr %2827, align 8, !tbaa !120
  store i64 %2828, ptr %5, align 8, !tbaa !63
  %2829 = load ptr, ptr %2819, align 8, !tbaa !55
  br label %2832

2830:                                             ; preds = %2820
  %2831 = call ptr @Perl_sv_2pv_flags(ptr noundef %2810, ptr noundef nonnull %5, i32 noundef 2) #11
  br label %2832

2832:                                             ; preds = %2830, %2825
  %2833 = phi ptr [ %2829, %2825 ], [ %2831, %2830 ]
  %2834 = load i8, ptr %2833, align 1, !tbaa !55
  %2835 = icmp eq i8 %2834, 0
  br i1 %2835, label %2854, label %2836

2836:                                             ; preds = %2832, %2836
  %2837 = phi i8 [ %2852, %2836 ], [ %2834, %2832 ]
  %2838 = phi ptr [ %2851, %2836 ], [ %2833, %2832 ]
  %2839 = phi i32 [ %2846, %2836 ], [ 0, %2832 ]
  %2840 = phi i8 [ %2848, %2836 ], [ 1, %2832 ]
  %2841 = mul nuw nsw i32 %2839, 10
  %2842 = sext i8 %2837 to i32
  %2843 = add nsw i32 %2841, -48
  %2844 = add nsw i32 %2843, %2842
  %2845 = lshr i32 %2844, 7
  %2846 = and i32 %2844, 127
  %2847 = icmp ult i32 %2844, 128
  %2848 = select i1 %2847, i8 %2840, i8 0
  %2849 = trunc i32 %2845 to i8
  %2850 = add i8 %2849, 48
  %2851 = getelementptr inbounds i8, ptr %2838, i64 1
  store i8 %2850, ptr %2838, align 1, !tbaa !55
  %2852 = load i8, ptr %2851, align 1, !tbaa !55
  %2853 = icmp eq i8 %2852, 0
  br i1 %2853, label %2854, label %2836, !llvm.loop !227

2854:                                             ; preds = %2836, %2832
  %2855 = phi i8 [ 1, %2832 ], [ %2848, %2836 ]
  %2856 = phi i32 [ 0, %2832 ], [ %2846, %2836 ]
  %2857 = phi ptr [ %2833, %2832 ], [ %2851, %2836 ]
  %2858 = getelementptr inbounds i8, ptr %2857, i64 1
  store i8 0, ptr %2857, align 1, !tbaa !55
  %2859 = ptrtoint ptr %2858 to i64
  %2860 = ptrtoint ptr %2833 to i64
  %2861 = sub i64 %2859, %2860
  %2862 = load ptr, ptr %2810, align 8, !tbaa !119
  %2863 = getelementptr inbounds %struct.xpv, ptr %2862, i64 0, i32 2
  store i64 %2861, ptr %2863, align 8, !tbaa !120
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  %2864 = trunc i32 %2856 to i8
  %2865 = or disjoint i8 %2864, -128
  %2866 = getelementptr inbounds i8, ptr %2821, i64 -1
  store i8 %2865, ptr %2866, align 1, !tbaa !55
  %2867 = icmp eq i8 %2855, 0
  br i1 %2867, label %2820, label %2868, !llvm.loop !228

2868:                                             ; preds = %2854
  %2869 = load i64, ptr %27, align 8, !tbaa !63
  %2870 = getelementptr i8, ptr %2815, i64 %2869
  %2871 = getelementptr i8, ptr %2870, i64 -1
  %2872 = load i8, ptr %2871, align 1, !tbaa !55
  %2873 = and i8 %2872, 127
  store i8 %2873, ptr %2871, align 1, !tbaa !55
  %2874 = load i64, ptr %27, align 8, !tbaa !63
  %2875 = getelementptr inbounds i8, ptr %2815, i64 %2874
  %2876 = ptrtoint ptr %2875 to i64
  %2877 = ptrtoint ptr %2866 to i64
  %2878 = sub i64 %2876, %2877
  %2879 = shl i64 %2878, %234
  %2880 = getelementptr inbounds i8, ptr %2561, i64 %2879
  %2881 = load ptr, ptr %0, align 8, !tbaa !119
  %2882 = getelementptr inbounds %struct.xpv, ptr %2881, i64 0, i32 3
  %2883 = load i64, ptr %2882, align 8, !tbaa !55
  %2884 = getelementptr inbounds i8, ptr %2560, i64 %2883
  %2885 = icmp ult ptr %2880, %2884
  br i1 %2885, label %2897, label %2886

2886:                                             ; preds = %2868
  store i8 0, ptr %2561, align 1, !tbaa !55
  %2887 = ptrtoint ptr %2561 to i64
  %2888 = ptrtoint ptr %2560 to i64
  %2889 = sub i64 %2887, %2888
  %2890 = load ptr, ptr %0, align 8, !tbaa !119
  %2891 = getelementptr inbounds %struct.xpv, ptr %2890, i64 0, i32 2
  store i64 %2889, ptr %2891, align 8, !tbaa !120
  %2892 = call fastcc ptr @S_sv_exp_grow(ptr noundef nonnull %0, i64 noundef %2879)
  %2893 = load ptr, ptr %0, align 8, !tbaa !119
  %2894 = getelementptr inbounds %struct.xpv, ptr %2893, i64 0, i32 2
  %2895 = load i64, ptr %2894, align 8, !tbaa !120
  %2896 = getelementptr inbounds i8, ptr %2892, i64 %2895
  br label %2897

2897:                                             ; preds = %2868, %2886
  %2898 = phi ptr [ %2896, %2886 ], [ %2561, %2868 ]
  %2899 = phi ptr [ %2892, %2886 ], [ %2560, %2868 ]
  br i1 %233, label %2919, label %2900

2900:                                             ; preds = %2897
  %2901 = icmp ult ptr %2866, %2875
  br i1 %2901, label %2902, label %2921

2902:                                             ; preds = %2900, %2915
  %2903 = phi ptr [ %2917, %2915 ], [ %2866, %2900 ]
  %2904 = phi ptr [ %2916, %2915 ], [ %2898, %2900 ]
  %2905 = load i8, ptr %2903, align 1, !tbaa !55
  %2906 = icmp sgt i8 %2905, -1
  br i1 %2906, label %2907, label %2909

2907:                                             ; preds = %2902
  %2908 = getelementptr inbounds i8, ptr %2904, i64 1
  store i8 %2905, ptr %2904, align 1, !tbaa !55
  br label %2915

2909:                                             ; preds = %2902
  %2910 = lshr i8 %2905, 6
  %2911 = or disjoint i8 %2910, -64
  %2912 = getelementptr inbounds i8, ptr %2904, i64 1
  store i8 %2911, ptr %2904, align 1, !tbaa !55
  %2913 = and i8 %2905, -65
  %2914 = getelementptr inbounds i8, ptr %2904, i64 2
  store i8 %2913, ptr %2912, align 1, !tbaa !55
  br label %2915

2915:                                             ; preds = %2909, %2907
  %2916 = phi ptr [ %2908, %2907 ], [ %2914, %2909 ]
  %2917 = getelementptr inbounds i8, ptr %2903, i64 1
  %2918 = icmp ult ptr %2917, %2875
  br i1 %2918, label %2902, label %2921, !llvm.loop !207

2919:                                             ; preds = %2897
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2898, ptr nonnull align 1 %2866, i64 %2878, i1 false)
  %2920 = getelementptr inbounds i8, ptr %2898, i64 %2878
  br label %2921

2921:                                             ; preds = %2915, %2900, %2919
  %2922 = phi ptr [ %2920, %2919 ], [ %2898, %2900 ], [ %2916, %2915 ]
  call void @Perl_safesysfree(ptr noundef %2815) #11
  br i1 %2811, label %2930, label %2923

2923:                                             ; preds = %2921
  %2924 = getelementptr inbounds %struct.sv, ptr %2810, i64 0, i32 1
  %2925 = load i32, ptr %2924, align 8, !tbaa !149
  %2926 = icmp ugt i32 %2925, 1
  br i1 %2926, label %2927, label %2929

2927:                                             ; preds = %2923
  %2928 = add i32 %2925, -1
  store i32 %2928, ptr %2924, align 8, !tbaa !149
  br label %2930

2929:                                             ; preds = %2923
  call void @Perl_sv_free2(ptr noundef nonnull %2810, i32 noundef %2925) #11
  br label %2930

2930:                                             ; preds = %2929, %2927, %2921, %2736, %2666
  %2931 = phi ptr [ %2667, %2666 ], [ %2737, %2736 ], [ %2922, %2921 ], [ %2922, %2927 ], [ %2922, %2929 ]
  %2932 = phi ptr [ %2643, %2666 ], [ %2713, %2736 ], [ %2899, %2921 ], [ %2899, %2927 ], [ %2899, %2929 ]
  %2933 = icmp sgt i32 %2557, 1
  br i1 %2933, label %2556, label %3930, !llvm.loop !229

2934:                                             ; preds = %180, %180
  %2935 = icmp sgt i32 %97, 0
  br i1 %2935, label %2936, label %3930

2936:                                             ; preds = %2934
  %2937 = getelementptr inbounds i8, ptr %28, i64 4
  %2938 = icmp eq ptr %181, null
  %2939 = and i8 %79, 1
  %2940 = icmp eq i8 %2939, 0
  br label %2941

2941:                                             ; preds = %2936, %3022
  %2942 = phi i32 [ %97, %2936 ], [ %2946, %3022 ]
  %2943 = phi ptr [ %77, %2936 ], [ %2955, %3022 ]
  %2944 = phi i32 [ %78, %2936 ], [ %2954, %3022 ]
  %2945 = phi ptr [ %129, %2936 ], [ %3023, %3022 ]
  %2946 = add nsw i32 %2942, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %28) #11
  br i1 %2938, label %2947, label %2953

2947:                                             ; preds = %2941
  %2948 = icmp sgt i32 %2944, 0
  br i1 %2948, label %2949, label %2953

2949:                                             ; preds = %2947
  %2950 = add nsw i32 %2944, -1
  %2951 = getelementptr inbounds ptr, ptr %2943, i64 1
  %2952 = load ptr, ptr %2943, align 8, !tbaa !76
  br label %2953

2953:                                             ; preds = %2941, %2949, %2947
  %2954 = phi i32 [ %2950, %2949 ], [ %2944, %2947 ], [ %2944, %2941 ]
  %2955 = phi ptr [ %2951, %2949 ], [ %2943, %2947 ], [ %2943, %2941 ]
  %2956 = phi ptr [ %2952, %2949 ], [ @PL_sv_no, %2947 ], [ %181, %2941 ]
  %2957 = call fastcc ptr @S_sv_check_infnan(ptr noundef %2956, i32 noundef %80)
  %2958 = getelementptr inbounds %struct.sv, ptr %2957, i64 0, i32 2
  %2959 = load i32, ptr %2958, align 4, !tbaa !111
  %2960 = and i32 %2959, 256
  %2961 = icmp eq i32 %2960, 0
  br i1 %2961, label %2966, label %2962

2962:                                             ; preds = %2953
  %2963 = load ptr, ptr %2957, align 8, !tbaa !119
  %2964 = getelementptr inbounds %struct.xpviv, ptr %2963, i64 0, i32 4
  %2965 = load i64, ptr %2964, align 8, !tbaa !55
  br label %2968

2966:                                             ; preds = %2953
  %2967 = call i64 @Perl_sv_2iv_flags(ptr noundef %2957, i32 noundef 0) #11
  br label %2968

2968:                                             ; preds = %2966, %2962
  %2969 = phi i64 [ %2965, %2962 ], [ %2967, %2966 ]
  %2970 = trunc i64 %2969 to i32
  store i32 %2970, ptr %28, align 4, !tbaa !92
  br i1 %2940, label %3007, label %2971

2971:                                             ; preds = %2968
  br i1 %183, label %2972, label %2989

2972:                                             ; preds = %2971, %2986
  %2973 = phi ptr [ %2975, %2986 ], [ %2937, %2971 ]
  %2974 = phi ptr [ %2987, %2986 ], [ %2945, %2971 ]
  %2975 = getelementptr inbounds i8, ptr %2973, i64 -1
  %2976 = load i8, ptr %2975, align 1, !tbaa !55
  %2977 = icmp sgt i8 %2976, -1
  br i1 %2977, label %2978, label %2980

2978:                                             ; preds = %2972
  %2979 = getelementptr inbounds i8, ptr %2974, i64 1
  store i8 %2976, ptr %2974, align 1, !tbaa !55
  br label %2986

2980:                                             ; preds = %2972
  %2981 = lshr i8 %2976, 6
  %2982 = or disjoint i8 %2981, -64
  %2983 = getelementptr inbounds i8, ptr %2974, i64 1
  store i8 %2982, ptr %2974, align 1, !tbaa !55
  %2984 = and i8 %2976, -65
  %2985 = getelementptr inbounds i8, ptr %2974, i64 2
  store i8 %2984, ptr %2983, align 1, !tbaa !55
  br label %2986

2986:                                             ; preds = %2980, %2978
  %2987 = phi ptr [ %2979, %2978 ], [ %2985, %2980 ]
  %2988 = icmp ugt ptr %2975, %28
  br i1 %2988, label %2972, label %3022, !llvm.loop !209

2989:                                             ; preds = %2971, %3003
  %2990 = phi i64 [ %3005, %3003 ], [ 0, %2971 ]
  %2991 = phi ptr [ %3004, %3003 ], [ %2945, %2971 ]
  %2992 = getelementptr inbounds i8, ptr %28, i64 %2990
  %2993 = load i8, ptr %2992, align 1, !tbaa !55
  %2994 = icmp sgt i8 %2993, -1
  br i1 %2994, label %2995, label %2997

2995:                                             ; preds = %2989
  %2996 = getelementptr inbounds i8, ptr %2991, i64 1
  store i8 %2993, ptr %2991, align 1, !tbaa !55
  br label %3003

2997:                                             ; preds = %2989
  %2998 = lshr i8 %2993, 6
  %2999 = or disjoint i8 %2998, -64
  %3000 = getelementptr inbounds i8, ptr %2991, i64 1
  store i8 %2999, ptr %2991, align 1, !tbaa !55
  %3001 = and i8 %2993, -65
  %3002 = getelementptr inbounds i8, ptr %2991, i64 2
  store i8 %3001, ptr %3000, align 1, !tbaa !55
  br label %3003

3003:                                             ; preds = %2997, %2995
  %3004 = phi ptr [ %2996, %2995 ], [ %3002, %2997 ]
  %3005 = add nuw nsw i64 %2990, 1
  %3006 = icmp eq i64 %3005, 4
  br i1 %3006, label %3022, label %2989, !llvm.loop !207

3007:                                             ; preds = %2968
  br i1 %183, label %3008, label %3019

3008:                                             ; preds = %3007
  %3009 = getelementptr inbounds i8, ptr %2945, i64 4
  br label %3010

3010:                                             ; preds = %3008, %3010
  %3011 = phi i64 [ 4, %3008 ], [ %3014, %3010 ]
  %3012 = phi ptr [ %3009, %3008 ], [ %3017, %3010 ]
  %3013 = phi ptr [ %28, %3008 ], [ %3015, %3010 ]
  %3014 = add nsw i64 %3011, -1
  %3015 = getelementptr inbounds i8, ptr %3013, i64 1
  %3016 = load i8, ptr %3013, align 1, !tbaa !55
  %3017 = getelementptr inbounds i8, ptr %3012, i64 -1
  store i8 %3016, ptr %3017, align 1, !tbaa !55
  %3018 = icmp eq i64 %3014, 0
  br i1 %3018, label %3020, label %3010, !llvm.loop !132

3019:                                             ; preds = %3007
  store i32 %2970, ptr %2945, align 1
  br label %3020

3020:                                             ; preds = %3010, %3019
  %3021 = getelementptr inbounds i8, ptr %2945, i64 4
  br label %3022

3022:                                             ; preds = %3003, %2986, %3020
  %3023 = phi ptr [ %3021, %3020 ], [ %2987, %2986 ], [ %3004, %3003 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %28) #11
  %3024 = icmp sgt i32 %2942, 1
  br i1 %3024, label %2941, label %3930, !llvm.loop !230

3025:                                             ; preds = %180, %180
  %3026 = icmp sgt i32 %97, 0
  br i1 %3026, label %3027, label %3930

3027:                                             ; preds = %3025
  %3028 = icmp eq ptr %181, null
  %3029 = and i8 %79, 1
  %3030 = icmp eq i8 %3029, 0
  br label %3031

3031:                                             ; preds = %3027, %3082
  %3032 = phi i32 [ %97, %3027 ], [ %3036, %3082 ]
  %3033 = phi ptr [ %77, %3027 ], [ %3045, %3082 ]
  %3034 = phi i32 [ %78, %3027 ], [ %3044, %3082 ]
  %3035 = phi ptr [ %129, %3027 ], [ %3083, %3082 ]
  %3036 = add nsw i32 %3032, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %29) #11
  br i1 %3028, label %3037, label %3043

3037:                                             ; preds = %3031
  %3038 = icmp sgt i32 %3034, 0
  br i1 %3038, label %3039, label %3043

3039:                                             ; preds = %3037
  %3040 = add nsw i32 %3034, -1
  %3041 = getelementptr inbounds ptr, ptr %3033, i64 1
  %3042 = load ptr, ptr %3033, align 8, !tbaa !76
  br label %3043

3043:                                             ; preds = %3031, %3039, %3037
  %3044 = phi i32 [ %3040, %3039 ], [ %3034, %3037 ], [ %3034, %3031 ]
  %3045 = phi ptr [ %3041, %3039 ], [ %3033, %3037 ], [ %3033, %3031 ]
  %3046 = phi ptr [ %3042, %3039 ], [ @PL_sv_no, %3037 ], [ %181, %3031 ]
  %3047 = call fastcc ptr @S_sv_check_infnan(ptr noundef %3046, i32 noundef %80)
  %3048 = getelementptr inbounds %struct.sv, ptr %3047, i64 0, i32 2
  %3049 = load i32, ptr %3048, align 4, !tbaa !111
  %3050 = and i32 %3049, 256
  %3051 = icmp eq i32 %3050, 0
  br i1 %3051, label %3056, label %3052

3052:                                             ; preds = %3043
  %3053 = load ptr, ptr %3047, align 8, !tbaa !119
  %3054 = getelementptr inbounds %struct.xpvuv, ptr %3053, i64 0, i32 4
  %3055 = load i64, ptr %3054, align 8, !tbaa !55
  br label %3058

3056:                                             ; preds = %3043
  %3057 = call i64 @Perl_sv_2uv_flags(ptr noundef %3047, i32 noundef 0) #11
  br label %3058

3058:                                             ; preds = %3056, %3052
  %3059 = phi i64 [ %3055, %3052 ], [ %3057, %3056 ]
  %3060 = trunc i64 %3059 to i32
  %3061 = call i32 @llvm.bswap.i32(i32 %3060)
  store i32 %3061, ptr %29, align 4, !tbaa !92
  br i1 %3030, label %3080, label %3062

3062:                                             ; preds = %3058, %3076
  %3063 = phi i64 [ %3078, %3076 ], [ 0, %3058 ]
  %3064 = phi ptr [ %3077, %3076 ], [ %3035, %3058 ]
  %3065 = getelementptr inbounds i8, ptr %29, i64 %3063
  %3066 = load i8, ptr %3065, align 1, !tbaa !55
  %3067 = icmp sgt i8 %3066, -1
  br i1 %3067, label %3068, label %3070

3068:                                             ; preds = %3062
  %3069 = getelementptr inbounds i8, ptr %3064, i64 1
  store i8 %3066, ptr %3064, align 1, !tbaa !55
  br label %3076

3070:                                             ; preds = %3062
  %3071 = lshr i8 %3066, 6
  %3072 = or disjoint i8 %3071, -64
  %3073 = getelementptr inbounds i8, ptr %3064, i64 1
  store i8 %3072, ptr %3064, align 1, !tbaa !55
  %3074 = and i8 %3066, -65
  %3075 = getelementptr inbounds i8, ptr %3064, i64 2
  store i8 %3074, ptr %3073, align 1, !tbaa !55
  br label %3076

3076:                                             ; preds = %3070, %3068
  %3077 = phi ptr [ %3069, %3068 ], [ %3075, %3070 ]
  %3078 = add nuw nsw i64 %3063, 1
  %3079 = icmp eq i64 %3078, 4
  br i1 %3079, label %3082, label %3062, !llvm.loop !207

3080:                                             ; preds = %3058
  store i32 %3061, ptr %3035, align 1
  %3081 = getelementptr inbounds i8, ptr %3035, i64 4
  br label %3082

3082:                                             ; preds = %3076, %3080
  %3083 = phi ptr [ %3081, %3080 ], [ %3077, %3076 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %29) #11
  %3084 = icmp sgt i32 %3032, 1
  br i1 %3084, label %3031, label %3930, !llvm.loop !231

3085:                                             ; preds = %180, %180
  %3086 = icmp sgt i32 %97, 0
  br i1 %3086, label %3087, label %3930

3087:                                             ; preds = %3085
  %3088 = icmp eq ptr %181, null
  %3089 = and i8 %79, 1
  %3090 = icmp eq i8 %3089, 0
  br label %3091

3091:                                             ; preds = %3087, %3141
  %3092 = phi i32 [ %97, %3087 ], [ %3096, %3141 ]
  %3093 = phi ptr [ %77, %3087 ], [ %3105, %3141 ]
  %3094 = phi i32 [ %78, %3087 ], [ %3104, %3141 ]
  %3095 = phi ptr [ %129, %3087 ], [ %3142, %3141 ]
  %3096 = add nsw i32 %3092, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %30) #11
  br i1 %3088, label %3097, label %3103

3097:                                             ; preds = %3091
  %3098 = icmp sgt i32 %3094, 0
  br i1 %3098, label %3099, label %3103

3099:                                             ; preds = %3097
  %3100 = add nsw i32 %3094, -1
  %3101 = getelementptr inbounds ptr, ptr %3093, i64 1
  %3102 = load ptr, ptr %3093, align 8, !tbaa !76
  br label %3103

3103:                                             ; preds = %3091, %3099, %3097
  %3104 = phi i32 [ %3100, %3099 ], [ %3094, %3097 ], [ %3094, %3091 ]
  %3105 = phi ptr [ %3101, %3099 ], [ %3093, %3097 ], [ %3093, %3091 ]
  %3106 = phi ptr [ %3102, %3099 ], [ @PL_sv_no, %3097 ], [ %181, %3091 ]
  %3107 = call fastcc ptr @S_sv_check_infnan(ptr noundef %3106, i32 noundef %80)
  %3108 = getelementptr inbounds %struct.sv, ptr %3107, i64 0, i32 2
  %3109 = load i32, ptr %3108, align 4, !tbaa !111
  %3110 = and i32 %3109, 256
  %3111 = icmp eq i32 %3110, 0
  br i1 %3111, label %3116, label %3112

3112:                                             ; preds = %3103
  %3113 = load ptr, ptr %3107, align 8, !tbaa !119
  %3114 = getelementptr inbounds %struct.xpvuv, ptr %3113, i64 0, i32 4
  %3115 = load i64, ptr %3114, align 8, !tbaa !55
  br label %3118

3116:                                             ; preds = %3103
  %3117 = call i64 @Perl_sv_2uv_flags(ptr noundef %3107, i32 noundef 0) #11
  br label %3118

3118:                                             ; preds = %3116, %3112
  %3119 = phi i64 [ %3115, %3112 ], [ %3117, %3116 ]
  %3120 = trunc i64 %3119 to i32
  store i32 %3120, ptr %30, align 4, !tbaa !92
  br i1 %3090, label %3139, label %3121

3121:                                             ; preds = %3118, %3135
  %3122 = phi i64 [ %3137, %3135 ], [ 0, %3118 ]
  %3123 = phi ptr [ %3136, %3135 ], [ %3095, %3118 ]
  %3124 = getelementptr inbounds i8, ptr %30, i64 %3122
  %3125 = load i8, ptr %3124, align 1, !tbaa !55
  %3126 = icmp sgt i8 %3125, -1
  br i1 %3126, label %3127, label %3129

3127:                                             ; preds = %3121
  %3128 = getelementptr inbounds i8, ptr %3123, i64 1
  store i8 %3125, ptr %3123, align 1, !tbaa !55
  br label %3135

3129:                                             ; preds = %3121
  %3130 = lshr i8 %3125, 6
  %3131 = or disjoint i8 %3130, -64
  %3132 = getelementptr inbounds i8, ptr %3123, i64 1
  store i8 %3131, ptr %3123, align 1, !tbaa !55
  %3133 = and i8 %3125, -65
  %3134 = getelementptr inbounds i8, ptr %3123, i64 2
  store i8 %3133, ptr %3132, align 1, !tbaa !55
  br label %3135

3135:                                             ; preds = %3129, %3127
  %3136 = phi ptr [ %3128, %3127 ], [ %3134, %3129 ]
  %3137 = add nuw nsw i64 %3122, 1
  %3138 = icmp eq i64 %3137, 4
  br i1 %3138, label %3141, label %3121, !llvm.loop !207

3139:                                             ; preds = %3118
  store i32 %3120, ptr %3095, align 1
  %3140 = getelementptr inbounds i8, ptr %3095, i64 4
  br label %3141

3141:                                             ; preds = %3135, %3139
  %3142 = phi ptr [ %3140, %3139 ], [ %3136, %3135 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %30) #11
  %3143 = icmp sgt i32 %3092, 1
  br i1 %3143, label %3091, label %3930, !llvm.loop !232

3144:                                             ; preds = %222, %3226
  %3145 = phi i32 [ %97, %222 ], [ %3149, %3226 ]
  %3146 = phi ptr [ %77, %222 ], [ %3158, %3226 ]
  %3147 = phi i32 [ %78, %222 ], [ %3157, %3226 ]
  %3148 = phi ptr [ %129, %222 ], [ %3227, %3226 ]
  %3149 = add nsw i32 %3145, -1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %31) #11
  br i1 %223, label %3150, label %3156, !prof !233

3150:                                             ; preds = %3144
  %3151 = icmp sgt i32 %3147, 0
  br i1 %3151, label %3152, label %3156, !prof !233

3152:                                             ; preds = %3150
  %3153 = add nsw i32 %3147, -1
  %3154 = getelementptr inbounds ptr, ptr %3146, i64 1
  %3155 = load ptr, ptr %3146, align 8, !tbaa !76
  br label %3156

3156:                                             ; preds = %3144, %3152, %3150
  %3157 = phi i32 [ %3153, %3152 ], [ %3147, %3150 ], [ %3147, %3144 ]
  %3158 = phi ptr [ %3154, %3152 ], [ %3146, %3150 ], [ %3146, %3144 ]
  %3159 = phi ptr [ %3155, %3152 ], [ @PL_sv_no, %3150 ], [ %181, %3144 ]
  %3160 = call fastcc ptr @S_sv_check_infnan(ptr noundef %3159, i32 noundef %80)
  %3161 = getelementptr inbounds %struct.sv, ptr %3160, i64 0, i32 2
  %3162 = load i32, ptr %3161, align 4, !tbaa !111
  %3163 = and i32 %3162, 256
  %3164 = icmp eq i32 %3163, 0
  br i1 %3164, label %3169, label %3165, !prof !234

3165:                                             ; preds = %3156
  %3166 = load ptr, ptr %3160, align 8, !tbaa !119
  %3167 = getelementptr inbounds %struct.xpvuv, ptr %3166, i64 0, i32 4
  %3168 = load i64, ptr %3167, align 8, !tbaa !55
  br label %3171

3169:                                             ; preds = %3156
  %3170 = call i64 @Perl_sv_2uv_flags(ptr noundef %3160, i32 noundef 0) #11
  br label %3171

3171:                                             ; preds = %3169, %3165
  %3172 = phi i64 [ %3168, %3165 ], [ %3170, %3169 ]
  store i64 %3172, ptr %31, align 8, !tbaa !63
  br i1 %225, label %3211, label %3173, !prof !233

3173:                                             ; preds = %3171
  br i1 %183, label %3174, label %3193

3174:                                             ; preds = %3173
  %3175 = getelementptr inbounds i8, ptr %31, i64 8
  br label %3176

3176:                                             ; preds = %3174, %3190
  %3177 = phi ptr [ %3179, %3190 ], [ %3175, %3174 ]
  %3178 = phi ptr [ %3191, %3190 ], [ %3148, %3174 ]
  %3179 = getelementptr inbounds i8, ptr %3177, i64 -1
  %3180 = load i8, ptr %3179, align 1, !tbaa !55
  %3181 = icmp sgt i8 %3180, -1
  br i1 %3181, label %3182, label %3184

3182:                                             ; preds = %3176
  %3183 = getelementptr inbounds i8, ptr %3178, i64 1
  store i8 %3180, ptr %3178, align 1, !tbaa !55
  br label %3190

3184:                                             ; preds = %3176
  %3185 = lshr i8 %3180, 6
  %3186 = or disjoint i8 %3185, -64
  %3187 = getelementptr inbounds i8, ptr %3178, i64 1
  store i8 %3186, ptr %3178, align 1, !tbaa !55
  %3188 = and i8 %3180, -65
  %3189 = getelementptr inbounds i8, ptr %3178, i64 2
  store i8 %3188, ptr %3187, align 1, !tbaa !55
  br label %3190

3190:                                             ; preds = %3184, %3182
  %3191 = phi ptr [ %3183, %3182 ], [ %3189, %3184 ]
  %3192 = icmp ugt ptr %3179, %31
  br i1 %3192, label %3176, label %3226, !llvm.loop !209

3193:                                             ; preds = %3173, %3207
  %3194 = phi i64 [ %3209, %3207 ], [ 0, %3173 ]
  %3195 = phi ptr [ %3208, %3207 ], [ %3148, %3173 ]
  %3196 = getelementptr inbounds i8, ptr %31, i64 %3194
  %3197 = load i8, ptr %3196, align 1, !tbaa !55
  %3198 = icmp sgt i8 %3197, -1
  br i1 %3198, label %3199, label %3201

3199:                                             ; preds = %3193
  %3200 = getelementptr inbounds i8, ptr %3195, i64 1
  store i8 %3197, ptr %3195, align 1, !tbaa !55
  br label %3207

3201:                                             ; preds = %3193
  %3202 = lshr i8 %3197, 6
  %3203 = or disjoint i8 %3202, -64
  %3204 = getelementptr inbounds i8, ptr %3195, i64 1
  store i8 %3203, ptr %3195, align 1, !tbaa !55
  %3205 = and i8 %3197, -65
  %3206 = getelementptr inbounds i8, ptr %3195, i64 2
  store i8 %3205, ptr %3204, align 1, !tbaa !55
  br label %3207

3207:                                             ; preds = %3201, %3199
  %3208 = phi ptr [ %3200, %3199 ], [ %3206, %3201 ]
  %3209 = add nuw nsw i64 %3194, 1
  %3210 = icmp eq i64 %3209, 8
  br i1 %3210, label %3226, label %3193, !llvm.loop !207

3211:                                             ; preds = %3171
  br i1 %183, label %3212, label %3223, !prof !234

3212:                                             ; preds = %3211
  %3213 = getelementptr inbounds i8, ptr %3148, i64 8
  br label %3214

3214:                                             ; preds = %3212, %3214
  %3215 = phi i64 [ 8, %3212 ], [ %3218, %3214 ]
  %3216 = phi ptr [ %3213, %3212 ], [ %3221, %3214 ]
  %3217 = phi ptr [ %31, %3212 ], [ %3219, %3214 ]
  %3218 = add nsw i64 %3215, -1
  %3219 = getelementptr inbounds i8, ptr %3217, i64 1
  %3220 = load i8, ptr %3217, align 1, !tbaa !55
  %3221 = getelementptr inbounds i8, ptr %3216, i64 -1
  store i8 %3220, ptr %3221, align 1, !tbaa !55
  %3222 = icmp eq i64 %3218, 0
  br i1 %3222, label %3224, label %3214, !llvm.loop !132

3223:                                             ; preds = %3211
  store i64 %3172, ptr %3148, align 1
  br label %3224

3224:                                             ; preds = %3214, %3223
  %3225 = getelementptr inbounds i8, ptr %3148, i64 8
  br label %3226

3226:                                             ; preds = %3207, %3190, %3224
  %3227 = phi ptr [ %3225, %3224 ], [ %3191, %3190 ], [ %3208, %3207 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %31) #11
  %3228 = icmp sgt i32 %3145, 1
  br i1 %3228, label %3144, label %3930, !prof !235, !llvm.loop !236

3229:                                             ; preds = %215, %3310
  %3230 = phi i32 [ %97, %215 ], [ %3234, %3310 ]
  %3231 = phi ptr [ %77, %215 ], [ %3243, %3310 ]
  %3232 = phi i32 [ %78, %215 ], [ %3242, %3310 ]
  %3233 = phi ptr [ %129, %215 ], [ %3311, %3310 ]
  %3234 = add nsw i32 %3230, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %32) #11
  br i1 %217, label %3235, label %3241

3235:                                             ; preds = %3229
  %3236 = icmp sgt i32 %3232, 0
  br i1 %3236, label %3237, label %3241

3237:                                             ; preds = %3235
  %3238 = add nsw i32 %3232, -1
  %3239 = getelementptr inbounds ptr, ptr %3231, i64 1
  %3240 = load ptr, ptr %3231, align 8, !tbaa !76
  br label %3241

3241:                                             ; preds = %3229, %3237, %3235
  %3242 = phi i32 [ %3238, %3237 ], [ %3232, %3235 ], [ %3232, %3229 ]
  %3243 = phi ptr [ %3239, %3237 ], [ %3231, %3235 ], [ %3231, %3229 ]
  %3244 = phi ptr [ %3240, %3237 ], [ @PL_sv_no, %3235 ], [ %181, %3229 ]
  %3245 = call fastcc ptr @S_sv_check_infnan(ptr noundef %3244, i32 noundef %80)
  %3246 = getelementptr inbounds %struct.sv, ptr %3245, i64 0, i32 2
  %3247 = load i32, ptr %3246, align 4, !tbaa !111
  %3248 = and i32 %3247, 256
  %3249 = icmp eq i32 %3248, 0
  br i1 %3249, label %3254, label %3250

3250:                                             ; preds = %3241
  %3251 = load ptr, ptr %3245, align 8, !tbaa !119
  %3252 = getelementptr inbounds %struct.xpvuv, ptr %3251, i64 0, i32 4
  %3253 = load i64, ptr %3252, align 8, !tbaa !55
  br label %3256

3254:                                             ; preds = %3241
  %3255 = call i64 @Perl_sv_2uv_flags(ptr noundef %3245, i32 noundef 0) #11
  br label %3256

3256:                                             ; preds = %3254, %3250
  %3257 = phi i64 [ %3253, %3250 ], [ %3255, %3254 ]
  %3258 = trunc i64 %3257 to i32
  store i32 %3258, ptr %32, align 4, !tbaa !92
  br i1 %219, label %3295, label %3259

3259:                                             ; preds = %3256
  br i1 %183, label %3260, label %3277

3260:                                             ; preds = %3259, %3274
  %3261 = phi ptr [ %3263, %3274 ], [ %216, %3259 ]
  %3262 = phi ptr [ %3275, %3274 ], [ %3233, %3259 ]
  %3263 = getelementptr inbounds i8, ptr %3261, i64 -1
  %3264 = load i8, ptr %3263, align 1, !tbaa !55
  %3265 = icmp sgt i8 %3264, -1
  br i1 %3265, label %3266, label %3268

3266:                                             ; preds = %3260
  %3267 = getelementptr inbounds i8, ptr %3262, i64 1
  store i8 %3264, ptr %3262, align 1, !tbaa !55
  br label %3274

3268:                                             ; preds = %3260
  %3269 = lshr i8 %3264, 6
  %3270 = or disjoint i8 %3269, -64
  %3271 = getelementptr inbounds i8, ptr %3262, i64 1
  store i8 %3270, ptr %3262, align 1, !tbaa !55
  %3272 = and i8 %3264, -65
  %3273 = getelementptr inbounds i8, ptr %3262, i64 2
  store i8 %3272, ptr %3271, align 1, !tbaa !55
  br label %3274

3274:                                             ; preds = %3268, %3266
  %3275 = phi ptr [ %3267, %3266 ], [ %3273, %3268 ]
  %3276 = icmp ugt ptr %3263, %32
  br i1 %3276, label %3260, label %3310, !llvm.loop !209

3277:                                             ; preds = %3259, %3291
  %3278 = phi i64 [ %3293, %3291 ], [ 0, %3259 ]
  %3279 = phi ptr [ %3292, %3291 ], [ %3233, %3259 ]
  %3280 = getelementptr inbounds i8, ptr %32, i64 %3278
  %3281 = load i8, ptr %3280, align 1, !tbaa !55
  %3282 = icmp sgt i8 %3281, -1
  br i1 %3282, label %3283, label %3285

3283:                                             ; preds = %3277
  %3284 = getelementptr inbounds i8, ptr %3279, i64 1
  store i8 %3281, ptr %3279, align 1, !tbaa !55
  br label %3291

3285:                                             ; preds = %3277
  %3286 = lshr i8 %3281, 6
  %3287 = or disjoint i8 %3286, -64
  %3288 = getelementptr inbounds i8, ptr %3279, i64 1
  store i8 %3287, ptr %3279, align 1, !tbaa !55
  %3289 = and i8 %3281, -65
  %3290 = getelementptr inbounds i8, ptr %3279, i64 2
  store i8 %3289, ptr %3288, align 1, !tbaa !55
  br label %3291

3291:                                             ; preds = %3285, %3283
  %3292 = phi ptr [ %3284, %3283 ], [ %3290, %3285 ]
  %3293 = add nuw nsw i64 %3278, 1
  %3294 = icmp eq i64 %3293, 4
  br i1 %3294, label %3310, label %3277, !llvm.loop !207

3295:                                             ; preds = %3256
  br i1 %183, label %3296, label %3307

3296:                                             ; preds = %3295
  %3297 = getelementptr inbounds i8, ptr %3233, i64 4
  br label %3298

3298:                                             ; preds = %3296, %3298
  %3299 = phi i64 [ 4, %3296 ], [ %3302, %3298 ]
  %3300 = phi ptr [ %3297, %3296 ], [ %3305, %3298 ]
  %3301 = phi ptr [ %32, %3296 ], [ %3303, %3298 ]
  %3302 = add nsw i64 %3299, -1
  %3303 = getelementptr inbounds i8, ptr %3301, i64 1
  %3304 = load i8, ptr %3301, align 1, !tbaa !55
  %3305 = getelementptr inbounds i8, ptr %3300, i64 -1
  store i8 %3304, ptr %3305, align 1, !tbaa !55
  %3306 = icmp eq i64 %3302, 0
  br i1 %3306, label %3308, label %3298, !llvm.loop !132

3307:                                             ; preds = %3295
  store i32 %3258, ptr %3233, align 1
  br label %3308

3308:                                             ; preds = %3298, %3307
  %3309 = getelementptr inbounds i8, ptr %3233, i64 4
  br label %3310

3310:                                             ; preds = %3291, %3274, %3308
  %3311 = phi ptr [ %3309, %3308 ], [ %3275, %3274 ], [ %3292, %3291 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %32) #11
  %3312 = icmp sgt i32 %3230, 1
  br i1 %3312, label %3229, label %3930, !llvm.loop !237

3313:                                             ; preds = %208, %3393
  %3314 = phi i32 [ %97, %208 ], [ %3318, %3393 ]
  %3315 = phi ptr [ %77, %208 ], [ %3327, %3393 ]
  %3316 = phi i32 [ %78, %208 ], [ %3326, %3393 ]
  %3317 = phi ptr [ %129, %208 ], [ %3394, %3393 ]
  %3318 = add nsw i32 %3314, -1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %33) #11
  br i1 %210, label %3319, label %3325

3319:                                             ; preds = %3313
  %3320 = icmp sgt i32 %3316, 0
  br i1 %3320, label %3321, label %3325

3321:                                             ; preds = %3319
  %3322 = add nsw i32 %3316, -1
  %3323 = getelementptr inbounds ptr, ptr %3315, i64 1
  %3324 = load ptr, ptr %3315, align 8, !tbaa !76
  br label %3325

3325:                                             ; preds = %3313, %3321, %3319
  %3326 = phi i32 [ %3322, %3321 ], [ %3316, %3319 ], [ %3316, %3313 ]
  %3327 = phi ptr [ %3323, %3321 ], [ %3315, %3319 ], [ %3315, %3313 ]
  %3328 = phi ptr [ %3324, %3321 ], [ @PL_sv_no, %3319 ], [ %181, %3313 ]
  %3329 = call fastcc ptr @S_sv_check_infnan(ptr noundef %3328, i32 noundef %80)
  %3330 = getelementptr inbounds %struct.sv, ptr %3329, i64 0, i32 2
  %3331 = load i32, ptr %3330, align 4, !tbaa !111
  %3332 = and i32 %3331, 256
  %3333 = icmp eq i32 %3332, 0
  br i1 %3333, label %3338, label %3334

3334:                                             ; preds = %3325
  %3335 = load ptr, ptr %3329, align 8, !tbaa !119
  %3336 = getelementptr inbounds %struct.xpviv, ptr %3335, i64 0, i32 4
  %3337 = load i64, ptr %3336, align 8, !tbaa !55
  br label %3340

3338:                                             ; preds = %3325
  %3339 = call i64 @Perl_sv_2iv_flags(ptr noundef %3329, i32 noundef 0) #11
  br label %3340

3340:                                             ; preds = %3338, %3334
  %3341 = phi i64 [ %3337, %3334 ], [ %3339, %3338 ]
  store i64 %3341, ptr %33, align 8, !tbaa !63
  br i1 %212, label %3378, label %3342

3342:                                             ; preds = %3340
  br i1 %183, label %3343, label %3360

3343:                                             ; preds = %3342, %3357
  %3344 = phi ptr [ %3346, %3357 ], [ %209, %3342 ]
  %3345 = phi ptr [ %3358, %3357 ], [ %3317, %3342 ]
  %3346 = getelementptr inbounds i8, ptr %3344, i64 -1
  %3347 = load i8, ptr %3346, align 1, !tbaa !55
  %3348 = icmp sgt i8 %3347, -1
  br i1 %3348, label %3349, label %3351

3349:                                             ; preds = %3343
  %3350 = getelementptr inbounds i8, ptr %3345, i64 1
  store i8 %3347, ptr %3345, align 1, !tbaa !55
  br label %3357

3351:                                             ; preds = %3343
  %3352 = lshr i8 %3347, 6
  %3353 = or disjoint i8 %3352, -64
  %3354 = getelementptr inbounds i8, ptr %3345, i64 1
  store i8 %3353, ptr %3345, align 1, !tbaa !55
  %3355 = and i8 %3347, -65
  %3356 = getelementptr inbounds i8, ptr %3345, i64 2
  store i8 %3355, ptr %3354, align 1, !tbaa !55
  br label %3357

3357:                                             ; preds = %3351, %3349
  %3358 = phi ptr [ %3350, %3349 ], [ %3356, %3351 ]
  %3359 = icmp ugt ptr %3346, %33
  br i1 %3359, label %3343, label %3393, !llvm.loop !209

3360:                                             ; preds = %3342, %3374
  %3361 = phi i64 [ %3376, %3374 ], [ 0, %3342 ]
  %3362 = phi ptr [ %3375, %3374 ], [ %3317, %3342 ]
  %3363 = getelementptr inbounds i8, ptr %33, i64 %3361
  %3364 = load i8, ptr %3363, align 1, !tbaa !55
  %3365 = icmp sgt i8 %3364, -1
  br i1 %3365, label %3366, label %3368

3366:                                             ; preds = %3360
  %3367 = getelementptr inbounds i8, ptr %3362, i64 1
  store i8 %3364, ptr %3362, align 1, !tbaa !55
  br label %3374

3368:                                             ; preds = %3360
  %3369 = lshr i8 %3364, 6
  %3370 = or disjoint i8 %3369, -64
  %3371 = getelementptr inbounds i8, ptr %3362, i64 1
  store i8 %3370, ptr %3362, align 1, !tbaa !55
  %3372 = and i8 %3364, -65
  %3373 = getelementptr inbounds i8, ptr %3362, i64 2
  store i8 %3372, ptr %3371, align 1, !tbaa !55
  br label %3374

3374:                                             ; preds = %3368, %3366
  %3375 = phi ptr [ %3367, %3366 ], [ %3373, %3368 ]
  %3376 = add nuw nsw i64 %3361, 1
  %3377 = icmp eq i64 %3376, 8
  br i1 %3377, label %3393, label %3360, !llvm.loop !207

3378:                                             ; preds = %3340
  br i1 %183, label %3379, label %3390

3379:                                             ; preds = %3378
  %3380 = getelementptr inbounds i8, ptr %3317, i64 8
  br label %3381

3381:                                             ; preds = %3379, %3381
  %3382 = phi i64 [ 8, %3379 ], [ %3385, %3381 ]
  %3383 = phi ptr [ %3380, %3379 ], [ %3388, %3381 ]
  %3384 = phi ptr [ %33, %3379 ], [ %3386, %3381 ]
  %3385 = add nsw i64 %3382, -1
  %3386 = getelementptr inbounds i8, ptr %3384, i64 1
  %3387 = load i8, ptr %3384, align 1, !tbaa !55
  %3388 = getelementptr inbounds i8, ptr %3383, i64 -1
  store i8 %3387, ptr %3388, align 1, !tbaa !55
  %3389 = icmp eq i64 %3385, 0
  br i1 %3389, label %3391, label %3381, !llvm.loop !132

3390:                                             ; preds = %3378
  store i64 %3341, ptr %3317, align 1
  br label %3391

3391:                                             ; preds = %3381, %3390
  %3392 = getelementptr inbounds i8, ptr %3317, i64 8
  br label %3393

3393:                                             ; preds = %3374, %3357, %3391
  %3394 = phi ptr [ %3392, %3391 ], [ %3358, %3357 ], [ %3375, %3374 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %33) #11
  %3395 = icmp sgt i32 %3314, 1
  br i1 %3395, label %3313, label %3930, !llvm.loop !238

3396:                                             ; preds = %201, %3477
  %3397 = phi i32 [ %97, %201 ], [ %3401, %3477 ]
  %3398 = phi ptr [ %77, %201 ], [ %3410, %3477 ]
  %3399 = phi i32 [ %78, %201 ], [ %3409, %3477 ]
  %3400 = phi ptr [ %129, %201 ], [ %3478, %3477 ]
  %3401 = add nsw i32 %3397, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %34) #11
  br i1 %203, label %3402, label %3408

3402:                                             ; preds = %3396
  %3403 = icmp sgt i32 %3399, 0
  br i1 %3403, label %3404, label %3408

3404:                                             ; preds = %3402
  %3405 = add nsw i32 %3399, -1
  %3406 = getelementptr inbounds ptr, ptr %3398, i64 1
  %3407 = load ptr, ptr %3398, align 8, !tbaa !76
  br label %3408

3408:                                             ; preds = %3396, %3404, %3402
  %3409 = phi i32 [ %3405, %3404 ], [ %3399, %3402 ], [ %3399, %3396 ]
  %3410 = phi ptr [ %3406, %3404 ], [ %3398, %3402 ], [ %3398, %3396 ]
  %3411 = phi ptr [ %3407, %3404 ], [ @PL_sv_no, %3402 ], [ %181, %3396 ]
  %3412 = call fastcc ptr @S_sv_check_infnan(ptr noundef %3411, i32 noundef %80)
  %3413 = getelementptr inbounds %struct.sv, ptr %3412, i64 0, i32 2
  %3414 = load i32, ptr %3413, align 4, !tbaa !111
  %3415 = and i32 %3414, 256
  %3416 = icmp eq i32 %3415, 0
  br i1 %3416, label %3421, label %3417

3417:                                             ; preds = %3408
  %3418 = load ptr, ptr %3412, align 8, !tbaa !119
  %3419 = getelementptr inbounds %struct.xpviv, ptr %3418, i64 0, i32 4
  %3420 = load i64, ptr %3419, align 8, !tbaa !55
  br label %3423

3421:                                             ; preds = %3408
  %3422 = call i64 @Perl_sv_2iv_flags(ptr noundef %3412, i32 noundef 0) #11
  br label %3423

3423:                                             ; preds = %3421, %3417
  %3424 = phi i64 [ %3420, %3417 ], [ %3422, %3421 ]
  %3425 = trunc i64 %3424 to i32
  store i32 %3425, ptr %34, align 4, !tbaa !92
  br i1 %205, label %3462, label %3426

3426:                                             ; preds = %3423
  br i1 %183, label %3427, label %3444

3427:                                             ; preds = %3426, %3441
  %3428 = phi ptr [ %3430, %3441 ], [ %202, %3426 ]
  %3429 = phi ptr [ %3442, %3441 ], [ %3400, %3426 ]
  %3430 = getelementptr inbounds i8, ptr %3428, i64 -1
  %3431 = load i8, ptr %3430, align 1, !tbaa !55
  %3432 = icmp sgt i8 %3431, -1
  br i1 %3432, label %3433, label %3435

3433:                                             ; preds = %3427
  %3434 = getelementptr inbounds i8, ptr %3429, i64 1
  store i8 %3431, ptr %3429, align 1, !tbaa !55
  br label %3441

3435:                                             ; preds = %3427
  %3436 = lshr i8 %3431, 6
  %3437 = or disjoint i8 %3436, -64
  %3438 = getelementptr inbounds i8, ptr %3429, i64 1
  store i8 %3437, ptr %3429, align 1, !tbaa !55
  %3439 = and i8 %3431, -65
  %3440 = getelementptr inbounds i8, ptr %3429, i64 2
  store i8 %3439, ptr %3438, align 1, !tbaa !55
  br label %3441

3441:                                             ; preds = %3435, %3433
  %3442 = phi ptr [ %3434, %3433 ], [ %3440, %3435 ]
  %3443 = icmp ugt ptr %3430, %34
  br i1 %3443, label %3427, label %3477, !llvm.loop !209

3444:                                             ; preds = %3426, %3458
  %3445 = phi i64 [ %3460, %3458 ], [ 0, %3426 ]
  %3446 = phi ptr [ %3459, %3458 ], [ %3400, %3426 ]
  %3447 = getelementptr inbounds i8, ptr %34, i64 %3445
  %3448 = load i8, ptr %3447, align 1, !tbaa !55
  %3449 = icmp sgt i8 %3448, -1
  br i1 %3449, label %3450, label %3452

3450:                                             ; preds = %3444
  %3451 = getelementptr inbounds i8, ptr %3446, i64 1
  store i8 %3448, ptr %3446, align 1, !tbaa !55
  br label %3458

3452:                                             ; preds = %3444
  %3453 = lshr i8 %3448, 6
  %3454 = or disjoint i8 %3453, -64
  %3455 = getelementptr inbounds i8, ptr %3446, i64 1
  store i8 %3454, ptr %3446, align 1, !tbaa !55
  %3456 = and i8 %3448, -65
  %3457 = getelementptr inbounds i8, ptr %3446, i64 2
  store i8 %3456, ptr %3455, align 1, !tbaa !55
  br label %3458

3458:                                             ; preds = %3452, %3450
  %3459 = phi ptr [ %3451, %3450 ], [ %3457, %3452 ]
  %3460 = add nuw nsw i64 %3445, 1
  %3461 = icmp eq i64 %3460, 4
  br i1 %3461, label %3477, label %3444, !llvm.loop !207

3462:                                             ; preds = %3423
  br i1 %183, label %3463, label %3474

3463:                                             ; preds = %3462
  %3464 = getelementptr inbounds i8, ptr %3400, i64 4
  br label %3465

3465:                                             ; preds = %3463, %3465
  %3466 = phi i64 [ 4, %3463 ], [ %3469, %3465 ]
  %3467 = phi ptr [ %3464, %3463 ], [ %3472, %3465 ]
  %3468 = phi ptr [ %34, %3463 ], [ %3470, %3465 ]
  %3469 = add nsw i64 %3466, -1
  %3470 = getelementptr inbounds i8, ptr %3468, i64 1
  %3471 = load i8, ptr %3468, align 1, !tbaa !55
  %3472 = getelementptr inbounds i8, ptr %3467, i64 -1
  store i8 %3471, ptr %3472, align 1, !tbaa !55
  %3473 = icmp eq i64 %3469, 0
  br i1 %3473, label %3475, label %3465, !llvm.loop !132

3474:                                             ; preds = %3462
  store i32 %3425, ptr %3400, align 1
  br label %3475

3475:                                             ; preds = %3465, %3474
  %3476 = getelementptr inbounds i8, ptr %3400, i64 4
  br label %3477

3477:                                             ; preds = %3458, %3441, %3475
  %3478 = phi ptr [ %3476, %3475 ], [ %3442, %3441 ], [ %3459, %3458 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %34) #11
  %3479 = icmp sgt i32 %3397, 1
  br i1 %3479, label %3396, label %3930, !llvm.loop !239

3480:                                             ; preds = %194, %3560
  %3481 = phi i32 [ %97, %194 ], [ %3485, %3560 ]
  %3482 = phi ptr [ %77, %194 ], [ %3494, %3560 ]
  %3483 = phi i32 [ %78, %194 ], [ %3493, %3560 ]
  %3484 = phi ptr [ %129, %194 ], [ %3561, %3560 ]
  %3485 = add nsw i32 %3481, -1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %35) #11
  br i1 %196, label %3486, label %3492

3486:                                             ; preds = %3480
  %3487 = icmp sgt i32 %3483, 0
  br i1 %3487, label %3488, label %3492

3488:                                             ; preds = %3486
  %3489 = add nsw i32 %3483, -1
  %3490 = getelementptr inbounds ptr, ptr %3482, i64 1
  %3491 = load ptr, ptr %3482, align 8, !tbaa !76
  br label %3492

3492:                                             ; preds = %3480, %3488, %3486
  %3493 = phi i32 [ %3489, %3488 ], [ %3483, %3486 ], [ %3483, %3480 ]
  %3494 = phi ptr [ %3490, %3488 ], [ %3482, %3486 ], [ %3482, %3480 ]
  %3495 = phi ptr [ %3491, %3488 ], [ @PL_sv_no, %3486 ], [ %181, %3480 ]
  %3496 = call fastcc ptr @S_sv_check_infnan(ptr noundef %3495, i32 noundef %80)
  %3497 = getelementptr inbounds %struct.sv, ptr %3496, i64 0, i32 2
  %3498 = load i32, ptr %3497, align 4, !tbaa !111
  %3499 = and i32 %3498, 256
  %3500 = icmp eq i32 %3499, 0
  br i1 %3500, label %3505, label %3501

3501:                                             ; preds = %3492
  %3502 = load ptr, ptr %3496, align 8, !tbaa !119
  %3503 = getelementptr inbounds %struct.xpvuv, ptr %3502, i64 0, i32 4
  %3504 = load i64, ptr %3503, align 8, !tbaa !55
  br label %3507

3505:                                             ; preds = %3492
  %3506 = call i64 @Perl_sv_2uv_flags(ptr noundef %3496, i32 noundef 0) #11
  br label %3507

3507:                                             ; preds = %3505, %3501
  %3508 = phi i64 [ %3504, %3501 ], [ %3506, %3505 ]
  store i64 %3508, ptr %35, align 8, !tbaa !63
  br i1 %198, label %3545, label %3509

3509:                                             ; preds = %3507
  br i1 %183, label %3510, label %3527

3510:                                             ; preds = %3509, %3524
  %3511 = phi ptr [ %3513, %3524 ], [ %195, %3509 ]
  %3512 = phi ptr [ %3525, %3524 ], [ %3484, %3509 ]
  %3513 = getelementptr inbounds i8, ptr %3511, i64 -1
  %3514 = load i8, ptr %3513, align 1, !tbaa !55
  %3515 = icmp sgt i8 %3514, -1
  br i1 %3515, label %3516, label %3518

3516:                                             ; preds = %3510
  %3517 = getelementptr inbounds i8, ptr %3512, i64 1
  store i8 %3514, ptr %3512, align 1, !tbaa !55
  br label %3524

3518:                                             ; preds = %3510
  %3519 = lshr i8 %3514, 6
  %3520 = or disjoint i8 %3519, -64
  %3521 = getelementptr inbounds i8, ptr %3512, i64 1
  store i8 %3520, ptr %3512, align 1, !tbaa !55
  %3522 = and i8 %3514, -65
  %3523 = getelementptr inbounds i8, ptr %3512, i64 2
  store i8 %3522, ptr %3521, align 1, !tbaa !55
  br label %3524

3524:                                             ; preds = %3518, %3516
  %3525 = phi ptr [ %3517, %3516 ], [ %3523, %3518 ]
  %3526 = icmp ugt ptr %3513, %35
  br i1 %3526, label %3510, label %3560, !llvm.loop !209

3527:                                             ; preds = %3509, %3541
  %3528 = phi i64 [ %3543, %3541 ], [ 0, %3509 ]
  %3529 = phi ptr [ %3542, %3541 ], [ %3484, %3509 ]
  %3530 = getelementptr inbounds i8, ptr %35, i64 %3528
  %3531 = load i8, ptr %3530, align 1, !tbaa !55
  %3532 = icmp sgt i8 %3531, -1
  br i1 %3532, label %3533, label %3535

3533:                                             ; preds = %3527
  %3534 = getelementptr inbounds i8, ptr %3529, i64 1
  store i8 %3531, ptr %3529, align 1, !tbaa !55
  br label %3541

3535:                                             ; preds = %3527
  %3536 = lshr i8 %3531, 6
  %3537 = or disjoint i8 %3536, -64
  %3538 = getelementptr inbounds i8, ptr %3529, i64 1
  store i8 %3537, ptr %3529, align 1, !tbaa !55
  %3539 = and i8 %3531, -65
  %3540 = getelementptr inbounds i8, ptr %3529, i64 2
  store i8 %3539, ptr %3538, align 1, !tbaa !55
  br label %3541

3541:                                             ; preds = %3535, %3533
  %3542 = phi ptr [ %3534, %3533 ], [ %3540, %3535 ]
  %3543 = add nuw nsw i64 %3528, 1
  %3544 = icmp eq i64 %3543, 8
  br i1 %3544, label %3560, label %3527, !llvm.loop !207

3545:                                             ; preds = %3507
  br i1 %183, label %3546, label %3557

3546:                                             ; preds = %3545
  %3547 = getelementptr inbounds i8, ptr %3484, i64 8
  br label %3548

3548:                                             ; preds = %3546, %3548
  %3549 = phi i64 [ 8, %3546 ], [ %3552, %3548 ]
  %3550 = phi ptr [ %3547, %3546 ], [ %3555, %3548 ]
  %3551 = phi ptr [ %35, %3546 ], [ %3553, %3548 ]
  %3552 = add nsw i64 %3549, -1
  %3553 = getelementptr inbounds i8, ptr %3551, i64 1
  %3554 = load i8, ptr %3551, align 1, !tbaa !55
  %3555 = getelementptr inbounds i8, ptr %3550, i64 -1
  store i8 %3554, ptr %3555, align 1, !tbaa !55
  %3556 = icmp eq i64 %3552, 0
  br i1 %3556, label %3558, label %3548, !llvm.loop !132

3557:                                             ; preds = %3545
  store i64 %3508, ptr %3484, align 1
  br label %3558

3558:                                             ; preds = %3548, %3557
  %3559 = getelementptr inbounds i8, ptr %3484, i64 8
  br label %3560

3560:                                             ; preds = %3541, %3524, %3558
  %3561 = phi ptr [ %3559, %3558 ], [ %3525, %3524 ], [ %3542, %3541 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %35) #11
  %3562 = icmp sgt i32 %3481, 1
  br i1 %3562, label %3480, label %3930, !llvm.loop !240

3563:                                             ; preds = %187, %3643
  %3564 = phi i32 [ %97, %187 ], [ %3568, %3643 ]
  %3565 = phi ptr [ %77, %187 ], [ %3577, %3643 ]
  %3566 = phi i32 [ %78, %187 ], [ %3576, %3643 ]
  %3567 = phi ptr [ %129, %187 ], [ %3644, %3643 ]
  %3568 = add nsw i32 %3564, -1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %36) #11
  br i1 %189, label %3569, label %3575

3569:                                             ; preds = %3563
  %3570 = icmp sgt i32 %3566, 0
  br i1 %3570, label %3571, label %3575

3571:                                             ; preds = %3569
  %3572 = add nsw i32 %3566, -1
  %3573 = getelementptr inbounds ptr, ptr %3565, i64 1
  %3574 = load ptr, ptr %3565, align 8, !tbaa !76
  br label %3575

3575:                                             ; preds = %3563, %3571, %3569
  %3576 = phi i32 [ %3572, %3571 ], [ %3566, %3569 ], [ %3566, %3563 ]
  %3577 = phi ptr [ %3573, %3571 ], [ %3565, %3569 ], [ %3565, %3563 ]
  %3578 = phi ptr [ %3574, %3571 ], [ @PL_sv_no, %3569 ], [ %181, %3563 ]
  %3579 = call fastcc ptr @S_sv_check_infnan(ptr noundef %3578, i32 noundef %80)
  %3580 = getelementptr inbounds %struct.sv, ptr %3579, i64 0, i32 2
  %3581 = load i32, ptr %3580, align 4, !tbaa !111
  %3582 = and i32 %3581, 256
  %3583 = icmp eq i32 %3582, 0
  br i1 %3583, label %3588, label %3584

3584:                                             ; preds = %3575
  %3585 = load ptr, ptr %3579, align 8, !tbaa !119
  %3586 = getelementptr inbounds %struct.xpviv, ptr %3585, i64 0, i32 4
  %3587 = load i64, ptr %3586, align 8, !tbaa !55
  br label %3590

3588:                                             ; preds = %3575
  %3589 = call i64 @Perl_sv_2iv_flags(ptr noundef %3579, i32 noundef 0) #11
  br label %3590

3590:                                             ; preds = %3588, %3584
  %3591 = phi i64 [ %3587, %3584 ], [ %3589, %3588 ]
  store i64 %3591, ptr %36, align 8, !tbaa !63
  br i1 %191, label %3628, label %3592

3592:                                             ; preds = %3590
  br i1 %183, label %3593, label %3610

3593:                                             ; preds = %3592, %3607
  %3594 = phi ptr [ %3596, %3607 ], [ %188, %3592 ]
  %3595 = phi ptr [ %3608, %3607 ], [ %3567, %3592 ]
  %3596 = getelementptr inbounds i8, ptr %3594, i64 -1
  %3597 = load i8, ptr %3596, align 1, !tbaa !55
  %3598 = icmp sgt i8 %3597, -1
  br i1 %3598, label %3599, label %3601

3599:                                             ; preds = %3593
  %3600 = getelementptr inbounds i8, ptr %3595, i64 1
  store i8 %3597, ptr %3595, align 1, !tbaa !55
  br label %3607

3601:                                             ; preds = %3593
  %3602 = lshr i8 %3597, 6
  %3603 = or disjoint i8 %3602, -64
  %3604 = getelementptr inbounds i8, ptr %3595, i64 1
  store i8 %3603, ptr %3595, align 1, !tbaa !55
  %3605 = and i8 %3597, -65
  %3606 = getelementptr inbounds i8, ptr %3595, i64 2
  store i8 %3605, ptr %3604, align 1, !tbaa !55
  br label %3607

3607:                                             ; preds = %3601, %3599
  %3608 = phi ptr [ %3600, %3599 ], [ %3606, %3601 ]
  %3609 = icmp ugt ptr %3596, %36
  br i1 %3609, label %3593, label %3643, !llvm.loop !209

3610:                                             ; preds = %3592, %3624
  %3611 = phi i64 [ %3626, %3624 ], [ 0, %3592 ]
  %3612 = phi ptr [ %3625, %3624 ], [ %3567, %3592 ]
  %3613 = getelementptr inbounds i8, ptr %36, i64 %3611
  %3614 = load i8, ptr %3613, align 1, !tbaa !55
  %3615 = icmp sgt i8 %3614, -1
  br i1 %3615, label %3616, label %3618

3616:                                             ; preds = %3610
  %3617 = getelementptr inbounds i8, ptr %3612, i64 1
  store i8 %3614, ptr %3612, align 1, !tbaa !55
  br label %3624

3618:                                             ; preds = %3610
  %3619 = lshr i8 %3614, 6
  %3620 = or disjoint i8 %3619, -64
  %3621 = getelementptr inbounds i8, ptr %3612, i64 1
  store i8 %3620, ptr %3612, align 1, !tbaa !55
  %3622 = and i8 %3614, -65
  %3623 = getelementptr inbounds i8, ptr %3612, i64 2
  store i8 %3622, ptr %3621, align 1, !tbaa !55
  br label %3624

3624:                                             ; preds = %3618, %3616
  %3625 = phi ptr [ %3617, %3616 ], [ %3623, %3618 ]
  %3626 = add nuw nsw i64 %3611, 1
  %3627 = icmp eq i64 %3626, 8
  br i1 %3627, label %3643, label %3610, !llvm.loop !207

3628:                                             ; preds = %3590
  br i1 %183, label %3629, label %3640

3629:                                             ; preds = %3628
  %3630 = getelementptr inbounds i8, ptr %3567, i64 8
  br label %3631

3631:                                             ; preds = %3629, %3631
  %3632 = phi i64 [ 8, %3629 ], [ %3635, %3631 ]
  %3633 = phi ptr [ %3630, %3629 ], [ %3638, %3631 ]
  %3634 = phi ptr [ %36, %3629 ], [ %3636, %3631 ]
  %3635 = add nsw i64 %3632, -1
  %3636 = getelementptr inbounds i8, ptr %3634, i64 1
  %3637 = load i8, ptr %3634, align 1, !tbaa !55
  %3638 = getelementptr inbounds i8, ptr %3633, i64 -1
  store i8 %3637, ptr %3638, align 1, !tbaa !55
  %3639 = icmp eq i64 %3635, 0
  br i1 %3639, label %3641, label %3631, !llvm.loop !132

3640:                                             ; preds = %3628
  store i64 %3591, ptr %3567, align 1
  br label %3641

3641:                                             ; preds = %3631, %3640
  %3642 = getelementptr inbounds i8, ptr %3567, i64 8
  br label %3643

3643:                                             ; preds = %3624, %3607, %3641
  %3644 = phi ptr [ %3642, %3641 ], [ %3608, %3607 ], [ %3625, %3624 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %36) #11
  %3645 = icmp sgt i32 %3564, 1
  br i1 %3645, label %3563, label %3930, !llvm.loop !241

3646:                                             ; preds = %180
  %3647 = and i8 %79, 1
  %3648 = icmp eq i8 %3647, 0
  %3649 = select i1 %3648, i64 8, i64 16
  %3650 = getelementptr inbounds i8, ptr %129, i64 %3649
  %3651 = load ptr, ptr %0, align 8, !tbaa !119
  %3652 = getelementptr inbounds %struct.xpv, ptr %3651, i64 0, i32 3
  %3653 = load i64, ptr %3652, align 8, !tbaa !55
  %3654 = getelementptr inbounds i8, ptr %130, i64 %3653
  %3655 = icmp ult ptr %3650, %3654
  br i1 %3655, label %3662, label %3656

3656:                                             ; preds = %3646
  %3657 = call fastcc ptr @S_sv_exp_grow(ptr noundef nonnull %0, i64 noundef %3649)
  %3658 = load ptr, ptr %0, align 8, !tbaa !119
  %3659 = getelementptr inbounds %struct.xpv, ptr %3658, i64 0, i32 2
  %3660 = load i64, ptr %3659, align 8, !tbaa !120
  %3661 = getelementptr inbounds i8, ptr %3657, i64 %3660
  br label %3662

3662:                                             ; preds = %3646, %3656, %180
  %3663 = phi ptr [ %129, %180 ], [ %3661, %3656 ], [ %129, %3646 ]
  %3664 = phi ptr [ %130, %180 ], [ %3657, %3656 ], [ %130, %3646 ]
  %3665 = phi i32 [ %97, %180 ], [ 1, %3656 ], [ 1, %3646 ]
  %3666 = icmp sgt i32 %3665, 0
  br i1 %3666, label %3667, label %3930

3667:                                             ; preds = %3662
  %3668 = getelementptr inbounds i8, ptr %37, i64 8
  %3669 = icmp eq ptr %181, null
  %3670 = and i8 %79, 1
  %3671 = icmp eq i8 %3670, 0
  br label %3672

3672:                                             ; preds = %3667, %3781
  %3673 = phi i32 [ %3665, %3667 ], [ %3677, %3781 ]
  %3674 = phi ptr [ %77, %3667 ], [ %3686, %3781 ]
  %3675 = phi i32 [ %78, %3667 ], [ %3685, %3781 ]
  %3676 = phi ptr [ %3663, %3667 ], [ %3782, %3781 ]
  %3677 = add nsw i32 %3673, -1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %37) #11
  br i1 %3669, label %3678, label %3684

3678:                                             ; preds = %3672
  %3679 = icmp sgt i32 %3675, 0
  br i1 %3679, label %3680, label %3684

3680:                                             ; preds = %3678
  %3681 = add nsw i32 %3675, -1
  %3682 = getelementptr inbounds ptr, ptr %3674, i64 1
  %3683 = load ptr, ptr %3674, align 8, !tbaa !76
  br label %3684

3684:                                             ; preds = %3672, %3680, %3678
  %3685 = phi i32 [ %3681, %3680 ], [ %3675, %3678 ], [ %3675, %3672 ]
  %3686 = phi ptr [ %3682, %3680 ], [ %3674, %3678 ], [ %3674, %3672 ]
  %3687 = phi ptr [ %3683, %3680 ], [ @PL_sv_no, %3678 ], [ %181, %3672 ]
  %3688 = getelementptr inbounds %struct.sv, ptr %3687, i64 0, i32 2
  %3689 = load i32, ptr %3688, align 4, !tbaa !111
  %3690 = and i32 %3689, 2097152
  %3691 = icmp eq i32 %3690, 0
  br i1 %3691, label %3694, label %3692

3692:                                             ; preds = %3684
  %3693 = call i32 @Perl_mg_get(ptr noundef %3687) #11
  br label %3694

3694:                                             ; preds = %3684, %3692
  %3695 = load i32, ptr %3688, align 4, !tbaa !111
  %3696 = and i32 %3695, 65280
  %3697 = icmp ne i32 %3696, 0
  %3698 = and i32 %3695, 255
  %3699 = icmp eq i32 %3698, 8
  %3700 = or i1 %3697, %3699
  %3701 = and i32 %3695, 16777471
  %3702 = icmp eq i32 %3701, 16777226
  %3703 = or i1 %3702, %3700
  br i1 %3703, label %3705, label %3704

3704:                                             ; preds = %3694
  store ptr null, ptr %37, align 8, !tbaa !76
  br label %3728

3705:                                             ; preds = %3694
  %3706 = and i32 %3695, 524288
  %3707 = icmp ne i32 %3706, 0
  %3708 = and i32 %3695, 134414336
  %3709 = icmp eq i32 %3708, 131072
  %3710 = or i1 %3707, %3709
  br i1 %3710, label %3711, label %3712

3711:                                             ; preds = %3705
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 16, ptr noundef nonnull @.str.57) #11
  br label %3712

3712:                                             ; preds = %3705, %3711
  %3713 = load i32, ptr %3688, align 4, !tbaa !111
  %3714 = and i32 %3713, 1792
  %3715 = icmp eq i32 %3714, 0
  br i1 %3715, label %3726, label %3716

3716:                                             ; preds = %3712
  %3717 = and i32 %3713, 2098176
  %3718 = icmp eq i32 %3717, 1024
  br i1 %3718, label %3719, label %3722

3719:                                             ; preds = %3716
  %3720 = getelementptr inbounds %struct.sv, ptr %3687, i64 0, i32 3
  %3721 = load ptr, ptr %3720, align 8, !tbaa !55
  br label %3724

3722:                                             ; preds = %3716
  %3723 = call ptr @Perl_sv_2pv_flags(ptr noundef %3687, ptr noundef null, i32 noundef 32) #11
  br label %3724

3724:                                             ; preds = %3722, %3719
  %3725 = phi ptr [ %3721, %3719 ], [ %3723, %3722 ]
  store ptr %3725, ptr %37, align 8, !tbaa !76
  br label %3728

3726:                                             ; preds = %3712
  %3727 = call ptr @Perl_sv_pvn_force_flags(ptr noundef %3687, ptr noundef null, i32 noundef 0) #11
  store ptr %3727, ptr %37, align 8, !tbaa !76
  br label %3728

3728:                                             ; preds = %3704, %3726, %3724
  br i1 %3671, label %3765, label %3729

3729:                                             ; preds = %3728
  br i1 %183, label %3730, label %3747

3730:                                             ; preds = %3729, %3744
  %3731 = phi ptr [ %3733, %3744 ], [ %3668, %3729 ]
  %3732 = phi ptr [ %3745, %3744 ], [ %3676, %3729 ]
  %3733 = getelementptr inbounds i8, ptr %3731, i64 -1
  %3734 = load i8, ptr %3733, align 1, !tbaa !55
  %3735 = icmp sgt i8 %3734, -1
  br i1 %3735, label %3736, label %3738

3736:                                             ; preds = %3730
  %3737 = getelementptr inbounds i8, ptr %3732, i64 1
  store i8 %3734, ptr %3732, align 1, !tbaa !55
  br label %3744

3738:                                             ; preds = %3730
  %3739 = lshr i8 %3734, 6
  %3740 = or disjoint i8 %3739, -64
  %3741 = getelementptr inbounds i8, ptr %3732, i64 1
  store i8 %3740, ptr %3732, align 1, !tbaa !55
  %3742 = and i8 %3734, -65
  %3743 = getelementptr inbounds i8, ptr %3732, i64 2
  store i8 %3742, ptr %3741, align 1, !tbaa !55
  br label %3744

3744:                                             ; preds = %3738, %3736
  %3745 = phi ptr [ %3737, %3736 ], [ %3743, %3738 ]
  %3746 = icmp ugt ptr %3733, %37
  br i1 %3746, label %3730, label %3781, !llvm.loop !209

3747:                                             ; preds = %3729, %3761
  %3748 = phi i64 [ %3763, %3761 ], [ 0, %3729 ]
  %3749 = phi ptr [ %3762, %3761 ], [ %3676, %3729 ]
  %3750 = getelementptr inbounds i8, ptr %37, i64 %3748
  %3751 = load i8, ptr %3750, align 1, !tbaa !55
  %3752 = icmp sgt i8 %3751, -1
  br i1 %3752, label %3753, label %3755

3753:                                             ; preds = %3747
  %3754 = getelementptr inbounds i8, ptr %3749, i64 1
  store i8 %3751, ptr %3749, align 1, !tbaa !55
  br label %3761

3755:                                             ; preds = %3747
  %3756 = lshr i8 %3751, 6
  %3757 = or disjoint i8 %3756, -64
  %3758 = getelementptr inbounds i8, ptr %3749, i64 1
  store i8 %3757, ptr %3749, align 1, !tbaa !55
  %3759 = and i8 %3751, -65
  %3760 = getelementptr inbounds i8, ptr %3749, i64 2
  store i8 %3759, ptr %3758, align 1, !tbaa !55
  br label %3761

3761:                                             ; preds = %3755, %3753
  %3762 = phi ptr [ %3754, %3753 ], [ %3760, %3755 ]
  %3763 = add nuw nsw i64 %3748, 1
  %3764 = icmp eq i64 %3763, 8
  br i1 %3764, label %3781, label %3747, !llvm.loop !207

3765:                                             ; preds = %3728
  br i1 %183, label %3766, label %3777

3766:                                             ; preds = %3765
  %3767 = getelementptr inbounds i8, ptr %3676, i64 8
  br label %3768

3768:                                             ; preds = %3766, %3768
  %3769 = phi i64 [ 8, %3766 ], [ %3772, %3768 ]
  %3770 = phi ptr [ %3767, %3766 ], [ %3775, %3768 ]
  %3771 = phi ptr [ %37, %3766 ], [ %3773, %3768 ]
  %3772 = add nsw i64 %3769, -1
  %3773 = getelementptr inbounds i8, ptr %3771, i64 1
  %3774 = load i8, ptr %3771, align 1, !tbaa !55
  %3775 = getelementptr inbounds i8, ptr %3770, i64 -1
  store i8 %3774, ptr %3775, align 1, !tbaa !55
  %3776 = icmp eq i64 %3772, 0
  br i1 %3776, label %3779, label %3768, !llvm.loop !132

3777:                                             ; preds = %3765
  %3778 = load i64, ptr %37, align 8
  store i64 %3778, ptr %3676, align 1
  br label %3779

3779:                                             ; preds = %3768, %3777
  %3780 = getelementptr inbounds i8, ptr %3676, i64 8
  br label %3781

3781:                                             ; preds = %3761, %3744, %3779
  %3782 = phi ptr [ %3780, %3779 ], [ %3745, %3744 ], [ %3762, %3761 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %37) #11
  %3783 = icmp sgt i32 %3673, 1
  br i1 %3783, label %3672, label %3930, !llvm.loop !242

3784:                                             ; preds = %180
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %38) #11
  %3785 = icmp eq ptr %181, null
  br i1 %3785, label %3786, label %3792

3786:                                             ; preds = %3784
  %3787 = icmp sgt i32 %78, 0
  br i1 %3787, label %3788, label %3792

3788:                                             ; preds = %3786
  %3789 = add nsw i32 %78, -1
  %3790 = getelementptr inbounds ptr, ptr %77, i64 1
  %3791 = load ptr, ptr %77, align 8, !tbaa !76
  br label %3792

3792:                                             ; preds = %3784, %3788, %3786
  %3793 = phi i32 [ %3789, %3788 ], [ %78, %3786 ], [ %78, %3784 ]
  %3794 = phi ptr [ %3790, %3788 ], [ %77, %3786 ], [ %77, %3784 ]
  %3795 = phi ptr [ %3791, %3788 ], [ @PL_sv_no, %3786 ], [ %181, %3784 ]
  %3796 = icmp slt i32 %97, 3
  br i1 %3796, label %3800, label %3797

3797:                                             ; preds = %3792
  %3798 = urem i32 %97, 3
  %3799 = sub nuw nsw i32 %97, %3798
  br label %3800

3800:                                             ; preds = %3792, %3797
  %3801 = phi i32 [ %3799, %3797 ], [ 45, %3792 ]
  %3802 = icmp sgt i32 %3801, 63
  br i1 %3802, label %3803, label %3804

3803:                                             ; preds = %3800
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 16, ptr noundef nonnull @.str.58) #11
  br label %3804

3804:                                             ; preds = %3803, %3800
  %3805 = phi i32 [ 63, %3803 ], [ %3801, %3800 ]
  %3806 = getelementptr inbounds %struct.sv, ptr %3795, i64 0, i32 2
  %3807 = load i32, ptr %3806, align 4, !tbaa !111
  %3808 = and i32 %3807, 2098176
  %3809 = icmp eq i32 %3808, 1024
  br i1 %3809, label %3810, label %3816

3810:                                             ; preds = %3804
  %3811 = load ptr, ptr %3795, align 8, !tbaa !119
  %3812 = getelementptr inbounds %struct.xpv, ptr %3811, i64 0, i32 2
  %3813 = load i64, ptr %3812, align 8, !tbaa !120
  store i64 %3813, ptr %7, align 8, !tbaa !63
  %3814 = getelementptr inbounds %struct.sv, ptr %3795, i64 0, i32 3
  %3815 = load ptr, ptr %3814, align 8, !tbaa !55
  br label %3818

3816:                                             ; preds = %3804
  %3817 = call ptr @Perl_sv_2pv_flags(ptr noundef %3795, ptr noundef nonnull %7, i32 noundef 34) #11
  br label %3818

3818:                                             ; preds = %3816, %3810
  %3819 = phi ptr [ %3815, %3810 ], [ %3817, %3816 ]
  store ptr %3819, ptr %38, align 8, !tbaa !76
  %3820 = load i32, ptr %3806, align 4, !tbaa !111
  %3821 = and i32 %3820, 536870912
  %3822 = icmp eq i32 %3821, 0
  br i1 %3822, label %3829, label %3823

3823:                                             ; preds = %3818
  %3824 = load ptr, ptr @PL_curcop, align 8, !tbaa !76
  %3825 = getelementptr inbounds %struct.cop, ptr %3824, i64 0, i32 10
  %3826 = load i32, ptr %3825, align 8, !tbaa !172
  %3827 = and i32 %3826, 8
  %3828 = icmp eq i32 %3827, 0
  br label %3829

3829:                                             ; preds = %3823, %3818
  %3830 = phi i1 [ false, %3818 ], [ %3828, %3823 ]
  br i1 %3830, label %3831, label %3835

3831:                                             ; preds = %3829
  %3832 = load i64, ptr %7, align 8, !tbaa !63
  %3833 = getelementptr inbounds i8, ptr %3819, i64 %3832
  %3834 = call i64 @Perl_sv_len_utf8_nomg(ptr noundef %3795) #11
  store i64 %3834, ptr %7, align 8, !tbaa !63
  br label %3835

3835:                                             ; preds = %3829, %3831
  %3836 = phi ptr [ %3833, %3831 ], [ null, %3829 ]
  %3837 = load i64, ptr %7, align 8, !tbaa !63
  %3838 = add i64 %3837, 2
  %3839 = udiv i64 %3838, 3
  %3840 = shl i64 %3839, 2
  %3841 = zext nneg i32 %3805 to i64
  %3842 = add nsw i64 %3841, -1
  %3843 = add i64 %3842, %3837
  %3844 = udiv i64 %3843, %3841
  %3845 = shl nuw i64 %3844, 1
  %3846 = add i64 %3840, %3845
  %3847 = and i8 %79, 1
  %3848 = icmp eq i8 %3847, 0
  %3849 = zext nneg i8 %3847 to i64
  %3850 = shl i64 %3846, %3849
  %3851 = getelementptr inbounds i8, ptr %129, i64 %3850
  %3852 = load ptr, ptr %0, align 8, !tbaa !119
  %3853 = getelementptr inbounds %struct.xpv, ptr %3852, i64 0, i32 3
  %3854 = load i64, ptr %3853, align 8, !tbaa !55
  %3855 = getelementptr inbounds i8, ptr %130, i64 %3854
  %3856 = icmp ult ptr %3851, %3855
  br i1 %3856, label %3863, label %3857

3857:                                             ; preds = %3835
  %3858 = call fastcc ptr @S_sv_exp_grow(ptr noundef nonnull %0, i64 noundef %3850)
  %3859 = load ptr, ptr %0, align 8, !tbaa !119
  %3860 = getelementptr inbounds %struct.xpv, ptr %3859, i64 0, i32 2
  %3861 = load i64, ptr %3860, align 8, !tbaa !120
  %3862 = getelementptr inbounds i8, ptr %3858, i64 %3861
  br label %3863

3863:                                             ; preds = %3857, %3835
  %3864 = phi ptr [ %3862, %3857 ], [ %129, %3835 ]
  %3865 = phi ptr [ %3858, %3857 ], [ %130, %3835 ]
  %3866 = load i64, ptr %7, align 8, !tbaa !63
  %3867 = icmp eq i64 %3866, 0
  br i1 %3867, label %3928, label %3868

3868:                                             ; preds = %3863
  %3869 = ptrtoint ptr %39 to i64
  br label %3870

3870:                                             ; preds = %3868, %3922
  %3871 = phi i64 [ %3866, %3868 ], [ %3926, %3922 ]
  %3872 = phi ptr [ %3864, %3868 ], [ %3923, %3922 ]
  call void @llvm.lifetime.start.p0(i64 86, ptr nonnull %39) #11
  %3873 = trunc i64 %3871 to i32
  %3874 = call i32 @llvm.smin.i32(i32 %3805, i32 %3873)
  br i1 %3830, label %3875, label %3887

3875:                                             ; preds = %3870
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %41) #11
  %3876 = call fastcc zeroext i1 @S_utf8_to_bytes(ptr noundef nonnull %38, ptr noundef %3836, ptr noundef nonnull %41, i32 noundef %3874, i32 noundef 2165)
  br i1 %3876, label %3885, label %3877

3877:                                             ; preds = %3875
  %3878 = ptrtoint ptr %3865 to i64
  store i8 0, ptr %3872, align 1, !tbaa !55
  %3879 = ptrtoint ptr %3872 to i64
  %3880 = sub i64 %3879, %3878
  %3881 = load ptr, ptr %0, align 8, !tbaa !119
  %3882 = getelementptr inbounds %struct.xpv, ptr %3881, i64 0, i32 2
  store i64 %3880, ptr %3882, align 8, !tbaa !120
  %3883 = load ptr, ptr %38, align 8, !tbaa !76
  %3884 = sext i32 %3874 to i64
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.59, ptr noundef %3883, ptr noundef %3836, ptr noundef nonnull %41, i64 noundef %3884) #11
  br label %3885

3885:                                             ; preds = %3877, %3875
  %3886 = call fastcc ptr @doencodes(ptr noundef nonnull %39, ptr noundef nonnull %41, i32 noundef %3874)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %41) #11
  br label %3892

3887:                                             ; preds = %3870
  %3888 = load ptr, ptr %38, align 8, !tbaa !76
  %3889 = call fastcc ptr @doencodes(ptr noundef nonnull %39, ptr noundef %3888, i32 noundef %3874)
  %3890 = sext i32 %3874 to i64
  %3891 = getelementptr inbounds i8, ptr %3888, i64 %3890
  store ptr %3891, ptr %38, align 8, !tbaa !76
  br label %3892

3892:                                             ; preds = %3885, %3887
  %3893 = phi ptr [ %3886, %3885 ], [ %3889, %3887 ]
  %3894 = ptrtoint ptr %3893 to i64
  br i1 %3848, label %3918, label %3895

3895:                                             ; preds = %3892
  %3896 = icmp ult ptr %39, %3893
  br i1 %3896, label %3897, label %3922

3897:                                             ; preds = %3895
  %3898 = sub i64 0, %40
  %3899 = getelementptr i8, ptr %39, i64 %3898
  %3900 = getelementptr i8, ptr %3899, i64 %3894
  br label %3901

3901:                                             ; preds = %3897, %3914
  %3902 = phi ptr [ %3916, %3914 ], [ %39, %3897 ]
  %3903 = phi ptr [ %3915, %3914 ], [ %3872, %3897 ]
  %3904 = load i8, ptr %3902, align 1, !tbaa !55
  %3905 = icmp sgt i8 %3904, -1
  br i1 %3905, label %3906, label %3908

3906:                                             ; preds = %3901
  %3907 = getelementptr inbounds i8, ptr %3903, i64 1
  store i8 %3904, ptr %3903, align 1, !tbaa !55
  br label %3914

3908:                                             ; preds = %3901
  %3909 = lshr i8 %3904, 6
  %3910 = or disjoint i8 %3909, -64
  %3911 = getelementptr inbounds i8, ptr %3903, i64 1
  store i8 %3910, ptr %3903, align 1, !tbaa !55
  %3912 = and i8 %3904, -65
  %3913 = getelementptr inbounds i8, ptr %3903, i64 2
  store i8 %3912, ptr %3911, align 1, !tbaa !55
  br label %3914

3914:                                             ; preds = %3908, %3906
  %3915 = phi ptr [ %3907, %3906 ], [ %3913, %3908 ]
  %3916 = getelementptr inbounds i8, ptr %3902, i64 1
  %3917 = icmp eq ptr %3916, %3900
  br i1 %3917, label %3922, label %3901, !llvm.loop !207

3918:                                             ; preds = %3892
  %3919 = ptrtoint ptr %3893 to i64
  %3920 = sub i64 %3919, %3869
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3872, ptr nonnull align 16 %39, i64 %3920, i1 false)
  %3921 = getelementptr inbounds i8, ptr %3872, i64 %3920
  br label %3922

3922:                                             ; preds = %3914, %3895, %3918
  %3923 = phi ptr [ %3921, %3918 ], [ %3872, %3895 ], [ %3915, %3914 ]
  %3924 = sext i32 %3874 to i64
  %3925 = load i64, ptr %7, align 8, !tbaa !63
  %3926 = sub i64 %3925, %3924
  store i64 %3926, ptr %7, align 8, !tbaa !63
  call void @llvm.lifetime.end.p0(i64 86, ptr nonnull %39) #11
  %3927 = icmp eq i64 %3926, 0
  br i1 %3927, label %3928, label %3870, !llvm.loop !243

3928:                                             ; preds = %3922, %3863
  %3929 = phi ptr [ %3864, %3863 ], [ %3923, %3922 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %38) #11
  br label %3930

3930:                                             ; preds = %3781, %3643, %3560, %3477, %3393, %3310, %3226, %3141, %3082, %3022, %2930, %2553, %2470, %2387, %2296, %2204, %2113, %2054, %1911, %1828, %1577, %1421, %1361, %3662, %185, %192, %199, %206, %213, %220, %3085, %3025, %2934, %226, %241, %248, %2299, %2207, %2116, %2057, %1997, %255, %262, %1424, %1365, %269, %1737, %479, %482, %542, %563, %3928, %1993, %1371, %1311, %1059, %840, %386
  %3931 = phi ptr [ %389, %386 ], [ %543, %563 ], [ %543, %542 ], [ %3929, %3928 ], [ %1994, %1993 ], [ %1738, %1737 ], [ %129, %1371 ], [ %1314, %1311 ], [ %1062, %1059 ], [ %841, %840 ], [ %480, %482 ], [ %480, %479 ], [ %129, %269 ], [ %129, %1365 ], [ %129, %1424 ], [ %129, %262 ], [ %129, %255 ], [ %129, %1997 ], [ %129, %2057 ], [ %129, %2116 ], [ %129, %2207 ], [ %129, %2299 ], [ %129, %248 ], [ %129, %241 ], [ %129, %226 ], [ %129, %2934 ], [ %129, %3025 ], [ %129, %3085 ], [ %129, %220 ], [ %129, %213 ], [ %129, %206 ], [ %129, %199 ], [ %129, %192 ], [ %129, %185 ], [ %3663, %3662 ], [ %1362, %1361 ], [ %1422, %1421 ], [ %1579, %1577 ], [ %1829, %1828 ], [ %1912, %1911 ], [ %2055, %2054 ], [ %2114, %2113 ], [ %2205, %2204 ], [ %2297, %2296 ], [ %2388, %2387 ], [ %2471, %2470 ], [ %2554, %2553 ], [ %2931, %2930 ], [ %3023, %3022 ], [ %3083, %3082 ], [ %3142, %3141 ], [ %3227, %3226 ], [ %3311, %3310 ], [ %3394, %3393 ], [ %3478, %3477 ], [ %3561, %3560 ], [ %3644, %3643 ], [ %3782, %3781 ]
  %3932 = phi ptr [ %388, %386 ], [ %130, %563 ], [ %130, %542 ], [ %3865, %3928 ], [ %130, %1993 ], [ %1739, %1737 ], [ %130, %1371 ], [ %1128, %1311 ], [ %909, %1059 ], [ %842, %840 ], [ %130, %482 ], [ %130, %479 ], [ %130, %269 ], [ %130, %1365 ], [ %130, %1424 ], [ %130, %262 ], [ %130, %255 ], [ %130, %1997 ], [ %130, %2057 ], [ %130, %2116 ], [ %130, %2207 ], [ %130, %2299 ], [ %130, %248 ], [ %130, %241 ], [ %130, %226 ], [ %130, %2934 ], [ %130, %3025 ], [ %130, %3085 ], [ %130, %220 ], [ %130, %213 ], [ %130, %206 ], [ %130, %199 ], [ %130, %192 ], [ %130, %185 ], [ %3664, %3662 ], [ %130, %1361 ], [ %130, %1421 ], [ %1580, %1577 ], [ %130, %1828 ], [ %130, %1911 ], [ %130, %2054 ], [ %130, %2113 ], [ %130, %2204 ], [ %130, %2296 ], [ %130, %2387 ], [ %130, %2470 ], [ %130, %2553 ], [ %2932, %2930 ], [ %130, %3022 ], [ %130, %3082 ], [ %130, %3141 ], [ %130, %3226 ], [ %130, %3310 ], [ %130, %3393 ], [ %130, %3477 ], [ %130, %3560 ], [ %130, %3643 ], [ %3664, %3781 ]
  %3933 = phi i8 [ %79, %386 ], [ %79, %563 ], [ %79, %542 ], [ %79, %3928 ], [ %79, %1993 ], [ %1740, %1737 ], [ %1375, %1371 ], [ %79, %1311 ], [ %79, %1059 ], [ %843, %840 ], [ %79, %482 ], [ %79, %479 ], [ %79, %269 ], [ %79, %1365 ], [ %79, %1424 ], [ %79, %262 ], [ %79, %255 ], [ %79, %1997 ], [ %79, %2057 ], [ %79, %2116 ], [ %79, %2207 ], [ %79, %2299 ], [ %79, %248 ], [ %79, %241 ], [ %79, %226 ], [ %79, %2934 ], [ %79, %3025 ], [ %79, %3085 ], [ %79, %220 ], [ %79, %213 ], [ %79, %206 ], [ %79, %199 ], [ %79, %192 ], [ %79, %185 ], [ %79, %3662 ], [ %79, %1361 ], [ %79, %1421 ], [ %1581, %1577 ], [ %79, %1828 ], [ %79, %1911 ], [ %79, %2054 ], [ %79, %2113 ], [ %79, %2204 ], [ %79, %2296 ], [ %79, %2387 ], [ %79, %2470 ], [ %79, %2553 ], [ %79, %2930 ], [ %79, %3022 ], [ %79, %3082 ], [ %79, %3141 ], [ %79, %3226 ], [ %79, %3310 ], [ %79, %3393 ], [ %79, %3477 ], [ %79, %3560 ], [ %79, %3643 ], [ %79, %3781 ]
  %3934 = phi i32 [ %371, %386 ], [ %544, %563 ], [ %544, %542 ], [ %3793, %3928 ], [ %1995, %1993 ], [ %1741, %1737 ], [ %78, %1371 ], [ %1072, %1311 ], [ %853, %1059 ], [ %593, %840 ], [ %78, %482 ], [ %78, %479 ], [ %78, %269 ], [ %78, %1365 ], [ %78, %1424 ], [ %78, %262 ], [ %78, %255 ], [ %78, %1997 ], [ %78, %2057 ], [ %78, %2116 ], [ %78, %2207 ], [ %78, %2299 ], [ %78, %248 ], [ %78, %241 ], [ %78, %226 ], [ %78, %2934 ], [ %78, %3025 ], [ %78, %3085 ], [ %78, %220 ], [ %78, %213 ], [ %78, %206 ], [ %78, %199 ], [ %78, %192 ], [ %78, %185 ], [ %78, %3662 ], [ %1328, %1361 ], [ %1389, %1421 ], [ %1459, %1577 ], [ %1756, %1828 ], [ %1844, %1911 ], [ %2016, %2054 ], [ %2076, %2113 ], [ %2136, %2204 ], [ %2226, %2296 ], [ %2319, %2387 ], [ %2403, %2470 ], [ %2486, %2553 ], [ %2570, %2930 ], [ %2954, %3022 ], [ %3044, %3082 ], [ %3104, %3141 ], [ %3157, %3226 ], [ %3242, %3310 ], [ %3326, %3393 ], [ %3409, %3477 ], [ %3493, %3560 ], [ %3576, %3643 ], [ %3685, %3781 ]
  %3935 = phi ptr [ %372, %386 ], [ %545, %563 ], [ %545, %542 ], [ %3794, %3928 ], [ %1996, %1993 ], [ %1742, %1737 ], [ %77, %1371 ], [ %1073, %1311 ], [ %854, %1059 ], [ %594, %840 ], [ %77, %482 ], [ %77, %479 ], [ %77, %269 ], [ %77, %1365 ], [ %77, %1424 ], [ %77, %262 ], [ %77, %255 ], [ %77, %1997 ], [ %77, %2057 ], [ %77, %2116 ], [ %77, %2207 ], [ %77, %2299 ], [ %77, %248 ], [ %77, %241 ], [ %77, %226 ], [ %77, %2934 ], [ %77, %3025 ], [ %77, %3085 ], [ %77, %220 ], [ %77, %213 ], [ %77, %206 ], [ %77, %199 ], [ %77, %192 ], [ %77, %185 ], [ %77, %3662 ], [ %1329, %1361 ], [ %1390, %1421 ], [ %1460, %1577 ], [ %1757, %1828 ], [ %1845, %1911 ], [ %2017, %2054 ], [ %2077, %2113 ], [ %2137, %2204 ], [ %2227, %2296 ], [ %2320, %2387 ], [ %2404, %2470 ], [ %2487, %2553 ], [ %2571, %2930 ], [ %2955, %3022 ], [ %3045, %3082 ], [ %3105, %3141 ], [ %3158, %3226 ], [ %3243, %3310 ], [ %3327, %3393 ], [ %3410, %3477 ], [ %3494, %3560 ], [ %3577, %3643 ], [ %3686, %3781 ]
  store i8 0, ptr %3931, align 1, !tbaa !55
  %3936 = ptrtoint ptr %3931 to i64
  %3937 = ptrtoint ptr %3932 to i64
  %3938 = sub i64 %3936, %3937
  %3939 = load ptr, ptr %0, align 8, !tbaa !119
  %3940 = getelementptr inbounds %struct.xpv, ptr %3939, i64 0, i32 2
  store i64 %3938, ptr %3940, align 8, !tbaa !120
  br label %3941

3941:                                             ; preds = %1737, %579, %494, %405, %390, %446, %3930
  %3942 = phi i8 [ %3933, %3930 ], [ %79, %405 ], [ %79, %390 ], [ %79, %579 ], [ %79, %494 ], [ %447, %446 ], [ %1740, %1737 ]
  %3943 = phi i32 [ %3934, %3930 ], [ %335, %405 ], [ %335, %390 ], [ %78, %579 ], [ %78, %494 ], [ %453, %446 ], [ %1741, %1737 ]
  %3944 = phi ptr [ %3935, %3930 ], [ %336, %405 ], [ %336, %390 ], [ %77, %579 ], [ %77, %494 ], [ %448, %446 ], [ %1742, %1737 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %6, i64 72, i1 false), !tbaa.struct !91
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  br i1 %131, label %76, label %3945, !prof !244, !llvm.loop !245

3945:                                             ; preds = %3941, %65
  %3946 = phi ptr [ %2, %65 ], [ %3944, %3941 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #11
  ret ptr %3946
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_pp_pack() local_unnamed_addr #0 !prof !177 {
  %1 = alloca %struct.tempsym, align 8
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !76
  %4 = load ptr, ptr @PL_stack_base, align 8, !tbaa !76
  %5 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !76
  %6 = getelementptr inbounds i32, ptr %5, i64 -1
  store ptr %6, ptr @PL_markstack_ptr, align 8, !tbaa !76
  %7 = load i32, ptr %5, align 4, !tbaa !92
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %4, i64 %8
  %10 = load ptr, ptr @PL_curpad, align 8, !tbaa !76
  %11 = load ptr, ptr @PL_op, align 8, !tbaa !76
  %12 = getelementptr inbounds %struct.op, ptr %11, i64 0, i32 3
  %13 = load i64, ptr %12, align 8, !tbaa !246
  %14 = getelementptr inbounds ptr, ptr %10, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  %16 = getelementptr inbounds ptr, ptr %9, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !76
  %18 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !111
  %20 = and i32 %19, 2098176
  %21 = icmp eq i32 %20, 1024
  br i1 %21, label %22, label %28, !prof !176

22:                                               ; preds = %0
  %23 = load ptr, ptr %17, align 8, !tbaa !119
  %24 = getelementptr inbounds %struct.xpv, ptr %23, i64 0, i32 2
  %25 = load i64, ptr %24, align 8, !tbaa !120
  store i64 %25, ptr %2, align 8, !tbaa !63
  %26 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !55
  br label %30

28:                                               ; preds = %0
  %29 = call ptr @Perl_sv_2pv_flags(ptr noundef %17, ptr noundef nonnull %2, i32 noundef 34) #11
  br label %30

30:                                               ; preds = %28, %22
  %31 = phi ptr [ %27, %22 ], [ %29, %28 ]
  %32 = load i64, ptr %2, align 8, !tbaa !63
  %33 = getelementptr inbounds i8, ptr %31, i64 %32
  %34 = getelementptr inbounds ptr, ptr %9, i64 2
  call void @Perl_sv_setpvn(ptr noundef %15, ptr noundef nonnull @.str, i64 noundef 0) #11
  %35 = getelementptr inbounds %struct.sv, ptr %15, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !111
  %37 = and i32 %36, -536870913
  store i32 %37, ptr %35, align 4, !tbaa !111
  %38 = getelementptr inbounds ptr, ptr %3, i64 1
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %1) #11
  store ptr %31, ptr %1, align 8, !tbaa !69
  %39 = getelementptr inbounds %struct.tempsym, ptr %1, i64 0, i32 1
  store ptr %33, ptr %39, align 8, !tbaa !73
  %40 = getelementptr inbounds %struct.tempsym, ptr %1, i64 0, i32 2
  %41 = getelementptr inbounds %struct.tempsym, ptr %1, i64 0, i32 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %40, i8 0, i64 32, i1 false)
  store i32 1, ptr %41, align 8, !tbaa !74
  %42 = getelementptr inbounds %struct.tempsym, ptr %1, i64 0, i32 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %42, i8 0, i64 16, i1 false)
  %43 = load i32, ptr %35, align 4, !tbaa !111
  %44 = and i32 %43, 430018304
  %45 = icmp eq i32 %44, 1024
  br i1 %45, label %48, label %46, !prof !176

46:                                               ; preds = %30
  %47 = call ptr @Perl_sv_pvn_force_flags(ptr noundef %15, ptr noundef null, i32 noundef 2) #11
  br label %48

48:                                               ; preds = %46, %30
  %49 = load i32, ptr %35, align 4, !tbaa !111
  %50 = and i32 %49, 536870912
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %61, label %52, !prof !176

52:                                               ; preds = %48
  %53 = load ptr, ptr @PL_curcop, align 8, !tbaa !76
  %54 = getelementptr inbounds %struct.cop, ptr %53, i64 0, i32 10
  %55 = load i32, ptr %54, align 8, !tbaa !172
  %56 = and i32 %55, 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32, ptr %41, align 8, !tbaa !74
  %60 = or i32 %59, 40
  store i32 %60, ptr %41, align 8, !tbaa !74
  br label %61

61:                                               ; preds = %48, %52, %58
  %62 = call fastcc ptr @S_pack_rec(ptr noundef %15, ptr noundef nonnull %1, ptr noundef nonnull %34, ptr noundef nonnull %38)
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %1) #11
  %63 = load i32, ptr %35, align 4, !tbaa !111
  %64 = and i32 %63, 4194304
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66, !prof !176

66:                                               ; preds = %61
  %67 = call i32 @Perl_mg_set(ptr noundef %15) #11
  br label %68

68:                                               ; preds = %61, %66
  %69 = load ptr, ptr @PL_stack_base, align 8, !tbaa !76
  %70 = getelementptr inbounds ptr, ptr %69, i64 %8
  %71 = getelementptr inbounds ptr, ptr %70, i64 1
  store ptr %15, ptr %71, align 8, !tbaa !76
  store ptr %71, ptr @PL_stack_sp, align 8, !tbaa !76
  %72 = load ptr, ptr @PL_op, align 8, !tbaa !76
  %73 = load ptr, ptr %72, align 8, !tbaa !174
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  ret ptr %73
}

declare void @Perl_sv_setpvn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @Perl_mg_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @S_next_symbol(ptr nocapture noundef %0) unnamed_addr #0 !prof !247 !PGOFuncName !248 {
  %2 = alloca [36 x i8], align 8
  %3 = alloca { i32, i32, i32, i64, ptr }, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !69
  %5 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !73
  %7 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !74
  %9 = and i32 %8, -5
  store i32 %9, ptr %7, align 8, !tbaa !74
  %10 = icmp ult ptr %4, %6
  br i1 %10, label %11, label %308, !prof !249

11:                                               ; preds = %1, %305
  %12 = phi i1 [ %307, %305 ], [ %10, %1 ]
  %13 = phi ptr [ %306, %305 ], [ %4, %1 ]
  %14 = load i8, ptr %13, align 1, !tbaa !55
  %15 = zext i8 %14 to i64
  %16 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !92
  %18 = and i32 %17, 17408
  %19 = icmp eq i32 %18, 17408
  br i1 %19, label %20, label %22, !prof !250

20:                                               ; preds = %11
  %21 = getelementptr inbounds i8, ptr %13, i64 1
  br label %305

22:                                               ; preds = %11
  %23 = icmp eq i8 %14, 35
  br i1 %23, label %24, label %34, !prof !250

24:                                               ; preds = %22, %28
  %25 = phi ptr [ %26, %28 ], [ %13, %22 ]
  %26 = getelementptr inbounds i8, ptr %25, i64 1
  %27 = icmp ult ptr %26, %6
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i8, ptr %26, align 1, !tbaa !55
  %30 = icmp eq i8 %29, 10
  br i1 %30, label %31, label %24, !llvm.loop !251

31:                                               ; preds = %28, %24
  %32 = getelementptr inbounds i8, ptr %25, i64 2
  %33 = select i1 %27, ptr %32, ptr %26
  br label %305

34:                                               ; preds = %22
  %35 = zext i8 %14 to i32
  %36 = getelementptr inbounds i8, ptr %13, i64 1
  %37 = icmp eq i8 %14, 44
  br i1 %37, label %38, label %50, !prof !250

38:                                               ; preds = %34
  %39 = load i32, ptr %7, align 8, !tbaa !74
  %40 = and i32 %39, 2
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %303, !llvm.loop !252

42:                                               ; preds = %38
  %43 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 42) #11
  br i1 %43, label %44, label %303, !llvm.loop !252

44:                                               ; preds = %42
  %45 = load i32, ptr %7, align 8, !tbaa !74
  %46 = or i32 %45, 2
  store i32 %46, ptr %7, align 8, !tbaa !74
  %47 = and i32 %45, 1
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %48, ptr @.str.30, ptr @.str.29
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 42, ptr noundef nonnull @.str.18, ptr noundef nonnull %49) #11
  br label %303, !llvm.loop !252

50:                                               ; preds = %34
  %51 = icmp eq i8 %14, 40
  br i1 %51, label %52, label %79, !prof !250

52:                                               ; preds = %50
  %53 = load i8, ptr %36, align 1, !tbaa !55
  %54 = zext i8 %53 to i64
  %55 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %54
  %56 = load i32, ptr %55, align 4, !tbaa !92
  %57 = freeze i32 %56
  %58 = and i32 %57, 2
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  switch i8 %53, label %66 [
    i8 91, label %61
    i8 42, label %61
  ]

61:                                               ; preds = %60, %60, %52
  %62 = load i32, ptr %7, align 8, !tbaa !74
  %63 = and i32 %62, 1
  %64 = icmp eq i32 %63, 0
  %65 = select i1 %64, ptr @.str.30, ptr @.str.29
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.19, ptr noundef nonnull %65) #11
  br label %66

66:                                               ; preds = %60, %61
  %67 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 2
  %68 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 3
  %69 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 7
  store ptr %36, ptr %67, align 8, !tbaa !96
  %70 = tail call fastcc ptr @S_group_end(ptr noundef nonnull %36, ptr noundef nonnull %6, i8 noundef signext 41)
  store ptr %70, ptr %68, align 8, !tbaa !93
  %71 = getelementptr inbounds i8, ptr %70, i64 1
  %72 = load i32, ptr %69, align 4, !tbaa !95
  %73 = icmp sgt i32 %72, 99
  br i1 %73, label %74, label %79

74:                                               ; preds = %66
  %75 = load i32, ptr %7, align 8, !tbaa !74
  %76 = and i32 %75, 1
  %77 = icmp eq i32 %76, 0
  %78 = select i1 %77, ptr @.str.30, ptr @.str.29
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.20, ptr noundef nonnull %78) #11
  br label %79

79:                                               ; preds = %66, %74, %50
  %80 = phi ptr [ %71, %74 ], [ %71, %66 ], [ %36, %50 ]
  %81 = load i32, ptr %7, align 8, !tbaa !74
  %82 = and i32 %81, 1536
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %88, label %84, !prof !253

84:                                               ; preds = %79
  %85 = tail call ptr @memchr(ptr nonnull dereferenceable(1) @.str.21, i32 %35, i64 18)
  %86 = icmp eq ptr %85, null
  %87 = select i1 %86, i32 0, i32 %82
  br label %88

88:                                               ; preds = %84, %79
  %89 = phi i32 [ 0, %79 ], [ %87, %84 ]
  br label %90

90:                                               ; preds = %144, %88
  %91 = phi ptr [ %80, %88 ], [ %145, %144 ]
  %92 = phi i32 [ %35, %88 ], [ %146, %144 ]
  %93 = icmp ult ptr %91, %6
  br i1 %93, label %94, label %147, !prof !254

94:                                               ; preds = %90
  %95 = load i8, ptr %91, align 1, !tbaa !55
  switch i8 %95, label %98 [
    i8 33, label %99
    i8 62, label %96
    i8 60, label %97
  ], !prof !255

96:                                               ; preds = %94
  br label %99

97:                                               ; preds = %94
  br label %99

98:                                               ; preds = %94
  br label %99

99:                                               ; preds = %94, %98, %97, %96
  %100 = phi ptr [ @.str, %98 ], [ @.str.21, %97 ], [ @.str.21, %96 ], [ @.str.22, %94 ]
  %101 = phi i1 [ true, %98 ], [ false, %97 ], [ false, %96 ], [ false, %94 ]
  %102 = phi i32 [ 0, %98 ], [ 1024, %97 ], [ 512, %96 ], [ 256, %94 ]
  br i1 %101, label %144, label %103, !prof !256

103:                                              ; preds = %99
  %104 = and i32 %92, 255
  %105 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %100, i32 noundef %104) #12
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %113, !prof !234

107:                                              ; preds = %103
  %108 = sext i8 %95 to i32
  %109 = load i32, ptr %7, align 8, !tbaa !74
  %110 = and i32 %109, 1
  %111 = icmp eq i32 %110, 0
  %112 = select i1 %111, ptr @.str.30, ptr @.str.29
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.23, i32 noundef %108, ptr noundef nonnull %100, ptr noundef nonnull %112) #11
  br label %113

113:                                              ; preds = %107, %103
  %114 = or i32 %102, %92
  %115 = and i32 %114, 1536
  %116 = icmp eq i32 %115, 1536
  br i1 %116, label %117, label %122, !prof !234

117:                                              ; preds = %113
  %118 = load i32, ptr %7, align 8, !tbaa !74
  %119 = and i32 %118, 1
  %120 = icmp eq i32 %119, 0
  %121 = select i1 %120, ptr @.str.30, ptr @.str.29
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.24, i32 noundef %104, ptr noundef nonnull %121) #11
  br label %132

122:                                              ; preds = %113
  %123 = or i32 %115, %89
  %124 = icmp eq i32 %123, 1536
  br i1 %124, label %125, label %132, !prof !234

125:                                              ; preds = %122
  %126 = load i8, ptr %91, align 1, !tbaa !55
  %127 = sext i8 %126 to i32
  %128 = load i32, ptr %7, align 8, !tbaa !74
  %129 = and i32 %128, 1
  %130 = icmp eq i32 %129, 0
  %131 = select i1 %130, ptr @.str.30, ptr @.str.29
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.25, i32 noundef %127, ptr noundef nonnull %131) #11
  br label %132

132:                                              ; preds = %122, %125, %117
  %133 = and i32 %102, %92
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %142, label %135, !prof !233

135:                                              ; preds = %132
  %136 = load i8, ptr %91, align 1, !tbaa !55
  %137 = sext i8 %136 to i32
  %138 = load i32, ptr %7, align 8, !tbaa !74
  %139 = and i32 %138, 1
  %140 = icmp eq i32 %139, 0
  %141 = select i1 %140, ptr @.str.30, ptr @.str.29
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 42, ptr noundef nonnull @.str.26, i32 noundef %137, i32 noundef %104, ptr noundef nonnull %141) #11
  br label %142

142:                                              ; preds = %135, %132
  %143 = getelementptr inbounds i8, ptr %91, i64 1
  br label %144

144:                                              ; preds = %99, %142
  %145 = phi ptr [ %143, %142 ], [ %91, %99 ]
  %146 = phi i32 [ %114, %142 ], [ %92, %99 ]
  br i1 %101, label %147, label %90, !prof !256

147:                                              ; preds = %144, %90
  %148 = phi ptr [ %91, %90 ], [ %145, %144 ]
  %149 = phi i32 [ %92, %90 ], [ %146, %144 ]
  %150 = or i32 %149, %89
  %151 = icmp ult ptr %148, %6
  br i1 %151, label %152, label %297, !prof !257

152:                                              ; preds = %147
  %153 = load i8, ptr %148, align 1, !tbaa !55
  %154 = zext i8 %153 to i64
  %155 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %154
  %156 = load i32, ptr %155, align 4, !tbaa !92
  %157 = and i32 %156, 2
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %192, label %159, !prof !258

159:                                              ; preds = %152
  %160 = sext i8 %153 to i32
  %161 = add nsw i32 %160, -48
  %162 = getelementptr inbounds i8, ptr %148, i64 1
  %163 = load i8, ptr %162, align 1, !tbaa !55
  %164 = zext i8 %163 to i64
  %165 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %164
  %166 = load i32, ptr %165, align 4, !tbaa !92
  %167 = and i32 %166, 2
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %187, label %169

169:                                              ; preds = %159, %174
  %170 = phi ptr [ %180, %174 ], [ %162, %159 ]
  %171 = phi i32 [ %179, %174 ], [ %161, %159 ]
  %172 = icmp sgt i32 %171, 214748363
  br i1 %172, label %173, label %174

173:                                              ; preds = %169
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.32) #11
  br label %174

174:                                              ; preds = %173, %169
  %175 = mul nsw i32 %171, 10
  %176 = load i8, ptr %170, align 1, !tbaa !55
  %177 = sext i8 %176 to i32
  %178 = add i32 %175, -48
  %179 = add i32 %178, %177
  %180 = getelementptr inbounds i8, ptr %170, i64 1
  %181 = load i8, ptr %180, align 1, !tbaa !55
  %182 = zext i8 %181 to i64
  %183 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %182
  %184 = load i32, ptr %183, align 4, !tbaa !92
  %185 = and i32 %184, 2
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %169, !llvm.loop !259

187:                                              ; preds = %174, %159
  %188 = phi i32 [ %161, %159 ], [ %179, %174 ]
  %189 = phi ptr [ %162, %159 ], [ %180, %174 ]
  %190 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 5
  %191 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 6
  store i32 %188, ptr %190, align 4, !tbaa !92
  store i32 1, ptr %191, align 8, !tbaa !82
  br label %252

192:                                              ; preds = %152
  switch i8 %153, label %249 [
    i8 42, label %193
    i8 91, label %196
  ], !prof !260

193:                                              ; preds = %192
  %194 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 6
  %195 = getelementptr inbounds i8, ptr %148, i64 1
  store i32 2, ptr %194, align 8, !tbaa !82
  br label %252

196:                                              ; preds = %192
  %197 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 6
  %198 = getelementptr inbounds i8, ptr %148, i64 1
  store i32 1, ptr %197, align 8, !tbaa !82
  %199 = tail call fastcc ptr @S_group_end(ptr noundef nonnull %198, ptr noundef nonnull %6, i8 noundef signext 93)
  %200 = getelementptr inbounds i8, ptr %199, i64 1
  %201 = load i8, ptr %198, align 1, !tbaa !55
  %202 = zext i8 %201 to i64
  %203 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %202
  %204 = load i32, ptr %203, align 4, !tbaa !92
  %205 = and i32 %204, 2
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %246, label %207

207:                                              ; preds = %196
  %208 = sext i8 %201 to i32
  %209 = add nsw i32 %208, -48
  %210 = getelementptr inbounds i8, ptr %148, i64 2
  %211 = load i8, ptr %210, align 1, !tbaa !55
  %212 = zext i8 %211 to i64
  %213 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %212
  %214 = load i32, ptr %213, align 4, !tbaa !92
  %215 = and i32 %214, 2
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %235, label %217

217:                                              ; preds = %207, %222
  %218 = phi ptr [ %228, %222 ], [ %210, %207 ]
  %219 = phi i32 [ %227, %222 ], [ %209, %207 ]
  %220 = icmp sgt i32 %219, 214748363
  br i1 %220, label %221, label %222

221:                                              ; preds = %217
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.32) #11
  br label %222

222:                                              ; preds = %221, %217
  %223 = mul nsw i32 %219, 10
  %224 = load i8, ptr %218, align 1, !tbaa !55
  %225 = sext i8 %224 to i32
  %226 = add i32 %223, -48
  %227 = add i32 %226, %225
  %228 = getelementptr inbounds i8, ptr %218, i64 1
  %229 = load i8, ptr %228, align 1, !tbaa !55
  %230 = zext i8 %229 to i64
  %231 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %230
  %232 = load i32, ptr %231, align 4, !tbaa !92
  %233 = and i32 %232, 2
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %217, !llvm.loop !259

235:                                              ; preds = %222, %207
  %236 = phi i32 [ %209, %207 ], [ %227, %222 ]
  %237 = phi ptr [ %210, %207 ], [ %228, %222 ]
  %238 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 5
  store i32 %236, ptr %238, align 4, !tbaa !92
  %239 = load i8, ptr %237, align 1, !tbaa !55
  %240 = icmp eq i8 %239, 93
  br i1 %240, label %252, label %241

241:                                              ; preds = %235
  %242 = load i32, ptr %7, align 8, !tbaa !74
  %243 = and i32 %242, 1
  %244 = icmp eq i32 %243, 0
  %245 = select i1 %244, ptr @.str.30, ptr @.str.29
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.27, ptr noundef nonnull %245) #11
  br label %252

246:                                              ; preds = %196
  %247 = getelementptr inbounds i8, ptr %0, i64 36
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %2)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(36) %0, i64 36, i1 false), !tbaa.struct !91
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %197, i64 32, i1 false), !tbaa.struct !189
  store ptr %199, ptr %5, align 8, !tbaa !73
  store ptr %198, ptr %0, align 8, !tbaa !69
  %248 = tail call fastcc i32 @S_measure_struct(ptr noundef nonnull %0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %2, i64 36, i1 false), !tbaa.struct !91
  store i32 %248, ptr %247, align 4, !tbaa.struct !261
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %197, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !189
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3)
  br label %252

249:                                              ; preds = %192
  %250 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 6
  %251 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 5
  store i32 0, ptr %250, align 8, !tbaa !82
  store i32 1, ptr %251, align 4, !tbaa !84
  br label %252

252:                                              ; preds = %246, %241, %235, %193, %249, %187
  %253 = phi ptr [ %189, %187 ], [ %195, %193 ], [ %148, %249 ], [ %200, %235 ], [ %200, %241 ], [ %200, %246 ]
  %254 = icmp ult ptr %253, %6
  br i1 %254, label %255, label %300, !prof !65

255:                                              ; preds = %252, %294
  %256 = phi ptr [ %295, %294 ], [ %253, %252 ]
  %257 = load i8, ptr %256, align 1, !tbaa !55
  %258 = zext i8 %257 to i64
  %259 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %258
  %260 = load i32, ptr %259, align 4, !tbaa !92
  %261 = and i32 %260, 17408
  %262 = icmp eq i32 %261, 17408
  br i1 %262, label %263, label %265, !prof !262

263:                                              ; preds = %255
  %264 = getelementptr inbounds i8, ptr %256, i64 1
  br label %294

265:                                              ; preds = %255
  switch i8 %257, label %300 [
    i8 35, label %266
    i8 47, label %276
  ], !prof !260

266:                                              ; preds = %265, %270
  %267 = phi ptr [ %268, %270 ], [ %256, %265 ]
  %268 = getelementptr inbounds i8, ptr %267, i64 1
  %269 = icmp ult ptr %268, %6
  br i1 %269, label %270, label %273

270:                                              ; preds = %266
  %271 = load i8, ptr %268, align 1, !tbaa !55
  %272 = icmp eq i8 %271, 10
  br i1 %272, label %273, label %266, !llvm.loop !263

273:                                              ; preds = %270, %266
  %274 = getelementptr inbounds i8, ptr %267, i64 2
  %275 = select i1 %269, ptr %274, ptr %268
  br label %294

276:                                              ; preds = %265
  %277 = load i32, ptr %7, align 8, !tbaa !74
  %278 = or i32 %277, 4
  store i32 %278, ptr %7, align 8, !tbaa !74
  %279 = getelementptr inbounds i8, ptr %256, i64 1
  %280 = icmp ult ptr %279, %6
  br i1 %280, label %281, label %300

281:                                              ; preds = %276
  %282 = load i8, ptr %279, align 1, !tbaa !55
  %283 = zext i8 %282 to i64
  %284 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %283
  %285 = load i32, ptr %284, align 4, !tbaa !92
  %286 = freeze i32 %285
  %287 = and i32 %286, 2
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %289, label %290

289:                                              ; preds = %281
  switch i8 %282, label %300 [
    i8 91, label %290
    i8 42, label %290
  ]

290:                                              ; preds = %289, %289, %281
  %291 = and i32 %277, 1
  %292 = icmp eq i32 %291, 0
  %293 = select i1 %292, ptr @.str.30, ptr @.str.29
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.28, ptr noundef nonnull %293) #11
  br label %300

294:                                              ; preds = %273, %263
  %295 = phi ptr [ %264, %263 ], [ %275, %273 ]
  %296 = icmp ult ptr %295, %6
  br i1 %296, label %255, label %300, !prof !258, !llvm.loop !264

297:                                              ; preds = %147
  %298 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 6
  %299 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 5
  store i32 0, ptr %298, align 8, !tbaa !82
  store i32 1, ptr %299, align 4, !tbaa !84
  br label %300

300:                                              ; preds = %294, %265, %252, %289, %276, %290, %297
  %301 = phi ptr [ %279, %290 ], [ %279, %276 ], [ %148, %297 ], [ %279, %289 ], [ %253, %252 ], [ %256, %265 ], [ %295, %294 ]
  %302 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 4
  store i32 %150, ptr %302, align 8, !tbaa !79
  store ptr %301, ptr %0, align 8, !tbaa !69
  br label %303

303:                                              ; preds = %38, %42, %44, %300
  %304 = phi ptr [ %301, %300 ], [ %36, %44 ], [ %36, %42 ], [ %36, %38 ]
  br i1 %37, label %305, label %311, !prof !250

305:                                              ; preds = %20, %31, %303
  %306 = phi ptr [ %304, %303 ], [ %21, %20 ], [ %33, %31 ]
  %307 = icmp ult ptr %306, %6
  br i1 %307, label %11, label %308, !prof !265, !llvm.loop !252

308:                                              ; preds = %305, %1
  %309 = phi ptr [ %4, %1 ], [ %306, %305 ]
  %310 = phi i1 [ %10, %1 ], [ %307, %305 ]
  store ptr %309, ptr %0, align 8, !tbaa !69
  br label %311

311:                                              ; preds = %303, %308
  %312 = phi i1 [ %310, %308 ], [ %12, %303 ]
  ret i1 %312
}

declare ptr @Perl_stack_grow(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @Perl_tmps_grow_p(i64 noundef) local_unnamed_addr #2

declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare ptr @Perl_newSVuv(i64 noundef) local_unnamed_addr #2

declare i64 @Perl_utf8_length(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newSViv(i64 noundef) local_unnamed_addr #2

declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newSVpvn(ptr noundef, i64 noundef) local_unnamed_addr #2

declare zeroext i1 @Perl_sv_utf8_downgrade(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @utf8_to_byte(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #5 !prof !175 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %5 = load ptr, ptr %0, align 8, !tbaa !76
  %6 = ptrtoint ptr %1 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 44) #11
  %10 = select i1 %9, i32 0, i32 -8161
  %11 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %5, i64 noundef %8, ptr noundef nonnull %4, i32 noundef %10) #11
  %12 = load i64, ptr %4, align 8
  %13 = add i64 %12, 1
  %14 = icmp ult i64 %13, 2
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = and i32 %2, 255
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.38, i32 noundef %16) #11
  br label %17

17:                                               ; preds = %3, %15
  %18 = icmp ugt i64 %11, 255
  br i1 %18, label %19, label %22

19:                                               ; preds = %17
  %20 = and i32 %2, 255
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 42, ptr noundef nonnull @.str.39, i32 noundef %20) #11
  %21 = and i64 %11, 255
  br label %22

22:                                               ; preds = %19, %17
  %23 = phi i64 [ %21, %19 ], [ %11, %17 ]
  %24 = load i64, ptr %4, align 8, !tbaa !63
  %25 = load ptr, ptr %0, align 8, !tbaa !76
  %26 = getelementptr inbounds i8, ptr %25, i64 %24
  store ptr %26, ptr %0, align 8, !tbaa !76
  %27 = trunc i64 %23 to i8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  ret i8 %27
}

declare ptr @Perl_newSV(i64 noundef) local_unnamed_addr #2

declare i64 @Perl_utf8n_to_uvchr(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @Perl_ckwarn(i32 noundef) local_unnamed_addr #2

declare void @Perl_sv_setiv(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_sv_newmortal() local_unnamed_addr #2

declare void @Perl_sv_setuv(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i1 @S_utf8_to_bytes(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3, i32 noundef %4) unnamed_addr #5 !prof !175 {
  %6 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  %7 = load ptr, ptr %0, align 8, !tbaa !76
  %8 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 44) #11
  %9 = select i1 %8, i32 8192, i32 -8161
  %10 = and i32 %4, 1536
  %11 = icmp eq i32 %10, 512
  %12 = icmp slt i32 %3, 1
  br i1 %12, label %54, label %13

13:                                               ; preds = %5
  %14 = ptrtoint ptr %1 to i64
  %15 = icmp ult ptr %7, %1
  br i1 %15, label %16, label %100

16:                                               ; preds = %13
  %17 = select i1 %11, i32 %3, i32 0
  %18 = zext nneg i32 %17 to i64
  %19 = getelementptr inbounds i8, ptr %2, i64 %18
  br label %25

20:                                               ; preds = %43
  %21 = getelementptr inbounds i8, ptr %29, i64 1
  %22 = select i1 %11, ptr %51, ptr %21
  %23 = add nsw i32 %28, -1
  %24 = icmp ult ptr %46, %1
  br i1 %24, label %25, label %100, !llvm.loop !266

25:                                               ; preds = %16, %20
  %26 = phi ptr [ %7, %16 ], [ %46, %20 ]
  %27 = phi i32 [ 0, %16 ], [ %49, %20 ]
  %28 = phi i32 [ %3, %16 ], [ %23, %20 ]
  %29 = phi ptr [ %19, %16 ], [ %22, %20 ]
  %30 = ptrtoint ptr %26 to i64
  %31 = sub i64 %14, %30
  %32 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %26, i64 noundef %31, ptr noundef nonnull %6, i32 noundef %9) #11
  %33 = load i64, ptr %6, align 8
  %34 = add i64 %33, 1
  %35 = icmp ult i64 %34, 2
  br i1 %35, label %36, label %43

36:                                               ; preds = %25
  %37 = load i8, ptr %26, align 1, !tbaa !55
  %38 = zext i8 %37 to i64
  %39 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !55
  %41 = zext i8 %40 to i64
  %42 = or i32 %27, 1
  br label %43

43:                                               ; preds = %25, %36
  %44 = phi i64 [ %41, %36 ], [ %33, %25 ]
  %45 = phi i32 [ %42, %36 ], [ %27, %25 ]
  %46 = getelementptr inbounds i8, ptr %26, i64 %44
  %47 = icmp ugt i64 %32, 255
  %48 = or i32 %45, 2
  %49 = select i1 %47, i32 %48, i32 %45
  %50 = trunc i64 %32 to i8
  %51 = getelementptr inbounds i8, ptr %29, i64 -1
  %52 = select i1 %11, ptr %51, ptr %29
  store i8 %50, ptr %52, align 1, !tbaa !55
  %53 = icmp slt i32 %28, 2
  br i1 %53, label %54, label %20, !llvm.loop !266

54:                                               ; preds = %43, %5
  %55 = phi ptr [ %7, %5 ], [ %46, %43 ]
  %56 = phi i32 [ 0, %5 ], [ %49, %43 ]
  %57 = phi i1 [ %12, %5 ], [ %53, %43 ]
  %58 = icmp eq i32 %56, 0
  br i1 %58, label %98, label %59

59:                                               ; preds = %54
  %60 = and i32 %56, 1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %88, label %62

62:                                               ; preds = %59
  %63 = call zeroext i1 @Perl_ckwarn(i32 noundef 44) #11
  %64 = select i1 %63, i32 0, i32 -8161
  %65 = load ptr, ptr %0, align 8, !tbaa !76
  %66 = icmp ult ptr %65, %55
  %67 = icmp ult ptr %65, %1
  %68 = and i1 %66, %67
  br i1 %68, label %69, label %85

69:                                               ; preds = %62
  %70 = ptrtoint ptr %1 to i64
  br label %71

71:                                               ; preds = %69, %71
  %72 = phi ptr [ %65, %69 ], [ %81, %71 ]
  %73 = ptrtoint ptr %72 to i64
  %74 = sub i64 %70, %73
  %75 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %72, i64 noundef %74, ptr noundef nonnull %6, i32 noundef %64) #11
  %76 = load i8, ptr %72, align 1, !tbaa !55
  %77 = zext i8 %76 to i64
  %78 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %77
  %79 = load i8, ptr %78, align 1, !tbaa !55
  %80 = zext i8 %79 to i64
  %81 = getelementptr inbounds i8, ptr %72, i64 %80
  %82 = icmp ult ptr %81, %55
  %83 = icmp ult ptr %81, %1
  %84 = and i1 %82, %83
  br i1 %84, label %71, label %85, !llvm.loop !267

85:                                               ; preds = %71, %62
  %86 = icmp ugt ptr %55, %1
  %87 = select i1 %86, ptr %1, ptr %55
  br label %88

88:                                               ; preds = %85, %59
  %89 = phi ptr [ %87, %85 ], [ %55, %59 ]
  %90 = and i32 %56, 2
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %88
  %93 = and i32 %4, 2048
  %94 = icmp eq i32 %93, 0
  %95 = select i1 %94, i32 42, i32 16
  %96 = and i32 %4, 255
  %97 = select i1 %94, ptr @.str.30, ptr @.str.29
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef %95, ptr noundef nonnull @.str.40, i32 noundef %96, ptr noundef nonnull %97) #11
  br label %98

98:                                               ; preds = %88, %92, %54
  %99 = phi ptr [ %89, %92 ], [ %89, %88 ], [ %55, %54 ]
  store ptr %99, ptr %0, align 8, !tbaa !76
  br label %100

100:                                              ; preds = %20, %13, %98
  %101 = phi i1 [ %57, %98 ], [ %12, %13 ], [ %53, %20 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  ret i1 %101
}

declare ptr @Perl_newSVpv(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_newSVpvf(ptr noundef, ...) local_unnamed_addr #2

declare void @Perl_sv_chop(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newSVpvn_flags(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_sv_setnv(ptr noundef, double noundef) local_unnamed_addr #2

declare void @Perl_sv_catpvn_flags(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write)
declare double @modf(double noundef, ptr nocapture noundef) local_unnamed_addr #6

declare ptr @Perl_newSVnv(double noundef) local_unnamed_addr #2

declare i64 @Perl_sv_2iv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_warner(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @S_group_end(ptr noundef %0, ptr noundef %1, i8 noundef signext %2) unnamed_addr #5 !prof !175 {
  br label %4

4:                                                ; preds = %39, %3
  %5 = phi ptr [ %0, %3 ], [ %40, %39 ]
  %6 = phi ptr [ undef, %3 ], [ %41, %39 ]
  %7 = ptrtoint ptr %5 to i64
  %8 = icmp ult ptr %5, %1
  br i1 %8, label %9, label %43

9:                                                ; preds = %4
  %10 = getelementptr inbounds i8, ptr %5, i64 1
  %11 = load i8, ptr %5, align 1, !tbaa !55
  %12 = zext i8 %11 to i64
  %13 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !92
  %15 = and i32 %14, 17408
  %16 = icmp eq i32 %15, 17408
  br i1 %16, label %39, label %17, !llvm.loop !268

17:                                               ; preds = %9
  %18 = icmp eq i8 %11, %2
  br i1 %18, label %39, label %19

19:                                               ; preds = %17
  switch i8 %11, label %39 [
    i8 35, label %20
    i8 40, label %35
    i8 91, label %34
  ]

20:                                               ; preds = %19
  %21 = icmp ult ptr %10, %1
  br i1 %21, label %22, label %39, !llvm.loop !268

22:                                               ; preds = %20
  %23 = ptrtoint ptr %1 to i64
  %24 = getelementptr i8, ptr %5, i64 %23
  %25 = sub i64 0, %7
  %26 = getelementptr i8, ptr %24, i64 %25
  br label %27

27:                                               ; preds = %22, %31
  %28 = phi ptr [ %32, %31 ], [ %10, %22 ]
  %29 = load i8, ptr %28, align 1, !tbaa !55
  %30 = icmp eq i8 %29, 10
  br i1 %30, label %39, label %31, !llvm.loop !268

31:                                               ; preds = %27
  %32 = getelementptr inbounds i8, ptr %28, i64 1
  %33 = icmp eq ptr %32, %26
  br i1 %33, label %39, label %27, !llvm.loop !269

34:                                               ; preds = %19
  br label %35

35:                                               ; preds = %19, %34
  %36 = phi i8 [ 93, %34 ], [ 41, %19 ]
  %37 = tail call fastcc ptr @S_group_end(ptr noundef nonnull %10, ptr noundef nonnull %1, i8 noundef signext %36)
  %38 = getelementptr inbounds i8, ptr %37, i64 1
  br label %39

39:                                               ; preds = %27, %31, %35, %20, %19, %17, %9
  %40 = phi ptr [ %10, %9 ], [ %10, %17 ], [ %10, %19 ], [ %10, %20 ], [ %38, %35 ], [ %26, %31 ], [ %28, %27 ]
  %41 = phi ptr [ %6, %9 ], [ %5, %17 ], [ %6, %19 ], [ %6, %20 ], [ %6, %35 ], [ %6, %31 ], [ %6, %27 ]
  %42 = phi i1 [ false, %9 ], [ true, %17 ], [ false, %19 ], [ false, %20 ], [ false, %35 ], [ false, %31 ], [ false, %27 ]
  br i1 %42, label %45, label %4

43:                                               ; preds = %4
  %44 = zext nneg i8 %2 to i32
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.31, i32 noundef %44) #11
  br label %45

45:                                               ; preds = %39, %43
  %46 = phi ptr [ null, %43 ], [ %41, %39 ]
  ret ptr %46
}

declare void @Perl_ck_warner(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @S_measure_struct(ptr nocapture noundef %0) unnamed_addr #5 !prof !175 {
  %2 = alloca { ptr, ptr }, align 8
  %3 = alloca { i32, i32, i32, i32, i32, i64, ptr }, align 8
  %4 = tail call fastcc zeroext i1 @S_next_symbol(ptr noundef %0)
  br i1 %4, label %5, label %84

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 6
  %7 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 8
  %8 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 5
  %9 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 4
  %10 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 8
  br label %11

11:                                               ; preds = %5, %78
  %12 = phi i32 [ 0, %5 ], [ %82, %78 ]
  %13 = load i32, ptr %6, align 8, !tbaa !82
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load i32, ptr %7, align 8, !tbaa !74
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, ptr @.str.30, ptr @.str.29
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.33, ptr noundef nonnull %19) #11
  br label %20

20:                                               ; preds = %11, %15
  %21 = load i32, ptr %8, align 4, !tbaa !84
  %22 = load i32, ptr %9, align 8, !tbaa !79
  %23 = and i32 %22, -1537
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [512 x i8], ptr @packprops, i64 0, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !55
  %27 = and i8 %26, 63
  %28 = zext nneg i8 %27 to i32
  %29 = icmp eq i8 %27, 0
  br i1 %29, label %30, label %78

30:                                               ; preds = %20
  switch i32 %23, label %31 [
    i32 302, label %38
    i32 320, label %38
    i32 64, label %38
    i32 46, label %38
    i32 47, label %38
    i32 85, label %38
    i32 119, label %38
    i32 117, label %38
    i32 37, label %78
    i32 40, label %45
    i32 344, label %52
    i32 88, label %55
    i32 376, label %64
    i32 120, label %70
    i32 65, label %70
    i32 90, label %70
    i32 97, label %70
    i32 66, label %71
    i32 98, label %71
    i32 72, label %74
    i32 104, label %74
    i32 80, label %77
  ]

31:                                               ; preds = %30
  %32 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 8
  %33 = and i32 %22, 255
  %34 = load i32, ptr %32, align 8, !tbaa !74
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, ptr @.str.30, ptr @.str.29
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.34, i32 noundef %33, ptr noundef nonnull %37) #11
  br label %38

38:                                               ; preds = %30, %30, %30, %30, %30, %30, %30, %30, %31
  %39 = load i32, ptr %9, align 8, !tbaa !79
  %40 = and i32 %39, 255
  %41 = load i32, ptr %10, align 8, !tbaa !74
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, ptr @.str.30, ptr @.str.29
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.35, i32 noundef %40, ptr noundef nonnull %44) #11
  br label %78

45:                                               ; preds = %30
  %46 = getelementptr inbounds i8, ptr %0, i64 16
  %47 = getelementptr inbounds i8, ptr %0, i64 24
  %48 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !91
  %49 = load ptr, ptr %46, align 8, !tbaa.struct !187
  %50 = load ptr, ptr %47, align 8, !tbaa.struct !188
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %9, i64 40, i1 false), !tbaa.struct !270
  store ptr %49, ptr %0, align 8, !tbaa !69
  store ptr %50, ptr %48, align 8, !tbaa !73
  %51 = tail call fastcc i32 @S_measure_struct(ptr noundef nonnull %0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !91
  store ptr %49, ptr %46, align 8, !tbaa.struct !187
  store ptr %50, ptr %47, align 8, !tbaa.struct !188
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !270
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3)
  br label %78

52:                                               ; preds = %30
  %53 = tail call i32 @llvm.umax.i32(i32 %21, i32 1)
  %54 = srem i32 %12, %53
  br label %55

55:                                               ; preds = %30, %52
  %56 = phi i32 [ %54, %52 ], [ %21, %30 ]
  %57 = icmp slt i32 %12, %56
  br i1 %57, label %58, label %78

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.tempsym, ptr %0, i64 0, i32 8
  %60 = load i32, ptr %59, align 8, !tbaa !74
  %61 = and i32 %60, 1
  %62 = icmp eq i32 %61, 0
  %63 = select i1 %62, ptr @.str.30, ptr @.str.29
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.36, ptr noundef nonnull %63) #11
  br label %78

64:                                               ; preds = %30
  %65 = tail call i32 @llvm.umax.i32(i32 %21, i32 1)
  %66 = srem i32 %12, %65
  %67 = icmp eq i32 %66, 0
  %68 = sub nsw i32 %65, %66
  %69 = select i1 %67, i32 0, i32 %68
  br label %78

70:                                               ; preds = %30, %30, %30, %30
  br label %78

71:                                               ; preds = %30, %30
  %72 = add nsw i32 %21, 7
  %73 = sdiv i32 %72, 8
  br label %78

74:                                               ; preds = %30, %30
  %75 = add nsw i32 %21, 1
  %76 = sdiv i32 %75, 2
  br label %78

77:                                               ; preds = %30
  br label %78

78:                                               ; preds = %64, %45, %70, %71, %74, %77, %58, %55, %30, %38, %20
  %79 = phi i32 [ %28, %20 ], [ 8, %77 ], [ 1, %74 ], [ 1, %71 ], [ -1, %58 ], [ -1, %55 ], [ %51, %45 ], [ 0, %30 ], [ 0, %38 ], [ 1, %70 ], [ 1, %64 ]
  %80 = phi i32 [ %21, %20 ], [ 1, %77 ], [ %76, %74 ], [ %73, %71 ], [ %56, %58 ], [ %56, %55 ], [ %21, %45 ], [ %21, %30 ], [ %21, %38 ], [ %21, %70 ], [ %69, %64 ]
  %81 = mul nsw i32 %80, %79
  %82 = add nsw i32 %81, %12
  %83 = tail call fastcc zeroext i1 @S_next_symbol(ptr noundef %0)
  br i1 %83, label %11, label %84, !llvm.loop !271

84:                                               ; preds = %78, %1
  %85 = phi i32 [ 0, %1 ], [ %82, %78 ]
  ret i32 %85
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #3

declare void @Perl_sv_catsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal fastcc void @marked_upgrade(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #5 !prof !175 {
  %3 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !111
  %5 = and i32 %4, 536870912
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %170

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  %10 = load ptr, ptr %0, align 8, !tbaa !119
  %11 = getelementptr inbounds %struct.xpv, ptr %10, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !120
  %13 = getelementptr inbounds i8, ptr %9, i64 %12
  %14 = icmp sgt i64 %12, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %7, %19
  %16 = phi ptr [ %20, %19 ], [ %9, %7 ]
  %17 = load i8, ptr %16, align 1, !tbaa !55
  %18 = icmp sgt i8 %17, -1
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = getelementptr inbounds i8, ptr %16, i64 1
  %21 = icmp ult ptr %20, %13
  br i1 %21, label %15, label %22, !llvm.loop !272

22:                                               ; preds = %19, %15, %7
  %23 = phi ptr [ %9, %7 ], [ %20, %19 ], [ %16, %15 ]
  %24 = icmp eq ptr %23, %13
  br i1 %24, label %167, label %25

25:                                               ; preds = %22
  %26 = ptrtoint ptr %13 to i64
  %27 = ptrtoint ptr %23 to i64
  %28 = sub i64 %26, %27
  %29 = shl nsw i64 %28, 1
  %30 = ptrtoint ptr %9 to i64
  %31 = sub i64 %27, %30
  %32 = add i64 %31, 1
  %33 = add i64 %32, %29
  %34 = tail call ptr @Perl_safesysmalloc(i64 noundef %33) #11
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %34, ptr align 1 %9, i64 %31, i1 false)
  %35 = getelementptr inbounds i8, ptr %34, i64 %31
  %36 = getelementptr inbounds %struct.tempsym, ptr %1, i64 0, i32 7
  %37 = load i32, ptr %36, align 4, !tbaa !95
  %38 = add nsw i32 %37, 2
  %39 = sext i32 %38 to i64
  %40 = shl nsw i64 %39, 3
  %41 = tail call ptr @Perl_safesysmalloc(i64 noundef %40) #11
  %42 = icmp eq ptr %1, null
  br i1 %42, label %55, label %43

43:                                               ; preds = %25, %43
  %44 = phi ptr [ %53, %43 ], [ %1, %25 ]
  %45 = getelementptr inbounds %struct.tempsym, ptr %44, i64 0, i32 9
  %46 = load i64, ptr %45, align 8, !tbaa !77
  %47 = getelementptr inbounds i8, ptr %9, i64 %46
  %48 = getelementptr inbounds %struct.tempsym, ptr %44, i64 0, i32 7
  %49 = load i32, ptr %48, align 4, !tbaa !95
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds ptr, ptr %41, i64 %50
  store ptr %47, ptr %51, align 8, !tbaa !76
  %52 = getelementptr inbounds %struct.tempsym, ptr %44, i64 0, i32 10
  %53 = load ptr, ptr %52, align 8, !tbaa !94
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %43, !llvm.loop !273

55:                                               ; preds = %43, %25
  %56 = getelementptr inbounds i8, ptr %13, i64 1
  %57 = load i32, ptr %36, align 4, !tbaa !95
  %58 = sext i32 %57 to i64
  %59 = getelementptr ptr, ptr %41, i64 %58
  %60 = getelementptr ptr, ptr %59, i64 1
  store ptr %56, ptr %60, align 8, !tbaa !76
  %61 = load ptr, ptr %41, align 8, !tbaa !76
  %62 = icmp ult ptr %61, %23
  br i1 %62, label %66, label %63

63:                                               ; preds = %66, %55
  %64 = phi ptr [ %41, %55 ], [ %72, %66 ]
  %65 = icmp ult ptr %23, %13
  br i1 %65, label %75, label %93

66:                                               ; preds = %55, %66
  %67 = phi ptr [ %73, %66 ], [ %61, %55 ]
  %68 = phi ptr [ %72, %66 ], [ %41, %55 ]
  %69 = ptrtoint ptr %67 to i64
  %70 = sub i64 %69, %30
  %71 = getelementptr inbounds i8, ptr %34, i64 %70
  store ptr %71, ptr %68, align 8, !tbaa !76
  %72 = getelementptr inbounds ptr, ptr %68, i64 1
  %73 = load ptr, ptr %72, align 8, !tbaa !76
  %74 = icmp ult ptr %73, %23
  br i1 %74, label %66, label %63, !llvm.loop !274

75:                                               ; preds = %63, %86
  %76 = phi ptr [ %90, %86 ], [ %35, %63 ]
  %77 = phi ptr [ %87, %86 ], [ %64, %63 ]
  %78 = phi ptr [ %91, %86 ], [ %23, %63 ]
  %79 = load ptr, ptr %77, align 8, !tbaa !76
  %80 = icmp eq ptr %79, %78
  br i1 %80, label %81, label %86

81:                                               ; preds = %75, %81
  %82 = phi ptr [ %83, %81 ], [ %77, %75 ]
  %83 = getelementptr inbounds ptr, ptr %82, i64 1
  store ptr %76, ptr %82, align 8, !tbaa !76
  %84 = load ptr, ptr %83, align 8, !tbaa !76
  %85 = icmp eq ptr %84, %78
  br i1 %85, label %81, label %86, !llvm.loop !275

86:                                               ; preds = %81, %75
  %87 = phi ptr [ %77, %75 ], [ %83, %81 ]
  %88 = load i8, ptr %78, align 1, !tbaa !55
  %89 = zext i8 %88 to i64
  %90 = tail call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %76, i64 noundef %89, i64 noundef 0) #11
  %91 = getelementptr inbounds i8, ptr %78, i64 1
  %92 = icmp ult ptr %91, %13
  br i1 %92, label %75, label %93, !llvm.loop !276

93:                                               ; preds = %86, %63
  %94 = phi ptr [ %23, %63 ], [ %91, %86 ]
  %95 = phi ptr [ %64, %63 ], [ %87, %86 ]
  %96 = phi ptr [ %35, %63 ], [ %90, %86 ]
  store i8 0, ptr %96, align 1, !tbaa !55
  %97 = load ptr, ptr %95, align 8, !tbaa !76
  %98 = icmp eq ptr %97, %94
  br i1 %98, label %99, label %104

99:                                               ; preds = %93, %99
  %100 = phi ptr [ %101, %99 ], [ %95, %93 ]
  %101 = getelementptr inbounds ptr, ptr %100, i64 1
  store ptr %96, ptr %100, align 8, !tbaa !76
  %102 = load ptr, ptr %101, align 8, !tbaa !76
  %103 = icmp eq ptr %102, %94
  br i1 %103, label %99, label %104, !llvm.loop !277

104:                                              ; preds = %99, %93
  %105 = phi ptr [ %95, %93 ], [ %101, %99 ]
  %106 = load i32, ptr %36, align 4, !tbaa !95
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds ptr, ptr %41, i64 %107
  %109 = getelementptr inbounds ptr, ptr %108, i64 1
  %110 = icmp eq ptr %105, %109
  br i1 %110, label %113, label %111

111:                                              ; preds = %104
  tail call void @Perl_safesysfree(ptr noundef nonnull %41) #11
  tail call void @Perl_safesysfree(ptr noundef %34) #11
  %112 = load i32, ptr %36, align 4, !tbaa !95
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.60, ptr noundef nonnull %105, ptr noundef nonnull %41, i32 noundef %112) #11
  br label %113

113:                                              ; preds = %111, %104
  %114 = icmp eq ptr %1, null
  br i1 %114, label %130, label %115

115:                                              ; preds = %113
  %116 = ptrtoint ptr %34 to i64
  br label %117

117:                                              ; preds = %115, %117
  %118 = phi ptr [ %1, %115 ], [ %128, %117 ]
  %119 = getelementptr inbounds %struct.tempsym, ptr %118, i64 0, i32 7
  %120 = load i32, ptr %119, align 4, !tbaa !95
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds ptr, ptr %41, i64 %121
  %123 = load ptr, ptr %122, align 8, !tbaa !76
  %124 = ptrtoint ptr %123 to i64
  %125 = sub i64 %124, %116
  %126 = getelementptr inbounds %struct.tempsym, ptr %118, i64 0, i32 9
  store i64 %125, ptr %126, align 8, !tbaa !77
  %127 = getelementptr inbounds %struct.tempsym, ptr %118, i64 0, i32 10
  %128 = load ptr, ptr %127, align 8, !tbaa !94
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %117, !llvm.loop !278

130:                                              ; preds = %117, %113
  tail call void @Perl_safesysfree(ptr noundef nonnull %41) #11
  %131 = load i32, ptr %3, align 4, !tbaa !111
  %132 = and i32 %131, 33554432
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %152, label %134

134:                                              ; preds = %130
  %135 = load ptr, ptr %0, align 8, !tbaa !119
  %136 = getelementptr inbounds %struct.xpviv, ptr %135, i64 0, i32 4
  %137 = load i64, ptr %136, align 8, !tbaa !55
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %148, label %139

139:                                              ; preds = %134
  %140 = getelementptr inbounds %struct.xpv, ptr %135, i64 0, i32 3
  %141 = load i64, ptr %140, align 8, !tbaa !55
  %142 = add i64 %141, %137
  store i64 %142, ptr %140, align 8, !tbaa !55
  %143 = load ptr, ptr %0, align 8, !tbaa !119
  %144 = getelementptr inbounds %struct.xpviv, ptr %143, i64 0, i32 4
  %145 = load i64, ptr %144, align 8, !tbaa !55
  %146 = sub i64 0, %145
  %147 = getelementptr inbounds i8, ptr %9, i64 %146
  store i64 0, ptr %144, align 8, !tbaa !55
  br label %148

148:                                              ; preds = %139, %134
  %149 = phi ptr [ %147, %139 ], [ %9, %134 ]
  %150 = load i32, ptr %3, align 4, !tbaa !111
  %151 = and i32 %150, -33554433
  store i32 %151, ptr %3, align 4, !tbaa !111
  br label %152

152:                                              ; preds = %148, %130
  %153 = phi ptr [ %149, %148 ], [ %9, %130 ]
  %154 = load ptr, ptr %0, align 8, !tbaa !119
  %155 = getelementptr inbounds %struct.xpv, ptr %154, i64 0, i32 3
  %156 = load i64, ptr %155, align 8, !tbaa !55
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %152
  tail call void @Perl_safesysfree(ptr noundef %153) #11
  br label %159

159:                                              ; preds = %152, %158
  store ptr %34, ptr %8, align 8, !tbaa !55
  %160 = ptrtoint ptr %96 to i64
  %161 = ptrtoint ptr %34 to i64
  %162 = sub i64 %160, %161
  %163 = load ptr, ptr %0, align 8, !tbaa !119
  %164 = getelementptr inbounds %struct.xpv, ptr %163, i64 0, i32 2
  store i64 %162, ptr %164, align 8, !tbaa !120
  %165 = getelementptr inbounds %struct.xpv, ptr %163, i64 0, i32 3
  store i64 %33, ptr %165, align 8, !tbaa !55
  %166 = load i32, ptr %3, align 4, !tbaa !111
  br label %167

167:                                              ; preds = %22, %159
  %168 = phi i32 [ %166, %159 ], [ %4, %22 ]
  %169 = or i32 %168, 536870912
  store i32 %169, ptr %3, align 4, !tbaa !111
  br label %170

170:                                              ; preds = %167, %2
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @S_sv_exp_grow(ptr noundef %0, i64 noundef %1) unnamed_addr #5 !prof !175 {
  %3 = load ptr, ptr %0, align 8, !tbaa !119
  %4 = getelementptr inbounds %struct.xpv, ptr %3, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !120
  %6 = getelementptr inbounds %struct.xpv, ptr %3, i64 0, i32 3
  %7 = load i64, ptr %6, align 8, !tbaa !55
  %8 = sub i64 %7, %5
  %9 = icmp ugt i64 %8, %1
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !55
  br label %30

13:                                               ; preds = %2
  %14 = tail call i64 @llvm.umax.i64(i64 %7, i64 %1)
  %15 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !111
  %17 = and i32 %16, 268435456
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = add i64 %7, 1
  %21 = add i64 %20, %14
  %22 = icmp ult i64 %7, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %19, %13
  %24 = add i64 %7, 1
  %25 = add i64 %24, %14
  %26 = tail call ptr @Perl_sv_grow(ptr noundef nonnull %0, i64 noundef %25) #11
  br label %30

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !55
  br label %30

30:                                               ; preds = %23, %27, %10
  %31 = phi ptr [ %12, %10 ], [ %26, %23 ], [ %29, %27 ]
  ret ptr %31
}

declare i64 @Perl_sv_len_utf8(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @S_sv_check_infnan(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !279 !PGOFuncName !280 {
  %3 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !111
  %5 = and i32 %4, 2097152
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7, !prof !182

7:                                                ; preds = %2
  %8 = tail call i32 @Perl_mg_get(ptr noundef %0) #11
  br label %9

9:                                                ; preds = %2, %7
  %10 = load i32, ptr %3, align 4, !tbaa !111
  %11 = and i32 %10, 2048
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %29, label %13, !prof !182

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !55
  %16 = getelementptr inbounds %struct.sv, ptr %15, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !111
  %18 = and i32 %17, 1048576
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %13
  %21 = load ptr, ptr %15, align 8, !tbaa !119
  %22 = load ptr, ptr %21, align 8, !tbaa !281
  %23 = getelementptr inbounds %struct.hv, ptr %22, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !283
  %25 = and i32 %24, 268435456
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %20
  %28 = tail call ptr @Perl_sv_2num(ptr noundef %0) #11
  br label %29

29:                                               ; preds = %9, %13, %20, %27
  %30 = phi ptr [ %28, %27 ], [ %0, %20 ], [ %0, %13 ], [ %0, %9 ]
  %31 = tail call zeroext i1 @Perl_isinfnansv(ptr noundef %30) #11
  br i1 %31, label %32, label %49, !prof !181

32:                                               ; preds = %29
  %33 = and i32 %1, 255
  %34 = getelementptr inbounds %struct.sv, ptr %30, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !111
  %36 = and i32 %35, 512
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %32
  %39 = load ptr, ptr %30, align 8, !tbaa !119
  %40 = getelementptr inbounds %struct.xpvnv, ptr %39, i64 0, i32 5
  %41 = load double, ptr %40, align 8, !tbaa !55
  br label %44

42:                                               ; preds = %32
  %43 = tail call double @Perl_sv_2nv_flags(ptr noundef %30, i32 noundef 0) #11
  br label %44

44:                                               ; preds = %42, %38
  %45 = phi double [ %41, %38 ], [ %43, %42 ]
  %46 = icmp eq i32 %33, 119
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.61, double noundef %45) #11
  br label %49

48:                                               ; preds = %44
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.62, double noundef %45, i32 noundef %33) #11
  br label %49

49:                                               ; preds = %47, %48, %29
  ret ptr %30
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

declare ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @Perl_sv_magic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @Perl_sv_2uv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare double @Perl_sv_2nv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

declare ptr @Perl_safesysmalloc(i64 noundef) local_unnamed_addr #2

declare void @Perl_safesysfree(ptr noundef) local_unnamed_addr #2

declare i32 @Perl_mg_get(ptr noundef) local_unnamed_addr #2

declare i64 @Perl_sv_len_utf8_nomg(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc nonnull ptr @doencodes(ptr noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #9 !prof !175 {
  %4 = sext i32 %2 to i64
  %5 = getelementptr inbounds [65 x i8], ptr @PL_uuemap, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !55
  %7 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %6, ptr %0, align 1, !tbaa !55
  %8 = icmp sgt i32 %2, 2
  br i1 %8, label %9, label %52

9:                                                ; preds = %3, %9
  %10 = phi ptr [ %48, %9 ], [ %7, %3 ]
  %11 = phi i32 [ %50, %9 ], [ %2, %3 ]
  %12 = phi ptr [ %49, %9 ], [ %1, %3 ]
  %13 = load i8, ptr %12, align 1, !tbaa !55
  %14 = lshr i8 %13, 2
  %15 = zext nneg i8 %14 to i64
  %16 = getelementptr inbounds [65 x i8], ptr @PL_uuemap, i64 0, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !55
  %18 = getelementptr inbounds i8, ptr %10, i64 1
  store i8 %17, ptr %10, align 1, !tbaa !55
  %19 = load i8, ptr %12, align 1, !tbaa !55
  %20 = zext i8 %19 to i64
  %21 = shl nuw nsw i64 %20, 4
  %22 = and i64 %21, 48
  %23 = getelementptr inbounds i8, ptr %12, i64 1
  %24 = load i8, ptr %23, align 1, !tbaa !55
  %25 = lshr i8 %24, 4
  %26 = zext nneg i8 %25 to i64
  %27 = or disjoint i64 %22, %26
  %28 = getelementptr inbounds [65 x i8], ptr @PL_uuemap, i64 0, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !55
  %30 = getelementptr inbounds i8, ptr %10, i64 2
  store i8 %29, ptr %18, align 1, !tbaa !55
  %31 = load i8, ptr %23, align 1, !tbaa !55
  %32 = zext i8 %31 to i64
  %33 = shl nuw nsw i64 %32, 2
  %34 = and i64 %33, 60
  %35 = getelementptr inbounds i8, ptr %12, i64 2
  %36 = load i8, ptr %35, align 1, !tbaa !55
  %37 = lshr i8 %36, 6
  %38 = zext nneg i8 %37 to i64
  %39 = or disjoint i64 %34, %38
  %40 = getelementptr inbounds [65 x i8], ptr @PL_uuemap, i64 0, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !55
  %42 = getelementptr inbounds i8, ptr %10, i64 3
  store i8 %41, ptr %30, align 1, !tbaa !55
  %43 = load i8, ptr %35, align 1, !tbaa !55
  %44 = and i8 %43, 63
  %45 = zext nneg i8 %44 to i64
  %46 = getelementptr inbounds [65 x i8], ptr @PL_uuemap, i64 0, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !55
  %48 = getelementptr inbounds i8, ptr %10, i64 4
  store i8 %47, ptr %42, align 1, !tbaa !55
  %49 = getelementptr inbounds i8, ptr %12, i64 3
  %50 = add nsw i32 %11, -3
  %51 = icmp sgt i32 %11, 5
  br i1 %51, label %9, label %52, !llvm.loop !285

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
  %61 = load i8, ptr %60, align 1, !tbaa !55
  %62 = zext i8 %61 to i32
  br label %63

63:                                               ; preds = %57, %59
  %64 = phi i32 [ %62, %59 ], [ 0, %57 ]
  %65 = load i8, ptr %53, align 1, !tbaa !55
  %66 = lshr i8 %65, 2
  %67 = zext nneg i8 %66 to i64
  %68 = getelementptr inbounds [65 x i8], ptr @PL_uuemap, i64 0, i64 %67
  %69 = load i8, ptr %68, align 1, !tbaa !55
  %70 = getelementptr inbounds i8, ptr %55, i64 1
  store i8 %69, ptr %55, align 1, !tbaa !55
  %71 = load i8, ptr %53, align 1, !tbaa !55
  %72 = zext i8 %71 to i32
  %73 = shl nuw nsw i32 %72, 4
  %74 = and i32 %73, 48
  %75 = lshr i32 %64, 4
  %76 = or disjoint i32 %74, %75
  %77 = zext nneg i32 %76 to i64
  %78 = getelementptr inbounds [65 x i8], ptr @PL_uuemap, i64 0, i64 %77
  %79 = load i8, ptr %78, align 1, !tbaa !55
  %80 = getelementptr inbounds i8, ptr %55, i64 2
  store i8 %79, ptr %70, align 1, !tbaa !55
  %81 = shl nuw nsw i32 %64, 2
  %82 = and i32 %81, 60
  %83 = zext nneg i32 %82 to i64
  %84 = getelementptr inbounds [65 x i8], ptr @PL_uuemap, i64 0, i64 %83
  %85 = load i8, ptr %84, align 4, !tbaa !55
  %86 = getelementptr inbounds i8, ptr %55, i64 3
  store i8 %85, ptr %80, align 1, !tbaa !55
  %87 = load i8, ptr @PL_uuemap, align 16, !tbaa !55
  %88 = getelementptr inbounds i8, ptr %55, i64 4
  store i8 %87, ptr %86, align 1, !tbaa !55
  br label %89

89:                                               ; preds = %63, %52
  %90 = phi ptr [ %88, %63 ], [ %55, %52 ]
  %91 = getelementptr inbounds i8, ptr %90, i64 1
  store i8 10, ptr %90, align 1, !tbaa !55
  ret ptr %91
}

declare ptr @Perl_sv_grow(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_sv_2num(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @Perl_isinfnansv(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!51}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 53336217263}
!8 = !{!"MaxCount", i64 1126593358}
!9 = !{!"MaxInternalCount", i64 1126593358}
!10 = !{!"MaxFunctionCount", i64 465576726}
!11 = !{!"NumCounts", i64 53216}
!12 = !{!"NumFunctions", i64 2490}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1126593358, i32 1}
!18 = !{i32 100000, i64 852534058, i32 6}
!19 = !{i32 200000, i64 504831111, i32 16}
!20 = !{i32 300000, i64 482068791, i32 26}
!21 = !{i32 400000, i64 459921484, i32 39}
!22 = !{i32 500000, i64 444801476, i32 50}
!23 = !{i32 600000, i64 426267029, i32 64}
!24 = !{i32 700000, i64 422040304, i32 74}
!25 = !{i32 800000, i64 220037356, i32 89}
!26 = !{i32 900000, i64 39885265, i32 162}
!27 = !{i32 950000, i64 20973884, i32 262}
!28 = !{i32 990000, i64 1545742, i32 632}
!29 = !{i32 999000, i64 97988, i32 1692}
!30 = !{i32 999900, i64 9981, i32 2885}
!31 = !{i32 999990, i64 671, i32 4392}
!32 = !{i32 999999, i64 57, i32 6648}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
!35 = !{ptr @Perl_unpackstring, ptr @S_unpack_rec, i64 266261}
!36 = !{ptr @S_unpack_rec, ptr @S_next_symbol, i64 532532}
!37 = !{ptr @S_unpack_rec, ptr @Perl_newSVpvn, i64 12}
!38 = !{ptr @S_unpack_rec, ptr @Perl_sv_2mortal, i64 12}
!39 = !{ptr @S_unpack_rec, ptr @Perl_sv_newmortal, i64 266259}
!40 = !{ptr @S_unpack_rec, ptr @Perl_sv_setiv, i64 266259}
!41 = !{ptr @Perl_pp_unpack, ptr @Perl_sv_2pv_flags, i64 266259}
!42 = !{ptr @Perl_pp_unpack, ptr @Perl_unpackstring, i64 266261}
!43 = !{ptr @S_pack_rec, ptr @S_next_symbol, i64 58873}
!44 = !{ptr @S_pack_rec, ptr @Perl_ckwarn, i64 19625}
!45 = !{ptr @S_pack_rec, ptr @S_sv_check_infnan, i64 39248}
!46 = !{ptr @S_pack_rec, ptr @Perl_sv_2iv_flags, i64 1}
!47 = !{ptr @Perl_pp_pack, ptr @Perl_sv_setpvn, i64 19625}
!48 = !{ptr @Perl_pp_pack, ptr @S_pack_rec, i64 19625}
!49 = !{ptr @S_next_symbol, ptr @strchr, i64 4}
!50 = !{ptr @S_sv_check_infnan, ptr @Perl_isinfnansv, i64 39248}
!51 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!52 = !{!"function_entry_count", i64 266261}
!53 = !{!"branch_weights", i32 266261, i32 0}
!54 = !{!"branch_weights", i32 266260, i32 1}
!55 = !{!56, !56, i64 0}
!56 = !{!"omnipotent char", !57, i64 0}
!57 = !{!"Simple C/C++ TBAA"}
!58 = !{!"branch_weights", i32 266271, i32 0, i32 0}
!59 = !{!"branch_weights", i32 11, i32 266260}
!60 = distinct !{!60, !61, !62}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!"llvm.loop.unroll.disable"}
!63 = !{!64, !64, i64 0}
!64 = !{!"long", !56, i64 0}
!65 = !{!"branch_weights", i32 1, i32 0}
!66 = !{!"branch_weights", i32 0, i32 266261}
!67 = !{!"branch_weights", i32 266261, i32 266261}
!68 = distinct !{!68, !61, !62}
!69 = !{!70, !71, i64 0}
!70 = !{!"tempsym", !71, i64 0, !71, i64 8, !71, i64 16, !71, i64 24, !72, i64 32, !72, i64 36, !72, i64 40, !72, i64 44, !72, i64 48, !64, i64 56, !71, i64 64}
!71 = !{!"any pointer", !56, i64 0}
!72 = !{!"int", !56, i64 0}
!73 = !{!70, !71, i64 8}
!74 = !{!70, !72, i64 48}
!75 = !{!"pp_pack.c;S_unpack_rec"}
!76 = !{!71, !71, i64 0}
!77 = !{!70, !64, i64 56}
!78 = !{!"branch_weights", i32 266271, i32 266261}
!79 = !{!70, !72, i64 32}
!80 = !{!"branch_weights", i32 248479, i32 17792}
!81 = !{!"branch_weights", i32 0, i32 17792}
!82 = !{!70, !72, i64 40}
!83 = !{!"branch_weights", i32 0, i32 266271}
!84 = !{!70, !72, i64 36}
!85 = !{!"branch_weights", i32 12, i32 266259}
!86 = !{!"branch_weights", i32 0, i32 266259}
!87 = !{!"branch_weights", i32 248467, i32 17792}
!88 = !{!"branch_weights", i32 266259, i32 0}
!89 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 266259, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!90 = distinct !{!90, !61, !62}
!91 = !{i64 0, i64 8, !76, i64 8, i64 8, !76, i64 16, i64 8, !76, i64 24, i64 8, !76, i64 32, i64 4, !92, i64 36, i64 4, !92, i64 40, i64 4, !92, i64 44, i64 4, !92, i64 48, i64 4, !92, i64 56, i64 8, !63, i64 64, i64 8, !76}
!92 = !{!72, !72, i64 0}
!93 = !{!70, !71, i64 24}
!94 = !{!70, !71, i64 64}
!95 = !{!70, !72, i64 44}
!96 = !{!70, !71, i64 16}
!97 = distinct !{!97, !61, !62}
!98 = distinct !{!98, !61, !62}
!99 = distinct !{!99, !61, !62}
!100 = distinct !{!100, !61, !62}
!101 = distinct !{!101, !61, !62}
!102 = distinct !{!102, !61, !62}
!103 = distinct !{!103, !61, !62}
!104 = !{!"branch_weights", i32 12, i32 0}
!105 = distinct !{!105, !61, !62}
!106 = !{!"branch_weights", i32 0, i32 12}
!107 = !{!"branch_weights", i32 12, i32 0, i32 0}
!108 = distinct !{!108, !61, !62}
!109 = distinct !{!109, !61, !62}
!110 = distinct !{!110, !61, !62}
!111 = !{!112, !72, i64 12}
!112 = !{!"sv", !71, i64 0, !72, i64 8, !72, i64 12, !56, i64 16}
!113 = distinct !{!113, !61, !62}
!114 = distinct !{!114, !61, !62}
!115 = distinct !{!115, !61, !62}
!116 = distinct !{!116, !61, !62}
!117 = distinct !{!117, !61, !62}
!118 = distinct !{!118, !61, !62}
!119 = !{!112, !71, i64 0}
!120 = !{!121, !64, i64 16}
!121 = !{!"xpv", !71, i64 0, !56, i64 8, !64, i64 16, !56, i64 24}
!122 = distinct !{!122, !61, !62}
!123 = distinct !{!123, !61, !62}
!124 = !{!"branch_weights", i32 266259, i32 266259}
!125 = !{!"branch_weights", i32 266258, i32 1}
!126 = !{!"branch_weights", i32 1, i32 266258}
!127 = distinct !{!127, !61, !62}
!128 = distinct !{!128, !61, !62}
!129 = distinct !{!129, !61, !62}
!130 = distinct !{!130, !61, !62}
!131 = distinct !{!131, !61, !62}
!132 = distinct !{!132, !61, !62}
!133 = !{!134, !134, i64 0}
!134 = !{!"short", !56, i64 0}
!135 = distinct !{!135, !61, !62}
!136 = distinct !{!136, !61, !62}
!137 = distinct !{!137, !61, !62}
!138 = distinct !{!138, !61, !62}
!139 = distinct !{!139, !61, !62}
!140 = distinct !{!140, !61, !62}
!141 = distinct !{!141, !61, !62}
!142 = distinct !{!142, !61, !62}
!143 = distinct !{!143, !61, !62}
!144 = distinct !{!144, !61, !62}
!145 = distinct !{!145, !61, !62}
!146 = distinct !{!146, !61, !62}
!147 = distinct !{!147, !61, !62}
!148 = distinct !{!148, !61, !62}
!149 = !{!112, !72, i64 8}
!150 = distinct !{!150, !61, !62}
!151 = distinct !{!151, !61, !62}
!152 = distinct !{!152, !61, !62}
!153 = distinct !{!153, !61, !62}
!154 = distinct !{!154, !61, !62}
!155 = distinct !{!155, !61, !62}
!156 = !{!157, !157, i64 0}
!157 = !{!"float", !56, i64 0}
!158 = distinct !{!158, !61, !62}
!159 = !{!160, !160, i64 0}
!160 = !{!"double", !56, i64 0}
!161 = distinct !{!161, !61, !62}
!162 = distinct !{!162, !61, !62}
!163 = distinct !{!163, !61, !62}
!164 = distinct !{!164, !61, !62}
!165 = !{!"branch_weights", i32 266271, i32 0}
!166 = distinct !{!166, !61, !62}
!167 = distinct !{!167, !61, !62}
!168 = !{!169, !56, i64 34}
!169 = !{!"op", !71, i64 0, !71, i64 8, !71, i64 16, !64, i64 24, !72, i64 32, !72, i64 33, !72, i64 33, !72, i64 33, !72, i64 33, !72, i64 33, !72, i64 33, !72, i64 33, !56, i64 34, !56, i64 35}
!170 = !{!"branch_weights", i32 2, i32 266259}
!171 = !{!"branch_weights", i32 17792, i32 248469}
!172 = !{!173, !72, i64 56}
!173 = !{!"cop", !71, i64 0, !71, i64 8, !71, i64 16, !64, i64 24, !72, i64 32, !72, i64 33, !72, i64 33, !72, i64 33, !72, i64 33, !72, i64 33, !72, i64 33, !72, i64 33, !56, i64 34, !56, i64 35, !72, i64 36, !71, i64 40, !71, i64 48, !72, i64 56, !72, i64 60, !71, i64 64, !71, i64 72}
!174 = !{!169, !71, i64 0}
!175 = !{!"function_entry_count", i64 0}
!176 = !{!"branch_weights", i32 19625, i32 0}
!177 = !{!"function_entry_count", i64 19625}
!178 = !{!"pp_pack.c;S_pack_rec"}
!179 = !{!"branch_weights", i32 0, i32 19625}
!180 = !{!"branch_weights", i32 19624, i32 1}
!181 = !{!"branch_weights", i32 0, i32 39248}
!182 = !{!"branch_weights", i32 39248, i32 0}
!183 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 39246, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!184 = !{!"branch_weights", i32 127, i32 1}
!185 = distinct !{!185, !61, !62}
!186 = distinct !{!186, !61, !62}
!187 = !{i64 0, i64 8, !76, i64 8, i64 8, !76, i64 16, i64 4, !92, i64 20, i64 4, !92, i64 24, i64 4, !92, i64 28, i64 4, !92, i64 32, i64 4, !92, i64 40, i64 8, !63, i64 48, i64 8, !76}
!188 = !{i64 0, i64 8, !76, i64 8, i64 4, !92, i64 12, i64 4, !92, i64 16, i64 4, !92, i64 20, i64 4, !92, i64 24, i64 4, !92, i64 32, i64 8, !63, i64 40, i64 8, !76}
!189 = !{i64 0, i64 4, !92, i64 4, i64 4, !92, i64 8, i64 4, !92, i64 16, i64 8, !63, i64 24, i64 8, !76}
!190 = distinct !{!190, !61, !62}
!191 = distinct !{!191, !61, !62}
!192 = distinct !{!192, !61, !62}
!193 = distinct !{!193, !61, !62}
!194 = distinct !{!194, !61, !62}
!195 = distinct !{!195, !61, !62}
!196 = !{!197, !197, i64 0}
!197 = !{!"_Bool", !56, i64 0}
!198 = !{i8 0, i8 2}
!199 = !{}
!200 = distinct !{!200, !61, !62}
!201 = distinct !{!201, !61, !62}
!202 = distinct !{!202, !61, !62}
!203 = distinct !{!203, !61, !62}
!204 = distinct !{!204, !61, !62}
!205 = distinct !{!205, !61, !62}
!206 = distinct !{!206, !61, !62}
!207 = distinct !{!207, !61, !62}
!208 = distinct !{!208, !61, !62}
!209 = distinct !{!209, !61, !62}
!210 = distinct !{!210, !61, !62}
!211 = distinct !{!211, !61, !62}
!212 = distinct !{!212, !61, !62}
!213 = distinct !{!213, !61, !62}
!214 = distinct !{!214, !61, !62}
!215 = distinct !{!215, !61, !62}
!216 = !{!"branch_weights", i32 39245, i32 1}
!217 = !{!"branch_weights", i32 39246, i32 0}
!218 = !{!"branch_weights", i32 1, i32 39245}
!219 = !{!"branch_weights", i32 0, i32 39246}
!220 = distinct !{!220, !61, !62}
!221 = distinct !{!221, !61, !62}
!222 = distinct !{!222, !61, !62}
!223 = distinct !{!223, !61, !62}
!224 = distinct !{!224, !61, !62}
!225 = distinct !{!225, !61, !62}
!226 = distinct !{!226, !61, !62}
!227 = distinct !{!227, !61, !62}
!228 = distinct !{!228, !61, !62}
!229 = distinct !{!229, !61, !62}
!230 = distinct !{!230, !61, !62}
!231 = distinct !{!231, !61, !62}
!232 = distinct !{!232, !61, !62}
!233 = !{!"branch_weights", i32 2, i32 0}
!234 = !{!"branch_weights", i32 0, i32 2}
!235 = !{!"branch_weights", i32 1, i32 127}
!236 = distinct !{!236, !61, !62}
!237 = distinct !{!237, !61, !62}
!238 = distinct !{!238, !61, !62}
!239 = distinct !{!239, !61, !62}
!240 = distinct !{!240, !61, !62}
!241 = distinct !{!241, !61, !62}
!242 = distinct !{!242, !61, !62}
!243 = distinct !{!243, !61, !62}
!244 = !{!"branch_weights", i32 19624, i32 19624}
!245 = distinct !{!245, !61, !62}
!246 = !{!169, !64, i64 24}
!247 = !{!"function_entry_count", i64 591405}
!248 = !{!"pp_pack.c;S_next_symbol"}
!249 = !{!"branch_weights", i32 285885, i32 1}
!250 = !{!"branch_weights", i32 0, i32 305519}
!251 = distinct !{!251, !61, !62}
!252 = distinct !{!252, !61, !62}
!253 = !{!"branch_weights", i32 305519, i32 0}
!254 = !{!"branch_weights", i32 19635, i32 285886}
!255 = !{!"branch_weights", i32 19633, i32 2, i32 0, i32 0}
!256 = !{!"branch_weights", i32 19633, i32 2}
!257 = !{!"branch_weights", i32 19633, i32 285886}
!258 = !{!"branch_weights", i32 19633, i32 0}
!259 = distinct !{!259, !61, !62}
!260 = !{!"branch_weights", i32 19633, i32 0, i32 0}
!261 = !{i64 0, i64 4, !92, i64 4, i64 4, !92, i64 8, i64 4, !92, i64 12, i64 4, !92, i64 20, i64 8, !63, i64 28, i64 8, !76}
!262 = !{!"branch_weights", i32 0, i32 19633}
!263 = distinct !{!263, !61, !62}
!264 = distinct !{!264, !61, !62}
!265 = !{!"branch_weights", i32 19634, i32 285885}
!266 = distinct !{!266, !61, !62}
!267 = distinct !{!267, !61, !62}
!268 = distinct !{!268, !61, !62}
!269 = distinct !{!269, !61, !62}
!270 = !{i64 0, i64 4, !92, i64 4, i64 4, !92, i64 8, i64 4, !92, i64 12, i64 4, !92, i64 16, i64 4, !92, i64 24, i64 8, !63, i64 32, i64 8, !76}
!271 = distinct !{!271, !61, !62}
!272 = distinct !{!272, !61, !62}
!273 = distinct !{!273, !61, !62}
!274 = distinct !{!274, !61, !62}
!275 = distinct !{!275, !61, !62}
!276 = distinct !{!276, !61, !62}
!277 = distinct !{!277, !61, !62}
!278 = distinct !{!278, !61, !62}
!279 = !{!"function_entry_count", i64 39248}
!280 = !{!"pp_pack.c;S_sv_check_infnan"}
!281 = !{!282, !71, i64 0}
!282 = !{!"xpvmg", !71, i64 0, !56, i64 8, !64, i64 16, !56, i64 24, !56, i64 32, !56, i64 40}
!283 = !{!284, !72, i64 12}
!284 = !{!"hv", !71, i64 0, !72, i64 8, !72, i64 12, !56, i64 16}
!285 = distinct !{!285, !61, !62}
