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
%struct.uiFontStyle = type { i16, i16, i16, [6 x i8], i16, i16, i16, i16, i16, i16, float, float }
%struct.direntry = type { i32, ptr, ptr, %struct.stat, i32, [16 x i8], [4 x i8], [4 x i8], [4 x i8], [16 x i8], [8 x i8], [16 x i8], [16 x i8], ptr, i32, ptr, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.uiStyle = type { ptr, ptr, [64 x i8], %struct.uiFontStyle, %struct.uiFontStyle, %struct.uiFontStyle, %struct.uiFontStyle, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }

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

; Function Attrs: nounwind uwtable
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
  %14 = sdiv i32 %12, 6
  %15 = add nsw i32 %14, %12
  %16 = sub nsw i32 %10, %15
  %17 = sub nsw i32 %16, %15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #7
  %18 = add nsw i32 %6, -20
  %19 = tail call ptr @CTX_wm_space_file(ptr noundef %0) #7
  %20 = tail call ptr @ED_fileselect_get_params(ptr noundef %19) #7
  %21 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 32, ptr noundef nonnull @.str, ptr noundef %1) #7
  %22 = call ptr @uiBeginBlock(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, i16 noundef signext 0) #7
  %23 = call ptr @CTX_wm_area(ptr noundef %0) #7
  %24 = getelementptr inbounds %struct.ScrArea, ptr %23, i64 0, i32 20
  %25 = load ptr, ptr %24, align 8, !tbaa !51
  %26 = icmp eq ptr %25, null
  br i1 %26, label %49, label %27

27:                                               ; preds = %2, %43
  %28 = phi ptr [ %47, %43 ], [ %25, %2 ]
  %29 = phi i32 [ %46, %43 ], [ 10, %2 ]
  %30 = phi i32 [ %45, %43 ], [ 0, %2 ]
  %31 = phi i32 [ %44, %43 ], [ %18, %2 ]
  %32 = getelementptr inbounds %struct.ARegion, ptr %28, i64 0, i32 8
  %33 = load i16, ptr %32, align 2, !tbaa !52
  %34 = icmp eq i16 %33, 2
  br i1 %34, label %35, label %43

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.ARegion, ptr %28, i64 0, i32 10
  %37 = load i16, ptr %36, align 2, !tbaa !53
  %38 = and i16 %37, 1
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = add nsw i32 %29, 16
  %42 = add nsw i32 %31, -16
  br label %43

43:                                               ; preds = %27, %35, %40
  %44 = phi i32 [ %42, %40 ], [ %31, %35 ], [ %31, %27 ]
  %45 = phi i32 [ 16, %40 ], [ %30, %35 ], [ %30, %27 ]
  %46 = phi i32 [ %41, %40 ], [ %29, %35 ], [ %29, %27 ]
  %47 = load ptr, ptr %28, align 8, !tbaa !51
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %27, !llvm.loop !54

49:                                               ; preds = %43, %2
  %50 = phi i32 [ %18, %2 ], [ %44, %43 ]
  %51 = phi i32 [ 0, %2 ], [ %45, %43 ]
  %52 = phi i32 [ 10, %2 ], [ %46, %43 ]
  %53 = getelementptr inbounds %struct.SpaceFile, ptr %19, i64 0, i32 5
  %54 = load ptr, ptr %53, align 8, !tbaa !57
  %55 = call i32 @UI_GetStringWidth(ptr noundef %54) #7
  %56 = add nsw i32 %55, 20
  %57 = icmp slt i32 %55, 60
  br i1 %57, label %58, label %64

58:                                               ; preds = %49
  %59 = call i32 @UI_GetStringWidth(ptr noundef %20) #7
  %60 = icmp slt i32 %59, 60
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = call i32 @UI_GetStringWidth(ptr noundef %20) #7
  %63 = add nsw i32 %62, 20
  br label %64

64:                                               ; preds = %61, %58, %49
  %65 = phi i32 [ %56, %49 ], [ %63, %61 ], [ 80, %58 ]
  %66 = add nsw i32 %65, 24
  %67 = icmp sgt i32 %50, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %64
  %69 = add nsw i32 %65, 4
  %70 = load i8, ptr %20, align 4, !tbaa !59
  %71 = icmp eq i8 %70, 0
  %72 = select i1 %71, i32 0, i32 %69
  %73 = sub nsw i32 %18, %72
  %74 = select i1 %71, i32 0, i32 %65
  br label %75

75:                                               ; preds = %68, %64
  %76 = phi i32 [ %18, %64 ], [ %73, %68 ]
  %77 = phi i32 [ 0, %64 ], [ %74, %68 ]
  %78 = icmp eq i32 %77, 0
  %79 = add nsw i32 %13, 24
  %80 = icmp sle i32 %76, %79
  %81 = select i1 %78, i1 true, i1 %80
  %82 = add nsw i32 %13, 4
  %83 = icmp eq i16 %11, 0
  %84 = select i1 %81, i32 0, i32 %82
  %85 = sub nsw i32 %76, %84
  %86 = select i1 %81, i1 true, i1 %83
  %87 = icmp sgt i32 %50, 0
  br i1 %87, label %88, label %115

88:                                               ; preds = %75
  %89 = call zeroext i8 @file_draw_check_exists(ptr noundef %19) #7
  call void @uiBlockSetFunc(ptr noundef %22, ptr noundef nonnull @file_draw_check_cb, ptr noundef null, ptr noundef null) #7
  %90 = sub nsw i32 %76, %51
  %91 = trunc i32 %90 to i16
  %92 = getelementptr inbounds %struct.FileSelectParams, ptr %20, i64 0, i32 1
  %93 = call ptr @uiDefBut(ptr noundef %22, i32 noundef 3072, i32 noundef -1, ptr noundef nonnull @.str.1, i32 noundef %52, i32 noundef %16, i16 noundef signext %91, i16 noundef signext %11, ptr noundef nonnull %92, float noundef 0.000000e+00, float noundef 1.024000e+03, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.2) #7
  call void @uiButSetCompleteFunc(ptr noundef %93, ptr noundef nonnull @autocomplete_directory, ptr noundef null) #7
  call void @uiButSetFlag(ptr noundef %93, i32 noundef 2097152) #7
  call void @uiButClearFlag(ptr noundef %93, i32 noundef 524288) #7
  call void @uiButSetNFunc(ptr noundef %93, ptr noundef nonnull @file_directory_enter_handle, ptr noundef null, ptr noundef %93) #7
  %94 = getelementptr inbounds %struct.SpaceFile, ptr %19, i64 0, i32 6
  %95 = load ptr, ptr %94, align 8, !tbaa !60
  %96 = icmp eq ptr %95, null
  br i1 %96, label %101, label %97

97:                                               ; preds = %88
  %98 = call ptr @filelist_lib(ptr noundef nonnull %95) #7
  %99 = icmp eq ptr %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %97
  call void @uiButSetFlag(ptr noundef %93, i32 noundef 2048) #7
  br label %101

101:                                              ; preds = %100, %97, %88
  %102 = getelementptr inbounds %struct.FileSelectParams, ptr %20, i64 0, i32 10
  %103 = load i16, ptr %102, align 2, !tbaa !61
  %104 = and i16 %103, 128
  %105 = icmp eq i16 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %101
  %107 = sub nsw i32 %85, %51
  %108 = trunc i32 %107 to i16
  %109 = getelementptr inbounds %struct.FileSelectParams, ptr %20, i64 0, i32 2
  %110 = icmp eq i8 %89, 0
  %111 = select i1 %110, ptr @.str.4, ptr @.str.3
  %112 = call ptr @uiDefBut(ptr noundef %22, i32 noundef 3072, i32 noundef -1, ptr noundef nonnull @.str.1, i32 noundef %52, i32 noundef %17, i16 noundef signext %108, i16 noundef signext %11, ptr noundef nonnull %109, float noundef 0.000000e+00, float noundef 2.560000e+02, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull %111) #7
  call void @uiButSetCompleteFunc(ptr noundef %112, ptr noundef nonnull @autocomplete_file, ptr noundef null) #7
  call void @uiButSetFlag(ptr noundef %112, i32 noundef 2097152) #7
  call void @uiButClearFlag(ptr noundef %112, i32 noundef 524288) #7
  call void @uiButSetNFunc(ptr noundef %112, ptr noundef nonnull @file_filename_enter_handle, ptr noundef null, ptr noundef %112) #7
  br i1 %110, label %114, label %113

113:                                              ; preds = %106
  call void @uiButSetFlag(ptr noundef %112, i32 noundef 65536) #7
  br label %114

114:                                              ; preds = %106, %113, %101
  call void @uiBlockSetFunc(ptr noundef %22, ptr noundef null, ptr noundef null, ptr noundef null) #7
  br label %115

115:                                              ; preds = %114, %75
  br i1 %86, label %131, label %116

116:                                              ; preds = %115
  %117 = getelementptr inbounds %struct.FileSelectParams, ptr %20, i64 0, i32 10
  %118 = load i16, ptr %117, align 2, !tbaa !61
  %119 = and i16 %118, 128
  %120 = icmp eq i16 %119, 0
  br i1 %120, label %121, label %131

121:                                              ; preds = %116
  call void @uiBlockBeginAlign(ptr noundef %22) #7
  %122 = add i32 %52, 4
  %123 = add i32 %122, %85
  %124 = sub nsw i32 %123, %51
  %125 = call ptr @uiDefIconButO(ptr noundef %22, i32 noundef 512, ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 32, i32 noundef %124, i32 noundef %17, i16 noundef signext %11, i16 noundef signext %11, ptr noundef nonnull @.str.6) #7
  %126 = call ptr @uiButGetOperatorPtrRNA(ptr noundef %125) #7
  call void @RNA_int_set(ptr noundef %126, ptr noundef nonnull @.str.7, i32 noundef -1) #7
  %127 = sub nsw i32 %12, %51
  %128 = add i32 %127, %123
  %129 = call ptr @uiDefIconButO(ptr noundef %22, i32 noundef 512, ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 31, i32 noundef %128, i32 noundef %17, i16 noundef signext %11, i16 noundef signext %11, ptr noundef nonnull @.str.8) #7
  %130 = call ptr @uiButGetOperatorPtrRNA(ptr noundef %129) #7
  call void @RNA_int_set(ptr noundef %130, ptr noundef nonnull @.str.7, i32 noundef 1) #7
  call void @uiBlockEndAlign(ptr noundef %22) #7
  br label %131

