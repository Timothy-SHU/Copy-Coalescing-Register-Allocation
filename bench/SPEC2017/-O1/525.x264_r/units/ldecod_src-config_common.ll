; ModuleID = 'ldecod_src/config_common.c'
source_filename = "ldecod_src/config_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.inp_par = type { [255 x i8], [255 x i8], [255 x i8], i32, i32, i32, i32, i32, i32, %struct.frame_format, %struct.frame_format, i32, i32, %struct.video_data_file, %struct.video_data_file, %struct.video_data_file, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.frame_format = type { i32, i32, double, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32, [3 x i32], [3 x i32], [3 x i32], i32, i32 }
%struct.video_data_file = type { [255 x i8], [255 x i8], [255 x i8], i32, i32, %struct.frame_format, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.Mapping = type { ptr, ptr, i32, double, i32, double, double, i32 }

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
@cfgparams = dso_local local_unnamed_addr global %struct.inp_par zeroinitializer, align 8
@.str.13 = private unnamed_addr constant [90 x i8] c"Error in input parameter %s. Check configuration file. Value should be in [%d, %d] range.\00", align 1
@.str.14 = private unnamed_addr constant [94 x i8] c"Error in input parameter %s. Check configuration file. Value should be in [%.2f, %.2f] range.\00", align 1
@.str.15 = private unnamed_addr constant [92 x i8] c"Error in input parameter %s. Check configuration file. Value should not be smaller than %d.\00", align 1
@.str.16 = private unnamed_addr constant [94 x i8] c"Error in input parameter %s. Check configuration file. Value should not be smaller than %2.f.\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"*               %s                   *\0A\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"Parameter %s = %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"Parameter %s = %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"Parameter %s = %.2f\0A\00", align 1
@str.23 = private unnamed_addr constant [55 x i8] c"******************************************************\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @GetConfigFileContent(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str)
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.1, ptr noundef %0) #12
  br label %30

6:                                                ; preds = %1
  %7 = tail call i32 @fseek(ptr noundef nonnull %2, i64 noundef 0, i32 noundef 2)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.2, ptr noundef %0) #12
  br label %30

11:                                               ; preds = %6
  %12 = tail call i64 @ftell(ptr noundef nonnull %2)
  %13 = icmp ugt i64 %12, 100000
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.3, i64 noundef %12, ptr noundef %0) #12
  br label %30

16:                                               ; preds = %11
  %17 = tail call i32 @fseek(ptr noundef nonnull %2, i64 noundef 0, i32 noundef 0)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.2, ptr noundef %0) #12
  br label %30

21:                                               ; preds = %16
  %22 = add nuw nsw i64 %12, 1
  %23 = tail call noalias ptr @malloc(i64 noundef %22) #13
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  tail call void @no_mem_exit(ptr noundef nonnull @.str.4) #12
  br label %26

26:                                               ; preds = %25, %21
  %27 = tail call i64 @fread(ptr noundef %23, i64 noundef 1, i64 noundef %12, ptr noundef nonnull %2)
  %28 = getelementptr inbounds i8, ptr %23, i64 %27
  store i8 0, ptr %28, align 1, !tbaa !34
  %29 = tail call i32 @fclose(ptr noundef nonnull %2)
  br label %30

30:                                               ; preds = %26, %19, %14, %9, %4
  %31 = phi ptr [ null, %4 ], [ null, %9 ], [ null, %14 ], [ null, %19 ], [ %23, %26 ]
  ret ptr %31
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

declare void @no_mem_exit(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @ParseContent(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [10000 x ptr], align 16
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 80000, ptr nonnull %5) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80000) %5, i8 0, i64 80000, i1 false)
  %8 = sext i32 %3 to i64
  %9 = getelementptr inbounds i8, ptr %2, i64 %8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #12
  %10 = icmp sgt i32 %3, 0
  br i1 %10, label %11, label %60

11:                                               ; preds = %4, %54
  %12 = phi i32 [ %58, %54 ], [ 0, %4 ]
  %13 = phi ptr [ %57, %54 ], [ %2, %4 ]
  %14 = phi i32 [ %56, %54 ], [ 0, %4 ]
  %15 = phi i32 [ %55, %54 ], [ 0, %4 ]
  %16 = load i8, ptr %13, align 1, !tbaa !34
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
  store i8 0, ptr %13, align 1, !tbaa !34
  br label %20

