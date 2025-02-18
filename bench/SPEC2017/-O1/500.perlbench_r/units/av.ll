; ModuleID = 'av.c'
source_filename = "av.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sv = type { ptr, i32, i32, %union.anon.0 }
%union.anon.0 = type { ptr }
%struct.mgvtbl = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.av = type { ptr, i32, i32, %union.anon }
%union.anon = type { ptr }
%struct.xpvav = type { ptr, %union._xmgu, i64, i64, ptr }
%union._xmgu = type { ptr }
%struct.xpvlv = type { ptr, %union._xmgu, i64, %union.anon.1, %union._xivu, %union._xnvu, %union.anon.2, i64, ptr, i8, i8 }
%union.anon.1 = type { i64 }
%union._xivu = type { i64 }
%union._xnvu = type { double }
%union.anon.2 = type { i64 }
%struct.magic = type { ptr, ptr, i16, i8, i8, i64, ptr, ptr }
%struct.xpv = type { ptr, %union._xmgu, i64, %union.anon.4 }
%union.anon.4 = type { i64 }
%struct.xpviv = type { ptr, %union._xmgu, i64, %union.anon.5, %union._xivu }
%union.anon.5 = type { i64 }
%struct.xpvnv = type { ptr, %union._xmgu, i64, %union.anon.6, %union._xivu, %union._xnvu }
%union.anon.6 = type { i64 }
%struct.xpvmg = type { ptr, %union._xmgu, i64, %union.anon.3, %union._xivu, %union._xnvu }
%union.anon.3 = type { i64 }

@PL_sv_undef = external global %struct.sv, align 8
@PL_sv_consts = external local_unnamed_addr global [35 x ptr], align 16
@.str = private unnamed_addr constant [7 x i8] c"EXTEND\00", align 1
@PL_curstack = external local_unnamed_addr global ptr, align 8
@PL_stack_sp = external local_unnamed_addr global ptr, align 8
@PL_stack_base = external local_unnamed_addr global ptr, align 8
@PL_stack_max = external local_unnamed_addr global ptr, align 8
@PL_charclass = external local_unnamed_addr constant [0 x i32], align 4
@PL_delaymagic = external local_unnamed_addr global i16, align 2
@.str.1 = private unnamed_addr constant [5 x i8] c"PUSH\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"POP\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"UNSHIFT\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"SHIFT\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"STORESIZE\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"NEGATIVE_INDICES\00", align 1
@PL_magic_vtables = external constant [31 x %struct.mgvtbl], align 16

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Perl_av_reify(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !69 {
  %2 = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !70
  %4 = and i32 %3, 1073741824
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %69, !prof !76

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8, !tbaa !77
  %8 = getelementptr inbounds %struct.xpvav, ptr %7, i64 0, i32 3
  %9 = load i64, ptr %8, align 8, !tbaa !78
  %10 = add nsw i64 %9, 1
  %11 = getelementptr inbounds %struct.xpvav, ptr %7, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !81
  %13 = icmp sgt i64 %9, %12
  br i1 %13, label %14, label %16, !prof !82

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 3
  br label %22

16:                                               ; preds = %22, %6
  %17 = phi i64 [ %10, %6 ], [ %25, %22 ]
  %18 = phi ptr [ %7, %6 ], [ %27, %22 ]
  %19 = icmp eq i64 %17, 0
  br i1 %19, label %47, label %20, !prof !83

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 3
  br label %32

22:                                               ; preds = %14, %22
  %23 = phi i64 [ %10, %14 ], [ %25, %22 ]
  %24 = load ptr, ptr %15, align 8, !tbaa !84
  %25 = add nsw i64 %23, -1
  %26 = getelementptr inbounds ptr, ptr %24, i64 %25
  store ptr null, ptr %26, align 8, !tbaa !85
  %27 = load ptr, ptr %0, align 8, !tbaa !77
  %28 = getelementptr inbounds %struct.xpvav, ptr %27, i64 0, i32 2
  %29 = load i64, ptr %28, align 8, !tbaa !81
  %30 = add nsw i64 %29, 1
  %31 = icmp sgt i64 %25, %30
  br i1 %31, label %22, label %16, !prof !86, !llvm.loop !87

32:                                               ; preds = %20, %45
  %33 = phi i64 [ %17, %20 ], [ %35, %45 ]
  %34 = load ptr, ptr %21, align 8, !tbaa !84
  %35 = add nsw i64 %33, -1
  %36 = getelementptr inbounds ptr, ptr %34, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !85
  %38 = icmp ne ptr %37, @PL_sv_undef
  %39 = icmp ne ptr %37, null
  %40 = and i1 %38, %39
  br i1 %40, label %41, label %45, !prof !90

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.sv, ptr %37, i64 0, i32 1
  %43 = load i32, ptr %42, align 8, !tbaa !91
  %44 = add i32 %43, 1
  store i32 %44, ptr %42, align 8, !tbaa !91
  br label %45

45:                                               ; preds = %41, %32
  %46 = icmp eq i64 %35, 0
  br i1 %46, label %47, label %32, !prof !93, !llvm.loop !94

47:                                               ; preds = %45, %16
  %48 = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !84
  %50 = getelementptr inbounds %struct.xpvav, ptr %18, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !95
  %52 = icmp eq ptr %49, %51
  br i1 %52, label %66, label %53, !prof !96

53:                                               ; preds = %47
  %54 = ptrtoint ptr %49 to i64
  %55 = ptrtoint ptr %51 to i64
  %56 = sub i64 %54, %55
  %57 = ashr exact i64 %56, 3
  br label %58

58:                                               ; preds = %53, %58
  %59 = phi i64 [ %63, %58 ], [ %57, %53 ]
  %60 = load ptr, ptr %0, align 8, !tbaa !77
  %61 = getelementptr inbounds %struct.xpvav, ptr %60, i64 0, i32 4
  %62 = load ptr, ptr %61, align 8, !tbaa !95
  %63 = add nsw i64 %59, -1
  %64 = getelementptr inbounds ptr, ptr %62, i64 %63
  store ptr null, ptr %64, align 8, !tbaa !85
  %65 = icmp eq i64 %63, 0
  br i1 %65, label %66, label %58, !prof !96, !llvm.loop !97

66:                                               ; preds = %58, %47
  %67 = and i32 %3, 1073741823
  %68 = or disjoint i32 %67, 1073741824
  store i32 %68, ptr %2, align 4, !tbaa !70
  br label %69

69:                                               ; preds = %1, %66
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_av_extend(ptr noundef %0, i64 noundef %1) local_unnamed_addr #1 !prof !98 {
  %3 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !99
  %5 = and i32 %4, 8388608
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7, !prof !100

7:                                                ; preds = %2
  %8 = tail call ptr @Perl_mg_find(ptr noundef %0, i32 noundef 80) #8
  br label %9

9:                                                ; preds = %2, %7
  %10 = phi ptr [ %8, %7 ], [ null, %2 ]
  %11 = icmp eq ptr %10, null
  br i1 %11, label %22, label %12, !prof !101

12:                                               ; preds = %9
  %13 = tail call ptr @Perl_sv_newmortal() #8
  %14 = add nsw i64 %1, 1
  tail call void @Perl_sv_setiv(ptr noundef %13, i64 noundef %14) #8
  %15 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 14), align 16, !tbaa !85
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str, i32 noundef 0) #8
  store ptr %18, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 14), align 16, !tbaa !85
  br label %19

19:                                               ; preds = %12, %17
  %20 = phi ptr [ %18, %17 ], [ %15, %12 ]
  %21 = tail call ptr (ptr, ptr, ptr, i32, i32, ...) @Perl_magic_methcall(ptr noundef %0, ptr noundef nonnull %10, ptr noundef %20, i32 noundef 4, i32 noundef 1, ptr noundef %13) #8
  br label %27

22:                                               ; preds = %9
  %23 = load ptr, ptr %0, align 8, !tbaa !77
  %24 = getelementptr inbounds %struct.xpvav, ptr %23, i64 0, i32 3
  %25 = getelementptr inbounds %struct.xpvav, ptr %23, i64 0, i32 4
  %26 = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 3
  tail call void @Perl_av_extend_guts(ptr noundef nonnull %0, i64 noundef %1, ptr noundef nonnull %24, ptr noundef nonnull %25, ptr noundef nonnull %26)
  br label %27

27:                                               ; preds = %22, %19
  ret void
}

