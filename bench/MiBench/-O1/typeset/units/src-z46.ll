; ModuleID = 'src/z46.c'
source_filename = "src/z46.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.LIST = type { ptr, ptr }
%union.FIRST_UNION = type { %struct.FILE_POS }
%struct.FILE_POS = type { i8, i8, i16, i32 }
%union.SECOND_UNION = type { %struct.anon.1 }
%struct.anon.1 = type { i32 }
%union.THIRD_UNION = type { ptr, [8 x i8] }
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, ptr, %union.anon.12 }
%union.FOURTH_UNION = type { %struct.STYLE }
%struct.STYLE = type { %union.anon, %union.anon.10, i16, i16, i32 }
%union.anon = type { %struct.GAP }
%struct.GAP = type { i16, i16 }
%union.anon.10 = type { %struct.GAP }
%union.anon.12 = type { ptr }
%struct.symbol_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i8, i8, i8 }
%struct.head_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, ptr, %union.anon.13, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%union.anon.13 = type { ptr }
%struct.gapobj_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %struct.GAP, i32, i16, i16, ptr, ptr }

@.str = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@no_fpos = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"FindOptimize: type(x) != CLOSURE!\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"FindOptimize: x has no target!\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"FindOptimize: Down(PAR)!\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"FindOptimize: res == nilobj!\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"unable to evaluate %s parameter, assuming value is No\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"@Optimize\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"Yes\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@.str.9 = private unnamed_addr constant [56 x i8] c"value of %s operator is neither Yes nor No, assuming No\00", align 1
@OldCrossDb = external local_unnamed_addr global ptr, align 8
@OptGallSym = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [28 x i8] c"SetOptimize: res == nilobj!\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"SetOptimize: type(res) != CLOSURE!\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"SetOptimize: actual(res) != Opt!\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"SetOptimize: Down(res) == res!\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"SetOptimize: type(y) != PAR!\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"SetOptimize: type(y) != ACAT!\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"SetOptimize: type(y) != ACAT (2)!\00", align 1
@xx_link = external local_unnamed_addr global ptr, align 8
@zz_hold = external local_unnamed_addr global ptr, align 8
@zz_res = external local_unnamed_addr global ptr, align 8
@xx_tmp = external local_unnamed_addr global ptr, align 8
@zz_lengths = external local_unnamed_addr global [0 x i8], align 1
@zz_size = external local_unnamed_addr global i32, align 4
@zz_free = external local_unnamed_addr global [0 x ptr], align 8
@.str.18 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"SetOptimize: num <= 0!\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"SetOptimize: type(z)!\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"GazumpOptimize: type(hd) != HEAD!\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"GazumpOptimize: opt_c!\00", align 1
@zz_tmp = external local_unnamed_addr global ptr, align 8
@.str.25 = private unnamed_addr constant [33 x i8] c"FlushGalley: type(g) != GAP_OBJ!\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"1rt\00", align 1
@.str.27 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"1c\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"CO!\00", align 1
@.str.30 = private unnamed_addr constant [31 x i8] c"CalculateOptimize: type(last)!\00", align 1
@.str.31 = private unnamed_addr constant [32 x i8] c"KillGalley: no opt_constraints!\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"KillGalleyo!\00", align 1
@AllowCrossDb = external local_unnamed_addr global i32, align 4
@NewCrossDb = external local_unnamed_addr global ptr, align 8
@.str.33 = private unnamed_addr constant [2 x i8] c"0\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @FindOptimize(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [2 x ptr], align 16
  %4 = alloca [2 x ptr], align 16
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  %8 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %9 = load i8, ptr %8, align 8, !tbaa !5
  %10 = icmp eq i8 %9, 2
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %13 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %12, ptr noundef nonnull @.str.1) #8
  br label %14

14:                                               ; preds = %11, %2
  %15 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !5
  %17 = getelementptr inbounds i8, ptr %16, i64 41
  %18 = load i24, ptr %17, align 1
  %19 = and i24 %18, 64
  %20 = icmp eq i24 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %23 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %22, ptr noundef nonnull @.str.2) #8
  br label %24

24:                                               ; preds = %21, %14
  %25 = getelementptr inbounds %struct.LIST, ptr %0, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !5
  %27 = icmp eq ptr %26, %0
  br i1 %27, label %67, label %28

28:                                               ; preds = %24, %60
  %29 = phi ptr [ %62, %60 ], [ %26, %24 ]
  br label %30

30:                                               ; preds = %28, %30
  %31 = phi ptr [ %33, %30 ], [ %29, %28 ]
  %32 = getelementptr inbounds [2 x %struct.LIST], ptr %31, i64 0, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !5
  %34 = getelementptr inbounds %struct.word_type, ptr %33, i64 0, i32 1
  %35 = load i8, ptr %34, align 8, !tbaa !5
  switch i8 %35, label %60 [
    i8 0, label %30
    i8 10, label %36
  ]

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.closure_type, ptr %33, i64 0, i32 5
  %38 = load ptr, ptr %37, align 8, !tbaa !5
  %39 = getelementptr inbounds %struct.symbol_type, ptr %38, i64 0, i32 16
  %40 = load i8, ptr %39, align 2
  %41 = and i8 %40, 1
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %60, label %43

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.LIST, ptr %33, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !5
  %46 = icmp eq ptr %45, %33
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %49 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %48, ptr noundef nonnull @.str.3) #8
  %50 = load ptr, ptr %44, align 8, !tbaa !5
  br label %51

51:                                               ; preds = %47, %43
  %52 = phi ptr [ %45, %43 ], [ %50, %47 ]
  br label %53

53:                                               ; preds = %51, %53
  %54 = phi ptr [ %56, %53 ], [ %52, %51 ]
  %55 = getelementptr inbounds [2 x %struct.LIST], ptr %54, i64 0, i64 1
  %56 = load ptr, ptr %55, align 8, !tbaa !5
  %57 = getelementptr inbounds %struct.word_type, ptr %56, i64 0, i32 1
  %58 = load i8, ptr %57, align 8, !tbaa !5
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %53, label %64

60:                                               ; preds = %30, %36
  %61 = getelementptr inbounds %struct.LIST, ptr %29, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !5
  %63 = icmp eq ptr %62, %0
  br i1 %63, label %67, label %28

64:                                               ; preds = %53
  %65 = tail call ptr @CopyObject(ptr noundef nonnull %56, ptr noundef nonnull %8) #8
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %94

67:                                               ; preds = %60, %24, %64
  %68 = load ptr, ptr %15, align 8, !tbaa !5
  br label %69

69:                                               ; preds = %81, %67
  %70 = phi ptr [ %68, %67 ], [ %72, %81 ]
  %71 = getelementptr inbounds %struct.LIST, ptr %70, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !5
  %73 = icmp eq ptr %72, %68
  br i1 %73, label %91, label %74

74:                                               ; preds = %69, %74
  %75 = phi ptr [ %77, %74 ], [ %72, %69 ]
  %76 = getelementptr inbounds [2 x %struct.LIST], ptr %75, i64 0, i64 1
  %77 = load ptr, ptr %76, align 8, !tbaa !5
  %78 = getelementptr inbounds %struct.word_type, ptr %77, i64 0, i32 1
  %79 = load i8, ptr %78, align 8, !tbaa !5
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %74, label %81

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.symbol_type, ptr %77, i64 0, i32 16
  %83 = load i8, ptr %82, align 2
  %84 = and i8 %83, 1
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %69, label %86

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.symbol_type, ptr %77, i64 0, i32 4
  %88 = load ptr, ptr %87, align 8, !tbaa !5
  %89 = tail call ptr @CopyObject(ptr noundef %88, ptr noundef nonnull %8) #8
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %69, %86
  %92 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %93 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %92, ptr noundef nonnull @.str.4) #8
  br label %94

94:                                               ; preds = %64, %91, %86
  %95 = phi ptr [ null, %91 ], [ %89, %86 ], [ %65, %64 ]
  store ptr null, ptr %7, align 8, !tbaa !8
  store ptr null, ptr %6, align 8, !tbaa !8
  store ptr null, ptr %5, align 8, !tbaa !8
  %96 = getelementptr inbounds [2 x ptr], ptr %4, i64 0, i64 1
  store ptr null, ptr %96, align 8, !tbaa !8
  %97 = getelementptr inbounds [2 x ptr], ptr %3, i64 0, i64 1
  store ptr null, ptr %97, align 8, !tbaa !8
  store ptr null, ptr %4, align 16, !tbaa !8
  store ptr null, ptr %3, align 16, !tbaa !8
  %98 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 4
  %99 = call ptr @Manifest(ptr noundef %95, ptr noundef %1, ptr noundef nonnull %98, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %7, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %6, i32 noundef 0) #8
  %100 = call ptr @ReplaceWithTidy(ptr noundef %99, i32 noundef 1) #8
  %101 = getelementptr inbounds %struct.word_type, ptr %100, i64 0, i32 1
  %102 = load i8, ptr %101, align 8, !tbaa !5
  %103 = add i8 %102, -11
  %104 = icmp ult i8 %103, 2
  br i1 %104, label %107, label %105

105:                                              ; preds = %94
  %106 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 46, i32 noundef 1, ptr noundef nonnull @.str.5, i32 noundef 2, ptr noundef nonnull %8, ptr noundef nonnull @.str.6) #8
  br label %116

107:                                              ; preds = %94
  %108 = getelementptr inbounds %struct.word_type, ptr %100, i64 0, i32 4
  %109 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %108, ptr noundef nonnull dereferenceable(4) @.str.7) #9
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %107
  %112 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %108, ptr noundef nonnull dereferenceable(3) @.str.8) #9
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %111
  %115 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 46, i32 noundef 2, ptr noundef nonnull @.str.9, i32 noundef 2, ptr noundef nonnull %8, ptr noundef nonnull @.str.6) #8
  br label %116

116:                                              ; preds = %111, %107, %114, %105
  %117 = phi i32 [ 0, %114 ], [ 0, %105 ], [ 1, %107 ], [ 0, %111 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  ret i32 %117
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @Error(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @CopyObject(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Manifest(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @ReplaceWithTidy(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @SetOptimize(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [512 x i8], align 16
  %4 = alloca [512 x i8], align 16
  %5 = alloca i16, align 2
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  %10 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = tail call ptr @SymName(ptr noundef %11) #8
  %13 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %12) #8
  %14 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3)
  %15 = getelementptr inbounds i8, ptr %3, i64 %14
  store i16 46, ptr %15, align 1
  %16 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 1048575
  %19 = call ptr @StringInt(i32 noundef %18) #8
  %20 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %19) #8
  %21 = load ptr, ptr @OldCrossDb, align 8, !tbaa !8
  %22 = load ptr, ptr @OptGallSym, align 8, !tbaa !8
  %23 = call i32 @DbRetrieve(ptr noundef %21, i32 noundef 0, ptr noundef %22, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %7) #8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %254, label %25

25:                                               ; preds = %2
  call void @SwitchScope(ptr noundef null) #8
  %26 = load i16, ptr %5, align 2, !tbaa !10
  %27 = load i64, ptr %6, align 8, !tbaa !12
  %28 = load i32, ptr %8, align 4, !tbaa !14
  %29 = call ptr @ReadFromFile(i16 noundef zeroext %26, i64 noundef %27, i32 noundef %28) #8
  call void @UnSwitchScope(ptr noundef null) #8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %33 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %32, ptr noundef nonnull @.str.11) #8
  br label %34

34:                                               ; preds = %31, %25
  %35 = getelementptr inbounds %struct.word_type, ptr %29, i64 0, i32 1
  %36 = load i8, ptr %35, align 8, !tbaa !5
  %37 = icmp eq i8 %36, 2
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %40 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %39, ptr noundef nonnull @.str.12) #8
  br label %41

41:                                               ; preds = %38, %34
  %42 = getelementptr inbounds %struct.closure_type, ptr %29, i64 0, i32 5
  %43 = load ptr, ptr %42, align 8, !tbaa !5
  %44 = load ptr, ptr @OptGallSym, align 8, !tbaa !8
  %45 = icmp eq ptr %43, %44
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %48 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %47, ptr noundef nonnull @.str.13) #8
  br label %49

49:                                               ; preds = %46, %41
  %50 = getelementptr inbounds %struct.LIST, ptr %29, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !5
  %52 = icmp eq ptr %51, %29
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %55 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %54, ptr noundef nonnull @.str.14) #8
  %56 = load ptr, ptr %50, align 8, !tbaa !5
  br label %57

57:                                               ; preds = %53, %49
  %58 = phi ptr [ %51, %49 ], [ %56, %53 ]
  br label %59

59:                                               ; preds = %57, %59
  %60 = phi ptr [ %62, %59 ], [ %58, %57 ]
  %61 = getelementptr inbounds [2 x %struct.LIST], ptr %60, i64 0, i64 1
  %62 = load ptr, ptr %61, align 8, !tbaa !5
  %63 = getelementptr inbounds %struct.word_type, ptr %62, i64 0, i32 1
  %64 = load i8, ptr %63, align 8, !tbaa !5
  switch i8 %64, label %65 [
    i8 0, label %59
    i8 10, label %68
  ]

65:                                               ; preds = %59
  %66 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %67 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %66, ptr noundef nonnull @.str.15) #8
  br label %68

68:                                               ; preds = %59, %65
  %69 = getelementptr inbounds %struct.LIST, ptr %62, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !5
  br label %71

71:                                               ; preds = %71, %68
  %72 = phi ptr [ %70, %68 ], [ %74, %71 ]
  %73 = getelementptr inbounds [2 x %struct.LIST], ptr %72, i64 0, i64 1
  %74 = load ptr, ptr %73, align 8, !tbaa !5
  %75 = getelementptr inbounds %struct.word_type, ptr %74, i64 0, i32 1
  %76 = load i8, ptr %75, align 8, !tbaa !5
  switch i8 %76, label %77 [
    i8 0, label %71
    i8 17, label %80
  ]

77:                                               ; preds = %71
  %78 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %79 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %78, ptr noundef nonnull @.str.16) #8
  br label %80

80:                                               ; preds = %71, %77
  %81 = call ptr @ReplaceWithTidy(ptr noundef nonnull %74, i32 noundef 0) #8
  %82 = getelementptr inbounds i8, ptr %0, i64 42
  %83 = load i16, ptr %82, align 2
  %84 = and i16 %83, -513
  store i16 %84, ptr %82, align 2
  %85 = getelementptr inbounds %struct.word_type, ptr %81, i64 0, i32 1
  %86 = load i8, ptr %85, align 8, !tbaa !5
  %87 = icmp eq i8 %86, 17
  br i1 %87, label %91, label %88

88:                                               ; preds = %80
  %89 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %90 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %89, ptr noundef nonnull @.str.17) #8
  br label %91

91:                                               ; preds = %88, %80
  %92 = getelementptr inbounds %struct.LIST, ptr %81, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !5
  %94 = icmp eq ptr %93, %81
  br i1 %94, label %231, label %95

95:                                               ; preds = %91, %224
  %96 = phi ptr [ %229, %224 ], [ %93, %91 ]
  %97 = phi ptr [ %228, %224 ], [ %92, %91 ]
  %98 = phi ptr [ %227, %224 ], [ %81, %91 ]
  br label %99

99:                                               ; preds = %95, %99
  %100 = phi ptr [ %102, %99 ], [ %96, %95 ]
  %101 = getelementptr inbounds [2 x %struct.LIST], ptr %100, i64 0, i64 1
  %102 = load ptr, ptr %101, align 8, !tbaa !5
  %103 = getelementptr inbounds %struct.word_type, ptr %102, i64 0, i32 1
  %104 = load i8, ptr %103, align 8, !tbaa !5
  switch i8 %104, label %221 [
    i8 0, label %99
    i8 1, label %105
    i8 11, label %154
    i8 12, label %154
  ]

105:                                              ; preds = %99
  store ptr %96, ptr @xx_link, align 8, !tbaa !8
  %106 = getelementptr inbounds [2 x %struct.LIST], ptr %96, i64 0, i64 1, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !5
  %108 = icmp eq ptr %107, %96
  br i1 %108, label %114, label %109

109:                                              ; preds = %105
  store ptr %107, ptr @zz_res, align 8, !tbaa !8
  %110 = getelementptr inbounds [2 x %struct.LIST], ptr %96, i64 0, i64 1
  %111 = load ptr, ptr %110, align 8, !tbaa !5
  %112 = getelementptr inbounds [2 x %struct.LIST], ptr %107, i64 0, i64 1
  store ptr %111, ptr %112, align 8, !tbaa !5
  %113 = getelementptr inbounds [2 x %struct.LIST], ptr %111, i64 0, i64 1, i32 1
  store ptr %107, ptr %113, align 8, !tbaa !5
  store ptr %96, ptr %106, align 8, !tbaa !5
  store ptr %96, ptr %110, align 8, !tbaa !5
  br label %114