20:                                               ; preds = %20, %19
  %21 = phi ptr [ %13, %19 ], [ %26, %20 ]
  %22 = load i8, ptr %21, align 1, !tbaa !34
  %23 = icmp ne i8 %22, 10
  %24 = icmp ult ptr %21, %9
  %25 = and i1 %24, %23
  %26 = getelementptr inbounds i8, ptr %21, i64 1
  br i1 %25, label %20, label %54, !llvm.loop !37

27:                                               ; preds = %11
  %28 = getelementptr inbounds i8, ptr %13, i64 1
  store i8 0, ptr %13, align 1, !tbaa !34
  br label %54

29:                                               ; preds = %11, %11
  %30 = icmp eq i32 %15, 0
  %31 = getelementptr inbounds i8, ptr %13, i64 1
  br i1 %30, label %32, label %54

32:                                               ; preds = %29
  store i8 0, ptr %13, align 1, !tbaa !34
  br label %54

33:                                               ; preds = %11
  %34 = getelementptr inbounds i8, ptr %13, i64 1
  store i8 0, ptr %13, align 1, !tbaa !34
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

60:                                               ; preds = %54, %4
  %61 = phi i32 [ 0, %4 ], [ %58, %54 ]
  %62 = add nsw i32 %61, -1
  %63 = icmp sgt i32 %61, 1
  br i1 %63, label %64, label %150

64:                                               ; preds = %60, %146
  %65 = phi i32 [ %148, %146 ], [ 0, %60 ]
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [10000 x ptr], ptr %5, i64 0, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !40
  %69 = load ptr, ptr %1, align 8, !tbaa !43
  %70 = icmp eq ptr %69, null
  br i1 %70, label %83, label %71

71:                                               ; preds = %64, %76
  %72 = phi i64 [ %77, %76 ], [ 0, %64 ]
  %73 = phi ptr [ %79, %76 ], [ %69, %64 ]
  %74 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %73, ptr noundef nonnull dereferenceable(1) %68) #14
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %71
  %77 = add nuw i64 %72, 1
  %78 = getelementptr inbounds %struct.Mapping, ptr %1, i64 %77
  %79 = load ptr, ptr %78, align 8, !tbaa !43
  %80 = icmp eq ptr %79, null
  br i1 %80, label %83, label %71, !llvm.loop !47

81:                                               ; preds = %71
  %82 = trunc i64 %72 to i32
  br label %83

83:                                               ; preds = %81, %76, %64
  %84 = phi i32 [ -1, %64 ], [ %82, %81 ], [ -1, %76 ]
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef %68)
  %88 = add nsw i32 %65, -2
  br label %146

89:                                               ; preds = %83
  %90 = add nsw i32 %65, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [10000 x ptr], ptr %5, i64 0, i64 %91
  %93 = load ptr, ptr %92, align 8, !tbaa !40
  %94 = call i32 @strcmp(ptr noundef nonnull dereferenceable(2) @.str.6, ptr noundef nonnull dereferenceable(1) %93) #14
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %89
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(78) @errortext, ptr noundef nonnull align 1 dereferenceable(78) @.str.7, i64 78, i1 false)
  call void @error(ptr noundef nonnull @errortext, i32 noundef 300) #12
  br label %97

97:                                               ; preds = %96, %89
  %98 = zext nneg i32 %84 to i64
  %99 = getelementptr inbounds %struct.Mapping, ptr %1, i64 %98, i32 2
  %100 = load i32, ptr %99, align 8, !tbaa !48
  switch i32 %100, label %145 [
    i32 0, label %101
    i32 1, label %115
    i32 2, label %131
  ]

101:                                              ; preds = %97
  %102 = add nsw i32 %65, 2
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [10000 x ptr], ptr %5, i64 0, i64 %103
  %105 = load ptr, ptr %104, align 8, !tbaa !40
  %106 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %105, ptr noundef nonnull @.str.8, ptr noundef nonnull %6) #12
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %110, label %108