declare ptr @Perl_mg_find(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_sv_newmortal() local_unnamed_addr #2

declare void @Perl_sv_setiv(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_magic_methcall(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

declare ptr @Perl_newSVpv_share(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @Perl_av_extend_guts(ptr noundef readonly %0, i64 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) local_unnamed_addr #1 !prof !102 {
  %6 = load i64, ptr %2, align 8, !tbaa !103
  %7 = icmp slt i64 %6, %1
  br i1 %7, label %8, label %90, !prof !104

8:                                                ; preds = %5
  %9 = icmp eq ptr %0, null
  br i1 %9, label %40, label %10, !prof !105

10:                                               ; preds = %8
  %11 = load ptr, ptr %3, align 8, !tbaa !85
  %12 = load ptr, ptr %4, align 8, !tbaa !85
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %40, label %14, !prof !106

14:                                               ; preds = %10
  %15 = load ptr, ptr %0, align 8, !tbaa !77
  %16 = getelementptr inbounds %struct.xpvav, ptr %15, i64 0, i32 2
  %17 = load i64, ptr %16, align 8, !tbaa !81
  %18 = ptrtoint ptr %12 to i64
  %19 = ptrtoint ptr %11 to i64
  %20 = sub i64 %18, %19
  %21 = ashr exact i64 %20, 3
  %22 = shl i64 %17, 3
  %23 = add i64 %22, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %11, ptr align 1 %12, i64 %23, i1 false), !prof !107
  %24 = load i64, ptr %2, align 8, !tbaa !103
  %25 = add nsw i64 %24, %21
  store i64 %25, ptr %2, align 8, !tbaa !103
  %26 = load ptr, ptr %3, align 8, !tbaa !85
  store ptr %26, ptr %4, align 8, !tbaa !85
  %27 = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !70
  %29 = and i32 %28, 1073741824
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31, !prof !108

31:                                               ; preds = %14
  %32 = shl i64 %17, 3
  %33 = getelementptr i8, ptr %11, i64 %32
  %34 = getelementptr i8, ptr %33, i64 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %34, i8 0, i64 %20, i1 false), !tbaa !85
  br label %35

35:                                               ; preds = %31, %14
  %36 = add nsw i64 %25, -10
  %37 = icmp slt i64 %36, %1
  br i1 %37, label %38, label %90, !prof !109

38:                                               ; preds = %35
  %39 = add nsw i64 %25, %1
  br label %49

40:                                               ; preds = %10, %8
  %41 = load ptr, ptr %3, align 8, !tbaa !85
  %42 = icmp eq ptr %41, null
  br i1 %42, label %69, label %43, !prof !110

43:                                               ; preds = %40
  %44 = sdiv i64 %6, 5
  %45 = sub nsw i64 9223372036854775807, %44
  %46 = icmp slt i64 %45, %1
  %47 = add nsw i64 %44, %1
  %48 = select i1 %46, i64 9223372036854775807, i64 %47, !prof !111
  br label %49

49:                                               ; preds = %43, %38
  %50 = phi i64 [ %39, %38 ], [ %48, %43 ]
  %51 = load ptr, ptr %3, align 8, !tbaa !85
  %52 = shl i64 %50, 3
  %53 = add i64 %52, 8
  %54 = tail call ptr @Perl_safesysrealloc(ptr noundef %51, i64 noundef %53) #8
  store ptr %54, ptr %3, align 8, !tbaa !85
  %55 = load i64, ptr %2, align 8, !tbaa !103
  %56 = getelementptr inbounds ptr, ptr %54, i64 %55
  %57 = sub nsw i64 %50, %55
  %58 = load ptr, ptr @PL_curstack, align 8, !tbaa !85
  %59 = icmp eq ptr %58, %0
  br i1 %59, label %60, label %74, !prof !112

60:                                               ; preds = %49
  %61 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !85
  %62 = load ptr, ptr @PL_stack_base, align 8, !tbaa !85
  %63 = ptrtoint ptr %61 to i64
  %64 = ptrtoint ptr %62 to i64
  %65 = sub i64 %63, %64
  %66 = getelementptr inbounds i8, ptr %54, i64 %65
  store ptr %66, ptr @PL_stack_sp, align 8, !tbaa !85
  %67 = load ptr, ptr %3, align 8, !tbaa !85
  store ptr %67, ptr @PL_stack_base, align 8, !tbaa !85
  %68 = getelementptr inbounds ptr, ptr %67, i64 %50
  store ptr %68, ptr @PL_stack_max, align 8, !tbaa !85
  br label %74

69:                                               ; preds = %40
  %70 = tail call i64 @llvm.smax.i64(i64 %1, i64 3)
  %71 = shl i64 %70, 3
  %72 = add i64 %71, 8
  %73 = tail call ptr @Perl_safesysmalloc(i64 noundef %72) #8
  store ptr %73, ptr %3, align 8, !tbaa !85
  store ptr null, ptr %73, align 8, !tbaa !85
  br label %74

74:                                               ; preds = %49, %60, %69
  %75 = phi ptr [ %56, %60 ], [ %56, %49 ], [ %73, %69 ]
  %76 = phi i64 [ %57, %60 ], [ %57, %49 ], [ %70, %69 ]
  %77 = phi i64 [ %50, %60 ], [ %50, %49 ], [ %70, %69 ]
  br i1 %9, label %88, label %78, !prof !105

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 2
  %80 = load i32, ptr %79, align 4, !tbaa !70
  %81 = and i32 %80, 1073741824
  %82 = icmp ne i32 %81, 0
  %83 = icmp ne i64 %76, 0
  %84 = select i1 %82, i1 %83, i1 false, !prof !113
  br i1 %84, label %85, label %88, !prof !114

85:                                               ; preds = %78
  %86 = getelementptr i8, ptr %75, i64 8
  %87 = shl nuw i64 %76, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %86, i8 0, i64 %87, i1 false), !tbaa !85
  br label %88

88:                                               ; preds = %85, %78, %74
  %89 = load ptr, ptr %3, align 8, !tbaa !85
  store ptr %89, ptr %4, align 8, !tbaa !85
  store i64 %77, ptr %2, align 8, !tbaa !103
  br label %90

90:                                               ; preds = %88, %35, %5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #3

declare ptr @Perl_safesysrealloc(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_safesysmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @Perl_av_fetch(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #4 !prof !115 {
  %4 = alloca i64, align 8
  store i64 %1, ptr %4, align 8, !tbaa !103
  %5 = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !70
  %7 = and i32 %6, 8388608
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %35, label %9, !prof !116

9:                                                ; preds = %3
  %10 = tail call ptr @Perl_mg_find(ptr noundef %0, i32 noundef 80) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = tail call ptr @Perl_mg_find(ptr noundef %0, i32 noundef 68) #8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %32, label %15

15:                                               ; preds = %12, %9
  %16 = icmp slt i64 %1, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %15
  %18 = call fastcc zeroext i1 @S_adjust_index(ptr noundef %0, ptr noundef %10, ptr noundef nonnull %4)
  br i1 %18, label %19, label %32

19:                                               ; preds = %17, %15
  %20 = tail call ptr @Perl_sv_newmortal() #8
  tail call void @Perl_sv_upgrade(ptr noundef %20, i32 noundef 10) #8
  %21 = load i64, ptr %4, align 8, !tbaa !103
  %22 = trunc i64 %21 to i32
  %23 = tail call i32 @Perl_mg_copy(ptr noundef %0, ptr noundef %20, ptr noundef null, i32 noundef %22) #8
  br i1 %11, label %24, label %28

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !99
  %27 = and i32 %26, -524289
  store i32 %27, ptr %25, align 4, !tbaa !99
  br label %28

28:                                               ; preds = %24, %19
  %29 = load ptr, ptr %20, align 8, !tbaa !117
  %30 = getelementptr inbounds %struct.xpvlv, ptr %29, i64 0, i32 9
  store i8 116, ptr %30, align 8, !tbaa !118
  %31 = getelementptr inbounds %struct.xpvlv, ptr %29, i64 0, i32 8
  store ptr %20, ptr %31, align 8, !tbaa !120
  br label %32

32:                                               ; preds = %12, %28, %17
  %33 = phi ptr [ %31, %28 ], [ null, %17 ], [ undef, %12 ]
  %34 = phi i1 [ false, %28 ], [ false, %17 ], [ true, %12 ]
  br i1 %34, label %35, label %79

35:                                               ; preds = %32, %3
  %36 = load i64, ptr %4, align 8, !tbaa !103
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %54, !prof !121

38:                                               ; preds = %35
  %39 = load i32, ptr %5, align 4, !tbaa !99
  %40 = and i32 %39, 8388608
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = tail call i32 @Perl_mg_size(ptr noundef %0) #8
  %44 = sext i32 %43 to i64
  br label %49

45:                                               ; preds = %38
  %46 = load ptr, ptr %0, align 8, !tbaa !77
  %47 = getelementptr inbounds %struct.xpvav, ptr %46, i64 0, i32 2
  %48 = load i64, ptr %47, align 8, !tbaa !81
  br label %49

49:                                               ; preds = %45, %42
  %50 = phi i64 [ %44, %42 ], [ %48, %45 ]
  %51 = add nsw i64 %36, 1
  %52 = add i64 %51, %50
  store i64 %52, ptr %4, align 8, !tbaa !103
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %79, label %54

54:                                               ; preds = %49, %35
  %55 = load i64, ptr %4, align 8, !tbaa !103
  %56 = load ptr, ptr %0, align 8, !tbaa !77
  %57 = getelementptr inbounds %struct.xpvav, ptr %56, i64 0, i32 2
  %58 = load i64, ptr %57, align 8, !tbaa !81
  %59 = icmp sgt i64 %55, %58
  br i1 %59, label %66, label %60, !prof !122

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !84
  %63 = getelementptr inbounds ptr, ptr %62, i64 %55
  %64 = load ptr, ptr %63, align 8, !tbaa !85
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %71, !prof !123

66:                                               ; preds = %54, %60, %78
  %67 = icmp eq i32 %2, 0
  br i1 %67, label %79, label %68, !prof !124

68:                                               ; preds = %66
  %69 = tail call ptr @Perl_newSV(i64 noundef 0) #8
  %70 = tail call ptr @Perl_av_store(ptr noundef nonnull %0, i64 noundef %55, ptr noundef %69)
  br label %79

71:                                               ; preds = %60
  %72 = load i32, ptr %5, align 4, !tbaa !70
  %73 = icmp sgt i32 %72, -1
  br i1 %73, label %79, label %74, !prof !125

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.sv, ptr %64, i64 0, i32 2
  %76 = load i32, ptr %75, align 4, !tbaa !99
  %77 = icmp eq i32 %76, 255
  br i1 %77, label %78, label %79, !prof !126

78:                                               ; preds = %74
  store ptr null, ptr %63, align 8, !tbaa !85
  br label %66

79:                                               ; preds = %71, %74, %66, %49, %68, %32
  %80 = phi ptr [ %33, %32 ], [ %70, %68 ], [ null, %49 ], [ null, %66 ], [ %63, %74 ], [ %63, %71 ]
  ret ptr %80
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i1 @S_adjust_index(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #5 !prof !127 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %101, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !128
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = tail call ptr @Perl_newRV(ptr noundef %0) #8
  %11 = tail call ptr @Perl_sv_2mortal(ptr noundef %10) #8
  br label %12

12:                                               ; preds = %5, %9
  %13 = phi ptr [ %11, %9 ], [ %7, %5 ]
  %14 = getelementptr inbounds %struct.sv, ptr %13, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !99
  %16 = and i32 %15, 2097152
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %12
  %19 = tail call i32 @Perl_mg_get(ptr noundef %13) #8
  br label %20

20:                                               ; preds = %12, %18
  %21 = load i32, ptr %14, align 4, !tbaa !99
  %22 = and i32 %21, 2048
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %101, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.sv, ptr %13, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !84
  %27 = getelementptr inbounds %struct.sv, ptr %26, i64 0, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !99
  %29 = and i32 %28, 1048576
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %101, label %31

31:                                               ; preds = %24
  %32 = load ptr, ptr %26, align 8, !tbaa !117
  %33 = load ptr, ptr %32, align 8, !tbaa !131
  %34 = tail call ptr @Perl_hv_common(ptr noundef %33, ptr noundef null, ptr noundef nonnull @.str.6, i64 noundef 16, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %101, label %36

36:                                               ; preds = %31
  %37 = load ptr, ptr %34, align 8, !tbaa !85
  %38 = getelementptr inbounds %struct.sv, ptr %37, i64 0, i32 2
  %39 = load i32, ptr %38, align 4, !tbaa !99
  %40 = and i32 %39, 255
  %41 = icmp eq i32 %40, 9
  br i1 %41, label %42, label %101

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.sv, ptr %37, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !84
  %45 = load ptr, ptr %44, align 8, !tbaa !133
  %46 = icmp eq ptr %45, null
  br i1 %46, label %101, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.sv, ptr %45, i64 0, i32 2
  %49 = load i32, ptr %48, align 4, !tbaa !99
  %50 = and i32 %49, 2097152
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %47
  %53 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %45, i32 noundef 2) #8
  br i1 %53, label %119, label %101

54:                                               ; preds = %47
  %55 = and i32 %49, 65280
  %56 = icmp ne i32 %55, 0
  %57 = and i32 %49, 255
  %58 = icmp eq i32 %57, 8
  %59 = or i1 %56, %58
  %60 = and i32 %49, 16777471
  %61 = icmp eq i32 %60, 16777226
  %62 = or i1 %61, %59
  br i1 %62, label %63, label %101

63:                                               ; preds = %54
  %64 = and i32 %49, 1024
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %80, label %66

66:                                               ; preds = %63
  %67 = load ptr, ptr %45, align 8, !tbaa !117
  %68 = icmp eq ptr %67, null
  br i1 %68, label %101, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.xpv, ptr %67, i64 0, i32 2
  %71 = load i64, ptr %70, align 8, !tbaa !135
  %72 = icmp ugt i64 %71, 1
  br i1 %72, label %119, label %73

73:                                               ; preds = %69
  %74 = icmp eq i64 %71, 0
  br i1 %74, label %101, label %75

75:                                               ; preds = %73
  %76 = getelementptr inbounds %struct.sv, ptr %45, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !84
  %78 = load i8, ptr %77, align 1, !tbaa !84
  %79 = icmp eq i8 %78, 48
  br i1 %79, label %101, label %119

80:                                               ; preds = %63
  %81 = and i32 %49, 768
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %99, label %83

83:                                               ; preds = %80
  %84 = and i32 %49, 256
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %83
  %87 = load ptr, ptr %45, align 8, !tbaa !117
  %88 = getelementptr inbounds %struct.xpviv, ptr %87, i64 0, i32 4
  %89 = load i64, ptr %88, align 8, !tbaa !84
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %119

91:                                               ; preds = %86, %83
  %92 = and i32 %49, 512
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %101, label %94

94:                                               ; preds = %91
  %95 = load ptr, ptr %45, align 8, !tbaa !117
  %96 = getelementptr inbounds %struct.xpvnv, ptr %95, i64 0, i32 5
  %97 = load double, ptr %96, align 8, !tbaa !84
  %98 = fcmp une double %97, 0.000000e+00
  br i1 %98, label %119, label %101

99:                                               ; preds = %80
  %100 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %45, i32 noundef 0) #8
  br i1 %100, label %119, label %101

101:                                              ; preds = %99, %94, %54, %31, %36, %42, %91, %66, %73, %75, %52, %20, %24, %3
  %102 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %103 = load i32, ptr %102, align 4, !tbaa !99
  %104 = and i32 %103, 8388608
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %101
  %107 = tail call i32 @Perl_mg_size(ptr noundef %0) #8
  %108 = sext i32 %107 to i64
  br label %113

109:                                              ; preds = %101
  %110 = load ptr, ptr %0, align 8, !tbaa !77
  %111 = getelementptr inbounds %struct.xpvav, ptr %110, i64 0, i32 2
  %112 = load i64, ptr %111, align 8, !tbaa !81
  br label %113

113:                                              ; preds = %109, %106
  %114 = phi i64 [ %108, %106 ], [ %112, %109 ]
  %115 = add nsw i64 %114, 1
  %116 = load i64, ptr %2, align 8, !tbaa !103
  %117 = add nsw i64 %115, %116
  store i64 %117, ptr %2, align 8, !tbaa !103
  %118 = icmp slt i64 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %75, %52, %69, %86, %94, %99, %113
  br label %120

120:                                              ; preds = %113, %119
  %121 = phi i1 [ true, %119 ], [ false, %113 ]
  ret i1 %121
}

declare void @Perl_sv_upgrade(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Perl_mg_copy(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Perl_mg_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef ptr @Perl_av_store(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #4 !prof !137 {
  %4 = alloca i64, align 8
  store i64 %1, ptr %4, align 8, !tbaa !103
  %5 = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !70
  %7 = and i32 %6, 8388608
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %24, label %9, !prof !138

9:                                                ; preds = %3
  %10 = tail call ptr @Perl_mg_find(ptr noundef %0, i32 noundef 80) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %24, label %12, !prof !139

12:                                               ; preds = %9
  %13 = icmp slt i64 %1, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %12
  %15 = call fastcc zeroext i1 @S_adjust_index(ptr noundef %0, ptr noundef nonnull %10, ptr noundef nonnull %4)
  %16 = icmp ne ptr %2, null
  %17 = and i1 %16, %15
  br i1 %17, label %20, label %167

18:                                               ; preds = %12
  %19 = icmp eq ptr %2, null
  br i1 %19, label %167, label %20

20:                                               ; preds = %14, %18
  %21 = load i64, ptr %4, align 8, !tbaa !103
  %22 = trunc i64 %21 to i32
  %23 = tail call i32 @Perl_mg_copy(ptr noundef %0, ptr noundef nonnull %2, ptr noundef null, i32 noundef %22) #8
  br label %167

24:                                               ; preds = %9, %3
  %25 = icmp slt i64 %1, 0
  br i1 %25, label %26, label %42, !prof !140

26:                                               ; preds = %24
  %27 = load i32, ptr %5, align 4, !tbaa !99
  %28 = and i32 %27, 8388608
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = tail call i32 @Perl_mg_size(ptr noundef %0) #8
  %32 = sext i32 %31 to i64
  br label %37

33:                                               ; preds = %26
  %34 = load ptr, ptr %0, align 8, !tbaa !77
  %35 = getelementptr inbounds %struct.xpvav, ptr %34, i64 0, i32 2
  %36 = load i64, ptr %35, align 8, !tbaa !81
  br label %37

37:                                               ; preds = %33, %30
  %38 = phi i64 [ %32, %30 ], [ %36, %33 ]
  %39 = add nsw i64 %1, 1
  %40 = add i64 %39, %38
  store i64 %40, ptr %4, align 8, !tbaa !103
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %167, label %42

42:                                               ; preds = %37, %24
  %43 = load i32, ptr %5, align 4, !tbaa !141
  %44 = and i32 %43, 134283264
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %61, label %46, !prof !142

46:                                               ; preds = %42
  %47 = load i64, ptr %4, align 8, !tbaa !103
  %48 = and i32 %43, 8388608
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = tail call i32 @Perl_mg_size(ptr noundef %0) #8
  %52 = sext i32 %51 to i64
  br label %57

53:                                               ; preds = %46
  %54 = load ptr, ptr %0, align 8, !tbaa !77
  %55 = getelementptr inbounds %struct.xpvav, ptr %54, i64 0, i32 2
  %56 = load i64, ptr %55, align 8, !tbaa !81
  br label %57

57:                                               ; preds = %53, %50
  %58 = phi i64 [ %52, %50 ], [ %56, %53 ]
  %59 = icmp slt i64 %47, %58
  br i1 %59, label %61, label %60

60:                                               ; preds = %57
  tail call void @Perl_croak_no_modify() #8
  br label %61

61:                                               ; preds = %60, %57, %42
  %62 = load i32, ptr %5, align 4, !tbaa !70
  %63 = and i32 %62, -1073741824
  %64 = icmp eq i32 %63, -2147483648
  br i1 %64, label %65, label %66, !prof !143

65:                                               ; preds = %61
  tail call void @Perl_av_reify(ptr noundef %0)
  br label %66

66:                                               ; preds = %65, %61
  %67 = load i64, ptr %4, align 8, !tbaa !103
  %68 = load ptr, ptr %0, align 8, !tbaa !77
  %69 = getelementptr inbounds %struct.xpvav, ptr %68, i64 0, i32 3
  %70 = load i64, ptr %69, align 8, !tbaa !78
  %71 = icmp sgt i64 %67, %70
  br i1 %71, label %72, label %73, !prof !144

72:                                               ; preds = %66
  tail call void @Perl_av_extend(ptr noundef nonnull %0, i64 noundef %67)
  br label %73

73:                                               ; preds = %72, %66
  %74 = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !84
  %76 = load ptr, ptr %0, align 8, !tbaa !77
  %77 = getelementptr inbounds %struct.xpvav, ptr %76, i64 0, i32 2
  %78 = load i64, ptr %77, align 8, !tbaa !81
  %79 = icmp slt i64 %78, %67
  %80 = load i32, ptr %5, align 4, !tbaa !70
  %81 = and i32 %80, 1073741824
  %82 = icmp eq i32 %81, 0
  br i1 %79, label %83, label %111, !prof !145

83:                                               ; preds = %73
  br i1 %82, label %84, label %108, !prof !146

84:                                               ; preds = %83
  %85 = load ptr, ptr @PL_curstack, align 8, !tbaa !85
  %86 = icmp eq ptr %85, %0
  br i1 %86, label %87, label %97

87:                                               ; preds = %84
  %88 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !85
  %89 = load ptr, ptr @PL_stack_base, align 8, !tbaa !85
  %90 = ptrtoint ptr %88 to i64
  %91 = ptrtoint ptr %89 to i64
  %92 = sub i64 %90, %91
  %93 = ashr exact i64 %92, 3
  %94 = icmp sgt i64 %67, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %87
  %96 = getelementptr inbounds ptr, ptr %89, i64 %67
  store ptr %96, ptr @PL_stack_sp, align 8, !tbaa !85
  br label %97

97:                                               ; preds = %95, %87, %84
  br label %98

98:                                               ; preds = %97, %98
  %99 = load ptr, ptr %0, align 8, !tbaa !77
  %100 = getelementptr inbounds %struct.xpvav, ptr %99, i64 0, i32 2
  %101 = load i64, ptr %100, align 8, !tbaa !81
  %102 = add nsw i64 %101, 1
  store i64 %102, ptr %100, align 8, !tbaa !81
  %103 = getelementptr inbounds ptr, ptr %75, i64 %102
  store ptr null, ptr %103, align 8, !tbaa !85
  %104 = load ptr, ptr %0, align 8, !tbaa !77
  %105 = getelementptr inbounds %struct.xpvav, ptr %104, i64 0, i32 2
  %106 = load i64, ptr %105, align 8, !tbaa !81
  %107 = icmp slt i64 %106, %67
  br i1 %107, label %98, label %108, !llvm.loop !147

108:                                              ; preds = %98, %83
  %109 = load ptr, ptr %0, align 8, !tbaa !77
  %110 = getelementptr inbounds %struct.xpvav, ptr %109, i64 0, i32 2
  store i64 %67, ptr %110, align 8, !tbaa !81
  br label %123

111:                                              ; preds = %73
  br i1 %82, label %123, label %112, !prof !148

112:                                              ; preds = %111
  %113 = getelementptr inbounds ptr, ptr %75, i64 %67
  %114 = load ptr, ptr %113, align 8, !tbaa !85
  %115 = icmp eq ptr %114, null
  br i1 %115, label %123, label %116, !prof !149

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.sv, ptr %114, i64 0, i32 1
  %118 = load i32, ptr %117, align 8, !tbaa !91
  %119 = icmp ugt i32 %118, 1
  br i1 %119, label %120, label %122, !prof !150

120:                                              ; preds = %116
  %121 = add i32 %118, -1
  store i32 %121, ptr %117, align 8, !tbaa !91
  br label %123

122:                                              ; preds = %116
  tail call void @Perl_sv_free2(ptr noundef nonnull %114, i32 noundef %118) #8
  br label %123

123:                                              ; preds = %122, %120, %112, %111, %108
  %124 = getelementptr inbounds ptr, ptr %75, i64 %67
  store ptr %2, ptr %124, align 8, !tbaa !85
  %125 = load i32, ptr %5, align 4, !tbaa !70
  %126 = and i32 %125, 4194304
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %167, label %128, !prof !138

128:                                              ; preds = %123
  %129 = load ptr, ptr %0, align 8, !tbaa !77
  %130 = getelementptr inbounds %struct.xpvmg, ptr %129, i64 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !84
  %132 = icmp eq ptr %131, null
  br i1 %132, label %165, label %133, !prof !151

133:                                              ; preds = %128
  %134 = icmp eq ptr %2, null
  %135 = trunc i64 %67 to i32
  br label %136

136:                                              ; preds = %133, %158
  %137 = phi ptr [ %131, %133 ], [ %160, %158 ]
  %138 = phi i8 [ 1, %133 ], [ %159, %158 ]
  %139 = getelementptr inbounds %struct.magic, ptr %137, i64 0, i32 3
  %140 = load i8, ptr %139, align 2, !tbaa !152
  %141 = zext i8 %140 to i64
  %142 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %141
  %143 = load i32, ptr %142, align 4, !tbaa !141
  %144 = and i32 %143, 16400
  %145 = icmp eq i32 %144, 16400
  br i1 %145, label %146, label %158, !prof !139

146:                                              ; preds = %136
  br i1 %134, label %150, label %147, !prof !153

147:                                              ; preds = %146
  %148 = add i8 %140, 32
  %149 = zext i8 %148 to i32
  tail call void @Perl_sv_magic(ptr noundef nonnull %2, ptr noundef nonnull %0, i32 noundef %149, ptr noundef null, i32 noundef %135) #8
  br label %150

150:                                              ; preds = %147, %146
  %151 = load i16, ptr @PL_delaymagic, align 2, !tbaa !154
  %152 = icmp eq i16 %151, 0
  br i1 %152, label %158, label %153, !prof !155

153:                                              ; preds = %150
  %154 = load i8, ptr %139, align 2, !tbaa !152
  %155 = icmp eq i8 %154, 73
  br i1 %155, label %156, label %158, !prof !156

156:                                              ; preds = %153
  %157 = or i16 %151, 4
  store i16 %157, ptr @PL_delaymagic, align 2, !tbaa !154
  br label %158

158:                                              ; preds = %150, %153, %156, %136
  %159 = phi i8 [ 0, %156 ], [ %138, %153 ], [ %138, %150 ], [ %138, %136 ]
  %160 = load ptr, ptr %137, align 8, !tbaa !84
  %161 = icmp eq ptr %160, null
  br i1 %161, label %162, label %136, !prof !157, !llvm.loop !158

162:                                              ; preds = %158
  %163 = and i8 %159, 1
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %167, label %165, !prof !159

165:                                              ; preds = %128, %162
  %166 = tail call i32 @Perl_mg_set(ptr noundef nonnull %0) #8
  br label %167

167:                                              ; preds = %123, %165, %162, %14, %20, %18, %37
  %168 = phi ptr [ null, %37 ], [ null, %18 ], [ null, %20 ], [ null, %14 ], [ %124, %162 ], [ %124, %165 ], [ %124, %123 ]
  ret ptr %168
}

declare ptr @Perl_newSV(i64 noundef) local_unnamed_addr #2

declare void @Perl_croak_no_modify() local_unnamed_addr #2

declare void @Perl_sv_magic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Perl_mg_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_av_make(i64 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 !prof !160 {
  %3 = tail call ptr @Perl_newSV_type(i32 noundef 11) #8
  %4 = icmp eq i64 %0, 0
  br i1 %4, label %40, label %5, !prof !161

5:                                                ; preds = %2
  %6 = shl i64 %0, 3
  %7 = tail call ptr @Perl_safesysmalloc(i64 noundef %6) #8
  %8 = load ptr, ptr %3, align 8, !tbaa !77
  %9 = getelementptr inbounds %struct.xpvav, ptr %8, i64 0, i32 4
  store ptr %7, ptr %9, align 8, !tbaa !95
  %10 = getelementptr inbounds %struct.av, ptr %3, i64 0, i32 3
  store ptr %7, ptr %10, align 8, !tbaa !84
  %11 = add nsw i64 %0, -1
  %12 = getelementptr inbounds %struct.xpvav, ptr %8, i64 0, i32 3
  store i64 %11, ptr %12, align 8, !tbaa !78
  %13 = getelementptr inbounds %struct.xpvav, ptr %8, i64 0, i32 2
  store i64 -1, ptr %13, align 8, !tbaa !81
  tail call void @Perl_push_scope() #8
  tail call void @Perl_save_pushptr(ptr noundef nonnull %3, i32 noundef 11) #8
  %14 = icmp sgt i64 %0, 0
  br i1 %14, label %15, label %36, !prof !162

15:                                               ; preds = %5, %25
  %16 = phi i64 [ %34, %25 ], [ 0, %5 ]
  %17 = phi ptr [ %33, %25 ], [ %1, %5 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !85
  %19 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !99
  %21 = and i32 %20, 2097152
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23, !prof !163

23:                                               ; preds = %15
  %24 = tail call i32 @Perl_mg_get(ptr noundef %18) #8
  br label %25

25:                                               ; preds = %15, %23
  %26 = load ptr, ptr %3, align 8, !tbaa !77
  %27 = getelementptr inbounds %struct.xpvav, ptr %26, i64 0, i32 2
  %28 = load i64, ptr %27, align 8, !tbaa !81
  %29 = add nsw i64 %28, 1
  store i64 %29, ptr %27, align 8, !tbaa !81
  %30 = tail call ptr @Perl_newSV(i64 noundef 0) #8
  %31 = getelementptr inbounds ptr, ptr %7, i64 %16
  store ptr %30, ptr %31, align 8, !tbaa !85
  %32 = load ptr, ptr %17, align 8, !tbaa !85
  tail call void @Perl_sv_setsv_flags(ptr noundef %30, ptr noundef %32, i32 noundef 1552) #8
  %33 = getelementptr inbounds ptr, ptr %17, i64 1
  %34 = add nuw nsw i64 %16, 1
  %35 = icmp eq i64 %34, %0
  br i1 %35, label %36, label %15, !prof !164, !llvm.loop !165

36:                                               ; preds = %25, %5
  %37 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !91
  %39 = add i32 %38, 1
  store i32 %39, ptr %37, align 8, !tbaa !91
  tail call void @Perl_pop_scope() #8
  br label %40

40:                                               ; preds = %36, %2
  ret ptr %3
}

declare ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #2

declare void @Perl_push_scope() local_unnamed_addr #2

declare void @Perl_save_pushptr(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Perl_mg_get(ptr noundef) local_unnamed_addr #2

declare void @Perl_sv_setsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_pop_scope() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @Perl_av_clear(ptr noundef %0) local_unnamed_addr #1 !prof !166 {
  %2 = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !70
  %4 = and i32 %3, 134283264
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6, !prof !167

6:                                                ; preds = %1
  tail call void @Perl_croak_no_modify() #8
  br label %7

7:                                                ; preds = %6, %1
  %8 = load i32, ptr %2, align 4, !tbaa !70
  %9 = and i32 %8, 8388608
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %27, label %11, !prof !168

11:                                               ; preds = %7
  %12 = load ptr, ptr %0, align 8, !tbaa !77
  %13 = getelementptr inbounds %struct.xpvmg, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !84
  %15 = load i16, ptr @PL_delaymagic, align 2, !tbaa !154
  %16 = icmp ne i16 %15, 0
  %17 = icmp ne ptr %14, null
  %18 = select i1 %16, i1 %17, i1 false, !prof !169
  br i1 %18, label %19, label %25, !prof !169

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.magic, ptr %14, i64 0, i32 3
  %21 = load i8, ptr %20, align 2, !tbaa !152
  %22 = icmp eq i8 %21, 73
  br i1 %22, label %23, label %25, !prof !169

23:                                               ; preds = %19
  %24 = or i16 %15, 4
  store i16 %24, ptr @PL_delaymagic, align 2, !tbaa !154
  br label %27

25:                                               ; preds = %19, %11
  %26 = tail call i32 @Perl_mg_clear(ptr noundef nonnull %0) #8
  br label %27

27:                                               ; preds = %23, %25, %7
  %28 = load ptr, ptr %0, align 8, !tbaa !77
  %29 = getelementptr inbounds %struct.xpvav, ptr %28, i64 0, i32 3
  %30 = load i64, ptr %29, align 8, !tbaa !78
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %79, label %32, !prof !170

32:                                               ; preds = %27
  %33 = load i32, ptr %2, align 4, !tbaa !70
  %34 = and i32 %33, 1073741824
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %61, label %36, !prof !171

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !84
  %39 = getelementptr inbounds %struct.xpvav, ptr %28, i64 0, i32 2
  %40 = load i64, ptr %39, align 8, !tbaa !81
  %41 = add nsw i64 %40, 1
  tail call void @Perl_push_scope() #8
  %42 = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 1
  %43 = load i32, ptr %42, align 8, !tbaa !172
  %44 = add i32 %43, 1
  store i32 %44, ptr %42, align 8, !tbaa !172
  tail call void @Perl_save_pushptr(ptr noundef nonnull %0, i32 noundef 11) #8
  %45 = icmp eq i64 %41, 0
  br i1 %45, label %61, label %46, !prof !173

46:                                               ; preds = %36, %59
  %47 = phi i64 [ %48, %59 ], [ %41, %36 ]
  %48 = add nsw i64 %47, -1
  %49 = getelementptr inbounds ptr, ptr %38, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !85
  store ptr null, ptr %49, align 8, !tbaa !85
  %51 = icmp eq ptr %50, null
  br i1 %51, label %59, label %52, !prof !174

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.sv, ptr %50, i64 0, i32 1
  %54 = load i32, ptr %53, align 8, !tbaa !91
  %55 = icmp ugt i32 %54, 1
  br i1 %55, label %56, label %58, !prof !175

56:                                               ; preds = %52
  %57 = add i32 %54, -1
  store i32 %57, ptr %53, align 8, !tbaa !91
  br label %59

58:                                               ; preds = %52
  tail call void @Perl_sv_free2(ptr noundef nonnull %50, i32 noundef %54) #8
  br label %59

59:                                               ; preds = %46, %56, %58
  %60 = icmp eq i64 %48, 0
  br i1 %60, label %61, label %46, !prof !176, !llvm.loop !177

61:                                               ; preds = %59, %36, %32
  %62 = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !84
  %64 = load ptr, ptr %0, align 8, !tbaa !77
  %65 = getelementptr inbounds %struct.xpvav, ptr %64, i64 0, i32 4
  %66 = load ptr, ptr %65, align 8, !tbaa !95
  %67 = icmp eq ptr %63, %66
  br i1 %67, label %76, label %68, !prof !178

68:                                               ; preds = %61
  %69 = ptrtoint ptr %66 to i64
  %70 = ptrtoint ptr %63 to i64
  %71 = sub i64 %70, %69
  %72 = ashr exact i64 %71, 3
  %73 = getelementptr inbounds %struct.xpvav, ptr %64, i64 0, i32 3
  %74 = load i64, ptr %73, align 8, !tbaa !78
  %75 = add nsw i64 %74, %72
  store i64 %75, ptr %73, align 8, !tbaa !78
  store ptr %66, ptr %62, align 8, !tbaa !84
  br label %76

76:                                               ; preds = %68, %61
  %77 = getelementptr inbounds %struct.xpvav, ptr %64, i64 0, i32 2
  store i64 -1, ptr %77, align 8, !tbaa !81
  br i1 %35, label %79, label %78, !prof !171

78:                                               ; preds = %76
  tail call void @Perl_pop_scope() #8
  br label %79

79:                                               ; preds = %76, %78, %27
  ret void
}

declare i32 @Perl_mg_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_av_undef(ptr noundef %0) local_unnamed_addr #5 !prof !127 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !99
  %4 = and i32 %3, 8388608
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @Perl_mg_find(ptr noundef %0, i32 noundef 80) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @Perl_av_fill(ptr noundef %0, i64 noundef -1)
  br label %10

10:                                               ; preds = %1, %9, %6
  %11 = load i32, ptr %2, align 4, !tbaa !70
  %12 = and i32 %11, 1073741824
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %41, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %0, align 8, !tbaa !77
  %16 = getelementptr inbounds %struct.xpvav, ptr %15, i64 0, i32 2
  %17 = load i64, ptr %16, align 8, !tbaa !81
  %18 = add nsw i64 %17, 1
  tail call void @Perl_push_scope() #8
  %19 = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !172
  %21 = add i32 %20, 1
  store i32 %21, ptr %19, align 8, !tbaa !172
  tail call void @Perl_save_pushptr(ptr noundef nonnull %0, i32 noundef 11) #8
  %22 = icmp eq i64 %18, 0
  br i1 %22, label %41, label %23

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 3
  br label %25

25:                                               ; preds = %23, %39
  %26 = phi i64 [ %18, %23 ], [ %28, %39 ]
  %27 = load ptr, ptr %24, align 8, !tbaa !84
  %28 = add nsw i64 %26, -1
  %29 = getelementptr inbounds ptr, ptr %27, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !85
  %31 = icmp eq ptr %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.sv, ptr %30, i64 0, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !91
  %35 = icmp ugt i32 %34, 1
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = add i32 %34, -1
  store i32 %37, ptr %33, align 8, !tbaa !91
  br label %39

38:                                               ; preds = %32
  tail call void @Perl_sv_free2(ptr noundef nonnull %30, i32 noundef %34) #8
  br label %39

39:                                               ; preds = %25, %36, %38
  %40 = icmp eq i64 %28, 0
  br i1 %40, label %41, label %25, !llvm.loop !179

41:                                               ; preds = %39, %14, %10
  %42 = load ptr, ptr %0, align 8, !tbaa !77
  %43 = getelementptr inbounds %struct.xpvav, ptr %42, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !95
  tail call void @Perl_safesysfree(ptr noundef %44) #8
  %45 = load ptr, ptr %0, align 8, !tbaa !77
  %46 = getelementptr inbounds %struct.xpvav, ptr %45, i64 0, i32 4
  store ptr null, ptr %46, align 8, !tbaa !95
  %47 = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 3
  store ptr null, ptr %47, align 8, !tbaa !84
  %48 = getelementptr inbounds %struct.xpvav, ptr %45, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %48, i8 -1, i64 16, i1 false)
  %49 = load i32, ptr %2, align 4, !tbaa !70
  %50 = and i32 %49, 8388608
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %41
  %53 = tail call i32 @Perl_mg_clear(ptr noundef nonnull %0) #8
  br label %54

54:                                               ; preds = %52, %41
  br i1 %13, label %56, label %55

55:                                               ; preds = %54
  tail call void @Perl_pop_scope() #8
  br label %56

56:                                               ; preds = %55, %54
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_av_fill(ptr noundef %0, i64 noundef %1) local_unnamed_addr #5 !prof !180 {
  %3 = tail call i64 @llvm.smax.i64(i64 %1, i64 -1)
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !99
  %6 = and i32 %5, 8388608
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8, !prof !181

8:                                                ; preds = %2
  %9 = tail call ptr @Perl_mg_find(ptr noundef %0, i32 noundef 80) #8
  br label %10

10:                                               ; preds = %2, %8
  %11 = phi ptr [ %9, %8 ], [ null, %2 ]
  %12 = icmp eq ptr %11, null
  br i1 %12, label %23, label %13, !prof !181

13:                                               ; preds = %10
  %14 = tail call ptr @Perl_sv_newmortal() #8
  %15 = add nsw i64 %3, 1
  tail call void @Perl_sv_setiv(ptr noundef %14, i64 noundef %15) #8
  %16 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 7), align 8, !tbaa !85
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str.5, i32 noundef 0) #8
  store ptr %19, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 7), align 8, !tbaa !85
  br label %20

20:                                               ; preds = %13, %18
  %21 = phi ptr [ %19, %18 ], [ %16, %13 ]
  %22 = tail call ptr (ptr, ptr, ptr, i32, i32, ...) @Perl_magic_methcall(ptr noundef %0, ptr noundef nonnull %11, ptr noundef %21, i32 noundef 4, i32 noundef 1, ptr noundef %14) #8
  br label %71

23:                                               ; preds = %10
  %24 = load ptr, ptr %0, align 8, !tbaa !77
  %25 = getelementptr inbounds %struct.xpvav, ptr %24, i64 0, i32 3
  %26 = load i64, ptr %25, align 8, !tbaa !78
  %27 = icmp sgt i64 %3, %26
  br i1 %27, label %69, label %28, !prof !182

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.xpvav, ptr %24, i64 0, i32 2
  %30 = load i64, ptr %29, align 8, !tbaa !81
  %31 = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !84
  %33 = load i32, ptr %4, align 4, !tbaa !70
  %34 = and i32 %33, 1073741824
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36, !prof !183

36:                                               ; preds = %28
  %37 = icmp sgt i64 %30, %3
  br i1 %37, label %46, label %61, !prof !184

38:                                               ; preds = %28
  %39 = icmp slt i64 %30, %3
  br i1 %39, label %40, label %61

40:                                               ; preds = %38
  %41 = shl i64 %30, 3
  %42 = getelementptr i8, ptr %32, i64 %41
  %43 = getelementptr i8, ptr %42, i64 8
  %44 = sub i64 %3, %30
  %45 = shl i64 %44, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %43, i8 0, i64 %45, i1 false), !tbaa !85
  br label %61

46:                                               ; preds = %36, %58
  %47 = phi i64 [ %59, %58 ], [ %30, %36 ]
  %48 = getelementptr inbounds ptr, ptr %32, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !85
  %50 = icmp eq ptr %49, null
  br i1 %50, label %58, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.sv, ptr %49, i64 0, i32 1
  %53 = load i32, ptr %52, align 8, !tbaa !91
  %54 = icmp ugt i32 %53, 1
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = add i32 %53, -1
  store i32 %56, ptr %52, align 8, !tbaa !91
  br label %58

57:                                               ; preds = %51
  tail call void @Perl_sv_free2(ptr noundef nonnull %49, i32 noundef %53) #8
  br label %58

58:                                               ; preds = %46, %55, %57
  %59 = add nsw i64 %47, -1
  store ptr null, ptr %48, align 8, !tbaa !85
  %60 = icmp sgt i64 %59, %3
  br i1 %60, label %46, label %61, !prof !184, !llvm.loop !185

61:                                               ; preds = %58, %40, %36, %38
  %62 = load ptr, ptr %0, align 8, !tbaa !77
  %63 = getelementptr inbounds %struct.xpvav, ptr %62, i64 0, i32 2
  store i64 %3, ptr %63, align 8, !tbaa !81
  %64 = load i32, ptr %4, align 4, !tbaa !70
  %65 = and i32 %64, 4194304
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %71, label %67, !prof !186

67:                                               ; preds = %61
  %68 = tail call i32 @Perl_mg_set(ptr noundef nonnull %0) #8
  br label %71

69:                                               ; preds = %23
  %70 = tail call ptr @Perl_av_store(ptr noundef nonnull %0, i64 noundef %3, ptr noundef null)
  br label %71

71:                                               ; preds = %69, %67, %61, %20
  ret void
}

