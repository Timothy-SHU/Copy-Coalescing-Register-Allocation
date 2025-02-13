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
@.str.1 = private unnamed_addr constant [17 x i8] c"NEGATIVE_INDICES\00", align 1
@PL_charclass = external local_unnamed_addr constant [0 x i32], align 4
@PL_delaymagic = external local_unnamed_addr global i16, align 2
@.str.2 = private unnamed_addr constant [5 x i8] c"PUSH\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"POP\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"UNSHIFT\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"SHIFT\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"STORESIZE\00", align 1
@PL_magic_vtables = external constant [31 x %struct.mgvtbl], align 16

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Perl_av_reify(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !108 {
  %2 = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !109
  %4 = and i32 %3, 1073741824
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %69, !prof !115

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8, !tbaa !116
  %8 = getelementptr inbounds %struct.xpvav, ptr %7, i64 0, i32 3
  %9 = load i64, ptr %8, align 8, !tbaa !117
  %10 = add nsw i64 %9, 1
  %11 = getelementptr inbounds %struct.xpvav, ptr %7, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !120
  %13 = icmp sgt i64 %9, %12
  br i1 %13, label %14, label %16, !prof !121

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 3
  br label %22

16:                                               ; preds = %22, %6
  %17 = phi i64 [ %10, %6 ], [ %25, %22 ]
  %18 = phi ptr [ %7, %6 ], [ %27, %22 ]
  %19 = icmp eq i64 %17, 0
  br i1 %19, label %47, label %20, !prof !122

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 3
  br label %32

22:                                               ; preds = %14, %22
  %23 = phi i64 [ %10, %14 ], [ %25, %22 ]
  %24 = load ptr, ptr %15, align 8, !tbaa !123
  %25 = add nsw i64 %23, -1
  %26 = getelementptr inbounds ptr, ptr %24, i64 %25
  store ptr null, ptr %26, align 8, !tbaa !124
  %27 = load ptr, ptr %0, align 8, !tbaa !116
  %28 = getelementptr inbounds %struct.xpvav, ptr %27, i64 0, i32 2
  %29 = load i64, ptr %28, align 8, !tbaa !120
  %30 = add nsw i64 %29, 1
  %31 = icmp sgt i64 %25, %30
  br i1 %31, label %22, label %16, !prof !125, !llvm.loop !126

32:                                               ; preds = %20, %45
  %33 = phi i64 [ %17, %20 ], [ %35, %45 ]
  %34 = load ptr, ptr %21, align 8, !tbaa !123
  %35 = add nsw i64 %33, -1
  %36 = getelementptr inbounds ptr, ptr %34, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !124
  %38 = icmp ne ptr %37, @PL_sv_undef
  %39 = icmp ne ptr %37, null
  %40 = and i1 %38, %39
  br i1 %40, label %41, label %45, !prof !128

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.sv, ptr %37, i64 0, i32 1
  %43 = load i32, ptr %42, align 8, !tbaa !129
  %44 = add i32 %43, 1
  store i32 %44, ptr %42, align 8, !tbaa !129
  br label %45

45:                                               ; preds = %41, %32
  %46 = icmp eq i64 %35, 0
  br i1 %46, label %47, label %32, !prof !131, !llvm.loop !132

47:                                               ; preds = %45, %16
  %48 = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !123
  %50 = getelementptr inbounds %struct.xpvav, ptr %18, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !133
  %52 = icmp eq ptr %49, %51
  br i1 %52, label %66, label %53, !prof !134

53:                                               ; preds = %47
  %54 = ptrtoint ptr %49 to i64
  %55 = ptrtoint ptr %51 to i64
  %56 = sub i64 %54, %55
  %57 = ashr exact i64 %56, 3
  br label %58

58:                                               ; preds = %53, %58
  %59 = phi i64 [ %63, %58 ], [ %57, %53 ]
  %60 = load ptr, ptr %0, align 8, !tbaa !116
  %61 = getelementptr inbounds %struct.xpvav, ptr %60, i64 0, i32 4
  %62 = load ptr, ptr %61, align 8, !tbaa !133
  %63 = add nsw i64 %59, -1
  %64 = getelementptr inbounds ptr, ptr %62, i64 %63
  store ptr null, ptr %64, align 8, !tbaa !124
  %65 = icmp eq i64 %63, 0
  br i1 %65, label %66, label %58, !prof !135, !llvm.loop !136

66:                                               ; preds = %58, %47
  %67 = and i32 %3, 1073741823
  %68 = or disjoint i32 %67, 1073741824
  store i32 %68, ptr %2, align 4, !tbaa !109
  br label %69

69:                                               ; preds = %1, %66
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_av_extend(ptr noundef %0, i64 noundef %1) local_unnamed_addr #1 !prof !137 {
  %3 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !138
  %5 = and i32 %4, 8388608
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %20, label %7, !prof !139

7:                                                ; preds = %2
  %8 = tail call ptr @Perl_mg_find(ptr noundef nonnull %0, i32 noundef 80) #6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10, !prof !140

10:                                               ; preds = %7
  %11 = tail call ptr @Perl_sv_newmortal() #6
  %12 = add nsw i64 %1, 1
  tail call void @Perl_sv_setiv(ptr noundef %11, i64 noundef %12) #6
  %13 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 14), align 16, !tbaa !124
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str, i32 noundef 0) #6
  store ptr %16, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 14), align 16, !tbaa !124
  br label %17

17:                                               ; preds = %10, %15
  %18 = phi ptr [ %16, %15 ], [ %13, %10 ]
  %19 = tail call ptr (ptr, ptr, ptr, i32, i32, ...) @Perl_magic_methcall(ptr noundef nonnull %0, ptr noundef nonnull %8, ptr noundef %18, i32 noundef 4, i32 noundef 1, ptr noundef %11) #6
  br label %25

20:                                               ; preds = %2, %7
  %21 = load ptr, ptr %0, align 8, !tbaa !116
  %22 = getelementptr inbounds %struct.xpvav, ptr %21, i64 0, i32 3
  %23 = getelementptr inbounds %struct.xpvav, ptr %21, i64 0, i32 4
  %24 = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 3
  tail call void @Perl_av_extend_guts(ptr noundef nonnull %0, i64 noundef %1, ptr noundef nonnull %22, ptr noundef nonnull %23, ptr noundef nonnull %24) #7
  br label %25

