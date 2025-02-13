; ModuleID = 'blender/source/blender/editors/space_file/file_draw.c'
source_filename = "blender/source/blender/editors/space_file/file_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.SpaceFile = type { ptr, ptr, %struct.ListBase, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i16 }
%struct.FileSelectParams = type { [96 x i8], [1056 x i8], [256 x i8], [256 x i8], [256 x i8], [64 x i8], i32, i32, i32, i16, i16, i16, i16, i16, i16, [8 x i8] }
%struct.FileLayout = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x float] }
%struct.direntry = type { i32, ptr, ptr, %struct.stat, i32, [16 x i8], [4 x i8], [4 x i8], [4 x i8], [16 x i8], [8 x i8], [16 x i8], [16 x i8], ptr, i32, ptr, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.uiFontStyle = type { i16, i16, i16, [6 x i8], i16, i16, i16, i16, i16, i16, float, float }
%struct.uiStyle = type { ptr, ptr, [64 x i8], %struct.uiFontStyle, %struct.uiFontStyle, %struct.uiFontStyle, %struct.uiFontStyle, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }

@U = external local_unnamed_addr global %struct.UserDef, align 8
@.str = private unnamed_addr constant [7 x i8] c"win %p\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"File path\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"File name, overwrite existing\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"File name\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"FILE_OT_filenum\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Decrement the filename number\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"increment\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Increment the filename number\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"FILE_OT_execute\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"FILE_OT_cancel\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"Cancel\00", align 1
@__func__.file_draw_list = private unnamed_addr constant [15 x i8] c"file_draw_list\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c".\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @file_draw_buttons(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [32 x i8], align 16
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %5 = load i16, ptr %4, align 8, !tbaa !34
  %6 = sext i16 %5 to i32
  %7 = add nsw i32 %6, -10
  %8 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %9 = load i16, ptr %8, align 2, !tbaa !46
  %10 = sext i16 %9 to i32
  %11 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !47
  %12 = sext i16 %11 to i32
  %13 = shl nsw i32 %12, 1
  %14 = sdiv i16 %11, 6
  %15 = sext i16 %14 to i32
  %16 = add nsw i32 %15, %12
  %17 = sub nsw i32 %10, %16
  %18 = sub nsw i32 %17, %16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #8
  %19 = add nsw i32 %6, -20
  %20 = tail call ptr @CTX_wm_space_file(ptr noundef %0) #9
  %21 = tail call ptr @ED_fileselect_get_params(ptr noundef %20) #9
  %22 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 32, ptr noundef nonnull @.str, ptr noundef %1) #9
  %23 = call ptr @uiBeginBlock(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, i16 noundef signext 0) #9
  %24 = call ptr @CTX_wm_area(ptr noundef %0) #9
  %25 = getelementptr inbounds %struct.ScrArea, ptr %24, i64 0, i32 20
  %26 = load ptr, ptr %25, align 8, !tbaa !51
  %27 = icmp eq ptr %26, null
  br i1 %27, label %50, label %28

28:                                               ; preds = %2, %44
  %29 = phi ptr [ %48, %44 ], [ %26, %2 ]
  %30 = phi i32 [ %47, %44 ], [ 10, %2 ]
  %31 = phi i32 [ %46, %44 ], [ 0, %2 ]
  %32 = phi i32 [ %45, %44 ], [ %19, %2 ]
  %33 = getelementptr inbounds %struct.ARegion, ptr %29, i64 0, i32 8
  %34 = load i16, ptr %33, align 2, !tbaa !52
  %35 = icmp eq i16 %34, 2
  br i1 %35, label %36, label %44

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.ARegion, ptr %29, i64 0, i32 10
  %38 = load i16, ptr %37, align 2, !tbaa !53
  %39 = and i16 %38, 1
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = add nsw i32 %30, 16
  %43 = add nsw i32 %32, -16
  br label %44

44:                                               ; preds = %28, %36, %41
  %45 = phi i32 [ %43, %41 ], [ %32, %36 ], [ %32, %28 ]
  %46 = phi i32 [ 16, %41 ], [ %31, %36 ], [ %31, %28 ]
  %47 = phi i32 [ %42, %41 ], [ %30, %36 ], [ %30, %28 ]
  %48 = load ptr, ptr %29, align 8, !tbaa !51
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %28, !llvm.loop !54

50:                                               ; preds = %44, %2
  %51 = phi i32 [ %19, %2 ], [ %45, %44 ]
  %52 = phi i32 [ 0, %2 ], [ %46, %44 ]
  %53 = phi i32 [ 10, %2 ], [ %47, %44 ]
  %54 = getelementptr inbounds %struct.SpaceFile, ptr %20, i64 0, i32 5
  %55 = load ptr, ptr %54, align 8, !tbaa !56
  %56 = call i32 @UI_GetStringWidth(ptr noundef %55) #9
  %57 = add nsw i32 %56, 20
  %58 = icmp slt i32 %56, 60
  br i1 %58, label %59, label %65

59:                                               ; preds = %50
  %60 = call i32 @UI_GetStringWidth(ptr noundef %21) #9
  %61 = icmp slt i32 %60, 60
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = call i32 @UI_GetStringWidth(ptr noundef %21) #9
  %64 = add nsw i32 %63, 20
  br label %65

65:                                               ; preds = %62, %59, %50
  %66 = phi i32 [ %57, %50 ], [ %64, %62 ], [ 80, %59 ]
  %67 = add nsw i32 %66, 24
  %68 = icmp sgt i32 %51, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %65
  %70 = add nsw i32 %66, 4
  %71 = load i8, ptr %21, align 4, !tbaa !58
  %72 = icmp eq i8 %71, 0
  %73 = select i1 %72, i32 0, i32 %70
  %74 = sub nsw i32 %19, %73
  %75 = select i1 %72, i32 0, i32 %66
  br label %76

76:                                               ; preds = %69, %65
  %77 = phi i32 [ %19, %65 ], [ %74, %69 ]
  %78 = phi i32 [ 0, %65 ], [ %75, %69 ]
  %79 = icmp eq i32 %78, 0
  %80 = add nsw i32 %13, 24
  %81 = icmp sle i32 %77, %80
  %82 = select i1 %79, i1 true, i1 %81
  %83 = add nsw i32 %13, 4
  %84 = icmp eq i16 %11, 0
  %85 = select i1 %82, i32 0, i32 %83
  %86 = sub nsw i32 %77, %85
  %87 = select i1 %82, i1 true, i1 %84
  %88 = icmp sgt i32 %51, 0
  br i1 %88, label %89, label %116

89:                                               ; preds = %76
  %90 = call zeroext i8 @file_draw_check_exists(ptr noundef nonnull %20) #9
  call void @uiBlockSetFunc(ptr noundef %23, ptr noundef nonnull @file_draw_check_cb, ptr noundef null, ptr noundef null) #9
  %91 = sub nsw i32 %77, %52
  %92 = trunc i32 %91 to i16
  %93 = getelementptr inbounds %struct.FileSelectParams, ptr %21, i64 0, i32 1
  %94 = call ptr @uiDefBut(ptr noundef %23, i32 noundef 3072, i32 noundef -1, ptr noundef nonnull @.str.1, i32 noundef %53, i32 noundef %17, i16 noundef signext %92, i16 noundef signext %11, ptr noundef nonnull %93, float noundef 0.000000e+00, float noundef 1.024000e+03, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.2) #9
  call void @uiButSetCompleteFunc(ptr noundef %94, ptr noundef nonnull @autocomplete_directory, ptr noundef null) #9
  call void @uiButSetFlag(ptr noundef %94, i32 noundef 2097152) #9
  call void @uiButClearFlag(ptr noundef %94, i32 noundef 524288) #9
  call void @uiButSetNFunc(ptr noundef %94, ptr noundef nonnull @file_directory_enter_handle, ptr noundef null, ptr noundef %94) #9
  %95 = getelementptr inbounds %struct.SpaceFile, ptr %20, i64 0, i32 6
  %96 = load ptr, ptr %95, align 8, !tbaa !59
  %97 = icmp eq ptr %96, null
  br i1 %97, label %102, label %98

98:                                               ; preds = %89
  %99 = call ptr @filelist_lib(ptr noundef nonnull %96) #9
  %100 = icmp eq ptr %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %98
  call void @uiButSetFlag(ptr noundef %94, i32 noundef 2048) #9
  br label %102

102:                                              ; preds = %101, %98, %89
  %103 = getelementptr inbounds %struct.FileSelectParams, ptr %21, i64 0, i32 10
  %104 = load i16, ptr %103, align 2, !tbaa !60
  %105 = and i16 %104, 128
  %106 = icmp eq i16 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %102
  %108 = sub nsw i32 %86, %52
  %109 = trunc i32 %108 to i16
  %110 = getelementptr inbounds %struct.FileSelectParams, ptr %21, i64 0, i32 2
  %111 = icmp eq i8 %90, 0
  %112 = select i1 %111, ptr @.str.4, ptr @.str.3
  %113 = call ptr @uiDefBut(ptr noundef %23, i32 noundef 3072, i32 noundef -1, ptr noundef nonnull @.str.1, i32 noundef %53, i32 noundef %18, i16 noundef signext %109, i16 noundef signext %11, ptr noundef nonnull %110, float noundef 0.000000e+00, float noundef 2.560000e+02, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull %112) #9
  call void @uiButSetCompleteFunc(ptr noundef %113, ptr noundef nonnull @autocomplete_file, ptr noundef null) #9
  call void @uiButSetFlag(ptr noundef %113, i32 noundef 2097152) #9
  call void @uiButClearFlag(ptr noundef %113, i32 noundef 524288) #9
  call void @uiButSetNFunc(ptr noundef %113, ptr noundef nonnull @file_filename_enter_handle, ptr noundef null, ptr noundef %113) #9
  br i1 %111, label %115, label %114

114:                                              ; preds = %107
  call void @uiButSetFlag(ptr noundef %113, i32 noundef 65536) #9
  br label %115

115:                                              ; preds = %107, %114, %102
  call void @uiBlockSetFunc(ptr noundef %23, ptr noundef null, ptr noundef null, ptr noundef null) #9
  br label %116

116:                                              ; preds = %115, %76
  br i1 %87, label %132, label %117

117:                                              ; preds = %116
  %118 = getelementptr inbounds %struct.FileSelectParams, ptr %21, i64 0, i32 10
  %119 = load i16, ptr %118, align 2, !tbaa !60
  %120 = and i16 %119, 128
  %121 = icmp eq i16 %120, 0
  br i1 %121, label %122, label %132

122:                                              ; preds = %117
  call void @uiBlockBeginAlign(ptr noundef %23) #9
  %123 = add i32 %53, 4
  %124 = add i32 %123, %86
  %125 = sub nsw i32 %124, %52
  %126 = call ptr @uiDefIconButO(ptr noundef %23, i32 noundef 512, ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 32, i32 noundef %125, i32 noundef %18, i16 noundef signext %11, i16 noundef signext %11, ptr noundef nonnull @.str.6) #9
  %127 = call ptr @uiButGetOperatorPtrRNA(ptr noundef %126) #9
  call void @RNA_int_set(ptr noundef %127, ptr noundef nonnull @.str.7, i32 noundef -1) #9
  %128 = sub nsw i32 %12, %52
  %129 = add i32 %128, %124
  %130 = call ptr @uiDefIconButO(ptr noundef %23, i32 noundef 512, ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 31, i32 noundef %129, i32 noundef %18, i16 noundef signext %11, i16 noundef signext %11, ptr noundef nonnull @.str.8) #9
  %131 = call ptr @uiButGetOperatorPtrRNA(ptr noundef %130) #9
  call void @RNA_int_set(ptr noundef %131, ptr noundef nonnull @.str.7, i32 noundef 1) #9
  call void @uiBlockEndAlign(ptr noundef %23) #9
  br label %132

132:                                              ; preds = %122, %117, %116
  br i1 %79, label %138, label %133

133:                                              ; preds = %132
  %134 = sub i32 %7, %78
  %135 = trunc i32 %78 to i16
  %136 = call ptr @uiDefButO(ptr noundef %23, i32 noundef 512, ptr noundef nonnull @.str.9, i32 noundef 7, ptr noundef %21, i32 noundef %134, i32 noundef %17, i16 noundef signext %135, i16 noundef signext %11, ptr noundef nonnull @.str.1) #9
  %137 = call ptr @uiDefButO(ptr noundef %23, i32 noundef 512, ptr noundef nonnull @.str.10, i32 noundef 7, ptr noundef nonnull @.str.11, i32 noundef %134, i32 noundef %18, i16 noundef signext %135, i16 noundef signext %11, ptr noundef nonnull @.str.1) #9
  br label %138

138:                                              ; preds = %133, %132
  call void @uiEndBlock(ptr noundef %0, ptr noundef %23) #9
  call void @uiDrawBlock(ptr noundef %0, ptr noundef %23) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @CTX_wm_space_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_fileselect_get_params(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiBeginBlock(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @UI_GetStringWidth(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @file_draw_check_exists(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiBlockSetFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @file_draw_check_cb(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare ptr @uiDefBut(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiButSetCompleteFunc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @autocomplete_directory(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @uiButSetFlag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiButClearFlag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiButSetNFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @file_directory_enter_handle(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare ptr @filelist_lib(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @autocomplete_file(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @file_filename_enter_handle(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @uiBlockBeginAlign(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiDefIconButO(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiButGetOperatorPtrRNA(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiBlockEndAlign(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiDefButO(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiEndBlock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiDrawBlock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @file_calc_previews(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_space_file(ptr noundef %0) #9
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  tail call void @ED_fileselect_init_layout(ptr noundef %3, ptr noundef %1) #9
  %5 = getelementptr inbounds %struct.SpaceFile, ptr %3, i64 0, i32 11
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.FileLayout, ptr %6, i64 0, i32 10
  %8 = load i32, ptr %7, align 4, !tbaa !63
  %9 = getelementptr inbounds %struct.FileLayout, ptr %6, i64 0, i32 11
  %10 = load i32, ptr %9, align 4, !tbaa !65
  tail call void @UI_view2d_totRect_set(ptr noundef nonnull %4, i32 noundef %8, i32 noundef %10) #9
  ret void
}

; Function Attrs: optsize
declare void @ED_fileselect_init_layout(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_totRect_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @file_draw_list(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = tail call ptr @CTX_wm_space_file(ptr noundef %0) #9
  %6 = tail call ptr @ED_fileselect_get_params(ptr noundef %5) #9
  %7 = tail call ptr @ED_fileselect_get_layout(ptr noundef %5, ptr noundef %1) #9
  %8 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %9 = getelementptr inbounds %struct.SpaceFile, ptr %5, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !59
  %11 = tail call ptr @uiBeginBlock(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @__func__.file_draw_list, i16 noundef signext 0) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  %12 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !47
  %13 = sitofp i16 %12 to float
  %14 = fmul float %13, 0x3FE3333340000000
  %15 = fptosi float %14 to i32
  %16 = tail call i32 @filelist_numfiles(ptr noundef %10) #9
  %17 = getelementptr inbounds %struct.FileSelectParams, ptr %6, i64 0, i32 12
  %18 = load i16, ptr %17, align 2, !tbaa !66
  %19 = icmp eq i16 %18, 3
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  tail call fastcc void @draw_background(ptr noundef %7, ptr noundef nonnull %8) #10
  tail call fastcc void @draw_dividers(ptr noundef %7, ptr noundef nonnull %8) #10
  br label %21

21:                                               ; preds = %20, %2
  %22 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1
  %23 = load float, ptr %22, align 8, !tbaa !67
  %24 = fptosi float %23 to i32
  %25 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 3
  %26 = load float, ptr %25, align 4, !tbaa !68
  %27 = fneg float %26
  %28 = fptosi float %27 to i32
  %29 = tail call i32 @ED_fileselect_layout_offset(ptr noundef %7, i32 noundef %24, i32 noundef %28) #9
  %30 = tail call i32 @llvm.smax.i32(i32 %29, i32 0)
  %31 = tail call i32 @ED_fileselect_layout_numfiles(ptr noundef %7, ptr noundef %1) #9
  %32 = getelementptr inbounds %struct.FileLayout, ptr %7, i64 0, i32 12
  %33 = load i32, ptr %32, align 4, !tbaa !69
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  %36 = getelementptr inbounds %struct.FileLayout, ptr %7, i64 0, i32 8
  %37 = getelementptr inbounds %struct.FileLayout, ptr %7, i64 0, i32 9
  %38 = select i1 %35, ptr %37, ptr %36
  %39 = load i32, ptr %38, align 4, !tbaa !70
  %40 = load i16, ptr %17, align 2, !tbaa !66
  %41 = icmp eq i16 %40, 3
  br i1 %41, label %42, label %45

42:                                               ; preds = %21
  %43 = getelementptr inbounds %struct.FileLayout, ptr %7, i64 0, i32 2
  %44 = load i32, ptr %43, align 4, !tbaa !71
  br label %49

45:                                               ; preds = %21
  %46 = getelementptr inbounds %struct.FileLayout, ptr %7, i64 0, i32 15
  %47 = load float, ptr %46, align 4, !tbaa !72
  %48 = fptosi float %47 to i32
  br label %49

49:                                               ; preds = %45, %42
  %50 = phi i32 [ %44, %42 ], [ %48, %45 ]
  %51 = getelementptr inbounds %struct.FileLayout, ptr %7, i64 0, i32 14
  %52 = load i32, ptr %51, align 4, !tbaa !73
  %53 = sitofp i32 %52 to double
  %54 = fmul double %53, 3.000000e+00
  %55 = fmul double %54, 5.000000e-01
  %56 = fadd double %55, 5.000000e-01
  %57 = fptosi double %56 to i32
  %58 = zext i1 %41 to i16
  %59 = add i32 %30, %31
  %60 = add i32 %59, %39
  %61 = freeze i32 %60
  %62 = tail call i32 @llvm.smin.i32(i32 %16, i32 %61)
  %63 = icmp slt i32 %30, %62
  br i1 %63, label %64, label %322

64:                                               ; preds = %49
  %65 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 0, i32 3
  %66 = getelementptr inbounds %struct.FileSelectParams, ptr %6, i64 0, i32 6
  %67 = getelementptr inbounds %struct.FileLayout, ptr %7, i64 0, i32 2
  %68 = getelementptr inbounds %struct.SpaceFile, ptr %5, i64 0, i32 11
  %69 = getelementptr inbounds %struct.FileLayout, ptr %7, i64 0, i32 5
  %70 = getelementptr inbounds %struct.FileLayout, ptr %7, i64 0, i32 3
  %71 = trunc i32 %50 to i16
  %72 = trunc i32 %57 to i16
  %73 = getelementptr inbounds %struct.SpaceFile, ptr %5, i64 0, i32 5
  %74 = sitofp i32 %50 to float
  %75 = getelementptr inbounds %struct.FileLayout, ptr %7, i64 0, i32 15
  %76 = getelementptr inbounds %struct.FileLayout, ptr %7, i64 0, i32 15, i64 4
  %77 = sitofp i32 %15 to float
  %78 = getelementptr inbounds %struct.FileLayout, ptr %7, i64 0, i32 15, i64 5
  %79 = getelementptr inbounds %struct.FileLayout, ptr %7, i64 0, i32 15, i64 6
  %80 = getelementptr inbounds %struct.FileLayout, ptr %7, i64 0, i32 15, i64 7
  %81 = getelementptr inbounds %struct.FileLayout, ptr %7, i64 0, i32 15, i64 1
  %82 = getelementptr inbounds %struct.FileLayout, ptr %7, i64 0, i32 15, i64 2
  %83 = getelementptr inbounds %struct.FileLayout, ptr %7, i64 0, i32 15, i64 3
  br label %84

84:                                               ; preds = %64, %319
  %85 = phi i32 [ %30, %64 ], [ %320, %319 ]
  call void @ED_fileselect_layout_tilepos(ptr noundef %7, i32 noundef %85, ptr noundef nonnull %3, ptr noundef nonnull %4) #9
  %86 = load float, ptr %8, align 8, !tbaa !74
  %87 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !47
  %88 = sitofp i16 %87 to float
  %89 = call float @llvm.fmuladd.f32(float %88, float 0x3FB99999A0000000, float %86)
  %90 = fptosi float %89 to i32
  %91 = load i32, ptr %3, align 4, !tbaa !70
  %92 = add nsw i32 %91, %90
  store i32 %92, ptr %3, align 4, !tbaa !70
  %93 = load float, ptr %65, align 4, !tbaa !75
  %94 = load i32, ptr %4, align 4, !tbaa !70
  %95 = sitofp i32 %94 to float
  %96 = fsub float %93, %95
  %97 = fptosi float %96 to i32
  store i32 %97, ptr %4, align 4, !tbaa !70
  %98 = call ptr @filelist_file(ptr noundef %10, i32 noundef %85) #9
  call void @UI_ThemeColor4(i32 noundef 3) #9
  %99 = getelementptr inbounds %struct.direntry, ptr %98, i64 0, i32 16
  %100 = load i32, ptr %99, align 8, !tbaa !76
  %101 = and i32 %100, 16
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %128

103:                                              ; preds = %84
  %104 = load i32, ptr %66, align 4, !tbaa !81
  %105 = icmp ne i32 %104, %85
  %106 = and i32 %100, 12
  %107 = icmp eq i32 %106, 0
  %108 = and i1 %107, %105
  br i1 %108, label %128, label %109

109:                                              ; preds = %103
  %110 = and i32 %100, 8
  %111 = icmp eq i32 %110, 0
  %112 = and i32 %100, 4
  %113 = select i1 %111, i32 2, i32 23
  %114 = icmp eq i32 %104, %85
  %115 = icmp ne i32 %112, 0
  %116 = or i1 %115, %114
  %117 = select i1 %116, i32 20, i32 0
  %118 = load i32, ptr %3, align 4, !tbaa !70
  %119 = load i32, ptr %4, align 4, !tbaa !70
  %120 = add nsw i32 %119, -1
  %121 = load i32, ptr %67, align 4, !tbaa !71
  %122 = add nsw i32 %121, 4
  %123 = load ptr, ptr %68, align 8, !tbaa !62
  %124 = getelementptr inbounds %struct.FileLayout, ptr %123, i64 0, i32 3
  %125 = load i32, ptr %124, align 4, !tbaa !82
  %126 = load i32, ptr %69, align 4, !tbaa !83
  %127 = add nsw i32 %126, %125
  call fastcc void @draw_tile(i32 noundef %118, i32 noundef %120, i32 noundef %122, i32 noundef %127, i32 noundef %113, i32 noundef %117) #10
  br label %128

128:                                              ; preds = %103, %109, %84
  call void @uiSetRoundBox(i32 noundef 0) #9
  %129 = getelementptr inbounds %struct.direntry, ptr %98, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !84
  %131 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %130, ptr noundef nonnull dereferenceable(3) @.str.12) #11
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %128
  %134 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %130, ptr noundef nonnull dereferenceable(2) @.str.13) #11
  %135 = icmp eq i32 %134, 0
  br label %136

136:                                              ; preds = %133, %128
  %137 = phi i1 [ true, %128 ], [ %135, %133 ]
  %138 = xor i1 %137, true
  %139 = zext i1 %138 to i8
  %140 = load i16, ptr %17, align 2, !tbaa !66
  %141 = icmp eq i16 %140, 3
  br i1 %141, label %142, label %158

142:                                              ; preds = %136
  %143 = call ptr @filelist_getimage(ptr noundef %10, i32 noundef %85) #9
  %144 = icmp eq ptr %143, null
  br i1 %144, label %145, label %147

145:                                              ; preds = %142
  %146 = call ptr @filelist_geticon(ptr noundef %10, i32 noundef %85) #9
  br label %152

147:                                              ; preds = %142
  %148 = getelementptr inbounds %struct.direntry, ptr %98, i64 0, i32 4
  %149 = load i32, ptr %148, align 8, !tbaa !85
  %150 = and i32 %149, 16
  %151 = icmp ne i32 %150, 0
  br label %152

152:                                              ; preds = %145, %147
  %153 = phi ptr [ %143, %147 ], [ %146, %145 ]
  %154 = phi i1 [ %151, %147 ], [ false, %145 ]
  %155 = load i32, ptr %3, align 4, !tbaa !70
  %156 = load i32, ptr %4, align 4, !tbaa !70
  %157 = zext i1 %154 to i8
  call fastcc void @file_draw_preview(ptr noundef %11, ptr noundef nonnull %98, i32 noundef %155, i32 noundef %156, ptr noundef %153, ptr noundef %7, i8 noundef zeroext %157, i8 noundef zeroext %139) #10
  br label %181

158:                                              ; preds = %136
  %159 = getelementptr inbounds %struct.direntry, ptr %98, i64 0, i32 2
  %160 = load ptr, ptr %159, align 8, !tbaa !86
  %161 = load i32, ptr %3, align 4, !tbaa !70
  %162 = load i32, ptr %4, align 4, !tbaa !70
  %163 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !47
  %164 = sdiv i16 %163, 6
  %165 = sext i16 %164 to i32
  %166 = sub nsw i32 %162, %165
  %167 = call fastcc i32 @get_file_icon(ptr noundef nonnull %98) #10, !range !87
  %168 = sitofp i16 %163 to float
  %169 = fmul float %168, 0x3FE99999A0000000
  %170 = fptosi float %169 to i32
  call fastcc void @file_draw_icon(ptr noundef %11, ptr noundef %160, i32 noundef %161, i32 noundef %166, i32 noundef %167, i32 noundef %170, i32 noundef %170, i8 noundef zeroext %139) #10
  %171 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !47
  %172 = sitofp i16 %171 to float
  %173 = fmul float %172, 0x3FE99999A0000000
  %174 = fptosi float %173 to i32
  %175 = sitofp i32 %174 to float
  %176 = call float @llvm.fmuladd.f32(float %172, float 0x3FC99999A0000000, float %175)
  %177 = load i32, ptr %3, align 4, !tbaa !70
  %178 = sitofp i32 %177 to float
  %179 = fadd float %176, %178
  %180 = fptosi float %179 to i32
  store i32 %180, ptr %3, align 4, !tbaa !70
  br label %181

181:                                              ; preds = %158, %152
  call void @UI_ThemeColor4(i32 noundef 3) #9
  %182 = load i32, ptr %99, align 8, !tbaa !76
  %183 = and i32 %182, 16
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %203, label %185

185:                                              ; preds = %181
  %186 = load i32, ptr %3, align 4, !tbaa !70
  %187 = load i32, ptr %4, align 4, !tbaa !70
  %188 = load i32, ptr %70, align 4, !tbaa !82
  %189 = sub nsw i32 %187, %188
  %190 = sitofp i32 %189 to float
  %191 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !47
  %192 = sitofp i16 %191 to float
  %193 = call float @llvm.fmuladd.f32(float %192, float 0xBFC3333340000000, float %190)
  %194 = fptosi float %193 to i32
  %195 = load ptr, ptr %73, align 8, !tbaa !56
  %196 = getelementptr inbounds %struct.FileSelectParams, ptr %195, i64 0, i32 4
  %197 = call ptr @uiDefBut(ptr noundef %11, i32 noundef 3072, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef %186, i32 noundef %194, i16 noundef signext %71, i16 noundef signext %72, ptr noundef nonnull %196, float noundef 1.000000e+00, float noundef 2.560000e+02, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.1) #9
  call void @uiButSetRenameFunc(ptr noundef %197, ptr noundef nonnull @renamebutton_cb, ptr noundef nonnull %98) #9
  call void @uiButSetFlag(ptr noundef %197, i32 noundef 2097152) #9
  call void @uiButClearFlag(ptr noundef %197, i32 noundef 524288) #9
  %198 = call zeroext i8 @uiButActiveOnly(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %11, ptr noundef %197) #9
  %199 = icmp eq i8 %198, 0
  %200 = load i32, ptr %99, align 8, !tbaa !76
  br i1 %199, label %201, label %203

201:                                              ; preds = %185
  %202 = and i32 %200, -17
  store i32 %202, ptr %99, align 8, !tbaa !76
  br label %203

203:                                              ; preds = %185, %201, %181
  %204 = phi i32 [ %200, %185 ], [ %202, %201 ], [ %182, %181 ]
  %205 = and i32 %204, 16
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %221

207:                                              ; preds = %203
  %208 = load i16, ptr %17, align 2, !tbaa !66
  %209 = icmp eq i16 %208, 3
  %210 = load i32, ptr %4, align 4, !tbaa !70
  br i1 %209, label %211, label %216

211:                                              ; preds = %207
  %212 = load i32, ptr %70, align 4, !tbaa !82
  %213 = sub i32 %210, %212
  %214 = load i32, ptr %51, align 4, !tbaa !73
  %215 = add nsw i32 %213, %214
  br label %216

216:                                              ; preds = %207, %211
  %217 = phi i32 [ %215, %211 ], [ %210, %207 ]
  %218 = load i32, ptr %3, align 4, !tbaa !70
  %219 = add nsw i32 %218, 1
  %220 = load ptr, ptr %129, align 8, !tbaa !84
  call fastcc void @file_draw_string(i32 noundef %219, i32 noundef %217, ptr noundef %220, float noundef %74, i32 noundef %57, i16 noundef signext %58) #10
  br label %221

221:                                              ; preds = %216, %203
  %222 = load i16, ptr %17, align 2, !tbaa !66
  switch i16 %222, label %319 [
    i16 1, label %223
    i16 2, label %242
  ]

223:                                              ; preds = %221
  %224 = load float, ptr %75, align 4, !tbaa !72
  %225 = fptosi float %224 to i32
  %226 = add nsw i32 %225, %15
  %227 = load i32, ptr %3, align 4, !tbaa !70
  %228 = add nsw i32 %226, %227
  store i32 %228, ptr %3, align 4, !tbaa !70
  %229 = load i32, ptr %98, align 8, !tbaa !88
  %230 = and i32 %229, 61440
  %231 = icmp eq i32 %230, 16384
  br i1 %231, label %319, label %232

232:                                              ; preds = %223
  %233 = load i32, ptr %4, align 4, !tbaa !70
  %234 = getelementptr inbounds %struct.direntry, ptr %98, i64 0, i32 5
  %235 = load float, ptr %83, align 4, !tbaa !72
  %236 = load i32, ptr %70, align 4, !tbaa !82
  call fastcc void @file_draw_string(i32 noundef %228, i32 noundef %233, ptr noundef nonnull %234, float noundef %235, i32 noundef %236, i16 noundef signext %58) #10
  %237 = load float, ptr %83, align 4, !tbaa !72
  %238 = fptosi float %237 to i32
  %239 = add nsw i32 %238, %15
  %240 = load i32, ptr %3, align 4, !tbaa !70
  %241 = add nsw i32 %239, %240
  store i32 %241, ptr %3, align 4, !tbaa !70
  br label %319

242:                                              ; preds = %221
  %243 = load float, ptr %75, align 4, !tbaa !72
  %244 = fptosi float %243 to i32
  %245 = add nsw i32 %244, %15
  %246 = load i32, ptr %3, align 4, !tbaa !70
  %247 = add nsw i32 %245, %246
  store i32 %247, ptr %3, align 4, !tbaa !70
  %248 = load i32, ptr %4, align 4, !tbaa !70
  %249 = getelementptr inbounds %struct.direntry, ptr %98, i64 0, i32 6
  %250 = load float, ptr %76, align 4, !tbaa !72
  %251 = load i32, ptr %70, align 4, !tbaa !82
  call fastcc void @file_draw_string(i32 noundef %247, i32 noundef %248, ptr noundef nonnull %249, float noundef %250, i32 noundef %251, i16 noundef signext %58) #10
  %252 = load float, ptr %76, align 4, !tbaa !72
  %253 = fadd float %252, %77
  %254 = load i32, ptr %3, align 4, !tbaa !70
  %255 = sitofp i32 %254 to float
  %256 = fadd float %253, %255
  %257 = fptosi float %256 to i32
  store i32 %257, ptr %3, align 4, !tbaa !70
  %258 = load i32, ptr %4, align 4, !tbaa !70
  %259 = getelementptr inbounds %struct.direntry, ptr %98, i64 0, i32 7
  %260 = load float, ptr %78, align 4, !tbaa !72
  %261 = load i32, ptr %70, align 4, !tbaa !82
  call fastcc void @file_draw_string(i32 noundef %257, i32 noundef %258, ptr noundef nonnull %259, float noundef %260, i32 noundef %261, i16 noundef signext %58) #10
  %262 = load float, ptr %78, align 4, !tbaa !72
  %263 = fadd float %262, %77
  %264 = load i32, ptr %3, align 4, !tbaa !70
  %265 = sitofp i32 %264 to float
  %266 = fadd float %263, %265
  %267 = fptosi float %266 to i32
  store i32 %267, ptr %3, align 4, !tbaa !70
  %268 = load i32, ptr %4, align 4, !tbaa !70
  %269 = getelementptr inbounds %struct.direntry, ptr %98, i64 0, i32 8
  %270 = load float, ptr %79, align 4, !tbaa !72
  %271 = load i32, ptr %70, align 4, !tbaa !82
  call fastcc void @file_draw_string(i32 noundef %267, i32 noundef %268, ptr noundef nonnull %269, float noundef %270, i32 noundef %271, i16 noundef signext %58) #10
  %272 = load float, ptr %79, align 4, !tbaa !72
  %273 = fadd float %272, %77
  %274 = load i32, ptr %3, align 4, !tbaa !70
  %275 = sitofp i32 %274 to float
  %276 = fadd float %273, %275
  %277 = fptosi float %276 to i32
  store i32 %277, ptr %3, align 4, !tbaa !70
  %278 = load i32, ptr %4, align 4, !tbaa !70
  %279 = getelementptr inbounds %struct.direntry, ptr %98, i64 0, i32 9
  %280 = load float, ptr %80, align 4, !tbaa !72
  %281 = load i32, ptr %70, align 4, !tbaa !82
  call fastcc void @file_draw_string(i32 noundef %277, i32 noundef %278, ptr noundef nonnull %279, float noundef %280, i32 noundef %281, i16 noundef signext %58) #10
  %282 = load float, ptr %80, align 4, !tbaa !72
  %283 = fadd float %282, %77
  %284 = load i32, ptr %3, align 4, !tbaa !70
  %285 = sitofp i32 %284 to float
  %286 = fadd float %283, %285
  %287 = fptosi float %286 to i32
  store i32 %287, ptr %3, align 4, !tbaa !70
  %288 = load i32, ptr %4, align 4, !tbaa !70
  %289 = getelementptr inbounds %struct.direntry, ptr %98, i64 0, i32 11
  %290 = load float, ptr %81, align 4, !tbaa !72
  %291 = load i32, ptr %70, align 4, !tbaa !82
  call fastcc void @file_draw_string(i32 noundef %287, i32 noundef %288, ptr noundef nonnull %289, float noundef %290, i32 noundef %291, i16 noundef signext %58) #10
  %292 = load float, ptr %81, align 4, !tbaa !72
  %293 = fptosi float %292 to i32
  %294 = add nsw i32 %293, %15
  %295 = load i32, ptr %3, align 4, !tbaa !70
  %296 = add nsw i32 %294, %295
  store i32 %296, ptr %3, align 4, !tbaa !70
  %297 = load i32, ptr %4, align 4, !tbaa !70
  %298 = getelementptr inbounds %struct.direntry, ptr %98, i64 0, i32 10
  %299 = load float, ptr %82, align 4, !tbaa !72
  %300 = load i32, ptr %70, align 4, !tbaa !82
  call fastcc void @file_draw_string(i32 noundef %296, i32 noundef %297, ptr noundef nonnull %298, float noundef %299, i32 noundef %300, i16 noundef signext %58) #10
  %301 = load float, ptr %82, align 4, !tbaa !72
  %302 = fptosi float %301 to i32
  %303 = add nsw i32 %302, %15
  %304 = load i32, ptr %3, align 4, !tbaa !70
  %305 = add nsw i32 %303, %304
  store i32 %305, ptr %3, align 4, !tbaa !70
  %306 = load i32, ptr %98, align 8, !tbaa !88
  %307 = and i32 %306, 61440
  %308 = icmp eq i32 %307, 16384
  br i1 %308, label %319, label %309

309:                                              ; preds = %242
  %310 = load i32, ptr %4, align 4, !tbaa !70
  %311 = getelementptr inbounds %struct.direntry, ptr %98, i64 0, i32 5
  %312 = load float, ptr %83, align 4, !tbaa !72
  %313 = load i32, ptr %70, align 4, !tbaa !82
  call fastcc void @file_draw_string(i32 noundef %305, i32 noundef %310, ptr noundef nonnull %311, float noundef %312, i32 noundef %313, i16 noundef signext %58) #10
  %314 = load float, ptr %83, align 4, !tbaa !72
  %315 = fptosi float %314 to i32
  %316 = add nsw i32 %315, %15
  %317 = load i32, ptr %3, align 4, !tbaa !70
  %318 = add nsw i32 %316, %317
  store i32 %318, ptr %3, align 4, !tbaa !70
  br label %319

319:                                              ; preds = %221, %232, %223, %242, %309
  %320 = add nuw i32 %85, 1
  %321 = icmp eq i32 %320, %62
  br i1 %321, label %322, label %84, !llvm.loop !89

322:                                              ; preds = %319, %49
  call void @uiEndBlock(ptr noundef %0, ptr noundef %11) #9
  call void @uiDrawBlock(ptr noundef %0, ptr noundef %11) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret void
}

; Function Attrs: optsize
declare ptr @ED_fileselect_get_layout(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @filelist_numfiles(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_background(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !90 {
  tail call void @UI_ThemeColorShade(i32 noundef 2, i32 noundef -7) #9
  %3 = getelementptr inbounds %struct.FileLayout, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 4, !tbaa !91
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %31, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1
  %8 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1, i32 3
  %9 = getelementptr inbounds %struct.FileLayout, ptr %0, i64 0, i32 3
  %10 = getelementptr inbounds %struct.FileLayout, ptr %0, i64 0, i32 5
  %11 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1, i32 1
  br label %12

12:                                               ; preds = %6, %12
  %13 = phi i32 [ 0, %6 ], [ %28, %12 ]
  %14 = load float, ptr %8, align 4, !tbaa !92
  %15 = fptosi float %14 to i32
  %16 = load i32, ptr %9, align 4, !tbaa !82
  %17 = load i32, ptr %10, align 4, !tbaa !83
  %18 = shl nsw i32 %17, 1
  %19 = add i32 %18, %16
  %20 = mul nsw i32 %19, %13
  %21 = add i32 %17, %20
  %22 = sub i32 %15, %21
  %23 = load float, ptr %7, align 8, !tbaa !93
  %24 = sitofp i32 %22 to float
  %25 = load float, ptr %11, align 4, !tbaa !94
  %26 = add i32 %19, %22
  %27 = sitofp i32 %26 to float
  tail call void @glRectf(float noundef %23, float noundef %24, float noundef %25, float noundef %27) #9
  %28 = add nuw nsw i32 %13, 2
  %29 = load i32, ptr %3, align 4, !tbaa !91
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %12, !llvm.loop !95

31:                                               ; preds = %12, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_dividers(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !96 {
  %3 = alloca [2 x i32], align 4
  %4 = alloca [2 x i32], align 4
  %5 = alloca [3 x i8], align 1
  %6 = alloca [3 x i8], align 1
  %7 = getelementptr inbounds %struct.FileLayout, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !71
  %9 = getelementptr inbounds %struct.FileLayout, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !97
  %11 = shl nsw i32 %10, 1
  %12 = add nsw i32 %11, %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %6) #8
  call void @UI_GetThemeColorShade3ubv(i32 noundef 2, i32 noundef 30, ptr noundef nonnull %5) #9
  call void @UI_GetThemeColorShade3ubv(i32 noundef 2, i32 noundef -30, ptr noundef nonnull %6) #9
  %13 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1, i32 3
  %14 = load float, ptr %13, align 4, !tbaa !92
  %15 = getelementptr inbounds %struct.FileLayout, ptr %0, i64 0, i32 5
  %16 = load i32, ptr %15, align 4, !tbaa !83
  %17 = sitofp i32 %16 to float
  %18 = fsub float %14, %17
  %19 = fptosi float %18 to i32
  %20 = getelementptr inbounds [2 x i32], ptr %3, i64 0, i64 1
  store i32 %19, ptr %20, align 4, !tbaa !70
  %21 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1, i32 2
  %22 = load float, ptr %21, align 8, !tbaa !98
  %23 = fptosi float %22 to i32
  %24 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 1
  store i32 %23, ptr %24, align 4, !tbaa !70
  call void @glBegin(i32 noundef 1) #9
  %25 = load float, ptr %1, align 8, !tbaa !74
  %26 = fptosi float %25 to i32
  %27 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1, i32 1
  %28 = sitofp i32 %26 to float
  %29 = load float, ptr %27, align 4, !tbaa !94
  %30 = fcmp ogt float %29, %28
  br i1 %30, label %31, label %38

31:                                               ; preds = %2, %31
  %32 = phi i32 [ %33, %31 ], [ %26, %2 ]
  %33 = add nsw i32 %12, %32
  call void @glColor3ubv(ptr noundef nonnull %6) #9
  store i32 %33, ptr %4, align 4, !tbaa !70
  store i32 %33, ptr %3, align 4, !tbaa !70
  call void @glVertex2iv(ptr noundef nonnull %3) #9
  call void @glVertex2iv(ptr noundef nonnull %4) #9
  call void @glColor3ubv(ptr noundef nonnull %5) #9
  %34 = add nsw i32 %33, 1
  store i32 %34, ptr %4, align 4, !tbaa !70
  store i32 %34, ptr %3, align 4, !tbaa !70
  call void @glVertex2iv(ptr noundef nonnull %3) #9
  call void @glVertex2iv(ptr noundef nonnull %4) #9
  %35 = sitofp i32 %33 to float
  %36 = load float, ptr %27, align 4, !tbaa !94
  %37 = fcmp ogt float %36, %35
  br i1 %37, label %31, label %38, !llvm.loop !99

38:                                               ; preds = %31, %2
  call void @glEnd() #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  ret void
}

; Function Attrs: optsize
declare i32 @ED_fileselect_layout_offset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ED_fileselect_layout_numfiles(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_fileselect_layout_tilepos(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: optsize
declare ptr @filelist_file(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_ThemeColor4(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_tile(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 !PGOFuncName !100 {
  tail call void @UI_ThemeColorShade(i32 noundef %4, i32 noundef %5) #9
  tail call void @uiSetRoundBox(i32 noundef 15) #9
  %7 = sitofp i32 %0 to float
  %8 = sub nsw i32 %1, %3
  %9 = sitofp i32 %8 to float
  %10 = add nsw i32 %2, %0
  %11 = sitofp i32 %10 to float
  %12 = sitofp i32 %1 to float
  tail call void @uiRoundBox(float noundef %7, float noundef %9, float noundef %11, float noundef %12, float noundef 5.000000e+00) #9
  ret void
}

; Function Attrs: optsize
declare void @uiSetRoundBox(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @filelist_getimage(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @filelist_geticon(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @file_draw_preview(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, i8 noundef zeroext %6, i8 noundef zeroext %7) unnamed_addr #0 !PGOFuncName !101 {
  %9 = icmp eq ptr %4, null
  br i1 %9, label %112, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !102
  %13 = sitofp i32 %12 to float
  %14 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !105
  %15 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !106
  %16 = sitofp i32 %15 to float
  %17 = fmul float %14, %16
  %18 = fdiv float %17, 7.200000e+01
  %19 = fmul float %18, %13
  %20 = load i32, ptr %5, align 4, !tbaa !107
  %21 = sitofp i32 %20 to float
  %22 = fcmp ogt float %19, %21
  %23 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !108
  br i1 %22, label %32, label %25

25:                                               ; preds = %10
  %26 = sitofp i32 %24 to float
  %27 = fmul float %18, %26
  %28 = getelementptr inbounds %struct.FileLayout, ptr %5, i64 0, i32 1
  %29 = load i32, ptr %28, align 4, !tbaa !109
  %30 = sitofp i32 %29 to float
  %31 = fcmp ogt float %27, %30
  br i1 %31, label %32, label %50

32:                                               ; preds = %10, %25
  %33 = icmp sgt i32 %12, %24
  br i1 %33, label %34, label %42

34:                                               ; preds = %32
  %35 = sitofp i32 %24 to float
  %36 = fdiv float %35, %13
  %37 = fmul float %36, %21
  %38 = fdiv float %21, %13
  %39 = getelementptr inbounds %struct.FileLayout, ptr %5, i64 0, i32 1
  %40 = load i32, ptr %39, align 4, !tbaa !109
  %41 = sitofp i32 %40 to float
  br label %50

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct.FileLayout, ptr %5, i64 0, i32 1
  %44 = load i32, ptr %43, align 4, !tbaa !109
  %45 = sitofp i32 %44 to float
  %46 = sitofp i32 %24 to float
  %47 = fdiv float %13, %46
  %48 = fmul float %47, %45
  %49 = fdiv float %45, %46
  br label %50

50:                                               ; preds = %25, %34, %42
  %51 = phi float [ %30, %25 ], [ %41, %34 ], [ %45, %42 ]
  %52 = phi i32 [ %29, %25 ], [ %40, %34 ], [ %44, %42 ]
  %53 = phi float [ %18, %25 ], [ %38, %34 ], [ %49, %42 ]
  %54 = phi float [ %27, %25 ], [ %37, %34 ], [ %45, %42 ]
  %55 = phi float [ %19, %25 ], [ %21, %34 ], [ %48, %42 ]
  %56 = fptosi float %55 to i32
  %57 = fptosi float %54 to i32
  %58 = sitofp i32 %56 to float
  %59 = fsub float %21, %58
  %60 = fmul float %59, 5.000000e-01
  %61 = sitofp i32 %57 to float
  %62 = fsub float %51, %61
  %63 = fmul float %62, 5.000000e-01
  %64 = fadd float %60, 5.000000e-01
  %65 = getelementptr inbounds %struct.FileLayout, ptr %5, i64 0, i32 6
  %66 = load i32, ptr %65, align 4, !tbaa !110
  %67 = sitofp i32 %66 to float
  %68 = fadd float %64, %67
  %69 = fadd float %63, 5.000000e-01
  %70 = getelementptr inbounds %struct.FileLayout, ptr %5, i64 0, i32 7
  %71 = load i32, ptr %70, align 4, !tbaa !111
  %72 = sitofp i32 %71 to float
  %73 = fsub float %69, %72
  %74 = fptosi float %68 to i32
  %75 = add nsw i32 %74, %2
  %76 = sub nsw i32 %3, %52
  %77 = fptosi float %73 to i32
  %78 = add nsw i32 %76, %77
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #9
  %79 = icmp eq i8 %6, 0
  %80 = sitofp i32 %75 to float
  %81 = sitofp i32 %78 to float
  br i1 %79, label %96, label %82

82:                                               ; preds = %50
  %83 = add nsw i32 %75, %56
  %84 = sitofp i32 %83 to float
  %85 = add nsw i32 %78, %57
  %86 = sitofp i32 %85 to float
  tail call void @uiDrawBoxShadow(i8 noundef zeroext -36, float noundef %80, float noundef %81, float noundef %84, float noundef %86) #9
  tail call void @glEnable(i32 noundef 3042) #9
  tail call void @glColor4f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #9
  %87 = load i32, ptr %11, align 8, !tbaa !102
  %88 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 3
  %89 = load i32, ptr %88, align 4, !tbaa !108
  %90 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 8
  %91 = load ptr, ptr %90, align 8, !tbaa !112
  tail call void @glaDrawPixelsTexScaled(float noundef %80, float noundef %81, i32 noundef %87, i32 noundef %89, i32 noundef 6408, i32 noundef 5121, i32 noundef 9728, ptr noundef %91, float noundef %53, float noundef %53) #9
  tail call void @glColor4f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0x3FD99999A0000000) #9
  %92 = add nsw i32 %75, %56
  %93 = sitofp i32 %92 to float
  %94 = add nsw i32 %78, %57
  %95 = sitofp i32 %94 to float
  tail call void @fdrawbox(float noundef %80, float noundef %81, float noundef %93, float noundef %95) #9
  br label %102

96:                                               ; preds = %50
  tail call void @glEnable(i32 noundef 3042) #9
  tail call void @glColor4f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #9
  %97 = load i32, ptr %11, align 8, !tbaa !102
  %98 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 3
  %99 = load i32, ptr %98, align 4, !tbaa !108
  %100 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 8
  %101 = load ptr, ptr %100, align 8, !tbaa !112
  tail call void @glaDrawPixelsTexScaled(float noundef %80, float noundef %81, i32 noundef %97, i32 noundef %99, i32 noundef 6408, i32 noundef 5121, i32 noundef 9728, ptr noundef %101, float noundef %53, float noundef %53) #9
  br label %102

102:                                              ; preds = %96, %82
  %103 = icmp eq i8 %7, 0
  br i1 %103, label %111, label %104

104:                                              ; preds = %102
  %105 = trunc i32 %56 to i16
  %106 = trunc i32 %57 to i16
  %107 = tail call ptr @uiDefBut(ptr noundef %0, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef %75, i32 noundef %78, i16 noundef signext %105, i16 noundef signext %106, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.1) #9
  %108 = getelementptr inbounds %struct.direntry, ptr %1, i64 0, i32 2
  %109 = load ptr, ptr %108, align 8, !tbaa !86
  %110 = tail call fastcc i32 @get_file_icon(ptr noundef %1) #10, !range !87
  tail call void @uiButSetDragImage(ptr noundef %107, ptr noundef %109, i32 noundef %110, ptr noundef nonnull %4, float noundef %53) #9
  br label %111

111:                                              ; preds = %104, %102
  tail call void @glDisable(i32 noundef 3042) #9
  br label %112

112:                                              ; preds = %111, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @file_draw_icon(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i8 noundef zeroext %7) unnamed_addr #0 !PGOFuncName !113 {
  %9 = sub nsw i32 %3, %6
  %10 = trunc i32 %5 to i16
  %11 = trunc i32 %6 to i16
  %12 = tail call ptr @uiDefIconBut(ptr noundef %0, i32 noundef 5120, i32 noundef 0, i32 noundef %4, i32 noundef %2, i32 noundef %9, i16 noundef signext %10, i16 noundef signext %11, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.1) #9
  %13 = icmp eq i8 %7, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %8
  tail call void @uiButSetDragPath(ptr noundef %12, ptr noundef %1) #9
  br label %15

15:                                               ; preds = %14, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @get_file_icon(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !114 {
  %2 = load i32, ptr %0, align 8, !tbaa !88
  %3 = and i32 %2, 61440
  %4 = icmp eq i32 %3, 16384
  br i1 %4, label %5, label %19

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.direntry, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !84
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(3) @.str.12) #11
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %49, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.direntry, ptr %0, i64 0, i32 4
  %12 = load i32, ptr %11, align 8, !tbaa !85
  %13 = and i32 %12, 32768
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %49

15:                                               ; preds = %10
  %16 = and i32 %12, 4
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i32 693, i32 695
  br label %49

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.direntry, ptr %0, i64 0, i32 4
  %21 = load i32, ptr %20, align 8, !tbaa !85
  %22 = and i32 %21, 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %49

24:                                               ; preds = %19
  %25 = and i32 %21, 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %24
  %28 = and i32 %21, 16
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %49

30:                                               ; preds = %27
  %31 = and i32 %21, 32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %30
  %34 = and i32 %21, 64
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %33
  %37 = and i32 %21, 256
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %36
  %40 = and i32 %21, 128
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = and i32 %21, 12288
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = and i32 %21, 512
  %47 = icmp eq i32 %46, 0
  %48 = select i1 %47, i32 694, i32 701
  br label %49

49:                                               ; preds = %45, %42, %39, %36, %33, %30, %27, %24, %19, %15, %10, %5
  %50 = phi i32 [ 691, %5 ], [ 180, %10 ], [ %18, %15 ], [ 695, %19 ], [ 726, %24 ], [ 696, %27 ], [ 697, %30 ], [ 698, %33 ], [ 699, %36 ], [ 700, %39 ], [ 694, %42 ], [ %48, %45 ]
  ret i32 %50
}

; Function Attrs: optsize
declare void @uiButSetRenameFunc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @renamebutton_cb(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 !PGOFuncName !115 {
  %4 = alloca [1036 x i8], align 16
  %5 = alloca [1036 x i8], align 16
  %6 = alloca [1036 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1036, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 1036, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 1036, ptr nonnull %6) #8
  %7 = tail call ptr @CTX_wm_manager(ptr noundef %0) #9
  %8 = tail call ptr @CTX_wm_space_data(ptr noundef %0) #9
  %9 = tail call ptr @CTX_wm_region(ptr noundef %0) #9
  %10 = load ptr, ptr @G, align 8, !tbaa !116
  %11 = getelementptr inbounds %struct.Main, ptr %10, i64 0, i32 2
  %12 = getelementptr inbounds %struct.SpaceFile, ptr %8, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !56
  %14 = getelementptr inbounds %struct.FileSelectParams, ptr %13, i64 0, i32 1
  call void @BLI_make_file_string(ptr noundef nonnull %11, ptr noundef nonnull %5, ptr noundef nonnull %14, ptr noundef %2) #9
  %15 = load ptr, ptr %12, align 8, !tbaa !56
  %16 = getelementptr inbounds %struct.FileSelectParams, ptr %15, i64 0, i32 4
  %17 = call ptr @BLI_strncpy(ptr noundef nonnull %6, ptr noundef nonnull %16, i64 noundef 1036) #9
  %18 = load ptr, ptr @G, align 8, !tbaa !116
  %19 = getelementptr inbounds %struct.Main, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %12, align 8, !tbaa !56
  %21 = getelementptr inbounds %struct.FileSelectParams, ptr %20, i64 0, i32 1
  call void @BLI_make_file_string(ptr noundef nonnull %19, ptr noundef nonnull %4, ptr noundef nonnull %21, ptr noundef nonnull %6) #9
  %22 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %4) #11
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %3
  %25 = call i32 @BLI_exists(ptr noundef nonnull %4) #9
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call i32 @BLI_rename(ptr noundef nonnull %5, ptr noundef nonnull %4) #9
  call void @ED_fileselect_clear(ptr noundef %7, ptr noundef nonnull %8) #9
  br label %29

29:                                               ; preds = %27, %24
  call void @ED_region_tag_redraw(ptr noundef %9) #9
  br label %30

30:                                               ; preds = %29, %3
  call void @llvm.lifetime.end.p0(i64 1036, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 1036, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 1036, ptr nonnull %4) #8
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @uiButActiveOnly(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @file_draw_string(i32 noundef %0, i32 noundef %1, ptr noundef %2, float noundef %3, i32 noundef %4, i16 noundef signext %5) unnamed_addr #0 !PGOFuncName !118 {
  %7 = alloca %struct.uiFontStyle, align 4
  %8 = alloca %struct.rcti, align 4
  %9 = alloca [256 x i8], align 16
  %10 = tail call ptr @UI_GetStyle() #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #8
  %11 = getelementptr inbounds %struct.uiStyle, ptr %10, i64 0, i32 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %11, i64 32, i1 false), !tbaa.struct !119
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %9) #8
  %12 = getelementptr inbounds %struct.uiFontStyle, ptr %7, i64 0, i32 9
  store i16 %5, ptr %12, align 2, !tbaa !121
  %13 = call ptr @BLI_strncpy(ptr noundef nonnull %9, ptr noundef %2, i64 noundef 256) #9
  %14 = fadd float %3, 1.000000e+00
  %15 = call float @file_shorten_string(ptr noundef nonnull %9, float noundef %14, i32 noundef 0) #9
  store i32 %0, ptr %8, align 4, !tbaa !123
  %16 = sitofp i32 %0 to double
  %17 = fadd float %3, 4.000000e+00
  %18 = call float @llvm.ceil.f32(float %17)
  %19 = fpext float %18 to double
  %20 = fadd double %16, %19
  %21 = fptosi double %20 to i32
  %22 = getelementptr inbounds %struct.rcti, ptr %8, i64 0, i32 1
  store i32 %21, ptr %22, align 4, !tbaa !124
  %23 = sub nsw i32 %1, %4
  %24 = getelementptr inbounds %struct.rcti, ptr %8, i64 0, i32 2
  store i32 %23, ptr %24, align 4, !tbaa !125
  %25 = getelementptr inbounds %struct.rcti, ptr %8, i64 0, i32 3
  store i32 %1, ptr %25, align 4, !tbaa !126
  call void @uiStyleFontDraw(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #8
  ret void
}

; Function Attrs: optsize
declare void @UI_ThemeColorShade(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glRectf(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_GetThemeColorShade3ubv(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glBegin(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glColor3ubv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glVertex2iv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnd() local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiRoundBox(float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiDrawBoxShadow(i8 noundef zeroext, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glColor4f(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glaDrawPixelsTexScaled(float noundef, float noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @fdrawbox(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiButSetDragImage(ptr noundef, ptr noundef, i32 noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiDefIconBut(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiButSetDragPath(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_space_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_make_file_string(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_exists(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_rename(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_fileselect_clear(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @UI_GetStyle() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: optsize
declare float @file_shorten_string(ptr noundef, float noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiStyleFontDraw(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }
attributes #11 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !44, i64 208}
!35 = !{!"ARegion", !36, i64 0, !36, i64 8, !39, i64 16, !42, i64 176, !42, i64 192, !44, i64 208, !44, i64 210, !44, i64 212, !44, i64 214, !44, i64 216, !44, i64 218, !41, i64 220, !44, i64 224, !44, i64 226, !44, i64 228, !44, i64 230, !44, i64 232, !44, i64 234, !44, i64 236, !44, i64 238, !36, i64 240, !45, i64 248, !45, i64 264, !45, i64 280, !45, i64 296, !45, i64 312, !45, i64 328, !45, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"View2D", !40, i64 0, !40, i64 16, !42, i64 32, !42, i64 48, !42, i64 64, !37, i64 80, !37, i64 88, !41, i64 96, !41, i64 100, !44, i64 104, !44, i64 106, !44, i64 108, !44, i64 110, !44, i64 112, !44, i64 114, !44, i64 116, !44, i64 118, !44, i64 120, !44, i64 122, !44, i64 124, !44, i64 126, !36, i64 128, !43, i64 136, !43, i64 140, !36, i64 144, !36, i64 152}
!40 = !{!"rctf", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!41 = !{!"float", !37, i64 0}
!42 = !{!"rcti", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!43 = !{!"int", !37, i64 0}
!44 = !{!"short", !37, i64 0}
!45 = !{!"ListBase", !36, i64 0, !36, i64 8}
!46 = !{!35, !44, i64 210}
!47 = !{!48, !44, i64 8948}
!48 = !{!"UserDef", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !43, i64 8468, !44, i64 8472, !44, i64 8474, !44, i64 8476, !44, i64 8478, !44, i64 8480, !44, i64 8482, !43, i64 8484, !43, i64 8488, !43, i64 8492, !44, i64 8496, !44, i64 8498, !43, i64 8500, !43, i64 8504, !43, i64 8508, !43, i64 8512, !43, i64 8516, !43, i64 8520, !43, i64 8524, !44, i64 8528, !44, i64 8530, !44, i64 8532, !44, i64 8534, !45, i64 8536, !45, i64 8552, !45, i64 8568, !45, i64 8584, !45, i64 8600, !45, i64 8616, !45, i64 8632, !37, i64 8648, !44, i64 8712, !44, i64 8714, !44, i64 8716, !44, i64 8718, !44, i64 8720, !44, i64 8722, !44, i64 8724, !44, i64 8726, !37, i64 8728, !44, i64 8896, !44, i64 8898, !44, i64 8900, !44, i64 8902, !44, i64 8904, !44, i64 8906, !44, i64 8908, !44, i64 8910, !43, i64 8912, !43, i64 8916, !44, i64 8920, !44, i64 8922, !44, i64 8924, !44, i64 8926, !44, i64 8928, !44, i64 8930, !44, i64 8932, !44, i64 8934, !44, i64 8936, !44, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !44, i64 8944, !44, i64 8946, !44, i64 8948, !44, i64 8950, !44, i64 8952, !44, i64 8954, !41, i64 8956, !41, i64 8960, !43, i64 8964, !44, i64 8968, !44, i64 8970, !41, i64 8972, !44, i64 8976, !44, i64 8978, !44, i64 8980, !44, i64 8982, !49, i64 8984, !37, i64 9760, !37, i64 9772, !44, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !43, i64 10896, !43, i64 10900, !41, i64 10904, !41, i64 10908, !43, i64 10912, !44, i64 10916, !44, i64 10918, !44, i64 10920, !44, i64 10922, !44, i64 10924, !44, i64 10926, !50, i64 10928}
!49 = !{!"ColorBand", !44, i64 0, !44, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!50 = !{!"WalkNavigation", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !44, i64 24, !37, i64 26}
!51 = !{!36, !36, i64 0}
!52 = !{!35, !44, i64 214}
!53 = !{!35, !44, i64 218}
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!57, !36, i64 40}
!57 = !{!"SpaceFile", !36, i64 0, !36, i64 8, !45, i64 16, !43, i64 32, !43, i64 36, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !44, i64 96, !44, i64 98, !44, i64 100, !44, i64 102}
!58 = !{!37, !37, i64 0}
!59 = !{!57, !36, i64 48}
!60 = !{!61, !44, i64 1998}
!61 = !{!"FileSelectParams", !37, i64 0, !37, i64 96, !37, i64 1152, !37, i64 1408, !37, i64 1664, !37, i64 1920, !43, i64 1984, !43, i64 1988, !43, i64 1992, !44, i64 1996, !44, i64 1998, !44, i64 2000, !44, i64 2002, !44, i64 2004, !44, i64 2006, !37, i64 2008}
!62 = !{!57, !36, i64 88}
!63 = !{!64, !43, i64 40}
!64 = !{!"FileLayout", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !43, i64 48, !43, i64 52, !43, i64 56, !37, i64 60}
!65 = !{!64, !43, i64 44}
!66 = !{!61, !44, i64 2002}
!67 = !{!35, !41, i64 32}
!68 = !{!35, !41, i64 44}
!69 = !{!64, !43, i64 48}
!70 = !{!43, !43, i64 0}
!71 = !{!64, !43, i64 8}
!72 = !{!41, !41, i64 0}
!73 = !{!64, !43, i64 56}
!74 = !{!39, !41, i64 0}
!75 = !{!39, !41, i64 12}
!76 = !{!77, !43, i64 280}
!77 = !{!"direntry", !43, i64 0, !36, i64 8, !36, i64 16, !78, i64 24, !43, i64 168, !37, i64 172, !37, i64 188, !37, i64 192, !37, i64 196, !37, i64 200, !37, i64 216, !37, i64 224, !37, i64 240, !36, i64 256, !43, i64 264, !36, i64 272, !43, i64 280}
!78 = !{!"stat", !79, i64 0, !79, i64 8, !79, i64 16, !43, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !79, i64 40, !79, i64 48, !79, i64 56, !79, i64 64, !80, i64 72, !80, i64 88, !80, i64 104, !37, i64 120}
!79 = !{!"long", !37, i64 0}
!80 = !{!"timespec", !79, i64 0, !79, i64 8}
!81 = !{!61, !43, i64 1984}
!82 = !{!64, !43, i64 12}
!83 = !{!64, !43, i64 20}
!84 = !{!77, !36, i64 8}
!85 = !{!77, !43, i64 168}
!86 = !{!77, !36, i64 16}
!87 = !{i32 180, i32 727}
!88 = !{!77, !43, i64 0}
!89 = distinct !{!89, !55}
!90 = !{!"file_draw.c:draw_background"}
!91 = !{!64, !43, i64 32}
!92 = !{!39, !41, i64 28}
!93 = !{!39, !41, i64 16}
!94 = !{!39, !41, i64 20}
!95 = distinct !{!95, !55}
!96 = !{!"file_draw.c:draw_dividers"}
!97 = !{!64, !43, i64 16}
!98 = !{!39, !41, i64 24}
!99 = distinct !{!99, !55}
!100 = !{!"file_draw.c:draw_tile"}
!101 = !{!"file_draw.c:file_draw_preview"}
!102 = !{!103, !43, i64 16}
!103 = !{!"ImBuf", !36, i64 0, !36, i64 8, !43, i64 16, !43, i64 20, !37, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !36, i64 40, !36, i64 48, !37, i64 56, !43, i64 72, !43, i64 76, !43, i64 80, !43, i64 84, !36, i64 88, !36, i64 96, !36, i64 104, !41, i64 112, !37, i64 120, !43, i64 280, !43, i64 284, !43, i64 288, !43, i64 292, !36, i64 296, !36, i64 304, !43, i64 312, !37, i64 316, !37, i64 1340, !36, i64 2368, !43, i64 2376, !36, i64 2384, !43, i64 2392, !43, i64 2396, !36, i64 2400, !36, i64 2408, !36, i64 2416, !36, i64 2424, !43, i64 2432, !42, i64 2436, !104, i64 2456}
!104 = !{!"DDSData", !43, i64 0, !43, i64 4, !36, i64 8, !43, i64 16}
!105 = !{!48, !41, i64 10908}
!106 = !{!48, !43, i64 8524}
!107 = !{!64, !43, i64 0}
!108 = !{!103, !43, i64 20}
!109 = !{!64, !43, i64 4}
!110 = !{!64, !43, i64 24}
!111 = !{!64, !43, i64 28}
!112 = !{!103, !36, i64 40}
!113 = !{!"file_draw.c:file_draw_icon"}
!114 = !{!"file_draw.c:get_file_icon"}
!115 = !{!"file_draw.c:renamebutton_cb"}
!116 = !{!117, !36, i64 0}
!117 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !45, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !44, i64 2084, !44, i64 2086, !44, i64 2088, !37, i64 2090, !44, i64 2092, !43, i64 2096, !43, i64 2100, !37, i64 2104, !43, i64 2108, !43, i64 2112, !37, i64 2116}
!118 = !{!"file_draw.c:file_draw_string"}
!119 = !{i64 0, i64 2, !120, i64 2, i64 2, !120, i64 4, i64 2, !120, i64 6, i64 6, !58, i64 12, i64 2, !120, i64 14, i64 2, !120, i64 16, i64 2, !120, i64 18, i64 2, !120, i64 20, i64 2, !120, i64 22, i64 2, !120, i64 24, i64 4, !72, i64 28, i64 4, !72}
!120 = !{!44, !44, i64 0}
!121 = !{!122, !44, i64 22}
!122 = !{!"uiFontStyle", !44, i64 0, !44, i64 2, !44, i64 4, !37, i64 6, !44, i64 12, !44, i64 14, !44, i64 16, !44, i64 18, !44, i64 20, !44, i64 22, !41, i64 24, !41, i64 28}
!123 = !{!42, !43, i64 0}
!124 = !{!42, !43, i64 4}
!125 = !{!42, !43, i64 8}
!126 = !{!42, !43, i64 12}