declare void @Perl_safesysfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @Perl_av_create_and_push(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #1 !prof !187 {
  %3 = load ptr, ptr %0, align 8, !tbaa !85
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7, !prof !188

5:                                                ; preds = %2
  %6 = tail call ptr @Perl_newSV_type(i32 noundef 11) #8
  store ptr %6, ptr %0, align 8, !tbaa !85
  br label %7

7:                                                ; preds = %5, %2
  %8 = load ptr, ptr %0, align 8, !tbaa !85
  tail call void @Perl_av_push(ptr noundef %8, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_av_push(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 !prof !189 {
  %3 = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !70
  %5 = and i32 %4, 134283264
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7, !prof !190

7:                                                ; preds = %2
  tail call void @Perl_croak_no_modify() #8
  br label %8

8:                                                ; preds = %7, %2
  %9 = load i32, ptr %3, align 4, !tbaa !99
  %10 = and i32 %9, 8388608
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12, !prof !191

12:                                               ; preds = %8
  %13 = tail call ptr @Perl_mg_find(ptr noundef %0, i32 noundef 80) #8
  br label %14

14:                                               ; preds = %8, %12
  %15 = phi ptr [ %13, %12 ], [ null, %8 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %25, label %17, !prof !190

17:                                               ; preds = %14
  %18 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 9), align 8, !tbaa !85
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str.1, i32 noundef 0) #8
  store ptr %21, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 9), align 8, !tbaa !85
  br label %22

22:                                               ; preds = %17, %20
  %23 = phi ptr [ %21, %20 ], [ %18, %17 ]
  %24 = tail call ptr (ptr, ptr, ptr, i32, i32, ...) @Perl_magic_methcall(ptr noundef %0, ptr noundef nonnull %15, ptr noundef %23, i32 noundef 4, i32 noundef 1, ptr noundef %1) #8
  br label %31

25:                                               ; preds = %14
  %26 = load ptr, ptr %0, align 8, !tbaa !77
  %27 = getelementptr inbounds %struct.xpvav, ptr %26, i64 0, i32 2
  %28 = load i64, ptr %27, align 8, !tbaa !81
  %29 = add nsw i64 %28, 1
  %30 = tail call ptr @Perl_av_store(ptr noundef nonnull %0, i64 noundef %29, ptr noundef %1)
  br label %31

31:                                               ; preds = %25, %22
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_av_pop(ptr noundef %0) local_unnamed_addr #1 !prof !192 {
  %2 = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !70
  %4 = and i32 %3, 134283264
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6, !prof !193

6:                                                ; preds = %1
  tail call void @Perl_croak_no_modify() #8
  br label %7

7:                                                ; preds = %6, %1
  %8 = load i32, ptr %2, align 4, !tbaa !99
  %9 = and i32 %8, 8388608
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11, !prof !193

11:                                               ; preds = %7
  %12 = tail call ptr @Perl_mg_find(ptr noundef %0, i32 noundef 80) #8
  br label %13

13:                                               ; preds = %7, %11
  %14 = phi ptr [ %12, %11 ], [ null, %7 ]
  %15 = icmp eq ptr %14, null
  br i1 %15, label %27, label %16, !prof !193

16:                                               ; preds = %13
  %17 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 10), align 16, !tbaa !85
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str.2, i32 noundef 0) #8
  store ptr %20, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 10), align 16, !tbaa !85
  br label %21