25:                                               ; preds = %20, %17
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_mg_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_newmortal() local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_setiv(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_magic_methcall(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSVpv_share(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_av_extend_guts(ptr noundef readonly %0, i64 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) local_unnamed_addr #1 !prof !141 {
  %6 = load i64, ptr %2, align 8, !tbaa !142
  %7 = icmp slt i64 %6, %1
  br i1 %7, label %8, label %88, !prof !143

8:                                                ; preds = %5
  %9 = icmp eq ptr %0, null
  %10 = load ptr, ptr %3, align 8, !tbaa !124
  br i1 %9, label %39, label %11, !prof !144

11:                                               ; preds = %8
  %12 = load ptr, ptr %4, align 8, !tbaa !124
  %13 = icmp eq ptr %10, %12
  br i1 %13, label %39, label %14, !prof !145

14:                                               ; preds = %11
  %15 = load ptr, ptr %0, align 8, !tbaa !116
  %16 = getelementptr inbounds %struct.xpvav, ptr %15, i64 0, i32 2
  %17 = load i64, ptr %16, align 8, !tbaa !120
  %18 = ptrtoint ptr %12 to i64
  %19 = ptrtoint ptr %10 to i64
  %20 = sub i64 %18, %19
  %21 = ashr exact i64 %20, 3
  %22 = shl i64 %17, 3
  %23 = add i64 %22, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %10, ptr align 1 %12, i64 %23, i1 false)
  %24 = load i64, ptr %2, align 8, !tbaa !142
  %25 = add nsw i64 %24, %21
  store i64 %25, ptr %2, align 8, !tbaa !142
  %26 = load ptr, ptr %3, align 8, !tbaa !124
  store ptr %26, ptr %4, align 8, !tbaa !124
  %27 = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !109
  %29 = and i32 %28, 1073741824
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31, !prof !146

31:                                               ; preds = %14
  %32 = getelementptr i8, ptr %10, i64 %23
  tail call void @llvm.memset.p0.i64(ptr align 8 %32, i8 0, i64 %20, i1 false), !tbaa !124
  br label %33

33:                                               ; preds = %31, %14
  %34 = add nsw i64 %25, -10
  %35 = icmp slt i64 %34, %1
  br i1 %35, label %36, label %88, !prof !147

36:                                               ; preds = %33
  %37 = add nsw i64 %25, %1
  %38 = load ptr, ptr %3, align 8, !tbaa !124
  br label %47

39:                                               ; preds = %8, %11
  %40 = icmp eq ptr %10, null
  br i1 %40, label %67, label %41, !prof !148

41:                                               ; preds = %39
  %42 = sdiv i64 %6, 5
  %43 = sub nsw i64 9223372036854775807, %42
  %44 = icmp slt i64 %43, %1
  %45 = add nsw i64 %42, %1
  %46 = select i1 %44, i64 9223372036854775807, i64 %45, !prof !149
  br label %47

47:                                               ; preds = %41, %36
  %48 = phi ptr [ %38, %36 ], [ %10, %41 ]
  %49 = phi i64 [ %37, %36 ], [ %46, %41 ]
  %50 = shl i64 %49, 3
  %51 = add i64 %50, 8
  %52 = tail call ptr @Perl_safesysrealloc(ptr noundef %48, i64 noundef %51) #6
  store ptr %52, ptr %3, align 8, !tbaa !124
  %53 = load i64, ptr %2, align 8, !tbaa !142
  %54 = getelementptr inbounds ptr, ptr %52, i64 %53
  %55 = sub nsw i64 %49, %53
  %56 = load ptr, ptr @PL_curstack, align 8, !tbaa !124
  %57 = icmp eq ptr %56, %0
  br i1 %57, label %58, label %72, !prof !150

58:                                               ; preds = %47
  %59 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !124
  %60 = load ptr, ptr @PL_stack_base, align 8, !tbaa !124
  %61 = ptrtoint ptr %59 to i64
  %62 = ptrtoint ptr %60 to i64
  %63 = sub i64 %61, %62
  %64 = getelementptr inbounds i8, ptr %52, i64 %63
  store ptr %64, ptr @PL_stack_sp, align 8, !tbaa !124
  %65 = load ptr, ptr %3, align 8, !tbaa !124
  store ptr %65, ptr @PL_stack_base, align 8, !tbaa !124
  %66 = getelementptr inbounds ptr, ptr %65, i64 %49
  store ptr %66, ptr @PL_stack_max, align 8, !tbaa !124
  br label %72

67:                                               ; preds = %39
  %68 = tail call i64 @llvm.smax.i64(i64 %1, i64 3)
  %69 = shl i64 %68, 3
  %70 = add i64 %69, 8
  %71 = tail call ptr @Perl_safesysmalloc(i64 noundef %70) #6
  store ptr %71, ptr %3, align 8, !tbaa !124
  store ptr null, ptr %71, align 8, !tbaa !124
  br label %72

72:                                               ; preds = %47, %58, %67
  %73 = phi ptr [ %54, %58 ], [ %54, %47 ], [ %71, %67 ]
  %74 = phi i64 [ %55, %58 ], [ %55, %47 ], [ %68, %67 ]
  %75 = phi i64 [ %49, %58 ], [ %49, %47 ], [ %68, %67 ]
  br i1 %9, label %86, label %76, !prof !144

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 2
  %78 = load i32, ptr %77, align 4, !tbaa !109
  %79 = and i32 %78, 1073741824
  %80 = icmp ne i32 %79, 0
  %81 = icmp ne i64 %74, 0
  %82 = select i1 %80, i1 %81, i1 false
  br i1 %82, label %83, label %86, !prof !151

83:                                               ; preds = %76
  %84 = getelementptr i8, ptr %73, i64 8
  %85 = shl nuw i64 %74, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %84, i8 0, i64 %85, i1 false), !tbaa !124
  br label %86

86:                                               ; preds = %83, %76, %72
  %87 = load ptr, ptr %3, align 8, !tbaa !124
  store ptr %87, ptr %4, align 8, !tbaa !124
  store i64 %75, ptr %2, align 8, !tbaa !142
  br label %88

88:                                               ; preds = %86, %33, %5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #3

; Function Attrs: optsize
declare ptr @Perl_safesysrealloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_safesysmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @Perl_av_fetch(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #1 !prof !152 {
  %4 = alloca i64, align 8
  store i64 %1, ptr %4, align 8, !tbaa !142
  %5 = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !109
  %7 = and i32 %6, 8388608
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %34, label %9, !prof !153

9:                                                ; preds = %3
  %10 = tail call ptr @Perl_mg_find(ptr noundef nonnull %0, i32 noundef 80) #6
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = tail call ptr @Perl_mg_find(ptr noundef nonnull %0, i32 noundef 68) #6
  %14 = icmp eq ptr %13, null
  br i1 %14, label %34, label %15

15:                                               ; preds = %12, %9
  %16 = icmp slt i64 %1, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %15
  %18 = call fastcc zeroext i1 @S_adjust_index(ptr noundef nonnull %0, ptr noundef %10, ptr noundef nonnull %4) #7
  br i1 %18, label %19, label %77

19:                                               ; preds = %17
  %20 = load i64, ptr %4, align 8, !tbaa !142
  br label %21

21:                                               ; preds = %19, %15
  %22 = phi i64 [ %20, %19 ], [ %1, %15 ]
  %23 = tail call ptr @Perl_sv_newmortal() #6
  tail call void @Perl_sv_upgrade(ptr noundef %23, i32 noundef 10) #6
  %24 = trunc i64 %22 to i32
  %25 = tail call i32 @Perl_mg_copy(ptr noundef nonnull %0, ptr noundef %23, ptr noundef null, i32 noundef %24) #6
  br i1 %11, label %26, label %30

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !138
  %29 = and i32 %28, -524289
  store i32 %29, ptr %27, align 4, !tbaa !138
  br label %30

30:                                               ; preds = %26, %21
  %31 = load ptr, ptr %23, align 8, !tbaa !154
  %32 = getelementptr inbounds %struct.xpvlv, ptr %31, i64 0, i32 9
  store i8 116, ptr %32, align 8, !tbaa !155
  %33 = getelementptr inbounds %struct.xpvlv, ptr %31, i64 0, i32 8
  store ptr %23, ptr %33, align 8, !tbaa !157
  br label %77

34:                                               ; preds = %12, %3
  %35 = icmp slt i64 %1, 0
  br i1 %35, label %36, label %52, !prof !158

36:                                               ; preds = %34
  %37 = load i32, ptr %5, align 4, !tbaa !138
  %38 = and i32 %37, 8388608
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = tail call i32 @Perl_mg_size(ptr noundef nonnull %0) #6
  %42 = sext i32 %41 to i64
  br label %47

43:                                               ; preds = %36
  %44 = load ptr, ptr %0, align 8, !tbaa !116
  %45 = getelementptr inbounds %struct.xpvav, ptr %44, i64 0, i32 2
  %46 = load i64, ptr %45, align 8, !tbaa !120
  br label %47

47:                                               ; preds = %43, %40
  %48 = phi i64 [ %42, %40 ], [ %46, %43 ]
  %49 = add nsw i64 %1, 1
  %50 = add i64 %49, %48
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %77, label %52

52:                                               ; preds = %47, %34
  %53 = phi i64 [ %50, %47 ], [ %1, %34 ]
  %54 = load ptr, ptr %0, align 8, !tbaa !116
  %55 = getelementptr inbounds %struct.xpvav, ptr %54, i64 0, i32 2
  %56 = load i64, ptr %55, align 8, !tbaa !120
  %57 = icmp sgt i64 %53, %56
  br i1 %57, label %64, label %58, !prof !159

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !123
  %61 = getelementptr inbounds ptr, ptr %60, i64 %53
  %62 = load ptr, ptr %61, align 8, !tbaa !124
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %69, !prof !160

64:                                               ; preds = %52, %58, %76
  %65 = icmp eq i32 %2, 0
  br i1 %65, label %77, label %66, !prof !161

66:                                               ; preds = %64
  %67 = tail call ptr @Perl_newSV(i64 noundef 0) #6
  %68 = tail call ptr @Perl_av_store(ptr noundef nonnull %0, i64 noundef %53, ptr noundef %67) #7
  br label %77

69:                                               ; preds = %58
  %70 = load i32, ptr %5, align 4, !tbaa !109
  %71 = icmp sgt i32 %70, -1
  br i1 %71, label %77, label %72, !prof !162

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.sv, ptr %62, i64 0, i32 2
  %74 = load i32, ptr %73, align 4, !tbaa !138
  %75 = icmp eq i32 %74, 255
  br i1 %75, label %76, label %77, !prof !163

76:                                               ; preds = %72
  store ptr null, ptr %61, align 8, !tbaa !124
  br label %64

77:                                               ; preds = %30, %17, %69, %72, %66, %64, %47
  %78 = phi ptr [ null, %47 ], [ %68, %66 ], [ null, %64 ], [ %61, %72 ], [ %61, %69 ], [ null, %17 ], [ %33, %30 ]
  ret ptr %78
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i1 @S_adjust_index(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #1 !prof !164 !PGOFuncName !165 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %102, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !166
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = tail call ptr @Perl_newRV(ptr noundef %0) #6
  %11 = tail call ptr @Perl_sv_2mortal(ptr noundef %10) #6
  br label %12

12:                                               ; preds = %5, %9
  %13 = phi ptr [ %11, %9 ], [ %7, %5 ]
  %14 = getelementptr inbounds %struct.sv, ptr %13, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !138
  %16 = and i32 %15, 2097152
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = tail call i32 @Perl_mg_get(ptr noundef nonnull %13) #6
  %20 = load i32, ptr %14, align 4, !tbaa !138
  br label %21

21:                                               ; preds = %12, %18
  %22 = phi i32 [ %15, %12 ], [ %20, %18 ]
  %23 = and i32 %22, 2048
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %102, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.sv, ptr %13, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !123
  %28 = getelementptr inbounds %struct.sv, ptr %27, i64 0, i32 2
  %29 = load i32, ptr %28, align 4, !tbaa !138
  %30 = and i32 %29, 1048576
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %102, label %32

32:                                               ; preds = %25
  %33 = load ptr, ptr %27, align 8, !tbaa !154
  %34 = load ptr, ptr %33, align 8, !tbaa !169
  %35 = tail call ptr @Perl_hv_common(ptr noundef %34, ptr noundef null, ptr noundef nonnull @.str.1, i64 noundef 16, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #6
  %36 = icmp eq ptr %35, null
  br i1 %36, label %102, label %37

37:                                               ; preds = %32
  %38 = load ptr, ptr %35, align 8, !tbaa !124
  %39 = getelementptr inbounds %struct.sv, ptr %38, i64 0, i32 2
  %40 = load i32, ptr %39, align 4, !tbaa !138
  %41 = and i32 %40, 255
  %42 = icmp eq i32 %41, 9
  br i1 %42, label %43, label %102

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.sv, ptr %38, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !123
  %46 = load ptr, ptr %45, align 8, !tbaa !171
  %47 = icmp eq ptr %46, null
  br i1 %47, label %102, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.sv, ptr %46, i64 0, i32 2
  %50 = load i32, ptr %49, align 4, !tbaa !138
  %51 = and i32 %50, 2097152
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %48
  %54 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %46, i32 noundef 2) #6
  br i1 %54, label %120, label %102

55:                                               ; preds = %48
  %56 = and i32 %50, 65280
  %57 = icmp ne i32 %56, 0
  %58 = and i32 %50, 255
  %59 = icmp eq i32 %58, 8
  %60 = or i1 %57, %59
  %61 = and i32 %50, 16777471
  %62 = icmp eq i32 %61, 16777226
  %63 = or i1 %62, %60
  br i1 %63, label %64, label %102

64:                                               ; preds = %55
  %65 = and i32 %50, 1024
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %81, label %67

67:                                               ; preds = %64
  %68 = load ptr, ptr %46, align 8, !tbaa !154
  %69 = icmp eq ptr %68, null
  br i1 %69, label %102, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.xpv, ptr %68, i64 0, i32 2
  %72 = load i64, ptr %71, align 8, !tbaa !173
  %73 = icmp ugt i64 %72, 1
  br i1 %73, label %120, label %74

74:                                               ; preds = %70
  %75 = icmp eq i64 %72, 0
  br i1 %75, label %102, label %76

76:                                               ; preds = %74
  %77 = getelementptr inbounds %struct.sv, ptr %46, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !123
  %79 = load i8, ptr %78, align 1, !tbaa !123
  %80 = icmp eq i8 %79, 48
  br i1 %80, label %102, label %120

81:                                               ; preds = %64
  %82 = and i32 %50, 768
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %100, label %84

84:                                               ; preds = %81
  %85 = and i32 %50, 256
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %84
  %88 = load ptr, ptr %46, align 8, !tbaa !154
  %89 = getelementptr inbounds %struct.xpviv, ptr %88, i64 0, i32 4
  %90 = load i64, ptr %89, align 8, !tbaa !123
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %120

92:                                               ; preds = %87, %84
  %93 = and i32 %50, 512
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %102, label %95

95:                                               ; preds = %92
  %96 = load ptr, ptr %46, align 8, !tbaa !154
  %97 = getelementptr inbounds %struct.xpvnv, ptr %96, i64 0, i32 5
  %98 = load double, ptr %97, align 8, !tbaa !123
  %99 = fcmp une double %98, 0.000000e+00
  br i1 %99, label %120, label %102

100:                                              ; preds = %81
  %101 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %46, i32 noundef 0) #6
  br i1 %101, label %120, label %102

102:                                              ; preds = %95, %55, %32, %37, %43, %100, %92, %67, %74, %76, %53, %21, %25, %3
  %103 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %104 = load i32, ptr %103, align 4, !tbaa !138
  %105 = and i32 %104, 8388608
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %102
  %108 = tail call i32 @Perl_mg_size(ptr noundef nonnull %0) #6
  %109 = sext i32 %108 to i64
  br label %114

110:                                              ; preds = %102
  %111 = load ptr, ptr %0, align 8, !tbaa !116
  %112 = getelementptr inbounds %struct.xpvav, ptr %111, i64 0, i32 2
  %113 = load i64, ptr %112, align 8, !tbaa !120
  br label %114

114:                                              ; preds = %110, %107
  %115 = phi i64 [ %109, %107 ], [ %113, %110 ]
  %116 = add nsw i64 %115, 1
  %117 = load i64, ptr %2, align 8, !tbaa !142
  %118 = add nsw i64 %116, %117
  store i64 %118, ptr %2, align 8, !tbaa !142
  %119 = icmp slt i64 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %53, %70, %76, %87, %95, %100, %114
  br label %121

121:                                              ; preds = %114, %120
  %122 = phi i1 [ true, %120 ], [ false, %114 ]
  ret i1 %122
}

; Function Attrs: optsize
declare void @Perl_sv_upgrade(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_mg_copy(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_mg_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @Perl_av_store(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #1 !prof !175 {
  %4 = alloca i64, align 8
  store i64 %1, ptr %4, align 8, !tbaa !142
  %5 = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !176
  %7 = and i32 %6, 8388608
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9, !prof !177

9:                                                ; preds = %3
  %10 = tail call ptr @Perl_mg_find(ptr noundef nonnull %0, i32 noundef 80) #6
  %11 = icmp eq ptr %10, null
  br i1 %11, label %26, label %12, !prof !178

12:                                               ; preds = %9
  %13 = icmp slt i64 %1, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %12
  %15 = call fastcc zeroext i1 @S_adjust_index(ptr noundef nonnull %0, ptr noundef nonnull %10, ptr noundef nonnull %4) #7
  %16 = icmp ne ptr %2, null
  %17 = and i1 %16, %15
  br i1 %17, label %18, label %174

18:                                               ; preds = %14
  %19 = load i64, ptr %4, align 8, !tbaa !142
  br label %22

20:                                               ; preds = %12
  %21 = icmp eq ptr %2, null
  br i1 %21, label %174, label %22

22:                                               ; preds = %18, %20
  %23 = phi i64 [ %19, %18 ], [ %1, %20 ]
  %24 = trunc i64 %23 to i32
  %25 = tail call i32 @Perl_mg_copy(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef null, i32 noundef %24) #6
  br label %174

26:                                               ; preds = %9
  %27 = load i32, ptr %5, align 4, !tbaa !176
  br label %28

28:                                               ; preds = %26, %3
  %29 = phi i32 [ %27, %26 ], [ %6, %3 ]
  %30 = icmp slt i64 %1, 0
  br i1 %30, label %31, label %48, !prof !179

31:                                               ; preds = %28
  %32 = and i32 %29, 8388608
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = tail call i32 @Perl_mg_size(ptr noundef nonnull %0) #6
  %36 = sext i32 %35 to i64
  br label %41

37:                                               ; preds = %31
  %38 = load ptr, ptr %0, align 8, !tbaa !116
  %39 = getelementptr inbounds %struct.xpvav, ptr %38, i64 0, i32 2
  %40 = load i64, ptr %39, align 8, !tbaa !120
  br label %41

41:                                               ; preds = %37, %34
  %42 = phi i64 [ %36, %34 ], [ %40, %37 ]
  %43 = add nsw i64 %1, 1
  %44 = add i64 %43, %42
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %174, label %46

46:                                               ; preds = %41
  %47 = load i32, ptr %5, align 4, !tbaa !176
  br label %48

48:                                               ; preds = %46, %28
  %49 = phi i64 [ %44, %46 ], [ %1, %28 ]
  %50 = phi i32 [ %47, %46 ], [ %29, %28 ]
  %51 = and i32 %50, 134283264
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %69, label %53, !prof !180

53:                                               ; preds = %48
  %54 = and i32 %50, 8388608
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = tail call i32 @Perl_mg_size(ptr noundef nonnull %0) #6
  %58 = sext i32 %57 to i64
  br label %63

59:                                               ; preds = %53
  %60 = load ptr, ptr %0, align 8, !tbaa !116
  %61 = getelementptr inbounds %struct.xpvav, ptr %60, i64 0, i32 2
  %62 = load i64, ptr %61, align 8, !tbaa !120
  br label %63

63:                                               ; preds = %59, %56
  %64 = phi i64 [ %58, %56 ], [ %62, %59 ]
  %65 = icmp slt i64 %49, %64
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  tail call void @Perl_croak_no_modify() #6
  br label %67

67:                                               ; preds = %63, %66
  %68 = load i32, ptr %5, align 4, !tbaa !109
  br label %69

69:                                               ; preds = %67, %48
  %70 = phi i32 [ %68, %67 ], [ %50, %48 ]
  %71 = and i32 %70, 1073741824
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %76, !prof !181

73:                                               ; preds = %69
  %74 = icmp sgt i32 %70, -1
  br i1 %74, label %76, label %75, !prof !182

75:                                               ; preds = %73
  tail call void @Perl_av_reify(ptr noundef nonnull %0) #7
  br label %76

76:                                               ; preds = %75, %73, %69
  %77 = load ptr, ptr %0, align 8, !tbaa !116
  %78 = getelementptr inbounds %struct.xpvav, ptr %77, i64 0, i32 3
  %79 = load i64, ptr %78, align 8, !tbaa !117
  %80 = icmp sgt i64 %49, %79
  br i1 %80, label %81, label %83, !prof !183

81:                                               ; preds = %76
  tail call void @Perl_av_extend(ptr noundef nonnull %0, i64 noundef %49) #7
  %82 = load ptr, ptr %0, align 8, !tbaa !116
  br label %83

83:                                               ; preds = %81, %76
  %84 = phi ptr [ %82, %81 ], [ %77, %76 ]
  %85 = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !123
  %87 = getelementptr inbounds %struct.xpvav, ptr %84, i64 0, i32 2
  %88 = load i64, ptr %87, align 8, !tbaa !120
  %89 = icmp slt i64 %88, %49
  %90 = load i32, ptr %5, align 4, !tbaa !109
  %91 = and i32 %90, 1073741824
  %92 = icmp eq i32 %91, 0
  br i1 %89, label %93, label %126, !prof !184

93:                                               ; preds = %83
  br i1 %92, label %94, label %123, !prof !185

94:                                               ; preds = %93
  %95 = load ptr, ptr @PL_curstack, align 8, !tbaa !124
  %96 = icmp eq ptr %95, %0
  br i1 %96, label %97, label %110

97:                                               ; preds = %94
  %98 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !124
  %99 = load ptr, ptr @PL_stack_base, align 8, !tbaa !124
  %100 = ptrtoint ptr %98 to i64
  %101 = ptrtoint ptr %99 to i64
  %102 = sub i64 %100, %101
  %103 = ashr exact i64 %102, 3
  %104 = icmp sgt i64 %49, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %97
  %106 = getelementptr inbounds ptr, ptr %99, i64 %49
  store ptr %106, ptr @PL_stack_sp, align 8, !tbaa !124
  %107 = load ptr, ptr %0, align 8, !tbaa !116
  %108 = getelementptr inbounds %struct.xpvav, ptr %107, i64 0, i32 2
  %109 = load i64, ptr %108, align 8, !tbaa !120
  br label %110

110:                                              ; preds = %105, %97, %94
  %111 = phi i64 [ %88, %94 ], [ %88, %97 ], [ %109, %105 ]
  %112 = phi ptr [ %84, %94 ], [ %84, %97 ], [ %107, %105 ]
  br label %113

113:                                              ; preds = %110, %113
  %114 = phi i64 [ %121, %113 ], [ %111, %110 ]
  %115 = phi ptr [ %119, %113 ], [ %112, %110 ]
  %116 = getelementptr inbounds %struct.xpvav, ptr %115, i64 0, i32 2
  %117 = add nsw i64 %114, 1
  store i64 %117, ptr %116, align 8, !tbaa !120
  %118 = getelementptr inbounds ptr, ptr %86, i64 %117
  store ptr null, ptr %118, align 8, !tbaa !124
  %119 = load ptr, ptr %0, align 8, !tbaa !116
  %120 = getelementptr inbounds %struct.xpvav, ptr %119, i64 0, i32 2
  %121 = load i64, ptr %120, align 8, !tbaa !120
  %122 = icmp slt i64 %121, %49
  br i1 %122, label %113, label %123, !llvm.loop !186

123:                                              ; preds = %113, %93
  %124 = phi ptr [ %84, %93 ], [ %119, %113 ]
  %125 = getelementptr inbounds %struct.xpvav, ptr %124, i64 0, i32 2
  store i64 %49, ptr %125, align 8, !tbaa !120
  br label %131

126:                                              ; preds = %83
  br i1 %92, label %131, label %127, !prof !187

127:                                              ; preds = %126
  %128 = getelementptr inbounds ptr, ptr %86, i64 %49
  %129 = load ptr, ptr %128, align 8, !tbaa !124
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %129) #7
  %130 = load i32, ptr %5, align 4, !tbaa !109
  br label %131

131:                                              ; preds = %126, %127, %123
  %132 = phi i32 [ %90, %126 ], [ %130, %127 ], [ %90, %123 ]
  %133 = getelementptr inbounds ptr, ptr %86, i64 %49
  store ptr %2, ptr %133, align 8, !tbaa !124
  %134 = and i32 %132, 4194304
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %174, label %136, !prof !177

136:                                              ; preds = %131
  %137 = load ptr, ptr %0, align 8, !tbaa !116
  %138 = getelementptr inbounds %struct.xpvmg, ptr %137, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !123
  %140 = icmp eq ptr %139, null
  br i1 %140, label %172, label %141, !prof !188

141:                                              ; preds = %136, %165
  %142 = phi ptr [ %167, %165 ], [ %139, %136 ]
  %143 = phi i8 [ %166, %165 ], [ 1, %136 ]
  %144 = getelementptr inbounds %struct.magic, ptr %142, i64 0, i32 3
  %145 = load i8, ptr %144, align 2, !tbaa !189
  %146 = zext i8 %145 to i64
  %147 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %146
  %148 = load i32, ptr %147, align 4, !tbaa !176
  %149 = and i32 %148, 16400
  %150 = icmp eq i32 %149, 16400
  br i1 %150, label %151, label %165, !prof !178

151:                                              ; preds = %141
  %152 = icmp eq ptr %2, null
  br i1 %152, label %157, label %153, !prof !190

153:                                              ; preds = %151
  %154 = trunc i64 %49 to i32
  %155 = add i8 %145, 32
  %156 = zext i8 %155 to i32
  tail call void @Perl_sv_magic(ptr noundef nonnull %2, ptr noundef nonnull %0, i32 noundef %156, ptr noundef null, i32 noundef %154) #6
  br label %157

157:                                              ; preds = %153, %151
  %158 = load i16, ptr @PL_delaymagic, align 2, !tbaa !191
  %159 = icmp eq i16 %158, 0
  br i1 %159, label %165, label %160, !prof !192

160:                                              ; preds = %157
  %161 = load i8, ptr %144, align 2, !tbaa !189
  %162 = icmp eq i8 %161, 73
  br i1 %162, label %163, label %165, !prof !193

163:                                              ; preds = %160
  %164 = or i16 %158, 4
  store i16 %164, ptr @PL_delaymagic, align 2, !tbaa !191
  br label %165

165:                                              ; preds = %157, %160, %163, %141
  %166 = phi i8 [ 0, %163 ], [ %143, %160 ], [ %143, %157 ], [ %143, %141 ]
  %167 = load ptr, ptr %142, align 8, !tbaa !123
  %168 = icmp eq ptr %167, null
  br i1 %168, label %169, label %141, !prof !194, !llvm.loop !195

169:                                              ; preds = %165
  %170 = and i8 %166, 1
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %174, label %172, !prof !196

172:                                              ; preds = %136, %169
  %173 = tail call i32 @Perl_mg_set(ptr noundef nonnull %0) #6
  br label %174

174:                                              ; preds = %131, %172, %169, %14, %22, %20, %41
  %175 = phi ptr [ null, %41 ], [ null, %20 ], [ null, %22 ], [ null, %14 ], [ %133, %169 ], [ %133, %172 ], [ %133, %131 ]
  ret ptr %175
}

; Function Attrs: optsize
declare ptr @Perl_newSV(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newRV(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_mg_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_hv_common(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i1 @Perl_sv_2bool_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_croak_no_modify() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_SvREFCNT_dec(ptr noundef %0) unnamed_addr #1 !prof !197 !PGOFuncName !198 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3, !prof !199

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !129
  %6 = icmp ugt i32 %5, 1
  br i1 %6, label %7, label %9, !prof !200

7:                                                ; preds = %3
  %8 = add i32 %5, -1
  store i32 %8, ptr %4, align 8, !tbaa !129
  br label %10

9:                                                ; preds = %3
  tail call void @Perl_sv_free2(ptr noundef nonnull %0, i32 noundef %5) #6
  br label %10

10:                                               ; preds = %7, %9, %1
  ret void
}

; Function Attrs: optsize
declare void @Perl_sv_magic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_mg_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_av_make(i64 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 !prof !201 {
  %3 = tail call ptr @Perl_newSV_type(i32 noundef 11) #6
  %4 = icmp eq i64 %0, 0
  br i1 %4, label %40, label %5, !prof !202

5:                                                ; preds = %2
  %6 = shl i64 %0, 3
  %7 = tail call ptr @Perl_safesysmalloc(i64 noundef %6) #6
  %8 = load ptr, ptr %3, align 8, !tbaa !116
  %9 = getelementptr inbounds %struct.xpvav, ptr %8, i64 0, i32 4
  store ptr %7, ptr %9, align 8, !tbaa !133
  %10 = getelementptr inbounds %struct.av, ptr %3, i64 0, i32 3
  store ptr %7, ptr %10, align 8, !tbaa !123
  %11 = add nsw i64 %0, -1
  %12 = getelementptr inbounds %struct.xpvav, ptr %8, i64 0, i32 3
  store i64 %11, ptr %12, align 8, !tbaa !117
  %13 = getelementptr inbounds %struct.xpvav, ptr %8, i64 0, i32 2
  store i64 -1, ptr %13, align 8, !tbaa !120
  tail call void @Perl_push_scope() #6
  tail call void @Perl_save_pushptr(ptr noundef nonnull %3, i32 noundef 11) #6
  %14 = icmp sgt i64 %0, 0
  br i1 %14, label %15, label %36, !prof !203

15:                                               ; preds = %5, %25
  %16 = phi i64 [ %34, %25 ], [ 0, %5 ]
  %17 = phi ptr [ %33, %25 ], [ %1, %5 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !124
  %19 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !138
  %21 = and i32 %20, 2097152
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23, !prof !204

23:                                               ; preds = %15
  %24 = tail call i32 @Perl_mg_get(ptr noundef nonnull %18) #6
  br label %25

25:                                               ; preds = %15, %23
  %26 = load ptr, ptr %3, align 8, !tbaa !116
  %27 = getelementptr inbounds %struct.xpvav, ptr %26, i64 0, i32 2
  %28 = load i64, ptr %27, align 8, !tbaa !120
  %29 = add nsw i64 %28, 1
  store i64 %29, ptr %27, align 8, !tbaa !120
  %30 = tail call ptr @Perl_newSV(i64 noundef 0) #6
  %31 = getelementptr inbounds ptr, ptr %7, i64 %16
  store ptr %30, ptr %31, align 8, !tbaa !124
  %32 = load ptr, ptr %17, align 8, !tbaa !124
  tail call void @Perl_sv_setsv_flags(ptr noundef %30, ptr noundef %32, i32 noundef 1552) #6
  %33 = getelementptr inbounds ptr, ptr %17, i64 1
  %34 = add nuw nsw i64 %16, 1
  %35 = icmp eq i64 %34, %0
  br i1 %35, label %36, label %15, !prof !205, !llvm.loop !206

36:                                               ; preds = %25, %5
  %37 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !129
  %39 = add i32 %38, 1
  store i32 %39, ptr %37, align 8, !tbaa !129
  tail call void @Perl_pop_scope() #6
  br label %40

40:                                               ; preds = %36, %2
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_push_scope() local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_save_pushptr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_setsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_pop_scope() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_av_clear(ptr noundef %0) local_unnamed_addr #1 !prof !207 {
  %2 = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !109
  %4 = and i32 %3, 134283264
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !208

6:                                                ; preds = %1
  tail call void @Perl_croak_no_modify() #6
  %7 = load i32, ptr %2, align 4, !tbaa !109
  br label %8

8:                                                ; preds = %6, %1
  %9 = phi i32 [ %7, %6 ], [ %3, %1 ]
  %10 = and i32 %9, 8388608
  %11 = icmp eq i32 %10, 0
  %12 = load ptr, ptr %0, align 8, !tbaa !116
  br i1 %11, label %29, label %13, !prof !209

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.xpvmg, ptr %12, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !123
  %16 = load i16, ptr @PL_delaymagic, align 2, !tbaa !191
  %17 = icmp ne i16 %16, 0
  %18 = icmp ne ptr %15, null
  %19 = select i1 %17, i1 %18, i1 false
  br i1 %19, label %20, label %26, !prof !210

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.magic, ptr %15, i64 0, i32 3
  %22 = load i8, ptr %21, align 2, !tbaa !189
  %23 = icmp eq i8 %22, 73
  br i1 %23, label %24, label %26, !prof !211

24:                                               ; preds = %20
  %25 = or i16 %16, 4
  store i16 %25, ptr @PL_delaymagic, align 2, !tbaa !191
  br label %29

26:                                               ; preds = %20, %13
  %27 = tail call i32 @Perl_mg_clear(ptr noundef nonnull %0) #6
  %28 = load ptr, ptr %0, align 8, !tbaa !116
  br label %29

29:                                               ; preds = %24, %26, %8
  %30 = phi ptr [ %12, %24 ], [ %28, %26 ], [ %12, %8 ]
  %31 = getelementptr inbounds %struct.xpvav, ptr %30, i64 0, i32 3
  %32 = load i64, ptr %31, align 8, !tbaa !117
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %72, label %34, !prof !212

34:                                               ; preds = %29
  %35 = load i32, ptr %2, align 4, !tbaa !109
  %36 = and i32 %35, 1073741824
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %54, label %38, !prof !213

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !123
  %41 = getelementptr inbounds %struct.xpvav, ptr %30, i64 0, i32 2
  %42 = load i64, ptr %41, align 8, !tbaa !120
  %43 = add nsw i64 %42, 1
  tail call void @Perl_push_scope() #6
  %44 = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !214
  %46 = add i32 %45, 1
  store i32 %46, ptr %44, align 8, !tbaa !214
  tail call void @Perl_save_pushptr(ptr noundef nonnull %0, i32 noundef 11) #6
  %47 = icmp eq i64 %43, 0
  br i1 %47, label %54, label %48, !prof !215

48:                                               ; preds = %38, %48
  %49 = phi i64 [ %50, %48 ], [ %43, %38 ]
  %50 = add nsw i64 %49, -1
  %51 = getelementptr inbounds ptr, ptr %40, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !124
  store ptr null, ptr %51, align 8, !tbaa !124
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %52) #7
  %53 = icmp eq i64 %50, 0
  br i1 %53, label %54, label %48, !prof !216, !llvm.loop !217

54:                                               ; preds = %48, %38, %34
  %55 = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !123
  %57 = load ptr, ptr %0, align 8, !tbaa !116
  %58 = getelementptr inbounds %struct.xpvav, ptr %57, i64 0, i32 4
  %59 = load ptr, ptr %58, align 8, !tbaa !133
  %60 = icmp eq ptr %56, %59
  br i1 %60, label %69, label %61, !prof !218

61:                                               ; preds = %54
  %62 = ptrtoint ptr %59 to i64
  %63 = ptrtoint ptr %56 to i64
  %64 = sub i64 %63, %62
  %65 = ashr exact i64 %64, 3
  %66 = getelementptr inbounds %struct.xpvav, ptr %57, i64 0, i32 3
  %67 = load i64, ptr %66, align 8, !tbaa !117
  %68 = add nsw i64 %67, %65
  store i64 %68, ptr %66, align 8, !tbaa !117
  store ptr %59, ptr %55, align 8, !tbaa !123
  br label %69

69:                                               ; preds = %61, %54
  %70 = getelementptr inbounds %struct.xpvav, ptr %57, i64 0, i32 2
  store i64 -1, ptr %70, align 8, !tbaa !120
  br i1 %37, label %72, label %71, !prof !213

71:                                               ; preds = %69
  tail call void @Perl_pop_scope() #6
  br label %72

72:                                               ; preds = %69, %71, %29
  ret void
}

; Function Attrs: optsize
declare i32 @Perl_mg_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_av_undef(ptr noundef %0) local_unnamed_addr #1 !prof !164 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !138
  %4 = and i32 %3, 8388608
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @Perl_mg_find(ptr noundef nonnull %0, i32 noundef 80) #6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @Perl_av_fill(ptr noundef nonnull %0, i64 noundef -1) #7
  br label %10

10:                                               ; preds = %1, %9, %6
  %11 = load i32, ptr %2, align 4, !tbaa !109
  %12 = and i32 %11, 1073741824
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %32, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %0, align 8, !tbaa !116
  %16 = getelementptr inbounds %struct.xpvav, ptr %15, i64 0, i32 2
  %17 = load i64, ptr %16, align 8, !tbaa !120
  %18 = add nsw i64 %17, 1
  tail call void @Perl_push_scope() #6
  %19 = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !214
  %21 = add i32 %20, 1
  store i32 %21, ptr %19, align 8, !tbaa !214
  tail call void @Perl_save_pushptr(ptr noundef nonnull %0, i32 noundef 11) #6
  %22 = icmp eq i64 %18, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 3
  br label %25

25:                                               ; preds = %23, %25
  %26 = phi i64 [ %18, %23 ], [ %28, %25 ]
  %27 = load ptr, ptr %24, align 8, !tbaa !123
  %28 = add nsw i64 %26, -1
  %29 = getelementptr inbounds ptr, ptr %27, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !124
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %30) #7
  %31 = icmp eq i64 %28, 0
  br i1 %31, label %32, label %25, !llvm.loop !219

32:                                               ; preds = %25, %14, %10
  %33 = load ptr, ptr %0, align 8, !tbaa !116
  %34 = getelementptr inbounds %struct.xpvav, ptr %33, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !133
  tail call void @Perl_safesysfree(ptr noundef %35) #6
  %36 = load ptr, ptr %0, align 8, !tbaa !116
  %37 = getelementptr inbounds %struct.xpvav, ptr %36, i64 0, i32 4
  store ptr null, ptr %37, align 8, !tbaa !133
  %38 = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 3
  store ptr null, ptr %38, align 8, !tbaa !123
  %39 = getelementptr inbounds %struct.xpvav, ptr %36, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %39, i8 -1, i64 16, i1 false)
  %40 = load i32, ptr %2, align 4, !tbaa !109
  %41 = and i32 %40, 8388608
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %32
  %44 = tail call i32 @Perl_mg_clear(ptr noundef nonnull %0) #6
  br label %45

45:                                               ; preds = %43, %32
  br i1 %13, label %47, label %46

46:                                               ; preds = %45
  tail call void @Perl_pop_scope() #6
  br label %47

47:                                               ; preds = %46, %45
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_av_fill(ptr noundef %0, i64 noundef %1) local_unnamed_addr #1 !prof !220 {
  %3 = tail call i64 @llvm.smax.i64(i64 %1, i64 -1)
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !138
  %6 = and i32 %5, 8388608
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %21, label %8, !prof !221

8:                                                ; preds = %2
  %9 = tail call ptr @Perl_mg_find(ptr noundef nonnull %0, i32 noundef 80) #6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11, !prof !222

11:                                               ; preds = %8
  %12 = tail call ptr @Perl_sv_newmortal() #6
  %13 = add nsw i64 %3, 1
  tail call void @Perl_sv_setiv(ptr noundef %12, i64 noundef %13) #6
  %14 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 7), align 8, !tbaa !124
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str.6, i32 noundef 0) #6
  store ptr %17, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 7), align 8, !tbaa !124
  br label %18