108:                                              ; preds = %101
  %109 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.9, ptr noundef %68, ptr noundef %105) #12
  call void @error(ptr noundef nonnull @errortext, i32 noundef 300) #12
  br label %110

110:                                              ; preds = %108, %101
  %111 = load i32, ptr %6, align 4, !tbaa !49
  %112 = getelementptr inbounds %struct.Mapping, ptr %1, i64 %98, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !50
  store i32 %111, ptr %113, align 4, !tbaa !49
  %114 = call i32 @putchar(i32 46)
  br label %146

115:                                              ; preds = %97
  %116 = add nsw i32 %65, 2
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [10000 x ptr], ptr %5, i64 0, i64 %117
  %119 = load ptr, ptr %118, align 8, !tbaa !40
  %120 = icmp eq ptr %119, null
  %121 = getelementptr inbounds %struct.Mapping, ptr %1, i64 %98, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !50
  %123 = getelementptr inbounds %struct.Mapping, ptr %1, i64 %98, i32 7
  %124 = load i32, ptr %123, align 8, !tbaa !51
  %125 = sext i32 %124 to i64
  br i1 %120, label %126, label %127

126:                                              ; preds = %115
  call void @llvm.memset.p0.i64(ptr align 1 %122, i8 0, i64 %125, i1 false)
  br label %129

127:                                              ; preds = %115
  %128 = call ptr @strncpy(ptr noundef %122, ptr noundef nonnull %119, i64 noundef %125) #12
  br label %129

129:                                              ; preds = %127, %126
  %130 = call i32 @putchar(i32 46)
  br label %146

131:                                              ; preds = %97
  %132 = add nsw i32 %65, 2
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [10000 x ptr], ptr %5, i64 0, i64 %133
  %135 = load ptr, ptr %134, align 8, !tbaa !40
  %136 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %135, ptr noundef nonnull @.str.11, ptr noundef nonnull %7) #12
  %137 = icmp eq i32 %136, 1
  br i1 %137, label %140, label %138

138:                                              ; preds = %131
  %139 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.9, ptr noundef %68, ptr noundef %135) #12
  call void @error(ptr noundef nonnull @errortext, i32 noundef 300) #12
  br label %140

140:                                              ; preds = %138, %131
  %141 = load double, ptr %7, align 8, !tbaa !52
  %142 = getelementptr inbounds %struct.Mapping, ptr %1, i64 %98, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !50
  store double %141, ptr %143, align 8, !tbaa !52
  %144 = call i32 @putchar(i32 46)
  br label %146

145:                                              ; preds = %97
  call void @error(ptr noundef nonnull @.str.12, i32 noundef -1) #12
  br label %146

146:                                              ; preds = %110, %129, %140, %145, %86
  %147 = phi i32 [ %88, %86 ], [ %65, %145 ], [ %65, %140 ], [ %65, %129 ], [ %65, %110 ]
  %148 = add nsw i32 %147, 3
  %149 = icmp slt i32 %148, %62
  br i1 %149, label %64, label %150, !llvm.loop !53

