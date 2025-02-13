; ModuleID = 'ldecod_src/config_common.c'
source_filename = "ldecod_src/config_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.inp_par = type { [255 x i8], [255 x i8], [255 x i8], i32, i32, i32, i32, i32, i32, %struct.frame_format, %struct.frame_format, i32, i32, %struct.video_data_file, %struct.video_data_file, %struct.video_data_file, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.frame_format = type { i32, i32, double, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32, [3 x i32], [3 x i32], [3 x i32], i32, i32 }
%struct.video_data_file = type { [255 x i8], [255 x i8], [255 x i8], i32, i32, %struct.frame_format, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.Mapping = type { ptr, ptr, i32, double, i32, double, double, i32 }

@cfgparams = dso_local local_unnamed_addr global %struct.inp_par zeroinitializer, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@errortext = external global [300 x i8], align 16
@.str.1 = private unnamed_addr constant [35 x i8] c"Cannot open configuration file %s.\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Cannot fseek in configuration file %s.\00", align 1
@.str.3 = private unnamed_addr constant [71 x i8] c"Unreasonable Filesize %ld reported by ftell for configuration file %s.\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"GetConfigFileContent: buf\00", align 1
@.str.5 = private unnamed_addr constant [68 x i8] c"\0A\09Parsing error in config file: Parameter Name '%s' not recognized.\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.7 = private unnamed_addr constant [78 x i8] c" Parsing error in config file: '=' expected as the second token in each line.\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.9 = private unnamed_addr constant [74 x i8] c" Parsing error: Expected numerical value for Parameter of %s, found '%s'.\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.12 = private unnamed_addr constant [57 x i8] c"Unknown value type in the map definition of configfile.h\00", align 1
@.str.13 = private unnamed_addr constant [90 x i8] c"Error in input parameter %s. Check configuration file. Value should be in [%d, %d] range.\00", align 1
@.str.14 = private unnamed_addr constant [94 x i8] c"Error in input parameter %s. Check configuration file. Value should be in [%.2f, %.2f] range.\00", align 1
@.str.15 = private unnamed_addr constant [92 x i8] c"Error in input parameter %s. Check configuration file. Value should not be smaller than %d.\00", align 1
@.str.16 = private unnamed_addr constant [94 x i8] c"Error in input parameter %s. Check configuration file. Value should not be smaller than %2.f.\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"*               %s                   *\0A\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"Parameter %s = %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"Parameter %s = %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"Parameter %s = %.2f\0A\00", align 1
@str.23 = private unnamed_addr constant [55 x i8] c"******************************************************\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @GetConfigFileContent(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.1, ptr noundef %0) #14
  br label %30

6:                                                ; preds = %1
  %7 = tail call i32 @fseek(ptr noundef nonnull %2, i64 noundef 0, i32 noundef 2) #13
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.2, ptr noundef %0) #14
  br label %30

11:                                               ; preds = %6
  %12 = tail call i64 @ftell(ptr noundef nonnull %2) #13
  %13 = icmp ugt i64 %12, 100000
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.3, i64 noundef %12, ptr noundef %0) #14
  br label %30

16:                                               ; preds = %11
  %17 = tail call i32 @fseek(ptr noundef nonnull %2, i64 noundef 0, i32 noundef 0) #13
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.2, ptr noundef %0) #14
  br label %30

21:                                               ; preds = %16
  %22 = add nuw nsw i64 %12, 1
  %23 = tail call noalias ptr @malloc(i64 noundef %22) #15
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  tail call void @no_mem_exit(ptr noundef nonnull @.str.4) #14
  br label %26

26:                                               ; preds = %25, %21
  %27 = tail call i64 @fread(ptr noundef %23, i64 noundef 1, i64 noundef %12, ptr noundef nonnull %2) #13
  %28 = getelementptr inbounds i8, ptr %23, i64 %27
  store i8 0, ptr %28, align 1, !tbaa !35
  %29 = tail call i32 @fclose(ptr noundef nonnull %2) #13
  br label %30

