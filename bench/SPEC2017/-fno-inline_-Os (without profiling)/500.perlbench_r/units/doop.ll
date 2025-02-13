; ModuleID = 'doop.c'
source_filename = "doop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.op = type { ptr, ptr, ptr, i64, i16, i8, i8 }
%struct.sv = type { ptr, i32, i32, %union.anon }
%union.anon = type { ptr }
%struct.xpv = type { ptr, %union._xmgu, i64, %union.anon.0 }
%union._xmgu = type { ptr }
%union.anon.0 = type { i64 }
%struct.svop = type { ptr, ptr, ptr, i64, i16, i8, i8, ptr }
%struct.xpvuv = type { ptr, %union._xmgu, i64, %union.anon.5, %union._xivu }
%union.anon.5 = type { i64 }
%union._xivu = type { i64 }
%struct.pvop = type { ptr, ptr, ptr, i64, i16, i8, i8, ptr }
%struct.hv = type { ptr, i32, i32, %union.anon.1 }
%union.anon.1 = type { ptr }
%struct.cop = type { ptr, ptr, ptr, i64, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.xpvlv = type { ptr, %union._xmgu, i64, %union.anon.3, %union._xivu, %union._xnvu, %union.anon.4, i64, ptr, i8, i8 }
%union.anon.3 = type { i64 }
%union._xnvu = type { double }
%union.anon.4 = type { i64 }
%struct.xpvhv = type { ptr, %union._xmgu, i64, i64 }
%struct.xpvmg = type { ptr, %union._xmgu, i64, %union.anon.2, %union._xivu, %union._xnvu }
%union.anon.2 = type { i64 }

@PL_op = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PL_tainting = external local_unnamed_addr global i8, align 1
@PL_curcop = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"printf\00", align 1
@PL_op_name = external local_unnamed_addr constant [0 x ptr], align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"(unknown)\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Illegal number of bits in vec\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Bit vector size > 32 non-portable\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Negative offset to vec in lvalue context\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"panic: do_vop called for op %u (%s)\00", align 1
@PL_tainted = external local_unnamed_addr global i8, align 1
@PL_stack_sp = external local_unnamed_addr global ptr, align 8
@PL_curpad = external local_unnamed_addr global ptr, align 8
@PL_stack_max = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@PL_utf8skip = external local_unnamed_addr constant [0 x i8], align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"panic: do_trans_count line %d\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"FINAL\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"panic: do_trans_complex_utf8 line %d\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"panic: do_trans_complex line %d\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"panic: do_trans_simple_utf8 line %d\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"panic: do_trans_simple line %d\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Perl_do_trans(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #7
  %3 = load ptr, ptr @PL_op, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 6
  %5 = load i8, ptr %4, align 1, !tbaa !9
  %6 = zext i8 %5 to i32
  %7 = and i32 %6, 3
  %8 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !13
  %10 = and i32 %9, 134283264
  %11 = icmp ne i32 %10, 0
  %12 = and i32 %6, 4
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  tail call void @Perl_croak_no_modify() #8
  %16 = load i32, ptr %8, align 4, !tbaa !13
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi i32 [ %16, %15 ], [ %9, %1 ]
  %19 = and i32 %18, 2098176
  %20 = icmp eq i32 %19, 1024
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 8, !tbaa !15
  %23 = getelementptr inbounds %struct.xpv, ptr %22, i64 0, i32 2
  %24 = load i64, ptr %23, align 8, !tbaa !16
  store i64 %24, ptr %2, align 8, !tbaa !18
  br label %28

25:                                               ; preds = %17
  %26 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 34) #8
  %27 = load i64, ptr %2, align 8, !tbaa !18
  br label %28

28:                                               ; preds = %25, %21
  %29 = phi i64 [ %27, %25 ], [ %24, %21 ]
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %69, label %31

31:                                               ; preds = %28
  br i1 %13, label %32, label %46

32:                                               ; preds = %31
  %33 = load i32, ptr %8, align 4, !tbaa !13
  %34 = and i32 %33, 427902976
  %35 = icmp eq i32 %34, 16384
  br i1 %35, label %52, label %36

36:                                               ; preds = %32
  %37 = and i32 %33, 430018304
  %38 = icmp eq i32 %37, 1024
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load ptr, ptr %0, align 8, !tbaa !15
  %41 = getelementptr inbounds %struct.xpv, ptr %40, i64 0, i32 2
  %42 = load i64, ptr %41, align 8, !tbaa !16
  store i64 %42, ptr %2, align 8, !tbaa !18
  br label %52

43:                                               ; preds = %36
  %44 = call ptr @Perl_sv_pvn_force_flags(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 0) #8
  %45 = load i32, ptr %8, align 4, !tbaa !13
  br label %52

46:                                               ; preds = %31
  %47 = icmp eq i32 %7, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %46
  %49 = call fastcc i32 @S_do_trans_count_utf8(ptr noundef nonnull %0) #9
  br label %69

50:                                               ; preds = %46
  %51 = call fastcc i32 @S_do_trans_count(ptr noundef nonnull %0) #9
  br label %69

52:                                               ; preds = %43, %39, %32
  %53 = phi i32 [ %45, %43 ], [ %33, %39 ], [ %33, %32 ]
  %54 = and i32 %53, 2147418367
  %55 = or disjoint i32 %54, 17408
  store i32 %55, ptr %8, align 4, !tbaa !13
  %56 = and i32 %6, 168
  %57 = icmp eq i32 %56, 0
  %58 = icmp eq i32 %7, 0
  br i1 %57, label %64, label %59

59:                                               ; preds = %52
  br i1 %58, label %62, label %60

60:                                               ; preds = %59
  %61 = call fastcc i32 @S_do_trans_complex_utf8(ptr noundef nonnull %0) #9
  br label %69

62:                                               ; preds = %59
  %63 = call fastcc i32 @S_do_trans_complex(ptr noundef nonnull %0) #9
  br label %69

64:                                               ; preds = %52
  br i1 %58, label %67, label %65

65:                                               ; preds = %64
  %66 = call fastcc i32 @S_do_trans_simple_utf8(ptr noundef nonnull %0) #9
  br label %69

67:                                               ; preds = %64
  %68 = call fastcc i32 @S_do_trans_simple(ptr noundef nonnull %0) #9
  br label %69

69:                                               ; preds = %65, %67, %60, %62, %48, %50, %28
  %70 = phi i32 [ 0, %28 ], [ %49, %48 ], [ %51, %50 ], [ %61, %60 ], [ %63, %62 ], [ %66, %65 ], [ %68, %67 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  ret i32 %70
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @Perl_croak_no_modify() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_pvn_force_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @S_do_trans_count_utf8(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #7
  %3 = load ptr, ptr @PL_op, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.svop, ptr %3, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !19
  %6 = getelementptr inbounds %struct.sv, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !21
  %8 = tail call ptr @Perl_hv_common(ptr noundef %7, ptr noundef null, ptr noundef nonnull @.str.7, i64 noundef 4, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr %8, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.sv, ptr %11, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !13
  %14 = and i32 %13, -2145386240
  %15 = icmp eq i32 %14, -2147483392
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = load ptr, ptr %11, align 8, !tbaa !15
  %18 = getelementptr inbounds %struct.xpvuv, ptr %17, i64 0, i32 4
  %19 = load i64, ptr %18, align 8, !tbaa !21
  br label %22

20:                                               ; preds = %10
  %21 = tail call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %11, i32 noundef 2) #8
  br label %22

22:                                               ; preds = %1, %16, %20
  %23 = phi i64 [ %19, %16 ], [ %21, %20 ], [ 2147483647, %1 ]
  %24 = add i64 %23, 1
  %25 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !13
  %27 = and i32 %26, 2098176
  %28 = icmp eq i32 %27, 1024
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load ptr, ptr %0, align 8, !tbaa !15
  %31 = getelementptr inbounds %struct.xpv, ptr %30, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !16
  store i64 %32, ptr %2, align 8, !tbaa !18
  %33 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !21
  br label %39

35:                                               ; preds = %22
  %36 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 32) #8
  %37 = load i32, ptr %25, align 4, !tbaa !13
  %38 = load i64, ptr %2, align 8, !tbaa !18
  br label %39

39:                                               ; preds = %35, %29
  %40 = phi i64 [ %32, %29 ], [ %38, %35 ]
  %41 = phi i32 [ %26, %29 ], [ %37, %35 ]
  %42 = phi ptr [ %34, %29 ], [ %36, %35 ]
  %43 = and i32 %41, 536870912
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %39
  %46 = getelementptr inbounds i8, ptr %42, i64 %40
  %47 = icmp sgt i64 %40, 0
  br i1 %47, label %51, label %58

48:                                               ; preds = %51
  %49 = getelementptr inbounds i8, ptr %52, i64 1
  %50 = icmp ult ptr %49, %46
  br i1 %50, label %51, label %58

51:                                               ; preds = %45, %48
  %52 = phi ptr [ %49, %48 ], [ %42, %45 ]
  %53 = load i8, ptr %52, align 1, !tbaa !21
  %54 = icmp sgt i8 %53, -1
  br i1 %54, label %48, label %55

55:                                               ; preds = %51
  %56 = call ptr @Perl_bytes_to_utf8(ptr noundef %42, ptr noundef nonnull %2) #8
  %57 = load i64, ptr %2, align 8, !tbaa !18
  br label %58

58:                                               ; preds = %48, %55, %45, %39
  %59 = phi i64 [ %40, %39 ], [ %57, %55 ], [ %40, %45 ], [ %40, %48 ]
  %60 = phi i1 [ true, %39 ], [ false, %55 ], [ true, %45 ], [ true, %48 ]
  %61 = phi ptr [ null, %39 ], [ %56, %55 ], [ null, %45 ], [ null, %48 ]
  %62 = phi ptr [ %42, %39 ], [ %56, %55 ], [ %42, %45 ], [ %42, %48 ]
  %63 = getelementptr inbounds i8, ptr %62, i64 %59
  %64 = icmp sgt i64 %59, 0
  br i1 %64, label %65, label %81

65:                                               ; preds = %58, %65
  %66 = phi ptr [ %79, %65 ], [ %62, %58 ]
  %67 = phi i32 [ %73, %65 ], [ 0, %58 ]
  %68 = call i64 @Perl_swash_fetch(ptr noundef %5, ptr noundef %66, i1 noundef zeroext true) #8
  %69 = icmp ult i64 %68, %23
  %70 = icmp eq i64 %68, %24
  %71 = or i1 %69, %70
  %72 = zext i1 %71 to i32
  %73 = add nuw nsw i32 %67, %72
  %74 = load i8, ptr %66, align 1, !tbaa !21
  %75 = zext i8 %74 to i64
  %76 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %75
  %77 = load i8, ptr %76, align 1, !tbaa !21
  %78 = zext i8 %77 to i64
  %79 = getelementptr inbounds i8, ptr %66, i64 %78
  %80 = icmp ult ptr %79, %63
  br i1 %80, label %65, label %81, !llvm.loop !22

81:                                               ; preds = %65, %58
  %82 = phi i32 [ 0, %58 ], [ %73, %65 ]
  br i1 %60, label %84, label %83

83:                                               ; preds = %81
  call void @Perl_safesysfree(ptr noundef %61) #8
  br label %84

84:                                               ; preds = %83, %81
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  ret i32 %82
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @S_do_trans_count(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #7
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !13
  %6 = and i32 %5, 2098176
  %7 = icmp eq i32 %6, 1024
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load ptr, ptr %0, align 8, !tbaa !15
  %10 = getelementptr inbounds %struct.xpv, ptr %9, i64 0, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !16
  store i64 %11, ptr %2, align 8, !tbaa !18
  %12 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !21
  br label %17

14:                                               ; preds = %1
  %15 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 32) #8
  %16 = load i64, ptr %2, align 8, !tbaa !18
  br label %17

17:                                               ; preds = %14, %8
  %18 = phi i64 [ %11, %8 ], [ %16, %14 ]
  %19 = phi ptr [ %13, %8 ], [ %15, %14 ]
  %20 = getelementptr inbounds i8, ptr %19, i64 %18
  %21 = load ptr, ptr @PL_op, align 8, !tbaa !5
  %22 = getelementptr inbounds %struct.pvop, ptr %21, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !24
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.8, i32 noundef 110) #8
  br label %26

26:                                               ; preds = %25, %17
  %27 = load i32, ptr %4, align 4, !tbaa !13
  %28 = and i32 %27, 536870912
  %29 = icmp eq i32 %28, 0
  %30 = icmp sgt i64 %18, 0
  br i1 %29, label %31, label %44

31:                                               ; preds = %26
  br i1 %30, label %32, label %74

32:                                               ; preds = %31, %32
  %33 = phi ptr [ %35, %32 ], [ %19, %31 ]
  %34 = phi i32 [ %42, %32 ], [ 0, %31 ]
  %35 = getelementptr inbounds i8, ptr %33, i64 1
  %36 = load i8, ptr %33, align 1, !tbaa !21
  %37 = zext i8 %36 to i64
  %38 = getelementptr inbounds i16, ptr %23, i64 %37
  %39 = load i16, ptr %38, align 2, !tbaa !26
  %40 = icmp sgt i16 %39, -1
  %41 = zext i1 %40 to i32
  %42 = add nuw nsw i32 %34, %41
  %43 = icmp ult ptr %35, %20
  br i1 %43, label %32, label %74, !llvm.loop !28

44:                                               ; preds = %26
  br i1 %30, label %45, label %74

45:                                               ; preds = %44
  %46 = load ptr, ptr @PL_op, align 8, !tbaa !5
  %47 = getelementptr inbounds %struct.op, ptr %46, i64 0, i32 6
  %48 = load i8, ptr %47, align 1, !tbaa !9
  %49 = ptrtoint ptr %20 to i64
  %50 = lshr i8 %48, 5
  %51 = and i8 %50, 1
  %52 = zext nneg i8 %51 to i32
  br label %53

53:                                               ; preds = %45, %68
  %54 = phi ptr [ %19, %45 ], [ %72, %68 ]
  %55 = phi i32 [ 0, %45 ], [ %70, %68 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  %56 = ptrtoint ptr %54 to i64
  %57 = sub i64 %49, %56
  %58 = call zeroext i1 @Perl_ckwarn(i32 noundef 44) #8
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %54, i64 noundef %57, ptr noundef nonnull %3, i32 noundef %60) #8
  %62 = icmp ult i64 %61, 256
  br i1 %62, label %63, label %68

63:                                               ; preds = %53
  %64 = getelementptr inbounds i16, ptr %23, i64 %61
  %65 = load i16, ptr %64, align 2, !tbaa !26
  %66 = icmp sgt i16 %65, -1
  %67 = zext i1 %66 to i32
  br label %68

68:                                               ; preds = %53, %63
  %69 = phi i32 [ %67, %63 ], [ %52, %53 ]
  %70 = add i32 %69, %55
  %71 = load i64, ptr %3, align 8, !tbaa !18
  %72 = getelementptr inbounds i8, ptr %54, i64 %71
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  %73 = icmp ult ptr %72, %20
  br i1 %73, label %53, label %74, !llvm.loop !29

74:                                               ; preds = %68, %32, %44, %31
  %75 = phi i32 [ 0, %31 ], [ 0, %44 ], [ %42, %32 ], [ %70, %68 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  ret i32 %75
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @S_do_trans_complex_utf8(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = load ptr, ptr @PL_op, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.op, ptr %4, i64 0, i32 6
  %6 = load i8, ptr %5, align 1, !tbaa !9
  %7 = zext i8 %6 to i32
  %8 = and i32 %7, 8
  %9 = and i32 %7, 128
  %10 = and i32 %7, 64
  %11 = getelementptr inbounds %struct.svop, ptr %4, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !19
  %13 = getelementptr inbounds %struct.sv, ptr %12, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !21
  %15 = tail call ptr @Perl_hv_common(ptr noundef %14, ptr noundef null, ptr noundef nonnull @.str.7, i64 noundef 4, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %1
  %18 = load ptr, ptr %15, align 8, !tbaa !5
  %19 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !13
  %21 = and i32 %20, -2145386240
  %22 = icmp eq i32 %21, -2147483392
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load ptr, ptr %18, align 8, !tbaa !15
  %25 = getelementptr inbounds %struct.xpvuv, ptr %24, i64 0, i32 4
  %26 = load i64, ptr %25, align 8, !tbaa !21
  br label %29

27:                                               ; preds = %17
  %28 = tail call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %18, i32 noundef 2) #8
  br label %29

29:                                               ; preds = %1, %23, %27
  %30 = phi i64 [ %26, %23 ], [ %28, %27 ], [ 2147483647, %1 ]
  %31 = add i64 %30, 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #7
  %32 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !13
  %34 = and i32 %33, 2098176
  %35 = icmp eq i32 %34, 1024
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load ptr, ptr %0, align 8, !tbaa !15
  %38 = getelementptr inbounds %struct.xpv, ptr %37, i64 0, i32 2
  %39 = load i64, ptr %38, align 8, !tbaa !16
  store i64 %39, ptr %2, align 8, !tbaa !18
  %40 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !21
  br label %46

42:                                               ; preds = %29
  %43 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 0) #8
  %44 = load i32, ptr %32, align 4, !tbaa !13
  %45 = load i64, ptr %2, align 8, !tbaa !18
  br label %46

46:                                               ; preds = %42, %36
  %47 = phi i64 [ %39, %36 ], [ %45, %42 ]
  %48 = phi i32 [ %33, %36 ], [ %44, %42 ]
  %49 = phi ptr [ %41, %36 ], [ %43, %42 ]
  %50 = and i32 %48, 536870912
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %46
  %53 = getelementptr inbounds i8, ptr %49, i64 %47
  %54 = icmp sgt i64 %47, 0
  br i1 %54, label %58, label %65

55:                                               ; preds = %58
  %56 = getelementptr inbounds i8, ptr %59, i64 1
  %57 = icmp ult ptr %56, %53
  br i1 %57, label %58, label %65

58:                                               ; preds = %52, %55
  %59 = phi ptr [ %56, %55 ], [ %49, %52 ]
  %60 = load i8, ptr %59, align 1, !tbaa !21
  %61 = icmp sgt i8 %60, -1
  br i1 %61, label %55, label %62

62:                                               ; preds = %58
  %63 = call ptr @Perl_bytes_to_utf8(ptr noundef %49, ptr noundef nonnull %2) #8
  %64 = load i64, ptr %2, align 8, !tbaa !18
  br label %65

65:                                               ; preds = %55, %52, %62, %46
  %66 = phi i64 [ %47, %46 ], [ %64, %62 ], [ %47, %52 ], [ %47, %55 ]
  %67 = phi ptr [ %49, %46 ], [ %63, %62 ], [ %49, %52 ], [ %49, %55 ]
  %68 = phi i1 [ false, %46 ], [ true, %62 ], [ false, %52 ], [ false, %55 ]
  %69 = getelementptr inbounds i8, ptr %67, i64 %66
  %70 = call ptr @Perl_hv_common(ptr noundef %14, ptr noundef null, ptr noundef nonnull @.str.9, i64 noundef 5, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #8
  %71 = icmp eq ptr %70, null
  br i1 %71, label %84, label %72

72:                                               ; preds = %65
  %73 = load ptr, ptr %70, align 8, !tbaa !5
  %74 = getelementptr inbounds %struct.sv, ptr %73, i64 0, i32 2
  %75 = load i32, ptr %74, align 4, !tbaa !13
  %76 = and i32 %75, -2145386240
  %77 = icmp eq i32 %76, -2147483392
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load ptr, ptr %73, align 8, !tbaa !15
  %80 = getelementptr inbounds %struct.xpvuv, ptr %79, i64 0, i32 4
  %81 = load i64, ptr %80, align 8, !tbaa !21
  br label %84

82:                                               ; preds = %72
  %83 = call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %73, i32 noundef 2) #8
  br label %84

84:                                               ; preds = %78, %82, %65
  %85 = phi i64 [ 0, %65 ], [ %81, %78 ], [ %83, %82 ]
  %86 = icmp ne i32 %10, 0
  %87 = load i64, ptr %2, align 8, !tbaa !18
  br i1 %86, label %88, label %95

88:                                               ; preds = %84
  %89 = mul i64 %87, 3
  %90 = add i64 %89, 13
  %91 = call ptr @Perl_safesysmalloc(i64 noundef %90) #8
  %92 = load i64, ptr %2, align 8, !tbaa !18
  %93 = mul i64 %92, 3
  %94 = getelementptr inbounds i8, ptr %91, i64 %93
  br label %97

95:                                               ; preds = %84
  %96 = getelementptr inbounds i8, ptr %67, i64 %87
  br label %97

97:                                               ; preds = %95, %88
  %98 = phi ptr [ %94, %88 ], [ %96, %95 ]
  %99 = phi ptr [ %91, %88 ], [ %67, %95 ]
  %100 = icmp eq i32 %8, 0
  %101 = icmp sgt i64 %66, 0
  br i1 %100, label %106, label %102

102:                                              ; preds = %97
  br i1 %101, label %103, label %271

103:                                              ; preds = %102
  %104 = icmp ne i32 %9, 0
  %105 = ptrtoint ptr %69 to i64
  br label %109

106:                                              ; preds = %97
  br i1 %101, label %107, label %271

107:                                              ; preds = %106
  %108 = icmp ne i32 %9, 0
  br label %207

109:                                              ; preds = %103, %201
  %110 = phi ptr [ %99, %103 ], [ %205, %201 ]
  %111 = phi i32 [ 0, %103 ], [ %204, %201 ]
  %112 = phi ptr [ %99, %103 ], [ %135, %201 ]
  %113 = phi ptr [ %98, %103 ], [ %134, %201 ]
  %114 = phi i64 [ 4277009102, %103 ], [ %203, %201 ]
  %115 = phi ptr [ %67, %103 ], [ %202, %201 ]
  %116 = call i64 @Perl_swash_fetch(ptr noundef %12, ptr noundef %115, i1 noundef zeroext true) #8
  %117 = icmp ugt ptr %110, %113
  br i1 %117, label %118, label %133

118:                                              ; preds = %109
  %119 = ptrtoint ptr %110 to i64
  %120 = ptrtoint ptr %112 to i64
  %121 = sub i64 %119, %120
  %122 = ptrtoint ptr %113 to i64
  %123 = sub i64 %122, %120
  %124 = load i64, ptr %2, align 8, !tbaa !18
  %125 = add i64 %124, %123
  br i1 %86, label %127, label %126

126:                                              ; preds = %118
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.10, i32 noundef 520) #8
  br label %127

127:                                              ; preds = %126, %118
  %128 = add i64 %125, 26
  %129 = call ptr @Perl_safesysrealloc(ptr noundef %112, i64 noundef %128) #8
  %130 = getelementptr inbounds i8, ptr %129, i64 %121
  %131 = getelementptr i8, ptr %129, i64 %125
  %132 = getelementptr i8, ptr %131, i64 13
  br label %133

133:                                              ; preds = %127, %109
  %134 = phi ptr [ %132, %127 ], [ %113, %109 ]
  %135 = phi ptr [ %129, %127 ], [ %112, %109 ]
  %136 = phi ptr [ %130, %127 ], [ %110, %109 ]
  %137 = icmp ult i64 %116, %30
  br i1 %137, label %138, label %149

138:                                              ; preds = %133
  %139 = add nsw i32 %111, 1
  %140 = load i8, ptr %115, align 1, !tbaa !21
  %141 = zext i8 %140 to i64
  %142 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %141
  %143 = load i8, ptr %142, align 1, !tbaa !21
  %144 = zext i8 %143 to i64
  %145 = getelementptr inbounds i8, ptr %115, i64 %144
  %146 = icmp eq i64 %116, %114
  br i1 %146, label %201, label %147, !llvm.loop !30

147:                                              ; preds = %138
  %148 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %136, i64 noundef %116, i64 noundef 0) #8
  br label %201, !llvm.loop !30