150:                                              ; preds = %146, %60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4016) %0, ptr noundef nonnull align 8 dereferenceable(4016) @cfgparams, i64 4016, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 80000, ptr nonnull %5) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @InitParams(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = load ptr, ptr %0, align 8, !tbaa !43
  %3 = icmp eq ptr %2, null
  br i1 %3, label %24, label %4

4:                                                ; preds = %1, %19
  %5 = phi i64 [ %20, %19 ], [ 0, %1 ]
  %6 = getelementptr inbounds %struct.Mapping, ptr %0, i64 %5, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !48
  switch i32 %7, label %19 [
    i32 0, label %8
    i32 2, label %14
  ]

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Mapping, ptr %0, i64 %5, i32 3
  %10 = load double, ptr %9, align 8, !tbaa !55
  %11 = fptosi double %10 to i32
  %12 = getelementptr inbounds %struct.Mapping, ptr %0, i64 %5, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !50
  store i32 %11, ptr %13, align 4, !tbaa !49
  br label %19

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.Mapping, ptr %0, i64 %5, i32 3
  %16 = load double, ptr %15, align 8, !tbaa !55
  %17 = getelementptr inbounds %struct.Mapping, ptr %0, i64 %5, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !50
  store double %16, ptr %18, align 8, !tbaa !52
  br label %19

19:                                               ; preds = %4, %14, %8
  %20 = add nuw nsw i64 %5, 1
  %21 = getelementptr inbounds %struct.Mapping, ptr %0, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !43
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %4, !llvm.loop !56

24:                                               ; preds = %19, %1
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @TestParams(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !43
  %4 = icmp eq ptr %3, null
  br i1 %4, label %101, label %5

5:                                                ; preds = %2
  %6 = icmp eq ptr %1, null
  br label %7

7:                                                ; preds = %5, %96
  %8 = phi i64 [ 0, %5 ], [ %97, %96 ]
  %9 = phi ptr [ %3, %5 ], [ %99, %96 ]
  %10 = getelementptr inbounds %struct.Mapping, ptr %0, i64 %8, i32 4
  %11 = load i32, ptr %10, align 8, !tbaa !57
  switch i32 %11, label %96 [
    i32 1, label %12
    i32 2, label %48
    i32 3, label %70
  ]

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.Mapping, ptr %0, i64 %8, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !48
  switch i32 %14, label %96 [
    i32 0, label %15
    i32 2, label %33
  ]

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.Mapping, ptr %0, i64 %8, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !50
  %18 = load i32, ptr %17, align 4, !tbaa !49
  %19 = getelementptr inbounds %struct.Mapping, ptr %0, i64 %8, i32 5
  %20 = load double, ptr %19, align 8, !tbaa !58
  %21 = fptosi double %20 to i32
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %28, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.Mapping, ptr %0, i64 %8, i32 6
  %25 = load double, ptr %24, align 8, !tbaa !59
  %26 = fptosi double %25 to i32
  %27 = icmp sgt i32 %18, %26
  br i1 %27, label %28, label %96

28:                                               ; preds = %23, %15
  %29 = getelementptr inbounds %struct.Mapping, ptr %0, i64 %8, i32 6
  %30 = load double, ptr %29, align 8, !tbaa !59
  %31 = fptosi double %30 to i32
  %32 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.13, ptr noundef nonnull %9, i32 noundef %21, i32 noundef %31) #12
  br label %95

33:                                               ; preds = %12
  %34 = getelementptr inbounds %struct.Mapping, ptr %0, i64 %8, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !50
  %36 = load double, ptr %35, align 8, !tbaa !52
  %37 = getelementptr inbounds %struct.Mapping, ptr %0, i64 %8, i32 5
  %38 = load double, ptr %37, align 8, !tbaa !58
  %39 = fcmp olt double %36, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.Mapping, ptr %0, i64 %8, i32 6
  %42 = load double, ptr %41, align 8, !tbaa !59
  %43 = fcmp ogt double %36, %42
  br i1 %43, label %44, label %96

44:                                               ; preds = %40, %33
  %45 = getelementptr inbounds %struct.Mapping, ptr %0, i64 %8, i32 6
  %46 = load double, ptr %45, align 8, !tbaa !59
  %47 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.14, ptr noundef nonnull %9, double noundef %38, double noundef %46) #12
  br label %95

48:                                               ; preds = %7
  %49 = getelementptr inbounds %struct.Mapping, ptr %0, i64 %8, i32 2
  %50 = load i32, ptr %49, align 8, !tbaa !48
  switch i32 %50, label %96 [
    i32 0, label %51
    i32 2, label %61
  ]

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.Mapping, ptr %0, i64 %8, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !50
  %54 = load i32, ptr %53, align 4, !tbaa !49
  %55 = getelementptr inbounds %struct.Mapping, ptr %0, i64 %8, i32 5
  %56 = load double, ptr %55, align 8, !tbaa !58
  %57 = fptosi double %56 to i32
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %96

59:                                               ; preds = %51
  %60 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.15, ptr noundef nonnull %9, i32 noundef %57) #12
  br label %95