131:                                              ; preds = %121, %116, %115
  br i1 %78, label %137, label %132

132:                                              ; preds = %131
  %133 = sub i32 %7, %77
  %134 = trunc i32 %77 to i16
  %135 = call ptr @uiDefButO(ptr noundef %22, i32 noundef 512, ptr noundef nonnull @.str.9, i32 noundef 7, ptr noundef %20, i32 noundef %133, i32 noundef %16, i16 noundef signext %134, i16 noundef signext %11, ptr noundef nonnull @.str.1) #7
  %136 = call ptr @uiDefButO(ptr noundef %22, i32 noundef 512, ptr noundef nonnull @.str.10, i32 noundef 7, ptr noundef nonnull @.str.11, i32 noundef %133, i32 noundef %17, i16 noundef signext %134, i16 noundef signext %11, ptr noundef nonnull @.str.1) #7
  br label %137

137:                                              ; preds = %132, %131
  call void @uiEndBlock(ptr noundef %0, ptr noundef %22) #7
  call void @uiDrawBlock(ptr noundef %0, ptr noundef %22) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @CTX_wm_space_file(ptr noundef) local_unnamed_addr #2

declare ptr @ED_fileselect_get_params(ptr noundef) local_unnamed_addr #2

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @uiBeginBlock(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

declare i32 @UI_GetStringWidth(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @file_draw_check_exists(ptr noundef) local_unnamed_addr #2

declare void @uiBlockSetFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @file_draw_check_cb(ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @uiDefBut(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare void @uiButSetCompleteFunc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @autocomplete_directory(ptr noundef, ptr noundef, ptr noundef) #2

declare void @uiButSetFlag(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @uiButClearFlag(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @uiButSetNFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @file_directory_enter_handle(ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @filelist_lib(ptr noundef) local_unnamed_addr #2

declare i32 @autocomplete_file(ptr noundef, ptr noundef, ptr noundef) #2

declare void @file_filename_enter_handle(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @uiBlockBeginAlign(ptr noundef) local_unnamed_addr #2

declare ptr @uiDefIconButO(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef) local_unnamed_addr #2

declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @uiButGetOperatorPtrRNA(ptr noundef) local_unnamed_addr #2

declare void @uiBlockEndAlign(ptr noundef) local_unnamed_addr #2

declare ptr @uiDefButO(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef) local_unnamed_addr #2

declare void @uiEndBlock(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @uiDrawBlock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @file_calc_previews(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_space_file(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  tail call void @ED_fileselect_init_layout(ptr noundef %3, ptr noundef %1) #7
  %5 = getelementptr inbounds %struct.SpaceFile, ptr %3, i64 0, i32 11
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  %7 = getelementptr inbounds %struct.FileLayout, ptr %6, i64 0, i32 10
  %8 = load i32, ptr %7, align 4, !tbaa !64
  %9 = getelementptr inbounds %struct.FileLayout, ptr %6, i64 0, i32 11
  %10 = load i32, ptr %9, align 4, !tbaa !66
  tail call void @UI_view2d_totRect_set(ptr noundef nonnull %4, i32 noundef %8, i32 noundef %10) #7
  ret void
}

declare void @ED_fileselect_init_layout(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @UI_view2d_totRect_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @file_draw_list(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.uiFontStyle, align 4
  %4 = alloca %struct.rcti, align 4
  %5 = alloca [256 x i8], align 16
  %6 = alloca %struct.uiFontStyle, align 4
  %7 = alloca %struct.rcti, align 4
  %8 = alloca [256 x i8], align 16
  %9 = alloca %struct.uiFontStyle, align 4
  %10 = alloca %struct.rcti, align 4
  %11 = alloca [256 x i8], align 16
  %12 = alloca %struct.uiFontStyle, align 4
  %13 = alloca %struct.rcti, align 4
  %14 = alloca [256 x i8], align 16
  %15 = alloca %struct.uiFontStyle, align 4
  %16 = alloca %struct.rcti, align 4
  %17 = alloca [256 x i8], align 16
  %18 = alloca %struct.uiFontStyle, align 4
  %19 = alloca %struct.rcti, align 4
  %20 = alloca [256 x i8], align 16
  %21 = alloca %struct.uiFontStyle, align 4
  %22 = alloca %struct.rcti, align 4
  %23 = alloca [256 x i8], align 16
  %24 = alloca %struct.uiFontStyle, align 4
  %25 = alloca %struct.rcti, align 4
  %26 = alloca [256 x i8], align 16
  %27 = alloca %struct.uiFontStyle, align 4
  %28 = alloca %struct.rcti, align 4
  %29 = alloca [256 x i8], align 16
  %30 = alloca [2 x i32], align 4
  %31 = alloca [2 x i32], align 4
  %32 = alloca [3 x i8], align 1
  %33 = alloca [3 x i8], align 1
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = tail call ptr @CTX_wm_space_file(ptr noundef %0) #7
  %37 = tail call ptr @ED_fileselect_get_params(ptr noundef %36) #7
  %38 = tail call ptr @ED_fileselect_get_layout(ptr noundef %36, ptr noundef %1) #7
  %39 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %40 = getelementptr inbounds %struct.SpaceFile, ptr %36, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !60
  %42 = tail call ptr @uiBeginBlock(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @__func__.file_draw_list, i16 noundef signext 0) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %34) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %35) #7
  %43 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !47
  %44 = sitofp i16 %43 to float
  %45 = fmul float %44, 0x3FE3333340000000
  %46 = fptosi float %45 to i32
  %47 = tail call i32 @filelist_numfiles(ptr noundef %41) #7
  %48 = getelementptr inbounds %struct.FileSelectParams, ptr %37, i64 0, i32 12
  %49 = load i16, ptr %48, align 2, !tbaa !67
  %50 = icmp eq i16 %49, 3
  br i1 %50, label %114, label %51

51:                                               ; preds = %2
  tail call void @UI_ThemeColorShade(i32 noundef 2, i32 noundef -7) #7
  %52 = getelementptr inbounds %struct.FileLayout, ptr %38, i64 0, i32 8
  %53 = load i32, ptr %52, align 4, !tbaa !68
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %81, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1
  %57 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 3
  %58 = getelementptr inbounds %struct.FileLayout, ptr %38, i64 0, i32 3
  %59 = getelementptr inbounds %struct.FileLayout, ptr %38, i64 0, i32 5
  %60 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 1
  br label %61

61:                                               ; preds = %55, %61
  %62 = phi i32 [ 0, %55 ], [ %78, %61 ]
  %63 = load float, ptr %57, align 4, !tbaa !69
  %64 = fptosi float %63 to i32
  %65 = load i32, ptr %58, align 4, !tbaa !70
  %66 = load i32, ptr %59, align 4, !tbaa !71
  %67 = shl nsw i32 %66, 1
  %68 = add nsw i32 %67, %65
  %69 = mul nsw i32 %68, %62
  %70 = add i32 %66, %69
  %71 = sub i32 %64, %70
  %72 = load float, ptr %56, align 8, !tbaa !72
  %73 = sitofp i32 %71 to float
  %74 = load float, ptr %60, align 4, !tbaa !73
  %75 = add i32 %67, %65
  %76 = add i32 %75, %71
  %77 = sitofp i32 %76 to float
  tail call void @glRectf(float noundef %72, float noundef %73, float noundef %74, float noundef %77) #7
  %78 = add nuw nsw i32 %62, 2
  %79 = load i32, ptr %52, align 4, !tbaa !68
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %81, label %61, !llvm.loop !74

81:                                               ; preds = %61, %51
  %82 = getelementptr inbounds %struct.FileLayout, ptr %38, i64 0, i32 2
  %83 = load i32, ptr %82, align 4, !tbaa !75
  %84 = getelementptr inbounds %struct.FileLayout, ptr %38, i64 0, i32 4
  %85 = load i32, ptr %84, align 4, !tbaa !76
  %86 = shl nsw i32 %85, 1
  %87 = add nsw i32 %86, %83
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %30) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %31) #7
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %32) #7
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %33) #7
  call void @UI_GetThemeColorShade3ubv(i32 noundef 2, i32 noundef 30, ptr noundef nonnull %32) #7
  call void @UI_GetThemeColorShade3ubv(i32 noundef 2, i32 noundef -30, ptr noundef nonnull %33) #7
  %88 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 3
  %89 = load float, ptr %88, align 4, !tbaa !69
  %90 = getelementptr inbounds %struct.FileLayout, ptr %38, i64 0, i32 5
  %91 = load i32, ptr %90, align 4, !tbaa !71
  %92 = sitofp i32 %91 to float
  %93 = fsub float %89, %92
  %94 = fptosi float %93 to i32
  %95 = getelementptr inbounds [2 x i32], ptr %30, i64 0, i64 1
  store i32 %94, ptr %95, align 4, !tbaa !77
  %96 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 2
  %97 = load float, ptr %96, align 8, !tbaa !78
  %98 = fptosi float %97 to i32
  %99 = getelementptr inbounds [2 x i32], ptr %31, i64 0, i64 1
  store i32 %98, ptr %99, align 4, !tbaa !77
  call void @glBegin(i32 noundef 1) #7
  %100 = load float, ptr %39, align 8, !tbaa !79
  %101 = fptosi float %100 to i32
  %102 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 1
  %103 = sitofp i32 %101 to float
  %104 = load float, ptr %102, align 4, !tbaa !73
  %105 = fcmp ogt float %104, %103
  br i1 %105, label %106, label %113

106:                                              ; preds = %81, %106
  %107 = phi i32 [ %108, %106 ], [ %101, %81 ]
  %108 = add nsw i32 %87, %107
  call void @glColor3ubv(ptr noundef nonnull %33) #7
  store i32 %108, ptr %31, align 4, !tbaa !77
  store i32 %108, ptr %30, align 4, !tbaa !77
  call void @glVertex2iv(ptr noundef nonnull %30) #7
  call void @glVertex2iv(ptr noundef nonnull %31) #7
  call void @glColor3ubv(ptr noundef nonnull %32) #7
  %109 = add nsw i32 %108, 1
  store i32 %109, ptr %31, align 4, !tbaa !77
  store i32 %109, ptr %30, align 4, !tbaa !77
  call void @glVertex2iv(ptr noundef nonnull %30) #7
  call void @glVertex2iv(ptr noundef nonnull %31) #7
  %110 = sitofp i32 %108 to float
  %111 = load float, ptr %102, align 4, !tbaa !73
  %112 = fcmp ogt float %111, %110
  br i1 %112, label %106, label %113, !llvm.loop !80

113:                                              ; preds = %106, %81
  call void @glEnd() #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %33) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %32) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %31) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %30) #7
  br label %114

114:                                              ; preds = %113, %2
  %115 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1
  %116 = load float, ptr %115, align 8, !tbaa !81
  %117 = fptosi float %116 to i32
  %118 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 3
  %119 = load float, ptr %118, align 4, !tbaa !82
  %120 = fneg float %119
  %121 = fptosi float %120 to i32
  %122 = call i32 @ED_fileselect_layout_offset(ptr noundef %38, i32 noundef %117, i32 noundef %121) #7
  %123 = call i32 @llvm.smax.i32(i32 %122, i32 0)
  %124 = call i32 @ED_fileselect_layout_numfiles(ptr noundef %38, ptr noundef %1) #7
  %125 = getelementptr inbounds %struct.FileLayout, ptr %38, i64 0, i32 12
  %126 = load i32, ptr %125, align 4, !tbaa !83
  %127 = and i32 %126, 1
  %128 = icmp eq i32 %127, 0
  %129 = getelementptr inbounds %struct.FileLayout, ptr %38, i64 0, i32 8
  %130 = getelementptr inbounds %struct.FileLayout, ptr %38, i64 0, i32 9
  %131 = select i1 %128, ptr %130, ptr %129
  %132 = load i32, ptr %131, align 4, !tbaa !77
  %133 = load i16, ptr %48, align 2, !tbaa !67
  %134 = icmp eq i16 %133, 3
  br i1 %134, label %135, label %138

135:                                              ; preds = %114
  %136 = getelementptr inbounds %struct.FileLayout, ptr %38, i64 0, i32 2
  %137 = load i32, ptr %136, align 4, !tbaa !75
  br label %142

138:                                              ; preds = %114
  %139 = getelementptr inbounds %struct.FileLayout, ptr %38, i64 0, i32 15
  %140 = load float, ptr %139, align 4, !tbaa !84
  %141 = fptosi float %140 to i32
  br label %142

142:                                              ; preds = %138, %135
  %143 = phi i32 [ %137, %135 ], [ %141, %138 ]
  %144 = getelementptr inbounds %struct.FileLayout, ptr %38, i64 0, i32 14
  %145 = load i32, ptr %144, align 4, !tbaa !85
  %146 = sitofp i32 %145 to double
  %147 = fmul double %146, 3.000000e+00
  %148 = fmul double %147, 5.000000e-01
  %149 = fadd double %148, 5.000000e-01
  %150 = fptosi double %149 to i32
  %151 = zext i1 %134 to i16
  %152 = add i32 %123, %124
  %153 = add i32 %152, %132
  %154 = freeze i32 %153
  %155 = call i32 @llvm.smin.i32(i32 %47, i32 %154)
  %156 = icmp slt i32 %123, %155
  br i1 %156, label %157, label %763

157:                                              ; preds = %142
  %158 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 0, i32 3
  %159 = getelementptr inbounds %struct.FileSelectParams, ptr %37, i64 0, i32 6
  %160 = getelementptr inbounds %struct.FileLayout, ptr %38, i64 0, i32 2
  %161 = getelementptr inbounds %struct.SpaceFile, ptr %36, i64 0, i32 11
  %162 = getelementptr inbounds %struct.FileLayout, ptr %38, i64 0, i32 5
  %163 = getelementptr inbounds %struct.FileLayout, ptr %38, i64 0, i32 1
  %164 = getelementptr inbounds %struct.FileLayout, ptr %38, i64 0, i32 1
  %165 = getelementptr inbounds %struct.FileLayout, ptr %38, i64 0, i32 1
  %166 = getelementptr inbounds %struct.FileLayout, ptr %38, i64 0, i32 6
  %167 = getelementptr inbounds %struct.FileLayout, ptr %38, i64 0, i32 7
  %168 = getelementptr inbounds %struct.FileLayout, ptr %38, i64 0, i32 3
  %169 = trunc i32 %143 to i16
  %170 = trunc i32 %150 to i16
  %171 = getelementptr inbounds %struct.SpaceFile, ptr %36, i64 0, i32 5
  %172 = getelementptr inbounds %struct.FileLayout, ptr %38, i64 0, i32 3
  %173 = sitofp i32 %143 to float
  %174 = getelementptr inbounds %struct.uiFontStyle, ptr %27, i64 0, i32 9
  %175 = fadd float %173, 1.000000e+00
  %176 = fadd float %173, 4.000000e+00
  %177 = call float @llvm.ceil.f32(float %176)
  %178 = fpext float %177 to double
  %179 = getelementptr inbounds %struct.rcti, ptr %28, i64 0, i32 1
  %180 = getelementptr inbounds %struct.rcti, ptr %28, i64 0, i32 2
  %181 = getelementptr inbounds %struct.rcti, ptr %28, i64 0, i32 3
  %182 = getelementptr inbounds %struct.FileLayout, ptr %38, i64 0, i32 15
  %183 = getelementptr inbounds %struct.FileLayout, ptr %38, i64 0, i32 15, i64 4
  %184 = getelementptr inbounds %struct.FileLayout, ptr %38, i64 0, i32 3
  %185 = getelementptr inbounds %struct.uiFontStyle, ptr %21, i64 0, i32 9
  %186 = getelementptr inbounds %struct.rcti, ptr %22, i64 0, i32 1
  %187 = getelementptr inbounds %struct.rcti, ptr %22, i64 0, i32 2
  %188 = getelementptr inbounds %struct.rcti, ptr %22, i64 0, i32 3
  %189 = sitofp i32 %46 to float
  %190 = getelementptr inbounds %struct.FileLayout, ptr %38, i64 0, i32 15, i64 5
  %191 = getelementptr inbounds %struct.uiFontStyle, ptr %18, i64 0, i32 9
  %192 = getelementptr inbounds %struct.rcti, ptr %19, i64 0, i32 1
  %193 = getelementptr inbounds %struct.rcti, ptr %19, i64 0, i32 2
  %194 = getelementptr inbounds %struct.rcti, ptr %19, i64 0, i32 3
  %195 = getelementptr inbounds %struct.FileLayout, ptr %38, i64 0, i32 15, i64 6
  %196 = getelementptr inbounds %struct.uiFontStyle, ptr %15, i64 0, i32 9
  %197 = getelementptr inbounds %struct.rcti, ptr %16, i64 0, i32 1
  %198 = getelementptr inbounds %struct.rcti, ptr %16, i64 0, i32 2
  %199 = getelementptr inbounds %struct.rcti, ptr %16, i64 0, i32 3
  %200 = getelementptr inbounds %struct.FileLayout, ptr %38, i64 0, i32 15, i64 7
  %201 = getelementptr inbounds %struct.uiFontStyle, ptr %12, i64 0, i32 9
  %202 = getelementptr inbounds %struct.rcti, ptr %13, i64 0, i32 1
  %203 = getelementptr inbounds %struct.rcti, ptr %13, i64 0, i32 2
  %204 = getelementptr inbounds %struct.rcti, ptr %13, i64 0, i32 3
  %205 = getelementptr inbounds %struct.FileLayout, ptr %38, i64 0, i32 15, i64 1
  %206 = getelementptr inbounds %struct.uiFontStyle, ptr %9, i64 0, i32 9
  %207 = getelementptr inbounds %struct.rcti, ptr %10, i64 0, i32 1
  %208 = getelementptr inbounds %struct.rcti, ptr %10, i64 0, i32 2
  %209 = getelementptr inbounds %struct.rcti, ptr %10, i64 0, i32 3
  %210 = getelementptr inbounds %struct.FileLayout, ptr %38, i64 0, i32 15, i64 2
  %211 = getelementptr inbounds %struct.uiFontStyle, ptr %6, i64 0, i32 9
  %212 = getelementptr inbounds %struct.rcti, ptr %7, i64 0, i32 1
  %213 = getelementptr inbounds %struct.rcti, ptr %7, i64 0, i32 2
  %214 = getelementptr inbounds %struct.rcti, ptr %7, i64 0, i32 3
  %215 = getelementptr inbounds %struct.FileLayout, ptr %38, i64 0, i32 15, i64 3
  %216 = getelementptr inbounds %struct.uiFontStyle, ptr %3, i64 0, i32 9
  %217 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 1
  %218 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 2
  %219 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 3
  %220 = getelementptr inbounds %struct.FileLayout, ptr %38, i64 0, i32 15
  %221 = getelementptr inbounds %struct.FileLayout, ptr %38, i64 0, i32 15, i64 3
  %222 = getelementptr inbounds %struct.FileLayout, ptr %38, i64 0, i32 3
  %223 = getelementptr inbounds %struct.uiFontStyle, ptr %24, i64 0, i32 9
  %224 = getelementptr inbounds %struct.rcti, ptr %25, i64 0, i32 1
  %225 = getelementptr inbounds %struct.rcti, ptr %25, i64 0, i32 2
  %226 = getelementptr inbounds %struct.rcti, ptr %25, i64 0, i32 3
  br label %227

227:                                              ; preds = %157, %760
  %228 = phi i32 [ %123, %157 ], [ %761, %760 ]
  call void @ED_fileselect_layout_tilepos(ptr noundef %38, i32 noundef %228, ptr noundef nonnull %34, ptr noundef nonnull %35) #7
  %229 = load float, ptr %39, align 8, !tbaa !79
  %230 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !47
  %231 = sitofp i16 %230 to float
  %232 = call float @llvm.fmuladd.f32(float %231, float 0x3FB99999A0000000, float %229)
  %233 = fptosi float %232 to i32
  %234 = load i32, ptr %34, align 4, !tbaa !77
  %235 = add nsw i32 %234, %233
  store i32 %235, ptr %34, align 4, !tbaa !77
  %236 = load float, ptr %158, align 4, !tbaa !86
  %237 = load i32, ptr %35, align 4, !tbaa !77
  %238 = sitofp i32 %237 to float
  %239 = fsub float %236, %238
  %240 = fptosi float %239 to i32
  store i32 %240, ptr %35, align 4, !tbaa !77
  %241 = call ptr @filelist_file(ptr noundef %41, i32 noundef %228) #7
  call void @UI_ThemeColor4(i32 noundef 3) #7
  %242 = getelementptr inbounds %struct.direntry, ptr %241, i64 0, i32 16
  %243 = load i32, ptr %242, align 8, !tbaa !87
  %244 = and i32 %243, 16
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %277

246:                                              ; preds = %227
  %247 = load i32, ptr %159, align 4, !tbaa !92
  %248 = icmp ne i32 %247, %228
  %249 = and i32 %243, 12
  %250 = icmp eq i32 %249, 0
  %251 = and i1 %250, %248
  br i1 %251, label %277, label %252

252:                                              ; preds = %246
  %253 = and i32 %243, 8
  %254 = icmp eq i32 %253, 0
  %255 = and i32 %243, 4
  %256 = select i1 %254, i32 2, i32 23
  %257 = icmp eq i32 %247, %228
  %258 = icmp ne i32 %255, 0
  %259 = or i1 %258, %257
  %260 = select i1 %259, i32 20, i32 0
  %261 = load i32, ptr %34, align 4, !tbaa !77
  %262 = load i32, ptr %35, align 4, !tbaa !77
  %263 = add nsw i32 %262, -1
  %264 = load i32, ptr %160, align 4, !tbaa !75
  %265 = load ptr, ptr %161, align 8, !tbaa !63
  %266 = getelementptr inbounds %struct.FileLayout, ptr %265, i64 0, i32 3
  %267 = load i32, ptr %266, align 4, !tbaa !70
  %268 = load i32, ptr %162, align 4, !tbaa !71
  call void @UI_ThemeColorShade(i32 noundef %256, i32 noundef %260) #7
  call void @uiSetRoundBox(i32 noundef 15) #7
  %269 = sitofp i32 %261 to float
  %270 = add i32 %267, %268
  %271 = sub i32 %263, %270
  %272 = sitofp i32 %271 to float
  %273 = add i32 %261, 4
  %274 = add i32 %273, %264
  %275 = sitofp i32 %274 to float
  %276 = sitofp i32 %263 to float
  call void @uiRoundBox(float noundef %269, float noundef %272, float noundef %275, float noundef %276, float noundef 5.000000e+00) #7
  br label %277

277:                                              ; preds = %246, %252, %227
  call void @uiSetRoundBox(i32 noundef 0) #7
  %278 = getelementptr inbounds %struct.direntry, ptr %241, i64 0, i32 1
  %279 = load ptr, ptr %278, align 8, !tbaa !93
  %280 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %279, ptr noundef nonnull dereferenceable(3) @.str.12) #8
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %285, label %282

282:                                              ; preds = %277
  %283 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %279, ptr noundef nonnull dereferenceable(2) @.str.13) #8
  %284 = icmp eq i32 %283, 0
  br label %285

285:                                              ; preds = %282, %277
  %286 = phi i1 [ true, %277 ], [ %284, %282 ]
  %287 = load i16, ptr %48, align 2, !tbaa !67
  %288 = icmp eq i16 %287, 3
  br i1 %288, label %289, label %446

289:                                              ; preds = %285
  %290 = call ptr @filelist_getimage(ptr noundef %41, i32 noundef %228) #7
  %291 = icmp eq ptr %290, null
  br i1 %291, label %292, label %294

292:                                              ; preds = %289
  %293 = call ptr @filelist_geticon(ptr noundef %41, i32 noundef %228) #7
  br label %294

294:                                              ; preds = %292, %289
  %295 = phi ptr [ %290, %289 ], [ %293, %292 ]
  %296 = load i32, ptr %34, align 4, !tbaa !77
  %297 = load i32, ptr %35, align 4, !tbaa !77
  br i1 %291, label %303, label %298

298:                                              ; preds = %294
  %299 = getelementptr inbounds %struct.direntry, ptr %241, i64 0, i32 4
  %300 = load i32, ptr %299, align 8, !tbaa !94
  %301 = and i32 %300, 16
  %302 = icmp ne i32 %301, 0
  br label %303

303:                                              ; preds = %298, %294
  %304 = phi i1 [ false, %294 ], [ %302, %298 ]
  %305 = icmp eq ptr %295, null
  br i1 %305, label %518, label %306

306:                                              ; preds = %303
  %307 = getelementptr inbounds %struct.ImBuf, ptr %295, i64 0, i32 2
  %308 = load i32, ptr %307, align 8, !tbaa !95
  %309 = sitofp i32 %308 to float
  %310 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !98
  %311 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !99
  %312 = sitofp i32 %311 to float
  %313 = fmul float %310, %312
  %314 = fdiv float %313, 7.200000e+01
  %315 = fmul float %314, %309
  %316 = load i32, ptr %38, align 4, !tbaa !100
  %317 = sitofp i32 %316 to float
  %318 = fcmp ogt float %315, %317
  br i1 %318, label %327, label %319

319:                                              ; preds = %306
  %320 = getelementptr inbounds %struct.ImBuf, ptr %295, i64 0, i32 3
  %321 = load i32, ptr %320, align 4, !tbaa !101
  %322 = sitofp i32 %321 to float
  %323 = fmul float %314, %322
  %324 = load i32, ptr %163, align 4, !tbaa !102
  %325 = sitofp i32 %324 to float
  %326 = fcmp ogt float %323, %325
  br i1 %326, label %327, label %343

327:                                              ; preds = %319, %306
  %328 = getelementptr inbounds %struct.ImBuf, ptr %295, i64 0, i32 3
  %329 = load i32, ptr %328, align 4, !tbaa !101
  %330 = icmp sgt i32 %308, %329
  br i1 %330, label %331, label %336

331:                                              ; preds = %327
  %332 = sitofp i32 %329 to float
  %333 = fdiv float %332, %309
  %334 = fmul float %333, %317
  %335 = fdiv float %317, %309
  br label %343

336:                                              ; preds = %327
  %337 = load i32, ptr %164, align 4, !tbaa !102
  %338 = sitofp i32 %337 to float
  %339 = sitofp i32 %329 to float
  %340 = fdiv float %309, %339
  %341 = fmul float %340, %338
  %342 = fdiv float %338, %339
  br label %343

343:                                              ; preds = %336, %331, %319
  %344 = phi float [ %335, %331 ], [ %342, %336 ], [ %314, %319 ]
  %345 = phi float [ %334, %331 ], [ %338, %336 ], [ %323, %319 ]
  %346 = phi float [ %317, %331 ], [ %341, %336 ], [ %315, %319 ]
  %347 = fptosi float %346 to i32
  %348 = fptosi float %345 to i32
  %349 = sitofp i32 %347 to float
  %350 = fsub float %317, %349
  %351 = fmul float %350, 5.000000e-01
  %352 = load i32, ptr %165, align 4, !tbaa !102
  %353 = sitofp i32 %352 to float
  %354 = sitofp i32 %348 to float
  %355 = fsub float %353, %354
  %356 = fmul float %355, 5.000000e-01
  %357 = fadd float %351, 5.000000e-01
  %358 = load i32, ptr %166, align 4, !tbaa !103
  %359 = sitofp i32 %358 to float
  %360 = fadd float %357, %359
  %361 = fadd float %356, 5.000000e-01
  %362 = load i32, ptr %167, align 4, !tbaa !104
  %363 = sitofp i32 %362 to float
  %364 = fsub float %361, %363
  %365 = fptosi float %360 to i32
  %366 = add nsw i32 %296, %365
  %367 = sub nsw i32 %297, %352
  %368 = fptosi float %364 to i32
  %369 = add nsw i32 %367, %368
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #7
  br i1 %304, label %370, label %377

370:                                              ; preds = %343
  %371 = sitofp i32 %366 to float
  %372 = sitofp i32 %369 to float
  %373 = add nsw i32 %366, %347
  %374 = sitofp i32 %373 to float
  %375 = add nsw i32 %369, %348
  %376 = sitofp i32 %375 to float
  call void @uiDrawBoxShadow(i8 noundef zeroext -36, float noundef %371, float noundef %372, float noundef %374, float noundef %376) #7
  br label %377

377:                                              ; preds = %370, %343
  call void @glEnable(i32 noundef 3042) #7
  call void @glColor4f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #7
  %378 = sitofp i32 %366 to float
  %379 = sitofp i32 %369 to float
  %380 = load i32, ptr %307, align 8, !tbaa !95
  %381 = getelementptr inbounds %struct.ImBuf, ptr %295, i64 0, i32 3
  %382 = load i32, ptr %381, align 4, !tbaa !101
  %383 = getelementptr inbounds %struct.ImBuf, ptr %295, i64 0, i32 8
  %384 = load ptr, ptr %383, align 8, !tbaa !105
  call void @glaDrawPixelsTexScaled(float noundef %378, float noundef %379, i32 noundef %380, i32 noundef %382, i32 noundef 6408, i32 noundef 5121, i32 noundef 9728, ptr noundef %384, float noundef %344, float noundef %344) #7
  br i1 %304, label %385, label %390

385:                                              ; preds = %377
  call void @glColor4f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0x3FD99999A0000000) #7
  %386 = add nsw i32 %366, %347
  %387 = sitofp i32 %386 to float
  %388 = add nsw i32 %369, %348
  %389 = sitofp i32 %388 to float
  call void @fdrawbox(float noundef %378, float noundef %379, float noundef %387, float noundef %389) #7
  br label %390

390:                                              ; preds = %385, %377
  br i1 %286, label %445, label %391

391:                                              ; preds = %390
  %392 = trunc i32 %347 to i16
  %393 = trunc i32 %348 to i16
  %394 = call ptr @uiDefBut(ptr noundef %42, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef %366, i32 noundef %369, i16 noundef signext %392, i16 noundef signext %393, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.1) #7
  %395 = getelementptr inbounds %struct.direntry, ptr %241, i64 0, i32 2
  %396 = load ptr, ptr %395, align 8, !tbaa !106
  %397 = load i32, ptr %241, align 8, !tbaa !107
  %398 = and i32 %397, 61440
  %399 = icmp eq i32 %398, 16384
  br i1 %399, label %400, label %413

400:                                              ; preds = %391
  %401 = load ptr, ptr %278, align 8, !tbaa !93
  %402 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %401, ptr noundef nonnull dereferenceable(3) @.str.12) #8
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %443, label %404

404:                                              ; preds = %400
  %405 = getelementptr inbounds %struct.direntry, ptr %241, i64 0, i32 4
  %406 = load i32, ptr %405, align 8, !tbaa !94
  %407 = and i32 %406, 32768
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %409, label %443

409:                                              ; preds = %404
  %410 = and i32 %406, 4
  %411 = icmp eq i32 %410, 0
  %412 = select i1 %411, i32 693, i32 695
  br label %443

413:                                              ; preds = %391
  %414 = getelementptr inbounds %struct.direntry, ptr %241, i64 0, i32 4
  %415 = load i32, ptr %414, align 8, !tbaa !94
  %416 = and i32 %415, 4
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %418, label %443

418:                                              ; preds = %413
  %419 = and i32 %415, 8
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %421, label %443

421:                                              ; preds = %418
  %422 = and i32 %415, 16
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %424, label %443

424:                                              ; preds = %421
  %425 = and i32 %415, 32
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %427, label %443

427:                                              ; preds = %424
  %428 = and i32 %415, 64
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %430, label %443

430:                                              ; preds = %427
  %431 = and i32 %415, 256
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %433, label %443

433:                                              ; preds = %430
  %434 = and i32 %415, 128
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %436, label %443

436:                                              ; preds = %433
  %437 = and i32 %415, 12288
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %439, label %443

439:                                              ; preds = %436
  %440 = and i32 %415, 512
  %441 = icmp eq i32 %440, 0
  %442 = select i1 %441, i32 694, i32 701
  br label %443

443:                                              ; preds = %400, %404, %409, %413, %418, %421, %424, %427, %430, %433, %436, %439
  %444 = phi i32 [ 691, %400 ], [ 180, %404 ], [ %412, %409 ], [ 695, %413 ], [ 726, %418 ], [ 696, %421 ], [ 697, %424 ], [ 698, %427 ], [ 699, %430 ], [ 700, %433 ], [ 694, %436 ], [ %442, %439 ]
  call void @uiButSetDragImage(ptr noundef %394, ptr noundef %396, i32 noundef %444, ptr noundef nonnull %295, float noundef %344) #7
  br label %445

445:                                              ; preds = %443, %390
  call void @glDisable(i32 noundef 3042) #7
  br label %518

446:                                              ; preds = %285
  %447 = getelementptr inbounds %struct.direntry, ptr %241, i64 0, i32 2
  %448 = load ptr, ptr %447, align 8, !tbaa !106
  %449 = load i32, ptr %34, align 4, !tbaa !77
  %450 = load i32, ptr %35, align 4, !tbaa !77
  %451 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !47
  %452 = sdiv i16 %451, -6
  %453 = load i32, ptr %241, align 8, !tbaa !107
  %454 = and i32 %453, 61440
  %455 = icmp eq i32 %454, 16384
  br i1 %455, label %456, label %466

456:                                              ; preds = %446
  br i1 %281, label %496, label %457

457:                                              ; preds = %456
  %458 = getelementptr inbounds %struct.direntry, ptr %241, i64 0, i32 4
  %459 = load i32, ptr %458, align 8, !tbaa !94
  %460 = and i32 %459, 32768
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %462, label %496

462:                                              ; preds = %457
  %463 = and i32 %459, 4
  %464 = icmp eq i32 %463, 0
  %465 = select i1 %464, i32 693, i32 695
  br label %496

466:                                              ; preds = %446
  %467 = getelementptr inbounds %struct.direntry, ptr %241, i64 0, i32 4
  %468 = load i32, ptr %467, align 8, !tbaa !94
  %469 = and i32 %468, 4
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %471, label %496

471:                                              ; preds = %466
  %472 = and i32 %468, 8
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %474, label %496

474:                                              ; preds = %471
  %475 = and i32 %468, 16
  %476 = icmp eq i32 %475, 0
  br i1 %476, label %477, label %496

477:                                              ; preds = %474
  %478 = and i32 %468, 32
  %479 = icmp eq i32 %478, 0
  br i1 %479, label %480, label %496

480:                                              ; preds = %477
  %481 = and i32 %468, 64
  %482 = icmp eq i32 %481, 0
  br i1 %482, label %483, label %496

483:                                              ; preds = %480
  %484 = and i32 %468, 256
  %485 = icmp eq i32 %484, 0
  br i1 %485, label %486, label %496

486:                                              ; preds = %483
  %487 = and i32 %468, 128
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %489, label %496

489:                                              ; preds = %486
  %490 = and i32 %468, 12288
  %491 = icmp eq i32 %490, 0
  br i1 %491, label %492, label %496

492:                                              ; preds = %489
  %493 = and i32 %468, 512
  %494 = icmp eq i32 %493, 0
  %495 = select i1 %494, i32 694, i32 701
  br label %496

496:                                              ; preds = %456, %457, %462, %466, %471, %474, %477, %480, %483, %486, %489, %492
  %497 = phi i32 [ 691, %456 ], [ 180, %457 ], [ %465, %462 ], [ 695, %466 ], [ 726, %471 ], [ 696, %474 ], [ 697, %477 ], [ 698, %480 ], [ 699, %483 ], [ 700, %486 ], [ 694, %489 ], [ %495, %492 ]
  %498 = sitofp i16 %451 to float
  %499 = fmul float %498, 0x3FE99999A0000000
  %500 = fptosi float %499 to i32
  %501 = sext i16 %452 to i32
  %502 = add i32 %450, %501
  %503 = sub i32 %502, %500
  %504 = trunc i32 %500 to i16
  %505 = call ptr @uiDefIconBut(ptr noundef %42, i32 noundef 5120, i32 noundef 0, i32 noundef %497, i32 noundef %449, i32 noundef %503, i16 noundef signext %504, i16 noundef signext %504, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.1) #7
  br i1 %286, label %507, label %506

506:                                              ; preds = %496
  call void @uiButSetDragPath(ptr noundef %505, ptr noundef %448) #7
  br label %507

507:                                              ; preds = %496, %506
  %508 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !47
  %509 = sitofp i16 %508 to float
  %510 = fmul float %509, 0x3FE99999A0000000
  %511 = fptosi float %510 to i32
  %512 = sitofp i32 %511 to float
  %513 = call float @llvm.fmuladd.f32(float %509, float 0x3FC99999A0000000, float %512)
  %514 = load i32, ptr %34, align 4, !tbaa !77
  %515 = sitofp i32 %514 to float
  %516 = fadd float %513, %515
  %517 = fptosi float %516 to i32
  store i32 %517, ptr %34, align 4, !tbaa !77
  br label %518

518:                                              ; preds = %445, %303, %507
  call void @UI_ThemeColor4(i32 noundef 3) #7
  %519 = load i32, ptr %242, align 8, !tbaa !87
  %520 = and i32 %519, 16
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %540, label %522

522:                                              ; preds = %518
  %523 = load i32, ptr %34, align 4, !tbaa !77
  %524 = load i32, ptr %35, align 4, !tbaa !77
  %525 = load i32, ptr %168, align 4, !tbaa !70
  %526 = sub nsw i32 %524, %525
  %527 = sitofp i32 %526 to float
  %528 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !47
  %529 = sitofp i16 %528 to float
  %530 = call float @llvm.fmuladd.f32(float %529, float 0xBFC3333340000000, float %527)
  %531 = fptosi float %530 to i32
  %532 = load ptr, ptr %171, align 8, !tbaa !57
  %533 = getelementptr inbounds %struct.FileSelectParams, ptr %532, i64 0, i32 4
  %534 = call ptr @uiDefBut(ptr noundef %42, i32 noundef 3072, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef %523, i32 noundef %531, i16 noundef signext %169, i16 noundef signext %170, ptr noundef nonnull %533, float noundef 1.000000e+00, float noundef 2.560000e+02, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.1) #7
  call void @uiButSetRenameFunc(ptr noundef %534, ptr noundef nonnull @renamebutton_cb, ptr noundef %241) #7
  call void @uiButSetFlag(ptr noundef %534, i32 noundef 2097152) #7
  call void @uiButClearFlag(ptr noundef %534, i32 noundef 524288) #7
  %535 = call zeroext i8 @uiButActiveOnly(ptr noundef %0, ptr noundef %1, ptr noundef %42, ptr noundef %534) #7
  %536 = icmp eq i8 %535, 0
  br i1 %536, label %537, label %540

537:                                              ; preds = %522
  %538 = load i32, ptr %242, align 8, !tbaa !87
  %539 = and i32 %538, -17
  store i32 %539, ptr %242, align 8, !tbaa !87
  br label %540

540:                                              ; preds = %522, %537, %518
  %541 = load i32, ptr %242, align 8, !tbaa !87
  %542 = and i32 %541, 16
  %543 = icmp eq i32 %542, 0
  br i1 %543, label %544, label %566

544:                                              ; preds = %540
  %545 = load i16, ptr %48, align 2, !tbaa !67
  %546 = icmp eq i16 %545, 3
  %547 = load i32, ptr %35, align 4, !tbaa !77
  br i1 %546, label %548, label %553

548:                                              ; preds = %544
  %549 = load i32, ptr %172, align 4, !tbaa !70
  %550 = sub i32 %547, %549
  %551 = load i32, ptr %144, align 4, !tbaa !85
  %552 = add nsw i32 %550, %551
  br label %553

553:                                              ; preds = %544, %548
  %554 = phi i32 [ %552, %548 ], [ %547, %544 ]
  %555 = load i32, ptr %34, align 4, !tbaa !77
  %556 = add nsw i32 %555, 1
  %557 = load ptr, ptr %278, align 8, !tbaa !93
  %558 = call ptr @UI_GetStyle() #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %27) #7
  %559 = getelementptr inbounds %struct.uiStyle, ptr %558, i64 0, i32 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(32) %559, i64 32, i1 false), !tbaa.struct !108
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %28) #7
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %29) #7
  store i16 %151, ptr %174, align 2, !tbaa !110
  %560 = call ptr @BLI_strncpy(ptr noundef nonnull %29, ptr noundef %557, i64 noundef 256) #7
  %561 = call float @file_shorten_string(ptr noundef nonnull %29, float noundef %175, i32 noundef 0) #7
  store i32 %556, ptr %28, align 4, !tbaa !112
  %562 = sitofp i32 %556 to double
  %563 = fadd double %178, %562
  %564 = fptosi double %563 to i32
  store i32 %564, ptr %179, align 4, !tbaa !113
  %565 = sub nsw i32 %554, %150
  store i32 %565, ptr %180, align 4, !tbaa !114
  store i32 %554, ptr %181, align 4, !tbaa !115
  call void @uiStyleFontDraw(ptr noundef nonnull %27, ptr noundef nonnull %28, ptr noundef nonnull %29) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %29) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %28) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %27) #7
  br label %566