149:                                              ; preds = %133
  %150 = icmp eq i64 %116, %30
  br i1 %150, label %151, label %159

151:                                              ; preds = %149
  %152 = load i8, ptr %115, align 1, !tbaa !21
  %153 = zext i8 %152 to i64
  %154 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %153
  %155 = load i8, ptr %154, align 1, !tbaa !21
  %156 = zext i8 %155 to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %136, ptr nonnull align 1 %115, i64 %156, i1 false)
  %157 = getelementptr inbounds i8, ptr %136, i64 %156
  %158 = getelementptr inbounds i8, ptr %115, i64 %156
  br label %201

159:                                              ; preds = %149
  %160 = icmp ne i64 %116, %31
  %161 = select i1 %160, i1 true, i1 %104
  %162 = add nsw i32 %111, 1
  br i1 %161, label %194, label %163

163:                                              ; preds = %159
  br i1 %71, label %173, label %164

164:                                              ; preds = %163
  %165 = load i8, ptr %115, align 1, !tbaa !21
  %166 = zext i8 %165 to i64
  %167 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %166
  %168 = load i8, ptr %167, align 1, !tbaa !21
  %169 = zext i8 %168 to i64
  %170 = icmp eq i64 %114, %85
  br i1 %170, label %189, label %171

171:                                              ; preds = %164
  %172 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %136, i64 noundef %85, i64 noundef 0) #8
  br label %189

173:                                              ; preds = %163
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  %174 = ptrtoint ptr %115 to i64
  %175 = sub i64 %105, %174
  %176 = call zeroext i1 @Perl_ckwarn(i32 noundef 44) #8
  %177 = xor i1 %176, true
  %178 = zext i1 %177 to i32
  %179 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %115, i64 noundef %175, ptr noundef nonnull %3, i32 noundef %178) #8
  %180 = icmp eq i64 %179, %114
  %181 = load i64, ptr %3, align 8, !tbaa !18
  br i1 %180, label %185, label %182

182:                                              ; preds = %173
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %136, ptr align 1 %115, i64 %181, i1 false)
  %183 = load i64, ptr %3, align 8, !tbaa !18
  %184 = getelementptr inbounds i8, ptr %136, i64 %183
  br label %185

185:                                              ; preds = %182, %173
  %186 = phi i64 [ %183, %182 ], [ %181, %173 ]
  %187 = phi i64 [ %179, %182 ], [ %114, %173 ]
  %188 = phi ptr [ %184, %182 ], [ %136, %173 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  br label %189

189:                                              ; preds = %164, %171, %185
  %190 = phi i64 [ %169, %171 ], [ %169, %164 ], [ %186, %185 ]
  %191 = phi i64 [ %85, %171 ], [ %85, %164 ], [ %187, %185 ]
  %192 = phi ptr [ %172, %171 ], [ %136, %164 ], [ %188, %185 ]
  %193 = getelementptr inbounds i8, ptr %115, i64 %190
  br label %201, !llvm.loop !30

194:                                              ; preds = %159
  %195 = load i8, ptr %115, align 1, !tbaa !21
  %196 = zext i8 %195 to i64
  %197 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %196
  %198 = load i8, ptr %197, align 1, !tbaa !21
  %199 = zext i8 %198 to i64
  %200 = getelementptr inbounds i8, ptr %115, i64 %199
  br label %201

201:                                              ; preds = %138, %147, %194, %189, %151
  %202 = phi ptr [ %158, %151 ], [ %200, %194 ], [ %193, %189 ], [ %145, %147 ], [ %145, %138 ]
  %203 = phi i64 [ 4277009102, %151 ], [ %114, %194 ], [ %191, %189 ], [ %116, %147 ], [ %114, %138 ]
  %204 = phi i32 [ %111, %151 ], [ %162, %194 ], [ %162, %189 ], [ %139, %147 ], [ %139, %138 ]
  %205 = phi ptr [ %157, %151 ], [ %136, %194 ], [ %192, %189 ], [ %148, %147 ], [ %136, %138 ]
  %206 = icmp ult ptr %202, %69
  br i1 %206, label %109, label %271

207:                                              ; preds = %107, %266
  %208 = phi ptr [ %99, %107 ], [ %269, %266 ]
  %209 = phi i32 [ 0, %107 ], [ %268, %266 ]
  %210 = phi ptr [ %99, %107 ], [ %232, %266 ]
  %211 = phi ptr [ %98, %107 ], [ %231, %266 ]
  %212 = phi ptr [ %67, %107 ], [ %267, %266 ]
  %213 = call i64 @Perl_swash_fetch(ptr noundef %12, ptr noundef %212, i1 noundef zeroext true) #8
  %214 = icmp ugt ptr %208, %211
  br i1 %214, label %215, label %230

215:                                              ; preds = %207
  %216 = ptrtoint ptr %208 to i64
  %217 = ptrtoint ptr %210 to i64
  %218 = sub i64 %216, %217
  %219 = ptrtoint ptr %211 to i64
  %220 = sub i64 %219, %217
  %221 = load i64, ptr %2, align 8, !tbaa !18
  %222 = add i64 %221, %220
  br i1 %86, label %224, label %223

223:                                              ; preds = %215
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.10, i32 noundef 574) #8
  br label %224

224:                                              ; preds = %223, %215
  %225 = add i64 %222, 26
  %226 = call ptr @Perl_safesysrealloc(ptr noundef %210, i64 noundef %225) #8
  %227 = getelementptr inbounds i8, ptr %226, i64 %218
  %228 = getelementptr i8, ptr %226, i64 %222
  %229 = getelementptr i8, ptr %228, i64 13
  br label %230

230:                                              ; preds = %224, %207
  %231 = phi ptr [ %229, %224 ], [ %211, %207 ]
  %232 = phi ptr [ %226, %224 ], [ %210, %207 ]
  %233 = phi ptr [ %227, %224 ], [ %208, %207 ]
  %234 = icmp ult i64 %213, %30
  br i1 %234, label %235, label %244

235:                                              ; preds = %230
  %236 = add nsw i32 %209, 1
  %237 = load i8, ptr %212, align 1, !tbaa !21
  %238 = zext i8 %237 to i64
  %239 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %238
  %240 = load i8, ptr %239, align 1, !tbaa !21
  %241 = zext i8 %240 to i64
  %242 = getelementptr inbounds i8, ptr %212, i64 %241
  %243 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %233, i64 noundef %213, i64 noundef 0) #8
  br label %266, !llvm.loop !31

244:                                              ; preds = %230
  %245 = icmp eq i64 %213, %30
  br i1 %245, label %246, label %254

246:                                              ; preds = %244
  %247 = load i8, ptr %212, align 1, !tbaa !21
  %248 = zext i8 %247 to i64
  %249 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %248
  %250 = load i8, ptr %249, align 1, !tbaa !21
  %251 = zext i8 %250 to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %233, ptr nonnull align 1 %212, i64 %251, i1 false)
  %252 = getelementptr inbounds i8, ptr %233, i64 %251
  %253 = getelementptr inbounds i8, ptr %212, i64 %251
  br label %266

254:                                              ; preds = %244
  %255 = icmp ne i64 %213, %31
  %256 = select i1 %255, i1 true, i1 %108
  %257 = add nsw i32 %209, 1
  %258 = load i8, ptr %212, align 1, !tbaa !21
  %259 = zext i8 %258 to i64
  %260 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %259
  %261 = load i8, ptr %260, align 1, !tbaa !21
  %262 = zext i8 %261 to i64
  %263 = getelementptr inbounds i8, ptr %212, i64 %262
  br i1 %256, label %266, label %264

264:                                              ; preds = %254
  %265 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %233, i64 noundef %85, i64 noundef 0) #8
  br label %266, !llvm.loop !31

266:                                              ; preds = %254, %264, %246, %235
  %267 = phi ptr [ %242, %235 ], [ %253, %246 ], [ %263, %264 ], [ %263, %254 ]
  %268 = phi i32 [ %236, %235 ], [ %209, %246 ], [ %257, %264 ], [ %257, %254 ]
  %269 = phi ptr [ %243, %235 ], [ %252, %246 ], [ %265, %264 ], [ %233, %254 ]
  %270 = icmp ult ptr %267, %69
  br i1 %270, label %207, label %271

271:                                              ; preds = %201, %266, %102, %106
  %272 = phi ptr [ %99, %106 ], [ %99, %102 ], [ %232, %266 ], [ %135, %201 ]
  %273 = phi i32 [ 0, %106 ], [ 0, %102 ], [ %268, %266 ], [ %204, %201 ]
  %274 = phi ptr [ %99, %106 ], [ %99, %102 ], [ %269, %266 ], [ %205, %201 ]
  %275 = or i1 %86, %68
  br i1 %275, label %276, label %282

276:                                              ; preds = %271
  %277 = ptrtoint ptr %274 to i64
  %278 = ptrtoint ptr %272 to i64
  %279 = sub i64 %277, %278
  call void @Perl_sv_setpvn(ptr noundef %0, ptr noundef %272, i64 noundef %279) #8
  call void @Perl_safesysfree(ptr noundef %272) #8
  %280 = and i1 %86, %68
  br i1 %280, label %281, label %288

281:                                              ; preds = %276
  call void @Perl_safesysfree(ptr noundef %67) #8
  br label %288

282:                                              ; preds = %271
  store i8 0, ptr %274, align 1, !tbaa !21
  %283 = ptrtoint ptr %274 to i64
  %284 = ptrtoint ptr %272 to i64
  %285 = sub i64 %283, %284
  %286 = load ptr, ptr %0, align 8, !tbaa !15
  %287 = getelementptr inbounds %struct.xpv, ptr %286, i64 0, i32 2
  store i64 %285, ptr %287, align 8, !tbaa !16
  br label %288

288:                                              ; preds = %276, %281, %282
  %289 = load i32, ptr %32, align 4, !tbaa !13
  %290 = or i32 %289, 536870912
  store i32 %290, ptr %32, align 4, !tbaa !13
  %291 = and i32 %289, 4194304
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %295, label %293

293:                                              ; preds = %288
  %294 = call i32 @Perl_mg_set(ptr noundef nonnull %0) #8
  br label %295

295:                                              ; preds = %288, %293
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  ret i32 %273
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @S_do_trans_complex(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #7
  %5 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !13
  %7 = and i32 %6, 2098176
  %8 = icmp eq i32 %7, 1024
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load ptr, ptr %0, align 8, !tbaa !15
  %11 = getelementptr inbounds %struct.xpv, ptr %10, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !16
  store i64 %12, ptr %2, align 8, !tbaa !18
  %13 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !21
  br label %18

15:                                               ; preds = %1
  %16 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 0) #8
  %17 = load i64, ptr %2, align 8, !tbaa !18
  br label %18

18:                                               ; preds = %15, %9
  %19 = phi i64 [ %12, %9 ], [ %17, %15 ]
  %20 = phi ptr [ %14, %9 ], [ %16, %15 ]
  %21 = getelementptr inbounds i8, ptr %20, i64 %19
  %22 = load ptr, ptr @PL_op, align 8, !tbaa !5
  %23 = getelementptr inbounds %struct.pvop, ptr %22, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !24
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.11, i32 noundef 147) #8
  br label %27

27:                                               ; preds = %26, %18
  %28 = load i32, ptr %5, align 4, !tbaa !13
  %29 = and i32 %28, 536870912
  %30 = icmp eq i32 %29, 0
  %31 = load ptr, ptr @PL_op, align 8, !tbaa !5
  %32 = getelementptr inbounds %struct.op, ptr %31, i64 0, i32 6
  %33 = load i8, ptr %32, align 1, !tbaa !9
  br i1 %30, label %34, label %103

34:                                               ; preds = %27
  %35 = and i8 %33, 8
  %36 = icmp eq i8 %35, 0
  %37 = icmp sgt i64 %19, 0
  br i1 %36, label %39, label %38

38:                                               ; preds = %34
  br i1 %37, label %40, label %94

39:                                               ; preds = %34
  br i1 %37, label %71, label %94

40:                                               ; preds = %38, %65
  %41 = phi ptr [ %69, %65 ], [ %20, %38 ]
  %42 = phi i32 [ %68, %65 ], [ 0, %38 ]
  %43 = phi ptr [ %67, %65 ], [ %20, %38 ]
  %44 = phi ptr [ %66, %65 ], [ %21, %38 ]
  %45 = load i8, ptr %41, align 1, !tbaa !21
  %46 = zext i8 %45 to i64
  %47 = getelementptr inbounds i16, ptr %24, i64 %46
  %48 = load i16, ptr %47, align 2, !tbaa !26
  %49 = icmp sgt i16 %48, -1
  br i1 %49, label %50, label %60

50:                                               ; preds = %40
  %51 = trunc i16 %48 to i8
  store i8 %51, ptr %43, align 1, !tbaa !21
  %52 = add nsw i32 %42, 1
  %53 = getelementptr inbounds i8, ptr %43, i64 -1
  %54 = icmp eq ptr %44, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i8, ptr %44, align 1, !tbaa !21
  %57 = icmp eq i8 %56, %51
  br i1 %57, label %65, label %58

58:                                               ; preds = %55, %50
  %59 = getelementptr inbounds i8, ptr %43, i64 1
  br label %65

60:                                               ; preds = %40
  switch i16 %48, label %65 [
    i16 -1, label %61
    i16 -2, label %63
  ]

61:                                               ; preds = %60
  %62 = getelementptr inbounds i8, ptr %43, i64 1
  store i8 %45, ptr %43, align 1, !tbaa !21
  br label %65

63:                                               ; preds = %60
  %64 = add nsw i32 %42, 1
  br label %65

65:                                               ; preds = %60, %61, %63, %55, %58
  %66 = phi ptr [ %43, %58 ], [ %44, %55 ], [ %44, %61 ], [ %44, %63 ], [ %44, %60 ]
  %67 = phi ptr [ %59, %58 ], [ %43, %55 ], [ %62, %61 ], [ %43, %63 ], [ %43, %60 ]
  %68 = phi i32 [ %52, %58 ], [ %52, %55 ], [ %42, %61 ], [ %64, %63 ], [ %42, %60 ]
  %69 = getelementptr inbounds i8, ptr %41, i64 1
  %70 = icmp ult ptr %69, %21
  br i1 %70, label %40, label %94, !llvm.loop !32

71:                                               ; preds = %39, %89
  %72 = phi ptr [ %92, %89 ], [ %20, %39 ]
  %73 = phi i32 [ %91, %89 ], [ 0, %39 ]
  %74 = phi ptr [ %90, %89 ], [ %20, %39 ]
  %75 = load i8, ptr %72, align 1, !tbaa !21
  %76 = zext i8 %75 to i64
  %77 = getelementptr inbounds i16, ptr %24, i64 %76
  %78 = load i16, ptr %77, align 2, !tbaa !26
  %79 = icmp sgt i16 %78, -1
  br i1 %79, label %80, label %84

80:                                               ; preds = %71
  %81 = add nsw i32 %73, 1
  %82 = trunc i16 %78 to i8
  %83 = getelementptr inbounds i8, ptr %74, i64 1
  store i8 %82, ptr %74, align 1, !tbaa !21
  br label %89

84:                                               ; preds = %71
  switch i16 %78, label %89 [
    i16 -1, label %85
    i16 -2, label %87
  ]

85:                                               ; preds = %84
  %86 = getelementptr inbounds i8, ptr %74, i64 1
  store i8 %75, ptr %74, align 1, !tbaa !21
  br label %89

87:                                               ; preds = %84
  %88 = add nsw i32 %73, 1
  br label %89

89:                                               ; preds = %84, %85, %87, %80
  %90 = phi ptr [ %83, %80 ], [ %86, %85 ], [ %74, %87 ], [ %74, %84 ]
  %91 = phi i32 [ %81, %80 ], [ %73, %85 ], [ %88, %87 ], [ %73, %84 ]
  %92 = getelementptr inbounds i8, ptr %72, i64 1
  %93 = icmp ult ptr %92, %21
  br i1 %93, label %71, label %94, !llvm.loop !33

94:                                               ; preds = %65, %89, %38, %39
  %95 = phi ptr [ %20, %39 ], [ %20, %38 ], [ %90, %89 ], [ %67, %65 ]
  %96 = phi i32 [ 0, %39 ], [ 0, %38 ], [ %91, %89 ], [ %68, %65 ]
  store i8 0, ptr %95, align 1, !tbaa !21
  %97 = ptrtoint ptr %95 to i64
  %98 = ptrtoint ptr %20 to i64
  %99 = sub i64 %97, %98
  %100 = load ptr, ptr %0, align 8, !tbaa !15
  %101 = getelementptr inbounds %struct.xpv, ptr %100, i64 0, i32 2
  store i64 %99, ptr %101, align 8, !tbaa !16
  %102 = load i32, ptr %5, align 4, !tbaa !13
  br label %267

103:                                              ; preds = %27
  %104 = zext i8 %33 to i32
  %105 = and i32 %104, 32
  %106 = and i32 %104, 64
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %103
  %109 = load i64, ptr %2, align 8, !tbaa !18
  %110 = shl i64 %109, 1
  %111 = or disjoint i64 %110, 1
  %112 = call ptr @Perl_safesysmalloc(i64 noundef %111) #8
  br label %113

113:                                              ; preds = %103, %108
  %114 = phi ptr [ %112, %108 ], [ %20, %103 ]
  %115 = icmp eq i32 %105, 0
  %116 = icmp slt i8 %33, 0
  %117 = or i1 %116, %115
  br i1 %117, label %122, label %118

118:                                              ; preds = %113
  %119 = getelementptr inbounds i16, ptr %24, i64 256
  %120 = load i16, ptr %119, align 2, !tbaa !26
  %121 = sext i16 %120 to i64
  br label %122

122:                                              ; preds = %118, %113
  %123 = phi i64 [ 0, %113 ], [ %121, %118 ]
  %124 = load ptr, ptr @PL_op, align 8, !tbaa !5
  %125 = getelementptr inbounds %struct.op, ptr %124, i64 0, i32 6
  %126 = load i8, ptr %125, align 1, !tbaa !9
  %127 = and i8 %126, 8
  %128 = icmp eq i8 %127, 0
  %129 = getelementptr i16, ptr %24, i64 1
  %130 = icmp sgt i64 %19, 0
  br i1 %128, label %137, label %131

131:                                              ; preds = %122
  br i1 %130, label %132, label %251

132:                                              ; preds = %131
  %133 = ptrtoint ptr %21 to i64
  %134 = icmp eq i64 %123, 0
  %135 = getelementptr i16, ptr %24, i64 %123
  %136 = getelementptr i16, ptr %135, i64 256
  br label %142

137:                                              ; preds = %122
  br i1 %130, label %138, label %251

138:                                              ; preds = %137
  %139 = ptrtoint ptr %21 to i64
  %140 = getelementptr i16, ptr %24, i64 %123
  %141 = getelementptr i16, ptr %140, i64 256
  br label %200

142:                                              ; preds = %132, %193
  %143 = phi ptr [ %20, %132 ], [ %198, %193 ]
  %144 = phi i32 [ 0, %132 ], [ %196, %193 ]
  %145 = phi i64 [ 4277009102, %132 ], [ %195, %193 ]
  %146 = phi ptr [ %114, %132 ], [ %194, %193 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  %147 = ptrtoint ptr %143 to i64
  %148 = sub i64 %133, %147
  %149 = call zeroext i1 @Perl_ckwarn(i32 noundef 44) #8
  %150 = xor i1 %149, true
  %151 = zext i1 %150 to i32
  %152 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %143, i64 noundef %148, ptr noundef nonnull %3, i32 noundef %151) #8
  %153 = icmp ugt i64 %152, 255
  br i1 %153, label %154, label %176

154:                                              ; preds = %142
  br i1 %115, label %155, label %159