21:                                               ; preds = %16, %19
  %22 = phi ptr [ %20, %19 ], [ %17, %16 ]
  %23 = tail call ptr (ptr, ptr, ptr, i32, i32, ...) @Perl_magic_methcall(ptr noundef %0, ptr noundef nonnull %14, ptr noundef %22, i32 noundef 0, i32 noundef 0) #8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %58, label %25

25:                                               ; preds = %21
  %26 = tail call ptr @Perl_newSVsv(ptr noundef nonnull %23) #8
  br label %58

27:                                               ; preds = %13
  %28 = load i32, ptr %2, align 4, !tbaa !99
  %29 = and i32 %28, 8388608
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31, !prof !193

31:                                               ; preds = %27
  %32 = tail call i32 @Perl_mg_size(ptr noundef %0) #8
  %33 = sext i32 %32 to i64
  br label %38

34:                                               ; preds = %27
  %35 = load ptr, ptr %0, align 8, !tbaa !77
  %36 = getelementptr inbounds %struct.xpvav, ptr %35, i64 0, i32 2
  %37 = load i64, ptr %36, align 8, !tbaa !81
  br label %38

38:                                               ; preds = %34, %31
  %39 = phi i64 [ %33, %31 ], [ %37, %34 ]
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %58, label %41, !prof !194

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !84
  %44 = load ptr, ptr %0, align 8, !tbaa !77
  %45 = getelementptr inbounds %struct.xpvav, ptr %44, i64 0, i32 2
  %46 = load i64, ptr %45, align 8, !tbaa !81
  %47 = getelementptr inbounds ptr, ptr %43, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !85
  %49 = add nsw i64 %46, -1
  store i64 %49, ptr %45, align 8, !tbaa !81
  store ptr null, ptr %47, align 8, !tbaa !85
  %50 = load i32, ptr %2, align 4, !tbaa !70
  %51 = and i32 %50, 4194304
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53, !prof !193