18:                                               ; preds = %11, %16
  %19 = phi ptr [ %17, %16 ], [ %14, %11 ]
  %20 = tail call ptr (ptr, ptr, ptr, i32, i32, ...) @Perl_magic_methcall(ptr noundef nonnull %0, ptr noundef nonnull %9, ptr noundef %19, i32 noundef 4, i32 noundef 1, ptr noundef %12) #6
  br label %62

21:                                               ; preds = %2, %8
  %22 = load ptr, ptr %0, align 8, !tbaa !116
  %23 = getelementptr inbounds %struct.xpvav, ptr %22, i64 0, i32 3
  %24 = load i64, ptr %23, align 8, !tbaa !117
  %25 = icmp sgt i64 %3, %24
  br i1 %25, label %60, label %26, !prof !223

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.xpvav, ptr %22, i64 0, i32 2
  %28 = load i64, ptr %27, align 8, !tbaa !120
  %29 = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !123
  %31 = load i32, ptr %4, align 4, !tbaa !109
  %32 = and i32 %31, 1073741824
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34, !prof !224

34:                                               ; preds = %26
  %35 = icmp sgt i64 %28, %3
  br i1 %35, label %44, label %52, !prof !225

36:                                               ; preds = %26
  %37 = icmp slt i64 %28, %3
  br i1 %37, label %38, label %52