155:                                              ; preds = %154
  %156 = load i64, ptr %3, align 8, !tbaa !18
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %146, ptr align 1 %143, i64 %156, i1 false)
  %157 = load i64, ptr %3, align 8, !tbaa !18
  %158 = getelementptr inbounds i8, ptr %146, i64 %157
  br label %193

159:                                              ; preds = %154
  %160 = add nsw i32 %144, 1
  br i1 %116, label %193, label %161

161:                                              ; preds = %159
  br i1 %134, label %169, label %162

162:                                              ; preds = %161
  %163 = add i64 %152, -256
  %164 = icmp ult i64 %163, %123
  %165 = getelementptr i16, ptr %129, i64 %152
  %166 = select i1 %164, ptr %165, ptr %136
  %167 = load i16, ptr %166, align 2, !tbaa !26
  %168 = sext i16 %167 to i64
  br label %169

169:                                              ; preds = %162, %161
  %170 = phi i64 [ %152, %161 ], [ %168, %162 ]
  %171 = shl i64 %170, 32
  %172 = ashr exact i64 %171, 32
  %173 = icmp eq i64 %172, %145
  br i1 %173, label %193, label %174, !llvm.loop !34

174:                                              ; preds = %169
  %175 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %146, i64 noundef %172, i64 noundef 0) #8
  br label %193, !llvm.loop !34

176:                                              ; preds = %142
  %177 = getelementptr inbounds i16, ptr %24, i64 %152
  %178 = load i16, ptr %177, align 2, !tbaa !26
  %179 = icmp sgt i16 %178, -1
  br i1 %179, label %180, label %186

180:                                              ; preds = %176
  %181 = add nsw i32 %144, 1
  %182 = zext nneg i16 %178 to i64
  %183 = icmp eq i64 %145, %182
  br i1 %183, label %193, label %184, !llvm.loop !34

184:                                              ; preds = %180
  %185 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %146, i64 noundef %182, i64 noundef 0) #8
  br label %193, !llvm.loop !34

186:                                              ; preds = %176
  switch i16 %178, label %193 [
    i16 -1, label %187
    i16 -2, label %191
  ]

187:                                              ; preds = %186
  %188 = load i64, ptr %3, align 8, !tbaa !18
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %146, ptr align 1 %143, i64 %188, i1 false)
  %189 = load i64, ptr %3, align 8, !tbaa !18
  %190 = getelementptr inbounds i8, ptr %146, i64 %189
  br label %193

191:                                              ; preds = %186
  %192 = add nsw i32 %144, 1
  br label %193

193:                                              ; preds = %159, %155, %187, %191, %186, %180, %184, %169, %174
  %194 = phi ptr [ %175, %174 ], [ %146, %169 ], [ %185, %184 ], [ %146, %180 ], [ %146, %159 ], [ %158, %155 ], [ %190, %187 ], [ %146, %191 ], [ %146, %186 ]
  %195 = phi i64 [ %172, %174 ], [ %145, %169 ], [ %182, %184 ], [ %145, %180 ], [ 4277009102, %159 ], [ 4277009102, %155 ], [ 4277009102, %187 ], [ 4277009102, %191 ], [ 4277009102, %186 ]
  %196 = phi i32 [ %160, %174 ], [ %160, %169 ], [ %181, %184 ], [ %181, %180 ], [ %160, %159 ], [ %144, %155 ], [ %144, %187 ], [ %192, %191 ], [ %144, %186 ]
  %197 = load i64, ptr %3, align 8, !tbaa !18
  %198 = getelementptr inbounds i8, ptr %143, i64 %197
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  %199 = icmp ult ptr %198, %21
  br i1 %199, label %142, label %251

200:                                              ; preds = %138, %245
  %201 = phi ptr [ %20, %138 ], [ %249, %245 ]
  %202 = phi i32 [ 0, %138 ], [ %247, %245 ]
  %203 = phi ptr [ %114, %138 ], [ %246, %245 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  %204 = ptrtoint ptr %201 to i64
  %205 = sub i64 %139, %204
  %206 = call zeroext i1 @Perl_ckwarn(i32 noundef 44) #8
  %207 = xor i1 %206, true
  %208 = zext i1 %207 to i32
  %209 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %201, i64 noundef %205, ptr noundef nonnull %4, i32 noundef %208) #8
  %210 = icmp ugt i64 %209, 255
  br i1 %210, label %211, label %230

211:                                              ; preds = %200
  br i1 %115, label %212, label %216

212:                                              ; preds = %211
  %213 = load i64, ptr %4, align 8, !tbaa !18
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %203, ptr align 1 %201, i64 %213, i1 false)
  %214 = load i64, ptr %4, align 8, !tbaa !18
  %215 = getelementptr inbounds i8, ptr %203, i64 %214
  br label %245

216:                                              ; preds = %211
  %217 = add nsw i32 %202, 1
  br i1 %116, label %245, label %218

218:                                              ; preds = %216
  %219 = add i64 %209, -256
  %220 = icmp ult i64 %219, %123
  br i1 %220, label %221, label %226

221:                                              ; preds = %218
  %222 = getelementptr i16, ptr %129, i64 %209
  %223 = load i16, ptr %222, align 2, !tbaa !26
  %224 = sext i16 %223 to i64
  %225 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %203, i64 noundef %224, i64 noundef 0) #8
  br label %245

226:                                              ; preds = %218
  %227 = load i16, ptr %141, align 2, !tbaa !26
  %228 = sext i16 %227 to i64
  %229 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %203, i64 noundef %228, i64 noundef 0) #8
  br label %245

230:                                              ; preds = %200
  %231 = getelementptr inbounds i16, ptr %24, i64 %209
  %232 = load i16, ptr %231, align 2, !tbaa !26
  %233 = icmp sgt i16 %232, -1
  br i1 %233, label %234, label %238

234:                                              ; preds = %230
  %235 = zext nneg i16 %232 to i64
  %236 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %203, i64 noundef %235, i64 noundef 0) #8
  %237 = add nsw i32 %202, 1
  br label %245

238:                                              ; preds = %230
  switch i16 %232, label %245 [
    i16 -1, label %239
    i16 -2, label %243
  ]

239:                                              ; preds = %238
  %240 = load i64, ptr %4, align 8, !tbaa !18
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %203, ptr align 1 %201, i64 %240, i1 false)
  %241 = load i64, ptr %4, align 8, !tbaa !18
  %242 = getelementptr inbounds i8, ptr %203, i64 %241
  br label %245

243:                                              ; preds = %238
  %244 = add nsw i32 %202, 1
  br label %245

245:                                              ; preds = %238, %234, %243, %239, %212, %221, %226, %216
  %246 = phi ptr [ %203, %216 ], [ %225, %221 ], [ %229, %226 ], [ %215, %212 ], [ %236, %234 ], [ %242, %239 ], [ %203, %243 ], [ %203, %238 ]
  %247 = phi i32 [ %217, %216 ], [ %217, %221 ], [ %217, %226 ], [ %202, %212 ], [ %237, %234 ], [ %202, %239 ], [ %244, %243 ], [ %202, %238 ]
  %248 = load i64, ptr %4, align 8, !tbaa !18
  %249 = getelementptr inbounds i8, ptr %201, i64 %248
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  %250 = icmp ult ptr %249, %21
  br i1 %250, label %200, label %251, !llvm.loop !35

251:                                              ; preds = %193, %245, %131, %137
  %252 = phi ptr [ %114, %137 ], [ %114, %131 ], [ %246, %245 ], [ %194, %193 ]
  %253 = phi i32 [ 0, %137 ], [ 0, %131 ], [ %247, %245 ], [ %196, %193 ]
  br i1 %107, label %258, label %254

254:                                              ; preds = %251
  %255 = ptrtoint ptr %252 to i64
  %256 = ptrtoint ptr %114 to i64
  %257 = sub i64 %255, %256
  call void @Perl_sv_setpvn(ptr noundef %0, ptr noundef %114, i64 noundef %257) #8
  call void @Perl_safesysfree(ptr noundef %114) #8
  br label %264

258:                                              ; preds = %251
  store i8 0, ptr %252, align 1, !tbaa !21
  %259 = ptrtoint ptr %252 to i64
  %260 = ptrtoint ptr %114 to i64
  %261 = sub i64 %259, %260
  %262 = load ptr, ptr %0, align 8, !tbaa !15
  %263 = getelementptr inbounds %struct.xpv, ptr %262, i64 0, i32 2
  store i64 %261, ptr %263, align 8, !tbaa !16
  br label %264

264:                                              ; preds = %258, %254
  %265 = load i32, ptr %5, align 4, !tbaa !13
  %266 = or i32 %265, 536870912
  store i32 %266, ptr %5, align 4, !tbaa !13
  br label %267

267:                                              ; preds = %94, %264
  %268 = phi i32 [ %266, %264 ], [ %102, %94 ]
  %269 = phi i32 [ %253, %264 ], [ %96, %94 ]
  %270 = and i32 %268, 4194304
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %274, label %272

272:                                              ; preds = %267
  %273 = call i32 @Perl_mg_set(ptr noundef nonnull %0) #8
  br label %274

274:                                              ; preds = %267, %272
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  ret i32 %269
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @S_do_trans_simple_utf8(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_op, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 6
  %5 = load i8, ptr %4, align 1, !tbaa !9
  %6 = and i8 %5, 64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #7
  %7 = getelementptr inbounds %struct.svop, ptr %3, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !19
  %9 = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !21
  %11 = tail call ptr @Perl_hv_common(ptr noundef %10, ptr noundef null, ptr noundef nonnull @.str.7, i64 noundef 4, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %25, label %13

13:                                               ; preds = %1
  %14 = load ptr, ptr %11, align 8, !tbaa !5
  %15 = getelementptr inbounds %struct.sv, ptr %14, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !13
  %17 = and i32 %16, -2145386240
  %18 = icmp eq i32 %17, -2147483392
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load ptr, ptr %14, align 8, !tbaa !15
  %21 = getelementptr inbounds %struct.xpvuv, ptr %20, i64 0, i32 4
  %22 = load i64, ptr %21, align 8, !tbaa !21
  br label %25

23:                                               ; preds = %13
  %24 = tail call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %14, i32 noundef 2) #8
  br label %25

25:                                               ; preds = %1, %19, %23
  %26 = phi i64 [ %22, %19 ], [ %24, %23 ], [ 2147483647, %1 ]
  %27 = add i64 %26, 1
  %28 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %29 = load i32, ptr %28, align 4, !tbaa !13
  %30 = and i32 %29, 2098176
  %31 = icmp eq i32 %30, 1024
  br i1 %31, label %32, label %38

32:                                               ; preds = %25
  %33 = load ptr, ptr %0, align 8, !tbaa !15
  %34 = getelementptr inbounds %struct.xpv, ptr %33, i64 0, i32 2
  %35 = load i64, ptr %34, align 8, !tbaa !16
  store i64 %35, ptr %2, align 8, !tbaa !18
  %36 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !21
  br label %42

38:                                               ; preds = %25
  %39 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 0) #8
  %40 = load i32, ptr %28, align 4, !tbaa !13
  %41 = load i64, ptr %2, align 8, !tbaa !18
  br label %42

42:                                               ; preds = %38, %32
  %43 = phi i64 [ %35, %32 ], [ %41, %38 ]
  %44 = phi i32 [ %29, %32 ], [ %40, %38 ]
  %45 = phi ptr [ %37, %32 ], [ %39, %38 ]
  %46 = and i32 %44, 536870912
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %42
  %49 = getelementptr inbounds i8, ptr %45, i64 %43
  %50 = icmp sgt i64 %43, 0
  br i1 %50, label %54, label %61

51:                                               ; preds = %54
  %52 = getelementptr inbounds i8, ptr %55, i64 1
  %53 = icmp ult ptr %52, %49
  br i1 %53, label %54, label %61

54:                                               ; preds = %48, %51
  %55 = phi ptr [ %52, %51 ], [ %45, %48 ]
  %56 = load i8, ptr %55, align 1, !tbaa !21
  %57 = icmp sgt i8 %56, -1
  br i1 %57, label %51, label %58

58:                                               ; preds = %54
  %59 = call ptr @Perl_bytes_to_utf8(ptr noundef %45, ptr noundef nonnull %2) #8
  %60 = load i64, ptr %2, align 8, !tbaa !18
  br label %61

61:                                               ; preds = %51, %58, %48, %42
  %62 = phi i64 [ %43, %42 ], [ %60, %58 ], [ %43, %48 ], [ %43, %51 ]
  %63 = phi i1 [ false, %42 ], [ true, %58 ], [ false, %48 ], [ false, %51 ]
  %64 = phi ptr [ %45, %42 ], [ %59, %58 ], [ %45, %48 ], [ %45, %51 ]
  %65 = getelementptr inbounds i8, ptr %64, i64 %62
  %66 = call ptr @Perl_hv_common(ptr noundef %10, ptr noundef null, ptr noundef nonnull @.str.9, i64 noundef 5, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #8
  %67 = icmp eq ptr %66, null
  br i1 %67, label %80, label %68

68:                                               ; preds = %61
  %69 = load ptr, ptr %66, align 8, !tbaa !5
  %70 = getelementptr inbounds %struct.sv, ptr %69, i64 0, i32 2
  %71 = load i32, ptr %70, align 4, !tbaa !13
  %72 = and i32 %71, -2145386240
  %73 = icmp eq i32 %72, -2147483392
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load ptr, ptr %69, align 8, !tbaa !15
  %76 = getelementptr inbounds %struct.xpvuv, ptr %75, i64 0, i32 4
  %77 = load i64, ptr %76, align 8, !tbaa !21
  br label %80

78:                                               ; preds = %68
  %79 = call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %69, i32 noundef 2) #8
  br label %80

80:                                               ; preds = %74, %78, %61
  %81 = phi i64 [ 0, %61 ], [ %77, %74 ], [ %79, %78 ]
  %82 = icmp ne i8 %6, 0
  %83 = load i64, ptr %2, align 8, !tbaa !18
  br i1 %82, label %84, label %91

84:                                               ; preds = %80
  %85 = mul i64 %83, 3
  %86 = add i64 %85, 13
  %87 = call ptr @Perl_safesysmalloc(i64 noundef %86) #8
  %88 = load i64, ptr %2, align 8, !tbaa !18
  %89 = mul i64 %88, 3
  %90 = getelementptr inbounds i8, ptr %87, i64 %89
  br label %93

91:                                               ; preds = %80
  %92 = getelementptr inbounds i8, ptr %64, i64 %83
  br label %93

93:                                               ; preds = %91, %84
  %94 = phi ptr [ %90, %84 ], [ %92, %91 ]
  %95 = phi ptr [ %87, %84 ], [ %64, %91 ]
  %96 = icmp sgt i64 %62, 0
  br i1 %96, label %97, label %160

97:                                               ; preds = %93, %155
  %98 = phi ptr [ %138, %155 ], [ %64, %93 ]
  %99 = phi ptr [ %158, %155 ], [ %95, %93 ]
  %100 = phi ptr [ %157, %155 ], [ %95, %93 ]
  %101 = phi ptr [ %156, %155 ], [ %94, %93 ]
  %102 = phi i32 [ %136, %155 ], [ 0, %93 ]
  %103 = call i64 @Perl_swash_fetch(ptr noundef %8, ptr noundef %98, i1 noundef zeroext true) #8
  %104 = icmp ult i64 %103, %26
  br i1 %104, label %105, label %114

105:                                              ; preds = %97
  %106 = load i8, ptr %98, align 1, !tbaa !21
  %107 = zext i8 %106 to i64
  %108 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %107
  %109 = load i8, ptr %108, align 1, !tbaa !21
  %110 = zext i8 %109 to i64
  %111 = getelementptr inbounds i8, ptr %98, i64 %110
  %112 = add nsw i32 %102, 1
  %113 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %99, i64 noundef %103, i64 noundef 0) #8
  br label %135

114:                                              ; preds = %97
  %115 = icmp eq i64 %103, %26
  br i1 %115, label %116, label %124

116:                                              ; preds = %114
  %117 = load i8, ptr %98, align 1, !tbaa !21
  %118 = zext i8 %117 to i64
  %119 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %118
  %120 = load i8, ptr %119, align 1, !tbaa !21
  %121 = zext i8 %120 to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %99, ptr nonnull align 1 %98, i64 %121, i1 false)
  %122 = getelementptr inbounds i8, ptr %99, i64 %121
  %123 = getelementptr inbounds i8, ptr %98, i64 %121
  br label %135

124:                                              ; preds = %114
  %125 = icmp eq i64 %103, %27
  %126 = load i8, ptr %98, align 1, !tbaa !21
  %127 = zext i8 %126 to i64
  %128 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %127
  %129 = load i8, ptr %128, align 1, !tbaa !21
  %130 = zext i8 %129 to i64
  %131 = getelementptr inbounds i8, ptr %98, i64 %130
  br i1 %125, label %132, label %135

132:                                              ; preds = %124
  %133 = add nsw i32 %102, 1
  %134 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %99, i64 noundef %81, i64 noundef 0) #8
  br label %135

135:                                              ; preds = %124, %116, %132, %105
  %136 = phi i32 [ %112, %105 ], [ %102, %116 ], [ %133, %132 ], [ %102, %124 ]
  %137 = phi ptr [ %113, %105 ], [ %122, %116 ], [ %134, %132 ], [ %99, %124 ]
  %138 = phi ptr [ %111, %105 ], [ %123, %116 ], [ %131, %132 ], [ %131, %124 ]
  %139 = icmp ugt ptr %137, %101
  br i1 %139, label %140, label %155

140:                                              ; preds = %135
  %141 = ptrtoint ptr %137 to i64
  %142 = ptrtoint ptr %100 to i64
  %143 = sub i64 %141, %142
  %144 = ptrtoint ptr %101 to i64
  %145 = sub i64 %144, %142
  %146 = load i64, ptr %2, align 8, !tbaa !18
  %147 = add i64 %146, %145
  br i1 %82, label %149, label %148

148:                                              ; preds = %140
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.12, i32 noundef 380) #8
  br label %149

149:                                              ; preds = %148, %140
  %150 = add i64 %147, 26
  %151 = call ptr @Perl_safesysrealloc(ptr noundef %100, i64 noundef %150) #8
  %152 = getelementptr inbounds i8, ptr %151, i64 %143
  %153 = getelementptr i8, ptr %151, i64 %147
  %154 = getelementptr i8, ptr %153, i64 13
  br label %155

155:                                              ; preds = %149, %135
  %156 = phi ptr [ %154, %149 ], [ %101, %135 ]
  %157 = phi ptr [ %151, %149 ], [ %100, %135 ]
  %158 = phi ptr [ %152, %149 ], [ %137, %135 ]
  %159 = icmp ult ptr %138, %65
  br i1 %159, label %97, label %160, !llvm.loop !36

160:                                              ; preds = %155, %93
  %161 = phi i32 [ 0, %93 ], [ %136, %155 ]
  %162 = phi ptr [ %95, %93 ], [ %157, %155 ]
  %163 = phi ptr [ %95, %93 ], [ %158, %155 ]
  %164 = or i1 %82, %63
  br i1 %164, label %165, label %171

165:                                              ; preds = %160
  %166 = ptrtoint ptr %163 to i64
  %167 = ptrtoint ptr %162 to i64
  %168 = sub i64 %166, %167
  call void @Perl_sv_setpvn(ptr noundef %0, ptr noundef %162, i64 noundef %168) #8
  call void @Perl_safesysfree(ptr noundef %162) #8
  %169 = and i1 %82, %63
  br i1 %169, label %170, label %177

170:                                              ; preds = %165
  call void @Perl_safesysfree(ptr noundef %64) #8
  br label %177

171:                                              ; preds = %160
  store i8 0, ptr %163, align 1, !tbaa !21
  %172 = ptrtoint ptr %163 to i64
  %173 = ptrtoint ptr %162 to i64
  %174 = sub i64 %172, %173
  %175 = load ptr, ptr %0, align 8, !tbaa !15
  %176 = getelementptr inbounds %struct.xpv, ptr %175, i64 0, i32 2
  store i64 %174, ptr %176, align 8, !tbaa !16
  br label %177

177:                                              ; preds = %171, %170, %165
  %178 = load i32, ptr %28, align 4, !tbaa !13
  %179 = and i32 %178, 4194304
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %184, label %181

181:                                              ; preds = %177
  %182 = call i32 @Perl_mg_set(ptr noundef nonnull %0) #8
  %183 = load i32, ptr %28, align 4, !tbaa !13
  br label %184

184:                                              ; preds = %177, %181
  %185 = phi i32 [ %178, %177 ], [ %183, %181 ]
  %186 = or i32 %185, 536870912
  store i32 %186, ptr %28, align 4, !tbaa !13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  ret i32 %161
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @S_do_trans_simple(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #7
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !13
  %6 = and i32 %5, 2098176
  %7 = icmp eq i32 %6, 1024
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load ptr, ptr %0, align 8, !tbaa !15
  %10 = getelementptr inbounds %struct.xpv, ptr %9, i64 0, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !16
  store i64 %11, ptr %2, align 8, !tbaa !18
  %12 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !21
  br label %17

14:                                               ; preds = %1
  %15 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 0) #8
  %16 = load i64, ptr %2, align 8, !tbaa !18
  br label %17

17:                                               ; preds = %14, %8
  %18 = phi i64 [ %11, %8 ], [ %16, %14 ]
  %19 = phi ptr [ %13, %8 ], [ %15, %14 ]
  %20 = getelementptr inbounds i8, ptr %19, i64 %18
  %21 = load ptr, ptr @PL_op, align 8, !tbaa !5
  %22 = getelementptr inbounds %struct.pvop, ptr %21, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !24
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.13, i32 noundef 42) #8
  br label %26

26:                                               ; preds = %25, %17
  %27 = load i32, ptr %4, align 4, !tbaa !13
  %28 = and i32 %27, 536870912
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %54