53:                                               ; preds = %41
  %54 = tail call i32 @Perl_mg_set(ptr noundef nonnull %0) #8
  br label %55

55:                                               ; preds = %53, %41
  %56 = icmp eq ptr %48, null
  %57 = select i1 %56, ptr @PL_sv_undef, ptr %48, !prof !194
  br label %58

58:                                               ; preds = %38, %21, %25, %55
  %59 = phi ptr [ %57, %55 ], [ %26, %25 ], [ null, %21 ], [ @PL_sv_undef, %38 ]
  ret ptr %59
}

declare ptr @Perl_newSVsv(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @Perl_av_create_and_unshift_one(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #5 !prof !195 {
  %3 = load ptr, ptr %0, align 8, !tbaa !85
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7, !prof !96

5:                                                ; preds = %2
  %6 = tail call ptr @Perl_newSV_type(i32 noundef 11) #8
  store ptr %6, ptr %0, align 8, !tbaa !85
  br label %7

7:                                                ; preds = %5, %2
  %8 = load ptr, ptr %0, align 8, !tbaa !85
  tail call void @Perl_av_unshift(ptr noundef %8, i64 noundef 1)
  %9 = load ptr, ptr %0, align 8, !tbaa !85
  %10 = tail call ptr @Perl_av_store(ptr noundef %9, i64 noundef 0, ptr noundef %1)
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_av_unshift(ptr noundef %0, i64 noundef %1) local_unnamed_addr #1 !prof !196 {
  %3 = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !70
  %5 = and i32 %4, 134283264
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7, !prof !197

7:                                                ; preds = %2
  tail call void @Perl_croak_no_modify() #8
  br label %8

8:                                                ; preds = %7, %2
  %9 = load i32, ptr %3, align 4, !tbaa !99
  %10 = and i32 %9, 8388608
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12, !prof !197

12:                                               ; preds = %8
  %13 = tail call ptr @Perl_mg_find(ptr noundef %0, i32 noundef 80) #8
  br label %14

14:                                               ; preds = %8, %12
  %15 = phi ptr [ %13, %12 ], [ null, %8 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %17, !prof !197

17:                                               ; preds = %14
  %18 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 12), align 16, !tbaa !85
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str.3, i32 noundef 0) #8
  store ptr %21, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 12), align 16, !tbaa !85
  br label %22

22:                                               ; preds = %17, %20
  %23 = phi ptr [ %21, %20 ], [ %18, %17 ]
  %24 = trunc i64 %1 to i32
  %25 = tail call ptr (ptr, ptr, ptr, i32, i32, ...) @Perl_magic_methcall(ptr noundef %0, ptr noundef nonnull %15, ptr noundef %23, i32 noundef 516, i32 noundef %24) #8
  br label %83

26:                                               ; preds = %14
  %27 = icmp slt i64 %1, 1
  br i1 %27, label %83, label %28, !prof !198

28:                                               ; preds = %26
  %29 = load i32, ptr %3, align 4, !tbaa !70
  %30 = and i32 %29, -1073741824
  %31 = icmp eq i32 %30, -2147483648
  br i1 %31, label %32, label %33, !prof !199

32:                                               ; preds = %28
  tail call void @Perl_av_reify(ptr noundef %0)
  br label %33

33:                                               ; preds = %32, %28
  %34 = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !84
  %36 = load ptr, ptr %0, align 8, !tbaa !77
  %37 = getelementptr inbounds %struct.xpvav, ptr %36, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !95
  %39 = icmp eq ptr %35, %38
  br i1 %39, label %56, label %40, !prof !200