566:                                              ; preds = %553, %540
  %567 = load i16, ptr %48, align 2, !tbaa !67
  switch i16 %567, label %760 [
    i16 1, label %568
    i16 2, label %599
  ]

568:                                              ; preds = %566
  %569 = load float, ptr %220, align 4, !tbaa !84
  %570 = fptosi float %569 to i32
  %571 = add nsw i32 %570, %46
  %572 = load i32, ptr %34, align 4, !tbaa !77
  %573 = add nsw i32 %571, %572
  store i32 %573, ptr %34, align 4, !tbaa !77
  %574 = load i32, ptr %241, align 8, !tbaa !107
  %575 = and i32 %574, 61440
  %576 = icmp eq i32 %575, 16384
  br i1 %576, label %760, label %577

577:                                              ; preds = %568
  %578 = load i32, ptr %35, align 4, !tbaa !77
  %579 = getelementptr inbounds %struct.direntry, ptr %241, i64 0, i32 5
  %580 = load float, ptr %221, align 4, !tbaa !84
  %581 = load i32, ptr %222, align 4, !tbaa !70
  %582 = call ptr @UI_GetStyle() #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %24) #7
  %583 = getelementptr inbounds %struct.uiStyle, ptr %582, i64 0, i32 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(32) %583, i64 32, i1 false), !tbaa.struct !108
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %25) #7
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %26) #7
  store i16 %151, ptr %223, align 2, !tbaa !110
  %584 = call ptr @BLI_strncpy(ptr noundef nonnull %26, ptr noundef nonnull %579, i64 noundef 256) #7
  %585 = fadd float %580, 1.000000e+00
  %586 = call float @file_shorten_string(ptr noundef nonnull %26, float noundef %585, i32 noundef 0) #7
  store i32 %573, ptr %25, align 4, !tbaa !112
  %587 = sitofp i32 %573 to double
  %588 = fadd float %580, 4.000000e+00
  %589 = call float @llvm.ceil.f32(float %588)
  %590 = fpext float %589 to double
  %591 = fadd double %587, %590
  %592 = fptosi double %591 to i32
  store i32 %592, ptr %224, align 4, !tbaa !113
  %593 = sub nsw i32 %578, %581
  store i32 %593, ptr %225, align 4, !tbaa !114
  store i32 %578, ptr %226, align 4, !tbaa !115
  call void @uiStyleFontDraw(ptr noundef nonnull %24, ptr noundef nonnull %25, ptr noundef nonnull %26) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %26) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %25) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %24) #7
  %594 = load float, ptr %221, align 4, !tbaa !84
  %595 = fptosi float %594 to i32
  %596 = add nsw i32 %595, %46
  %597 = load i32, ptr %34, align 4, !tbaa !77
  %598 = add nsw i32 %596, %597
  store i32 %598, ptr %34, align 4, !tbaa !77
  br label %760