38:                                               ; preds = %36
  %39 = shl i64 %28, 3
  %40 = getelementptr i8, ptr %30, i64 %39
  %41 = getelementptr i8, ptr %40, i64 8
  %42 = sub i64 %3, %28
  %43 = shl i64 %42, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %41, i8 0, i64 %43, i1 false), !tbaa !124
  br label %52

44:                                               ; preds = %34, %44
  %45 = phi i64 [ %48, %44 ], [ %28, %34 ]
  %46 = getelementptr inbounds ptr, ptr %30, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !124
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %47) #7
  %48 = add nsw i64 %45, -1
  store ptr null, ptr %46, align 8, !tbaa !124
  %49 = icmp sgt i64 %48, %3
  br i1 %49, label %44, label %50, !prof !226, !llvm.loop !227

50:                                               ; preds = %44
  %51 = load i32, ptr %4, align 4, !tbaa !109
  br label %52

52:                                               ; preds = %50, %38, %34, %36
  %53 = phi i32 [ %51, %50 ], [ %31, %38 ], [ %31, %34 ], [ %31, %36 ]
  %54 = load ptr, ptr %0, align 8, !tbaa !116
  %55 = getelementptr inbounds %struct.xpvav, ptr %54, i64 0, i32 2
  store i64 %3, ptr %55, align 8, !tbaa !120
  %56 = and i32 %53, 4194304
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %62, label %58, !prof !228

58:                                               ; preds = %52
  %59 = tail call i32 @Perl_mg_set(ptr noundef nonnull %0) #6
  br label %62

60:                                               ; preds = %21
  %61 = tail call ptr @Perl_av_store(ptr noundef nonnull %0, i64 noundef %3, ptr noundef null) #7
  br label %62

62:                                               ; preds = %60, %58, %52, %18
  ret void
}