40:                                               ; preds = %33
  %41 = ptrtoint ptr %38 to i64
  %42 = ptrtoint ptr %35 to i64
  %43 = sub i64 %42, %41
  %44 = ashr exact i64 %43, 3
  %45 = tail call i64 @llvm.smin.i64(i64 %44, i64 %1)
  %46 = sub nsw i64 %1, %45
  %47 = getelementptr inbounds %struct.xpvav, ptr %36, i64 0, i32 3
  %48 = load i64, ptr %47, align 8, !tbaa !78
  %49 = add nsw i64 %48, %45
  store i64 %49, ptr %47, align 8, !tbaa !78
  %50 = getelementptr inbounds %struct.xpvav, ptr %36, i64 0, i32 2
  %51 = load i64, ptr %50, align 8, !tbaa !81
  %52 = add nsw i64 %51, %45
  store i64 %52, ptr %50, align 8, !tbaa !81
  %53 = load ptr, ptr %34, align 8, !tbaa !84
  %54 = sub nsw i64 0, %45
  %55 = getelementptr inbounds ptr, ptr %53, i64 %54
  store ptr %55, ptr %34, align 8, !tbaa !84
  br label %56

56:                                               ; preds = %40, %33
  %57 = phi i64 [ %46, %40 ], [ %1, %33 ]
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %83, label %59, !prof !199

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.xpvav, ptr %36, i64 0, i32 2
  %61 = load i64, ptr %60, align 8, !tbaa !81
  %62 = tail call i64 @llvm.smax.i64(i64 %61, i64 0)
  %63 = add nsw i64 %62, %57
  %64 = add nsw i64 %63, %61
  tail call void @Perl_av_extend(ptr noundef nonnull %0, i64 noundef %64)
  %65 = load ptr, ptr %0, align 8, !tbaa !77
  %66 = getelementptr inbounds %struct.xpvav, ptr %65, i64 0, i32 2
  %67 = load i64, ptr %66, align 8, !tbaa !81
  %68 = add nsw i64 %67, %63
  store i64 %68, ptr %66, align 8, !tbaa !81
  %69 = load ptr, ptr %34, align 8, !tbaa !84
  %70 = getelementptr inbounds ptr, ptr %69, i64 %63
  %71 = shl i64 %61, 3
  %72 = add i64 %71, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %70, ptr align 1 %69, i64 %72, i1 false), !prof !201
  %73 = shl nuw i64 %63, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %69, i8 0, i64 %73, i1 false), !tbaa !85
  %74 = load ptr, ptr %0, align 8, !tbaa !77
  %75 = getelementptr inbounds %struct.xpvav, ptr %74, i64 0, i32 3
  %76 = load i64, ptr %75, align 8, !tbaa !78
  %77 = sub nsw i64 %76, %62
  store i64 %77, ptr %75, align 8, !tbaa !78
  %78 = getelementptr inbounds %struct.xpvav, ptr %74, i64 0, i32 2
  %79 = load i64, ptr %78, align 8, !tbaa !81
  %80 = sub nsw i64 %79, %62
  store i64 %80, ptr %78, align 8, !tbaa !81
  %81 = load ptr, ptr %34, align 8, !tbaa !84
  %82 = getelementptr inbounds ptr, ptr %81, i64 %62
  store ptr %82, ptr %34, align 8, !tbaa !84
  br label %83

83:                                               ; preds = %56, %59, %26, %22
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @Perl_av_shift(ptr noundef %0) local_unnamed_addr #4 !prof !202 {
  %2 = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !70
  %4 = and i32 %3, 134283264
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6, !prof !203

6:                                                ; preds = %1
  tail call void @Perl_croak_no_modify() #8
  br label %7

7:                                                ; preds = %6, %1
  %8 = load i32, ptr %2, align 4, !tbaa !99
  %9 = and i32 %8, 8388608
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11, !prof !203

11:                                               ; preds = %7
  %12 = tail call ptr @Perl_mg_find(ptr noundef %0, i32 noundef 80) #8
  br label %13

13:                                               ; preds = %7, %11
  %14 = phi ptr [ %12, %11 ], [ null, %7 ]
  %15 = icmp eq ptr %14, null
  br i1 %15, label %27, label %16, !prof !203

16:                                               ; preds = %13
  %17 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 11), align 8, !tbaa !85
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str.4, i32 noundef 0) #8
  store ptr %20, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 11), align 8, !tbaa !85
  br label %21

21:                                               ; preds = %16, %19
  %22 = phi ptr [ %20, %19 ], [ %17, %16 ]
  %23 = tail call ptr (ptr, ptr, ptr, i32, i32, ...) @Perl_magic_methcall(ptr noundef %0, ptr noundef nonnull %14, ptr noundef %22, i32 noundef 0, i32 noundef 0) #8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %66, label %25

25:                                               ; preds = %21
  %26 = tail call ptr @Perl_newSVsv(ptr noundef nonnull %23) #8
  br label %66

27:                                               ; preds = %13
  %28 = load i32, ptr %2, align 4, !tbaa !99
  %29 = and i32 %28, 8388608
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31, !prof !203

31:                                               ; preds = %27
  %32 = tail call i32 @Perl_mg_size(ptr noundef %0) #8
  %33 = sext i32 %32 to i64
  br label %38

34:                                               ; preds = %27
  %35 = load ptr, ptr %0, align 8, !tbaa !77
  %36 = getelementptr inbounds %struct.xpvav, ptr %35, i64 0, i32 2
  %37 = load i64, ptr %36, align 8, !tbaa !81
  br label %38

38:                                               ; preds = %34, %31
  %39 = phi i64 [ %33, %31 ], [ %37, %34 ]
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %66, label %41, !prof !204

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !84
  %44 = load ptr, ptr %43, align 8, !tbaa !85
  %45 = load i32, ptr %2, align 4, !tbaa !70
  %46 = and i32 %45, 1073741824
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48, !prof !205

48:                                               ; preds = %41
  store ptr null, ptr %43, align 8, !tbaa !85
  br label %49

49:                                               ; preds = %48, %41
  %50 = load ptr, ptr %42, align 8, !tbaa !84
  %51 = getelementptr inbounds ptr, ptr %50, i64 1
  store ptr %51, ptr %42, align 8, !tbaa !84
  %52 = load ptr, ptr %0, align 8, !tbaa !77
  %53 = getelementptr inbounds %struct.xpvav, ptr %52, i64 0, i32 3
  %54 = load i64, ptr %53, align 8, !tbaa !78
  %55 = add nsw i64 %54, -1
  store i64 %55, ptr %53, align 8, !tbaa !78
  %56 = getelementptr inbounds %struct.xpvav, ptr %52, i64 0, i32 2
  %57 = load i64, ptr %56, align 8, !tbaa !81
  %58 = add nsw i64 %57, -1
  store i64 %58, ptr %56, align 8, !tbaa !81
  %59 = and i32 %45, 4194304
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61, !prof !206

61:                                               ; preds = %49
  %62 = tail call i32 @Perl_mg_set(ptr noundef nonnull %0) #8
  br label %63

63:                                               ; preds = %61, %49
  %64 = icmp eq ptr %44, null
  %65 = select i1 %64, ptr @PL_sv_undef, ptr %44, !prof !207
  br label %66

66:                                               ; preds = %38, %21, %25, %63
  %67 = phi ptr [ %65, %63 ], [ %26, %25 ], [ null, %21 ], [ @PL_sv_undef, %38 ]
  ret ptr %67
}

; Function Attrs: nounwind uwtable
define dso_local i64 @Perl_av_len(ptr noundef %0) local_unnamed_addr #1 !prof !208 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !99
  %4 = and i32 %3, 8388608
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6, !prof !209

6:                                                ; preds = %1
  %7 = tail call i32 @Perl_mg_size(ptr noundef %0) #8
  %8 = sext i32 %7 to i64
  br label %13

9:                                                ; preds = %1
  %10 = load ptr, ptr %0, align 8, !tbaa !77
  %11 = getelementptr inbounds %struct.xpvav, ptr %10, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !81
  br label %13

13:                                               ; preds = %6, %9
  %14 = phi i64 [ %8, %6 ], [ %12, %9 ]
  ret i64 %14
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_av_delete(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #5 !prof !127 {
  %4 = alloca i64, align 8
  store i64 %1, ptr %4, align 8, !tbaa !103
  %5 = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !70
  %7 = and i32 %6, 134283264
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call void @Perl_croak_no_modify() #8
  br label %10

10:                                               ; preds = %9, %3
  %11 = load i32, ptr %5, align 4, !tbaa !70
  %12 = and i32 %11, 8388608
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %38, label %14

14:                                               ; preds = %10
  %15 = tail call ptr @Perl_mg_find(ptr noundef %0, i32 noundef 80) #8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = tail call ptr @Perl_mg_find(ptr noundef %0, i32 noundef 68) #8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %35, label %20

20:                                               ; preds = %17, %14
  %21 = icmp slt i64 %1, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %20
  %23 = call fastcc zeroext i1 @S_adjust_index(ptr noundef %0, ptr noundef %15, ptr noundef nonnull %4)
  br i1 %23, label %24, label %35

24:                                               ; preds = %22, %20
  %25 = load i64, ptr %4, align 8, !tbaa !103
  %26 = tail call ptr @Perl_av_fetch(ptr noundef %0, i64 noundef %25, i32 noundef 1)
  %27 = icmp eq ptr %26, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr %26, align 8, !tbaa !85
  %30 = tail call i32 @Perl_mg_clear(ptr noundef %29) #8
  %31 = tail call ptr @Perl_mg_find(ptr noundef %29, i32 noundef 112) #8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  %34 = tail call i32 @Perl_sv_unmagic(ptr noundef %29, i32 noundef 112) #8
  br label %35

35:                                               ; preds = %22, %17, %33, %28, %24
  %36 = phi ptr [ %29, %33 ], [ null, %28 ], [ undef, %24 ], [ undef, %17 ], [ null, %22 ]
  %37 = phi i1 [ false, %33 ], [ false, %28 ], [ true, %24 ], [ true, %17 ], [ false, %22 ]
  br i1 %37, label %38, label %118

38:                                               ; preds = %35, %10
  %39 = load i64, ptr %4, align 8, !tbaa !103
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %38
  %42 = load i32, ptr %5, align 4, !tbaa !99
  %43 = and i32 %42, 8388608
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = tail call i32 @Perl_mg_size(ptr noundef %0) #8
  %47 = sext i32 %46 to i64
  br label %52

48:                                               ; preds = %41
  %49 = load ptr, ptr %0, align 8, !tbaa !77
  %50 = getelementptr inbounds %struct.xpvav, ptr %49, i64 0, i32 2
  %51 = load i64, ptr %50, align 8, !tbaa !81
  br label %52

52:                                               ; preds = %48, %45
  %53 = phi i64 [ %47, %45 ], [ %51, %48 ]
  %54 = add nsw i64 %39, 1
  %55 = add i64 %54, %53
  store i64 %55, ptr %4, align 8, !tbaa !103
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %118, label %57

57:                                               ; preds = %52, %38
  %58 = load i64, ptr %4, align 8, !tbaa !103
  %59 = load ptr, ptr %0, align 8, !tbaa !77
  %60 = getelementptr inbounds %struct.xpvav, ptr %59, i64 0, i32 2
  %61 = load i64, ptr %60, align 8, !tbaa !81
  %62 = icmp sgt i64 %58, %61
  br i1 %62, label %118, label %63

63:                                               ; preds = %57
  %64 = load i32, ptr %5, align 4, !tbaa !70
  %65 = and i32 %64, -1073741824
  %66 = icmp eq i32 %65, -2147483648
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  tail call void @Perl_av_reify(ptr noundef nonnull %0)
  br label %68

68:                                               ; preds = %67, %63
  %69 = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !84
  %71 = getelementptr inbounds ptr, ptr %70, i64 %58
  %72 = load ptr, ptr %71, align 8, !tbaa !85
  store ptr null, ptr %71, align 8, !tbaa !85
  %73 = load ptr, ptr %0, align 8, !tbaa !77
  %74 = getelementptr inbounds %struct.xpvav, ptr %73, i64 0, i32 2
  %75 = load i64, ptr %74, align 8, !tbaa !81
  %76 = icmp eq i64 %58, %75
  br i1 %76, label %77, label %94

77:                                               ; preds = %68
  %78 = load i64, ptr %4, align 8, !tbaa !103
  %79 = tail call i64 @llvm.smin.i64(i64 %78, i64 0)
  %80 = add i64 %79, -1
  br label %81

81:                                               ; preds = %77, %86
  %82 = phi i64 [ %78, %77 ], [ %87, %86 ]
  %83 = load i64, ptr %74, align 8, !tbaa !81
  %84 = add nsw i64 %83, -1
  store i64 %84, ptr %74, align 8, !tbaa !81
  %85 = icmp sgt i64 %82, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = add nsw i64 %82, -1
  %88 = load ptr, ptr %69, align 8, !tbaa !84
  %89 = getelementptr inbounds ptr, ptr %88, i64 %87
  %90 = load ptr, ptr %89, align 8, !tbaa !85
  %91 = icmp eq ptr %90, null
  br i1 %91, label %81, label %92, !llvm.loop !210

92:                                               ; preds = %81, %86
  %93 = phi i64 [ %80, %81 ], [ %87, %86 ]
  store i64 %93, ptr %4, align 8, !tbaa !103
  br label %94

94:                                               ; preds = %92, %68
  %95 = load i32, ptr %5, align 4, !tbaa !70
  %96 = and i32 %95, 4194304
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %94
  %99 = tail call i32 @Perl_mg_set(ptr noundef nonnull %0) #8
  br label %100

100:                                              ; preds = %94, %98
  %101 = icmp eq ptr %72, null
  br i1 %101, label %118, label %102

102:                                              ; preds = %100
  %103 = and i32 %2, 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %112, label %105

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.sv, ptr %72, i64 0, i32 1
  %107 = load i32, ptr %106, align 8, !tbaa !91
  %108 = icmp ugt i32 %107, 1
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  %110 = add i32 %107, -1
  store i32 %110, ptr %106, align 8, !tbaa !91
  br label %118

111:                                              ; preds = %105
  tail call void @Perl_sv_free2(ptr noundef nonnull %72, i32 noundef %107) #8
  br label %118

112:                                              ; preds = %102
  %113 = load i32, ptr %5, align 4, !tbaa !70
  %114 = and i32 %113, 1073741824
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %112
  %117 = tail call ptr @Perl_sv_2mortal(ptr noundef nonnull %72) #8
  br label %118

118:                                              ; preds = %52, %35, %111, %109, %100, %112, %116, %57
  %119 = phi ptr [ null, %57 ], [ %72, %116 ], [ %72, %112 ], [ %72, %100 ], [ null, %109 ], [ null, %111 ], [ %36, %35 ], [ null, %52 ]
  ret ptr %119
}