30:                                               ; preds = %26
  %31 = icmp sgt i64 %18, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %30, %43
  %33 = phi i32 [ %44, %43 ], [ 0, %30 ]
  %34 = phi ptr [ %45, %43 ], [ %19, %30 ]
  %35 = load i8, ptr %34, align 1, !tbaa !21
  %36 = zext i8 %35 to i64
  %37 = getelementptr inbounds i16, ptr %23, i64 %36
  %38 = load i16, ptr %37, align 2, !tbaa !26
  %39 = icmp sgt i16 %38, -1
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = add nsw i32 %33, 1
  %42 = trunc i16 %38 to i8
  store i8 %42, ptr %34, align 1, !tbaa !21
  br label %43

43:                                               ; preds = %40, %32
  %44 = phi i32 [ %41, %40 ], [ %33, %32 ]
  %45 = getelementptr inbounds i8, ptr %34, i64 1
  %46 = icmp ult ptr %45, %20
  br i1 %46, label %32, label %47, !llvm.loop !37

47:                                               ; preds = %43
  %48 = load i32, ptr %4, align 4, !tbaa !13
  br label %49

49:                                               ; preds = %47, %30
  %50 = phi i32 [ %27, %30 ], [ %48, %47 ]
  %51 = phi i32 [ 0, %30 ], [ %44, %47 ]
  %52 = and i32 %50, 4194304
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %121, label %118

54:                                               ; preds = %26
  %55 = load ptr, ptr @PL_op, align 8, !tbaa !5
  %56 = getelementptr inbounds %struct.op, ptr %55, i64 0, i32 6
  %57 = load i8, ptr %56, align 1, !tbaa !9
  %58 = and i8 %57, 64
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %54
  %61 = load i64, ptr %2, align 8, !tbaa !18
  %62 = shl i64 %61, 1
  %63 = or disjoint i64 %62, 1
  %64 = call ptr @Perl_safesysmalloc(i64 noundef %63) #8
  br label %65

65:                                               ; preds = %54, %60
  %66 = phi ptr [ %64, %60 ], [ %19, %54 ]
  %67 = icmp sgt i64 %18, 0
  br i1 %67, label %68, label %100

68:                                               ; preds = %65
  %69 = ptrtoint ptr %20 to i64
  br label %70

70:                                               ; preds = %68, %94
  %71 = phi i32 [ 0, %68 ], [ %97, %94 ]
  %72 = phi ptr [ %19, %68 ], [ %98, %94 ]
  %73 = phi ptr [ %66, %68 ], [ %95, %94 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  %74 = ptrtoint ptr %72 to i64
  %75 = sub i64 %69, %74
  %76 = call zeroext i1 @Perl_ckwarn(i32 noundef 44) #8
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %72, i64 noundef %75, ptr noundef nonnull %3, i32 noundef %78) #8
  %80 = icmp ult i64 %79, 256
  br i1 %80, label %81, label %90

81:                                               ; preds = %70
  %82 = getelementptr inbounds i16, ptr %23, i64 %79
  %83 = load i16, ptr %82, align 2, !tbaa !26
  %84 = icmp sgt i16 %83, -1
  br i1 %84, label %85, label %90

85:                                               ; preds = %81
  %86 = zext nneg i16 %83 to i64
  %87 = add nsw i32 %71, 1
  %88 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %73, i64 noundef %86, i64 noundef 0) #8
  %89 = load i64, ptr %3, align 8, !tbaa !18
  br label %94

90:                                               ; preds = %81, %70
  %91 = load i64, ptr %3, align 8, !tbaa !18
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %73, ptr align 1 %72, i64 %91, i1 false)
  %92 = load i64, ptr %3, align 8, !tbaa !18
  %93 = getelementptr inbounds i8, ptr %73, i64 %92
  br label %94

94:                                               ; preds = %90, %85
  %95 = phi ptr [ %88, %85 ], [ %93, %90 ]
  %96 = phi i64 [ %89, %85 ], [ %92, %90 ]
  %97 = phi i32 [ %87, %85 ], [ %71, %90 ]
  %98 = getelementptr inbounds i8, ptr %72, i64 %96
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  %99 = icmp ult ptr %98, %20
  br i1 %99, label %70, label %100, !llvm.loop !38

100:                                              ; preds = %94, %65
  %101 = phi ptr [ %66, %65 ], [ %95, %94 ]
  %102 = phi i32 [ 0, %65 ], [ %97, %94 ]
  br i1 %59, label %107, label %103

103:                                              ; preds = %100
  %104 = ptrtoint ptr %101 to i64
  %105 = ptrtoint ptr %66 to i64
  %106 = sub i64 %104, %105
  call void @Perl_sv_setpvn(ptr noundef %0, ptr noundef %66, i64 noundef %106) #8
  call void @Perl_safesysfree(ptr noundef %66) #8
  br label %113

107:                                              ; preds = %100
  store i8 0, ptr %101, align 1, !tbaa !21
  %108 = ptrtoint ptr %101 to i64
  %109 = ptrtoint ptr %66 to i64
  %110 = sub i64 %108, %109
  %111 = load ptr, ptr %0, align 8, !tbaa !15
  %112 = getelementptr inbounds %struct.xpv, ptr %111, i64 0, i32 2
  store i64 %110, ptr %112, align 8, !tbaa !16
  br label %113

113:                                              ; preds = %107, %103
  %114 = load i32, ptr %4, align 4, !tbaa !13
  %115 = or i32 %114, 536870912
  store i32 %115, ptr %4, align 4, !tbaa !13
  %116 = and i32 %114, 4194304
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %113, %49
  %119 = phi i32 [ %51, %49 ], [ %102, %113 ]
  %120 = call i32 @Perl_mg_set(ptr noundef nonnull %0) #8
  br label %121

121:                                              ; preds = %118, %113, %49
  %122 = phi i32 [ %51, %49 ], [ %102, %113 ], [ %119, %118 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  ret i32 %122
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_do_join(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = ptrtoint ptr %3 to i64
  %10 = ptrtoint ptr %2 to i64
  %11 = sub i64 %9, %10
  %12 = lshr exact i64 %11, 3
  %13 = trunc i64 %12 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  %14 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !13
  %16 = and i32 %15, 2098176
  %17 = icmp eq i32 %16, 1024
  br i1 %17, label %18, label %24

18:                                               ; preds = %4
  %19 = load ptr, ptr %1, align 8, !tbaa !15
  %20 = getelementptr inbounds %struct.xpv, ptr %19, i64 0, i32 2
  %21 = load i64, ptr %20, align 8, !tbaa !16
  store i64 %21, ptr %5, align 8, !tbaa !18
  %22 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !21
  br label %26

24:                                               ; preds = %4
  %25 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %1, ptr noundef nonnull %5, i32 noundef 34) #8
  br label %26

26:                                               ; preds = %24, %18
  %27 = phi ptr [ %23, %18 ], [ %25, %24 ]
  %28 = getelementptr inbounds ptr, ptr %2, i64 1
  %29 = icmp sgt i32 %13, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i64, ptr %5, align 8, !tbaa !18
  %32 = add nuw nsw i64 %12, 4294967295
  %33 = and i64 %32, 4294967295
  %34 = mul i64 %31, %33
  br label %35

35:                                               ; preds = %26, %30
  %36 = phi i64 [ %34, %30 ], [ 0, %26 ]
  %37 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !13
  %39 = and i32 %38, 255
  %40 = icmp ugt i32 %39, 2
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  call void @Perl_sv_upgrade(ptr noundef nonnull %0, i32 noundef 3) #8
  br label %42

42:                                               ; preds = %41, %35
  %43 = load ptr, ptr %0, align 8, !tbaa !15
  %44 = getelementptr inbounds %struct.xpv, ptr %43, i64 0, i32 3
  %45 = load i64, ptr %44, align 8, !tbaa !21
  %46 = shl i64 %11, 29
  %47 = ashr i64 %46, 32
  %48 = add i64 %36, %47
  %49 = icmp ult i64 %45, %48
  br i1 %49, label %50, label %121

50:                                               ; preds = %42
  br i1 %29, label %51, label %105

51:                                               ; preds = %50, %101
  %52 = phi i32 [ %55, %101 ], [ %13, %50 ]
  %53 = phi ptr [ %103, %101 ], [ %28, %50 ]
  %54 = phi i64 [ %102, %101 ], [ %36, %50 ]
  %55 = add nsw i32 %52, -1
  %56 = load ptr, ptr %53, align 8, !tbaa !5
  %57 = icmp eq ptr %56, null
  br i1 %57, label %101, label %58

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.sv, ptr %56, i64 0, i32 2
  %60 = load i32, ptr %59, align 4, !tbaa !13
  %61 = and i32 %60, 2097152
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %101

63:                                               ; preds = %58
  %64 = and i32 %60, 2048
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %80, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.sv, ptr %56, i64 0, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !21
  %69 = getelementptr inbounds %struct.sv, ptr %68, i64 0, i32 2
  %70 = load i32, ptr %69, align 4, !tbaa !13
  %71 = and i32 %70, 1048576
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %66
  %74 = load ptr, ptr %68, align 8, !tbaa !15
  %75 = load ptr, ptr %74, align 8, !tbaa !39
  %76 = getelementptr inbounds %struct.hv, ptr %75, i64 0, i32 2
  %77 = load i32, ptr %76, align 4, !tbaa !41
  %78 = and i32 %77, 268435456
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %101

80:                                               ; preds = %73, %66, %63
  %81 = and i32 %60, 65280
  %82 = icmp ne i32 %81, 0
  %83 = and i32 %60, 255
  %84 = icmp eq i32 %83, 8
  %85 = or i1 %82, %84
  %86 = and i32 %60, 16777471
  %87 = icmp eq i32 %86, 16777226
  %88 = or i1 %87, %85
  br i1 %88, label %89, label %101

89:                                               ; preds = %80
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  %90 = and i32 %60, 1024
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = load ptr, ptr %56, align 8, !tbaa !15
  %94 = getelementptr inbounds %struct.xpv, ptr %93, i64 0, i32 2
  br label %97

95:                                               ; preds = %89
  %96 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %56, ptr noundef nonnull %6, i32 noundef 34) #8
  br label %97

97:                                               ; preds = %95, %92
  %98 = phi ptr [ %6, %95 ], [ %94, %92 ]
  %99 = load i64, ptr %98, align 8, !tbaa !18
  %100 = add i64 %99, %54
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  br label %101

101:                                              ; preds = %80, %97, %73, %58, %51
  %102 = phi i64 [ %54, %58 ], [ %54, %73 ], [ %100, %97 ], [ %54, %51 ], [ %54, %80 ]
  %103 = getelementptr inbounds ptr, ptr %53, i64 1
  %104 = icmp ugt i32 %52, 1
  br i1 %104, label %51, label %105, !llvm.loop !43

105:                                              ; preds = %101, %50
  %106 = phi i64 [ %36, %50 ], [ %102, %101 ]
  %107 = load i32, ptr %37, align 4, !tbaa !13
  %108 = and i32 %107, 268435456
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %105
  %111 = add i64 %106, 1
  br label %118

112:                                              ; preds = %105
  %113 = load ptr, ptr %0, align 8, !tbaa !15
  %114 = getelementptr inbounds %struct.xpv, ptr %113, i64 0, i32 3
  %115 = load i64, ptr %114, align 8, !tbaa !21
  %116 = add i64 %106, 1
  %117 = icmp ult i64 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %110, %112
  %119 = phi i64 [ %111, %110 ], [ %116, %112 ]
  %120 = call ptr @Perl_sv_grow(ptr noundef nonnull %0, i64 noundef %119) #8
  br label %121

121:                                              ; preds = %118, %112, %42
  call void @Perl_sv_setpvn(ptr noundef nonnull %0, ptr noundef nonnull @.str, i64 noundef 0) #8
  %122 = load i32, ptr %37, align 4, !tbaa !13
  %123 = and i32 %122, -536870913
  store i32 %123, ptr %37, align 4, !tbaa !13
  %124 = load i8, ptr @PL_tainting, align 1, !tbaa !44, !range !46, !noundef !47
  %125 = icmp eq i8 %124, 0
  %126 = and i32 %122, 14680064
  %127 = icmp eq i32 %126, 0
  %128 = select i1 %125, i1 true, i1 %127
  br i1 %128, label %130, label %129

129:                                              ; preds = %121
  call void @Perl_sv_untaint(ptr noundef nonnull %0) #8
  br label %130

130:                                              ; preds = %129, %121
  %131 = add nsw i32 %13, -1
  br i1 %29, label %132, label %138

132:                                              ; preds = %130
  %133 = load ptr, ptr %28, align 8, !tbaa !5
  %134 = icmp eq ptr %133, null
  br i1 %134, label %136, label %135

135:                                              ; preds = %132
  call void @Perl_sv_catsv_flags(ptr noundef nonnull %0, ptr noundef nonnull %133, i32 noundef 2) #8
  br label %136

136:                                              ; preds = %135, %132
  %137 = getelementptr inbounds ptr, ptr %2, i64 2
  br label %138

138:                                              ; preds = %136, %130
  %139 = phi ptr [ %137, %136 ], [ %28, %130 ]
  %140 = load i64, ptr %5, align 8, !tbaa !18
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %138
  %143 = icmp sgt i32 %13, 1
  br i1 %143, label %198, label %237

144:                                              ; preds = %138
  %145 = load i32, ptr %14, align 4, !tbaa !13
  %146 = and i32 %145, 536870912
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %155, label %148

148:                                              ; preds = %144
  %149 = load ptr, ptr @PL_curcop, align 8, !tbaa !5
  %150 = getelementptr inbounds %struct.cop, ptr %149, i64 0, i32 10
  %151 = load i32, ptr %150, align 8, !tbaa !48
  %152 = and i32 %151, 8
  %153 = icmp eq i32 %152, 0
  %154 = select i1 %153, i32 32768, i32 16384
  br label %155

155:                                              ; preds = %148, %144
  %156 = phi i32 [ 16384, %144 ], [ %154, %148 ]
  %157 = icmp sgt i32 %13, 1
  br i1 %157, label %158, label %237

158:                                              ; preds = %155, %193
  %159 = phi ptr [ %196, %193 ], [ %139, %155 ]
  %160 = phi i32 [ %195, %193 ], [ %131, %155 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #7
  %161 = load i64, ptr %5, align 8, !tbaa !18
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %0, ptr noundef %27, i64 noundef %161, i32 noundef %156) #8
  %162 = load ptr, ptr %159, align 8, !tbaa !5
  %163 = getelementptr inbounds %struct.sv, ptr %162, i64 0, i32 2
  %164 = load i32, ptr %163, align 4, !tbaa !13
  %165 = and i32 %164, 2098176
  %166 = icmp eq i32 %165, 1024
  br i1 %166, label %167, label %173

167:                                              ; preds = %158
  %168 = load ptr, ptr %162, align 8, !tbaa !15
  %169 = getelementptr inbounds %struct.xpv, ptr %168, i64 0, i32 2
  %170 = load i64, ptr %169, align 8, !tbaa !16
  store i64 %170, ptr %7, align 8, !tbaa !18
  %171 = getelementptr inbounds %struct.sv, ptr %162, i64 0, i32 3
  %172 = load ptr, ptr %171, align 8, !tbaa !21
  br label %179

173:                                              ; preds = %158
  %174 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %162, ptr noundef nonnull %7, i32 noundef 34) #8
  %175 = load i64, ptr %7, align 8, !tbaa !18
  %176 = load ptr, ptr %159, align 8, !tbaa !5
  %177 = getelementptr inbounds %struct.sv, ptr %176, i64 0, i32 2
  %178 = load i32, ptr %177, align 4, !tbaa !13
  br label %179

179:                                              ; preds = %173, %167
  %180 = phi i32 [ %164, %167 ], [ %178, %173 ]
  %181 = phi i64 [ %170, %167 ], [ %175, %173 ]
  %182 = phi ptr [ %172, %167 ], [ %174, %173 ]
  %183 = and i32 %180, 536870912
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %193, label %185

185:                                              ; preds = %179
  %186 = load ptr, ptr @PL_curcop, align 8, !tbaa !5
  %187 = getelementptr inbounds %struct.cop, ptr %186, i64 0, i32 10
  %188 = load i32, ptr %187, align 8, !tbaa !48
  %189 = freeze i32 %188
  %190 = and i32 %189, 8
  %191 = icmp eq i32 %190, 0
  %192 = select i1 %191, i32 32768, i32 16384
  br label %193

193:                                              ; preds = %185, %179
  %194 = phi i32 [ 16384, %179 ], [ %192, %185 ]
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %0, ptr noundef %182, i64 noundef %181, i32 noundef %194) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  %195 = add nsw i32 %160, -1
  %196 = getelementptr inbounds ptr, ptr %159, i64 1
  %197 = icmp sgt i32 %160, 1
  br i1 %197, label %158, label %237, !llvm.loop !50

198:                                              ; preds = %142, %232
  %199 = phi ptr [ %235, %232 ], [ %139, %142 ]
  %200 = phi i32 [ %234, %232 ], [ %131, %142 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #7
  %201 = load ptr, ptr %199, align 8, !tbaa !5
  %202 = getelementptr inbounds %struct.sv, ptr %201, i64 0, i32 2
  %203 = load i32, ptr %202, align 4, !tbaa !13
  %204 = and i32 %203, 2098176
  %205 = icmp eq i32 %204, 1024
  br i1 %205, label %206, label %212

206:                                              ; preds = %198
  %207 = load ptr, ptr %201, align 8, !tbaa !15
  %208 = getelementptr inbounds %struct.xpv, ptr %207, i64 0, i32 2
  %209 = load i64, ptr %208, align 8, !tbaa !16
  store i64 %209, ptr %8, align 8, !tbaa !18
  %210 = getelementptr inbounds %struct.sv, ptr %201, i64 0, i32 3
  %211 = load ptr, ptr %210, align 8, !tbaa !21
  br label %218

212:                                              ; preds = %198
  %213 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %201, ptr noundef nonnull %8, i32 noundef 34) #8
  %214 = load i64, ptr %8, align 8, !tbaa !18
  %215 = load ptr, ptr %199, align 8, !tbaa !5
  %216 = getelementptr inbounds %struct.sv, ptr %215, i64 0, i32 2
  %217 = load i32, ptr %216, align 4, !tbaa !13
  br label %218

218:                                              ; preds = %212, %206
  %219 = phi i32 [ %203, %206 ], [ %217, %212 ]
  %220 = phi i64 [ %209, %206 ], [ %214, %212 ]
  %221 = phi ptr [ %211, %206 ], [ %213, %212 ]
  %222 = and i32 %219, 536870912
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %232, label %224

224:                                              ; preds = %218
  %225 = load ptr, ptr @PL_curcop, align 8, !tbaa !5
  %226 = getelementptr inbounds %struct.cop, ptr %225, i64 0, i32 10
  %227 = load i32, ptr %226, align 8, !tbaa !48
  %228 = freeze i32 %227
  %229 = and i32 %228, 8
  %230 = icmp eq i32 %229, 0
  %231 = select i1 %230, i32 32768, i32 16384
  br label %232

232:                                              ; preds = %224, %218
  %233 = phi i32 [ 16384, %218 ], [ %231, %224 ]
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %0, ptr noundef %221, i64 noundef %220, i32 noundef %233) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #7
  %234 = add nsw i32 %200, -1
  %235 = getelementptr inbounds ptr, ptr %199, i64 1
  %236 = icmp sgt i32 %200, 1
  br i1 %236, label %198, label %237, !llvm.loop !51

237:                                              ; preds = %193, %232, %155, %142
  %238 = load i32, ptr %37, align 4, !tbaa !13
  %239 = and i32 %238, 4194304
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %243, label %241

241:                                              ; preds = %237
  %242 = call i32 @Perl_mg_set(ptr noundef nonnull %0) #8
  br label %243

243:                                              ; preds = %237, %241
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  ret void
}