; Function Attrs: optsize
declare void @Perl_safesysfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_av_create_and_push(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #1 !prof !229 {
  %3 = load ptr, ptr %0, align 8, !tbaa !124
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7, !prof !230

5:                                                ; preds = %2
  %6 = tail call ptr @Perl_newSV_type(i32 noundef 11) #6
  store ptr %6, ptr %0, align 8, !tbaa !124
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi ptr [ %6, %5 ], [ %3, %2 ]
  tail call void @Perl_av_push(ptr noundef %8, ptr noundef %1) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_av_push(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 !prof !231 {
  %3 = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !176
  %5 = and i32 %4, 134283264
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7, !prof !232

7:                                                ; preds = %2
  tail call void @Perl_croak_no_modify() #6
  %8 = load i32, ptr %3, align 4, !tbaa !138
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi i32 [ %8, %7 ], [ %4, %2 ]
  %11 = and i32 %10, 8388608
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %24, label %13, !prof !233

13:                                               ; preds = %9
  %14 = tail call ptr @Perl_mg_find(ptr noundef nonnull %0, i32 noundef 80) #6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16, !prof !234

16:                                               ; preds = %13
  %17 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 9), align 8, !tbaa !124
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str.2, i32 noundef 0) #6
  store ptr %20, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 9), align 8, !tbaa !124
  br label %21

21:                                               ; preds = %16, %19
  %22 = phi ptr [ %20, %19 ], [ %17, %16 ]
  %23 = tail call ptr (ptr, ptr, ptr, i32, i32, ...) @Perl_magic_methcall(ptr noundef nonnull %0, ptr noundef nonnull %14, ptr noundef %22, i32 noundef 4, i32 noundef 1, ptr noundef %1) #6
  br label %30

24:                                               ; preds = %9, %13
  %25 = load ptr, ptr %0, align 8, !tbaa !116
  %26 = getelementptr inbounds %struct.xpvav, ptr %25, i64 0, i32 2
  %27 = load i64, ptr %26, align 8, !tbaa !120
  %28 = add nsw i64 %27, 1
  %29 = tail call ptr @Perl_av_store(ptr noundef nonnull %0, i64 noundef %28, ptr noundef %1) #7
  br label %30

30:                                               ; preds = %24, %21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_av_pop(ptr noundef %0) local_unnamed_addr #1 !prof !235 {
  %2 = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !176
  %4 = and i32 %3, 134283264
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !236

6:                                                ; preds = %1
  tail call void @Perl_croak_no_modify() #6
  %7 = load i32, ptr %2, align 4, !tbaa !138
  br label %8

8:                                                ; preds = %6, %1
  %9 = phi i32 [ %7, %6 ], [ %3, %1 ]
  %10 = and i32 %9, 8388608
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %28, label %12, !prof !236

12:                                               ; preds = %8
  %13 = tail call ptr @Perl_mg_find(ptr noundef nonnull %0, i32 noundef 80) #6
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17, !prof !222

15:                                               ; preds = %12
  %16 = load i32, ptr %2, align 4, !tbaa !138
  br label %28

17:                                               ; preds = %12
  %18 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 10), align 16, !tbaa !124
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str.3, i32 noundef 0) #6
  store ptr %21, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 10), align 16, !tbaa !124
  br label %22

22:                                               ; preds = %17, %20
  %23 = phi ptr [ %21, %20 ], [ %18, %17 ]
  %24 = tail call ptr (ptr, ptr, ptr, i32, i32, ...) @Perl_magic_methcall(ptr noundef nonnull %0, ptr noundef nonnull %13, ptr noundef %23, i32 noundef 0, i32 noundef 0) #6
  %25 = icmp eq ptr %24, null
  br i1 %25, label %59, label %26

26:                                               ; preds = %22
  %27 = tail call ptr @Perl_newSVsv(ptr noundef nonnull %24) #6
  br label %59

28:                                               ; preds = %15, %8
  %29 = phi i32 [ %16, %15 ], [ %9, %8 ]
  %30 = and i32 %29, 8388608
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32, !prof !236

32:                                               ; preds = %28
  %33 = tail call i32 @Perl_mg_size(ptr noundef nonnull %0) #6
  %34 = sext i32 %33 to i64
  br label %39

35:                                               ; preds = %28
  %36 = load ptr, ptr %0, align 8, !tbaa !116
  %37 = getelementptr inbounds %struct.xpvav, ptr %36, i64 0, i32 2
  %38 = load i64, ptr %37, align 8, !tbaa !120
  br label %39

39:                                               ; preds = %35, %32
  %40 = phi i64 [ %34, %32 ], [ %38, %35 ]
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %59, label %42, !prof !237

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !123
  %45 = load ptr, ptr %0, align 8, !tbaa !116
  %46 = getelementptr inbounds %struct.xpvav, ptr %45, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !120
  %48 = getelementptr inbounds ptr, ptr %44, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !124
  %50 = add nsw i64 %47, -1
  store i64 %50, ptr %46, align 8, !tbaa !120
  store ptr null, ptr %48, align 8, !tbaa !124
  %51 = load i32, ptr %2, align 4, !tbaa !109
  %52 = and i32 %51, 4194304
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54, !prof !236

54:                                               ; preds = %42
  %55 = tail call i32 @Perl_mg_set(ptr noundef nonnull %0) #6
  br label %56

56:                                               ; preds = %54, %42
  %57 = icmp eq ptr %49, null
  %58 = select i1 %57, ptr @PL_sv_undef, ptr %49, !prof !237
  br label %59

59:                                               ; preds = %39, %22, %26, %56
  %60 = phi ptr [ %58, %56 ], [ %27, %26 ], [ null, %22 ], [ @PL_sv_undef, %39 ]
  ret ptr %60
}

; Function Attrs: optsize
declare ptr @Perl_newSVsv(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @Perl_av_create_and_unshift_one(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #1 !prof !238 {
  %3 = load ptr, ptr %0, align 8, !tbaa !124
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7, !prof !239

5:                                                ; preds = %2
  %6 = tail call ptr @Perl_newSV_type(i32 noundef 11) #6
  store ptr %6, ptr %0, align 8, !tbaa !124
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi ptr [ %6, %5 ], [ %3, %2 ]
  tail call void @Perl_av_unshift(ptr noundef %8, i64 noundef 1) #7
  %9 = load ptr, ptr %0, align 8, !tbaa !124
  %10 = tail call ptr @Perl_av_store(ptr noundef %9, i64 noundef 0, ptr noundef %1) #7
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_av_unshift(ptr noundef %0, i64 noundef %1) local_unnamed_addr #1 !prof !240 {
  %3 = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !176
  %5 = and i32 %4, 134283264
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7, !prof !241

7:                                                ; preds = %2
  tail call void @Perl_croak_no_modify() #6
  %8 = load i32, ptr %3, align 4, !tbaa !138
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi i32 [ %8, %7 ], [ %4, %2 ]
  %11 = and i32 %10, 8388608
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %25, label %13, !prof !241

13:                                               ; preds = %9
  %14 = tail call ptr @Perl_mg_find(ptr noundef nonnull %0, i32 noundef 80) #6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16, !prof !222

16:                                               ; preds = %13
  %17 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 12), align 16, !tbaa !124
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str.4, i32 noundef 0) #6
  store ptr %20, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 12), align 16, !tbaa !124
  br label %21

21:                                               ; preds = %16, %19
  %22 = phi ptr [ %20, %19 ], [ %17, %16 ]
  %23 = trunc i64 %1 to i32
  %24 = tail call ptr (ptr, ptr, ptr, i32, i32, ...) @Perl_magic_methcall(ptr noundef nonnull %0, ptr noundef nonnull %14, ptr noundef %22, i32 noundef 516, i32 noundef %23) #6
  br label %84

25:                                               ; preds = %9, %13
  %26 = icmp slt i64 %1, 1
  br i1 %26, label %84, label %27, !prof !242

27:                                               ; preds = %25
  %28 = load i32, ptr %3, align 4, !tbaa !109
  %29 = and i32 %28, 1073741824
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34, !prof !243

31:                                               ; preds = %27
  %32 = icmp sgt i32 %28, -1
  br i1 %32, label %34, label %33, !prof !244

33:                                               ; preds = %31
  tail call void @Perl_av_reify(ptr noundef nonnull %0) #7
  br label %34

34:                                               ; preds = %33, %31, %27
  %35 = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !123
  %37 = load ptr, ptr %0, align 8, !tbaa !116
  %38 = getelementptr inbounds %struct.xpvav, ptr %37, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !133
  %40 = icmp eq ptr %36, %39
  br i1 %40, label %57, label %41, !prof !245

41:                                               ; preds = %34
  %42 = ptrtoint ptr %39 to i64
  %43 = ptrtoint ptr %36 to i64
  %44 = sub i64 %43, %42
  %45 = ashr exact i64 %44, 3
  %46 = tail call i64 @llvm.smin.i64(i64 %45, i64 %1)
  %47 = sub nsw i64 %1, %46
  %48 = getelementptr inbounds %struct.xpvav, ptr %37, i64 0, i32 2
  %49 = load <2 x i64>, ptr %48, align 8, !tbaa !142
  %50 = insertelement <2 x i64> poison, i64 %46, i64 0
  %51 = shufflevector <2 x i64> %50, <2 x i64> poison, <2 x i32> zeroinitializer
  %52 = add nsw <2 x i64> %49, %51
  store <2 x i64> %52, ptr %48, align 8, !tbaa !142
  %53 = load ptr, ptr %35, align 8, !tbaa !123
  %54 = sub nsw i64 0, %46
  %55 = getelementptr inbounds ptr, ptr %53, i64 %54
  store ptr %55, ptr %35, align 8, !tbaa !123
  %56 = icmp eq i64 %47, 0
  br i1 %56, label %84, label %57, !prof !246

57:                                               ; preds = %34, %41
  %58 = phi i64 [ %47, %41 ], [ %1, %34 ]
  %59 = getelementptr inbounds %struct.xpvav, ptr %37, i64 0, i32 2
  %60 = load i64, ptr %59, align 8, !tbaa !120
  %61 = icmp sgt i64 %60, 0
  br i1 %61, label %62, label %63, !prof !247

62:                                               ; preds = %57
  br label %63

63:                                               ; preds = %57, %62
  %64 = phi i64 [ %60, %62 ], [ 0, %57 ]
  %65 = add nsw i64 %64, %58
  %66 = add nsw i64 %65, %60
  tail call void @Perl_av_extend(ptr noundef nonnull %0, i64 noundef %66) #7
  %67 = load ptr, ptr %0, align 8, !tbaa !116
  %68 = getelementptr inbounds %struct.xpvav, ptr %67, i64 0, i32 2
  %69 = load i64, ptr %68, align 8, !tbaa !120
  %70 = add nsw i64 %69, %65
  store i64 %70, ptr %68, align 8, !tbaa !120
  %71 = load ptr, ptr %35, align 8, !tbaa !123
  %72 = getelementptr inbounds ptr, ptr %71, i64 %65
  %73 = shl i64 %60, 3
  %74 = add i64 %73, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %72, ptr align 1 %71, i64 %74, i1 false)
  %75 = shl nuw i64 %65, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %71, i8 0, i64 %75, i1 false), !tbaa !124
  %76 = load ptr, ptr %0, align 8, !tbaa !116
  %77 = getelementptr inbounds %struct.xpvav, ptr %76, i64 0, i32 2
  %78 = load <2 x i64>, ptr %77, align 8, !tbaa !142
  %79 = insertelement <2 x i64> poison, i64 %64, i64 0
  %80 = shufflevector <2 x i64> %79, <2 x i64> poison, <2 x i32> zeroinitializer
  %81 = sub nsw <2 x i64> %78, %80
  store <2 x i64> %81, ptr %77, align 8, !tbaa !142
  %82 = load ptr, ptr %35, align 8, !tbaa !123
  %83 = getelementptr inbounds ptr, ptr %82, i64 %64
  store ptr %83, ptr %35, align 8, !tbaa !123
  br label %84

84:                                               ; preds = %41, %63, %25, %21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_av_shift(ptr noundef %0) local_unnamed_addr #1 !prof !248 {
  %2 = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !176
  %4 = and i32 %3, 134283264
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !249

6:                                                ; preds = %1
  tail call void @Perl_croak_no_modify() #6
  %7 = load i32, ptr %2, align 4, !tbaa !138
  br label %8