declare i32 @Perl_sv_unmagic(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl_av_exists(ptr noundef %0, i64 noundef %1) local_unnamed_addr #5 !prof !127 {
  %3 = alloca i64, align 8
  store i64 %1, ptr %3, align 8, !tbaa !103
  %4 = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !70
  %6 = and i32 %5, 8388608
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %97, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @Perl_mg_find(ptr noundef %0, i32 noundef 80) #8
  %10 = tail call ptr @Perl_mg_find(ptr noundef %0, i32 noundef 68) #8
  %11 = icmp ne ptr %9, null
  %12 = icmp ne ptr %10, null
  %13 = select i1 %11, i1 true, i1 %12
  br i1 %13, label %14, label %94

14:                                               ; preds = %8
  %15 = icmp slt i64 %1, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %14
  %17 = call fastcc zeroext i1 @S_adjust_index(ptr noundef %0, ptr noundef %9, ptr noundef nonnull %3)
  br i1 %17, label %18, label %94

18:                                               ; preds = %16, %14
  %19 = load i64, ptr %3, align 8, !tbaa !103
  %20 = icmp sgt i64 %19, -1
  %21 = select i1 %20, i1 %12, i1 false
  br i1 %21, label %22, label %36

22:                                               ; preds = %18
  %23 = load i32, ptr %4, align 4, !tbaa !99
  %24 = and i32 %23, 8388608
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = tail call i32 @Perl_mg_size(ptr noundef %0) #8
  %28 = sext i32 %27 to i64
  br label %33

29:                                               ; preds = %22
  %30 = load ptr, ptr %0, align 8, !tbaa !77
  %31 = getelementptr inbounds %struct.xpvav, ptr %30, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !81
  br label %33

33:                                               ; preds = %29, %26
  %34 = phi i64 [ %28, %26 ], [ %32, %29 ]
  %35 = icmp sle i64 %19, %34
  br label %94

36:                                               ; preds = %18
  %37 = tail call ptr @Perl_sv_newmortal() #8
  %38 = trunc i64 %19 to i32
  %39 = tail call i32 @Perl_mg_copy(ptr noundef %0, ptr noundef %37, ptr noundef null, i32 noundef %38) #8
  %40 = tail call ptr @Perl_mg_find(ptr noundef %37, i32 noundef 112) #8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %94, label %42

42:                                               ; preds = %36
  %43 = tail call i32 @Perl_magic_existspack(ptr noundef %37, ptr noundef nonnull %40) #8
  %44 = getelementptr inbounds %struct.sv, ptr %37, i64 0, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !99
  %46 = and i32 %45, 65280
  %47 = icmp ne i32 %46, 0
  %48 = and i32 %45, 255
  %49 = icmp eq i32 %48, 8
  %50 = or i1 %47, %49
  %51 = and i32 %45, 16777471
  %52 = icmp eq i32 %51, 16777226
  %53 = or i1 %52, %50
  br i1 %53, label %54, label %94

54:                                               ; preds = %42
  %55 = and i32 %45, 1024
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %71, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr %37, align 8, !tbaa !117
  %59 = icmp eq ptr %58, null
  br i1 %59, label %94, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.xpv, ptr %58, i64 0, i32 2
  %62 = load i64, ptr %61, align 8, !tbaa !135
  %63 = icmp ugt i64 %62, 1
  br i1 %63, label %94, label %64

64:                                               ; preds = %60
  %65 = icmp eq i64 %62, 0
  br i1 %65, label %94, label %66

66:                                               ; preds = %64
  %67 = getelementptr inbounds %struct.sv, ptr %37, i64 0, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !84
  %69 = load i8, ptr %68, align 1, !tbaa !84
  %70 = icmp ne i8 %69, 48
  br label %94

71:                                               ; preds = %54
  %72 = and i32 %45, 768
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %92, label %74

74:                                               ; preds = %71
  %75 = and i32 %45, 256
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %74
  %78 = load ptr, ptr %37, align 8, !tbaa !117
  %79 = getelementptr inbounds %struct.xpviv, ptr %78, i64 0, i32 4
  %80 = load i64, ptr %79, align 8, !tbaa !84
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %77, %74
  %83 = and i32 %45, 512
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %94, label %85

85:                                               ; preds = %82
  %86 = load ptr, ptr %37, align 8, !tbaa !117
  %87 = getelementptr inbounds %struct.xpvnv, ptr %86, i64 0, i32 5
  %88 = load double, ptr %87, align 8, !tbaa !84
  %89 = fcmp uno double %88, 0.000000e+00
  br i1 %89, label %94, label %90

90:                                               ; preds = %85
  %91 = fcmp une double %88, 0.000000e+00
  br label %94

92:                                               ; preds = %71
  %93 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef %37, i32 noundef 0) #8
  br label %94

94:                                               ; preds = %16, %33, %36, %85, %77, %90, %82, %57, %64, %66, %60, %42, %92, %8
  %95 = phi i1 [ true, %8 ], [ false, %16 ], [ false, %33 ], [ %41, %36 ], [ false, %85 ], [ false, %77 ], [ false, %90 ], [ false, %82 ], [ false, %57 ], [ false, %64 ], [ false, %66 ], [ false, %60 ], [ false, %42 ], [ false, %92 ]
  %96 = phi i1 [ undef, %8 ], [ false, %16 ], [ %35, %33 ], [ undef, %36 ], [ true, %85 ], [ true, %77 ], [ %91, %90 ], [ false, %82 ], [ false, %57 ], [ false, %64 ], [ %70, %66 ], [ true, %60 ], [ false, %42 ], [ %93, %92 ]
  br i1 %95, label %97, label %129

97:                                               ; preds = %94, %2
  %98 = load i64, ptr %3, align 8, !tbaa !103
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %100, label %116

100:                                              ; preds = %97
  %101 = load i32, ptr %4, align 4, !tbaa !99
  %102 = and i32 %101, 8388608
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %100
  %105 = tail call i32 @Perl_mg_size(ptr noundef %0) #8
  %106 = sext i32 %105 to i64
  br label %111

107:                                              ; preds = %100
  %108 = load ptr, ptr %0, align 8, !tbaa !77
  %109 = getelementptr inbounds %struct.xpvav, ptr %108, i64 0, i32 2
  %110 = load i64, ptr %109, align 8, !tbaa !81
  br label %111

111:                                              ; preds = %107, %104
  %112 = phi i64 [ %106, %104 ], [ %110, %107 ]
  %113 = add nsw i64 %98, 1
  %114 = add i64 %113, %112
  store i64 %114, ptr %3, align 8, !tbaa !103
  %115 = icmp slt i64 %114, 0
  br i1 %115, label %129, label %116

116:                                              ; preds = %111, %97
  %117 = load i64, ptr %3, align 8, !tbaa !103
  %118 = load ptr, ptr %0, align 8, !tbaa !77
  %119 = getelementptr inbounds %struct.xpvav, ptr %118, i64 0, i32 2
  %120 = load i64, ptr %119, align 8, !tbaa !81
  %121 = icmp sgt i64 %117, %120
  br i1 %121, label %128, label %122

122:                                              ; preds = %116
  %123 = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 3
  %124 = load ptr, ptr %123, align 8, !tbaa !84
  %125 = getelementptr inbounds ptr, ptr %124, i64 %117
  %126 = load ptr, ptr %125, align 8, !tbaa !85
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %129

128:                                              ; preds = %122, %116
  br label %129

129:                                              ; preds = %111, %122, %94, %128
  %130 = phi i1 [ %96, %94 ], [ false, %128 ], [ true, %122 ], [ false, %111 ]
  ret i1 %130
}

declare i32 @Perl_magic_existspack(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @Perl_sv_2bool_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local nonnull ptr @Perl_av_arylen_p(ptr noundef %0) local_unnamed_addr #5 !prof !127 {
  %2 = tail call fastcc ptr @S_get_aux_mg(ptr noundef %0)
  %3 = getelementptr inbounds %struct.magic, ptr %2, i64 0, i32 6
  ret ptr %3
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @S_get_aux_mg(ptr noundef %0) unnamed_addr #5 !prof !127 {
  %2 = tail call ptr @Perl_mg_find(ptr noundef %0, i32 noundef 64) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %9

4:                                                ; preds = %1
  %5 = tail call ptr @Perl_sv_magicext(ptr noundef %0, ptr noundef null, i32 noundef 64, ptr noundef nonnull getelementptr inbounds ([31 x %struct.mgvtbl], ptr @PL_magic_vtables, i64 0, i64 1), ptr noundef null, i32 noundef 0) #8
  %6 = getelementptr inbounds %struct.magic, ptr %5, i64 0, i32 4
  %7 = load i8, ptr %6, align 1, !tbaa !211
  %8 = or i8 %7, 2
  store i8 %8, ptr %6, align 1, !tbaa !211
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi ptr [ %2, %1 ], [ %5, %4 ]
  ret ptr %10
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_av_iter_p(ptr noundef %0) local_unnamed_addr #5 !prof !127 {
  %2 = tail call fastcc ptr @S_get_aux_mg(ptr noundef %0)
  %3 = getelementptr inbounds %struct.magic, ptr %2, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !212
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.magic, ptr %2, i64 0, i32 5
  store i64 8, ptr %7, align 8, !tbaa !213
  %8 = tail call ptr @Perl_safesyscalloc(i64 noundef 1, i64 noundef 8) #8
  store ptr %8, ptr %3, align 8, !tbaa !212
  br label %9

9:                                                ; preds = %6, %1
  %10 = load ptr, ptr %3, align 8, !tbaa !212
  ret ptr %10
}