30:                                               ; preds = %26, %19, %14, %9, %4
  %31 = phi ptr [ null, %4 ], [ null, %9 ], [ null, %14 ], [ null, %19 ], [ %23, %26 ]
  ret ptr %31
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @no_mem_exit(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ParseContent(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [10000 x ptr], align 16
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 80000, ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80000) %5, i8 0, i64 80000, i1 false)
  %8 = sext i32 %3 to i64
  %9 = getelementptr inbounds i8, ptr %2, i64 %8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  %10 = icmp sgt i32 %3, 0
  br i1 %10, label %11, label %134

11:                                               ; preds = %4, %54
  %12 = phi i32 [ %58, %54 ], [ 0, %4 ]
  %13 = phi ptr [ %57, %54 ], [ %2, %4 ]
  %14 = phi i32 [ %56, %54 ], [ 0, %4 ]
  %15 = phi i32 [ %55, %54 ], [ 0, %4 ]
  %16 = load i8, ptr %13, align 1, !tbaa !35
  switch i8 %16, label %45 [
    i8 13, label %17
    i8 35, label %19
    i8 10, label %27
    i8 32, label %29
    i8 9, label %29
    i8 34, label %33
  ]

17:                                               ; preds = %11
  %18 = getelementptr inbounds i8, ptr %13, i64 1
  br label %54

19:                                               ; preds = %11
  store i8 0, ptr %13, align 1, !tbaa !35
  br label %20

20:                                               ; preds = %20, %19
  %21 = phi ptr [ %13, %19 ], [ %26, %20 ]
  %22 = load i8, ptr %21, align 1, !tbaa !35
  %23 = icmp ne i8 %22, 10
  %24 = icmp ult ptr %21, %9
  %25 = and i1 %24, %23
  %26 = getelementptr inbounds i8, ptr %21, i64 1
  br i1 %25, label %20, label %54, !llvm.loop !38

27:                                               ; preds = %11
  %28 = getelementptr inbounds i8, ptr %13, i64 1
  store i8 0, ptr %13, align 1, !tbaa !35
  br label %54

29:                                               ; preds = %11, %11
  %30 = icmp eq i32 %15, 0
  %31 = getelementptr inbounds i8, ptr %13, i64 1
  br i1 %30, label %32, label %54

32:                                               ; preds = %29
  store i8 0, ptr %13, align 1, !tbaa !35
  br label %54

33:                                               ; preds = %11
  %34 = getelementptr inbounds i8, ptr %13, i64 1
  store i8 0, ptr %13, align 1, !tbaa !35
  %35 = icmp eq i32 %15, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = add nsw i32 %12, 1
  %38 = sext i32 %12 to i64
  %39 = getelementptr inbounds [10000 x ptr], ptr %5, i64 0, i64 %38
  store ptr %34, ptr %39, align 8, !tbaa !40
  %40 = xor i32 %14, -1
  br label %41

41:                                               ; preds = %33, %36
  %42 = phi i32 [ %40, %36 ], [ 0, %33 ]
  %43 = phi i32 [ %37, %36 ], [ %12, %33 ]
  %44 = xor i32 %15, -1
  br label %54

45:                                               ; preds = %11
  %46 = icmp eq i32 %14, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %45
  %48 = add nsw i32 %12, 1
  %49 = sext i32 %12 to i64
  %50 = getelementptr inbounds [10000 x ptr], ptr %5, i64 0, i64 %49
  store ptr %13, ptr %50, align 8, !tbaa !40
  br label %51

51:                                               ; preds = %47, %45
  %52 = phi i32 [ %12, %45 ], [ %48, %47 ]
  %53 = getelementptr inbounds i8, ptr %13, i64 1
  br label %54