; Function Attrs: optsize
declare void @Perl_sv_upgrade(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_grow(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_setpvn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_untaint(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_catsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_catpvn_flags(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_mg_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_do_sprintf(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  %6 = load ptr, ptr %2, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !13
  %9 = and i32 %8, 2098176
  %10 = icmp eq i32 %9, 1024
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load ptr, ptr %6, align 8, !tbaa !15
  %13 = getelementptr inbounds %struct.xpv, ptr %12, i64 0, i32 2
  %14 = load i64, ptr %13, align 8, !tbaa !16
  store i64 %14, ptr %4, align 8, !tbaa !18
  %15 = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !21
  br label %22

17:                                               ; preds = %3
  %18 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %6, ptr noundef nonnull %4, i32 noundef 34) #8
  %19 = load ptr, ptr %2, align 8, !tbaa !5
  %20 = getelementptr inbounds %struct.sv, ptr %19, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !13
  br label %22

22:                                               ; preds = %17, %11
  %23 = phi i32 [ %8, %11 ], [ %21, %17 ]
  %24 = phi ptr [ %6, %11 ], [ %19, %17 ]
  %25 = phi ptr [ %16, %11 ], [ %18, %17 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #7
  store i8 0, ptr %5, align 1, !tbaa !44
  %26 = and i32 %23, 14680064
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %49, label %28

28:                                               ; preds = %22
  %29 = call zeroext i1 @Perl_sv_tainted(ptr noundef nonnull %24) #8
  %30 = load i8, ptr @PL_tainting, align 1, !range !46
  %31 = icmp ne i8 %30, 0
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %33, label %49

33:                                               ; preds = %28
  %34 = load ptr, ptr @PL_op, align 8, !tbaa !5
  %35 = icmp eq ptr %34, null
  br i1 %35, label %47, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.op, ptr %34, i64 0, i32 4
  %38 = load i16, ptr %37, align 8
  %39 = and i16 %38, 511
  %40 = icmp ult i16 %39, 396
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = icmp eq i16 %39, 237
  br i1 %42, label %47, label %43

43:                                               ; preds = %41
  %44 = zext nneg i16 %39 to i64
  %45 = getelementptr inbounds [0 x ptr], ptr @PL_op_name, i64 0, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !5
  br label %47

47:                                               ; preds = %33, %36, %43, %41
  %48 = phi ptr [ %46, %43 ], [ @.str.1, %41 ], [ @.str.2, %36 ], [ @.str.2, %33 ]
  call void @Perl_taint_proper(ptr noundef null, ptr noundef %48) #8
  br label %49

49:                                               ; preds = %47, %28, %22
  %50 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %51 = load i32, ptr %50, align 4, !tbaa !13
  %52 = and i32 %51, -536870913
  store i32 %52, ptr %50, align 4, !tbaa !13
  %53 = load ptr, ptr %2, align 8, !tbaa !5
  %54 = getelementptr inbounds %struct.sv, ptr %53, i64 0, i32 2
  %55 = load i32, ptr %54, align 4, !tbaa !13
  %56 = and i32 %55, 536870912
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %49
  %59 = load ptr, ptr @PL_curcop, align 8, !tbaa !5
  %60 = getelementptr inbounds %struct.cop, ptr %59, i64 0, i32 10
  %61 = load i32, ptr %60, align 8, !tbaa !48
  %62 = and i32 %61, 8
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = or i32 %51, 536870912
  store i32 %65, ptr %50, align 4, !tbaa !13
  br label %66

66:                                               ; preds = %64, %58, %49
  %67 = load i64, ptr %4, align 8, !tbaa !18
  %68 = getelementptr inbounds ptr, ptr %2, i64 1
  %69 = add nsw i32 %1, -1
  call void @Perl_sv_vsetpvfn(ptr noundef nonnull %0, ptr noundef %25, i64 noundef %67, ptr noundef null, ptr noundef nonnull %68, i32 noundef %69, ptr noundef nonnull %5) #8
  %70 = load i32, ptr %50, align 4, !tbaa !13
  %71 = and i32 %70, 4194304
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %66
  %74 = call i32 @Perl_mg_set(ptr noundef nonnull %0) #8
  br label %75

75:                                               ; preds = %66, %73
  %76 = load i8, ptr %5, align 1, !tbaa !44, !range !46, !noundef !47
  %77 = icmp eq i8 %76, 0
  %78 = load i8, ptr @PL_tainting, align 1, !range !46
  %79 = icmp eq i8 %78, 0
  %80 = select i1 %77, i1 true, i1 %79
  br i1 %80, label %82, label %81

81:                                               ; preds = %75
  call void @Perl_sv_magic(ptr noundef nonnull %0, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0) #8
  br label %82

82:                                               ; preds = %81, %75
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  ret void
}

; Function Attrs: optsize
declare zeroext i1 @Perl_sv_tainted(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_taint_proper(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_vsetpvfn(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_magic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @Perl_do_vecget(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  %5 = load ptr, ptr @PL_op, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.op, ptr %5, i64 0, i32 5
  %7 = load i8, ptr %6, align 2, !tbaa !52
  %8 = and i8 %7, 32
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.op, ptr %5, i64 0, i32 6
  %12 = load i8, ptr %11, align 1, !tbaa !9
  %13 = and i8 %12, 8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = tail call i32 @Perl_is_lvalue_sub() #8
  %17 = freeze i32 %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3, %15
  br label %20

20:                                               ; preds = %10, %15, %19
  %21 = phi i32 [ 2048, %19 ], [ 0, %15 ], [ 0, %10 ]
  %22 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !13
  %24 = and i32 %23, 2098176
  %25 = icmp eq i32 %24, 1024
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load ptr, ptr %0, align 8, !tbaa !15
  %28 = getelementptr inbounds %struct.xpv, ptr %27, i64 0, i32 2
  %29 = load i64, ptr %28, align 8, !tbaa !16
  store i64 %29, ptr %4, align 8, !tbaa !18
  %30 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !21
  br label %35

32:                                               ; preds = %20
  %33 = or disjoint i32 %21, 2
  %34 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef %33) #8
  br label %35

35:                                               ; preds = %32, %26
  %36 = phi ptr [ %31, %26 ], [ %34, %32 ]
  %37 = icmp eq ptr %36, null
  %38 = select i1 %37, ptr @.str, ptr %36
  %39 = icmp slt i64 %1, 0
  br i1 %39, label %356, label %40

40:                                               ; preds = %35
  %41 = icmp slt i32 %2, 1
  br i1 %41, label %46, label %42

42:                                               ; preds = %40
  %43 = add nuw i32 %2, 2147483647
  %44 = and i32 %43, %2
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42, %40
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.3) #8
  br label %47

47:                                               ; preds = %46, %42
  %48 = load i32, ptr %22, align 4, !tbaa !13
  %49 = and i32 %48, 536870912
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %64, label %51

51:                                               ; preds = %47
  %52 = call zeroext i1 @Perl_sv_utf8_downgrade(ptr noundef nonnull %0, i1 noundef zeroext true) #8
  %53 = load i32, ptr %22, align 4, !tbaa !13
  %54 = and i32 %53, 2098176
  %55 = icmp eq i32 %54, 1024
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load ptr, ptr %0, align 8, !tbaa !15
  %58 = getelementptr inbounds %struct.xpv, ptr %57, i64 0, i32 2
  %59 = load i64, ptr %58, align 8, !tbaa !16
  store i64 %59, ptr %4, align 8, !tbaa !18
  %60 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !21
  br label %64

62:                                               ; preds = %51
  %63 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef %21) #8
  br label %64

64:                                               ; preds = %56, %62, %47
  %65 = phi ptr [ %38, %47 ], [ %61, %56 ], [ %63, %62 ]
  %66 = icmp slt i32 %2, 8
  br i1 %66, label %67, label %75

67:                                               ; preds = %64
  %68 = and i64 %1, 7
  %69 = sext i32 %2 to i64
  %70 = mul nsw i64 %68, %69
  %71 = srem i64 %70, 8
  %72 = sdiv i32 8, %2
  %73 = sext i32 %72 to i64
  %74 = sdiv i64 %1, %73
  br label %81

75:                                               ; preds = %64
  %76 = icmp eq i32 %2, 8
  br i1 %76, label %81, label %77

77:                                               ; preds = %75
  %78 = lshr i32 %2, 3
  %79 = zext nneg i32 %78 to i64
  %80 = mul nsw i64 %79, %1
  br label %81

81:                                               ; preds = %75, %77, %67
  %82 = phi i64 [ %74, %67 ], [ %80, %77 ], [ %1, %75 ]
  %83 = phi i64 [ %71, %67 ], [ 0, %77 ], [ 0, %75 ]
  %84 = sext i32 %2 to i64
  %85 = add nsw i64 %84, 7
  %86 = add nsw i64 %85, %83
  %87 = lshr i64 %86, 3
  %88 = add i64 %87, %82
  %89 = load i64, ptr %4, align 8, !tbaa !18
  %90 = icmp ugt i64 %88, %89
  br i1 %90, label %91, label %260

91:                                               ; preds = %81
  %92 = icmp slt i32 %2, 9
  br i1 %92, label %356, label %93

93:                                               ; preds = %91
  switch i32 %2, label %356 [
    i32 16, label %94
    i32 32, label %101
    i32 64, label %129
  ]

94:                                               ; preds = %93
  %95 = icmp ult i64 %82, %89
  br i1 %95, label %96, label %356

96:                                               ; preds = %94
  %97 = getelementptr inbounds i8, ptr %65, i64 %82
  %98 = load i8, ptr %97, align 1, !tbaa !21
  %99 = zext i8 %98 to i64
  %100 = shl nuw nsw i64 %99, 8
  br label %356

101:                                              ; preds = %93
  %102 = icmp ult i64 %82, %89
  br i1 %102, label %103, label %356

103:                                              ; preds = %101
  %104 = add nuw i64 %82, 1
  %105 = icmp ult i64 %104, %89
  br i1 %105, label %111, label %106

106:                                              ; preds = %103
  %107 = getelementptr inbounds i8, ptr %65, i64 %82
  %108 = load i8, ptr %107, align 1, !tbaa !21
  %109 = zext i8 %108 to i64
  %110 = shl nuw nsw i64 %109, 24
  br label %356

111:                                              ; preds = %103
  %112 = add nuw i64 %82, 2
  %113 = icmp ult i64 %112, %89
  %114 = getelementptr inbounds i8, ptr %65, i64 %82
  %115 = load i8, ptr %114, align 1, !tbaa !21
  %116 = zext i8 %115 to i64
  %117 = shl nuw nsw i64 %116, 24
  %118 = getelementptr inbounds i8, ptr %65, i64 %104
  %119 = load i8, ptr %118, align 1, !tbaa !21
  %120 = zext i8 %119 to i64
  %121 = shl nuw nsw i64 %120, 16
  %122 = or disjoint i64 %121, %117
  br i1 %113, label %123, label %356

123:                                              ; preds = %111
  %124 = getelementptr inbounds i8, ptr %65, i64 %112
  %125 = load i8, ptr %124, align 1, !tbaa !21
  %126 = zext i8 %125 to i64
  %127 = shl nuw nsw i64 %126, 8
  %128 = or disjoint i64 %122, %127
  br label %356

129:                                              ; preds = %93
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 17, ptr noundef nonnull @.str.4) #8
  %130 = load i64, ptr %4, align 8, !tbaa !18
  %131 = icmp ult i64 %82, %130
  br i1 %131, label %132, label %356

132:                                              ; preds = %129
  %133 = add nuw i64 %82, 1
  %134 = icmp ult i64 %133, %130
  br i1 %134, label %140, label %135

135:                                              ; preds = %132
  %136 = getelementptr inbounds i8, ptr %65, i64 %82
  %137 = load i8, ptr %136, align 1, !tbaa !21
  %138 = zext i8 %137 to i64
  %139 = shl nuw i64 %138, 56
  br label %356

140:                                              ; preds = %132
  %141 = add nuw i64 %82, 2
  %142 = icmp ult i64 %141, %130
  br i1 %142, label %153, label %143

143:                                              ; preds = %140
  %144 = getelementptr inbounds i8, ptr %65, i64 %82
  %145 = load i8, ptr %144, align 1, !tbaa !21
  %146 = zext i8 %145 to i64
  %147 = shl nuw i64 %146, 56
  %148 = getelementptr inbounds i8, ptr %65, i64 %133
  %149 = load i8, ptr %148, align 1, !tbaa !21
  %150 = zext i8 %149 to i64
  %151 = shl nuw nsw i64 %150, 48
  %152 = or disjoint i64 %151, %147
  br label %356

153:                                              ; preds = %140
  %154 = add nuw i64 %82, 3
  %155 = icmp ult i64 %154, %130
  br i1 %155, label %171, label %156

156:                                              ; preds = %153
  %157 = getelementptr inbounds i8, ptr %65, i64 %82
  %158 = load i8, ptr %157, align 1, !tbaa !21
  %159 = zext i8 %158 to i64
  %160 = shl nuw i64 %159, 56
  %161 = getelementptr inbounds i8, ptr %65, i64 %133
  %162 = load i8, ptr %161, align 1, !tbaa !21
  %163 = zext i8 %162 to i64
  %164 = shl nuw nsw i64 %163, 48
  %165 = or disjoint i64 %164, %160
  %166 = getelementptr inbounds i8, ptr %65, i64 %141
  %167 = load i8, ptr %166, align 1, !tbaa !21
  %168 = zext i8 %167 to i64
  %169 = shl nuw nsw i64 %168, 40
  %170 = or disjoint i64 %165, %169
  br label %356

171:                                              ; preds = %153
  %172 = add nuw i64 %82, 4
  %173 = icmp ult i64 %172, %130
  br i1 %173, label %194, label %174

174:                                              ; preds = %171
  %175 = getelementptr inbounds i8, ptr %65, i64 %82
  %176 = load i8, ptr %175, align 1, !tbaa !21
  %177 = zext i8 %176 to i64
  %178 = shl nuw i64 %177, 56
  %179 = getelementptr inbounds i8, ptr %65, i64 %133
  %180 = load i8, ptr %179, align 1, !tbaa !21
  %181 = zext i8 %180 to i64
  %182 = shl nuw nsw i64 %181, 48
  %183 = or disjoint i64 %182, %178
  %184 = getelementptr inbounds i8, ptr %65, i64 %141
  %185 = load i8, ptr %184, align 1, !tbaa !21
  %186 = zext i8 %185 to i64
  %187 = shl nuw nsw i64 %186, 40
  %188 = or disjoint i64 %183, %187
  %189 = getelementptr inbounds i8, ptr %65, i64 %154
  %190 = load i8, ptr %189, align 1, !tbaa !21
  %191 = zext i8 %190 to i64
  %192 = shl nuw nsw i64 %191, 32
  %193 = or disjoint i64 %188, %192
  br label %356

194:                                              ; preds = %171
  %195 = add nuw i64 %82, 5
  %196 = icmp ult i64 %195, %130
  br i1 %196, label %222, label %197

197:                                              ; preds = %194
  %198 = getelementptr inbounds i8, ptr %65, i64 %82
  %199 = load i8, ptr %198, align 1, !tbaa !21
  %200 = zext i8 %199 to i64
  %201 = shl nuw i64 %200, 56
  %202 = getelementptr inbounds i8, ptr %65, i64 %133
  %203 = load i8, ptr %202, align 1, !tbaa !21
  %204 = zext i8 %203 to i64
  %205 = shl nuw nsw i64 %204, 48
  %206 = or disjoint i64 %205, %201
  %207 = getelementptr inbounds i8, ptr %65, i64 %141
  %208 = load i8, ptr %207, align 1, !tbaa !21
  %209 = zext i8 %208 to i64
  %210 = shl nuw nsw i64 %209, 40
  %211 = or disjoint i64 %206, %210
  %212 = getelementptr inbounds i8, ptr %65, i64 %154
  %213 = load i8, ptr %212, align 1, !tbaa !21
  %214 = zext i8 %213 to i64
  %215 = shl nuw nsw i64 %214, 32
  %216 = or disjoint i64 %211, %215
  %217 = getelementptr inbounds i8, ptr %65, i64 %172
  %218 = load i8, ptr %217, align 1, !tbaa !21
  %219 = zext i8 %218 to i64
  %220 = shl nuw nsw i64 %219, 24
  %221 = or disjoint i64 %216, %220
  br label %356

222:                                              ; preds = %194
  %223 = add nuw i64 %82, 6
  %224 = icmp ult i64 %223, %130
  %225 = getelementptr inbounds i8, ptr %65, i64 %82
  %226 = load i8, ptr %225, align 1, !tbaa !21
  %227 = zext i8 %226 to i64
  %228 = shl nuw i64 %227, 56
  %229 = getelementptr inbounds i8, ptr %65, i64 %133
  %230 = load i8, ptr %229, align 1, !tbaa !21
  %231 = zext i8 %230 to i64
  %232 = shl nuw nsw i64 %231, 48
  %233 = or disjoint i64 %232, %228
  %234 = getelementptr inbounds i8, ptr %65, i64 %141
  %235 = load i8, ptr %234, align 1, !tbaa !21
  %236 = zext i8 %235 to i64
  %237 = shl nuw nsw i64 %236, 40
  %238 = or disjoint i64 %233, %237
  %239 = getelementptr inbounds i8, ptr %65, i64 %154
  %240 = load i8, ptr %239, align 1, !tbaa !21
  %241 = zext i8 %240 to i64
  %242 = shl nuw nsw i64 %241, 32
  %243 = or disjoint i64 %238, %242
  %244 = getelementptr inbounds i8, ptr %65, i64 %172
  %245 = load i8, ptr %244, align 1, !tbaa !21
  %246 = zext i8 %245 to i64
  %247 = shl nuw nsw i64 %246, 24
  %248 = or disjoint i64 %243, %247
  %249 = getelementptr inbounds i8, ptr %65, i64 %195
  %250 = load i8, ptr %249, align 1, !tbaa !21
  %251 = zext i8 %250 to i64
  %252 = shl nuw nsw i64 %251, 16
  %253 = or disjoint i64 %248, %252
  br i1 %224, label %254, label %356

254:                                              ; preds = %222
  %255 = getelementptr inbounds i8, ptr %65, i64 %223
  %256 = load i8, ptr %255, align 1, !tbaa !21
  %257 = zext i8 %256 to i64
  %258 = shl nuw nsw i64 %257, 8
  %259 = or disjoint i64 %253, %258
  br label %356

260:                                              ; preds = %81
  br i1 %66, label %261, label %271

261:                                              ; preds = %260
  %262 = getelementptr inbounds i8, ptr %65, i64 %82
  %263 = load i8, ptr %262, align 1, !tbaa !21
  %264 = zext i8 %263 to i32
  %265 = trunc i64 %83 to i32
  %266 = lshr i32 %264, %265
  %267 = shl nsw i32 -1, %2
  %268 = xor i32 %267, -1
  %269 = and i32 %266, %268
  %270 = zext nneg i32 %269 to i64
  br label %356

271:                                              ; preds = %260
  %272 = add nsw i32 %2, -8
  %273 = call i32 @llvm.fshl.i32(i32 %272, i32 %272, i32 29)
  switch i32 %273, label %356 [
    i32 0, label %274
    i32 1, label %278
    i32 3, label %288
    i32 7, label %310
  ]

274:                                              ; preds = %271
  %275 = getelementptr inbounds i8, ptr %65, i64 %82
  %276 = load i8, ptr %275, align 1, !tbaa !21
  %277 = zext i8 %276 to i64
  br label %356

278:                                              ; preds = %271
  %279 = getelementptr inbounds i8, ptr %65, i64 %82
  %280 = load i8, ptr %279, align 1, !tbaa !21
  %281 = zext i8 %280 to i64
  %282 = shl nuw nsw i64 %281, 8
  %283 = add i64 %82, 1
  %284 = getelementptr inbounds i8, ptr %65, i64 %283
  %285 = load i8, ptr %284, align 1, !tbaa !21
  %286 = zext i8 %285 to i64
  %287 = or disjoint i64 %282, %286
  br label %356

288:                                              ; preds = %271
  %289 = getelementptr inbounds i8, ptr %65, i64 %82
  %290 = load i8, ptr %289, align 1, !tbaa !21
  %291 = zext i8 %290 to i64
  %292 = shl nuw nsw i64 %291, 24
  %293 = add i64 %82, 1
  %294 = getelementptr inbounds i8, ptr %65, i64 %293
  %295 = load i8, ptr %294, align 1, !tbaa !21
  %296 = zext i8 %295 to i64
  %297 = shl nuw nsw i64 %296, 16
  %298 = or disjoint i64 %297, %292
  %299 = add i64 %82, 2
  %300 = getelementptr inbounds i8, ptr %65, i64 %299
  %301 = load i8, ptr %300, align 1, !tbaa !21
  %302 = zext i8 %301 to i64
  %303 = shl nuw nsw i64 %302, 8
  %304 = or disjoint i64 %298, %303
  %305 = add i64 %82, 3
  %306 = getelementptr inbounds i8, ptr %65, i64 %305
  %307 = load i8, ptr %306, align 1, !tbaa !21
  %308 = zext i8 %307 to i64
  %309 = or disjoint i64 %304, %308
  br label %356

310:                                              ; preds = %271
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 17, ptr noundef nonnull @.str.4) #8
  %311 = getelementptr inbounds i8, ptr %65, i64 %82
  %312 = load i8, ptr %311, align 1, !tbaa !21
  %313 = zext i8 %312 to i64
  %314 = shl nuw i64 %313, 56
  %315 = add i64 %82, 1
  %316 = getelementptr inbounds i8, ptr %65, i64 %315
  %317 = load i8, ptr %316, align 1, !tbaa !21
  %318 = zext i8 %317 to i64
  %319 = shl nuw nsw i64 %318, 48
  %320 = or disjoint i64 %319, %314
  %321 = add i64 %82, 2
  %322 = getelementptr inbounds i8, ptr %65, i64 %321
  %323 = load i8, ptr %322, align 1, !tbaa !21
  %324 = zext i8 %323 to i64
  %325 = shl nuw nsw i64 %324, 40
  %326 = or disjoint i64 %320, %325
  %327 = add i64 %82, 3
  %328 = getelementptr inbounds i8, ptr %65, i64 %327
  %329 = load i8, ptr %328, align 1, !tbaa !21
  %330 = zext i8 %329 to i64
  %331 = shl nuw nsw i64 %330, 32
  %332 = or disjoint i64 %326, %331
  %333 = add i64 %82, 4
  %334 = getelementptr inbounds i8, ptr %65, i64 %333
  %335 = load i8, ptr %334, align 1, !tbaa !21
  %336 = zext i8 %335 to i64
  %337 = shl nuw nsw i64 %336, 24
  %338 = or disjoint i64 %332, %337
  %339 = add i64 %82, 5
  %340 = getelementptr inbounds i8, ptr %65, i64 %339
  %341 = load i8, ptr %340, align 1, !tbaa !21
  %342 = zext i8 %341 to i64
  %343 = shl nuw nsw i64 %342, 16
  %344 = or disjoint i64 %338, %343
  %345 = add i64 %82, 6
  %346 = getelementptr inbounds i8, ptr %65, i64 %345
  %347 = load i8, ptr %346, align 1, !tbaa !21
  %348 = zext i8 %347 to i64
  %349 = shl nuw nsw i64 %348, 8
  %350 = or disjoint i64 %344, %349
  %351 = add i64 %82, 7
  %352 = getelementptr inbounds i8, ptr %65, i64 %351
  %353 = load i8, ptr %352, align 1, !tbaa !21
  %354 = zext i8 %353 to i64
  %355 = add nuw i64 %350, %354
  br label %356

356:                                              ; preds = %222, %111, %96, %135, %156, %197, %254, %174, %143, %123, %106, %274, %288, %310, %278, %261, %91, %94, %101, %93, %129, %271, %35
  %357 = phi i64 [ 0, %35 ], [ %100, %96 ], [ %110, %106 ], [ %128, %123 ], [ %139, %135 ], [ %152, %143 ], [ %170, %156 ], [ %193, %174 ], [ %221, %197 ], [ %259, %254 ], [ %270, %261 ], [ %277, %274 ], [ %287, %278 ], [ %309, %288 ], [ %355, %310 ], [ 0, %91 ], [ 0, %94 ], [ 0, %101 ], [ 0, %93 ], [ 0, %129 ], [ 0, %271 ], [ %122, %111 ], [ %253, %222 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  ret i64 %357
}

; Function Attrs: optsize
declare i32 @Perl_is_lvalue_sub() local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i1 @Perl_sv_utf8_downgrade(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_ck_warner(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_do_vecset(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #7
  %3 = load ptr, ptr %0, align 8, !tbaa !15
  %4 = getelementptr inbounds %struct.xpvlv, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  %6 = icmp eq ptr %5, null
  br i1 %6, label %200, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.sv, ptr %5, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !13
  %10 = and i32 %9, 430018304
  %11 = icmp eq i32 %10, 1024
  br i1 %11, label %12, label %18

12:                                               ; preds = %7
  %13 = load ptr, ptr %5, align 8, !tbaa !15
  %14 = getelementptr inbounds %struct.xpv, ptr %13, i64 0, i32 2
  %15 = load i64, ptr %14, align 8, !tbaa !16
  store i64 %15, ptr %2, align 8, !tbaa !18
  %16 = getelementptr inbounds %struct.sv, ptr %5, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !21
  br label %21

18:                                               ; preds = %7
  %19 = call ptr @Perl_sv_pvn_force_flags(ptr noundef nonnull %5, ptr noundef nonnull %2, i32 noundef 2050) #8
  %20 = load i32, ptr %8, align 4, !tbaa !13
  br label %21

21:                                               ; preds = %18, %12
  %22 = phi i32 [ %9, %12 ], [ %20, %18 ]
  %23 = phi ptr [ %17, %12 ], [ %19, %18 ]
  %24 = and i32 %22, 536870912
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = call zeroext i1 @Perl_sv_utf8_downgrade(ptr noundef nonnull %5, i1 noundef zeroext true) #8
  %28 = load i32, ptr %8, align 4, !tbaa !13
  br label %29

29:                                               ; preds = %26, %21
  %30 = phi i32 [ %28, %26 ], [ %22, %21 ]
  %31 = and i32 %30, 1610547455
  %32 = or disjoint i32 %31, 17408
  store i32 %32, ptr %8, align 4, !tbaa !13
  %33 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %34 = load i32, ptr %33, align 4, !tbaa !13
  %35 = and i32 %34, -2145386240
  %36 = icmp eq i32 %35, -2147483392
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load ptr, ptr %0, align 8, !tbaa !15
  %39 = getelementptr inbounds %struct.xpvuv, ptr %38, i64 0, i32 4
  %40 = load i64, ptr %39, align 8, !tbaa !21
  br label %44

41:                                               ; preds = %29
  %42 = call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %0, i32 noundef 2) #8
  %43 = load ptr, ptr %0, align 8, !tbaa !15
  br label %44

44:                                               ; preds = %41, %37
  %45 = phi ptr [ %38, %37 ], [ %43, %41 ]
  %46 = phi i64 [ %40, %37 ], [ %42, %41 ]
  %47 = getelementptr inbounds %struct.xpvlv, ptr %45, i64 0, i32 6
  %48 = load i64, ptr %47, align 8, !tbaa !21
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.5) #8
  %51 = load ptr, ptr %0, align 8, !tbaa !15
  br label %52

52:                                               ; preds = %50, %44
  %53 = phi ptr [ %51, %50 ], [ %45, %44 ]
  %54 = getelementptr inbounds %struct.xpvlv, ptr %53, i64 0, i32 7
  %55 = load i64, ptr %54, align 8, !tbaa !55
  %56 = trunc i64 %55 to i32
  %57 = icmp slt i32 %56, 1
  br i1 %57, label %62, label %58

58:                                               ; preds = %52
  %59 = add nuw i32 %56, 2147483647
  %60 = and i32 %59, %56
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %58, %52
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.3) #8
  br label %63

63:                                               ; preds = %62, %58
  %64 = icmp slt i32 %56, 8
  br i1 %64, label %65, label %74

65:                                               ; preds = %63
  %66 = srem i64 %48, 8
  %67 = shl i64 %55, 32
  %68 = ashr exact i64 %67, 32
  %69 = mul nsw i64 %68, %66
  %70 = srem i64 %69, 8
  %71 = sdiv i32 8, %56
  %72 = sext i32 %71 to i64
  %73 = sdiv i64 %48, %72
  br label %80

74:                                               ; preds = %63
  %75 = icmp eq i32 %56, 8
  br i1 %75, label %80, label %76

76:                                               ; preds = %74
  %77 = lshr i64 %55, 3
  %78 = and i64 %77, 536870911
  %79 = mul nsw i64 %78, %48
  br label %80

80:                                               ; preds = %74, %76, %65
  %81 = phi i64 [ %70, %65 ], [ 0, %76 ], [ 0, %74 ]
  %82 = phi i64 [ %73, %65 ], [ %79, %76 ], [ %48, %74 ]
  %83 = shl i64 %55, 32
  %84 = ashr exact i64 %83, 32
  %85 = add nsw i64 %84, 7
  %86 = add nsw i64 %85, %81
  %87 = sdiv i64 %86, 8
  %88 = add nsw i64 %87, %82
  %89 = load i64, ptr %2, align 8, !tbaa !18
  %90 = icmp ugt i64 %88, %89
  br i1 %90, label %91, label %118

91:                                               ; preds = %80
  %92 = load i32, ptr %8, align 4, !tbaa !13
  %93 = and i32 %92, 268435456
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %91
  %96 = add i64 %88, 1
  br label %103

97:                                               ; preds = %91
  %98 = load ptr, ptr %5, align 8, !tbaa !15
  %99 = getelementptr inbounds %struct.xpv, ptr %98, i64 0, i32 3
  %100 = load i64, ptr %99, align 8, !tbaa !21
  %101 = add i64 %88, 1
  %102 = icmp ult i64 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %95, %97
  %104 = phi i64 [ %96, %95 ], [ %101, %97 ]
  %105 = call ptr @Perl_sv_grow(ptr noundef nonnull %5, i64 noundef %104) #8
  %106 = load i64, ptr %2, align 8, !tbaa !18
  br label %110

107:                                              ; preds = %97
  %108 = getelementptr inbounds %struct.sv, ptr %5, i64 0, i32 3
  %109 = load ptr, ptr %108, align 8, !tbaa !21
  br label %110

110:                                              ; preds = %107, %103
  %111 = phi i64 [ %101, %107 ], [ %104, %103 ]
  %112 = phi i64 [ %89, %107 ], [ %106, %103 ]
  %113 = phi ptr [ %109, %107 ], [ %105, %103 ]
  %114 = getelementptr inbounds i8, ptr %113, i64 %112
  %115 = sub i64 %111, %112
  call void @llvm.memset.p0.i64(ptr align 1 %114, i8 0, i64 %115, i1 false)
  %116 = load ptr, ptr %5, align 8, !tbaa !15
  %117 = getelementptr inbounds %struct.xpv, ptr %116, i64 0, i32 2
  store i64 %88, ptr %117, align 8, !tbaa !16
  br label %118

118:                                              ; preds = %110, %80
  %119 = phi ptr [ %113, %110 ], [ %23, %80 ]
  br i1 %64, label %120, label %135

120:                                              ; preds = %118
  %121 = shl nsw i32 -1, %56
  %122 = xor i32 %121, -1
  %123 = zext nneg i32 %122 to i64
  %124 = and i64 %46, %123
  %125 = trunc i64 %81 to i32
  %126 = shl i32 %122, %125
  %127 = getelementptr inbounds i8, ptr %119, i64 %82
  %128 = load i8, ptr %127, align 1, !tbaa !21
  %129 = trunc i32 %126 to i8
  %130 = xor i8 %129, -1
  %131 = and i8 %128, %130
  %132 = shl nuw nsw i64 %124, %81
  %133 = trunc i64 %132 to i8
  %134 = or i8 %131, %133
  store i8 %134, ptr %127, align 1, !tbaa !21
  br label %194

135:                                              ; preds = %118
  %136 = add nsw i32 %56, -8
  %137 = call i32 @llvm.fshl.i32(i32 %136, i32 %136, i32 29)
  switch i32 %137, label %194 [
    i32 0, label %138
    i32 1, label %141
    i32 3, label %148
    i32 7, label %163
  ]

138:                                              ; preds = %135
  %139 = trunc i64 %46 to i8
  %140 = getelementptr inbounds i8, ptr %119, i64 %82
  store i8 %139, ptr %140, align 1, !tbaa !21
  br label %194

141:                                              ; preds = %135
  %142 = lshr i64 %46, 8
  %143 = trunc i64 %142 to i8
  %144 = getelementptr inbounds i8, ptr %119, i64 %82
  store i8 %143, ptr %144, align 1, !tbaa !21
  %145 = trunc i64 %46 to i8
  %146 = add nsw i64 %82, 1
  %147 = getelementptr inbounds i8, ptr %119, i64 %146
  store i8 %145, ptr %147, align 1, !tbaa !21
  br label %194

148:                                              ; preds = %135
  %149 = lshr i64 %46, 24
  %150 = trunc i64 %149 to i8
  %151 = getelementptr inbounds i8, ptr %119, i64 %82
  store i8 %150, ptr %151, align 1, !tbaa !21
  %152 = lshr i64 %46, 16
  %153 = trunc i64 %152 to i8
  %154 = add nsw i64 %82, 1
  %155 = getelementptr inbounds i8, ptr %119, i64 %154
  store i8 %153, ptr %155, align 1, !tbaa !21
  %156 = lshr i64 %46, 8
  %157 = trunc i64 %156 to i8
  %158 = add nsw i64 %82, 2
  %159 = getelementptr inbounds i8, ptr %119, i64 %158
  store i8 %157, ptr %159, align 1, !tbaa !21
  %160 = trunc i64 %46 to i8
  %161 = add nsw i64 %82, 3
  %162 = getelementptr inbounds i8, ptr %119, i64 %161
  store i8 %160, ptr %162, align 1, !tbaa !21
  br label %194

163:                                              ; preds = %135
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 17, ptr noundef nonnull @.str.4) #8
  %164 = lshr i64 %46, 56
  %165 = trunc i64 %164 to i8
  %166 = getelementptr inbounds i8, ptr %119, i64 %82
  store i8 %165, ptr %166, align 1, !tbaa !21
  %167 = lshr i64 %46, 48
  %168 = trunc i64 %167 to i8
  %169 = add nsw i64 %82, 1
  %170 = getelementptr inbounds i8, ptr %119, i64 %169
  store i8 %168, ptr %170, align 1, !tbaa !21
  %171 = lshr i64 %46, 40
  %172 = trunc i64 %171 to i8
  %173 = add nsw i64 %82, 2
  %174 = getelementptr inbounds i8, ptr %119, i64 %173
  store i8 %172, ptr %174, align 1, !tbaa !21
  %175 = lshr i64 %46, 32
  %176 = trunc i64 %175 to i8
  %177 = add nsw i64 %82, 3
  %178 = getelementptr inbounds i8, ptr %119, i64 %177
  store i8 %176, ptr %178, align 1, !tbaa !21
  %179 = lshr i64 %46, 24
  %180 = trunc i64 %179 to i8
  %181 = add nsw i64 %82, 4
  %182 = getelementptr inbounds i8, ptr %119, i64 %181
  store i8 %180, ptr %182, align 1, !tbaa !21
  %183 = lshr i64 %46, 16
  %184 = trunc i64 %183 to i8
  %185 = add nsw i64 %82, 5
  %186 = getelementptr inbounds i8, ptr %119, i64 %185
  store i8 %184, ptr %186, align 1, !tbaa !21
  %187 = lshr i64 %46, 8
  %188 = trunc i64 %187 to i8
  %189 = add nsw i64 %82, 6
  %190 = getelementptr inbounds i8, ptr %119, i64 %189
  store i8 %188, ptr %190, align 1, !tbaa !21
  %191 = trunc i64 %46 to i8
  %192 = add nsw i64 %82, 7
  %193 = getelementptr inbounds i8, ptr %119, i64 %192
  store i8 %191, ptr %193, align 1, !tbaa !21
  br label %194

194:                                              ; preds = %135, %120, %141, %163, %148, %138
  %195 = load i32, ptr %8, align 4, !tbaa !13
  %196 = and i32 %195, 4194304
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %200, label %198

198:                                              ; preds = %194
  %199 = call i32 @Perl_mg_set(ptr noundef nonnull %5) #8
  br label %200

200:                                              ; preds = %198, %194, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  ret void
}

; Function Attrs: optsize
declare i64 @Perl_sv_2uv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_do_vop(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  %8 = icmp eq ptr %1, %2
  br i1 %8, label %9, label %36

9:                                                ; preds = %4
  %10 = icmp eq i32 %0, 92
  br i1 %10, label %23, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !13
  %14 = and i32 %13, 65280
  %15 = icmp ne i32 %14, 0
  %16 = and i32 %13, 255
  %17 = icmp eq i32 %16, 8
  %18 = or i1 %15, %17
  %19 = and i32 %13, 16777471
  %20 = icmp eq i32 %19, 16777226
  %21 = or i1 %20, %18
  br i1 %21, label %23, label %22

22:                                               ; preds = %11
  tail call void @Perl_sv_setpvn(ptr noundef nonnull %1, ptr noundef nonnull @.str, i64 noundef 0) #8
  br label %23

23:                                               ; preds = %9, %11, %22
  %24 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !13
  %26 = and i32 %25, 430018304
  %27 = icmp eq i32 %26, 1024
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load ptr, ptr %1, align 8, !tbaa !15
  %30 = getelementptr inbounds %struct.xpv, ptr %29, i64 0, i32 2
  %31 = load i64, ptr %30, align 8, !tbaa !16
  store i64 %31, ptr %5, align 8, !tbaa !18
  %32 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !21
  br label %57

34:                                               ; preds = %23
  %35 = call ptr @Perl_sv_pvn_force_flags(ptr noundef nonnull %1, ptr noundef nonnull %5, i32 noundef 0) #8
  br label %57

36:                                               ; preds = %4
  tail call void @Perl_sv_setpvn(ptr noundef %1, ptr noundef nonnull @.str, i64 noundef 0) #8
  %37 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !13
  %39 = and i32 %38, 2098176
  %40 = icmp eq i32 %39, 1024
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load ptr, ptr %2, align 8, !tbaa !15
  %43 = getelementptr inbounds %struct.xpv, ptr %42, i64 0, i32 2
  %44 = load i64, ptr %43, align 8, !tbaa !16
  store i64 %44, ptr %5, align 8, !tbaa !18
  %45 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !21
  br label %49

47:                                               ; preds = %36
  %48 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %2, ptr noundef nonnull %5, i32 noundef 32) #8
  br label %49

49:                                               ; preds = %47, %41
  %50 = phi ptr [ %46, %41 ], [ %48, %47 ]
  %51 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %52 = load i32, ptr %51, align 4, !tbaa !13
  %53 = and i32 %52, 430018304
  %54 = icmp eq i32 %53, 1024
  br i1 %54, label %57, label %55

55:                                               ; preds = %49
  %56 = call ptr @Perl_sv_pvn_force_flags(ptr noundef nonnull %1, ptr noundef null, i32 noundef 0) #8
  br label %57

57:                                               ; preds = %49, %28, %34, %55
  %58 = phi ptr [ %50, %55 ], [ %33, %28 ], [ %35, %34 ], [ %50, %49 ]
  %59 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 2
  %60 = load i32, ptr %59, align 4, !tbaa !13
  %61 = and i32 %60, 2098176
  %62 = icmp eq i32 %61, 1024
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = load ptr, ptr %3, align 8, !tbaa !15
  %65 = getelementptr inbounds %struct.xpv, ptr %64, i64 0, i32 2
  %66 = load i64, ptr %65, align 8, !tbaa !16
  store i64 %66, ptr %6, align 8, !tbaa !18
  %67 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !21
  br label %71

69:                                               ; preds = %57
  %70 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %3, ptr noundef nonnull %6, i32 noundef 32) #8
  br label %71