114:                                              ; preds = %105, %109
  %115 = phi ptr [ %107, %109 ], [ null, %105 ]
  store ptr %115, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %96, ptr @zz_hold, align 8, !tbaa !8
  %116 = getelementptr inbounds %struct.LIST, ptr %96, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !5
  %118 = icmp eq ptr %117, %96
  br i1 %118, label %127, label %119

119:                                              ; preds = %114
  store ptr %117, ptr @zz_res, align 8, !tbaa !8
  %120 = load ptr, ptr %96, align 8, !tbaa !5
  store ptr %120, ptr %117, align 8, !tbaa !5
  %121 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %122 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %123 = load ptr, ptr %122, align 8, !tbaa !5
  %124 = getelementptr inbounds %struct.LIST, ptr %123, i64 0, i32 1
  store ptr %121, ptr %124, align 8, !tbaa !5
  %125 = getelementptr inbounds %struct.LIST, ptr %122, i64 0, i32 1
  store ptr %122, ptr %125, align 8, !tbaa !5
  store ptr %122, ptr %122, align 8, !tbaa !5
  %126 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %127

127:                                              ; preds = %114, %119
  %128 = phi ptr [ %96, %114 ], [ %126, %119 ]
  store ptr %128, ptr @zz_hold, align 8, !tbaa !8
  %129 = getelementptr inbounds %struct.word_type, ptr %128, i64 0, i32 1
  %130 = load i8, ptr %129, align 8, !tbaa !5
  %131 = add i8 %130, -11
  %132 = icmp ult i8 %131, 2
  %133 = getelementptr inbounds %struct.word_type, ptr %128, i64 0, i32 1, i32 0, i32 1
  %134 = zext i8 %130 to i64
  %135 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %134
  %136 = select i1 %132, ptr %133, ptr %135
  %137 = load i8, ptr %136, align 1, !tbaa !5
  %138 = zext i8 %137 to i32
  store i32 %138, ptr @zz_size, align 4, !tbaa !14
  %139 = zext i8 %137 to i64
  %140 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %139
  %141 = load ptr, ptr %140, align 8, !tbaa !8
  store ptr %141, ptr %128, align 8, !tbaa !5
  %142 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %143 = load i32, ptr @zz_size, align 4, !tbaa !14
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %144
  store ptr %142, ptr %145, align 8, !tbaa !8
  %146 = load ptr, ptr @xx_tmp, align 8, !tbaa !8
  %147 = getelementptr inbounds [2 x %struct.LIST], ptr %146, i64 0, i64 1, i32 1
  %148 = load ptr, ptr %147, align 8, !tbaa !5
  %149 = icmp eq ptr %148, %146
  br i1 %149, label %150, label %152

150:                                              ; preds = %127
  %151 = call i32 @DisposeObject(ptr noundef nonnull %146) #8
  br label %152

152:                                              ; preds = %150, %127
  %153 = load ptr, ptr %98, align 8, !tbaa !5
  br label %224

154:                                              ; preds = %99, %99
  %155 = getelementptr inbounds %struct.word_type, ptr %102, i64 0, i32 4
  %156 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %155, ptr noundef nonnull dereferenceable(2) @.str.18) #9
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %210

158:                                              ; preds = %154
  %159 = load i16, ptr %82, align 2
  %160 = or i16 %159, 512
  store i16 %160, ptr %82, align 2
  %161 = load ptr, ptr %97, align 8, !tbaa !5
  store ptr %161, ptr @xx_link, align 8, !tbaa !8
  %162 = getelementptr inbounds [2 x %struct.LIST], ptr %161, i64 0, i64 1, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !5
  %164 = icmp eq ptr %163, %161
  br i1 %164, label %170, label %165

165:                                              ; preds = %158
  store ptr %163, ptr @zz_res, align 8, !tbaa !8
  %166 = getelementptr inbounds [2 x %struct.LIST], ptr %161, i64 0, i64 1
  %167 = load ptr, ptr %166, align 8, !tbaa !5
  %168 = getelementptr inbounds [2 x %struct.LIST], ptr %163, i64 0, i64 1
  store ptr %167, ptr %168, align 8, !tbaa !5
  %169 = getelementptr inbounds [2 x %struct.LIST], ptr %167, i64 0, i64 1, i32 1
  store ptr %163, ptr %169, align 8, !tbaa !5
  store ptr %161, ptr %162, align 8, !tbaa !5
  store ptr %161, ptr %166, align 8, !tbaa !5
  br label %170

170:                                              ; preds = %158, %165
  %171 = phi ptr [ %163, %165 ], [ null, %158 ]
  store ptr %171, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %161, ptr @zz_hold, align 8, !tbaa !8
  %172 = getelementptr inbounds %struct.LIST, ptr %161, i64 0, i32 1
  %173 = load ptr, ptr %172, align 8, !tbaa !5
  %174 = icmp eq ptr %173, %161
  br i1 %174, label %183, label %175

175:                                              ; preds = %170
  store ptr %173, ptr @zz_res, align 8, !tbaa !8
  %176 = load ptr, ptr %161, align 8, !tbaa !5
  store ptr %176, ptr %173, align 8, !tbaa !5
  %177 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %178 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %179 = load ptr, ptr %178, align 8, !tbaa !5
  %180 = getelementptr inbounds %struct.LIST, ptr %179, i64 0, i32 1
  store ptr %177, ptr %180, align 8, !tbaa !5
  %181 = getelementptr inbounds %struct.LIST, ptr %178, i64 0, i32 1
  store ptr %178, ptr %181, align 8, !tbaa !5
  store ptr %178, ptr %178, align 8, !tbaa !5
  %182 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %183

183:                                              ; preds = %170, %175
  %184 = phi ptr [ %161, %170 ], [ %182, %175 ]
  store ptr %184, ptr @zz_hold, align 8, !tbaa !8
  %185 = getelementptr inbounds %struct.word_type, ptr %184, i64 0, i32 1
  %186 = load i8, ptr %185, align 8, !tbaa !5
  %187 = add i8 %186, -11
  %188 = icmp ult i8 %187, 2
  %189 = getelementptr inbounds %struct.word_type, ptr %184, i64 0, i32 1, i32 0, i32 1
  %190 = zext i8 %186 to i64
  %191 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %190
  %192 = select i1 %188, ptr %189, ptr %191
  %193 = load i8, ptr %192, align 1, !tbaa !5
  %194 = zext i8 %193 to i32
  store i32 %194, ptr @zz_size, align 4, !tbaa !14
  %195 = zext i8 %193 to i64
  %196 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %195
  %197 = load ptr, ptr %196, align 8, !tbaa !8
  store ptr %197, ptr %184, align 8, !tbaa !5
  %198 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %199 = load i32, ptr @zz_size, align 4, !tbaa !14
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %200
  store ptr %198, ptr %201, align 8, !tbaa !8
  %202 = load ptr, ptr @xx_tmp, align 8, !tbaa !8
  %203 = getelementptr inbounds [2 x %struct.LIST], ptr %202, i64 0, i64 1, i32 1
  %204 = load ptr, ptr %203, align 8, !tbaa !5
  %205 = icmp eq ptr %204, %202
  br i1 %205, label %206, label %208

206:                                              ; preds = %183
  %207 = call i32 @DisposeObject(ptr noundef nonnull %202) #8
  br label %208

208:                                              ; preds = %206, %183
  %209 = load ptr, ptr %98, align 8, !tbaa !5
  br label %224

210:                                              ; preds = %154
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #8
  store i32 0, ptr %9, align 4, !tbaa !14
  %211 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %155, ptr noundef nonnull @.str.19, ptr noundef nonnull %9) #8
  %212 = load i32, ptr %9, align 4, !tbaa !14
  %213 = icmp sgt i32 %212, 0
  br i1 %213, label %218, label %214

214:                                              ; preds = %210
  %215 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %216 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %215, ptr noundef nonnull @.str.20) #8
  %217 = load i32, ptr %9, align 4, !tbaa !14
  br label %218

218:                                              ; preds = %214, %210
  %219 = phi i32 [ %217, %214 ], [ %212, %210 ]
  %220 = getelementptr inbounds %struct.word_type, ptr %102, i64 0, i32 3
  store i32 %219, ptr %220, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #8
  br label %224

221:                                              ; preds = %99
  %222 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %223 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %222, ptr noundef nonnull @.str.21) #8
  br label %224

224:                                              ; preds = %152, %208, %218, %221
  %225 = phi ptr [ %153, %152 ], [ %209, %208 ], [ %98, %218 ], [ %98, %221 ]
  %226 = getelementptr inbounds %struct.LIST, ptr %225, i64 0, i32 1
  %227 = load ptr, ptr %226, align 8, !tbaa !5
  %228 = getelementptr inbounds %struct.LIST, ptr %227, i64 0, i32 1
  %229 = load ptr, ptr %228, align 8, !tbaa !5
  %230 = icmp eq ptr %229, %81
  br i1 %230, label %231, label %95

231:                                              ; preds = %224, %91
  %232 = getelementptr inbounds [2 x %struct.LIST], ptr %81, i64 0, i64 1, i32 1
  %233 = load ptr, ptr %232, align 8, !tbaa !5
  store ptr %233, ptr @xx_link, align 8, !tbaa !8
  %234 = getelementptr inbounds [2 x %struct.LIST], ptr %233, i64 0, i64 1, i32 1
  %235 = load ptr, ptr %234, align 8, !tbaa !5
  %236 = icmp eq ptr %235, %233
  br i1 %236, label %242, label %237

237:                                              ; preds = %231
  store ptr %235, ptr @zz_res, align 8, !tbaa !8
  %238 = getelementptr inbounds [2 x %struct.LIST], ptr %233, i64 0, i64 1
  %239 = load ptr, ptr %238, align 8, !tbaa !5
  %240 = getelementptr inbounds [2 x %struct.LIST], ptr %235, i64 0, i64 1
  store ptr %239, ptr %240, align 8, !tbaa !5
  %241 = getelementptr inbounds [2 x %struct.LIST], ptr %239, i64 0, i64 1, i32 1
  store ptr %235, ptr %241, align 8, !tbaa !5
  store ptr %233, ptr %234, align 8, !tbaa !5
  store ptr %233, ptr %238, align 8, !tbaa !5
  br label %242

242:                                              ; preds = %231, %237
  store ptr %233, ptr @zz_hold, align 8, !tbaa !8
  %243 = getelementptr inbounds %struct.LIST, ptr %233, i64 0, i32 1
  %244 = load ptr, ptr %243, align 8, !tbaa !5
  %245 = icmp eq ptr %244, %233
  br i1 %245, label %256, label %246

246:                                              ; preds = %242
  store ptr %244, ptr @zz_res, align 8, !tbaa !8
  %247 = load ptr, ptr %233, align 8, !tbaa !5
  store ptr %247, ptr %244, align 8, !tbaa !5
  %248 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %249 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %250 = load ptr, ptr %249, align 8, !tbaa !5
  %251 = getelementptr inbounds %struct.LIST, ptr %250, i64 0, i32 1
  store ptr %248, ptr %251, align 8, !tbaa !5
  %252 = getelementptr inbounds %struct.LIST, ptr %249, i64 0, i32 1
  store ptr %249, ptr %252, align 8, !tbaa !5
  store ptr %249, ptr %249, align 8, !tbaa !5
  %253 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %256

254:                                              ; preds = %2
  %255 = getelementptr inbounds %struct.head_type, ptr %0, i64 0, i32 10
  store ptr null, ptr %255, align 8, !tbaa !5
  br label %340

256:                                              ; preds = %242, %246
  %257 = phi ptr [ %233, %242 ], [ %253, %246 ]
  store ptr %257, ptr @zz_hold, align 8, !tbaa !8
  %258 = getelementptr inbounds %struct.word_type, ptr %257, i64 0, i32 1
  %259 = load i8, ptr %258, align 8, !tbaa !5
  %260 = add i8 %259, -11
  %261 = icmp ult i8 %260, 2
  %262 = getelementptr inbounds %struct.word_type, ptr %257, i64 0, i32 1, i32 0, i32 1
  %263 = zext i8 %259 to i64
  %264 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %263
  %265 = select i1 %261, ptr %262, ptr %264
  %266 = load i8, ptr %265, align 1, !tbaa !5
  %267 = zext i8 %266 to i32
  store i32 %267, ptr @zz_size, align 4, !tbaa !14
  %268 = zext i8 %266 to i64
  %269 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %268
  %270 = load ptr, ptr %269, align 8, !tbaa !8
  store ptr %270, ptr %257, align 8, !tbaa !5
  %271 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %272 = load i32, ptr @zz_size, align 4, !tbaa !14
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %273
  store ptr %271, ptr %274, align 8, !tbaa !8
  %275 = call i32 @DisposeObject(ptr noundef %29) #8
  %276 = getelementptr inbounds %struct.head_type, ptr %0, i64 0, i32 10
  store ptr %81, ptr %276, align 8, !tbaa !5
  %277 = getelementptr inbounds %struct.LIST, ptr %81, i64 0, i32 1
  %278 = load ptr, ptr %277, align 8, !tbaa !5
  %279 = icmp eq ptr %278, %81
  br i1 %279, label %340, label %280

280:                                              ; preds = %256, %280
  %281 = phi ptr [ %283, %280 ], [ %278, %256 ]
  %282 = getelementptr inbounds [2 x %struct.LIST], ptr %281, i64 0, i64 1
  %283 = load ptr, ptr %282, align 8, !tbaa !5
  %284 = getelementptr inbounds %struct.word_type, ptr %283, i64 0, i32 1
  %285 = load i8, ptr %284, align 8, !tbaa !5
  %286 = icmp eq i8 %285, 0
  br i1 %286, label %280, label %287

287:                                              ; preds = %280
  %288 = getelementptr inbounds %struct.word_type, ptr %283, i64 0, i32 3
  %289 = load i32, ptr %288, align 8, !tbaa !5
  %290 = add nsw i32 %289, -1
  %291 = getelementptr inbounds %struct.head_type, ptr %0, i64 0, i32 15
  store i32 %290, ptr %291, align 8, !tbaa !5
  %292 = getelementptr inbounds [2 x %struct.LIST], ptr %283, i64 0, i64 1, i32 1
  %293 = load ptr, ptr %292, align 8, !tbaa !5
  store ptr %293, ptr @xx_link, align 8, !tbaa !8
  %294 = getelementptr inbounds [2 x %struct.LIST], ptr %293, i64 0, i64 1, i32 1
  %295 = load ptr, ptr %294, align 8, !tbaa !5
  %296 = icmp eq ptr %295, %293
  br i1 %296, label %302, label %297

297:                                              ; preds = %287
  store ptr %295, ptr @zz_res, align 8, !tbaa !8
  %298 = getelementptr inbounds [2 x %struct.LIST], ptr %293, i64 0, i64 1
  %299 = load ptr, ptr %298, align 8, !tbaa !5
  %300 = getelementptr inbounds [2 x %struct.LIST], ptr %295, i64 0, i64 1
  store ptr %299, ptr %300, align 8, !tbaa !5
  %301 = getelementptr inbounds [2 x %struct.LIST], ptr %299, i64 0, i64 1, i32 1
  store ptr %295, ptr %301, align 8, !tbaa !5
  store ptr %293, ptr %294, align 8, !tbaa !5
  store ptr %293, ptr %298, align 8, !tbaa !5
  br label %302

302:                                              ; preds = %287, %297
  %303 = phi ptr [ %295, %297 ], [ null, %287 ]
  store ptr %303, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %293, ptr @zz_hold, align 8, !tbaa !8
  %304 = getelementptr inbounds %struct.LIST, ptr %293, i64 0, i32 1
  %305 = load ptr, ptr %304, align 8, !tbaa !5
  %306 = icmp eq ptr %305, %293
  br i1 %306, label %315, label %307

307:                                              ; preds = %302
  store ptr %305, ptr @zz_res, align 8, !tbaa !8
  %308 = load ptr, ptr %293, align 8, !tbaa !5
  store ptr %308, ptr %305, align 8, !tbaa !5
  %309 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %310 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %311 = load ptr, ptr %310, align 8, !tbaa !5
  %312 = getelementptr inbounds %struct.LIST, ptr %311, i64 0, i32 1
  store ptr %309, ptr %312, align 8, !tbaa !5
  %313 = getelementptr inbounds %struct.LIST, ptr %310, i64 0, i32 1
  store ptr %310, ptr %313, align 8, !tbaa !5
  store ptr %310, ptr %310, align 8, !tbaa !5
  %314 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %315