54:                                               ; preds = %20, %29, %32, %51, %41, %27, %17
  %55 = phi i32 [ %15, %51 ], [ %44, %41 ], [ 0, %32 ], [ 0, %27 ], [ %15, %17 ], [ -1, %29 ], [ 0, %20 ]
  %56 = phi i32 [ -1, %51 ], [ %42, %41 ], [ 0, %32 ], [ 0, %27 ], [ %14, %17 ], [ %14, %29 ], [ 0, %20 ]
  %57 = phi ptr [ %53, %51 ], [ %34, %41 ], [ %31, %32 ], [ %28, %27 ], [ %18, %17 ], [ %31, %29 ], [ %21, %20 ]
  %58 = phi i32 [ %52, %51 ], [ %43, %41 ], [ %12, %32 ], [ %12, %27 ], [ %12, %17 ], [ %12, %29 ], [ %12, %20 ]
  %59 = icmp ult ptr %57, %9
  br i1 %59, label %11, label %60, !llvm.loop !42

60:                                               ; preds = %54
  %61 = add nsw i32 %58, -1
  %62 = icmp sgt i32 %58, 1
  br i1 %62, label %63, label %134

63:                                               ; preds = %60, %130
  %64 = phi i32 [ %132, %130 ], [ 0, %60 ]
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [10000 x ptr], ptr %5, i64 0, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !40
  %68 = call fastcc i32 @ParameterNameToMapIndex(ptr noundef %1, ptr noundef %67) #13
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef %67) #13
  %72 = add nsw i32 %64, -2
  br label %130

73:                                               ; preds = %63
  %74 = add nsw i32 %64, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [10000 x ptr], ptr %5, i64 0, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !40
  %78 = call i32 @strcmp(ptr noundef nonnull dereferenceable(2) @.str.6, ptr noundef nonnull dereferenceable(1) %77) #17
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(78) @errortext, ptr noundef nonnull align 1 dereferenceable(78) @.str.7, i64 78, i1 false)
  call void @error(ptr noundef nonnull @errortext, i32 noundef 300) #14
  br label %81

81:                                               ; preds = %80, %73
  %82 = zext nneg i32 %68 to i64
  %83 = getelementptr inbounds %struct.Mapping, ptr %1, i64 %82, i32 2
  %84 = load i32, ptr %83, align 8, !tbaa !43
  switch i32 %84, label %129 [
    i32 0, label %85
    i32 1, label %99
    i32 2, label %115
  ]

85:                                               ; preds = %81
  %86 = add nsw i32 %64, 2
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [10000 x ptr], ptr %5, i64 0, i64 %87
  %89 = load ptr, ptr %88, align 8, !tbaa !40
  %90 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %89, ptr noundef nonnull @.str.8, ptr noundef nonnull %6) #14
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %94, label %92

92:                                               ; preds = %85
  %93 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.9, ptr noundef %67, ptr noundef %89) #14
  call void @error(ptr noundef nonnull @errortext, i32 noundef 300) #14
  br label %94

94:                                               ; preds = %92, %85
  %95 = load i32, ptr %6, align 4, !tbaa !47
  %96 = getelementptr inbounds %struct.Mapping, ptr %1, i64 %82, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !48
  store i32 %95, ptr %97, align 4, !tbaa !47
  %98 = call i32 @putchar(i32 46)
  br label %130

99:                                               ; preds = %81
  %100 = add nsw i32 %64, 2
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [10000 x ptr], ptr %5, i64 0, i64 %101
  %103 = load ptr, ptr %102, align 8, !tbaa !40
  %104 = icmp eq ptr %103, null
  %105 = getelementptr inbounds %struct.Mapping, ptr %1, i64 %82, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !48
  %107 = getelementptr inbounds %struct.Mapping, ptr %1, i64 %82, i32 7
  %108 = load i32, ptr %107, align 8, !tbaa !49
  %109 = sext i32 %108 to i64
  br i1 %104, label %110, label %111

110:                                              ; preds = %99
  call void @llvm.memset.p0.i64(ptr align 1 %106, i8 0, i64 %109, i1 false)
  br label %113