71:                                               ; preds = %69, %63
  %72 = phi ptr [ %68, %63 ], [ %70, %69 ]
  %73 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 2
  %74 = load i32, ptr %73, align 4, !tbaa !13
  %75 = and i32 %74, 536870912
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %71
  %78 = load ptr, ptr @PL_curcop, align 8, !tbaa !5
  %79 = getelementptr inbounds %struct.cop, ptr %78, i64 0, i32 10
  %80 = load i32, ptr %79, align 8, !tbaa !48
  %81 = and i32 %80, 8
  %82 = icmp eq i32 %81, 0
  br label %83

83:                                               ; preds = %77, %71
  %84 = phi i1 [ false, %71 ], [ %82, %77 ]
  %85 = load i32, ptr %59, align 4, !tbaa !13
  %86 = and i32 %85, 536870912
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %83
  %89 = load ptr, ptr @PL_curcop, align 8, !tbaa !5
  %90 = getelementptr inbounds %struct.cop, ptr %89, i64 0, i32 10
  %91 = load i32, ptr %90, align 8, !tbaa !48
  %92 = and i32 %91, 8
  %93 = icmp eq i32 %92, 0
  br label %94

94:                                               ; preds = %88, %83
  %95 = phi i1 [ false, %83 ], [ %93, %88 ]
  %96 = xor i1 %84, true
  %97 = select i1 %96, i1 true, i1 %95
  br i1 %97, label %114, label %98

98:                                               ; preds = %94
  %99 = load i64, ptr %6, align 8, !tbaa !18
  %100 = call ptr @Perl_newSVpvn_flags(ptr noundef %72, i64 noundef %99, i32 noundef 524288) #8
  %101 = call i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef %100, i32 noundef 2, i64 noundef 0) #8
  %102 = getelementptr inbounds %struct.sv, ptr %100, i64 0, i32 2
  %103 = load i32, ptr %102, align 4, !tbaa !13
  %104 = and i32 %103, 2098176
  %105 = icmp eq i32 %104, 1024
  br i1 %105, label %106, label %112

106:                                              ; preds = %98
  %107 = load ptr, ptr %100, align 8, !tbaa !15
  %108 = getelementptr inbounds %struct.xpv, ptr %107, i64 0, i32 2
  %109 = load i64, ptr %108, align 8, !tbaa !16
  store i64 %109, ptr %6, align 8, !tbaa !18
  %110 = getelementptr inbounds %struct.sv, ptr %100, i64 0, i32 3
  %111 = load ptr, ptr %110, align 8, !tbaa !21
  br label %132

112:                                              ; preds = %98
  %113 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %100, ptr noundef nonnull %6, i32 noundef 32) #8
  br label %132

114:                                              ; preds = %94
  br i1 %84, label %132, label %115

115:                                              ; preds = %114
  br i1 %95, label %116, label %132

116:                                              ; preds = %115
  %117 = load i64, ptr %5, align 8, !tbaa !18
  %118 = call ptr @Perl_newSVpvn_flags(ptr noundef %58, i64 noundef %117, i32 noundef 524288) #8
  %119 = call i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef %118, i32 noundef 2, i64 noundef 0) #8
  %120 = getelementptr inbounds %struct.sv, ptr %118, i64 0, i32 2
  %121 = load i32, ptr %120, align 4, !tbaa !13
  %122 = and i32 %121, 2098176
  %123 = icmp eq i32 %122, 1024
  br i1 %123, label %124, label %130

124:                                              ; preds = %116
  %125 = load ptr, ptr %118, align 8, !tbaa !15
  %126 = getelementptr inbounds %struct.xpv, ptr %125, i64 0, i32 2
  %127 = load i64, ptr %126, align 8, !tbaa !16
  store i64 %127, ptr %5, align 8, !tbaa !18
  %128 = getelementptr inbounds %struct.sv, ptr %118, i64 0, i32 3
  %129 = load ptr, ptr %128, align 8, !tbaa !21
  br label %132

130:                                              ; preds = %116
  %131 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %118, ptr noundef nonnull %5, i32 noundef 32) #8
  br label %132

132:                                              ; preds = %124, %130, %106, %112, %114, %115
  %133 = phi ptr [ %58, %114 ], [ %58, %115 ], [ %58, %112 ], [ %58, %106 ], [ %129, %124 ], [ %131, %130 ]
  %134 = phi ptr [ %72, %114 ], [ %72, %115 ], [ %113, %112 ], [ %111, %106 ], [ %72, %124 ], [ %72, %130 ]
  %135 = phi i1 [ true, %114 ], [ false, %115 ], [ true, %112 ], [ true, %106 ], [ true, %124 ], [ true, %130 ]
  %136 = phi ptr [ %3, %114 ], [ %3, %115 ], [ %100, %112 ], [ %100, %106 ], [ %3, %124 ], [ %3, %130 ]
  %137 = phi ptr [ %2, %114 ], [ %2, %115 ], [ %2, %112 ], [ %2, %106 ], [ %118, %124 ], [ %118, %130 ]
  %138 = load i64, ptr %5, align 8
  %139 = load i64, ptr %6, align 8
  %140 = call i64 @llvm.umin.i64(i64 %138, i64 %139)
  %141 = load ptr, ptr %1, align 8, !tbaa !15
  %142 = getelementptr inbounds %struct.xpv, ptr %141, i64 0, i32 2
  store i64 %140, ptr %142, align 8, !tbaa !16
  %143 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %144 = load i32, ptr %143, align 4, !tbaa !13
  %145 = and i32 %144, 1610547455
  %146 = or disjoint i32 %145, 17408
  store i32 %146, ptr %143, align 4, !tbaa !13
  br i1 %135, label %147, label %157