315:                                              ; preds = %302, %307
  %316 = phi ptr [ %293, %302 ], [ %314, %307 ]
  store ptr %316, ptr @zz_hold, align 8, !tbaa !8
  %317 = getelementptr inbounds %struct.word_type, ptr %316, i64 0, i32 1
  %318 = load i8, ptr %317, align 8, !tbaa !5
  %319 = add i8 %318, -11
  %320 = icmp ult i8 %319, 2
  %321 = getelementptr inbounds %struct.word_type, ptr %316, i64 0, i32 1, i32 0, i32 1
  %322 = zext i8 %318 to i64
  %323 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %322
  %324 = select i1 %320, ptr %321, ptr %323
  %325 = load i8, ptr %324, align 1, !tbaa !5
  %326 = zext i8 %325 to i32
  store i32 %326, ptr @zz_size, align 4, !tbaa !14
  %327 = zext i8 %325 to i64
  %328 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %327
  %329 = load ptr, ptr %328, align 8, !tbaa !8
  store ptr %329, ptr %316, align 8, !tbaa !5
  %330 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %331 = load i32, ptr @zz_size, align 4, !tbaa !14
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %332
  store ptr %330, ptr %333, align 8, !tbaa !8
  %334 = load ptr, ptr @xx_tmp, align 8, !tbaa !8
  %335 = getelementptr inbounds [2 x %struct.LIST], ptr %334, i64 0, i64 1, i32 1
  %336 = load ptr, ptr %335, align 8, !tbaa !5
  %337 = icmp eq ptr %336, %334
  br i1 %337, label %338, label %342

338:                                              ; preds = %315
  %339 = call i32 @DisposeObject(ptr noundef nonnull %334) #8
  br label %342

340:                                              ; preds = %254, %256
  %341 = getelementptr inbounds %struct.head_type, ptr %0, i64 0, i32 15
  store i32 65535, ptr %341, align 8, !tbaa !5
  br label %342

342:                                              ; preds = %315, %338, %340
  %343 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !5
  %344 = zext i8 %343 to i32
  store i32 %344, ptr @zz_size, align 4, !tbaa !14
  %345 = zext i8 %343 to i64
  %346 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %345
  %347 = load ptr, ptr %346, align 8, !tbaa !8
  %348 = icmp eq ptr %347, null
  br i1 %348, label %349, label %352

349:                                              ; preds = %342
  %350 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %351 = call ptr @GetMemory(i32 noundef %344, ptr noundef %350) #8
  store ptr %351, ptr @zz_hold, align 8, !tbaa !8
  br label %354

352:                                              ; preds = %342
  store ptr %347, ptr @zz_hold, align 8, !tbaa !8
  %353 = load ptr, ptr %347, align 8, !tbaa !5
  store ptr %353, ptr %346, align 8, !tbaa !8
  br label %354

354:                                              ; preds = %349, %352
  %355 = phi ptr [ %351, %349 ], [ %347, %352 ]
  %356 = getelementptr inbounds %struct.word_type, ptr %355, i64 0, i32 1
  store i8 17, ptr %356, align 8, !tbaa !5
  %357 = getelementptr inbounds [2 x %struct.LIST], ptr %355, i64 0, i64 1, i32 1
  store ptr %355, ptr %357, align 8, !tbaa !5
  %358 = getelementptr inbounds [2 x %struct.LIST], ptr %355, i64 0, i64 1
  store ptr %355, ptr %358, align 8, !tbaa !5
  %359 = getelementptr inbounds %struct.LIST, ptr %355, i64 0, i32 1
  store ptr %355, ptr %359, align 8, !tbaa !5
  store ptr %355, ptr %355, align 8, !tbaa !5
  %360 = getelementptr inbounds %struct.head_type, ptr %0, i64 0, i32 8
  store ptr %355, ptr %360, align 8, !tbaa !5
  %361 = getelementptr inbounds i8, ptr %0, i64 42
  %362 = load i16, ptr %361, align 2
  %363 = and i16 %362, -1025
  store i16 %363, ptr %361, align 2
  %364 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !5
  %365 = zext i8 %364 to i32
  store i32 %365, ptr @zz_size, align 4, !tbaa !14
  %366 = zext i8 %364 to i64
  %367 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %366
  %368 = load ptr, ptr %367, align 8, !tbaa !8
  %369 = icmp eq ptr %368, null
  br i1 %369, label %370, label %373

370:                                              ; preds = %354
  %371 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %372 = call ptr @GetMemory(i32 noundef %365, ptr noundef %371) #8
  store ptr %372, ptr @zz_hold, align 8, !tbaa !8
  br label %375

373:                                              ; preds = %354
  store ptr %368, ptr @zz_hold, align 8, !tbaa !8
  %374 = load ptr, ptr %368, align 8, !tbaa !5
  store ptr %374, ptr %367, align 8, !tbaa !8
  br label %375

375:                                              ; preds = %370, %373
  %376 = phi ptr [ %372, %370 ], [ %368, %373 ]
  %377 = getelementptr inbounds %struct.word_type, ptr %376, i64 0, i32 1
  store i8 17, ptr %377, align 8, !tbaa !5
  %378 = getelementptr inbounds [2 x %struct.LIST], ptr %376, i64 0, i64 1, i32 1
  store ptr %376, ptr %378, align 8, !tbaa !5
  %379 = getelementptr inbounds [2 x %struct.LIST], ptr %376, i64 0, i64 1
  store ptr %376, ptr %379, align 8, !tbaa !5
  %380 = getelementptr inbounds %struct.LIST, ptr %376, i64 0, i32 1
  store ptr %376, ptr %380, align 8, !tbaa !5
  store ptr %376, ptr %376, align 8, !tbaa !5
  %381 = getelementptr inbounds %struct.head_type, ptr %0, i64 0, i32 9
  store ptr %376, ptr %381, align 8, !tbaa !5
  %382 = load i16, ptr %1, align 4
  %383 = and i16 %382, 128
  %384 = load ptr, ptr %360, align 8, !tbaa !5
  %385 = getelementptr inbounds %struct.closure_type, ptr %384, i64 0, i32 4
  %386 = load i16, ptr %385, align 8
  %387 = and i16 %386, -129
  %388 = or disjoint i16 %387, %383
  store i16 %388, ptr %385, align 8
  %389 = load i16, ptr %1, align 4
  %390 = and i16 %389, 256
  %391 = load ptr, ptr %360, align 8, !tbaa !5
  %392 = getelementptr inbounds %struct.closure_type, ptr %391, i64 0, i32 4
  %393 = load i16, ptr %392, align 8
  %394 = and i16 %393, -257
  %395 = or disjoint i16 %394, %390
  store i16 %395, ptr %392, align 8
  %396 = load i16, ptr %1, align 4
  %397 = and i16 %396, 512
  %398 = load ptr, ptr %360, align 8, !tbaa !5
  %399 = getelementptr inbounds %struct.closure_type, ptr %398, i64 0, i32 4
  %400 = load i16, ptr %399, align 8
  %401 = and i16 %400, -513
  %402 = or disjoint i16 %401, %397
  store i16 %402, ptr %399, align 8
  %403 = load i16, ptr %1, align 4
  %404 = and i16 %403, 7168
  %405 = load ptr, ptr %360, align 8, !tbaa !5
  %406 = getelementptr inbounds %struct.closure_type, ptr %405, i64 0, i32 4
  %407 = load i16, ptr %406, align 8
  %408 = and i16 %407, -7169
  %409 = or disjoint i16 %408, %404
  store i16 %409, ptr %406, align 8
  %410 = load i16, ptr %1, align 4
  %411 = and i16 %410, -8192
  %412 = load ptr, ptr %360, align 8, !tbaa !5
  %413 = getelementptr inbounds %struct.closure_type, ptr %412, i64 0, i32 4
  %414 = load i16, ptr %413, align 8
  %415 = and i16 %414, 8191
  %416 = or disjoint i16 %415, %411
  store i16 %416, ptr %413, align 8
  %417 = getelementptr inbounds %struct.GAP, ptr %1, i64 0, i32 1
  %418 = load i16, ptr %417, align 2, !tbaa !5
  %419 = load ptr, ptr %360, align 8, !tbaa !5
  %420 = getelementptr inbounds %struct.closure_type, ptr %419, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  store i16 %418, ptr %420, align 2, !tbaa !5
  %421 = getelementptr inbounds %struct.STYLE, ptr %1, i64 0, i32 1
  %422 = load i8, ptr %421, align 4
  %423 = and i8 %422, 3
  %424 = load ptr, ptr %360, align 8, !tbaa !5
  %425 = getelementptr inbounds %struct.closure_type, ptr %424, i64 0, i32 4, i32 0, i32 1
  %426 = load i8, ptr %425, align 4
  %427 = and i8 %426, -4
  %428 = or disjoint i8 %427, %423
  store i8 %428, ptr %425, align 4
  %429 = load i8, ptr %421, align 4
  %430 = and i8 %429, 12
  %431 = load ptr, ptr %360, align 8, !tbaa !5
  %432 = getelementptr inbounds %struct.closure_type, ptr %431, i64 0, i32 4, i32 0, i32 1
  %433 = load i8, ptr %432, align 4
  %434 = and i8 %433, -13
  %435 = or disjoint i8 %434, %430
  store i8 %435, ptr %432, align 4
  %436 = load i8, ptr %421, align 4
  %437 = and i8 %436, 112
  %438 = load ptr, ptr %360, align 8, !tbaa !5
  %439 = getelementptr inbounds %struct.closure_type, ptr %438, i64 0, i32 4, i32 0, i32 1
  %440 = load i8, ptr %439, align 4
  %441 = and i8 %440, -113
  %442 = or disjoint i8 %441, %437
  store i8 %442, ptr %439, align 4
  %443 = load i8, ptr %1, align 4
  %444 = and i8 %443, 8
  %445 = load ptr, ptr %360, align 8, !tbaa !5
  %446 = getelementptr inbounds %struct.closure_type, ptr %445, i64 0, i32 4
  %447 = load i8, ptr %446, align 8
  %448 = and i8 %447, -9
  %449 = or disjoint i8 %448, %444
  store i8 %449, ptr %446, align 8
  %450 = load i16, ptr %421, align 4
  %451 = and i16 %450, 128
  %452 = load ptr, ptr %360, align 8, !tbaa !5
  %453 = getelementptr inbounds %struct.closure_type, ptr %452, i64 0, i32 4, i32 0, i32 1
  %454 = load i16, ptr %453, align 4
  %455 = and i16 %454, -129
  %456 = or disjoint i16 %455, %451
  store i16 %456, ptr %453, align 4
  %457 = load i16, ptr %421, align 4
  %458 = and i16 %457, 256
  %459 = load ptr, ptr %360, align 8, !tbaa !5
  %460 = getelementptr inbounds %struct.closure_type, ptr %459, i64 0, i32 4, i32 0, i32 1
  %461 = load i16, ptr %460, align 4
  %462 = and i16 %461, -257
  %463 = or disjoint i16 %462, %458
  store i16 %463, ptr %460, align 4
  %464 = load i16, ptr %421, align 4
  %465 = and i16 %464, 512
  %466 = load ptr, ptr %360, align 8, !tbaa !5
  %467 = getelementptr inbounds %struct.closure_type, ptr %466, i64 0, i32 4, i32 0, i32 1
  %468 = load i16, ptr %467, align 4
  %469 = and i16 %468, -513
  %470 = or disjoint i16 %469, %465
  store i16 %470, ptr %467, align 4
  %471 = load i16, ptr %421, align 4
  %472 = and i16 %471, 7168
  %473 = load ptr, ptr %360, align 8, !tbaa !5
  %474 = getelementptr inbounds %struct.closure_type, ptr %473, i64 0, i32 4, i32 0, i32 1
  %475 = load i16, ptr %474, align 4
  %476 = and i16 %475, -7169
  %477 = or disjoint i16 %476, %472
  store i16 %477, ptr %474, align 4
  %478 = load i16, ptr %421, align 4
  %479 = and i16 %478, -8192
  %480 = load ptr, ptr %360, align 8, !tbaa !5
  %481 = getelementptr inbounds %struct.closure_type, ptr %480, i64 0, i32 4, i32 0, i32 1
  %482 = load i16, ptr %481, align 4
  %483 = and i16 %482, 8191
  %484 = or disjoint i16 %483, %479
  store i16 %484, ptr %481, align 4
  %485 = getelementptr inbounds %struct.STYLE, ptr %1, i64 0, i32 1, i32 0, i32 1
  %486 = load i16, ptr %485, align 2, !tbaa !5
  %487 = load ptr, ptr %360, align 8, !tbaa !5
  %488 = getelementptr inbounds %struct.closure_type, ptr %487, i64 0, i32 4, i32 0, i32 1, i32 0, i32 1
  store i16 %486, ptr %488, align 2, !tbaa !5
  %489 = getelementptr inbounds %struct.STYLE, ptr %1, i64 0, i32 4
  %490 = load i32, ptr %489, align 4
  %491 = and i32 %490, 4095
  %492 = load ptr, ptr %360, align 8, !tbaa !5
  %493 = getelementptr inbounds %struct.closure_type, ptr %492, i64 0, i32 4, i32 0, i32 4
  %494 = load i32, ptr %493, align 4
  %495 = and i32 %494, -4096
  %496 = or disjoint i32 %495, %491
  store i32 %496, ptr %493, align 4
  %497 = load i32, ptr %489, align 4
  %498 = and i32 %497, 4190208
  %499 = load ptr, ptr %360, align 8, !tbaa !5
  %500 = getelementptr inbounds %struct.closure_type, ptr %499, i64 0, i32 4, i32 0, i32 4
  %501 = load i32, ptr %500, align 4
  %502 = and i32 %501, -4190209
  %503 = or disjoint i32 %502, %498
  store i32 %503, ptr %500, align 4
  %504 = load i32, ptr %489, align 4
  %505 = and i32 %504, 12582912
  %506 = load ptr, ptr %360, align 8, !tbaa !5
  %507 = getelementptr inbounds %struct.closure_type, ptr %506, i64 0, i32 4, i32 0, i32 4
  %508 = load i32, ptr %507, align 4
  %509 = and i32 %508, -12582913
  %510 = or disjoint i32 %509, %505
  store i32 %510, ptr %507, align 4
  %511 = load i32, ptr %489, align 4
  %512 = and i32 %511, 1056964608
  %513 = load ptr, ptr %360, align 8, !tbaa !5
  %514 = getelementptr inbounds %struct.closure_type, ptr %513, i64 0, i32 4, i32 0, i32 4
  %515 = load i32, ptr %514, align 4
  %516 = and i32 %515, -1056964609
  %517 = or disjoint i32 %516, %512
  store i32 %517, ptr %514, align 4
  %518 = load i32, ptr %489, align 4
  %519 = and i32 %518, -2147483648
  %520 = load ptr, ptr %360, align 8, !tbaa !5
  %521 = getelementptr inbounds %struct.closure_type, ptr %520, i64 0, i32 4, i32 0, i32 4
  %522 = load i32, ptr %521, align 4
  %523 = and i32 %522, 2147483647
  %524 = or disjoint i32 %523, %519
  store i32 %524, ptr %521, align 4
  %525 = load i32, ptr %489, align 4
  %526 = and i32 %525, 1073741824
  %527 = load ptr, ptr %360, align 8, !tbaa !5
  %528 = getelementptr inbounds %struct.closure_type, ptr %527, i64 0, i32 4, i32 0, i32 4
  %529 = load i32, ptr %528, align 4
  %530 = and i32 %529, -1073741825
  %531 = or disjoint i32 %530, %526
  store i32 %531, ptr %528, align 4
  %532 = load i8, ptr %1, align 4
  %533 = and i8 %532, 1
  %534 = load ptr, ptr %360, align 8, !tbaa !5
  %535 = getelementptr inbounds %struct.closure_type, ptr %534, i64 0, i32 4
  %536 = load i8, ptr %535, align 8
  %537 = and i8 %536, -2
  %538 = or disjoint i8 %537, %533
  store i8 %538, ptr %535, align 8
  %539 = load i8, ptr %1, align 4
  %540 = and i8 %539, 2
  %541 = load ptr, ptr %360, align 8, !tbaa !5
  %542 = getelementptr inbounds %struct.closure_type, ptr %541, i64 0, i32 4
  %543 = load i8, ptr %542, align 8
  %544 = and i8 %543, -3
  %545 = or disjoint i8 %544, %540
  store i8 %545, ptr %542, align 8
  %546 = load i8, ptr %1, align 4
  %547 = and i8 %546, 4
  %548 = load ptr, ptr %360, align 8, !tbaa !5
  %549 = getelementptr inbounds %struct.closure_type, ptr %548, i64 0, i32 4
  %550 = load i8, ptr %549, align 8
  %551 = and i8 %550, -5
  %552 = or disjoint i8 %551, %547
  store i8 %552, ptr %549, align 8
  %553 = load i8, ptr %1, align 4
  %554 = and i8 %553, 112
  %555 = load ptr, ptr %360, align 8, !tbaa !5
  %556 = getelementptr inbounds %struct.closure_type, ptr %555, i64 0, i32 4
  %557 = load i8, ptr %556, align 8
  %558 = and i8 %557, -113
  %559 = or disjoint i8 %558, %554
  store i8 %559, ptr %556, align 8
  %560 = getelementptr inbounds %struct.STYLE, ptr %1, i64 0, i32 2
  %561 = load i16, ptr %560, align 4, !tbaa !16
  %562 = load ptr, ptr %360, align 8, !tbaa !5
  %563 = getelementptr inbounds %struct.closure_type, ptr %562, i64 0, i32 4, i32 0, i32 2
  store i16 %561, ptr %563, align 8, !tbaa !5
  %564 = getelementptr inbounds %struct.STYLE, ptr %1, i64 0, i32 3
  %565 = load i16, ptr %564, align 2, !tbaa !18
  %566 = load ptr, ptr %360, align 8, !tbaa !5
  %567 = getelementptr inbounds %struct.closure_type, ptr %566, i64 0, i32 4, i32 0, i32 3
  store i16 %565, ptr %567, align 2, !tbaa !5
  %568 = load i16, ptr %361, align 2
  %569 = and i16 %568, 256
  %570 = icmp eq i16 %569, 0
  br i1 %570, label %577, label %571