8:                                                ; preds = %6, %1
  %9 = phi i32 [ %7, %6 ], [ %3, %1 ]
  %10 = and i32 %9, 8388608
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %28, label %12, !prof !249

12:                                               ; preds = %8
  %13 = tail call ptr @Perl_mg_find(ptr noundef nonnull %0, i32 noundef 80) #6
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17, !prof !222

15:                                               ; preds = %12
  %16 = load i32, ptr %2, align 4, !tbaa !138
  br label %28

17:                                               ; preds = %12
  %18 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 11), align 8, !tbaa !124
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str.5, i32 noundef 0) #6
  store ptr %21, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 11), align 8, !tbaa !124
  br label %22

22:                                               ; preds = %17, %20
  %23 = phi ptr [ %21, %20 ], [ %18, %17 ]
  %24 = tail call ptr (ptr, ptr, ptr, i32, i32, ...) @Perl_magic_methcall(ptr noundef nonnull %0, ptr noundef nonnull %13, ptr noundef %23, i32 noundef 0, i32 noundef 0) #6
  %25 = icmp eq ptr %24, null
  br i1 %25, label %65, label %26

26:                                               ; preds = %22
  %27 = tail call ptr @Perl_newSVsv(ptr noundef nonnull %24) #6
  br label %65

28:                                               ; preds = %15, %8
  %29 = phi i32 [ %16, %15 ], [ %9, %8 ]
  %30 = and i32 %29, 8388608
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32, !prof !249

32:                                               ; preds = %28
  %33 = tail call i32 @Perl_mg_size(ptr noundef nonnull %0) #6
  %34 = sext i32 %33 to i64
  br label %39

35:                                               ; preds = %28
  %36 = load ptr, ptr %0, align 8, !tbaa !116
  %37 = getelementptr inbounds %struct.xpvav, ptr %36, i64 0, i32 2
  %38 = load i64, ptr %37, align 8, !tbaa !120
  br label %39

39:                                               ; preds = %35, %32
  %40 = phi i64 [ %34, %32 ], [ %38, %35 ]
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %65, label %42, !prof !250

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !123
  %45 = load ptr, ptr %44, align 8, !tbaa !124
  %46 = load i32, ptr %2, align 4, !tbaa !109
  %47 = and i32 %46, 1073741824
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49, !prof !251

49:                                               ; preds = %42
  store ptr null, ptr %44, align 8, !tbaa !124
  %50 = load ptr, ptr %43, align 8, !tbaa !123
  br label %51

51:                                               ; preds = %49, %42
  %52 = phi ptr [ %50, %49 ], [ %44, %42 ]
  %53 = getelementptr inbounds ptr, ptr %52, i64 1
  store ptr %53, ptr %43, align 8, !tbaa !123
  %54 = load ptr, ptr %0, align 8, !tbaa !116
  %55 = getelementptr inbounds %struct.xpvav, ptr %54, i64 0, i32 2
  %56 = load <2 x i64>, ptr %55, align 8, !tbaa !142
  %57 = add nsw <2 x i64> %56, <i64 -1, i64 -1>
  store <2 x i64> %57, ptr %55, align 8, !tbaa !142
  %58 = and i32 %46, 4194304
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60, !prof !252

60:                                               ; preds = %51
  %61 = tail call i32 @Perl_mg_set(ptr noundef nonnull %0) #6
  br label %62

62:                                               ; preds = %60, %51
  %63 = icmp eq ptr %45, null
  %64 = select i1 %63, ptr @PL_sv_undef, ptr %45, !prof !253
  br label %65

65:                                               ; preds = %39, %22, %26, %62
  %66 = phi ptr [ %64, %62 ], [ %27, %26 ], [ null, %22 ], [ @PL_sv_undef, %39 ]
  ret ptr %66
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @Perl_av_len(ptr noundef %0) local_unnamed_addr #1 !prof !254 {
  %2 = tail call fastcc i64 @S_av_top_index(ptr noundef %0) #7
  ret i64 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @S_av_top_index(ptr noundef %0) unnamed_addr #1 !prof !254 !PGOFuncName !255 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !138
  %4 = and i32 %3, 8388608
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6, !prof !256

6:                                                ; preds = %1
  %7 = tail call i32 @Perl_mg_size(ptr noundef nonnull %0) #6
  %8 = sext i32 %7 to i64
  br label %13

9:                                                ; preds = %1
  %10 = load ptr, ptr %0, align 8, !tbaa !116
  %11 = getelementptr inbounds %struct.xpvav, ptr %10, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !120
  br label %13

13:                                               ; preds = %9, %6
  %14 = phi i64 [ %8, %6 ], [ %12, %9 ]
  ret i64 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_av_delete(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #1 !prof !164 {
  %4 = alloca i64, align 8
  store i64 %1, ptr %4, align 8, !tbaa !142
  %5 = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !109
  %7 = and i32 %6, 134283264
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  tail call void @Perl_croak_no_modify() #6
  %10 = load i32, ptr %5, align 4, !tbaa !109
  br label %11

11:                                               ; preds = %9, %3
  %12 = phi i32 [ %10, %9 ], [ %6, %3 ]
  %13 = and i32 %12, 8388608
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %38, label %15

15:                                               ; preds = %11
  %16 = tail call ptr @Perl_mg_find(ptr noundef nonnull %0, i32 noundef 80) #6
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = tail call ptr @Perl_mg_find(ptr noundef nonnull %0, i32 noundef 68) #6
  %20 = icmp eq ptr %19, null
  br i1 %20, label %38, label %21

21:                                               ; preds = %18, %15
  %22 = icmp slt i64 %1, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %21
  %24 = call fastcc zeroext i1 @S_adjust_index(ptr noundef nonnull %0, ptr noundef %16, ptr noundef nonnull %4) #7
  br i1 %24, label %25, label %106

25:                                               ; preds = %23
  %26 = load i64, ptr %4, align 8, !tbaa !142
  br label %27

27:                                               ; preds = %25, %21
  %28 = phi i64 [ %26, %25 ], [ %1, %21 ]
  %29 = tail call ptr @Perl_av_fetch(ptr noundef nonnull %0, i64 noundef %28, i32 noundef 1) #7
  %30 = icmp eq ptr %29, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %29, align 8, !tbaa !124
  %33 = tail call i32 @Perl_mg_clear(ptr noundef %32) #6
  %34 = tail call ptr @Perl_mg_find(ptr noundef %32, i32 noundef 112) #6
  %35 = icmp eq ptr %34, null
  br i1 %35, label %106, label %36

36:                                               ; preds = %31
  %37 = tail call i32 @Perl_sv_unmagic(ptr noundef %32, i32 noundef 112) #6
  br label %106

38:                                               ; preds = %18, %11, %27
  %39 = phi i64 [ %28, %27 ], [ %1, %11 ], [ %1, %18 ]
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %38
  %42 = load i32, ptr %5, align 4, !tbaa !138
  %43 = and i32 %42, 8388608
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = tail call i32 @Perl_mg_size(ptr noundef nonnull %0) #6
  %47 = sext i32 %46 to i64
  br label %52

48:                                               ; preds = %41
  %49 = load ptr, ptr %0, align 8, !tbaa !116
  %50 = getelementptr inbounds %struct.xpvav, ptr %49, i64 0, i32 2
  %51 = load i64, ptr %50, align 8, !tbaa !120
  br label %52

52:                                               ; preds = %48, %45
  %53 = phi i64 [ %47, %45 ], [ %51, %48 ]
  %54 = add nsw i64 %39, 1
  %55 = add i64 %54, %53
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %106, label %57

57:                                               ; preds = %52, %38
  %58 = phi i64 [ %55, %52 ], [ %39, %38 ]
  %59 = load ptr, ptr %0, align 8, !tbaa !116
  %60 = getelementptr inbounds %struct.xpvav, ptr %59, i64 0, i32 2
  %61 = load i64, ptr %60, align 8, !tbaa !120
  %62 = icmp sgt i64 %58, %61
  br i1 %62, label %106, label %63

63:                                               ; preds = %57
  %64 = load i32, ptr %5, align 4, !tbaa !109
  %65 = and i32 %64, -1073741824
  %66 = icmp eq i32 %65, -2147483648
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  tail call void @Perl_av_reify(ptr noundef nonnull %0) #7
  br label %68

68:                                               ; preds = %67, %63
  %69 = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !123
  %71 = getelementptr inbounds ptr, ptr %70, i64 %58
  %72 = load ptr, ptr %71, align 8, !tbaa !124
  store ptr null, ptr %71, align 8, !tbaa !124
  %73 = load ptr, ptr %0, align 8, !tbaa !116
  %74 = getelementptr inbounds %struct.xpvav, ptr %73, i64 0, i32 2
  %75 = load i64, ptr %74, align 8, !tbaa !120
  %76 = icmp eq i64 %58, %75
  br i1 %76, label %77, label %88

77:                                               ; preds = %68, %82
  %78 = phi i64 [ %80, %82 ], [ %58, %68 ]
  %79 = phi i64 [ %83, %82 ], [ %58, %68 ]
  %80 = add nsw i64 %78, -1
  store i64 %80, ptr %74, align 8, !tbaa !120
  %81 = icmp sgt i64 %79, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = add nsw i64 %79, -1
  %84 = load ptr, ptr %69, align 8, !tbaa !123
  %85 = getelementptr inbounds ptr, ptr %84, i64 %83
  %86 = load ptr, ptr %85, align 8, !tbaa !124
  %87 = icmp eq ptr %86, null
  br i1 %87, label %77, label %88, !llvm.loop !257

88:                                               ; preds = %77, %82, %68
  %89 = load i32, ptr %5, align 4, !tbaa !109
  %90 = and i32 %89, 4194304
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %88
  %93 = tail call i32 @Perl_mg_set(ptr noundef nonnull %0) #6
  br label %94

94:                                               ; preds = %88, %92
  %95 = icmp eq ptr %72, null
  br i1 %95, label %106, label %96

96:                                               ; preds = %94
  %97 = and i32 %2, 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %96
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %72) #7
  br label %106

100:                                              ; preds = %96
  %101 = load i32, ptr %5, align 4, !tbaa !109
  %102 = and i32 %101, 1073741824
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %100
  %105 = tail call ptr @Perl_sv_2mortal(ptr noundef nonnull %72) #6
  br label %106

106:                                              ; preds = %31, %23, %36, %94, %100, %104, %57, %52, %99
  %107 = phi ptr [ null, %99 ], [ null, %52 ], [ null, %57 ], [ %72, %104 ], [ %72, %100 ], [ null, %94 ], [ null, %31 ], [ null, %23 ], [ %32, %36 ]
  ret ptr %107
}