147:                                              ; preds = %132
  %148 = icmp eq ptr %137, %1
  %149 = icmp eq ptr %136, %1
  %150 = or i1 %149, %148
  br i1 %150, label %151, label %157

151:                                              ; preds = %147
  %152 = icmp eq i32 %0, 92
  %153 = add i64 %139, %138
  %154 = select i1 %152, i64 %140, i64 %153
  %155 = add i64 %154, 1
  %156 = call ptr @Perl_safesyscalloc(i64 noundef %155, i64 noundef 1) #8
  br label %208

157:                                              ; preds = %132, %147
  %158 = and i32 %146, 429982720
  %159 = icmp eq i32 %158, 1024
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %162 = load ptr, ptr %161, align 8, !tbaa !21
  br label %166

163:                                              ; preds = %157
  %164 = call ptr @Perl_sv_pvn_force_flags(ptr noundef nonnull %1, ptr noundef null, i32 noundef 0) #8
  %165 = load ptr, ptr %1, align 8, !tbaa !15
  br label %166

166:                                              ; preds = %163, %160
  %167 = phi ptr [ %141, %160 ], [ %165, %163 ]
  %168 = phi ptr [ %162, %160 ], [ %164, %163 ]
  %169 = getelementptr inbounds %struct.xpv, ptr %167, i64 0, i32 3
  %170 = load i64, ptr %169, align 8, !tbaa !21
  %171 = add i64 %140, 1
  %172 = icmp ult i64 %170, %171
  br i1 %172, label %173, label %180

173:                                              ; preds = %166
  %174 = call ptr @Perl_sv_grow(ptr noundef nonnull %1, i64 noundef %171) #8
  %175 = load ptr, ptr %1, align 8, !tbaa !15
  %176 = getelementptr inbounds %struct.xpv, ptr %175, i64 0, i32 2
  %177 = load i64, ptr %176, align 8, !tbaa !16
  %178 = getelementptr inbounds i8, ptr %174, i64 %177
  %179 = sub i64 %171, %177
  call void @llvm.memset.p0.i64(ptr align 1 %178, i8 0, i64 %179, i1 false)
  br label %180

180:                                              ; preds = %173, %166
  %181 = phi ptr [ %174, %173 ], [ %168, %166 ]
  %182 = icmp ne i32 %0, 92
  %183 = and i1 %182, %135
  br i1 %183, label %184, label %206

184:                                              ; preds = %180
  %185 = load i32, ptr %143, align 4, !tbaa !13
  %186 = and i32 %185, 268435456
  %187 = icmp eq i32 %186, 0
  %188 = load i64, ptr %5, align 8, !tbaa !18
  %189 = load i64, ptr %6, align 8, !tbaa !18
  br i1 %187, label %193, label %190

190:                                              ; preds = %184
  %191 = add i64 %188, 1
  %192 = add i64 %191, %189
  br label %200

193:                                              ; preds = %184
  %194 = load ptr, ptr %1, align 8, !tbaa !15
  %195 = getelementptr inbounds %struct.xpv, ptr %194, i64 0, i32 3
  %196 = load i64, ptr %195, align 8, !tbaa !21
  %197 = add i64 %188, 1
  %198 = add i64 %197, %189
  %199 = icmp ult i64 %196, %198
  br i1 %199, label %200, label %203

200:                                              ; preds = %190, %193
  %201 = phi i64 [ %192, %190 ], [ %198, %193 ]
  %202 = call ptr @Perl_sv_grow(ptr noundef nonnull %1, i64 noundef %201) #8
  br label %206

203:                                              ; preds = %193
  %204 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %205 = load ptr, ptr %204, align 8, !tbaa !21
  br label %206

206:                                              ; preds = %200, %203, %180
  %207 = phi ptr [ %181, %180 ], [ %202, %200 ], [ %205, %203 ]
  br i1 %135, label %208, label %341

208:                                              ; preds = %151, %206
  %209 = phi i64 [ %154, %151 ], [ 0, %206 ]
  %210 = phi ptr [ %156, %151 ], [ %207, %206 ]
  %211 = load i64, ptr %5, align 8, !tbaa !18
  %212 = load i64, ptr %6, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #7
  switch i32 %0, label %329 [
    i32 92, label %221
    i32 93, label %217
    i32 94, label %213
  ]

213:                                              ; preds = %208
  %214 = icmp ne i64 %211, 0
  %215 = icmp ne i64 %212, 0
  %216 = select i1 %214, i1 %215, i1 false
  br i1 %216, label %275, label %294

217:                                              ; preds = %208
  %218 = icmp ne i64 %211, 0
  %219 = icmp ne i64 %212, 0
  %220 = select i1 %218, i1 %219, i1 false
  br i1 %220, label %256, label %294

221:                                              ; preds = %208
  %222 = icmp ne i64 %211, 0
  %223 = icmp ne i64 %212, 0
  %224 = select i1 %222, i1 %223, i1 false
  br i1 %224, label %225, label %244

225:                                              ; preds = %221, %225
  %226 = phi i64 [ %238, %225 ], [ %212, %221 ]
  %227 = phi i64 [ %234, %225 ], [ %211, %221 ]
  %228 = phi ptr [ %237, %225 ], [ %134, %221 ]
  %229 = phi ptr [ %233, %225 ], [ %133, %221 ]
  %230 = phi ptr [ %240, %225 ], [ %210, %221 ]
  %231 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %229, i64 noundef %227, ptr noundef nonnull %7, i32 noundef 1) #8
  %232 = load i64, ptr %7, align 8, !tbaa !18
  %233 = getelementptr inbounds i8, ptr %229, i64 %232
  %234 = sub i64 %227, %232
  %235 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %228, i64 noundef %226, ptr noundef nonnull %7, i32 noundef 1) #8
  %236 = load i64, ptr %7, align 8, !tbaa !18
  %237 = getelementptr inbounds i8, ptr %228, i64 %236
  %238 = sub i64 %226, %236
  %239 = and i64 %235, %231
  %240 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %230, i64 noundef %239, i64 noundef 0) #8
  %241 = icmp ne i64 %234, 0
  %242 = icmp ne i64 %238, 0
  %243 = select i1 %241, i1 %242, i1 false
  br i1 %243, label %225, label %244, !llvm.loop !56

244:                                              ; preds = %225, %221
  %245 = phi ptr [ %210, %221 ], [ %240, %225 ]
  %246 = icmp eq ptr %137, %1
  %247 = icmp eq ptr %136, %1
  %248 = or i1 %247, %246
  br i1 %248, label %249, label %250

249:                                              ; preds = %244
  call void @Perl_sv_usepvn_flags(ptr noundef nonnull %1, ptr noundef %210, i64 noundef %209, i32 noundef 0) #8
  br label %250

250:                                              ; preds = %244, %249
  %251 = ptrtoint ptr %245 to i64
  %252 = ptrtoint ptr %210 to i64
  %253 = sub i64 %251, %252
  %254 = load ptr, ptr %1, align 8, !tbaa !15
  %255 = getelementptr inbounds %struct.xpv, ptr %254, i64 0, i32 2
  store i64 %253, ptr %255, align 8, !tbaa !16
  br label %338

256:                                              ; preds = %217, %256
  %257 = phi i64 [ %269, %256 ], [ %212, %217 ]
  %258 = phi i64 [ %265, %256 ], [ %211, %217 ]
  %259 = phi ptr [ %268, %256 ], [ %134, %217 ]
  %260 = phi ptr [ %264, %256 ], [ %133, %217 ]
  %261 = phi ptr [ %271, %256 ], [ %210, %217 ]
  %262 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %260, i64 noundef %258, ptr noundef nonnull %7, i32 noundef 1) #8
  %263 = load i64, ptr %7, align 8, !tbaa !18
  %264 = getelementptr inbounds i8, ptr %260, i64 %263
  %265 = sub i64 %258, %263
  %266 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %259, i64 noundef %257, ptr noundef nonnull %7, i32 noundef 1) #8
  %267 = load i64, ptr %7, align 8, !tbaa !18
  %268 = getelementptr inbounds i8, ptr %259, i64 %267
  %269 = sub i64 %257, %267
  %270 = xor i64 %266, %262
  %271 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %261, i64 noundef %270, i64 noundef 0) #8
  %272 = icmp ne i64 %265, 0
  %273 = icmp ne i64 %269, 0
  %274 = select i1 %272, i1 %273, i1 false
  br i1 %274, label %256, label %294, !llvm.loop !57

275:                                              ; preds = %213, %275
  %276 = phi i64 [ %288, %275 ], [ %212, %213 ]
  %277 = phi i64 [ %284, %275 ], [ %211, %213 ]
  %278 = phi ptr [ %287, %275 ], [ %134, %213 ]
  %279 = phi ptr [ %283, %275 ], [ %133, %213 ]
  %280 = phi ptr [ %290, %275 ], [ %210, %213 ]
  %281 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %279, i64 noundef %277, ptr noundef nonnull %7, i32 noundef 1) #8
  %282 = load i64, ptr %7, align 8, !tbaa !18
  %283 = getelementptr inbounds i8, ptr %279, i64 %282
  %284 = sub i64 %277, %282
  %285 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %278, i64 noundef %276, ptr noundef nonnull %7, i32 noundef 1) #8
  %286 = load i64, ptr %7, align 8, !tbaa !18
  %287 = getelementptr inbounds i8, ptr %278, i64 %286
  %288 = sub i64 %276, %286
  %289 = or i64 %285, %281
  %290 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %280, i64 noundef %289, i64 noundef 0) #8
  %291 = icmp ne i64 %284, 0
  %292 = icmp ne i64 %288, 0
  %293 = select i1 %291, i1 %292, i1 false
  br i1 %293, label %275, label %294, !llvm.loop !58

294:                                              ; preds = %275, %256, %213, %217
  %295 = phi ptr [ %210, %217 ], [ %210, %213 ], [ %271, %256 ], [ %290, %275 ]
  %296 = phi ptr [ %133, %217 ], [ %133, %213 ], [ %264, %256 ], [ %283, %275 ]
  %297 = phi ptr [ %134, %217 ], [ %134, %213 ], [ %268, %256 ], [ %287, %275 ]
  %298 = phi i64 [ %211, %217 ], [ %211, %213 ], [ %265, %256 ], [ %284, %275 ]
  %299 = phi i64 [ %212, %217 ], [ %212, %213 ], [ %269, %256 ], [ %288, %275 ]
  %300 = icmp eq i64 %299, 0
  br i1 %300, label %301, label %303

301:                                              ; preds = %294
  %302 = icmp eq i64 %298, 0
  br i1 %302, label %308, label %303

303:                                              ; preds = %301, %294
  %304 = phi i64 [ %299, %294 ], [ %298, %301 ]
  %305 = phi ptr [ %297, %294 ], [ %296, %301 ]
  %306 = trunc i64 %304 to i32
  %307 = call ptr @Perl_savepvn(ptr noundef %305, i32 noundef %306) #8
  br label %308

308:                                              ; preds = %303, %301
  %309 = phi ptr [ null, %301 ], [ %307, %303 ]
  %310 = icmp eq ptr %137, %1
  %311 = icmp eq ptr %136, %1
  %312 = or i1 %311, %310
  br i1 %312, label %313, label %314

313:                                              ; preds = %308
  call void @Perl_sv_usepvn_flags(ptr noundef nonnull %1, ptr noundef %210, i64 noundef %209, i32 noundef 0) #8
  br label %314

314:                                              ; preds = %308, %313
  %315 = ptrtoint ptr %295 to i64
  %316 = ptrtoint ptr %210 to i64
  %317 = sub i64 %315, %316
  %318 = load ptr, ptr %1, align 8, !tbaa !15
  %319 = getelementptr inbounds %struct.xpv, ptr %318, i64 0, i32 2
  store i64 %317, ptr %319, align 8, !tbaa !16
  br i1 %300, label %321, label %320

320:                                              ; preds = %314
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %1, ptr noundef %309, i64 noundef %299, i32 noundef 0) #8
  br label %328

321:                                              ; preds = %314
  %322 = icmp eq i64 %298, 0
  br i1 %322, label %324, label %323

323:                                              ; preds = %321
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %1, ptr noundef %309, i64 noundef %298, i32 noundef 0) #8
  br label %328

324:                                              ; preds = %321
  %325 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %326 = load ptr, ptr %325, align 8, !tbaa !21
  %327 = getelementptr inbounds i8, ptr %326, i64 %317
  store i8 0, ptr %327, align 1, !tbaa !21
  br label %328

328:                                              ; preds = %323, %324, %320
  call void @Perl_safesysfree(ptr noundef %309) #8
  br label %338

329:                                              ; preds = %208
  %330 = icmp eq ptr %137, %1
  %331 = icmp eq ptr %136, %1
  %332 = or i1 %331, %330
  br i1 %332, label %333, label %334

333:                                              ; preds = %329
  call void @Perl_safesysfree(ptr noundef %210) #8
  br label %334

334:                                              ; preds = %329, %333
  %335 = sext i32 %0 to i64
  %336 = getelementptr inbounds [0 x ptr], ptr @PL_op_name, i64 0, i64 %335
  %337 = load ptr, ptr %336, align 8, !tbaa !5
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.6, i32 noundef %0, ptr noundef %337) #8
  br label %338

338:                                              ; preds = %334, %328, %250
  %339 = load i32, ptr %143, align 4, !tbaa !13
  %340 = or i32 %339, 536870912
  store i32 %340, ptr %143, align 4, !tbaa !13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  br label %522

341:                                              ; preds = %206
  %342 = icmp ugt i64 %140, 31
  %343 = ptrtoint ptr %207 to i64
  %344 = and i64 %343, 7
  %345 = icmp eq i64 %344, 0
  %346 = select i1 %342, i1 %345, i1 false
  %347 = ptrtoint ptr %133 to i64
  %348 = and i64 %347, 7
  %349 = icmp eq i64 %348, 0
  %350 = select i1 %346, i1 %349, i1 false
  %351 = ptrtoint ptr %134 to i64
  %352 = and i64 %351, 7
  %353 = icmp eq i64 %352, 0
  %354 = select i1 %350, i1 %353, i1 false
  br i1 %354, label %355, label %451

355:                                              ; preds = %341
  %356 = and i64 %140, 31
  %357 = lshr i64 %140, 5
  switch i32 %0, label %451 [
    i32 92, label %358
    i32 93, label %389
    i32 94, label %420
  ]

358:                                              ; preds = %355, %358
  %359 = phi ptr [ %387, %358 ], [ %207, %355 ]
  %360 = phi ptr [ %382, %358 ], [ %133, %355 ]
  %361 = phi i64 [ %363, %358 ], [ %357, %355 ]
  %362 = phi ptr [ %384, %358 ], [ %134, %355 ]
  %363 = add nsw i64 %361, -1
  %364 = getelementptr inbounds i64, ptr %360, i64 1
  %365 = load i64, ptr %360, align 8, !tbaa !18
  %366 = getelementptr inbounds i64, ptr %362, i64 1
  %367 = load i64, ptr %362, align 8, !tbaa !18
  %368 = and i64 %367, %365
  %369 = getelementptr inbounds i64, ptr %359, i64 1
  store i64 %368, ptr %359, align 8, !tbaa !18
  %370 = getelementptr inbounds i64, ptr %360, i64 2
  %371 = load i64, ptr %364, align 8, !tbaa !18
  %372 = getelementptr inbounds i64, ptr %362, i64 2
  %373 = load i64, ptr %366, align 8, !tbaa !18
  %374 = and i64 %373, %371
  %375 = getelementptr inbounds i64, ptr %359, i64 2
  store i64 %374, ptr %369, align 8, !tbaa !18
  %376 = getelementptr inbounds i64, ptr %360, i64 3
  %377 = load i64, ptr %370, align 8, !tbaa !18
  %378 = getelementptr inbounds i64, ptr %362, i64 3
  %379 = load i64, ptr %372, align 8, !tbaa !18
  %380 = and i64 %379, %377
  %381 = getelementptr inbounds i64, ptr %359, i64 3
  store i64 %380, ptr %375, align 8, !tbaa !18
  %382 = getelementptr inbounds i64, ptr %360, i64 4
  %383 = load i64, ptr %376, align 8, !tbaa !18
  %384 = getelementptr inbounds i64, ptr %362, i64 4
  %385 = load i64, ptr %378, align 8, !tbaa !18
  %386 = and i64 %385, %383
  %387 = getelementptr inbounds i64, ptr %359, i64 4
  store i64 %386, ptr %381, align 8, !tbaa !18
  %388 = icmp eq i64 %363, 0
  br i1 %388, label %451, label %358, !llvm.loop !59

389:                                              ; preds = %355, %389
  %390 = phi ptr [ %418, %389 ], [ %207, %355 ]
  %391 = phi ptr [ %413, %389 ], [ %133, %355 ]
  %392 = phi i64 [ %394, %389 ], [ %357, %355 ]
  %393 = phi ptr [ %415, %389 ], [ %134, %355 ]
  %394 = add nsw i64 %392, -1
  %395 = getelementptr inbounds i64, ptr %391, i64 1
  %396 = load i64, ptr %391, align 8, !tbaa !18
  %397 = getelementptr inbounds i64, ptr %393, i64 1
  %398 = load i64, ptr %393, align 8, !tbaa !18
  %399 = xor i64 %398, %396
  %400 = getelementptr inbounds i64, ptr %390, i64 1
  store i64 %399, ptr %390, align 8, !tbaa !18
  %401 = getelementptr inbounds i64, ptr %391, i64 2
  %402 = load i64, ptr %395, align 8, !tbaa !18
  %403 = getelementptr inbounds i64, ptr %393, i64 2
  %404 = load i64, ptr %397, align 8, !tbaa !18
  %405 = xor i64 %404, %402
  %406 = getelementptr inbounds i64, ptr %390, i64 2
  store i64 %405, ptr %400, align 8, !tbaa !18
  %407 = getelementptr inbounds i64, ptr %391, i64 3
  %408 = load i64, ptr %401, align 8, !tbaa !18
  %409 = getelementptr inbounds i64, ptr %393, i64 3
  %410 = load i64, ptr %403, align 8, !tbaa !18
  %411 = xor i64 %410, %408
  %412 = getelementptr inbounds i64, ptr %390, i64 3
  store i64 %411, ptr %406, align 8, !tbaa !18
  %413 = getelementptr inbounds i64, ptr %391, i64 4
  %414 = load i64, ptr %407, align 8, !tbaa !18
  %415 = getelementptr inbounds i64, ptr %393, i64 4
  %416 = load i64, ptr %409, align 8, !tbaa !18
  %417 = xor i64 %416, %414
  %418 = getelementptr inbounds i64, ptr %390, i64 4
  store i64 %417, ptr %412, align 8, !tbaa !18
  %419 = icmp eq i64 %394, 0
  br i1 %419, label %451, label %389, !llvm.loop !60

420:                                              ; preds = %355, %420
  %421 = phi ptr [ %449, %420 ], [ %207, %355 ]
  %422 = phi ptr [ %444, %420 ], [ %133, %355 ]
  %423 = phi i64 [ %425, %420 ], [ %357, %355 ]
  %424 = phi ptr [ %446, %420 ], [ %134, %355 ]
  %425 = add nsw i64 %423, -1
  %426 = getelementptr inbounds i64, ptr %422, i64 1
  %427 = load i64, ptr %422, align 8, !tbaa !18
  %428 = getelementptr inbounds i64, ptr %424, i64 1
  %429 = load i64, ptr %424, align 8, !tbaa !18
  %430 = or i64 %429, %427
  %431 = getelementptr inbounds i64, ptr %421, i64 1
  store i64 %430, ptr %421, align 8, !tbaa !18
  %432 = getelementptr inbounds i64, ptr %422, i64 2
  %433 = load i64, ptr %426, align 8, !tbaa !18
  %434 = getelementptr inbounds i64, ptr %424, i64 2
  %435 = load i64, ptr %428, align 8, !tbaa !18
  %436 = or i64 %435, %433
  %437 = getelementptr inbounds i64, ptr %421, i64 2
  store i64 %436, ptr %431, align 8, !tbaa !18
  %438 = getelementptr inbounds i64, ptr %422, i64 3
  %439 = load i64, ptr %432, align 8, !tbaa !18
  %440 = getelementptr inbounds i64, ptr %424, i64 3
  %441 = load i64, ptr %434, align 8, !tbaa !18
  %442 = or i64 %441, %439
  %443 = getelementptr inbounds i64, ptr %421, i64 3
  store i64 %442, ptr %437, align 8, !tbaa !18
  %444 = getelementptr inbounds i64, ptr %422, i64 4
  %445 = load i64, ptr %438, align 8, !tbaa !18
  %446 = getelementptr inbounds i64, ptr %424, i64 4
  %447 = load i64, ptr %440, align 8, !tbaa !18
  %448 = or i64 %447, %445
  %449 = getelementptr inbounds i64, ptr %421, i64 4
  store i64 %448, ptr %443, align 8, !tbaa !18
  %450 = icmp eq i64 %425, 0
  br i1 %450, label %451, label %420, !llvm.loop !61

451:                                              ; preds = %420, %389, %358, %355, %341
  %452 = phi ptr [ %207, %341 ], [ %207, %355 ], [ %387, %358 ], [ %418, %389 ], [ %449, %420 ]
  %453 = phi ptr [ %133, %341 ], [ %133, %355 ], [ %382, %358 ], [ %413, %389 ], [ %444, %420 ]
  %454 = phi ptr [ %134, %341 ], [ %134, %355 ], [ %384, %358 ], [ %415, %389 ], [ %446, %420 ]
  %455 = phi i64 [ %140, %341 ], [ %356, %355 ], [ %356, %358 ], [ %356, %389 ], [ %356, %420 ]
  switch i32 %0, label %522 [
    i32 92, label %460
    i32 93, label %458
    i32 94, label %456
  ]