571:                                              ; preds = %375
  %572 = load ptr, ptr %360, align 8, !tbaa !5
  %573 = getelementptr inbounds %struct.closure_type, ptr %572, i64 0, i32 4, i32 0, i32 1
  %574 = load i8, ptr %573, align 4
  %575 = and i8 %574, -4
  %576 = or disjoint i8 %575, 1
  store i8 %576, ptr %573, align 4
  br label %577

577:                                              ; preds = %571, %375
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %3) #8
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

declare ptr @SymName(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

declare ptr @StringInt(i32 noundef) local_unnamed_addr #2

declare i32 @DbRetrieve(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @SwitchScope(ptr noundef) local_unnamed_addr #2

declare ptr @ReadFromFile(i16 noundef zeroext, i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @UnSwitchScope(ptr noundef) local_unnamed_addr #2

declare i32 @DisposeObject(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

declare ptr @GetMemory(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @GazumpOptimize(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  %4 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %5 = load i8, ptr %4, align 8, !tbaa !5
  %6 = icmp eq i8 %5, 8
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %9 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %8, ptr noundef nonnull @.str.23) #8
  br label %10

10:                                               ; preds = %7, %2
  %11 = getelementptr inbounds %struct.head_type, ptr %0, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %16 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %15, ptr noundef nonnull @.str.24) #8
  br label %17

17:                                               ; preds = %14, %10
  %18 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 26), align 1, !tbaa !5
  %19 = zext i8 %18 to i32
  store i32 %19, ptr @zz_size, align 4, !tbaa !14
  %20 = zext i8 %18 to i64
  %21 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %26 = tail call ptr @GetMemory(i32 noundef %19, ptr noundef %25) #8
  store ptr %26, ptr @zz_hold, align 8, !tbaa !8
  br label %29

27:                                               ; preds = %17
  store ptr %22, ptr @zz_hold, align 8, !tbaa !8
  %28 = load ptr, ptr %22, align 8, !tbaa !5
  store ptr %28, ptr %21, align 8, !tbaa !8
  br label %29

29:                                               ; preds = %24, %27
  %30 = phi ptr [ %26, %24 ], [ %22, %27 ]
  %31 = getelementptr inbounds %struct.word_type, ptr %30, i64 0, i32 1
  store i8 26, ptr %31, align 8, !tbaa !5
  %32 = getelementptr inbounds [2 x %struct.LIST], ptr %30, i64 0, i64 1
  %33 = getelementptr inbounds [2 x %struct.LIST], ptr %30, i64 0, i64 1, i32 1
  store ptr %30, ptr %33, align 8, !tbaa !5
  store ptr %30, ptr %32, align 8, !tbaa !5
  %34 = getelementptr inbounds %struct.LIST, ptr %30, i64 0, i32 1
  store ptr %30, ptr %34, align 8, !tbaa !5
  store ptr %30, ptr %30, align 8, !tbaa !5
  %35 = getelementptr inbounds i8, ptr %0, i64 42
  %36 = load i16, ptr %35, align 2
  %37 = and i16 %36, 256
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %29
  %40 = getelementptr inbounds i8, ptr %1, i64 42
  %41 = load i16, ptr %40, align 2
  %42 = and i16 %41, 8
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.closure_type, ptr %30, i64 0, i32 4
  store i32 8388607, ptr %45, align 8, !tbaa !5
  %46 = getelementptr inbounds %struct.closure_type, ptr %30, i64 0, i32 4, i32 0, i32 1
  store i32 8388607, ptr %46, align 4, !tbaa !5
  %47 = getelementptr inbounds %struct.closure_type, ptr %30, i64 0, i32 4, i32 0, i32 2
  store i32 8388607, ptr %47, align 8, !tbaa !5
  br label %62

48:                                               ; preds = %39, %29
  %49 = getelementptr inbounds [2 x %struct.LIST], ptr %1, i64 0, i64 1, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !5
  br label %51

51:                                               ; preds = %51, %48
  %52 = phi ptr [ %50, %48 ], [ %53, %51 ]
  %53 = load ptr, ptr %52, align 8, !tbaa !5
  %54 = getelementptr inbounds %struct.word_type, ptr %53, i64 0, i32 1
  %55 = load i8, ptr %54, align 8, !tbaa !5
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %51, label %57

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.closure_type, ptr %30, i64 0, i32 4
  %59 = lshr i16 %36, 8
  %60 = and i16 %59, 1
  %61 = zext nneg i16 %60 to i32
  call void @Constrained(ptr noundef nonnull %53, ptr noundef nonnull %58, i32 noundef %61, ptr noundef nonnull %3) #8
  br label %62

62:                                               ; preds = %57, %44
  %63 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %64 = zext i8 %63 to i32
  store i32 %64, ptr @zz_size, align 4, !tbaa !14
  %65 = zext i8 %63 to i64
  %66 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !8
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %71 = call ptr @GetMemory(i32 noundef %64, ptr noundef %70) #8
  br label %74

72:                                               ; preds = %62
  store ptr %67, ptr @zz_hold, align 8, !tbaa !8
  %73 = load ptr, ptr %67, align 8, !tbaa !5
  store ptr %73, ptr %66, align 8, !tbaa !8
  br label %74

74:                                               ; preds = %69, %72
  %75 = phi ptr [ %71, %69 ], [ %67, %72 ]
  %76 = getelementptr inbounds %struct.word_type, ptr %75, i64 0, i32 1
  store i8 0, ptr %76, align 8, !tbaa !5
  %77 = getelementptr inbounds [2 x %struct.LIST], ptr %75, i64 0, i64 1, i32 1
  store ptr %75, ptr %77, align 8, !tbaa !5
  %78 = getelementptr inbounds [2 x %struct.LIST], ptr %75, i64 0, i64 1
  store ptr %75, ptr %78, align 8, !tbaa !5
  %79 = getelementptr inbounds %struct.LIST, ptr %75, i64 0, i32 1
  store ptr %75, ptr %79, align 8, !tbaa !5
  store ptr %75, ptr %75, align 8, !tbaa !5
  store ptr %75, ptr @xx_link, align 8, !tbaa !8
  store ptr %75, ptr @zz_res, align 8, !tbaa !8
  %80 = getelementptr inbounds %struct.head_type, ptr %0, i64 0, i32 9
  %81 = load ptr, ptr %80, align 8, !tbaa !5
  store ptr %81, ptr @zz_hold, align 8, !tbaa !8
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %74
  store ptr %30, ptr @zz_hold, align 8, !tbaa !8
  br label %96

84:                                               ; preds = %74
  %85 = load ptr, ptr %81, align 8, !tbaa !5
  store ptr %85, ptr @zz_tmp, align 8, !tbaa !8
  %86 = load ptr, ptr %75, align 8, !tbaa !5
  store ptr %86, ptr %81, align 8, !tbaa !5
  %87 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %88 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %89 = load ptr, ptr %88, align 8, !tbaa !5
  %90 = getelementptr inbounds %struct.LIST, ptr %89, i64 0, i32 1
  store ptr %87, ptr %90, align 8, !tbaa !5
  %91 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %91, ptr %88, align 8, !tbaa !5
  %92 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %93 = getelementptr inbounds %struct.LIST, ptr %91, i64 0, i32 1
  store ptr %92, ptr %93, align 8, !tbaa !5
  %94 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %94, ptr @zz_res, align 8, !tbaa !8
  store ptr %30, ptr @zz_hold, align 8, !tbaa !8
  %95 = icmp eq ptr %94, null
  br i1 %95, label %103, label %96

96:                                               ; preds = %83, %84
  %97 = phi ptr [ %75, %83 ], [ %94, %84 ]
  %98 = load ptr, ptr %32, align 8, !tbaa !5
  store ptr %98, ptr @zz_tmp, align 8, !tbaa !8
  %99 = getelementptr inbounds [2 x %struct.LIST], ptr %97, i64 0, i64 1
  %100 = load ptr, ptr %99, align 8, !tbaa !5
  store ptr %100, ptr %32, align 8, !tbaa !5
  %101 = getelementptr inbounds [2 x %struct.LIST], ptr %100, i64 0, i64 1, i32 1
  store ptr %30, ptr %101, align 8, !tbaa !5
  store ptr %98, ptr %99, align 8, !tbaa !5
  %102 = getelementptr inbounds [2 x %struct.LIST], ptr %98, i64 0, i64 1, i32 1
  store ptr %97, ptr %102, align 8, !tbaa !5
  br label %103

103:                                              ; preds = %84, %96
  %104 = load ptr, ptr %11, align 8, !tbaa !5
  %105 = load ptr, ptr %104, align 8, !tbaa !5
  %106 = icmp eq ptr %105, %104
  br i1 %106, label %381, label %107

107:                                              ; preds = %103, %107
  %108 = phi ptr [ %110, %107 ], [ %105, %103 ]
  %109 = getelementptr inbounds [2 x %struct.LIST], ptr %108, i64 0, i64 1
  %110 = load ptr, ptr %109, align 8, !tbaa !5
  %111 = getelementptr inbounds %struct.word_type, ptr %110, i64 0, i32 1
  %112 = load i8, ptr %111, align 8, !tbaa !5
  switch i8 %112, label %113 [
    i8 0, label %107
    i8 1, label %116
  ]

113:                                              ; preds = %107
  %114 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %115 = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %114, ptr noundef nonnull @.str.25) #8
  br label %116

116:                                              ; preds = %107, %113
  %117 = getelementptr inbounds %struct.word_type, ptr %110, i64 0, i32 1
  %118 = getelementptr inbounds %struct.gapobj_type, ptr %110, i64 0, i32 3
  %119 = load i16, ptr %118, align 4
  %120 = and i16 %119, 127
  %121 = or disjoint i16 %120, -12800
  store i16 %121, ptr %118, align 4
  %122 = getelementptr inbounds %struct.gapobj_type, ptr %110, i64 0, i32 3, i32 1
  store i16 4096, ptr %122, align 2, !tbaa !5
  %123 = getelementptr inbounds %struct.LIST, ptr %110, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !5
  %125 = icmp eq ptr %124, %110
  br i1 %125, label %173, label %126

126:                                              ; preds = %116
  store ptr %124, ptr @xx_link, align 8, !tbaa !8
  %127 = getelementptr inbounds [2 x %struct.LIST], ptr %124, i64 0, i64 1, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !5
  %129 = icmp eq ptr %128, %124
  br i1 %129, label %135, label %130

130:                                              ; preds = %126
  store ptr %128, ptr @zz_res, align 8, !tbaa !8
  %131 = getelementptr inbounds [2 x %struct.LIST], ptr %124, i64 0, i64 1
  %132 = load ptr, ptr %131, align 8, !tbaa !5
  %133 = getelementptr inbounds [2 x %struct.LIST], ptr %128, i64 0, i64 1
  store ptr %132, ptr %133, align 8, !tbaa !5
  %134 = getelementptr inbounds [2 x %struct.LIST], ptr %132, i64 0, i64 1, i32 1
  store ptr %128, ptr %134, align 8, !tbaa !5
  store ptr %124, ptr %127, align 8, !tbaa !5
  store ptr %124, ptr %131, align 8, !tbaa !5
  br label %135

135:                                              ; preds = %126, %130
  %136 = phi ptr [ %128, %130 ], [ null, %126 ]
  store ptr %136, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %124, ptr @zz_hold, align 8, !tbaa !8
  %137 = getelementptr inbounds %struct.LIST, ptr %124, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !5
  %139 = icmp eq ptr %138, %124
  br i1 %139, label %148, label %140

140:                                              ; preds = %135
  store ptr %138, ptr @zz_res, align 8, !tbaa !8
  %141 = load ptr, ptr %124, align 8, !tbaa !5
  store ptr %141, ptr %138, align 8, !tbaa !5
  %142 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %143 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %144 = load ptr, ptr %143, align 8, !tbaa !5
  %145 = getelementptr inbounds %struct.LIST, ptr %144, i64 0, i32 1
  store ptr %142, ptr %145, align 8, !tbaa !5
  %146 = getelementptr inbounds %struct.LIST, ptr %143, i64 0, i32 1
  store ptr %143, ptr %146, align 8, !tbaa !5
  store ptr %143, ptr %143, align 8, !tbaa !5
  %147 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %148

148:                                              ; preds = %135, %140
  %149 = phi ptr [ %124, %135 ], [ %147, %140 ]
  store ptr %149, ptr @zz_hold, align 8, !tbaa !8
  %150 = getelementptr inbounds %struct.word_type, ptr %149, i64 0, i32 1
  %151 = load i8, ptr %150, align 8, !tbaa !5
  %152 = add i8 %151, -11
  %153 = icmp ult i8 %152, 2
  %154 = getelementptr inbounds %struct.word_type, ptr %149, i64 0, i32 1, i32 0, i32 1
  %155 = zext i8 %151 to i64
  %156 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %155
  %157 = select i1 %153, ptr %154, ptr %156
  %158 = load i8, ptr %157, align 1, !tbaa !5
  %159 = zext i8 %158 to i32
  store i32 %159, ptr @zz_size, align 4, !tbaa !14
  %160 = zext i8 %158 to i64
  %161 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %160
  %162 = load ptr, ptr %161, align 8, !tbaa !8
  store ptr %162, ptr %149, align 8, !tbaa !5
  %163 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %164 = load i32, ptr @zz_size, align 4, !tbaa !14
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %165
  store ptr %163, ptr %166, align 8, !tbaa !8
  %167 = load ptr, ptr @xx_tmp, align 8, !tbaa !8
  %168 = getelementptr inbounds [2 x %struct.LIST], ptr %167, i64 0, i64 1, i32 1
  %169 = load ptr, ptr %168, align 8, !tbaa !5
  %170 = icmp eq ptr %169, %167
  br i1 %170, label %171, label %173

171:                                              ; preds = %148
  %172 = call i32 @DisposeObject(ptr noundef nonnull %167) #8
  br label %173

173:                                              ; preds = %148, %171, %116
  %174 = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.26, ptr noundef nonnull %117) #8
  %175 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %176 = zext i8 %175 to i32
  store i32 %176, ptr @zz_size, align 4, !tbaa !14
  %177 = zext i8 %175 to i64
  %178 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %177
  %179 = load ptr, ptr %178, align 8, !tbaa !8
  %180 = icmp eq ptr %179, null
  br i1 %180, label %181, label %184

181:                                              ; preds = %173
  %182 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %183 = call ptr @GetMemory(i32 noundef %176, ptr noundef %182) #8
  br label %186

184:                                              ; preds = %173
  store ptr %179, ptr @zz_hold, align 8, !tbaa !8
  %185 = load ptr, ptr %179, align 8, !tbaa !5
  store ptr %185, ptr %178, align 8, !tbaa !8
  br label %186

186:                                              ; preds = %181, %184
  %187 = phi ptr [ %183, %181 ], [ %179, %184 ]
  %188 = getelementptr inbounds %struct.word_type, ptr %187, i64 0, i32 1
  store i8 0, ptr %188, align 8, !tbaa !5
  %189 = getelementptr inbounds [2 x %struct.LIST], ptr %187, i64 0, i64 1, i32 1
  store ptr %187, ptr %189, align 8, !tbaa !5
  %190 = getelementptr inbounds [2 x %struct.LIST], ptr %187, i64 0, i64 1
  store ptr %187, ptr %190, align 8, !tbaa !5
  %191 = getelementptr inbounds %struct.LIST, ptr %187, i64 0, i32 1
  store ptr %187, ptr %191, align 8, !tbaa !5
  store ptr %187, ptr %187, align 8, !tbaa !5
  store ptr %187, ptr @xx_link, align 8, !tbaa !8
  store ptr %187, ptr @zz_res, align 8, !tbaa !8
  store ptr %110, ptr @zz_hold, align 8, !tbaa !8
  %192 = load ptr, ptr %110, align 8, !tbaa !5
  store ptr %192, ptr @zz_tmp, align 8, !tbaa !8
  %193 = load ptr, ptr %187, align 8, !tbaa !5
  store ptr %193, ptr %110, align 8, !tbaa !5
  %194 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %195 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %196 = load ptr, ptr %195, align 8, !tbaa !5
  %197 = getelementptr inbounds %struct.LIST, ptr %196, i64 0, i32 1
  store ptr %194, ptr %197, align 8, !tbaa !5
  %198 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %198, ptr %195, align 8, !tbaa !5
  %199 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %200 = getelementptr inbounds %struct.LIST, ptr %198, i64 0, i32 1
  store ptr %199, ptr %200, align 8, !tbaa !5
  %201 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %201, ptr @zz_res, align 8, !tbaa !8
  store ptr %174, ptr @zz_hold, align 8, !tbaa !8
  %202 = icmp eq ptr %174, null
  %203 = icmp eq ptr %201, null
  %204 = select i1 %202, i1 true, i1 %203
  br i1 %204, label %212, label %205

205:                                              ; preds = %186
  %206 = getelementptr inbounds [2 x %struct.LIST], ptr %174, i64 0, i64 1
  %207 = load ptr, ptr %206, align 8, !tbaa !5
  store ptr %207, ptr @zz_tmp, align 8, !tbaa !8
  %208 = getelementptr inbounds [2 x %struct.LIST], ptr %201, i64 0, i64 1
  %209 = load ptr, ptr %208, align 8, !tbaa !5
  store ptr %209, ptr %206, align 8, !tbaa !5
  %210 = getelementptr inbounds [2 x %struct.LIST], ptr %209, i64 0, i64 1, i32 1
  store ptr %174, ptr %210, align 8, !tbaa !5
  store ptr %207, ptr %208, align 8, !tbaa !5
  %211 = getelementptr inbounds [2 x %struct.LIST], ptr %207, i64 0, i64 1, i32 1
  store ptr %201, ptr %211, align 8, !tbaa !5
  br label %212

212:                                              ; preds = %186, %205
  %213 = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.27, ptr noundef nonnull %117) #8
  %214 = getelementptr inbounds %struct.word_type, ptr %213, i64 0, i32 3
  %215 = getelementptr inbounds %struct.word_type, ptr %213, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %214, i8 0, i64 16, i1 false)
  %216 = load i32, ptr %215, align 8
  %217 = and i32 %216, 1610612736
  store i32 %217, ptr %215, align 8
  %218 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %219 = zext i8 %218 to i32
  store i32 %219, ptr @zz_size, align 4, !tbaa !14
  %220 = zext i8 %218 to i64
  %221 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %220
  %222 = load ptr, ptr %221, align 8, !tbaa !8
  %223 = icmp eq ptr %222, null
  br i1 %223, label %224, label %227