111:                                              ; preds = %99
  %112 = call ptr @strncpy(ptr noundef %106, ptr noundef nonnull %103, i64 noundef %109) #14
  br label %113

113:                                              ; preds = %111, %110
  %114 = call i32 @putchar(i32 46)
  br label %130

115:                                              ; preds = %81
  %116 = add nsw i32 %64, 2
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [10000 x ptr], ptr %5, i64 0, i64 %117
  %119 = load ptr, ptr %118, align 8, !tbaa !40
  %120 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %119, ptr noundef nonnull @.str.11, ptr noundef nonnull %7) #14
  %121 = icmp eq i32 %120, 1
  br i1 %121, label %124, label %122

122:                                              ; preds = %115
  %123 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.9, ptr noundef %67, ptr noundef %119) #14
  call void @error(ptr noundef nonnull @errortext, i32 noundef 300) #14
  br label %124

124:                                              ; preds = %122, %115
  %125 = load double, ptr %7, align 8, !tbaa !50
  %126 = getelementptr inbounds %struct.Mapping, ptr %1, i64 %82, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !48
  store double %125, ptr %127, align 8, !tbaa !50
  %128 = call i32 @putchar(i32 46)
  br label %130

129:                                              ; preds = %81
  call void @error(ptr noundef nonnull @.str.12, i32 noundef -1) #14
  br label %130

130:                                              ; preds = %94, %113, %124, %129, %70
  %131 = phi i32 [ %72, %70 ], [ %64, %129 ], [ %64, %124 ], [ %64, %113 ], [ %64, %94 ]
  %132 = add nsw i32 %131, 3
  %133 = icmp slt i32 %132, %61
  br i1 %133, label %63, label %134, !llvm.loop !51

134:                                              ; preds = %130, %4, %60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4016) %0, ptr noundef nonnull align 8 dereferenceable(4016) @cfgparams, i64 4016, i1 false), !tbaa.struct !52
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 80000, ptr nonnull %5) #16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @ParameterNameToMapIndex(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !53 {
  %3 = load ptr, ptr %0, align 8, !tbaa !54
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %2, %10
  %6 = phi i64 [ %11, %10 ], [ 0, %2 ]
  %7 = phi ptr [ %13, %10 ], [ %3, %2 ]
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %1) #17
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %5
  %11 = add nuw i64 %6, 1
  %12 = getelementptr inbounds %struct.Mapping, ptr %0, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !54
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %5, !llvm.loop !55

15:                                               ; preds = %5
  %16 = trunc i64 %6 to i32
  br label %17