456:                                              ; preds = %451
  %457 = icmp eq i64 %455, 0
  br i1 %457, label %503, label %490

458:                                              ; preds = %451
  %459 = icmp eq i64 %455, 0
  br i1 %459, label %503, label %477

460:                                              ; preds = %451
  %461 = icmp eq i64 %455, 0
  br i1 %461, label %475, label %462

462:                                              ; preds = %460, %462
  %463 = phi i64 [ %467, %462 ], [ %455, %460 ]
  %464 = phi ptr [ %470, %462 ], [ %454, %460 ]
  %465 = phi ptr [ %468, %462 ], [ %453, %460 ]
  %466 = phi ptr [ %473, %462 ], [ %452, %460 ]
  %467 = add i64 %463, -1
  %468 = getelementptr inbounds i8, ptr %465, i64 1
  %469 = load i8, ptr %465, align 1, !tbaa !21
  %470 = getelementptr inbounds i8, ptr %464, i64 1
  %471 = load i8, ptr %464, align 1, !tbaa !21
  %472 = and i8 %471, %469
  %473 = getelementptr inbounds i8, ptr %466, i64 1
  store i8 %472, ptr %466, align 1, !tbaa !21
  %474 = icmp eq i64 %467, 0
  br i1 %474, label %475, label %462, !llvm.loop !62

475:                                              ; preds = %462, %460
  %476 = phi ptr [ %452, %460 ], [ %473, %462 ]
  store i8 0, ptr %476, align 1, !tbaa !21
  br label %522

477:                                              ; preds = %458, %477
  %478 = phi i64 [ %482, %477 ], [ %455, %458 ]
  %479 = phi ptr [ %485, %477 ], [ %454, %458 ]
  %480 = phi ptr [ %483, %477 ], [ %453, %458 ]
  %481 = phi ptr [ %488, %477 ], [ %452, %458 ]
  %482 = add i64 %478, -1
  %483 = getelementptr inbounds i8, ptr %480, i64 1
  %484 = load i8, ptr %480, align 1, !tbaa !21
  %485 = getelementptr inbounds i8, ptr %479, i64 1
  %486 = load i8, ptr %479, align 1, !tbaa !21
  %487 = xor i8 %486, %484
  %488 = getelementptr inbounds i8, ptr %481, i64 1
  store i8 %487, ptr %481, align 1, !tbaa !21
  %489 = icmp eq i64 %482, 0
  br i1 %489, label %503, label %477, !llvm.loop !63

490:                                              ; preds = %456, %490
  %491 = phi i64 [ %495, %490 ], [ %455, %456 ]
  %492 = phi ptr [ %498, %490 ], [ %454, %456 ]
  %493 = phi ptr [ %496, %490 ], [ %453, %456 ]
  %494 = phi ptr [ %501, %490 ], [ %452, %456 ]
  %495 = add i64 %491, -1
  %496 = getelementptr inbounds i8, ptr %493, i64 1
  %497 = load i8, ptr %493, align 1, !tbaa !21
  %498 = getelementptr inbounds i8, ptr %492, i64 1
  %499 = load i8, ptr %492, align 1, !tbaa !21
  %500 = or i8 %499, %497
  %501 = getelementptr inbounds i8, ptr %494, i64 1
  store i8 %500, ptr %494, align 1, !tbaa !21
  %502 = icmp eq i64 %495, 0
  br i1 %502, label %503, label %490, !llvm.loop !64

503:                                              ; preds = %490, %477, %456, %458
  %504 = load i64, ptr %6, align 8, !tbaa !18
  %505 = icmp ugt i64 %504, %140
  br i1 %505, label %506, label %509

506:                                              ; preds = %503
  %507 = getelementptr inbounds i8, ptr %134, i64 %140
  %508 = sub i64 %504, %140
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %1, ptr noundef %507, i64 noundef %508, i32 noundef 0) #8
  br label %522

509:                                              ; preds = %503
  %510 = load i64, ptr %5, align 8, !tbaa !18
  %511 = icmp ugt i64 %510, %140
  br i1 %511, label %512, label %515

512:                                              ; preds = %509
  %513 = getelementptr inbounds i8, ptr %133, i64 %140
  %514 = sub i64 %510, %140
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %1, ptr noundef %513, i64 noundef %514, i32 noundef 0) #8
  br label %522

515:                                              ; preds = %509
  %516 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %517 = load ptr, ptr %516, align 8, !tbaa !21
  %518 = load ptr, ptr %1, align 8, !tbaa !15
  %519 = getelementptr inbounds %struct.xpv, ptr %518, i64 0, i32 2
  %520 = load i64, ptr %519, align 8, !tbaa !16
  %521 = getelementptr inbounds i8, ptr %517, i64 %520
  store i8 0, ptr %521, align 1, !tbaa !21
  br label %522

522:                                              ; preds = %338, %506, %515, %512, %451, %475
  %523 = load i8, ptr @PL_tainting, align 1, !tbaa !44, !range !46, !noundef !47
  %524 = icmp eq i8 %523, 0
  %525 = load i8, ptr @PL_tainted, align 1, !range !46
  %526 = icmp eq i8 %525, 0
  %527 = select i1 %524, i1 true, i1 %526
  br i1 %527, label %529, label %528

528:                                              ; preds = %522
  call void @Perl_sv_magic(ptr noundef nonnull %1, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0) #8
  br label %529

529:                                              ; preds = %528, %522
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_newSVpvn_flags(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_safesyscalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_usepvn_flags(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @Perl_utf8n_to_uvchr(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_savepvn(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_safesysfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_do_kv() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !5
  %2 = getelementptr inbounds ptr, ptr %1, i64 -1
  %3 = load ptr, ptr %1, align 8, !tbaa !5
  %4 = load ptr, ptr @PL_op, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.op, ptr %4, i64 0, i32 5
  %6 = load i8, ptr %5, align 2, !tbaa !52
  %7 = and i8 %6, 3
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %0
  %10 = zext nneg i8 %7 to i32
  br label %14

11:                                               ; preds = %0
  %12 = tail call i32 @Perl_block_gimme() #8
  %13 = load ptr, ptr @PL_op, align 8, !tbaa !5
  br label %14

14:                                               ; preds = %11, %9
  %15 = phi ptr [ %4, %9 ], [ %13, %11 ]
  %16 = phi i32 [ %10, %9 ], [ %12, %11 ]
  %17 = getelementptr inbounds %struct.op, ptr %15, i64 0, i32 4
  %18 = load i16, ptr %17, align 8
  %19 = and i16 %18, 511
  switch i16 %19, label %20 [
    i16 149, label %24
    i16 11, label %24
  ]

20:                                               ; preds = %14
  %21 = icmp eq i16 %19, 146
  %22 = icmp eq i16 %19, 382
  %23 = or i1 %21, %22
  br label %24

24:                                               ; preds = %20, %14, %14
  %25 = phi i1 [ true, %14 ], [ %23, %20 ], [ true, %14 ]
  %26 = zext i1 %25 to i64
  switch i16 %19, label %27 [
    i16 149, label %31
    i16 11, label %31
  ]

27:                                               ; preds = %24
  %28 = icmp eq i16 %19, 145
  %29 = icmp eq i16 %19, 383
  %30 = or i1 %28, %29
  br label %31

31:                                               ; preds = %27, %24, %24
  %32 = phi i1 [ true, %24 ], [ true, %24 ], [ %30, %27 ]
  %33 = zext i1 %32 to i64
  %34 = tail call i32 @Perl_hv_iterinit(ptr noundef %3) #8
  switch i32 %16, label %101 [
    i32 1, label %174
    i32 2, label %35
  ]

35:                                               ; preds = %31
  %36 = load ptr, ptr @PL_op, align 8, !tbaa !5
  %37 = getelementptr inbounds %struct.op, ptr %36, i64 0, i32 5
  %38 = load i8, ptr %37, align 2, !tbaa !52
  %39 = and i8 %38, 32
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.op, ptr %36, i64 0, i32 6
  %43 = load i8, ptr %42, align 1, !tbaa !9
  %44 = and i8 %43, 8
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %59, label %46

46:                                               ; preds = %41
  %47 = tail call i32 @Perl_is_lvalue_sub() #8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load ptr, ptr @PL_op, align 8, !tbaa !5
  br label %59

51:                                               ; preds = %46, %35
  %52 = tail call ptr @Perl_newSV_type(i32 noundef 10) #8
  %53 = tail call ptr @Perl_sv_2mortal(ptr noundef %52) #8
  tail call void @Perl_sv_magic(ptr noundef %53, ptr noundef null, i32 noundef 107, ptr noundef null, i32 noundef 0) #8
  %54 = load ptr, ptr %53, align 8, !tbaa !15
  %55 = getelementptr inbounds %struct.xpvlv, ptr %54, i64 0, i32 9
  store i8 107, ptr %55, align 8, !tbaa !65
  %56 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %3) #9
  %57 = load ptr, ptr %53, align 8, !tbaa !15
  %58 = getelementptr inbounds %struct.xpvlv, ptr %57, i64 0, i32 8
  store ptr %3, ptr %58, align 8, !tbaa !53
  br label %99

59:                                               ; preds = %49, %41
  %60 = phi ptr [ %50, %49 ], [ %36, %41 ]
  %61 = load ptr, ptr @PL_curpad, align 8, !tbaa !5
  %62 = getelementptr inbounds %struct.op, ptr %60, i64 0, i32 3
  %63 = load i64, ptr %62, align 8, !tbaa !66
  %64 = getelementptr inbounds ptr, ptr %61, i64 %63
  %65 = load ptr, ptr %64, align 8, !tbaa !5
  %66 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 2
  %67 = load i32, ptr %66, align 4, !tbaa !13
  %68 = and i32 %67, 8388608
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %59
  %71 = tail call ptr @Perl_mg_find(ptr noundef nonnull %3, i32 noundef 80) #8
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %86

73:                                               ; preds = %59, %70
  %74 = load ptr, ptr %3, align 8, !tbaa !67
  %75 = getelementptr inbounds %struct.xpvhv, ptr %74, i64 0, i32 2
  %76 = load i64, ptr %75, align 8, !tbaa !68
  %77 = getelementptr inbounds %struct.xpvmg, ptr %74, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !21
  %79 = icmp eq ptr %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %73
  %81 = tail call i32 @Perl_hv_placeholders_get(ptr noundef nonnull %3) #8
  %82 = sext i32 %81 to i64
  br label %83

83:                                               ; preds = %73, %80
  %84 = phi i64 [ %82, %80 ], [ 0, %73 ]
  %85 = sub i64 %76, %84
  br label %91

86:                                               ; preds = %70, %86
  %87 = phi i64 [ %90, %86 ], [ 0, %70 ]
  %88 = tail call ptr @Perl_hv_iternext_flags(ptr noundef %3, i32 noundef 0) #8
  %89 = icmp eq ptr %88, null
  %90 = add nuw nsw i64 %87, 1
  br i1 %89, label %91, label %86, !llvm.loop !70

91:                                               ; preds = %86, %83
  %92 = phi i64 [ %85, %83 ], [ %87, %86 ]
  tail call void @Perl_sv_setiv(ptr noundef %65, i64 noundef %92) #8
  %93 = getelementptr inbounds %struct.sv, ptr %65, i64 0, i32 2
  %94 = load i32, ptr %93, align 4, !tbaa !13
  %95 = and i32 %94, 4194304
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %91
  %98 = tail call i32 @Perl_mg_set(ptr noundef nonnull %65) #8
  br label %99

99:                                               ; preds = %97, %91, %51
  %100 = phi ptr [ %53, %51 ], [ %65, %91 ], [ %65, %97 ]
  store ptr %100, ptr %1, align 8, !tbaa !5
  br label %174

101:                                              ; preds = %31
  %102 = load ptr, ptr @PL_stack_max, align 8, !tbaa !5
  %103 = ptrtoint ptr %102 to i64
  %104 = ptrtoint ptr %2 to i64
  %105 = sub i64 %103, %104
  %106 = ashr exact i64 %105, 3
  %107 = load ptr, ptr %3, align 8, !tbaa !67
  %108 = getelementptr inbounds %struct.xpvhv, ptr %107, i64 0, i32 2
  %109 = load i64, ptr %108, align 8, !tbaa !68
  %110 = getelementptr inbounds %struct.xpvmg, ptr %107, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !21
  %112 = icmp eq ptr %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %101
  %114 = tail call i32 @Perl_hv_placeholders_get(ptr noundef nonnull %3) #8
  %115 = sext i32 %114 to i64
  br label %116

116:                                              ; preds = %101, %113
  %117 = phi i64 [ %115, %113 ], [ 0, %101 ]
  %118 = sub i64 %109, %117
  %119 = add nuw nsw i64 %33, %26
  %120 = mul i64 %118, %119
  %121 = icmp slt i64 %106, %120
  br i1 %121, label %122, label %137

122:                                              ; preds = %116
  %123 = load ptr, ptr %3, align 8, !tbaa !67
  %124 = getelementptr inbounds %struct.xpvhv, ptr %123, i64 0, i32 2
  %125 = load i64, ptr %124, align 8, !tbaa !68
  %126 = getelementptr inbounds %struct.xpvmg, ptr %123, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !21
  %128 = icmp eq ptr %127, null
  br i1 %128, label %132, label %129

129:                                              ; preds = %122
  %130 = tail call i32 @Perl_hv_placeholders_get(ptr noundef nonnull %3) #8
  %131 = sext i32 %130 to i64
  br label %132

132:                                              ; preds = %122, %129
  %133 = phi i64 [ %131, %129 ], [ 0, %122 ]
  %134 = sub i64 %125, %133
  %135 = mul i64 %134, %119
  %136 = tail call ptr @Perl_stack_grow(ptr noundef nonnull %2, ptr noundef nonnull %2, i64 noundef %135) #8
  br label %137

137:                                              ; preds = %116, %132
  %138 = phi ptr [ %136, %132 ], [ %2, %116 ]
  %139 = tail call ptr @Perl_hv_iternext_flags(ptr noundef nonnull %3, i32 noundef 0) #8
  %140 = icmp eq ptr %139, null
  br i1 %140, label %174, label %141

141:                                              ; preds = %137, %170
  %142 = phi ptr [ %172, %170 ], [ %139, %137 ]
  %143 = phi ptr [ %171, %170 ], [ %138, %137 ]
  br i1 %25, label %144, label %156

144:                                              ; preds = %141
  %145 = tail call ptr @Perl_hv_iterkeysv(ptr noundef nonnull %142) #8
  %146 = load ptr, ptr @PL_stack_max, align 8, !tbaa !5
  %147 = ptrtoint ptr %146 to i64
  %148 = ptrtoint ptr %143 to i64
  %149 = sub i64 %147, %148
  %150 = icmp slt i64 %149, 8
  br i1 %150, label %151, label %153

151:                                              ; preds = %144
  %152 = tail call ptr @Perl_stack_grow(ptr noundef %143, ptr noundef %143, i64 noundef 1) #8
  br label %153

153:                                              ; preds = %144, %151
  %154 = phi ptr [ %152, %151 ], [ %143, %144 ]
  %155 = getelementptr inbounds ptr, ptr %154, i64 1
  store ptr %145, ptr %155, align 8, !tbaa !5
  br label %156

156:                                              ; preds = %153, %141
  %157 = phi ptr [ %155, %153 ], [ %143, %141 ]
  br i1 %32, label %158, label %170

158:                                              ; preds = %156
  %159 = tail call ptr @Perl_hv_iterval(ptr noundef nonnull %3, ptr noundef nonnull %142) #8
  %160 = load ptr, ptr @PL_stack_max, align 8, !tbaa !5
  %161 = ptrtoint ptr %160 to i64
  %162 = ptrtoint ptr %157 to i64
  %163 = sub i64 %161, %162
  %164 = icmp slt i64 %163, 8
  br i1 %164, label %165, label %167

165:                                              ; preds = %158
  %166 = tail call ptr @Perl_stack_grow(ptr noundef %157, ptr noundef %157, i64 noundef 1) #8
  br label %167

167:                                              ; preds = %158, %165
  %168 = phi ptr [ %166, %165 ], [ %157, %158 ]
  %169 = getelementptr inbounds ptr, ptr %168, i64 1
  store ptr %159, ptr %169, align 8, !tbaa !5
  br label %170

170:                                              ; preds = %167, %156
  %171 = phi ptr [ %169, %167 ], [ %157, %156 ]
  %172 = tail call ptr @Perl_hv_iternext_flags(ptr noundef nonnull %3, i32 noundef 0) #8
  %173 = icmp eq ptr %172, null
  br i1 %173, label %174, label %141, !llvm.loop !71

174:                                              ; preds = %170, %137, %31, %99
  %175 = phi ptr [ %1, %99 ], [ %2, %31 ], [ %138, %137 ], [ %171, %170 ]
  store ptr %175, ptr @PL_stack_sp, align 8, !tbaa !5
  %176 = load ptr, ptr @PL_op, align 8, !tbaa !5
  %177 = load ptr, ptr %176, align 8, !tbaa !72
  ret ptr %177
}

; Function Attrs: optsize
declare i32 @Perl_block_gimme() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_hv_iterinit(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @S_SvREFCNT_inc(ptr noundef returned %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !73
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 8, !tbaa !73
  br label %7

7:                                                ; preds = %1, %3
  ret ptr %0
}

; Function Attrs: optsize
declare ptr @Perl_mg_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_hv_placeholders_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_hv_iternext_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_setiv(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_stack_grow(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_hv_iterkeysv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_hv_iterval(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_hv_common(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_bytes_to_utf8(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @Perl_swash_fetch(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i1 @Perl_ckwarn(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_safesysmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_safesysrealloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !7, i64 35}
!10 = !{!"op", !6, i64 0, !6, i64 8, !6, i64 16, !11, i64 24, !12, i64 32, !12, i64 33, !12, i64 33, !12, i64 33, !12, i64 33, !12, i64 33, !12, i64 33, !12, i64 33, !7, i64 34, !7, i64 35}
!11 = !{!"long", !7, i64 0}
!12 = !{!"int", !7, i64 0}
!13 = !{!14, !12, i64 12}
!14 = !{!"sv", !6, i64 0, !12, i64 8, !12, i64 12, !7, i64 16}
!15 = !{!14, !6, i64 0}
!16 = !{!17, !11, i64 16}
!17 = !{!"xpv", !6, i64 0, !7, i64 8, !11, i64 16, !7, i64 24}
!18 = !{!11, !11, i64 0}
!19 = !{!20, !6, i64 40}
!20 = !{!"svop", !6, i64 0, !6, i64 8, !6, i64 16, !11, i64 24, !12, i64 32, !12, i64 33, !12, i64 33, !12, i64 33, !12, i64 33, !12, i64 33, !12, i64 33, !12, i64 33, !7, i64 34, !7, i64 35, !6, i64 40}
!21 = !{!7, !7, i64 0}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!25, !6, i64 40}
!25 = !{!"pvop", !6, i64 0, !6, i64 8, !6, i64 16, !11, i64 24, !12, i64 32, !12, i64 33, !12, i64 33, !12, i64 33, !12, i64 33, !12, i64 33, !12, i64 33, !12, i64 33, !7, i64 34, !7, i64 35, !6, i64 40}
!26 = !{!27, !27, i64 0}
!27 = !{!"short", !7, i64 0}
!28 = distinct !{!28, !23}
!29 = distinct !{!29, !23}
!30 = distinct !{!30, !23}
!31 = distinct !{!31, !23}
!32 = distinct !{!32, !23}
!33 = distinct !{!33, !23}
!34 = distinct !{!34, !23}
!35 = distinct !{!35, !23}
!36 = distinct !{!36, !23}
!37 = distinct !{!37, !23}
!38 = distinct !{!38, !23}
!39 = !{!40, !6, i64 0}
!40 = !{!"xpvmg", !6, i64 0, !7, i64 8, !11, i64 16, !7, i64 24, !7, i64 32, !7, i64 40}
!41 = !{!42, !12, i64 12}
!42 = !{!"hv", !6, i64 0, !12, i64 8, !12, i64 12, !7, i64 16}
!43 = distinct !{!43, !23}
!44 = !{!45, !45, i64 0}
!45 = !{!"_Bool", !7, i64 0}
!46 = !{i8 0, i8 2}
!47 = !{}
!48 = !{!49, !12, i64 56}
!49 = !{!"cop", !6, i64 0, !6, i64 8, !6, i64 16, !11, i64 24, !12, i64 32, !12, i64 33, !12, i64 33, !12, i64 33, !12, i64 33, !12, i64 33, !12, i64 33, !12, i64 33, !7, i64 34, !7, i64 35, !12, i64 36, !6, i64 40, !6, i64 48, !12, i64 56, !12, i64 60, !6, i64 64, !6, i64 72}
!50 = distinct !{!50, !23}
!51 = distinct !{!51, !23}
!52 = !{!10, !7, i64 34}
!53 = !{!54, !6, i64 64}
!54 = !{!"xpvlv", !6, i64 0, !7, i64 8, !11, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !11, i64 56, !6, i64 64, !7, i64 72, !7, i64 73}
!55 = !{!54, !11, i64 56}
!56 = distinct !{!56, !23}
!57 = distinct !{!57, !23}
!58 = distinct !{!58, !23}
!59 = distinct !{!59, !23}
!60 = distinct !{!60, !23}
!61 = distinct !{!61, !23}
!62 = distinct !{!62, !23}
!63 = distinct !{!63, !23}
!64 = distinct !{!64, !23}
!65 = !{!54, !7, i64 72}
!66 = !{!10, !11, i64 24}
!67 = !{!42, !6, i64 0}
!68 = !{!69, !11, i64 16}
!69 = !{!"xpvhv", !6, i64 0, !7, i64 8, !11, i64 16, !11, i64 24}
!70 = distinct !{!70, !23}
!71 = distinct !{!71, !23}
!72 = !{!10, !6, i64 0}
!73 = !{!14, !12, i64 8}