224:                                              ; preds = %212
  %225 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %226 = call ptr @GetMemory(i32 noundef %219, ptr noundef %225) #8
  br label %229

227:                                              ; preds = %212
  store ptr %222, ptr @zz_hold, align 8, !tbaa !8
  %228 = load ptr, ptr %222, align 8, !tbaa !5
  store ptr %228, ptr %221, align 8, !tbaa !8
  br label %229

229:                                              ; preds = %224, %227
  %230 = phi ptr [ %226, %224 ], [ %222, %227 ]
  %231 = getelementptr inbounds %struct.word_type, ptr %230, i64 0, i32 1
  store i8 0, ptr %231, align 8, !tbaa !5
  %232 = getelementptr inbounds [2 x %struct.LIST], ptr %230, i64 0, i64 1, i32 1
  store ptr %230, ptr %232, align 8, !tbaa !5
  %233 = getelementptr inbounds [2 x %struct.LIST], ptr %230, i64 0, i64 1
  store ptr %230, ptr %233, align 8, !tbaa !5
  %234 = getelementptr inbounds %struct.LIST, ptr %230, i64 0, i32 1
  store ptr %230, ptr %234, align 8, !tbaa !5
  store ptr %230, ptr %230, align 8, !tbaa !5
  store ptr %230, ptr @xx_link, align 8, !tbaa !8
  store ptr %230, ptr @zz_res, align 8, !tbaa !8
  %235 = load ptr, ptr %11, align 8, !tbaa !5
  store ptr %235, ptr @zz_hold, align 8, !tbaa !8
  %236 = icmp eq ptr %235, null
  br i1 %236, label %237, label %238

237:                                              ; preds = %229
  store ptr %213, ptr @zz_hold, align 8, !tbaa !8
  br label %250

238:                                              ; preds = %229
  %239 = load ptr, ptr %235, align 8, !tbaa !5
  store ptr %239, ptr @zz_tmp, align 8, !tbaa !8
  %240 = load ptr, ptr %230, align 8, !tbaa !5
  store ptr %240, ptr %235, align 8, !tbaa !5
  %241 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %242 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %243 = load ptr, ptr %242, align 8, !tbaa !5
  %244 = getelementptr inbounds %struct.LIST, ptr %243, i64 0, i32 1
  store ptr %241, ptr %244, align 8, !tbaa !5
  %245 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %245, ptr %242, align 8, !tbaa !5
  %246 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %247 = getelementptr inbounds %struct.LIST, ptr %245, i64 0, i32 1
  store ptr %246, ptr %247, align 8, !tbaa !5
  %248 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %248, ptr @zz_res, align 8, !tbaa !8
  store ptr %213, ptr @zz_hold, align 8, !tbaa !8
  %249 = icmp eq ptr %248, null
  br i1 %249, label %258, label %250

250:                                              ; preds = %237, %238
  %251 = phi ptr [ %230, %237 ], [ %248, %238 ]
  %252 = getelementptr inbounds [2 x %struct.LIST], ptr %213, i64 0, i64 1
  %253 = load ptr, ptr %252, align 8, !tbaa !5
  store ptr %253, ptr @zz_tmp, align 8, !tbaa !8
  %254 = getelementptr inbounds [2 x %struct.LIST], ptr %251, i64 0, i64 1
  %255 = load ptr, ptr %254, align 8, !tbaa !5
  store ptr %255, ptr %252, align 8, !tbaa !5
  %256 = getelementptr inbounds [2 x %struct.LIST], ptr %255, i64 0, i64 1, i32 1
  store ptr %213, ptr %256, align 8, !tbaa !5
  store ptr %253, ptr %254, align 8, !tbaa !5
  %257 = getelementptr inbounds [2 x %struct.LIST], ptr %253, i64 0, i64 1, i32 1
  store ptr %251, ptr %257, align 8, !tbaa !5
  br label %258

258:                                              ; preds = %238, %250
  %259 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 1), align 1, !tbaa !5
  %260 = zext i8 %259 to i32
  store i32 %260, ptr @zz_size, align 4, !tbaa !14
  %261 = zext i8 %259 to i64
  %262 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %261
  %263 = load ptr, ptr %262, align 8, !tbaa !8
  %264 = icmp eq ptr %263, null
  br i1 %264, label %265, label %268

265:                                              ; preds = %258
  %266 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %267 = call ptr @GetMemory(i32 noundef %260, ptr noundef %266) #8
  store ptr %267, ptr @zz_hold, align 8, !tbaa !8
  br label %270

268:                                              ; preds = %258
  store ptr %263, ptr @zz_hold, align 8, !tbaa !8
  %269 = load ptr, ptr %263, align 8, !tbaa !5
  store ptr %269, ptr %262, align 8, !tbaa !8
  br label %270

270:                                              ; preds = %265, %268
  %271 = phi ptr [ %267, %265 ], [ %263, %268 ]
  %272 = getelementptr inbounds %struct.word_type, ptr %271, i64 0, i32 1
  store i8 1, ptr %272, align 8, !tbaa !5
  %273 = getelementptr inbounds [2 x %struct.LIST], ptr %271, i64 0, i64 1
  %274 = getelementptr inbounds [2 x %struct.LIST], ptr %271, i64 0, i64 1, i32 1
  store ptr %271, ptr %274, align 8, !tbaa !5
  store ptr %271, ptr %273, align 8, !tbaa !5
  %275 = getelementptr inbounds %struct.LIST, ptr %271, i64 0, i32 1
  store ptr %271, ptr %275, align 8, !tbaa !5
  store ptr %271, ptr %271, align 8, !tbaa !5
  %276 = getelementptr inbounds i8, ptr %271, i64 41
  store i8 1, ptr %276, align 1, !tbaa !5
  %277 = getelementptr inbounds i8, ptr %271, i64 42
  store i8 0, ptr %277, align 2, !tbaa !5
  %278 = getelementptr inbounds %struct.word_type, ptr %213, i64 0, i32 1, i32 0, i32 2
  %279 = load i16, ptr %278, align 2, !tbaa !5
  %280 = getelementptr inbounds %struct.word_type, ptr %271, i64 0, i32 1, i32 0, i32 2
  store i16 %279, ptr %280, align 2, !tbaa !5
  %281 = getelementptr inbounds %struct.word_type, ptr %213, i64 0, i32 1, i32 0, i32 3
  %282 = load i32, ptr %281, align 4
  %283 = and i32 %282, 1048575
  %284 = getelementptr inbounds %struct.word_type, ptr %271, i64 0, i32 1, i32 0, i32 3
  %285 = load i32, ptr %284, align 4
  %286 = and i32 %285, -1048576
  %287 = or disjoint i32 %286, %283
  store i32 %287, ptr %284, align 4
  %288 = load i32, ptr %281, align 4
  %289 = and i32 %288, -1048576
  %290 = or disjoint i32 %289, %283
  store i32 %290, ptr %284, align 4
  %291 = getelementptr inbounds %struct.gapobj_type, ptr %271, i64 0, i32 3
  %292 = load i16, ptr %291, align 4
  %293 = and i16 %292, 127
  %294 = or disjoint i16 %293, 9728
  store i16 %294, ptr %291, align 4
  %295 = getelementptr inbounds %struct.gapobj_type, ptr %271, i64 0, i32 3, i32 1
  store i16 567, ptr %295, align 2, !tbaa !5
  %296 = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.28, ptr noundef nonnull %272) #8
  %297 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %298 = zext i8 %297 to i32
  store i32 %298, ptr @zz_size, align 4, !tbaa !14
  %299 = zext i8 %297 to i64
  %300 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %299
  %301 = load ptr, ptr %300, align 8, !tbaa !8
  %302 = icmp eq ptr %301, null
  br i1 %302, label %303, label %306

303:                                              ; preds = %270
  %304 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %305 = call ptr @GetMemory(i32 noundef %298, ptr noundef %304) #8
  br label %308

306:                                              ; preds = %270
  store ptr %301, ptr @zz_hold, align 8, !tbaa !8
  %307 = load ptr, ptr %301, align 8, !tbaa !5
  store ptr %307, ptr %300, align 8, !tbaa !8
  br label %308

308:                                              ; preds = %303, %306
  %309 = phi ptr [ %305, %303 ], [ %301, %306 ]
  %310 = getelementptr inbounds %struct.word_type, ptr %309, i64 0, i32 1
  store i8 0, ptr %310, align 8, !tbaa !5
  %311 = getelementptr inbounds [2 x %struct.LIST], ptr %309, i64 0, i64 1, i32 1
  store ptr %309, ptr %311, align 8, !tbaa !5
  %312 = getelementptr inbounds [2 x %struct.LIST], ptr %309, i64 0, i64 1
  store ptr %309, ptr %312, align 8, !tbaa !5
  %313 = getelementptr inbounds %struct.LIST, ptr %309, i64 0, i32 1
  store ptr %309, ptr %313, align 8, !tbaa !5
  store ptr %309, ptr %309, align 8, !tbaa !5
  store ptr %309, ptr @xx_link, align 8, !tbaa !8
  store ptr %309, ptr @zz_res, align 8, !tbaa !8
  store ptr %271, ptr @zz_hold, align 8, !tbaa !8
  %314 = load ptr, ptr %271, align 8, !tbaa !5
  store ptr %314, ptr @zz_tmp, align 8, !tbaa !8
  %315 = load ptr, ptr %309, align 8, !tbaa !5
  store ptr %315, ptr %271, align 8, !tbaa !5
  %316 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %317 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %318 = load ptr, ptr %317, align 8, !tbaa !5
  %319 = getelementptr inbounds %struct.LIST, ptr %318, i64 0, i32 1
  store ptr %316, ptr %319, align 8, !tbaa !5
  %320 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %320, ptr %317, align 8, !tbaa !5
  %321 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %322 = getelementptr inbounds %struct.LIST, ptr %320, i64 0, i32 1
  store ptr %321, ptr %322, align 8, !tbaa !5
  %323 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %323, ptr @zz_res, align 8, !tbaa !8
  store ptr %296, ptr @zz_hold, align 8, !tbaa !8
  %324 = icmp eq ptr %296, null
  %325 = icmp eq ptr %323, null
  %326 = select i1 %324, i1 true, i1 %325
  br i1 %326, label %334, label %327

327:                                              ; preds = %308
  %328 = getelementptr inbounds [2 x %struct.LIST], ptr %296, i64 0, i64 1
  %329 = load ptr, ptr %328, align 8, !tbaa !5
  store ptr %329, ptr @zz_tmp, align 8, !tbaa !8
  %330 = getelementptr inbounds [2 x %struct.LIST], ptr %323, i64 0, i64 1
  %331 = load ptr, ptr %330, align 8, !tbaa !5
  store ptr %331, ptr %328, align 8, !tbaa !5
  %332 = getelementptr inbounds [2 x %struct.LIST], ptr %331, i64 0, i64 1, i32 1
  store ptr %296, ptr %332, align 8, !tbaa !5
  store ptr %329, ptr %330, align 8, !tbaa !5
  %333 = getelementptr inbounds [2 x %struct.LIST], ptr %329, i64 0, i64 1, i32 1
  store ptr %323, ptr %333, align 8, !tbaa !5
  br label %334

334:                                              ; preds = %308, %327
  %335 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %336 = zext i8 %335 to i32
  store i32 %336, ptr @zz_size, align 4, !tbaa !14
  %337 = zext i8 %335 to i64
  %338 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %337
  %339 = load ptr, ptr %338, align 8, !tbaa !8
  %340 = icmp eq ptr %339, null
  br i1 %340, label %341, label %344

341:                                              ; preds = %334
  %342 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %343 = call ptr @GetMemory(i32 noundef %336, ptr noundef %342) #8
  br label %346

344:                                              ; preds = %334
  store ptr %339, ptr @zz_hold, align 8, !tbaa !8
  %345 = load ptr, ptr %339, align 8, !tbaa !5
  store ptr %345, ptr %338, align 8, !tbaa !8
  br label %346

346:                                              ; preds = %341, %344
  %347 = phi ptr [ %343, %341 ], [ %339, %344 ]
  %348 = getelementptr inbounds %struct.word_type, ptr %347, i64 0, i32 1
  store i8 0, ptr %348, align 8, !tbaa !5
  %349 = getelementptr inbounds [2 x %struct.LIST], ptr %347, i64 0, i64 1, i32 1
  store ptr %347, ptr %349, align 8, !tbaa !5
  %350 = getelementptr inbounds [2 x %struct.LIST], ptr %347, i64 0, i64 1
  store ptr %347, ptr %350, align 8, !tbaa !5
  %351 = getelementptr inbounds %struct.LIST, ptr %347, i64 0, i32 1
  store ptr %347, ptr %351, align 8, !tbaa !5
  store ptr %347, ptr %347, align 8, !tbaa !5
  store ptr %347, ptr @xx_link, align 8, !tbaa !8
  store ptr %347, ptr @zz_res, align 8, !tbaa !8
  %352 = load ptr, ptr %11, align 8, !tbaa !5
  store ptr %352, ptr @zz_hold, align 8, !tbaa !8
  %353 = icmp eq ptr %352, null
  br i1 %353, label %354, label %355

354:                                              ; preds = %346
  store ptr %271, ptr @zz_hold, align 8, !tbaa !8
  br label %370

355:                                              ; preds = %346
  %356 = load ptr, ptr %352, align 8, !tbaa !5
  store ptr %356, ptr @zz_tmp, align 8, !tbaa !8
  %357 = load ptr, ptr %347, align 8, !tbaa !5
  store ptr %357, ptr %352, align 8, !tbaa !5
  %358 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %359 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %360 = load ptr, ptr %359, align 8, !tbaa !5
  %361 = getelementptr inbounds %struct.LIST, ptr %360, i64 0, i32 1
  store ptr %358, ptr %361, align 8, !tbaa !5
  %362 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %362, ptr %359, align 8, !tbaa !5
  %363 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %364 = getelementptr inbounds %struct.LIST, ptr %362, i64 0, i32 1
  store ptr %363, ptr %364, align 8, !tbaa !5
  %365 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %365, ptr @zz_res, align 8, !tbaa !8
  store ptr %271, ptr @zz_hold, align 8, !tbaa !8
  %366 = icmp eq ptr %365, null
  br i1 %366, label %378, label %367