17:                                               ; preds = %10, %15, %2
  %18 = phi i32 [ -1, %2 ], [ %16, %15 ], [ -1, %10 ]
  ret i32 %18
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @InitParams(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = load ptr, ptr %0, align 8, !tbaa !54
  %3 = icmp eq ptr %2, null
  br i1 %3, label %24, label %4

4:                                                ; preds = %1, %19
  %5 = phi i64 [ %20, %19 ], [ 0, %1 ]
  %6 = getelementptr inbounds %struct.Mapping, ptr %0, i64 %5, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !43
  switch i32 %7, label %19 [
    i32 0, label %8
    i32 2, label %14
  ]

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Mapping, ptr %0, i64 %5, i32 3
  %10 = load double, ptr %9, align 8, !tbaa !56
  %11 = fptosi double %10 to i32
  %12 = getelementptr inbounds %struct.Mapping, ptr %0, i64 %5, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !48
  store i32 %11, ptr %13, align 4, !tbaa !47
  br label %19

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.Mapping, ptr %0, i64 %5, i32 3
  %16 = load double, ptr %15, align 8, !tbaa !56
  %17 = getelementptr inbounds %struct.Mapping, ptr %0, i64 %5, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !48
  store double %16, ptr %18, align 8, !tbaa !50
  br label %19

19:                                               ; preds = %4, %14, %8
  %20 = add nuw nsw i64 %5, 1
  %21 = getelementptr inbounds %struct.Mapping, ptr %0, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !54
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %4, !llvm.loop !57

24:                                               ; preds = %19, %1
  ret i32 -1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @TestParams(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !54
  %4 = icmp eq ptr %3, null
  br i1 %4, label %96, label %5

5:                                                ; preds = %2
  %6 = icmp eq ptr %1, null
  br label %7

7:                                                ; preds = %5, %91
  %8 = phi i64 [ 0, %5 ], [ %92, %91 ]
  %9 = phi ptr [ %3, %5 ], [ %94, %91 ]
  %10 = getelementptr inbounds %struct.Mapping, ptr %0, i64 %8, i32 4
  %11 = load i32, ptr %10, align 8, !tbaa !58
  switch i32 %11, label %91 [
    i32 1, label %12
    i32 2, label %43
    i32 3, label %65
  ]

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.Mapping, ptr %0, i64 %8, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !43
  switch i32 %14, label %91 [
    i32 0, label %15
    i32 2, label %30
  ]

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.Mapping, ptr %0, i64 %8, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !48
  %18 = load i32, ptr %17, align 4, !tbaa !47
  %19 = getelementptr inbounds %struct.Mapping, ptr %0, i64 %8, i32 5
  %20 = load double, ptr %19, align 8, !tbaa !59
  %21 = fptosi double %20 to i32
  %22 = icmp slt i32 %18, %21
  %23 = getelementptr inbounds %struct.Mapping, ptr %0, i64 %8, i32 6
  %24 = load double, ptr %23, align 8, !tbaa !60
  %25 = fptosi double %24 to i32
  %26 = icmp sgt i32 %18, %25
  %27 = select i1 %22, i1 true, i1 %26
  br i1 %27, label %28, label %91

28:                                               ; preds = %15
  %29 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.13, ptr noundef nonnull %9, i32 noundef %21, i32 noundef %25) #14
  br label %90

30:                                               ; preds = %12
  %31 = getelementptr inbounds %struct.Mapping, ptr %0, i64 %8, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !48
  %33 = load double, ptr %32, align 8, !tbaa !50
  %34 = getelementptr inbounds %struct.Mapping, ptr %0, i64 %8, i32 5
  %35 = load double, ptr %34, align 8, !tbaa !59
  %36 = fcmp olt double %33, %35
  %37 = getelementptr inbounds %struct.Mapping, ptr %0, i64 %8, i32 6
  %38 = load double, ptr %37, align 8, !tbaa !60
  %39 = fcmp ogt double %33, %38
  %40 = select i1 %36, i1 true, i1 %39
  br i1 %40, label %41, label %91

41:                                               ; preds = %30
  %42 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.14, ptr noundef nonnull %9, double noundef %35, double noundef %38) #14
  br label %90

43:                                               ; preds = %7
  %44 = getelementptr inbounds %struct.Mapping, ptr %0, i64 %8, i32 2
  %45 = load i32, ptr %44, align 8, !tbaa !43
  switch i32 %45, label %91 [
    i32 0, label %46
    i32 2, label %56
  ]

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.Mapping, ptr %0, i64 %8, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !48
  %49 = load i32, ptr %48, align 4, !tbaa !47
  %50 = getelementptr inbounds %struct.Mapping, ptr %0, i64 %8, i32 5
  %51 = load double, ptr %50, align 8, !tbaa !59
  %52 = fptosi double %51 to i32
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %91

54:                                               ; preds = %46
  %55 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.15, ptr noundef nonnull %9, i32 noundef %52) #14
  br label %90

56:                                               ; preds = %43
  %57 = getelementptr inbounds %struct.Mapping, ptr %0, i64 %8, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !48
  %59 = load double, ptr %58, align 8, !tbaa !50
  %60 = getelementptr inbounds %struct.Mapping, ptr %0, i64 %8, i32 5
  %61 = load double, ptr %60, align 8, !tbaa !59
  %62 = fcmp olt double %59, %61
  br i1 %62, label %63, label %91