599:                                              ; preds = %566
  %600 = load float, ptr %182, align 4, !tbaa !84
  %601 = fptosi float %600 to i32
  %602 = add nsw i32 %601, %46
  %603 = load i32, ptr %34, align 4, !tbaa !77
  %604 = add nsw i32 %602, %603
  store i32 %604, ptr %34, align 4, !tbaa !77
  %605 = load i32, ptr %35, align 4, !tbaa !77
  %606 = getelementptr inbounds %struct.direntry, ptr %241, i64 0, i32 6
  %607 = load float, ptr %183, align 4, !tbaa !84
  %608 = load i32, ptr %184, align 4, !tbaa !70
  %609 = call ptr @UI_GetStyle() #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %21) #7
  %610 = getelementptr inbounds %struct.uiStyle, ptr %609, i64 0, i32 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(32) %610, i64 32, i1 false), !tbaa.struct !108
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %22) #7
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %23) #7
  store i16 %151, ptr %185, align 2, !tbaa !110
  %611 = call ptr @BLI_strncpy(ptr noundef nonnull %23, ptr noundef nonnull %606, i64 noundef 256) #7
  %612 = fadd float %607, 1.000000e+00
  %613 = call float @file_shorten_string(ptr noundef nonnull %23, float noundef %612, i32 noundef 0) #7
  store i32 %604, ptr %22, align 4, !tbaa !112
  %614 = sitofp i32 %604 to double
  %615 = fadd float %607, 4.000000e+00
  %616 = call float @llvm.ceil.f32(float %615)
  %617 = fpext float %616 to double
  %618 = fadd double %614, %617
  %619 = fptosi double %618 to i32
  store i32 %619, ptr %186, align 4, !tbaa !113
  %620 = sub nsw i32 %605, %608
  store i32 %620, ptr %187, align 4, !tbaa !114
  store i32 %605, ptr %188, align 4, !tbaa !115
  call void @uiStyleFontDraw(ptr noundef nonnull %21, ptr noundef nonnull %22, ptr noundef nonnull %23) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %23) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %22) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %21) #7
  %621 = load float, ptr %183, align 4, !tbaa !84
  %622 = fadd float %621, %189
  %623 = load i32, ptr %34, align 4, !tbaa !77
  %624 = sitofp i32 %623 to float
  %625 = fadd float %622, %624
  %626 = fptosi float %625 to i32
  store i32 %626, ptr %34, align 4, !tbaa !77
  %627 = load i32, ptr %35, align 4, !tbaa !77
  %628 = getelementptr inbounds %struct.direntry, ptr %241, i64 0, i32 7
  %629 = load float, ptr %190, align 4, !tbaa !84
  %630 = load i32, ptr %184, align 4, !tbaa !70
  %631 = call ptr @UI_GetStyle() #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %18) #7
  %632 = getelementptr inbounds %struct.uiStyle, ptr %631, i64 0, i32 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %632, i64 32, i1 false), !tbaa.struct !108
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %19) #7
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %20) #7
  store i16 %151, ptr %191, align 2, !tbaa !110
  %633 = call ptr @BLI_strncpy(ptr noundef nonnull %20, ptr noundef nonnull %628, i64 noundef 256) #7
  %634 = fadd float %629, 1.000000e+00
  %635 = call float @file_shorten_string(ptr noundef nonnull %20, float noundef %634, i32 noundef 0) #7
  store i32 %626, ptr %19, align 4, !tbaa !112
  %636 = sitofp i32 %626 to double
  %637 = fadd float %629, 4.000000e+00
  %638 = call float @llvm.ceil.f32(float %637)
  %639 = fpext float %638 to double
  %640 = fadd double %636, %639
  %641 = fptosi double %640 to i32
  store i32 %641, ptr %192, align 4, !tbaa !113
  %642 = sub nsw i32 %627, %630
  store i32 %642, ptr %193, align 4, !tbaa !114
  store i32 %627, ptr %194, align 4, !tbaa !115
  call void @uiStyleFontDraw(ptr noundef nonnull %18, ptr noundef nonnull %19, ptr noundef nonnull %20) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %20) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %19) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %18) #7
  %643 = load float, ptr %190, align 4, !tbaa !84
  %644 = fadd float %643, %189
  %645 = load i32, ptr %34, align 4, !tbaa !77
  %646 = sitofp i32 %645 to float
  %647 = fadd float %644, %646
  %648 = fptosi float %647 to i32
  store i32 %648, ptr %34, align 4, !tbaa !77
  %649 = load i32, ptr %35, align 4, !tbaa !77
  %650 = getelementptr inbounds %struct.direntry, ptr %241, i64 0, i32 8
  %651 = load float, ptr %195, align 4, !tbaa !84
  %652 = load i32, ptr %184, align 4, !tbaa !70
  %653 = call ptr @UI_GetStyle() #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %15) #7
  %654 = getelementptr inbounds %struct.uiStyle, ptr %653, i64 0, i32 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %654, i64 32, i1 false), !tbaa.struct !108
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #7
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %17) #7
  store i16 %151, ptr %196, align 2, !tbaa !110
  %655 = call ptr @BLI_strncpy(ptr noundef nonnull %17, ptr noundef nonnull %650, i64 noundef 256) #7
  %656 = fadd float %651, 1.000000e+00
  %657 = call float @file_shorten_string(ptr noundef nonnull %17, float noundef %656, i32 noundef 0) #7
  store i32 %648, ptr %16, align 4, !tbaa !112
  %658 = sitofp i32 %648 to double
  %659 = fadd float %651, 4.000000e+00
  %660 = call float @llvm.ceil.f32(float %659)
  %661 = fpext float %660 to double
  %662 = fadd double %658, %661
  %663 = fptosi double %662 to i32
  store i32 %663, ptr %197, align 4, !tbaa !113
  %664 = sub nsw i32 %649, %652
  store i32 %664, ptr %198, align 4, !tbaa !114
  store i32 %649, ptr %199, align 4, !tbaa !115
  call void @uiStyleFontDraw(ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef nonnull %17) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %17) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #7
  %665 = load float, ptr %195, align 4, !tbaa !84
  %666 = fadd float %665, %189
  %667 = load i32, ptr %34, align 4, !tbaa !77
  %668 = sitofp i32 %667 to float
  %669 = fadd float %666, %668
  %670 = fptosi float %669 to i32
  store i32 %670, ptr %34, align 4, !tbaa !77
  %671 = load i32, ptr %35, align 4, !tbaa !77
  %672 = getelementptr inbounds %struct.direntry, ptr %241, i64 0, i32 9
  %673 = load float, ptr %200, align 4, !tbaa !84
  %674 = load i32, ptr %184, align 4, !tbaa !70
  %675 = call ptr @UI_GetStyle() #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #7
  %676 = getelementptr inbounds %struct.uiStyle, ptr %675, i64 0, i32 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %676, i64 32, i1 false), !tbaa.struct !108
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #7
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %14) #7
  store i16 %151, ptr %201, align 2, !tbaa !110
  %677 = call ptr @BLI_strncpy(ptr noundef nonnull %14, ptr noundef nonnull %672, i64 noundef 256) #7
  %678 = fadd float %673, 1.000000e+00
  %679 = call float @file_shorten_string(ptr noundef nonnull %14, float noundef %678, i32 noundef 0) #7
  store i32 %670, ptr %13, align 4, !tbaa !112
  %680 = sitofp i32 %670 to double
  %681 = fadd float %673, 4.000000e+00
  %682 = call float @llvm.ceil.f32(float %681)
  %683 = fpext float %682 to double
  %684 = fadd double %680, %683
  %685 = fptosi double %684 to i32
  store i32 %685, ptr %202, align 4, !tbaa !113
  %686 = sub nsw i32 %671, %674
  store i32 %686, ptr %203, align 4, !tbaa !114
  store i32 %671, ptr %204, align 4, !tbaa !115
  call void @uiStyleFontDraw(ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %14) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #7
  %687 = load float, ptr %200, align 4, !tbaa !84
  %688 = fadd float %687, %189
  %689 = load i32, ptr %34, align 4, !tbaa !77
  %690 = sitofp i32 %689 to float
  %691 = fadd float %688, %690
  %692 = fptosi float %691 to i32
  store i32 %692, ptr %34, align 4, !tbaa !77
  %693 = load i32, ptr %35, align 4, !tbaa !77
  %694 = getelementptr inbounds %struct.direntry, ptr %241, i64 0, i32 11
  %695 = load float, ptr %205, align 4, !tbaa !84
  %696 = load i32, ptr %184, align 4, !tbaa !70
  %697 = call ptr @UI_GetStyle() #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #7
  %698 = getelementptr inbounds %struct.uiStyle, ptr %697, i64 0, i32 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %698, i64 32, i1 false), !tbaa.struct !108
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #7
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %11) #7
  store i16 %151, ptr %206, align 2, !tbaa !110
  %699 = call ptr @BLI_strncpy(ptr noundef nonnull %11, ptr noundef nonnull %694, i64 noundef 256) #7
  %700 = fadd float %695, 1.000000e+00
  %701 = call float @file_shorten_string(ptr noundef nonnull %11, float noundef %700, i32 noundef 0) #7
  store i32 %692, ptr %10, align 4, !tbaa !112
  %702 = sitofp i32 %692 to double
  %703 = fadd float %695, 4.000000e+00
  %704 = call float @llvm.ceil.f32(float %703)
  %705 = fpext float %704 to double
  %706 = fadd double %702, %705
  %707 = fptosi double %706 to i32
  store i32 %707, ptr %207, align 4, !tbaa !113
  %708 = sub nsw i32 %693, %696
  store i32 %708, ptr %208, align 4, !tbaa !114
  store i32 %693, ptr %209, align 4, !tbaa !115
  call void @uiStyleFontDraw(ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #7
  %709 = load float, ptr %205, align 4, !tbaa !84
  %710 = fptosi float %709 to i32
  %711 = add nsw i32 %710, %46
  %712 = load i32, ptr %34, align 4, !tbaa !77
  %713 = add nsw i32 %711, %712
  store i32 %713, ptr %34, align 4, !tbaa !77
  %714 = load i32, ptr %35, align 4, !tbaa !77
  %715 = getelementptr inbounds %struct.direntry, ptr %241, i64 0, i32 10
  %716 = load float, ptr %210, align 4, !tbaa !84
  %717 = load i32, ptr %184, align 4, !tbaa !70
  %718 = call ptr @UI_GetStyle() #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #7
  %719 = getelementptr inbounds %struct.uiStyle, ptr %718, i64 0, i32 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %719, i64 32, i1 false), !tbaa.struct !108
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %8) #7
  store i16 %151, ptr %211, align 2, !tbaa !110
  %720 = call ptr @BLI_strncpy(ptr noundef nonnull %8, ptr noundef nonnull %715, i64 noundef 256) #7
  %721 = fadd float %716, 1.000000e+00
  %722 = call float @file_shorten_string(ptr noundef nonnull %8, float noundef %721, i32 noundef 0) #7
  store i32 %713, ptr %7, align 4, !tbaa !112
  %723 = sitofp i32 %713 to double
  %724 = fadd float %716, 4.000000e+00
  %725 = call float @llvm.ceil.f32(float %724)
  %726 = fpext float %725 to double
  %727 = fadd double %723, %726
  %728 = fptosi double %727 to i32
  store i32 %728, ptr %212, align 4, !tbaa !113
  %729 = sub nsw i32 %714, %717
  store i32 %729, ptr %213, align 4, !tbaa !114
  store i32 %714, ptr %214, align 4, !tbaa !115
  call void @uiStyleFontDraw(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #7
  %730 = load float, ptr %210, align 4, !tbaa !84
  %731 = fptosi float %730 to i32
  %732 = add nsw i32 %731, %46
  %733 = load i32, ptr %34, align 4, !tbaa !77
  %734 = add nsw i32 %732, %733
  store i32 %734, ptr %34, align 4, !tbaa !77
  %735 = load i32, ptr %241, align 8, !tbaa !107
  %736 = and i32 %735, 61440
  %737 = icmp eq i32 %736, 16384
  br i1 %737, label %760, label %738

738:                                              ; preds = %599
  %739 = load i32, ptr %35, align 4, !tbaa !77
  %740 = getelementptr inbounds %struct.direntry, ptr %241, i64 0, i32 5
  %741 = load float, ptr %215, align 4, !tbaa !84
  %742 = load i32, ptr %184, align 4, !tbaa !70
  %743 = call ptr @UI_GetStyle() #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #7
  %744 = getelementptr inbounds %struct.uiStyle, ptr %743, i64 0, i32 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %744, i64 32, i1 false), !tbaa.struct !108
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #7
  store i16 %151, ptr %216, align 2, !tbaa !110
  %745 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef nonnull %740, i64 noundef 256) #7
  %746 = fadd float %741, 1.000000e+00
  %747 = call float @file_shorten_string(ptr noundef nonnull %5, float noundef %746, i32 noundef 0) #7
  store i32 %734, ptr %4, align 4, !tbaa !112
  %748 = sitofp i32 %734 to double
  %749 = fadd float %741, 4.000000e+00
  %750 = call float @llvm.ceil.f32(float %749)
  %751 = fpext float %750 to double
  %752 = fadd double %748, %751
  %753 = fptosi double %752 to i32
  store i32 %753, ptr %217, align 4, !tbaa !113
  %754 = sub nsw i32 %739, %742
  store i32 %754, ptr %218, align 4, !tbaa !114
  store i32 %739, ptr %219, align 4, !tbaa !115
  call void @uiStyleFontDraw(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #7
  %755 = load float, ptr %215, align 4, !tbaa !84
  %756 = fptosi float %755 to i32
  %757 = add nsw i32 %756, %46
  %758 = load i32, ptr %34, align 4, !tbaa !77
  %759 = add nsw i32 %757, %758
  store i32 %759, ptr %34, align 4, !tbaa !77
  br label %760

760:                                              ; preds = %566, %577, %568, %599, %738
  %761 = add nuw i32 %228, 1
  %762 = icmp eq i32 %761, %155
  br i1 %762, label %763, label %227, !llvm.loop !116

763:                                              ; preds = %760, %142
  call void @uiEndBlock(ptr noundef %0, ptr noundef %42) #7
  call void @uiDrawBlock(ptr noundef %0, ptr noundef %42) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %35) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %34) #7
  ret void
}