367:                                              ; preds = %355
  %368 = getelementptr inbounds [2 x %struct.LIST], ptr %365, i64 0, i64 1
  %369 = load ptr, ptr %368, align 8, !tbaa !5
  br label %370

370:                                              ; preds = %367, %354
  %371 = phi ptr [ %347, %354 ], [ %369, %367 ]
  %372 = phi ptr [ %347, %354 ], [ %365, %367 ]
  %373 = load ptr, ptr %273, align 8, !tbaa !5
  store ptr %373, ptr @zz_tmp, align 8, !tbaa !8
  %374 = getelementptr inbounds [2 x %struct.LIST], ptr %372, i64 0, i64 1
  store ptr %371, ptr %273, align 8, !tbaa !5
  %375 = load ptr, ptr %374, align 8, !tbaa !5
  %376 = getelementptr inbounds [2 x %struct.LIST], ptr %375, i64 0, i64 1, i32 1
  store ptr %271, ptr %376, align 8, !tbaa !5
  store ptr %373, ptr %374, align 8, !tbaa !5
  %377 = getelementptr inbounds [2 x %struct.LIST], ptr %373, i64 0, i64 1, i32 1
  store ptr %372, ptr %377, align 8, !tbaa !5
  br label %378

378:                                              ; preds = %355, %370
  %379 = load i16, ptr %35, align 2
  %380 = or i16 %379, 1024
  store i16 %380, ptr %35, align 2
  br label %381

381:                                              ; preds = %378, %103
  %382 = getelementptr inbounds %struct.head_type, ptr %0, i64 0, i32 10
  %383 = load ptr, ptr %382, align 8, !tbaa !5
  %384 = icmp eq ptr %383, null
  br i1 %384, label %451, label %385

385:                                              ; preds = %381
  %386 = getelementptr inbounds %struct.LIST, ptr %383, i64 0, i32 1
  %387 = load ptr, ptr %386, align 8, !tbaa !5
  %388 = icmp eq ptr %387, %383
  br i1 %388, label %451, label %389

389:                                              ; preds = %385, %389
  %390 = phi ptr [ %392, %389 ], [ %387, %385 ]
  %391 = getelementptr inbounds [2 x %struct.LIST], ptr %390, i64 0, i64 1
  %392 = load ptr, ptr %391, align 8, !tbaa !5
  %393 = getelementptr inbounds %struct.word_type, ptr %392, i64 0, i32 1
  %394 = load i8, ptr %393, align 8, !tbaa !5
  %395 = icmp eq i8 %394, 0
  br i1 %395, label %389, label %396

396:                                              ; preds = %389
  %397 = getelementptr inbounds %struct.word_type, ptr %392, i64 0, i32 3
  %398 = load i32, ptr %397, align 8, !tbaa !5
  %399 = add nsw i32 %398, -1
  %400 = getelementptr inbounds %struct.head_type, ptr %0, i64 0, i32 15
  %401 = load i32, ptr %400, align 8, !tbaa !5
  %402 = add nsw i32 %399, %401
  store i32 %402, ptr %400, align 8, !tbaa !5
  %403 = getelementptr inbounds [2 x %struct.LIST], ptr %392, i64 0, i64 1, i32 1
  %404 = load ptr, ptr %403, align 8, !tbaa !5
  store ptr %404, ptr @xx_link, align 8, !tbaa !8
  %405 = getelementptr inbounds [2 x %struct.LIST], ptr %404, i64 0, i64 1, i32 1
  %406 = load ptr, ptr %405, align 8, !tbaa !5
  %407 = icmp eq ptr %406, %404
  br i1 %407, label %413, label %408

408:                                              ; preds = %396
  store ptr %406, ptr @zz_res, align 8, !tbaa !8
  %409 = getelementptr inbounds [2 x %struct.LIST], ptr %404, i64 0, i64 1
  %410 = load ptr, ptr %409, align 8, !tbaa !5
  %411 = getelementptr inbounds [2 x %struct.LIST], ptr %406, i64 0, i64 1
  store ptr %410, ptr %411, align 8, !tbaa !5
  %412 = getelementptr inbounds [2 x %struct.LIST], ptr %410, i64 0, i64 1, i32 1
  store ptr %406, ptr %412, align 8, !tbaa !5
  store ptr %404, ptr %405, align 8, !tbaa !5
  store ptr %404, ptr %409, align 8, !tbaa !5
  br label %413

413:                                              ; preds = %396, %408
  %414 = phi ptr [ %406, %408 ], [ null, %396 ]
  store ptr %414, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %404, ptr @zz_hold, align 8, !tbaa !8
  %415 = getelementptr inbounds %struct.LIST, ptr %404, i64 0, i32 1
  %416 = load ptr, ptr %415, align 8, !tbaa !5
  %417 = icmp eq ptr %416, %404
  br i1 %417, label %426, label %418

418:                                              ; preds = %413
  store ptr %416, ptr @zz_res, align 8, !tbaa !8
  %419 = load ptr, ptr %404, align 8, !tbaa !5
  store ptr %419, ptr %416, align 8, !tbaa !5
  %420 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %421 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %422 = load ptr, ptr %421, align 8, !tbaa !5
  %423 = getelementptr inbounds %struct.LIST, ptr %422, i64 0, i32 1
  store ptr %420, ptr %423, align 8, !tbaa !5
  %424 = getelementptr inbounds %struct.LIST, ptr %421, i64 0, i32 1
  store ptr %421, ptr %424, align 8, !tbaa !5
  store ptr %421, ptr %421, align 8, !tbaa !5
  %425 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %426

426:                                              ; preds = %413, %418
  %427 = phi ptr [ %404, %413 ], [ %425, %418 ]
  store ptr %427, ptr @zz_hold, align 8, !tbaa !8
  %428 = getelementptr inbounds %struct.word_type, ptr %427, i64 0, i32 1
  %429 = load i8, ptr %428, align 8, !tbaa !5
  %430 = add i8 %429, -11
  %431 = icmp ult i8 %430, 2
  %432 = getelementptr inbounds %struct.word_type, ptr %427, i64 0, i32 1, i32 0, i32 1
  %433 = zext i8 %429 to i64
  %434 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %433
  %435 = select i1 %431, ptr %432, ptr %434
  %436 = load i8, ptr %435, align 1, !tbaa !5
  %437 = zext i8 %436 to i32
  store i32 %437, ptr @zz_size, align 4, !tbaa !14
  %438 = zext i8 %436 to i64
  %439 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %438
  %440 = load ptr, ptr %439, align 8, !tbaa !8
  store ptr %440, ptr %427, align 8, !tbaa !5
  %441 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %442 = load i32, ptr @zz_size, align 4, !tbaa !14
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %443
  store ptr %441, ptr %444, align 8, !tbaa !8
  %445 = load ptr, ptr @xx_tmp, align 8, !tbaa !8
  %446 = getelementptr inbounds [2 x %struct.LIST], ptr %445, i64 0, i64 1, i32 1
  %447 = load ptr, ptr %446, align 8, !tbaa !5
  %448 = icmp eq ptr %447, %445
  br i1 %448, label %449, label %453

449:                                              ; preds = %426
  %450 = call i32 @DisposeObject(ptr noundef nonnull %445) #8
  br label %453

451:                                              ; preds = %385, %381
  %452 = getelementptr inbounds %struct.head_type, ptr %0, i64 0, i32 15
  store i32 65535, ptr %452, align 8, !tbaa !5
  br label %453

453:                                              ; preds = %426, %449, %451
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  ret void
}

declare void @Constrained(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @MakeWord(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @CalculateOptimize(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [512 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  %6 = getelementptr inbounds %struct.head_type, ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %12 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %11, ptr noundef nonnull @.str.29) #8
  %13 = load ptr, ptr %6, align 8, !tbaa !5
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  br label %15

15:                                               ; preds = %10, %1
  %16 = phi ptr [ %8, %1 ], [ %14, %10 ]
  br label %17

17:                                               ; preds = %15, %17
  %18 = phi ptr [ %20, %17 ], [ %16, %15 ]
  %19 = getelementptr inbounds [2 x %struct.LIST], ptr %18, i64 0, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !5
  %21 = getelementptr inbounds %struct.word_type, ptr %20, i64 0, i32 1
  %22 = load i8, ptr %21, align 8, !tbaa !5
  switch i8 %22, label %23 [
    i8 0, label %17
    i8 1, label %26
  ]

23:                                               ; preds = %17
  %24 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %25 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %24, ptr noundef nonnull @.str.30) #8
  br label %26

26:                                               ; preds = %17, %23
  %27 = getelementptr inbounds [2 x %struct.LIST], ptr %20, i64 0, i64 1, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !5
  store ptr %28, ptr @xx_link, align 8, !tbaa !8
  %29 = getelementptr inbounds [2 x %struct.LIST], ptr %28, i64 0, i64 1, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !5
  %31 = icmp eq ptr %30, %28
  br i1 %31, label %37, label %32

32:                                               ; preds = %26
  store ptr %30, ptr @zz_res, align 8, !tbaa !8
  %33 = getelementptr inbounds [2 x %struct.LIST], ptr %28, i64 0, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !5
  %35 = getelementptr inbounds [2 x %struct.LIST], ptr %30, i64 0, i64 1
  store ptr %34, ptr %35, align 8, !tbaa !5
  %36 = getelementptr inbounds [2 x %struct.LIST], ptr %34, i64 0, i64 1, i32 1
  store ptr %30, ptr %36, align 8, !tbaa !5
  store ptr %28, ptr %29, align 8, !tbaa !5
  store ptr %28, ptr %33, align 8, !tbaa !5
  br label %37

37:                                               ; preds = %26, %32
  %38 = phi ptr [ %30, %32 ], [ null, %26 ]
  store ptr %38, ptr @xx_tmp, align 8, !tbaa !8
  store ptr %28, ptr @zz_hold, align 8, !tbaa !8
  %39 = getelementptr inbounds %struct.LIST, ptr %28, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !5
  %41 = icmp eq ptr %40, %28
  br i1 %41, label %50, label %42

42:                                               ; preds = %37
  store ptr %40, ptr @zz_res, align 8, !tbaa !8
  %43 = load ptr, ptr %28, align 8, !tbaa !5
  store ptr %43, ptr %40, align 8, !tbaa !5
  %44 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %45 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %46 = load ptr, ptr %45, align 8, !tbaa !5
  %47 = getelementptr inbounds %struct.LIST, ptr %46, i64 0, i32 1
  store ptr %44, ptr %47, align 8, !tbaa !5
  %48 = getelementptr inbounds %struct.LIST, ptr %45, i64 0, i32 1
  store ptr %45, ptr %48, align 8, !tbaa !5
  store ptr %45, ptr %45, align 8, !tbaa !5
  %49 = load ptr, ptr @xx_link, align 8, !tbaa !8
  br label %50

50:                                               ; preds = %37, %42
  %51 = phi ptr [ %28, %37 ], [ %49, %42 ]
  store ptr %51, ptr @zz_hold, align 8, !tbaa !8
  %52 = getelementptr inbounds %struct.word_type, ptr %51, i64 0, i32 1
  %53 = load i8, ptr %52, align 8, !tbaa !5
  %54 = add i8 %53, -11
  %55 = icmp ult i8 %54, 2
  %56 = getelementptr inbounds %struct.word_type, ptr %51, i64 0, i32 1, i32 0, i32 1
  %57 = zext i8 %53 to i64
  %58 = getelementptr inbounds [0 x i8], ptr @zz_lengths, i64 0, i64 %57
  %59 = select i1 %55, ptr %56, ptr %58
  %60 = load i8, ptr %59, align 1, !tbaa !5
  %61 = zext i8 %60 to i32
  store i32 %61, ptr @zz_size, align 4, !tbaa !14
  %62 = zext i8 %60 to i64
  %63 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !8
  store ptr %64, ptr %51, align 8, !tbaa !5
  %65 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %66 = load i32, ptr @zz_size, align 4, !tbaa !14
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %67
  store ptr %65, ptr %68, align 8, !tbaa !8
  %69 = load ptr, ptr @xx_tmp, align 8, !tbaa !8
  %70 = getelementptr inbounds [2 x %struct.LIST], ptr %69, i64 0, i64 1, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !5
  %72 = icmp eq ptr %71, %69
  br i1 %72, label %73, label %75

73:                                               ; preds = %50
  %74 = tail call i32 @DisposeObject(ptr noundef nonnull %69) #8
  br label %75

75:                                               ; preds = %73, %50
  %76 = getelementptr inbounds %struct.head_type, ptr %0, i64 0, i32 9
  %77 = load ptr, ptr %76, align 8, !tbaa !5
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %81 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %80, ptr noundef nonnull @.str.31) #8
  %82 = load ptr, ptr %76, align 8, !tbaa !5
  br label %83

83:                                               ; preds = %79, %75
  %84 = phi ptr [ %82, %79 ], [ %77, %75 ]
  %85 = getelementptr inbounds %struct.LIST, ptr %84, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !5
  %87 = icmp eq ptr %86, %84
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %90 = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %89, ptr noundef nonnull @.str.32) #8
  %91 = load ptr, ptr %76, align 8, !tbaa !5
  br label %92

92:                                               ; preds = %88, %83
  %93 = phi ptr [ %91, %88 ], [ %84, %83 ]
  %94 = load ptr, ptr %93, align 8, !tbaa !5
  br label %95

95:                                               ; preds = %95, %92
  %96 = phi ptr [ %94, %92 ], [ %98, %95 ]
  %97 = getelementptr inbounds [2 x %struct.LIST], ptr %96, i64 0, i64 1
  %98 = load ptr, ptr %97, align 8, !tbaa !5
  %99 = getelementptr inbounds %struct.word_type, ptr %98, i64 0, i32 1
  %100 = load i8, ptr %99, align 8, !tbaa !5
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %95, label %102

102:                                              ; preds = %95
  tail call void @EnterErrorBlock(i32 noundef 0) #8
  %103 = load ptr, ptr %6, align 8, !tbaa !5
  %104 = getelementptr inbounds %struct.closure_type, ptr %98, i64 0, i32 4
  %105 = load ptr, ptr %76, align 8, !tbaa !5
  %106 = call ptr @FillObject(ptr noundef %103, ptr noundef nonnull %104, ptr noundef %105, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %5) #8
  store ptr %106, ptr %6, align 8, !tbaa !5
  call void @LeaveErrorBlock(i32 noundef 0) #8
  %107 = load ptr, ptr %6, align 8, !tbaa !5
  %108 = getelementptr inbounds %struct.word_type, ptr %107, i64 0, i32 1
  %109 = load i8, ptr %108, align 8, !tbaa !5
  %110 = icmp eq i8 %109, 19
  br i1 %110, label %111, label %473

111:                                              ; preds = %102
  %112 = getelementptr inbounds %struct.LIST, ptr %107, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !5
  %114 = load ptr, ptr %107, align 8, !tbaa !5
  %115 = icmp eq ptr %113, %114
  br i1 %115, label %473, label %116

116:                                              ; preds = %111
  %117 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 2), align 1, !tbaa !5
  %118 = zext i8 %117 to i32
  store i32 %118, ptr @zz_size, align 4, !tbaa !14
  %119 = zext i8 %117 to i64
  %120 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %119
  %121 = load ptr, ptr %120, align 8, !tbaa !8
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %126

123:                                              ; preds = %116
  %124 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %125 = call ptr @GetMemory(i32 noundef %118, ptr noundef %124) #8
  store ptr %125, ptr @zz_hold, align 8, !tbaa !8
  br label %128

126:                                              ; preds = %116
  store ptr %121, ptr @zz_hold, align 8, !tbaa !8
  %127 = load ptr, ptr %121, align 8, !tbaa !5
  store ptr %127, ptr %120, align 8, !tbaa !8
  br label %128