63:                                               ; preds = %56
  %64 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.16, ptr noundef nonnull %9, double noundef %61) #14
  br label %90

65:                                               ; preds = %7
  %66 = getelementptr inbounds %struct.Mapping, ptr %0, i64 %8, i32 2
  %67 = load i32, ptr %66, align 8, !tbaa !43
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %91

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.Mapping, ptr %0, i64 %8, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !48
  %72 = load i32, ptr %71, align 4, !tbaa !47
  %73 = getelementptr inbounds %struct.Mapping, ptr %0, i64 %8, i32 5
  %74 = load double, ptr %73, align 8, !tbaa !59
  br i1 %6, label %77, label %75

75:                                               ; preds = %69
  %76 = load i32, ptr %1, align 4, !tbaa !47
  br label %77

77:                                               ; preds = %69, %75
  %78 = phi i32 [ %76, %75 ], [ 0, %69 ]
  %79 = sitofp i32 %78 to double
  %80 = fsub double %74, %79
  %81 = fptosi double %80 to i32
  %82 = getelementptr inbounds %struct.Mapping, ptr %0, i64 %8, i32 6
  %83 = load double, ptr %82, align 8, !tbaa !60
  %84 = fptosi double %83 to i32
  %85 = icmp slt i32 %72, %81
  %86 = icmp sgt i32 %72, %84
  %87 = select i1 %85, i1 true, i1 %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %77
  %89 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.13, ptr noundef nonnull %9, i32 noundef %81, i32 noundef %84) #14
  br label %90

90:                                               ; preds = %41, %28, %54, %63, %88
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 400) #14
  br label %91

91:                                               ; preds = %90, %30, %15, %77, %7, %43, %12, %56, %46, %65
  %92 = add nuw i64 %8, 1
  %93 = getelementptr inbounds %struct.Mapping, ptr %0, i64 %92
  %94 = load ptr, ptr %93, align 8, !tbaa !54
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %7, !llvm.loop !61

96:                                               ; preds = %91, %2
  ret i32 -1
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local i32 @DisplayParams(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #11 {
  %3 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.23)
  %4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, ptr noundef %1) #13
  %5 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.23)
  %6 = load ptr, ptr %0, align 8, !tbaa !54
  %7 = icmp eq ptr %6, null
  br i1 %7, label %34, label %8

8:                                                ; preds = %2, %27
  %9 = phi i64 [ %28, %27 ], [ 0, %2 ]
  %10 = phi ptr [ %30, %27 ], [ %6, %2 ]
  %11 = getelementptr inbounds %struct.Mapping, ptr %0, i64 %9, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !43
  switch i32 %12, label %27 [
    i32 0, label %13
    i32 1, label %18
    i32 2, label %22
  ]

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.Mapping, ptr %0, i64 %9, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !48
  %16 = load i32, ptr %15, align 4, !tbaa !47
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, ptr noundef nonnull %10, i32 noundef %16) #13
  br label %27

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.Mapping, ptr %0, i64 %9, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !48
  %21 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, ptr noundef nonnull %10, ptr noundef %20) #13
  br label %27

22:                                               ; preds = %8
  %23 = getelementptr inbounds %struct.Mapping, ptr %0, i64 %9, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !48
  %25 = load double, ptr %24, align 8, !tbaa !50
  %26 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, ptr noundef nonnull %10, double noundef %25) #13
  br label %27

27:                                               ; preds = %8, %18, %22, %13
  %28 = add nuw i64 %9, 1
  %29 = getelementptr inbounds %struct.Mapping, ptr %0, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !54
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %8, !llvm.loop !62

32:                                               ; preds = %27
  %33 = trunc i64 %28 to i32
  br label %34