declare ptr @ED_fileselect_get_layout(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @filelist_numfiles(ptr noundef) local_unnamed_addr #2

declare i32 @ED_fileselect_layout_offset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ED_fileselect_layout_numfiles(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_fileselect_layout_tilepos(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

declare ptr @filelist_file(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @UI_ThemeColor4(i32 noundef) local_unnamed_addr #2

declare void @uiSetRoundBox(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

declare ptr @filelist_getimage(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @filelist_geticon(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @uiButSetRenameFunc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @renamebutton_cb(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 {
  %4 = alloca [1036 x i8], align 16
  %5 = alloca [1036 x i8], align 16
  %6 = alloca [1036 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1036, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 1036, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 1036, ptr nonnull %6) #7
  %7 = tail call ptr @CTX_wm_manager(ptr noundef %0) #7
  %8 = tail call ptr @CTX_wm_space_data(ptr noundef %0) #7
  %9 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  %10 = load ptr, ptr @G, align 8, !tbaa !117
  %11 = getelementptr inbounds %struct.Main, ptr %10, i64 0, i32 2
  %12 = getelementptr inbounds %struct.SpaceFile, ptr %8, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !57
  %14 = getelementptr inbounds %struct.FileSelectParams, ptr %13, i64 0, i32 1
  call void @BLI_make_file_string(ptr noundef nonnull %11, ptr noundef nonnull %5, ptr noundef nonnull %14, ptr noundef %2) #7
  %15 = load ptr, ptr %12, align 8, !tbaa !57
  %16 = getelementptr inbounds %struct.FileSelectParams, ptr %15, i64 0, i32 4
  %17 = call ptr @BLI_strncpy(ptr noundef nonnull %6, ptr noundef nonnull %16, i64 noundef 1036) #7
  %18 = load ptr, ptr @G, align 8, !tbaa !117
  %19 = getelementptr inbounds %struct.Main, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %12, align 8, !tbaa !57
  %21 = getelementptr inbounds %struct.FileSelectParams, ptr %20, i64 0, i32 1
  call void @BLI_make_file_string(ptr noundef nonnull %19, ptr noundef nonnull %4, ptr noundef nonnull %21, ptr noundef nonnull %6) #7
  %22 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %4) #8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %3
  %25 = call i32 @BLI_exists(ptr noundef nonnull %4) #7
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call i32 @BLI_rename(ptr noundef nonnull %5, ptr noundef nonnull %4) #7
  call void @ED_fileselect_clear(ptr noundef %7, ptr noundef %8) #7
  br label %29

29:                                               ; preds = %27, %24
  call void @ED_region_tag_redraw(ptr noundef %9) #7
  br label %30

30:                                               ; preds = %29, %3
  call void @llvm.lifetime.end.p0(i64 1036, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 1036, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 1036, ptr nonnull %4) #7
  ret void
}

declare zeroext i8 @uiButActiveOnly(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @UI_ThemeColorShade(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glRectf(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @UI_GetThemeColorShade3ubv(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @glBegin(i32 noundef) local_unnamed_addr #2

declare void @glColor3ubv(ptr noundef) local_unnamed_addr #2

declare void @glVertex2iv(ptr noundef) local_unnamed_addr #2

declare void @glEnd() local_unnamed_addr #2

declare void @uiRoundBox(float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @uiDrawBoxShadow(i8 noundef zeroext, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @glEnable(i32 noundef) local_unnamed_addr #2

declare void @glColor4f(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @glaDrawPixelsTexScaled(float noundef, float noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @fdrawbox(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @uiButSetDragImage(ptr noundef, ptr noundef, i32 noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare void @glDisable(i32 noundef) local_unnamed_addr #2

declare ptr @uiDefIconBut(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare void @uiButSetDragPath(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_space_data(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

declare void @BLI_make_file_string(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @BLI_exists(ptr noundef) local_unnamed_addr #2

declare i32 @BLI_rename(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_fileselect_clear(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #2

declare ptr @UI_GetStyle() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare float @file_shorten_string(ptr noundef, float noundef, i32 noundef) local_unnamed_addr #2

declare void @uiStyleFontDraw(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
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
!54 = distinct !{!54, !55, !56}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!"llvm.loop.unroll.disable"}
!57 = !{!58, !36, i64 40}
!58 = !{!"SpaceFile", !36, i64 0, !36, i64 8, !45, i64 16, !43, i64 32, !43, i64 36, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !44, i64 96, !44, i64 98, !44, i64 100, !44, i64 102}
!59 = !{!37, !37, i64 0}
!60 = !{!58, !36, i64 48}
!61 = !{!62, !44, i64 1998}
!62 = !{!"FileSelectParams", !37, i64 0, !37, i64 96, !37, i64 1152, !37, i64 1408, !37, i64 1664, !37, i64 1920, !43, i64 1984, !43, i64 1988, !43, i64 1992, !44, i64 1996, !44, i64 1998, !44, i64 2000, !44, i64 2002, !44, i64 2004, !44, i64 2006, !37, i64 2008}
!63 = !{!58, !36, i64 88}
!64 = !{!65, !43, i64 40}
!65 = !{!"FileLayout", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !43, i64 48, !43, i64 52, !43, i64 56, !37, i64 60}
!66 = !{!65, !43, i64 44}
!67 = !{!62, !44, i64 2002}
!68 = !{!65, !43, i64 32}
!69 = !{!39, !41, i64 28}
!70 = !{!65, !43, i64 12}
!71 = !{!65, !43, i64 20}
!72 = !{!39, !41, i64 16}
!73 = !{!39, !41, i64 20}
!74 = distinct !{!74, !55, !56}
!75 = !{!65, !43, i64 8}
!76 = !{!65, !43, i64 16}
!77 = !{!43, !43, i64 0}
!78 = !{!39, !41, i64 24}
!79 = !{!39, !41, i64 0}
!80 = distinct !{!80, !55, !56}
!81 = !{!35, !41, i64 32}
!82 = !{!35, !41, i64 44}
!83 = !{!65, !43, i64 48}
!84 = !{!41, !41, i64 0}
!85 = !{!65, !43, i64 56}
!86 = !{!39, !41, i64 12}
!87 = !{!88, !43, i64 280}
!88 = !{!"direntry", !43, i64 0, !36, i64 8, !36, i64 16, !89, i64 24, !43, i64 168, !37, i64 172, !37, i64 188, !37, i64 192, !37, i64 196, !37, i64 200, !37, i64 216, !37, i64 224, !37, i64 240, !36, i64 256, !43, i64 264, !36, i64 272, !43, i64 280}
!89 = !{!"stat", !90, i64 0, !90, i64 8, !90, i64 16, !43, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !90, i64 40, !90, i64 48, !90, i64 56, !90, i64 64, !91, i64 72, !91, i64 88, !91, i64 104, !37, i64 120}
!90 = !{!"long", !37, i64 0}
!91 = !{!"timespec", !90, i64 0, !90, i64 8}
!92 = !{!62, !43, i64 1984}
!93 = !{!88, !36, i64 8}
!94 = !{!88, !43, i64 168}
!95 = !{!96, !43, i64 16}
!96 = !{!"ImBuf", !36, i64 0, !36, i64 8, !43, i64 16, !43, i64 20, !37, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !36, i64 40, !36, i64 48, !37, i64 56, !43, i64 72, !43, i64 76, !43, i64 80, !43, i64 84, !36, i64 88, !36, i64 96, !36, i64 104, !41, i64 112, !37, i64 120, !43, i64 280, !43, i64 284, !43, i64 288, !43, i64 292, !36, i64 296, !36, i64 304, !43, i64 312, !37, i64 316, !37, i64 1340, !36, i64 2368, !43, i64 2376, !36, i64 2384, !43, i64 2392, !43, i64 2396, !36, i64 2400, !36, i64 2408, !36, i64 2416, !36, i64 2424, !43, i64 2432, !42, i64 2436, !97, i64 2456}
!97 = !{!"DDSData", !43, i64 0, !43, i64 4, !36, i64 8, !43, i64 16}
!98 = !{!48, !41, i64 10908}
!99 = !{!48, !43, i64 8524}
!100 = !{!65, !43, i64 0}
!101 = !{!96, !43, i64 20}
!102 = !{!65, !43, i64 4}
!103 = !{!65, !43, i64 24}
!104 = !{!65, !43, i64 28}
!105 = !{!96, !36, i64 40}
!106 = !{!88, !36, i64 16}
!107 = !{!88, !43, i64 0}
!108 = !{i64 0, i64 2, !109, i64 2, i64 2, !109, i64 4, i64 2, !109, i64 6, i64 6, !59, i64 12, i64 2, !109, i64 14, i64 2, !109, i64 16, i64 2, !109, i64 18, i64 2, !109, i64 20, i64 2, !109, i64 22, i64 2, !109, i64 24, i64 4, !84, i64 28, i64 4, !84}
!109 = !{!44, !44, i64 0}
!110 = !{!111, !44, i64 22}
!111 = !{!"uiFontStyle", !44, i64 0, !44, i64 2, !44, i64 4, !37, i64 6, !44, i64 12, !44, i64 14, !44, i64 16, !44, i64 18, !44, i64 20, !44, i64 22, !41, i64 24, !41, i64 28}
!112 = !{!42, !43, i64 0}
!113 = !{!42, !43, i64 4}
!114 = !{!42, !43, i64 8}
!115 = !{!42, !43, i64 12}
!116 = distinct !{!116, !55, !56}
!117 = !{!118, !36, i64 0}
!118 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !45, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !44, i64 2084, !44, i64 2086, !44, i64 2088, !37, i64 2090, !44, i64 2092, !43, i64 2096, !43, i64 2100, !37, i64 2104, !43, i64 2108, !43, i64 2112, !37, i64 2116}