128:                                              ; preds = %123, %126
  %129 = phi ptr [ %125, %123 ], [ %121, %126 ]
  %130 = getelementptr inbounds %struct.word_type, ptr %129, i64 0, i32 1
  store i8 2, ptr %130, align 8, !tbaa !5
  %131 = getelementptr inbounds [2 x %struct.LIST], ptr %129, i64 0, i64 1, i32 1
  store ptr %129, ptr %131, align 8, !tbaa !5
  %132 = getelementptr inbounds [2 x %struct.LIST], ptr %129, i64 0, i64 1
  store ptr %129, ptr %132, align 8, !tbaa !5
  %133 = getelementptr inbounds %struct.LIST, ptr %129, i64 0, i32 1
  store ptr %129, ptr %133, align 8, !tbaa !5
  store ptr %129, ptr %129, align 8, !tbaa !5
  %134 = load ptr, ptr @OptGallSym, align 8, !tbaa !8
  %135 = getelementptr inbounds %struct.closure_type, ptr %129, i64 0, i32 5
  store ptr %134, ptr %135, align 8, !tbaa !5
  %136 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1
  %137 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1, i32 0, i32 2
  %138 = load i16, ptr %137, align 2, !tbaa !5
  %139 = getelementptr inbounds %struct.word_type, ptr %129, i64 0, i32 1, i32 0, i32 2
  store i16 %138, ptr %139, align 2, !tbaa !5
  %140 = getelementptr inbounds %struct.word_type, ptr %0, i64 0, i32 1, i32 0, i32 3
  %141 = load i32, ptr %140, align 4
  %142 = and i32 %141, 1048575
  %143 = getelementptr inbounds %struct.word_type, ptr %129, i64 0, i32 1, i32 0, i32 3
  %144 = load i32, ptr %143, align 4
  %145 = and i32 %144, -1048576
  %146 = or disjoint i32 %145, %142
  store i32 %146, ptr %143, align 4
  %147 = load i32, ptr %140, align 4
  %148 = and i32 %147, -1048576
  %149 = or disjoint i32 %148, %142
  store i32 %149, ptr %143, align 4
  %150 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 10), align 1, !tbaa !5
  %151 = zext i8 %150 to i32
  store i32 %151, ptr @zz_size, align 4, !tbaa !14
  %152 = zext i8 %150 to i64
  %153 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %152
  %154 = load ptr, ptr %153, align 8, !tbaa !8
  %155 = icmp eq ptr %154, null
  br i1 %155, label %156, label %159

156:                                              ; preds = %128
  %157 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %158 = call ptr @GetMemory(i32 noundef %151, ptr noundef %157) #8
  store ptr %158, ptr @zz_hold, align 8, !tbaa !8
  br label %161

159:                                              ; preds = %128
  store ptr %154, ptr @zz_hold, align 8, !tbaa !8
  %160 = load ptr, ptr %154, align 8, !tbaa !5
  store ptr %160, ptr %153, align 8, !tbaa !8
  br label %161

161:                                              ; preds = %156, %159
  %162 = phi ptr [ %158, %156 ], [ %154, %159 ]
  %163 = getelementptr inbounds %struct.word_type, ptr %162, i64 0, i32 1
  store i8 10, ptr %163, align 8, !tbaa !5
  %164 = getelementptr inbounds [2 x %struct.LIST], ptr %162, i64 0, i64 1
  %165 = getelementptr inbounds [2 x %struct.LIST], ptr %162, i64 0, i64 1, i32 1
  store ptr %162, ptr %165, align 8, !tbaa !5
  store ptr %162, ptr %164, align 8, !tbaa !5
  %166 = getelementptr inbounds %struct.LIST, ptr %162, i64 0, i32 1
  store ptr %162, ptr %166, align 8, !tbaa !5
  store ptr %162, ptr %162, align 8, !tbaa !5
  %167 = load ptr, ptr @OptGallSym, align 8, !tbaa !8
  %168 = call ptr @ChildSym(ptr noundef %167, i32 noundef 146) #8
  %169 = getelementptr inbounds %struct.closure_type, ptr %162, i64 0, i32 5
  store ptr %168, ptr %169, align 8, !tbaa !5
  %170 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %171 = zext i8 %170 to i32
  store i32 %171, ptr @zz_size, align 4, !tbaa !14
  %172 = zext i8 %170 to i64
  %173 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %172
  %174 = load ptr, ptr %173, align 8, !tbaa !8
  %175 = icmp eq ptr %174, null
  br i1 %175, label %176, label %179

176:                                              ; preds = %161
  %177 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %178 = call ptr @GetMemory(i32 noundef %171, ptr noundef %177) #8
  br label %181

179:                                              ; preds = %161
  store ptr %174, ptr @zz_hold, align 8, !tbaa !8
  %180 = load ptr, ptr %174, align 8, !tbaa !5
  store ptr %180, ptr %173, align 8, !tbaa !8
  br label %181

181:                                              ; preds = %176, %179
  %182 = phi ptr [ %178, %176 ], [ %174, %179 ]
  %183 = getelementptr inbounds %struct.word_type, ptr %182, i64 0, i32 1
  store i8 0, ptr %183, align 8, !tbaa !5
  %184 = getelementptr inbounds [2 x %struct.LIST], ptr %182, i64 0, i64 1, i32 1
  store ptr %182, ptr %184, align 8, !tbaa !5
  %185 = getelementptr inbounds [2 x %struct.LIST], ptr %182, i64 0, i64 1
  store ptr %182, ptr %185, align 8, !tbaa !5
  %186 = getelementptr inbounds %struct.LIST, ptr %182, i64 0, i32 1
  store ptr %182, ptr %186, align 8, !tbaa !5
  store ptr %182, ptr %182, align 8, !tbaa !5
  store ptr %182, ptr @xx_link, align 8, !tbaa !8
  store ptr %182, ptr @zz_res, align 8, !tbaa !8
  store ptr %129, ptr @zz_hold, align 8, !tbaa !8
  %187 = load ptr, ptr %129, align 8, !tbaa !5
  store ptr %187, ptr @zz_tmp, align 8, !tbaa !8
  %188 = load ptr, ptr %182, align 8, !tbaa !5
  store ptr %188, ptr %129, align 8, !tbaa !5
  %189 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %190 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %191 = load ptr, ptr %190, align 8, !tbaa !5
  %192 = getelementptr inbounds %struct.LIST, ptr %191, i64 0, i32 1
  store ptr %189, ptr %192, align 8, !tbaa !5
  %193 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %193, ptr %190, align 8, !tbaa !5
  %194 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %195 = getelementptr inbounds %struct.LIST, ptr %193, i64 0, i32 1
  store ptr %194, ptr %195, align 8, !tbaa !5
  %196 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %196, ptr @zz_res, align 8, !tbaa !8
  store ptr %162, ptr @zz_hold, align 8, !tbaa !8
  %197 = icmp eq ptr %196, null
  br i1 %197, label %204, label %198

198:                                              ; preds = %181
  %199 = load ptr, ptr %164, align 8, !tbaa !5
  store ptr %199, ptr @zz_tmp, align 8, !tbaa !8
  %200 = getelementptr inbounds [2 x %struct.LIST], ptr %196, i64 0, i64 1
  %201 = load ptr, ptr %200, align 8, !tbaa !5
  store ptr %201, ptr %164, align 8, !tbaa !5
  %202 = getelementptr inbounds [2 x %struct.LIST], ptr %201, i64 0, i64 1, i32 1
  store ptr %162, ptr %202, align 8, !tbaa !5
  store ptr %199, ptr %200, align 8, !tbaa !5
  %203 = getelementptr inbounds [2 x %struct.LIST], ptr %199, i64 0, i64 1, i32 1
  store ptr %196, ptr %203, align 8, !tbaa !5
  br label %204

204:                                              ; preds = %181, %198
  %205 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 17), align 1, !tbaa !5
  %206 = zext i8 %205 to i32
  store i32 %206, ptr @zz_size, align 4, !tbaa !14
  %207 = zext i8 %205 to i64
  %208 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %207
  %209 = load ptr, ptr %208, align 8, !tbaa !8
  %210 = icmp eq ptr %209, null
  br i1 %210, label %211, label %214

211:                                              ; preds = %204
  %212 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %213 = call ptr @GetMemory(i32 noundef %206, ptr noundef %212) #8
  store ptr %213, ptr @zz_hold, align 8, !tbaa !8
  br label %216

214:                                              ; preds = %204
  store ptr %209, ptr @zz_hold, align 8, !tbaa !8
  %215 = load ptr, ptr %209, align 8, !tbaa !5
  store ptr %215, ptr %208, align 8, !tbaa !8
  br label %216

216:                                              ; preds = %211, %214
  %217 = phi ptr [ %213, %211 ], [ %209, %214 ]
  %218 = getelementptr inbounds %struct.word_type, ptr %217, i64 0, i32 1
  store i8 17, ptr %218, align 8, !tbaa !5
  %219 = getelementptr inbounds [2 x %struct.LIST], ptr %217, i64 0, i64 1
  %220 = getelementptr inbounds [2 x %struct.LIST], ptr %217, i64 0, i64 1, i32 1
  store ptr %217, ptr %220, align 8, !tbaa !5
  store ptr %217, ptr %219, align 8, !tbaa !5
  %221 = getelementptr inbounds %struct.LIST, ptr %217, i64 0, i32 1
  store ptr %217, ptr %221, align 8, !tbaa !5
  store ptr %217, ptr %217, align 8, !tbaa !5
  %222 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %223 = zext i8 %222 to i32
  store i32 %223, ptr @zz_size, align 4, !tbaa !14
  %224 = zext i8 %222 to i64
  %225 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %224
  %226 = load ptr, ptr %225, align 8, !tbaa !8
  %227 = icmp eq ptr %226, null
  br i1 %227, label %228, label %231

228:                                              ; preds = %216
  %229 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %230 = call ptr @GetMemory(i32 noundef %223, ptr noundef %229) #8
  br label %233

231:                                              ; preds = %216
  store ptr %226, ptr @zz_hold, align 8, !tbaa !8
  %232 = load ptr, ptr %226, align 8, !tbaa !5
  store ptr %232, ptr %225, align 8, !tbaa !8
  br label %233

233:                                              ; preds = %228, %231
  %234 = phi ptr [ %230, %228 ], [ %226, %231 ]
  %235 = getelementptr inbounds %struct.word_type, ptr %234, i64 0, i32 1
  store i8 0, ptr %235, align 8, !tbaa !5
  %236 = getelementptr inbounds [2 x %struct.LIST], ptr %234, i64 0, i64 1, i32 1
  store ptr %234, ptr %236, align 8, !tbaa !5
  %237 = getelementptr inbounds [2 x %struct.LIST], ptr %234, i64 0, i64 1
  store ptr %234, ptr %237, align 8, !tbaa !5
  %238 = getelementptr inbounds %struct.LIST, ptr %234, i64 0, i32 1
  store ptr %234, ptr %238, align 8, !tbaa !5
  store ptr %234, ptr %234, align 8, !tbaa !5
  store ptr %234, ptr @xx_link, align 8, !tbaa !8
  store ptr %234, ptr @zz_res, align 8, !tbaa !8
  store ptr %162, ptr @zz_hold, align 8, !tbaa !8
  %239 = load ptr, ptr %162, align 8, !tbaa !5
  store ptr %239, ptr @zz_tmp, align 8, !tbaa !8
  %240 = load ptr, ptr %234, align 8, !tbaa !5
  store ptr %240, ptr %162, align 8, !tbaa !5
  %241 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %242 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %243 = load ptr, ptr %242, align 8, !tbaa !5
  %244 = getelementptr inbounds %struct.LIST, ptr %243, i64 0, i32 1
  store ptr %241, ptr %244, align 8, !tbaa !5
  %245 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %245, ptr %242, align 8, !tbaa !5
  %246 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %247 = getelementptr inbounds %struct.LIST, ptr %245, i64 0, i32 1
  store ptr %246, ptr %247, align 8, !tbaa !5
  %248 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %248, ptr @zz_res, align 8, !tbaa !8
  store ptr %217, ptr @zz_hold, align 8, !tbaa !8
  %249 = icmp eq ptr %248, null
  br i1 %249, label %256, label %250

250:                                              ; preds = %233
  %251 = load ptr, ptr %219, align 8, !tbaa !5
  store ptr %251, ptr @zz_tmp, align 8, !tbaa !8
  %252 = getelementptr inbounds [2 x %struct.LIST], ptr %248, i64 0, i64 1
  %253 = load ptr, ptr %252, align 8, !tbaa !5
  store ptr %253, ptr %219, align 8, !tbaa !5
  %254 = getelementptr inbounds [2 x %struct.LIST], ptr %253, i64 0, i64 1, i32 1
  store ptr %217, ptr %254, align 8, !tbaa !5
  store ptr %251, ptr %252, align 8, !tbaa !5
  %255 = getelementptr inbounds [2 x %struct.LIST], ptr %251, i64 0, i64 1, i32 1
  store ptr %248, ptr %255, align 8, !tbaa !5
  br label %256

256:                                              ; preds = %233, %250
  %257 = load i32, ptr %5, align 4, !tbaa !14
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %298, label %259

259:                                              ; preds = %256
  %260 = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.18, ptr noundef nonnull %136) #8
  %261 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %262 = zext i8 %261 to i32
  store i32 %262, ptr @zz_size, align 4, !tbaa !14
  %263 = zext i8 %261 to i64
  %264 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %263
  %265 = load ptr, ptr %264, align 8, !tbaa !8
  %266 = icmp eq ptr %265, null
  br i1 %266, label %267, label %270

267:                                              ; preds = %259
  %268 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %269 = call ptr @GetMemory(i32 noundef %262, ptr noundef %268) #8
  br label %272

270:                                              ; preds = %259
  store ptr %265, ptr @zz_hold, align 8, !tbaa !8
  %271 = load ptr, ptr %265, align 8, !tbaa !5
  store ptr %271, ptr %264, align 8, !tbaa !8
  br label %272

272:                                              ; preds = %267, %270
  %273 = phi ptr [ %269, %267 ], [ %265, %270 ]
  %274 = getelementptr inbounds %struct.word_type, ptr %273, i64 0, i32 1
  store i8 0, ptr %274, align 8, !tbaa !5
  %275 = getelementptr inbounds [2 x %struct.LIST], ptr %273, i64 0, i64 1, i32 1
  store ptr %273, ptr %275, align 8, !tbaa !5
  %276 = getelementptr inbounds [2 x %struct.LIST], ptr %273, i64 0, i64 1
  store ptr %273, ptr %276, align 8, !tbaa !5
  %277 = getelementptr inbounds %struct.LIST, ptr %273, i64 0, i32 1
  store ptr %273, ptr %277, align 8, !tbaa !5
  store ptr %273, ptr %273, align 8, !tbaa !5
  store ptr %273, ptr @xx_link, align 8, !tbaa !8
  store ptr %273, ptr @zz_res, align 8, !tbaa !8
  store ptr %217, ptr @zz_hold, align 8, !tbaa !8
  %278 = load ptr, ptr %217, align 8, !tbaa !5
  store ptr %278, ptr @zz_tmp, align 8, !tbaa !8
  %279 = load ptr, ptr %273, align 8, !tbaa !5
  store ptr %279, ptr %217, align 8, !tbaa !5
  %280 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %281 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %282 = load ptr, ptr %281, align 8, !tbaa !5
  %283 = getelementptr inbounds %struct.LIST, ptr %282, i64 0, i32 1
  store ptr %280, ptr %283, align 8, !tbaa !5
  %284 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %284, ptr %281, align 8, !tbaa !5
  %285 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %286 = getelementptr inbounds %struct.LIST, ptr %284, i64 0, i32 1
  store ptr %285, ptr %286, align 8, !tbaa !5
  %287 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %287, ptr @zz_res, align 8, !tbaa !8
  store ptr %260, ptr @zz_hold, align 8, !tbaa !8
  %288 = icmp eq ptr %260, null
  %289 = icmp eq ptr %287, null
  %290 = select i1 %288, i1 true, i1 %289
  br i1 %290, label %298, label %291

291:                                              ; preds = %272
  %292 = getelementptr inbounds [2 x %struct.LIST], ptr %260, i64 0, i64 1
  %293 = load ptr, ptr %292, align 8, !tbaa !5
  store ptr %293, ptr @zz_tmp, align 8, !tbaa !8
  %294 = getelementptr inbounds [2 x %struct.LIST], ptr %287, i64 0, i64 1
  %295 = load ptr, ptr %294, align 8, !tbaa !5
  store ptr %295, ptr %292, align 8, !tbaa !5
  %296 = getelementptr inbounds [2 x %struct.LIST], ptr %295, i64 0, i64 1, i32 1
  store ptr %260, ptr %296, align 8, !tbaa !5
  store ptr %293, ptr %294, align 8, !tbaa !5
  %297 = getelementptr inbounds [2 x %struct.LIST], ptr %293, i64 0, i64 1, i32 1
  store ptr %287, ptr %297, align 8, !tbaa !5
  br label %298

298:                                              ; preds = %272, %291, %256
  %299 = load ptr, ptr %6, align 8, !tbaa !5
  %300 = getelementptr inbounds %struct.LIST, ptr %299, i64 0, i32 1
  %301 = load ptr, ptr %300, align 8, !tbaa !5
  %302 = icmp eq ptr %301, %299
  br i1 %302, label %449, label %303