34:                                               ; preds = %32, %2
  %35 = phi i32 [ 0, %2 ], [ %33, %32 ]
  %36 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.23)
  ret i32 %35
}

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #12

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { optsize }
attributes #14 = { nounwind optsize }
attributes #15 = { nounwind optsize allocsize(0) }
attributes #16 = { nounwind }
attributes #17 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 5602379}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 2}
!14 = !{i32 100000, i64 1843200, i32 2}
!15 = !{i32 200000, i64 1843200, i32 2}
!16 = !{i32 300000, i64 1843200, i32 2}
!17 = !{i32 400000, i64 1843200, i32 2}
!18 = !{i32 500000, i64 1843200, i32 2}
!19 = !{i32 600000, i64 1843200, i32 2}
!20 = !{i32 700000, i64 921600, i32 4}
!21 = !{i32 800000, i64 921600, i32 4}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 720, i32 8}
!27 = !{i32 999990, i64 21, i32 9}
!28 = !{i32 999999, i64 1, i32 36}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!36, !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!41, !41, i64 0}
!41 = !{!"any pointer", !36, i64 0}
!42 = distinct !{!42, !39}
!43 = !{!44, !45, i64 16}
!44 = !{!"", !41, i64 0, !41, i64 8, !45, i64 16, !46, i64 24, !45, i64 32, !46, i64 40, !46, i64 48, !45, i64 56}
!45 = !{!"int", !36, i64 0}
!46 = !{!"double", !36, i64 0}
!47 = !{!45, !45, i64 0}
!48 = !{!44, !41, i64 8}
!49 = !{!44, !45, i64 56}
!50 = !{!46, !46, i64 0}
!51 = distinct !{!51, !39}
!52 = !{i64 0, i64 255, !35, i64 255, i64 255, !35, i64 510, i64 255, !35, i64 768, i64 4, !47, i64 772, i64 4, !47, i64 776, i64 4, !47, i64 780, i64 4, !47, i64 784, i64 4, !47, i64 788, i64 4, !47, i64 792, i64 4, !47, i64 796, i64 4, !47, i64 800, i64 8, !50, i64 808, i64 12, !35, i64 820, i64 12, !35, i64 832, i64 4, !47, i64 836, i64 4, !47, i64 840, i64 4, !47, i64 844, i64 4, !47, i64 848, i64 4, !47, i64 852, i64 4, !47, i64 856, i64 4, !47, i64 860, i64 4, !47, i64 864, i64 12, !35, i64 876, i64 4, !47, i64 880, i64 12, !35, i64 892, i64 12, !35, i64 904, i64 12, !35, i64 916, i64 4, !47, i64 920, i64 4, !47, i64 928, i64 4, !47, i64 932, i64 4, !47, i64 936, i64 8, !50, i64 944, i64 12, !35, i64 956, i64 12, !35, i64 968, i64 4, !47, i64 972, i64 4, !47, i64 976, i64 4, !47, i64 980, i64 4, !47, i64 984, i64 4, !47, i64 988, i64 4, !47, i64 992, i64 4, !47, i64 996, i64 4, !47, i64 1000, i64 12, !35, i64 1012, i64 4, !47, i64 1016, i64 12, !35, i64 1028, i64 12, !35, i64 1040, i64 12, !35, i64 1052, i64 4, !47, i64 1056, i64 4, !47, i64 1064, i64 4, !47, i64 1068, i64 4, !47, i64 1072, i64 255, !35, i64 1327, i64 255, !35, i64 1582, i64 255, !35, i64 1840, i64 4, !47, i64 1844, i64 4, !47, i64 1848, i64 4, !47, i64 1852, i64 4, !47, i64 1856, i64 8, !50, i64 1864, i64 12, !35, i64 1876, i64 12, !35, i64 1888, i64 4, !47, i64 1892, i64 4, !47, i64 1896, i64 4, !47, i64 1900, i64 4, !47, i64 1904, i64 4, !47, i64 1908, i64 4, !47, i64 1912, i64 4, !47, i64 1916, i64 4, !47, i64 1920, i64 12, !35, i64 1932, i64 4, !47, i64 1936, i64 12, !35, i64 1948, i64 12, !35, i64 1960, i64 12, !35, i64 1972, i64 4, !47, i64 1976, i64 4, !47, i64 1984, i64 4, !47, i64 1988, i64 4, !47, i64 1992, i64 4, !47, i64 1996, i64 4, !47, i64 2000, i64 4, !47, i64 2004, i64 4, !47, i64 2008, i64 4, !47, i64 2012, i64 4, !47, i64 2016, i64 4, !47, i64 2020, i64 4, !47, i64 2024, i64 4, !47, i64 2032, i64 8, !40, i64 2040, i64 255, !35, i64 2295, i64 255, !35, i64 2550, i64 255, !35, i64 2808, i64 4, !47, i64 2812, i64 4, !47, i64 2816, i64 4, !47, i64 2820, i64 4, !47, i64 2824, i64 8, !50, i64 2832, i64 12, !35, i64 2844, i64 12, !35, i64 2856, i64 4, !47, i64 2860, i64 4, !47, i64 2864, i64 4, !47, i64 2868, i64 4, !47, i64 2872, i64 4, !47, i64 2876, i64 4, !47, i64 2880, i64 4, !47, i64 2884, i64 4, !47, i64 2888, i64 12, !35, i64 2900, i64 4, !47, i64 2904, i64 12, !35, i64 2916, i64 12, !35, i64 2928, i64 12, !35, i64 2940, i64 4, !47, i64 2944, i64 4, !47, i64 2952, i64 4, !47, i64 2956, i64 4, !47, i64 2960, i64 4, !47, i64 2964, i64 4, !47, i64 2968, i64 4, !47, i64 2972, i64 4, !47, i64 2976, i64 4, !47, i64 2980, i64 4, !47, i64 2984, i64 4, !47, i64 2988, i64 4, !47, i64 2992, i64 4, !47, i64 3000, i64 8, !40, i64 3008, i64 255, !35, i64 3263, i64 255, !35, i64 3518, i64 255, !35, i64 3776, i64 4, !47, i64 3780, i64 4, !47, i64 3784, i64 4, !47, i64 3788, i64 4, !47, i64 3792, i64 8, !50, i64 3800, i64 12, !35, i64 3812, i64 12, !35, i64 3824, i64 4, !47, i64 3828, i64 4, !47, i64 3832, i64 4, !47, i64 3836, i64 4, !47, i64 3840, i64 4, !47, i64 3844, i64 4, !47, i64 3848, i64 4, !47, i64 3852, i64 4, !47, i64 3856, i64 12, !35, i64 3868, i64 4, !47, i64 3872, i64 12, !35, i64 3884, i64 12, !35, i64 3896, i64 12, !35, i64 3908, i64 4, !47, i64 3912, i64 4, !47, i64 3920, i64 4, !47, i64 3924, i64 4, !47, i64 3928, i64 4, !47, i64 3932, i64 4, !47, i64 3936, i64 4, !47, i64 3940, i64 4, !47, i64 3944, i64 4, !47, i64 3948, i64 4, !47, i64 3952, i64 4, !47, i64 3956, i64 4, !47, i64 3960, i64 4, !47, i64 3968, i64 8, !40, i64 3976, i64 4, !47, i64 3980, i64 4, !47, i64 3984, i64 4, !47, i64 3988, i64 4, !47, i64 3992, i64 4, !47, i64 3996, i64 4, !47, i64 4000, i64 4, !47, i64 4004, i64 4, !47, i64 4008, i64 4, !47, i64 4012, i64 4, !47}
!53 = !{!"config_common.c:ParameterNameToMapIndex"}
!54 = !{!44, !41, i64 0}
!55 = distinct !{!55, !39}
!56 = !{!44, !46, i64 24}
!57 = distinct !{!57, !39}
!58 = !{!44, !45, i64 32}
!59 = !{!44, !46, i64 40}
!60 = !{!44, !46, i64 48}
!61 = distinct !{!61, !39}
!62 = distinct !{!62, !39}