; Function Attrs: optsize
declare i32 @Perl_sv_unmagic(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_SvREFCNT_dec_NN(ptr noundef %0) unnamed_addr #1 !prof !164 !PGOFuncName !258 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !129
  %4 = icmp ugt i32 %3, 1
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 8, !tbaa !129
  br label %8

7:                                                ; preds = %1
  tail call void @Perl_sv_free2(ptr noundef nonnull %0, i32 noundef %3) #6
  br label %8

8:                                                ; preds = %7, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i1 @Perl_av_exists(ptr noundef %0, i64 noundef %1) local_unnamed_addr #1 !prof !164 {
  %3 = alloca i64, align 8
  store i64 %1, ptr %3, align 8, !tbaa !142
  %4 = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !109
  %6 = and i32 %5, 8388608
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %96, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @Perl_mg_find(ptr noundef nonnull %0, i32 noundef 80) #6
  %10 = tail call ptr @Perl_mg_find(ptr noundef nonnull %0, i32 noundef 68) #6
  %11 = icmp ne ptr %9, null
  %12 = icmp ne ptr %10, null
  %13 = select i1 %11, i1 true, i1 %12
  br i1 %13, label %14, label %96

14:                                               ; preds = %8
  %15 = icmp slt i64 %1, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %14
  %17 = call fastcc zeroext i1 @S_adjust_index(ptr noundef nonnull %0, ptr noundef %9, ptr noundef nonnull %3) #7
  br i1 %17, label %18, label %128

18:                                               ; preds = %16
  %19 = load i64, ptr %3, align 8, !tbaa !142
  br label %20

20:                                               ; preds = %18, %14
  %21 = phi i64 [ %19, %18 ], [ %1, %14 ]
  %22 = icmp sgt i64 %21, -1
  %23 = select i1 %22, i1 %12, i1 false
  br i1 %23, label %24, label %38

24:                                               ; preds = %20
  %25 = load i32, ptr %4, align 4, !tbaa !138
  %26 = and i32 %25, 8388608
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = tail call i32 @Perl_mg_size(ptr noundef nonnull %0) #6
  %30 = sext i32 %29 to i64
  br label %35

31:                                               ; preds = %24
  %32 = load ptr, ptr %0, align 8, !tbaa !116
  %33 = getelementptr inbounds %struct.xpvav, ptr %32, i64 0, i32 2
  %34 = load i64, ptr %33, align 8, !tbaa !120
  br label %35

35:                                               ; preds = %31, %28
  %36 = phi i64 [ %30, %28 ], [ %34, %31 ]
  %37 = icmp sle i64 %21, %36
  br label %128

38:                                               ; preds = %20
  %39 = tail call ptr @Perl_sv_newmortal() #6
  %40 = trunc i64 %21 to i32
  %41 = tail call i32 @Perl_mg_copy(ptr noundef nonnull %0, ptr noundef %39, ptr noundef null, i32 noundef %40) #6
  %42 = tail call ptr @Perl_mg_find(ptr noundef %39, i32 noundef 112) #6
  %43 = icmp eq ptr %42, null
  br i1 %43, label %96, label %44

44:                                               ; preds = %38
  %45 = tail call i32 @Perl_magic_existspack(ptr noundef %39, ptr noundef nonnull %42) #6
  %46 = getelementptr inbounds %struct.sv, ptr %39, i64 0, i32 2
  %47 = load i32, ptr %46, align 4, !tbaa !138
  %48 = and i32 %47, 65280
  %49 = icmp ne i32 %48, 0
  %50 = and i32 %47, 255
  %51 = icmp eq i32 %50, 8
  %52 = or i1 %49, %51
  %53 = and i32 %47, 16777471
  %54 = icmp eq i32 %53, 16777226
  %55 = or i1 %54, %52
  br i1 %55, label %56, label %128

56:                                               ; preds = %44
  %57 = and i32 %47, 1024
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %73, label %59

59:                                               ; preds = %56
  %60 = load ptr, ptr %39, align 8, !tbaa !154
  %61 = icmp eq ptr %60, null
  br i1 %61, label %128, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.xpv, ptr %60, i64 0, i32 2
  %64 = load i64, ptr %63, align 8, !tbaa !173
  %65 = icmp ugt i64 %64, 1
  br i1 %65, label %128, label %66

66:                                               ; preds = %62
  %67 = icmp eq i64 %64, 0
  br i1 %67, label %128, label %68

68:                                               ; preds = %66
  %69 = getelementptr inbounds %struct.sv, ptr %39, i64 0, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !123
  %71 = load i8, ptr %70, align 1, !tbaa !123
  %72 = icmp ne i8 %71, 48
  br label %128

73:                                               ; preds = %56
  %74 = and i32 %47, 768
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %94, label %76

76:                                               ; preds = %73
  %77 = and i32 %47, 256
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %76
  %80 = load ptr, ptr %39, align 8, !tbaa !154
  %81 = getelementptr inbounds %struct.xpviv, ptr %80, i64 0, i32 4
  %82 = load i64, ptr %81, align 8, !tbaa !123
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %128

84:                                               ; preds = %79, %76
  %85 = and i32 %47, 512
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %128, label %87

87:                                               ; preds = %84
  %88 = load ptr, ptr %39, align 8, !tbaa !154
  %89 = getelementptr inbounds %struct.xpvnv, ptr %88, i64 0, i32 5
  %90 = load double, ptr %89, align 8, !tbaa !123
  %91 = fcmp uno double %90, 0.000000e+00
  br i1 %91, label %128, label %92

92:                                               ; preds = %87
  %93 = fcmp une double %90, 0.000000e+00
  br label %128

94:                                               ; preds = %73
  %95 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %39, i32 noundef 0) #6
  br label %128

96:                                               ; preds = %38, %8, %2
  %97 = phi i64 [ %1, %2 ], [ %1, %8 ], [ %21, %38 ]
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %99, label %115

99:                                               ; preds = %96
  %100 = load i32, ptr %4, align 4, !tbaa !138
  %101 = and i32 %100, 8388608
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %99
  %104 = tail call i32 @Perl_mg_size(ptr noundef nonnull %0) #6
  %105 = sext i32 %104 to i64
  br label %110

106:                                              ; preds = %99
  %107 = load ptr, ptr %0, align 8, !tbaa !116
  %108 = getelementptr inbounds %struct.xpvav, ptr %107, i64 0, i32 2
  %109 = load i64, ptr %108, align 8, !tbaa !120
  br label %110

110:                                              ; preds = %106, %103
  %111 = phi i64 [ %105, %103 ], [ %109, %106 ]
  %112 = add nsw i64 %97, 1
  %113 = add i64 %112, %111
  %114 = icmp slt i64 %113, 0
  br i1 %114, label %128, label %115

115:                                              ; preds = %110, %96
  %116 = phi i64 [ %113, %110 ], [ %97, %96 ]
  %117 = load ptr, ptr %0, align 8, !tbaa !116
  %118 = getelementptr inbounds %struct.xpvav, ptr %117, i64 0, i32 2
  %119 = load i64, ptr %118, align 8, !tbaa !120
  %120 = icmp sgt i64 %116, %119
  br i1 %120, label %127, label %121

121:                                              ; preds = %115
  %122 = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 3
  %123 = load ptr, ptr %122, align 8, !tbaa !123
  %124 = getelementptr inbounds ptr, ptr %123, i64 %116
  %125 = load ptr, ptr %124, align 8, !tbaa !124
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %128

127:                                              ; preds = %121, %115
  br label %128

128:                                              ; preds = %94, %44, %62, %68, %66, %59, %84, %92, %87, %79, %35, %16, %121, %110, %127
  %129 = phi i1 [ false, %127 ], [ false, %110 ], [ true, %121 ], [ %37, %35 ], [ false, %16 ], [ %95, %94 ], [ false, %44 ], [ false, %59 ], [ true, %62 ], [ false, %66 ], [ %72, %68 ], [ true, %79 ], [ false, %84 ], [ true, %87 ], [ %93, %92 ]
  ret i1 %129
}