303:                                              ; preds = %298, %443
  %304 = phi ptr [ %446, %443 ], [ %301, %298 ]
  %305 = phi i32 [ %444, %443 ], [ 0, %298 ]
  br label %306

306:                                              ; preds = %303, %306
  %307 = phi ptr [ %309, %306 ], [ %304, %303 ]
  %308 = getelementptr inbounds [2 x %struct.LIST], ptr %307, i64 0, i64 1
  %309 = load ptr, ptr %308, align 8, !tbaa !5
  %310 = getelementptr inbounds %struct.word_type, ptr %309, i64 0, i32 1
  %311 = load i8, ptr %310, align 8, !tbaa !5
  switch i8 %311, label %443 [
    i8 0, label %306
    i8 17, label %312
  ]

312:                                              ; preds = %306
  %313 = getelementptr inbounds %struct.word_type, ptr %309, i64 0, i32 1
  %314 = getelementptr inbounds %struct.LIST, ptr %309, i64 0, i32 1
  %315 = load ptr, ptr %314, align 8, !tbaa !5
  %316 = icmp eq ptr %315, %309
  br i1 %316, label %333, label %317

317:                                              ; preds = %312, %328
  %318 = phi ptr [ %331, %328 ], [ %315, %312 ]
  %319 = phi i32 [ %329, %328 ], [ 0, %312 ]
  br label %320

320:                                              ; preds = %317, %320
  %321 = phi ptr [ %323, %320 ], [ %318, %317 ]
  %322 = getelementptr inbounds [2 x %struct.LIST], ptr %321, i64 0, i64 1
  %323 = load ptr, ptr %322, align 8, !tbaa !5
  %324 = getelementptr inbounds %struct.word_type, ptr %323, i64 0, i32 1
  %325 = load i8, ptr %324, align 8, !tbaa !5
  switch i8 %325, label %326 [
    i8 0, label %320
    i8 1, label %328
  ]

326:                                              ; preds = %320
  %327 = add nsw i32 %319, 1
  br label %328

328:                                              ; preds = %320, %326
  %329 = phi i32 [ %327, %326 ], [ %319, %320 ]
  %330 = getelementptr inbounds %struct.LIST, ptr %318, i64 0, i32 1
  %331 = load ptr, ptr %330, align 8, !tbaa !5
  %332 = icmp eq ptr %331, %309
  br i1 %332, label %333, label %317

333:                                              ; preds = %328, %312
  %334 = phi i32 [ 0, %312 ], [ %329, %328 ]
  %335 = call ptr @StringInt(i32 noundef %334) #8
  %336 = call ptr @MakeWord(i32 noundef 11, ptr noundef %335, ptr noundef nonnull %313) #8
  %337 = load ptr, ptr %221, align 8, !tbaa !5
  %338 = icmp eq ptr %337, %217
  br i1 %338, label %404, label %339

339:                                              ; preds = %333
  %340 = load i8, ptr getelementptr inbounds ([0 x i8], ptr @zz_lengths, i64 0, i64 1), align 1, !tbaa !5
  %341 = zext i8 %340 to i32
  store i32 %341, ptr @zz_size, align 4, !tbaa !14
  %342 = zext i8 %340 to i64
  %343 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %342
  %344 = load ptr, ptr %343, align 8, !tbaa !8
  %345 = icmp eq ptr %344, null
  br i1 %345, label %346, label %349

346:                                              ; preds = %339
  %347 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %348 = call ptr @GetMemory(i32 noundef %341, ptr noundef %347) #8
  store ptr %348, ptr @zz_hold, align 8, !tbaa !8
  br label %351

349:                                              ; preds = %339
  store ptr %344, ptr @zz_hold, align 8, !tbaa !8
  %350 = load ptr, ptr %344, align 8, !tbaa !5
  store ptr %350, ptr %343, align 8, !tbaa !8
  br label %351

351:                                              ; preds = %346, %349
  %352 = phi ptr [ %348, %346 ], [ %344, %349 ]
  %353 = getelementptr inbounds %struct.word_type, ptr %352, i64 0, i32 1
  store i8 1, ptr %353, align 8, !tbaa !5
  %354 = getelementptr inbounds [2 x %struct.LIST], ptr %352, i64 0, i64 1
  %355 = getelementptr inbounds [2 x %struct.LIST], ptr %352, i64 0, i64 1, i32 1
  store ptr %352, ptr %355, align 8, !tbaa !5
  store ptr %352, ptr %354, align 8, !tbaa !5
  %356 = getelementptr inbounds %struct.LIST, ptr %352, i64 0, i32 1
  store ptr %352, ptr %356, align 8, !tbaa !5
  store ptr %352, ptr %352, align 8, !tbaa !5
  %357 = getelementptr inbounds %struct.gapobj_type, ptr %352, i64 0, i32 3
  %358 = load i16, ptr %357, align 4
  %359 = and i16 %358, 127
  %360 = or disjoint i16 %359, 9728
  store i16 %360, ptr %357, align 4
  %361 = getelementptr inbounds %struct.gapobj_type, ptr %352, i64 0, i32 3, i32 1
  store i16 120, ptr %361, align 2, !tbaa !5
  %362 = add nsw i32 %305, 1
  %363 = srem i32 %362, 20
  %364 = icmp ne i32 %363, 0
  %365 = zext i1 %364 to i8
  %366 = xor i1 %364, true
  %367 = zext i1 %366 to i8
  %368 = getelementptr inbounds i8, ptr %352, i64 41
  store i8 %365, ptr %368, align 1
  %369 = getelementptr inbounds i8, ptr %352, i64 42
  store i8 %367, ptr %369, align 2
  %370 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %371 = zext i8 %370 to i32
  store i32 %371, ptr @zz_size, align 4, !tbaa !14
  %372 = zext i8 %370 to i64
  %373 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %372
  %374 = load ptr, ptr %373, align 8, !tbaa !8
  %375 = icmp eq ptr %374, null
  br i1 %375, label %376, label %379

376:                                              ; preds = %351
  %377 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %378 = call ptr @GetMemory(i32 noundef %371, ptr noundef %377) #8
  br label %381

379:                                              ; preds = %351
  store ptr %374, ptr @zz_hold, align 8, !tbaa !8
  %380 = load ptr, ptr %374, align 8, !tbaa !5
  store ptr %380, ptr %373, align 8, !tbaa !8
  br label %381

381:                                              ; preds = %376, %379
  %382 = phi ptr [ %378, %376 ], [ %374, %379 ]
  %383 = getelementptr inbounds %struct.word_type, ptr %382, i64 0, i32 1
  store i8 0, ptr %383, align 8, !tbaa !5
  %384 = getelementptr inbounds [2 x %struct.LIST], ptr %382, i64 0, i64 1, i32 1
  store ptr %382, ptr %384, align 8, !tbaa !5
  %385 = getelementptr inbounds [2 x %struct.LIST], ptr %382, i64 0, i64 1
  store ptr %382, ptr %385, align 8, !tbaa !5
  %386 = getelementptr inbounds %struct.LIST, ptr %382, i64 0, i32 1
  store ptr %382, ptr %386, align 8, !tbaa !5
  store ptr %382, ptr %382, align 8, !tbaa !5
  store ptr %382, ptr @xx_link, align 8, !tbaa !8
  store ptr %382, ptr @zz_res, align 8, !tbaa !8
  store ptr %217, ptr @zz_hold, align 8, !tbaa !8
  %387 = load ptr, ptr %217, align 8, !tbaa !5
  store ptr %387, ptr @zz_tmp, align 8, !tbaa !8
  %388 = load ptr, ptr %382, align 8, !tbaa !5
  store ptr %388, ptr %217, align 8, !tbaa !5
  %389 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %390 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %391 = load ptr, ptr %390, align 8, !tbaa !5
  %392 = getelementptr inbounds %struct.LIST, ptr %391, i64 0, i32 1
  store ptr %389, ptr %392, align 8, !tbaa !5
  %393 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %393, ptr %390, align 8, !tbaa !5
  %394 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %395 = getelementptr inbounds %struct.LIST, ptr %393, i64 0, i32 1
  store ptr %394, ptr %395, align 8, !tbaa !5
  %396 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %396, ptr @zz_res, align 8, !tbaa !8
  store ptr %352, ptr @zz_hold, align 8, !tbaa !8
  %397 = icmp eq ptr %396, null
  br i1 %397, label %404, label %398

398:                                              ; preds = %381
  %399 = load ptr, ptr %354, align 8, !tbaa !5
  store ptr %399, ptr @zz_tmp, align 8, !tbaa !8
  %400 = getelementptr inbounds [2 x %struct.LIST], ptr %396, i64 0, i64 1
  %401 = load ptr, ptr %400, align 8, !tbaa !5
  store ptr %401, ptr %354, align 8, !tbaa !5
  %402 = getelementptr inbounds [2 x %struct.LIST], ptr %401, i64 0, i64 1, i32 1
  store ptr %352, ptr %402, align 8, !tbaa !5
  store ptr %399, ptr %400, align 8, !tbaa !5
  %403 = getelementptr inbounds [2 x %struct.LIST], ptr %399, i64 0, i64 1, i32 1
  store ptr %396, ptr %403, align 8, !tbaa !5
  br label %404

404:                                              ; preds = %381, %398, %333
  %405 = phi i32 [ %362, %398 ], [ %305, %333 ], [ %362, %381 ]
  %406 = load i8, ptr @zz_lengths, align 1, !tbaa !5
  %407 = zext i8 %406 to i32
  store i32 %407, ptr @zz_size, align 4, !tbaa !14
  %408 = zext i8 %406 to i64
  %409 = getelementptr inbounds [0 x ptr], ptr @zz_free, i64 0, i64 %408
  %410 = load ptr, ptr %409, align 8, !tbaa !8
  %411 = icmp eq ptr %410, null
  br i1 %411, label %412, label %415

412:                                              ; preds = %404
  %413 = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %414 = call ptr @GetMemory(i32 noundef %407, ptr noundef %413) #8
  br label %417

415:                                              ; preds = %404
  store ptr %410, ptr @zz_hold, align 8, !tbaa !8
  %416 = load ptr, ptr %410, align 8, !tbaa !5
  store ptr %416, ptr %409, align 8, !tbaa !8
  br label %417

417:                                              ; preds = %412, %415
  %418 = phi ptr [ %414, %412 ], [ %410, %415 ]
  %419 = getelementptr inbounds %struct.word_type, ptr %418, i64 0, i32 1
  store i8 0, ptr %419, align 8, !tbaa !5
  %420 = getelementptr inbounds [2 x %struct.LIST], ptr %418, i64 0, i64 1, i32 1
  store ptr %418, ptr %420, align 8, !tbaa !5
  %421 = getelementptr inbounds [2 x %struct.LIST], ptr %418, i64 0, i64 1
  store ptr %418, ptr %421, align 8, !tbaa !5
  %422 = getelementptr inbounds %struct.LIST, ptr %418, i64 0, i32 1
  store ptr %418, ptr %422, align 8, !tbaa !5
  store ptr %418, ptr %418, align 8, !tbaa !5
  store ptr %418, ptr @xx_link, align 8, !tbaa !8
  store ptr %418, ptr @zz_res, align 8, !tbaa !8
  store ptr %217, ptr @zz_hold, align 8, !tbaa !8
  %423 = load ptr, ptr %217, align 8, !tbaa !5
  store ptr %423, ptr @zz_tmp, align 8, !tbaa !8
  %424 = load ptr, ptr %418, align 8, !tbaa !5
  store ptr %424, ptr %217, align 8, !tbaa !5
  %425 = load ptr, ptr @zz_hold, align 8, !tbaa !8
  %426 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %427 = load ptr, ptr %426, align 8, !tbaa !5
  %428 = getelementptr inbounds %struct.LIST, ptr %427, i64 0, i32 1
  store ptr %425, ptr %428, align 8, !tbaa !5
  %429 = load ptr, ptr @zz_tmp, align 8, !tbaa !8
  store ptr %429, ptr %426, align 8, !tbaa !5
  %430 = load ptr, ptr @zz_res, align 8, !tbaa !8
  %431 = getelementptr inbounds %struct.LIST, ptr %429, i64 0, i32 1
  store ptr %430, ptr %431, align 8, !tbaa !5
  %432 = load ptr, ptr @xx_link, align 8, !tbaa !8
  store ptr %432, ptr @zz_res, align 8, !tbaa !8
  store ptr %336, ptr @zz_hold, align 8, !tbaa !8
  %433 = icmp eq ptr %336, null
  %434 = icmp eq ptr %432, null
  %435 = select i1 %433, i1 true, i1 %434
  br i1 %435, label %443, label %436

436:                                              ; preds = %417
  %437 = getelementptr inbounds [2 x %struct.LIST], ptr %336, i64 0, i64 1
  %438 = load ptr, ptr %437, align 8, !tbaa !5
  store ptr %438, ptr @zz_tmp, align 8, !tbaa !8
  %439 = getelementptr inbounds [2 x %struct.LIST], ptr %432, i64 0, i64 1
  %440 = load ptr, ptr %439, align 8, !tbaa !5
  store ptr %440, ptr %437, align 8, !tbaa !5
  %441 = getelementptr inbounds [2 x %struct.LIST], ptr %440, i64 0, i64 1, i32 1
  store ptr %336, ptr %441, align 8, !tbaa !5
  store ptr %438, ptr %439, align 8, !tbaa !5
  %442 = getelementptr inbounds [2 x %struct.LIST], ptr %438, i64 0, i64 1, i32 1
  store ptr %432, ptr %442, align 8, !tbaa !5
  br label %443

443:                                              ; preds = %306, %417, %436
  %444 = phi i32 [ %405, %436 ], [ %405, %417 ], [ %305, %306 ]
  %445 = getelementptr inbounds %struct.LIST, ptr %304, i64 0, i32 1
  %446 = load ptr, ptr %445, align 8, !tbaa !5
  %447 = load ptr, ptr %6, align 8, !tbaa !5
  %448 = icmp eq ptr %446, %447
  br i1 %448, label %449, label %303

449:                                              ; preds = %443, %298
  %450 = phi ptr [ %299, %298 ], [ %446, %443 ]
  %451 = call i32 @DisposeObject(ptr noundef %450) #8
  store ptr null, ptr %6, align 8, !tbaa !5
  %452 = load ptr, ptr %76, align 8, !tbaa !5
  %453 = call i32 @DisposeObject(ptr noundef %452) #8
  store ptr null, ptr %76, align 8, !tbaa !5
  %454 = load i32, ptr @AllowCrossDb, align 4, !tbaa !14
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %473, label %456

456:                                              ; preds = %449
  %457 = getelementptr inbounds %struct.closure_type, ptr %0, i64 0, i32 5
  %458 = load ptr, ptr %457, align 8, !tbaa !5
  %459 = call ptr @SymName(ptr noundef %458) #8
  %460 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %459) #8
  %461 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2)
  %462 = getelementptr inbounds i8, ptr %2, i64 %461
  store i16 46, ptr %462, align 1
  %463 = load i32, ptr %140, align 4
  %464 = and i32 %463, 1048575
  %465 = call ptr @StringInt(i32 noundef %464) #8
  %466 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %465) #8
  %467 = call zeroext i16 @DatabaseFileNum(ptr noundef nonnull %136) #8
  call void @AppendToFile(ptr noundef nonnull %129, i16 noundef zeroext %467, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  %468 = load ptr, ptr @NewCrossDb, align 8, !tbaa !8
  %469 = load ptr, ptr @OptGallSym, align 8, !tbaa !8
  %470 = load i32, ptr %3, align 4, !tbaa !14
  %471 = sext i32 %470 to i64
  %472 = load i32, ptr %4, align 4, !tbaa !14
  call void @DbInsert(ptr noundef %468, i32 noundef 0, ptr noundef %469, ptr noundef nonnull %2, ptr noundef nonnull %136, ptr noundef nonnull @.str.33, i16 noundef zeroext %467, i64 noundef %471, i32 noundef %472, i32 noundef 0) #8
  br label %473

473:                                              ; preds = %449, %456, %102, %111
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %2) #8
  ret void
}

declare void @EnterErrorBlock(i32 noundef) local_unnamed_addr #2

declare ptr @FillObject(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @LeaveErrorBlock(i32 noundef) local_unnamed_addr #2

declare ptr @ChildSym(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i16 @DatabaseFileNum(ptr noundef) local_unnamed_addr #2

declare void @AppendToFile(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @DbInsert(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture) local_unnamed_addr #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind willreturn memory(argmem: read) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"short", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !6, i64 0}
!16 = !{!17, !11, i64 8}
!17 = !{!"", !6, i64 0, !6, i64 4, !11, i64 8, !11, i64 10, !15, i64 12, !15, i64 13, !15, i64 14, !15, i64 15, !15, i64 15, !15, i64 15}
!18 = !{!17, !11, i64 10}