61:                                               ; preds = %48
  %62 = getelementptr inbounds %struct.Mapping, ptr %0, i64 %8, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !50
  %64 = load double, ptr %63, align 8, !tbaa !52
  %65 = getelementptr inbounds %struct.Mapping, ptr %0, i64 %8, i32 5
  %66 = load double, ptr %65, align 8, !tbaa !58
  %67 = fcmp olt double %64, %66
  br i1 %67, label %68, label %96

68:                                               ; preds = %61
  %69 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.16, ptr noundef nonnull %9, double noundef %66) #12
  br label %95

70:                                               ; preds = %7
  %71 = getelementptr inbounds %struct.Mapping, ptr %0, i64 %8, i32 2
  %72 = load i32, ptr %71, align 8, !tbaa !48
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %96

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.Mapping, ptr %0, i64 %8, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !50
  %77 = load i32, ptr %76, align 4, !tbaa !49
  %78 = getelementptr inbounds %struct.Mapping, ptr %0, i64 %8, i32 5
  %79 = load double, ptr %78, align 8, !tbaa !58
  br i1 %6, label %82, label %80

80:                                               ; preds = %74
  %81 = load i32, ptr %1, align 4, !tbaa !49
  br label %82

82:                                               ; preds = %74, %80
  %83 = phi i32 [ %81, %80 ], [ 0, %74 ]
  %84 = sitofp i32 %83 to double
  %85 = fsub double %79, %84
  %86 = fptosi double %85 to i32
  %87 = getelementptr inbounds %struct.Mapping, ptr %0, i64 %8, i32 6
  %88 = load double, ptr %87, align 8, !tbaa !59
  %89 = fptosi double %88 to i32
  %90 = icmp slt i32 %77, %86
  %91 = icmp sgt i32 %77, %89
  %92 = select i1 %90, i1 true, i1 %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %82
  %94 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.13, ptr noundef nonnull %9, i32 noundef %86, i32 noundef %89) #12
  br label %95

95:                                               ; preds = %44, %28, %59, %68, %93
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 400) #12
  br label %96

96:                                               ; preds = %95, %82, %7, %48, %12, %61, %51, %70, %23, %40
  %97 = add nuw i64 %8, 1
  %98 = getelementptr inbounds %struct.Mapping, ptr %0, i64 %97
  %99 = load ptr, ptr %98, align 8, !tbaa !43
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %7, !llvm.loop !60

101:                                              ; preds = %96, %2
  ret i32 -1
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @DisplayParams(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #10 {
  %3 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.23)
  %4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, ptr noundef %1)
  %5 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.23)
  %6 = load ptr, ptr %0, align 8, !tbaa !43
  %7 = icmp eq ptr %6, null
  br i1 %7, label %34, label %8

8:                                                ; preds = %2, %27
  %9 = phi i64 [ %28, %27 ], [ 0, %2 ]
  %10 = phi ptr [ %30, %27 ], [ %6, %2 ]
  %11 = getelementptr inbounds %struct.Mapping, ptr %0, i64 %9, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !48
  switch i32 %12, label %27 [
    i32 0, label %13
    i32 1, label %18
    i32 2, label %22
  ]

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.Mapping, ptr %0, i64 %9, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !50
  %16 = load i32, ptr %15, align 4, !tbaa !49
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, ptr noundef nonnull %10, i32 noundef %16)
  br label %27

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.Mapping, ptr %0, i64 %9, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !50
  %21 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, ptr noundef nonnull %10, ptr noundef %20)
  br label %27

22:                                               ; preds = %8
  %23 = getelementptr inbounds %struct.Mapping, ptr %0, i64 %9, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !50
  %25 = load double, ptr %24, align 8, !tbaa !52
  %26 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, ptr noundef nonnull %10, double noundef %25)
  br label %27

27:                                               ; preds = %8, %18, %22, %13
  %28 = add nuw i64 %9, 1
  %29 = getelementptr inbounds %struct.Mapping, ptr %0, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !43
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %8, !llvm.loop !61

32:                                               ; preds = %27
  %33 = trunc i64 %28 to i32
  br label %34