; Function Attrs: optsize
declare i32 @Perl_magic_existspack(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local nonnull ptr @Perl_av_arylen_p(ptr noundef %0) local_unnamed_addr #1 !prof !164 {
  %2 = tail call fastcc ptr @S_get_aux_mg(ptr noundef %0) #7
  %3 = getelementptr inbounds %struct.magic, ptr %2, i64 0, i32 6
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @S_get_aux_mg(ptr noundef %0) unnamed_addr #1 !prof !164 !PGOFuncName !259 {
  %2 = tail call ptr @Perl_mg_find(ptr noundef %0, i32 noundef 64) #6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %9

4:                                                ; preds = %1
  %5 = tail call ptr @Perl_sv_magicext(ptr noundef %0, ptr noundef null, i32 noundef 64, ptr noundef nonnull getelementptr inbounds ([31 x %struct.mgvtbl], ptr @PL_magic_vtables, i64 0, i64 1), ptr noundef null, i32 noundef 0) #6
  %6 = getelementptr inbounds %struct.magic, ptr %5, i64 0, i32 4
  %7 = load i8, ptr %6, align 1, !tbaa !260
  %8 = or i8 %7, 2
  store i8 %8, ptr %6, align 1, !tbaa !260
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi ptr [ %2, %1 ], [ %5, %4 ]
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @Perl_sv_magicext(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_av_iter_p(ptr noundef %0) local_unnamed_addr #1 !prof !164 {
  %2 = tail call fastcc ptr @S_get_aux_mg(ptr noundef %0) #7
  %3 = getelementptr inbounds %struct.magic, ptr %2, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !261
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.magic, ptr %2, i64 0, i32 5
  store i64 8, ptr %7, align 8, !tbaa !262
  %8 = tail call ptr @Perl_safesyscalloc(i64 noundef 1, i64 noundef 8) #6
  store ptr %8, ptr %3, align 8, !tbaa !261
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi ptr [ %8, %6 ], [ %4, %1 ]
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @Perl_safesyscalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #4

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!107}

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
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106}
!36 = !{ptr @Perl_av_extend, ptr @Perl_mg_find, i64 23}
!37 = !{ptr @Perl_av_extend, ptr @Perl_sv_newmortal, i64 1}
!38 = !{ptr @Perl_av_extend, ptr @Perl_sv_setiv, i64 1}
!39 = !{ptr @Perl_av_extend, ptr @Perl_magic_methcall, i64 1}
!40 = !{ptr @Perl_av_extend, ptr @Perl_av_extend_guts, i64 723528}
!41 = !{ptr @Perl_av_extend_guts, ptr @Perl_safesysrealloc, i64 276062}
!42 = !{ptr @Perl_av_extend_guts, ptr @Perl_safesysmalloc, i64 118738}
!43 = !{ptr @Perl_av_fetch, ptr @Perl_mg_find, i64 1}
!44 = !{ptr @Perl_av_fetch, ptr @Perl_sv_newmortal, i64 1}
!45 = !{ptr @Perl_av_fetch, ptr @Perl_sv_upgrade, i64 1}
!46 = !{ptr @Perl_av_fetch, ptr @Perl_mg_copy, i64 1}
!47 = !{ptr @Perl_av_fetch, ptr @Perl_mg_size, i64 1}
!48 = !{ptr @Perl_av_fetch, ptr @Perl_newSV, i64 18475}
!49 = !{ptr @Perl_av_fetch, ptr @Perl_av_store, i64 18475}
!50 = !{ptr @Perl_av_store, ptr @Perl_mg_find, i64 28}
!51 = !{ptr @Perl_av_store, ptr @Perl_mg_copy, i64 1}
!52 = !{ptr @Perl_av_store, ptr @Perl_av_reify, i64 34}
!53 = !{ptr @Perl_av_store, ptr @Perl_av_extend, i64 316880}
!54 = !{ptr @Perl_av_store, ptr @S_SvREFCNT_dec, i64 8705}
!55 = !{ptr @Perl_av_store, ptr @Perl_sv_magic, i64 26}
!56 = !{ptr @Perl_av_store, ptr @Perl_mg_set, i64 4}
!57 = !{ptr @S_SvREFCNT_dec, ptr @Perl_sv_free2, i64 1}
!58 = !{ptr @Perl_av_make, ptr @Perl_newSV_type, i64 224485}
!59 = !{ptr @Perl_av_make, ptr @Perl_safesysmalloc, i64 107701}
!60 = !{ptr @Perl_av_make, ptr @Perl_push_scope, i64 107701}
!61 = !{ptr @Perl_av_make, ptr @Perl_save_pushptr, i64 107701}
!62 = !{ptr @Perl_av_make, ptr @Perl_mg_get, i64 1}
!63 = !{ptr @Perl_av_make, ptr @Perl_newSV, i64 533664}
!64 = !{ptr @Perl_av_make, ptr @Perl_sv_setsv_flags, i64 533664}
!65 = !{ptr @Perl_av_make, ptr @Perl_pop_scope, i64 107701}
!66 = !{ptr @Perl_av_clear, ptr @Perl_croak_no_modify, i64 1}
!67 = !{ptr @Perl_av_clear, ptr @Perl_mg_clear, i64 3}
!68 = !{ptr @Perl_av_clear, ptr @Perl_push_scope, i64 421327}
!69 = !{ptr @Perl_av_clear, ptr @Perl_save_pushptr, i64 421327}
!70 = !{ptr @Perl_av_clear, ptr @S_SvREFCNT_dec, i64 1527056}
!71 = !{ptr @Perl_av_clear, ptr @Perl_pop_scope, i64 421327}
!72 = !{ptr @Perl_av_fill, ptr @Perl_mg_find, i64 1}
!73 = !{ptr @Perl_av_fill, ptr @Perl_sv_newmortal, i64 1}
!74 = !{ptr @Perl_av_fill, ptr @Perl_sv_setiv, i64 1}
!75 = !{ptr @Perl_av_fill, ptr @Perl_magic_methcall, i64 1}
!76 = !{ptr @Perl_av_fill, ptr @S_SvREFCNT_dec, i64 1}
!77 = !{ptr @Perl_av_fill, ptr @Perl_mg_set, i64 1}
!78 = !{ptr @Perl_av_fill, ptr @Perl_av_store, i64 1}
!79 = !{ptr @Perl_av_create_and_push, ptr @Perl_newSV_type, i64 2}
!80 = !{ptr @Perl_av_create_and_push, ptr @Perl_av_push, i64 219}
!81 = !{ptr @Perl_av_push, ptr @Perl_croak_no_modify, i64 1}
!82 = !{ptr @Perl_av_push, ptr @Perl_mg_find, i64 4}
!83 = !{ptr @Perl_av_push, ptr @Perl_magic_methcall, i64 1}
!84 = !{ptr @Perl_av_push, ptr @Perl_av_store, i64 1014}
!85 = !{ptr @Perl_av_pop, ptr @Perl_croak_no_modify, i64 1}
!86 = !{ptr @Perl_av_pop, ptr @Perl_mg_find, i64 1}
!87 = !{ptr @Perl_av_pop, ptr @Perl_magic_methcall, i64 1}
!88 = !{ptr @Perl_av_pop, ptr @Perl_newSVsv, i64 1}
!89 = !{ptr @Perl_av_pop, ptr @Perl_mg_size, i64 1}
!90 = !{ptr @Perl_av_pop, ptr @Perl_mg_set, i64 1}
!91 = !{ptr @Perl_av_create_and_unshift_one, ptr @Perl_newSV_type, i64 1}
!92 = !{ptr @Perl_av_create_and_unshift_one, ptr @Perl_av_unshift, i64 1}
!93 = !{ptr @Perl_av_create_and_unshift_one, ptr @Perl_av_store, i64 1}
!94 = !{ptr @Perl_av_unshift, ptr @Perl_croak_no_modify, i64 1}
!95 = !{ptr @Perl_av_unshift, ptr @Perl_mg_find, i64 1}
!96 = !{ptr @Perl_av_unshift, ptr @Perl_magic_methcall, i64 1}
!97 = !{ptr @Perl_av_unshift, ptr @Perl_av_reify, i64 16}
!98 = !{ptr @Perl_av_unshift, ptr @Perl_av_extend, i64 6414}
!99 = !{ptr @Perl_av_shift, ptr @Perl_croak_no_modify, i64 1}
!100 = !{ptr @Perl_av_shift, ptr @Perl_mg_find, i64 1}
!101 = !{ptr @Perl_av_shift, ptr @Perl_magic_methcall, i64 1}
!102 = !{ptr @Perl_av_shift, ptr @Perl_newSVsv, i64 1}
!103 = !{ptr @Perl_av_shift, ptr @Perl_mg_size, i64 1}
!104 = !{ptr @Perl_av_shift, ptr @Perl_mg_set, i64 1}
!105 = !{ptr @Perl_av_len, ptr @S_av_top_index, i64 127}
!106 = !{ptr @S_av_top_index, ptr @Perl_mg_size, i64 1}
!107 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!108 = !{!"function_entry_count", i64 51}
!109 = !{!110, !114, i64 12}
!110 = !{!"av", !111, i64 0, !114, i64 8, !114, i64 12, !112, i64 16}
!111 = !{!"any pointer", !112, i64 0}
!112 = !{!"omnipotent char", !113, i64 0}
!113 = !{!"Simple C/C++ TBAA"}
!114 = !{!"int", !112, i64 0}
!115 = !{!"branch_weights", i32 52, i32 1}
!116 = !{!110, !111, i64 0}
!117 = !{!118, !119, i64 24}
!118 = !{!"xpvav", !111, i64 0, !112, i64 8, !119, i64 16, !119, i64 24, !111, i64 32}
!119 = !{!"long", !112, i64 0}
!120 = !{!118, !119, i64 16}
!121 = !{!"branch_weights", i32 207, i32 1}
!122 = !{!"branch_weights", i32 1, i32 207}
!123 = !{!112, !112, i64 0}
!124 = !{!111, !111, i64 0}
!125 = !{!"branch_weights", i32 3909, i32 207}
!126 = distinct !{!126, !127}
!127 = !{!"llvm.loop.mustprogress"}
!128 = !{!"branch_weights", i32 5475600, i32 4681}
!129 = !{!130, !114, i64 8}
!130 = !{!"sv", !111, i64 0, !114, i64 8, !114, i64 12, !112, i64 16}
!131 = !{!"branch_weights", i32 207, i32 9153}
!132 = distinct !{!132, !127}
!133 = !{!118, !111, i64 32}
!134 = !{!"branch_weights", i32 51, i32 1}
!135 = !{!"branch_weights", i32 1, i32 0}
!136 = distinct !{!136, !127}
!137 = !{!"function_entry_count", i64 723529}
!138 = !{!130, !114, i64 12}
!139 = !{!"branch_weights", i32 723508, i32 23}
!140 = !{!"branch_weights", i32 2054116162, i32 93367486}
!141 = !{!"function_entry_count", i64 726339}
!142 = !{!119, !119, i64 0}
!143 = !{!"branch_weights", i32 394802, i32 331539}
!144 = !{!"branch_weights", i32 2811, i32 391992}
!145 = !{!"branch_weights", i32 391936, i32 57}
!146 = !{!"branch_weights", i32 8798, i32 8544}
!147 = !{!"branch_weights", i32 57, i32 1}
!148 = !{!"branch_weights", i32 118739, i32 276008}
!149 = !{!"branch_weights", i32 1, i32 276008}
!150 = !{!"branch_weights", i32 29, i32 276036}
!151 = !{!"branch_weights", i32 -905608751, i32 604898533}
!152 = !{!"function_entry_count", i64 462188765}
!153 = !{!"branch_weights", i32 462188766, i32 1}
!154 = !{!130, !111, i64 0}
!155 = !{!156, !112, i64 72}
!156 = !{!"xpvlv", !111, i64 0, !112, i64 8, !119, i64 16, !112, i64 24, !112, i64 32, !112, i64 40, !112, i64 48, !119, i64 56, !111, i64 64, !112, i64 72, !112, i64 73}
!157 = !{!156, !111, i64 64}
!158 = !{!"branch_weights", i32 1, i32 462188766}
!159 = !{!"branch_weights", i32 76382, i32 462112385}
!160 = !{!"branch_weights", i32 97, i32 462112289}
!161 = !{!"branch_weights", i32 58004, i32 18475}
!162 = !{!"branch_weights", i32 460605281, i32 1507009}
!163 = !{!"branch_weights", i32 1, i32 1507009}
!164 = !{!"function_entry_count", i64 0}
!165 = !{!"av.c:S_adjust_index"}
!166 = !{!167, !111, i64 32}
!167 = !{!"magic", !111, i64 0, !111, i64 8, !168, i64 16, !112, i64 18, !112, i64 19, !119, i64 24, !111, i64 32, !111, i64 40}
!168 = !{!"short", !112, i64 0}
!169 = !{!170, !111, i64 0}
!170 = !{!"xpvmg", !111, i64 0, !112, i64 8, !119, i64 16, !112, i64 24, !112, i64 32, !112, i64 40}
!171 = !{!172, !111, i64 0}
!172 = !{!"gp", !111, i64 0, !111, i64 8, !111, i64 16, !114, i64 24, !114, i64 28, !111, i64 32, !111, i64 40, !111, i64 48, !111, i64 56, !114, i64 64, !114, i64 67, !111, i64 72}
!173 = !{!174, !119, i64 16}
!174 = !{!"xpv", !111, i64 0, !112, i64 8, !119, i64 16, !112, i64 24}
!175 = !{!"function_entry_count", i64 3306836}
!176 = !{!114, !114, i64 0}
!177 = !{!"branch_weights", i32 3306810, i32 28}
!178 = !{!"branch_weights", i32 28, i32 1}
!179 = !{!"branch_weights", i32 1, i32 3306837}
!180 = !{!"branch_weights", i32 3306837, i32 1}
!181 = !{!"branch_weights", i32 35, i32 3306803}
!182 = !{!"branch_weights", i32 1, i32 35}
!183 = !{!"branch_weights", i32 316880, i32 2989958}
!184 = !{!"branch_weights", i32 3298132, i32 8706}
!185 = !{!"branch_weights", i32 1, i32 3298132}
!186 = distinct !{!186, !127}
!187 = !{!"branch_weights", i32 1, i32 8706}
!188 = !{!"branch_weights", i32 1, i32 223}
!189 = !{!167, !112, i64 18}
!190 = !{!"branch_weights", i32 1, i32 28}
!191 = !{!168, !168, i64 0}
!192 = !{!"branch_weights", i32 4, i32 25}
!193 = !{!"branch_weights", i32 25, i32 1}
!194 = !{!"branch_weights", i32 223, i32 1}
!195 = distinct !{!195, !127}
!196 = !{!"branch_weights", i32 1859580707, i32 287902941}
!197 = !{!"function_entry_count", i64 1535769}
!198 = !{!"av.c:S_SvREFCNT_dec"}
!199 = !{!"branch_weights", i32 1535770, i32 1}
!200 = !{!"branch_weights", i32 1, i32 1527384}
!201 = !{!"function_entry_count", i64 224485}
!202 = !{!"branch_weights", i32 116785, i32 107702}
!203 = !{!"branch_weights", i32 107701, i32 1}
!204 = !{!"branch_weights", i32 533669, i32 1}
!205 = !{!"branch_weights", i32 107701, i32 425968}
!206 = distinct !{!206, !127}
!207 = !{!"function_entry_count", i64 527599}
!208 = !{!"branch_weights", i32 527600, i32 1}
!209 = !{!"branch_weights", i32 527581, i32 20}
!210 = !{!"branch_weights", i32 400, i32 41}
!211 = !{!"branch_weights", i32 20, i32 1}
!212 = !{!"branch_weights", i32 106234, i32 421367}
!213 = !{!"branch_weights", i32 38, i32 421330}
!214 = !{!110, !114, i64 8}
!215 = !{!"branch_weights", i32 1, i32 421329}
!216 = !{!"branch_weights", i32 421329, i32 1105736}
!217 = distinct !{!217, !127}
!218 = !{!"branch_weights", i32 415730, i32 5638}
!219 = distinct !{!219, !127}
!220 = !{!"function_entry_count", i64 5}
!221 = !{!"branch_weights", i32 6, i32 1}
!222 = !{!"branch_weights", i32 0, i32 -2147483648}
!223 = !{!"branch_weights", i32 2, i32 5}
!224 = !{!"branch_weights", i32 1, i32 5}
!225 = !{!"branch_weights", i32 1, i32 4}
!226 = !{!"branch_weights", i32 0, i32 1}
!227 = distinct !{!227, !127}
!228 = !{!"branch_weights", i32 5, i32 1}
!229 = !{!"function_entry_count", i64 219}
!230 = !{!"branch_weights", i32 2, i32 219}
!231 = !{!"function_entry_count", i64 1015}
!232 = !{!"branch_weights", i32 1016, i32 1}
!233 = !{!"branch_weights", i32 1013, i32 4}
!234 = !{!"branch_weights", i32 1610612672, i32 536870976}
!235 = !{!"function_entry_count", i64 5083}
!236 = !{!"branch_weights", i32 5084, i32 1}
!237 = !{!"branch_weights", i32 1, i32 5084}
!238 = !{!"function_entry_count", i64 1}
!239 = !{!"branch_weights", i32 2, i32 1}
!240 = !{!"function_entry_count", i64 6433}
!241 = !{!"branch_weights", i32 6434, i32 1}
!242 = !{!"branch_weights", i32 1, i32 6434}
!243 = !{!"branch_weights", i32 17, i32 6418}
!244 = !{!"branch_weights", i32 1, i32 17}
!245 = !{!"branch_weights", i32 6418, i32 17}
!246 = !{!"branch_weights", i32 -2147483648, i32 0}
!247 = !{!"branch_weights", i32 17, i32 6402}
!248 = !{!"function_entry_count", i64 2238779}
!249 = !{!"branch_weights", i32 2238780, i32 1}
!250 = !{!"branch_weights", i32 262291, i32 1976490}
!251 = !{!"branch_weights", i32 1443463, i32 533028}
!252 = !{!"branch_weights", i32 1976490, i32 1}
!253 = !{!"branch_weights", i32 1, i32 1976490}
!254 = !{!"function_entry_count", i64 127}
!255 = !{!"av.c:S_av_top_index"}
!256 = !{!"branch_weights", i32 128, i32 1}
!257 = distinct !{!257, !127}
!258 = !{!"av.c:S_SvREFCNT_dec_NN"}
!259 = !{!"av.c:S_get_aux_mg"}
!260 = !{!167, !112, i64 19}
!261 = !{!167, !111, i64 40}
!262 = !{!167, !119, i64 24}