declare ptr @Perl_safesyscalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_newRV(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_hv_common(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_sv_magicext(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!68}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67}
!35 = !{ptr @Perl_av_extend, ptr @Perl_mg_find, i64 22}
!36 = !{ptr @Perl_av_extend, ptr @Perl_av_extend_guts, i64 723529}
!37 = !{ptr @Perl_av_extend_guts, ptr @Perl_safesysrealloc, i64 276063}
!38 = !{ptr @Perl_av_extend_guts, ptr @Perl_safesysmalloc, i64 118738}
!39 = !{ptr @Perl_av_fetch, ptr @Perl_newSV, i64 18474}
!40 = !{ptr @Perl_av_fetch, ptr @Perl_av_store, i64 18474}
!41 = !{ptr @Perl_av_store, ptr @Perl_mg_find, i64 27}
!42 = !{ptr @Perl_av_store, ptr @Perl_av_reify, i64 34}
!43 = !{ptr @Perl_av_store, ptr @Perl_av_extend, i64 316879}
!44 = !{ptr @Perl_av_store, ptr @Perl_sv_free2, i64 319}
!45 = !{ptr @Perl_av_store, ptr @Perl_sv_magic, i64 27}
!46 = !{ptr @Perl_av_store, ptr @Perl_mg_set, i64 3}
!47 = !{ptr @Perl_av_make, ptr @Perl_newSV_type, i64 224485}
!48 = !{ptr @Perl_av_make, ptr @Perl_safesysmalloc, i64 107701}
!49 = !{ptr @Perl_av_make, ptr @Perl_push_scope, i64 107701}
!50 = !{ptr @Perl_av_make, ptr @Perl_save_pushptr, i64 107701}
!51 = !{ptr @Perl_av_make, ptr @Perl_newSV, i64 533668}
!52 = !{ptr @Perl_av_make, ptr @Perl_sv_setsv_flags, i64 533668}
!53 = !{ptr @Perl_av_make, ptr @Perl_pop_scope, i64 107701}
!54 = !{ptr @Perl_av_clear, ptr @Perl_push_scope, i64 421329}
!55 = !{ptr @Perl_av_clear, ptr @Perl_save_pushptr, i64 421329}
!56 = !{ptr @Perl_av_clear, ptr @Perl_sv_free2, i64 1527059}
!57 = !{ptr @Perl_av_clear, ptr @Perl_pop_scope, i64 421329}
!58 = !{ptr @Perl_av_fill, ptr @Perl_av_store, i64 1}
!59 = !{ptr @Perl_av_create_and_push, ptr @Perl_newSV_type, i64 1}
!60 = !{ptr @Perl_av_create_and_push, ptr @Perl_av_push, i64 219}
!61 = !{ptr @Perl_av_push, ptr @Perl_mg_find, i64 3}
!62 = !{ptr @Perl_av_push, ptr @Perl_av_store, i64 1015}
!63 = !{ptr @Perl_av_create_and_unshift_one, ptr @Perl_newSV_type, i64 1}
!64 = !{ptr @Perl_av_create_and_unshift_one, ptr @Perl_av_unshift, i64 1}
!65 = !{ptr @Perl_av_create_and_unshift_one, ptr @Perl_av_store, i64 1}
!66 = !{ptr @Perl_av_unshift, ptr @Perl_av_reify, i64 16}
!67 = !{ptr @Perl_av_unshift, ptr @Perl_av_extend, i64 6417}
!68 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!69 = !{!"function_entry_count", i64 51}
!70 = !{!71, !75, i64 12}
!71 = !{!"av", !72, i64 0, !75, i64 8, !75, i64 12, !73, i64 16}
!72 = !{!"any pointer", !73, i64 0}
!73 = !{!"omnipotent char", !74, i64 0}
!74 = !{!"Simple C/C++ TBAA"}
!75 = !{!"int", !73, i64 0}
!76 = !{!"branch_weights", i32 51, i32 0}
!77 = !{!71, !72, i64 0}
!78 = !{!79, !80, i64 24}
!79 = !{!"xpvav", !72, i64 0, !73, i64 8, !80, i64 16, !80, i64 24, !72, i64 32}
!80 = !{!"long", !73, i64 0}
!81 = !{!79, !80, i64 16}
!82 = !{!"branch_weights", i32 203, i32 1}
!83 = !{!"branch_weights", i32 1, i32 203}
!84 = !{!73, !73, i64 0}
!85 = !{!72, !72, i64 0}
!86 = !{!"branch_weights", i32 3909, i32 203}
!87 = distinct !{!87, !88, !89}
!88 = !{!"llvm.loop.mustprogress"}
!89 = !{!"llvm.loop.unroll.disable"}
!90 = !{!"branch_weights", i32 2339, i32 0}
!91 = !{!92, !75, i64 8}
!92 = !{!"sv", !72, i64 0, !75, i64 8, !75, i64 12, !73, i64 16}
!93 = !{!"branch_weights", i32 203, i32 9153}
!94 = distinct !{!94, !88, !89}
!95 = !{!79, !72, i64 32}
!96 = !{!"branch_weights", i32 1, i32 0}
!97 = distinct !{!97, !88, !89}
!98 = !{!"function_entry_count", i64 723529}
!99 = !{!92, !75, i64 12}
!100 = !{!"branch_weights", i32 723507, i32 22}
!101 = !{!"branch_weights", i32 723529, i32 0}
!102 = !{!"function_entry_count", i64 726339}
!103 = !{!80, !80, i64 0}
!104 = !{!"branch_weights", i32 394801, i32 331538}
!105 = !{!"branch_weights", i32 2810, i32 391991}
!106 = !{!"branch_weights", i32 391935, i32 56}
!107 = !{!"VP", i32 1, i64 56, i64 0, i64 35, i64 8, i64 21}
!108 = !{!"branch_weights", i32 25, i32 31}
!109 = !{!"branch_weights", i32 56, i32 0}
!110 = !{!"branch_weights", i32 118738, i32 276007}
!111 = !{!"branch_weights", i32 0, i32 276007}
!112 = !{!"branch_weights", i32 28, i32 276035}
!113 = !{!"branch_weights", i32 391337, i32 654}
!114 = !{!"branch_weights", i32 391307, i32 684}
!115 = !{!"function_entry_count", i64 462188765}
!116 = !{!"branch_weights", i32 462188765, i32 0}
!117 = !{!92, !72, i64 0}
!118 = !{!119, !73, i64 72}
!119 = !{!"xpvlv", !72, i64 0, !73, i64 8, !80, i64 16, !73, i64 24, !73, i64 32, !73, i64 40, !73, i64 48, !80, i64 56, !72, i64 64, !73, i64 72, !73, i64 73}
!120 = !{!119, !72, i64 64}
!121 = !{!"branch_weights", i32 0, i32 462188765}
!122 = !{!"branch_weights", i32 76381, i32 462112384}
!123 = !{!"branch_weights", i32 96, i32 462112288}
!124 = !{!"branch_weights", i32 58003, i32 18474}
!125 = !{!"branch_weights", i32 460605280, i32 1507008}
!126 = !{!"branch_weights", i32 0, i32 1507008}
!127 = !{!"function_entry_count", i64 0}
!128 = !{!129, !72, i64 32}
!129 = !{!"magic", !72, i64 0, !72, i64 8, !130, i64 16, !73, i64 18, !73, i64 19, !80, i64 24, !72, i64 32, !72, i64 40}
!130 = !{!"short", !73, i64 0}
!131 = !{!132, !72, i64 0}
!132 = !{!"xpvmg", !72, i64 0, !73, i64 8, !80, i64 16, !73, i64 24, !73, i64 32, !73, i64 40}
!133 = !{!134, !72, i64 0}
!134 = !{!"gp", !72, i64 0, !72, i64 8, !72, i64 16, !75, i64 24, !75, i64 28, !72, i64 32, !72, i64 40, !72, i64 48, !72, i64 56, !75, i64 64, !75, i64 67, !72, i64 72}
!135 = !{!136, !80, i64 16}
!136 = !{!"xpv", !72, i64 0, !73, i64 8, !80, i64 16, !73, i64 24}
!137 = !{!"function_entry_count", i64 3306836}
!138 = !{!"branch_weights", i32 3306809, i32 27}
!139 = !{!"branch_weights", i32 27, i32 0}
!140 = !{!"branch_weights", i32 0, i32 3306836}
!141 = !{!75, !75, i64 0}
!142 = !{!"branch_weights", i32 3306836, i32 0}
!143 = !{!"branch_weights", i32 34, i32 3306802}
!144 = !{!"branch_weights", i32 316879, i32 2989957}
!145 = !{!"branch_weights", i32 3298131, i32 8705}
!146 = !{!"branch_weights", i32 0, i32 3298131}
!147 = distinct !{!147, !88, !89}
!148 = !{!"branch_weights", i32 0, i32 8705}
!149 = !{!"branch_weights", i32 8386, i32 319}
!150 = !{!"branch_weights", i32 0, i32 319}
!151 = !{!"branch_weights", i32 1, i32 215}
!152 = !{!129, !73, i64 18}
!153 = !{!"branch_weights", i32 0, i32 27}
!154 = !{!130, !130, i64 0}
!155 = !{!"branch_weights", i32 3, i32 24}
!156 = !{!"branch_weights", i32 24, i32 0}
!157 = !{!"branch_weights", i32 215, i32 1}
!158 = distinct !{!158, !88, !89}
!159 = !{!"branch_weights", i32 24, i32 3}
!160 = !{!"function_entry_count", i64 224485}
!161 = !{!"branch_weights", i32 116784, i32 107701}
!162 = !{!"branch_weights", i32 107700, i32 1}
!163 = !{!"branch_weights", i32 533668, i32 0}
!164 = !{!"branch_weights", i32 107700, i32 425968}
!165 = distinct !{!165, !88, !89}
!166 = !{!"function_entry_count", i64 527599}
!167 = !{!"branch_weights", i32 527599, i32 0}
!168 = !{!"branch_weights", i32 527580, i32 19}
!169 = !{!"branch_weights", i32 19, i32 0}
!170 = !{!"branch_weights", i32 106233, i32 421366}
!171 = !{!"branch_weights", i32 37, i32 421329}
!172 = !{!71, !75, i64 8}
!173 = !{!"branch_weights", i32 1, i32 421328}
!174 = !{!"branch_weights", i32 0, i32 1527064}
!175 = !{!"branch_weights", i32 5, i32 1527059}
!176 = !{!"branch_weights", i32 421328, i32 1105736}
!177 = distinct !{!177, !88, !89}
!178 = !{!"branch_weights", i32 415729, i32 5637}
!179 = distinct !{!179, !88, !89}
!180 = !{!"function_entry_count", i64 5}
!181 = !{!"branch_weights", i32 5, i32 0}
!182 = !{!"branch_weights", i32 1, i32 4}
!183 = !{!"branch_weights", i32 0, i32 4}
!184 = !{!"branch_weights", i32 0, i32 1}
!185 = distinct !{!185, !88, !89}
!186 = !{!"branch_weights", i32 4, i32 0}
!187 = !{!"function_entry_count", i64 219}
!188 = !{!"branch_weights", i32 1, i32 218}
!189 = !{!"function_entry_count", i64 1015}
!190 = !{!"branch_weights", i32 1015, i32 0}
!191 = !{!"branch_weights", i32 1012, i32 3}
!192 = !{!"function_entry_count", i64 5083}
!193 = !{!"branch_weights", i32 5083, i32 0}
!194 = !{!"branch_weights", i32 0, i32 5083}
!195 = !{!"function_entry_count", i64 1}
!196 = !{!"function_entry_count", i64 6433}
!197 = !{!"branch_weights", i32 6433, i32 0}
!198 = !{!"branch_weights", i32 0, i32 6433}
!199 = !{!"branch_weights", i32 16, i32 6417}
!200 = !{!"branch_weights", i32 6417, i32 16}
!201 = !{!"VP", i32 1, i64 6417, i64 0, i64 6401, i64 513, i64 16}
!202 = !{!"function_entry_count", i64 2238779}
!203 = !{!"branch_weights", i32 2238779, i32 0}
!204 = !{!"branch_weights", i32 262290, i32 1976489}
!205 = !{!"branch_weights", i32 1443462, i32 533027}
!206 = !{!"branch_weights", i32 1976489, i32 0}
!207 = !{!"branch_weights", i32 0, i32 1976489}
!208 = !{!"function_entry_count", i64 127}
!209 = !{!"branch_weights", i32 127, i32 0}
!210 = distinct !{!210, !88, !89}
!211 = !{!129, !73, i64 19}
!212 = !{!129, !72, i64 40}
!213 = !{!129, !80, i64 24}