34:                                               ; preds = %32, %2
  %35 = phi i32 [ 0, %2 ], [ %33, %32 ]
  %36 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.23)
  ret i32 %35
}

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 11233431}
!8 = !{!"MaxCount", i64 921600}
!9 = !{!"MaxInternalCount", i64 921600}
!10 = !{!"MaxFunctionCount", i64 921600}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 921600, i32 8}
!18 = !{i32 100000, i64 921600, i32 8}
!19 = !{i32 200000, i64 921600, i32 8}
!20 = !{i32 300000, i64 921600, i32 8}
!21 = !{i32 400000, i64 921600, i32 8}
!22 = !{i32 500000, i64 921600, i32 8}
!23 = !{i32 600000, i64 921600, i32 8}
!24 = !{i32 700000, i64 915762, i32 9}
!25 = !{i32 800000, i64 908579, i32 10}
!26 = !{i32 900000, i64 460800, i32 13}
!27 = !{i32 950000, i64 460800, i32 13}
!28 = !{i32 990000, i64 115200, i32 14}
!29 = !{i32 999000, i64 12790, i32 20}
!30 = !{i32 999900, i64 536, i32 29}
!31 = !{i32 999990, i64 90, i32 32}
!32 = !{i32 999999, i64 1, i32 66}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = distinct !{!37, !38, !39}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!"llvm.loop.unroll.disable"}
!40 = !{!41, !41, i64 0}
!41 = !{!"any pointer", !35, i64 0}
!42 = distinct !{!42, !38, !39}
!43 = !{!44, !41, i64 0}
!44 = !{!"", !41, i64 0, !41, i64 8, !45, i64 16, !46, i64 24, !45, i64 32, !46, i64 40, !46, i64 48, !45, i64 56}
!45 = !{!"int", !35, i64 0}
!46 = !{!"double", !35, i64 0}
!47 = distinct !{!47, !38, !39}
!48 = !{!44, !45, i64 16}
!49 = !{!45, !45, i64 0}
!50 = !{!44, !41, i64 8}
!51 = !{!44, !45, i64 56}
!52 = !{!46, !46, i64 0}
!53 = distinct !{!53, !38, !39}
!54 = !{i64 0, i64 255, !34, i64 255, i64 255, !34, i64 510, i64 255, !34, i64 768, i64 4, !49, i64 772, i64 4, !49, i64 776, i64 4, !49, i64 780, i64 4, !49, i64 784, i64 4, !49, i64 788, i64 4, !49, i64 792, i64 4, !49, i64 796, i64 4, !49, i64 800, i64 8, !52, i64 808, i64 12, !34, i64 820, i64 12, !34, i64 832, i64 4, !49, i64 836, i64 4, !49, i64 840, i64 4, !49, i64 844, i64 4, !49, i64 848, i64 4, !49, i64 852, i64 4, !49, i64 856, i64 4, !49, i64 860, i64 4, !49, i64 864, i64 12, !34, i64 876, i64 4, !49, i64 880, i64 12, !34, i64 892, i64 12, !34, i64 904, i64 12, !34, i64 916, i64 4, !49, i64 920, i64 4, !49, i64 928, i64 4, !49, i64 932, i64 4, !49, i64 936, i64 8, !52, i64 944, i64 12, !34, i64 956, i64 12, !34, i64 968, i64 4, !49, i64 972, i64 4, !49, i64 976, i64 4, !49, i64 980, i64 4, !49, i64 984, i64 4, !49, i64 988, i64 4, !49, i64 992, i64 4, !49, i64 996, i64 4, !49, i64 1000, i64 12, !34, i64 1012, i64 4, !49, i64 1016, i64 12, !34, i64 1028, i64 12, !34, i64 1040, i64 12, !34, i64 1052, i64 4, !49, i64 1056, i64 4, !49, i64 1064, i64 4, !49, i64 1068, i64 4, !49, i64 1072, i64 255, !34, i64 1327, i64 255, !34, i64 1582, i64 255, !34, i64 1840, i64 4, !49, i64 1844, i64 4, !49, i64 1848, i64 4, !49, i64 1852, i64 4, !49, i64 1856, i64 8, !52, i64 1864, i64 12, !34, i64 1876, i64 12, !34, i64 1888, i64 4, !49, i64 1892, i64 4, !49, i64 1896, i64 4, !49, i64 1900, i64 4, !49, i64 1904, i64 4, !49, i64 1908, i64 4, !49, i64 1912, i64 4, !49, i64 1916, i64 4, !49, i64 1920, i64 12, !34, i64 1932, i64 4, !49, i64 1936, i64 12, !34, i64 1948, i64 12, !34, i64 1960, i64 12, !34, i64 1972, i64 4, !49, i64 1976, i64 4, !49, i64 1984, i64 4, !49, i64 1988, i64 4, !49, i64 1992, i64 4, !49, i64 1996, i64 4, !49, i64 2000, i64 4, !49, i64 2004, i64 4, !49, i64 2008, i64 4, !49, i64 2012, i64 4, !49, i64 2016, i64 4, !49, i64 2020, i64 4, !49, i64 2024, i64 4, !49, i64 2032, i64 8, !40, i64 2040, i64 255, !34, i64 2295, i64 255, !34, i64 2550, i64 255, !34, i64 2808, i64 4, !49, i64 2812, i64 4, !49, i64 2816, i64 4, !49, i64 2820, i64 4, !49, i64 2824, i64 8, !52, i64 2832, i64 12, !34, i64 2844, i64 12, !34, i64 2856, i64 4, !49, i64 2860, i64 4, !49, i64 2864, i64 4, !49, i64 2868, i64 4, !49, i64 2872, i64 4, !49, i64 2876, i64 4, !49, i64 2880, i64 4, !49, i64 2884, i64 4, !49, i64 2888, i64 12, !34, i64 2900, i64 4, !49, i64 2904, i64 12, !34, i64 2916, i64 12, !34, i64 2928, i64 12, !34, i64 2940, i64 4, !49, i64 2944, i64 4, !49, i64 2952, i64 4, !49, i64 2956, i64 4, !49, i64 2960, i64 4, !49, i64 2964, i64 4, !49, i64 2968, i64 4, !49, i64 2972, i64 4, !49, i64 2976, i64 4, !49, i64 2980, i64 4, !49, i64 2984, i64 4, !49, i64 2988, i64 4, !49, i64 2992, i64 4, !49, i64 3000, i64 8, !40, i64 3008, i64 255, !34, i64 3263, i64 255, !34, i64 3518, i64 255, !34, i64 3776, i64 4, !49, i64 3780, i64 4, !49, i64 3784, i64 4, !49, i64 3788, i64 4, !49, i64 3792, i64 8, !52, i64 3800, i64 12, !34, i64 3812, i64 12, !34, i64 3824, i64 4, !49, i64 3828, i64 4, !49, i64 3832, i64 4, !49, i64 3836, i64 4, !49, i64 3840, i64 4, !49, i64 3844, i64 4, !49, i64 3848, i64 4, !49, i64 3852, i64 4, !49, i64 3856, i64 12, !34, i64 3868, i64 4, !49, i64 3872, i64 12, !34, i64 3884, i64 12, !34, i64 3896, i64 12, !34, i64 3908, i64 4, !49, i64 3912, i64 4, !49, i64 3920, i64 4, !49, i64 3924, i64 4, !49, i64 3928, i64 4, !49, i64 3932, i64 4, !49, i64 3936, i64 4, !49, i64 3940, i64 4, !49, i64 3944, i64 4, !49, i64 3948, i64 4, !49, i64 3952, i64 4, !49, i64 3956, i64 4, !49, i64 3960, i64 4, !49, i64 3968, i64 8, !40, i64 3976, i64 4, !49, i64 3980, i64 4, !49, i64 3984, i64 4, !49, i64 3988, i64 4, !49, i64 3992, i64 4, !49, i64 3996, i64 4, !49, i64 4000, i64 4, !49, i64 4004, i64 4, !49, i64 4008, i64 4, !49, i64 4012, i64 4, !49}
!55 = !{!44, !46, i64 24}
!56 = distinct !{!56, !38, !39}
!57 = !{!44, !45, i64 32}
!58 = !{!44, !46, i64 40}
!59 = !{!44, !46, i64 48}
!60 = distinct !{!60, !38, !39}
!61 = distinct !{!61, !38, !39}
