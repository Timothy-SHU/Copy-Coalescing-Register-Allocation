; ModuleID = 'blender/source/blender/editors/space_file/filesel.c'
source_filename = "blender/source/blender/editors/space_file/filesel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.SpaceFile = type { ptr, ptr, %struct.ListBase, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i16 }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.FileSelectParams = type { [96 x i8], [1056 x i8], [256 x i8], [256 x i8], [256 x i8], [64 x i8], i32, i32, i32, i16, i16, i16, i16, i16, i16, [8 x i8] }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.FileLayout = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x float] }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.uiStyle = type { ptr, ptr, [64 x i8], %struct.uiFontStyle, %struct.uiFontStyle, %struct.uiFontStyle, %struct.uiFontStyle, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.uiFontStyle = type { i16, i16, i16, [6 x i8], i16, i16, i16, i16, i16, i16, float, float }
%struct.direntry = type { i32, ptr, ptr, %struct.stat, i32, [16 x i8], [4 x i8], [4 x i8], [4 x i8], [16 x i8], [8 x i8], [16 x i8], [16 x i8], ptr, i32, ptr, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [14 x i8] c"fileselparams\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"files\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"filepath\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"directory\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"relative_path\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"filemode\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"filter_blender\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"filter_backup\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"filter_image\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"filter_movie\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"filter_python\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"filter_font\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"filter_sound\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"filter_text\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"filter_folder\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"filter_btx\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"filter_collada\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"filter_glob\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@.str.19 = private unnamed_addr constant [5 x i8] c"link\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"autoselect\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"active_layer\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"display_type\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"file_layout\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local ptr @ED_fileselect_get_params(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.SpaceFile, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call signext i16 @ED_fileselect_set_params(ptr noundef %0)
  br label %7

7:                                                ; preds = %5, %1
  %8 = load ptr, ptr %2, align 8, !tbaa !34
  ret ptr %8
}

; Function Attrs: nounwind uwtable
define dso_local noundef signext i16 @ED_fileselect_set_params(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca [1024 x i8], align 16
  %3 = getelementptr inbounds %struct.SpaceFile, ptr %0, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.SpaceFile, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !43
  %10 = tail call ptr %9(i64 noundef 2016, ptr noundef nonnull @.str) #9
  store ptr %10, ptr %5, align 8, !tbaa !34
  %11 = load ptr, ptr @G, align 8, !tbaa !44
  %12 = getelementptr inbounds %struct.Main, ptr %11, i64 0, i32 2
  %13 = getelementptr inbounds %struct.FileSelectParams, ptr %10, i64 0, i32 1
  %14 = getelementptr inbounds %struct.FileSelectParams, ptr %10, i64 0, i32 2
  tail call void @BLI_split_dirfile(ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14, i64 noundef 1056, i64 noundef 256) #9
  %15 = load ptr, ptr %5, align 8, !tbaa !34
  %16 = getelementptr inbounds %struct.FileSelectParams, ptr %15, i64 0, i32 5
  store i8 0, ptr %16, align 4, !tbaa !46
  br label %17

17:                                               ; preds = %8, %1
  %18 = load ptr, ptr %5, align 8, !tbaa !34
  %19 = icmp eq ptr %4, null
  br i1 %19, label %318, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.wmOperator, ptr %4, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !47
  %23 = tail call ptr @RNA_struct_find_property(ptr noundef %22, ptr noundef nonnull @.str.1) #9
  %24 = icmp eq ptr %23, null
  %25 = load ptr, ptr %21, align 8, !tbaa !47
  %26 = tail call ptr @RNA_struct_find_property(ptr noundef %25, ptr noundef nonnull @.str.2) #9
  %27 = icmp eq ptr %26, null
  %28 = load ptr, ptr %21, align 8, !tbaa !47
  %29 = tail call ptr @RNA_struct_find_property(ptr noundef %28, ptr noundef nonnull @.str.3) #9
  %30 = icmp eq ptr %29, null
  %31 = load ptr, ptr %21, align 8, !tbaa !47
  %32 = tail call ptr @RNA_struct_find_property(ptr noundef %31, ptr noundef nonnull @.str.4) #9
  %33 = icmp ne ptr %32, null
  %34 = load ptr, ptr %21, align 8, !tbaa !47
  %35 = tail call ptr @RNA_struct_find_property(ptr noundef %34, ptr noundef nonnull @.str.5) #9
  %36 = icmp eq ptr %35, null
  %37 = getelementptr inbounds %struct.wmOperator, ptr %4, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !49
  %39 = getelementptr inbounds %struct.wmOperatorType, ptr %38, i64 0, i32 11
  %40 = load ptr, ptr %39, align 8, !tbaa !50
  %41 = tail call ptr @RNA_struct_ui_name(ptr noundef %40) #9
  %42 = tail call ptr @BLI_strncpy_utf8(ptr noundef %18, ptr noundef %41, i64 noundef 96) #9
  %43 = load ptr, ptr %21, align 8, !tbaa !47
  %44 = tail call ptr @RNA_struct_find_property(ptr noundef %43, ptr noundef nonnull @.str.6) #9
  %45 = icmp eq ptr %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %20
  %47 = load ptr, ptr %21, align 8, !tbaa !47
  %48 = tail call i32 @RNA_int_get(ptr noundef %47, ptr noundef nonnull @.str.6) #9
  %49 = trunc i32 %48 to i16
  br label %50

50:                                               ; preds = %20, %46
  %51 = phi i16 [ %49, %46 ], [ 9, %20 ]
  %52 = getelementptr inbounds %struct.FileSelectParams, ptr %18, i64 0, i32 9
  store i16 %51, ptr %52, align 4, !tbaa !53
  br i1 %27, label %72, label %53

53:                                               ; preds = %50
  %54 = load ptr, ptr %21, align 8, !tbaa !47
  %55 = tail call zeroext i8 @RNA_struct_property_is_set_ex(ptr noundef %54, ptr noundef nonnull @.str.2, i8 noundef zeroext 0) #9
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %72, label %57

57:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %2) #9
  %58 = load ptr, ptr %21, align 8, !tbaa !47
  call void @RNA_string_get(ptr noundef %58, ptr noundef nonnull @.str.2, ptr noundef nonnull %2) #9
  %59 = getelementptr inbounds %struct.FileSelectParams, ptr %18, i64 0, i32 9
  %60 = load i16, ptr %59, align 4, !tbaa !53
  %61 = icmp eq i16 %60, 1
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.FileSelectParams, ptr %18, i64 0, i32 1
  %64 = call ptr @BLI_strncpy(ptr noundef nonnull %63, ptr noundef nonnull %2, i64 noundef 1056) #9
  %65 = load ptr, ptr %5, align 8, !tbaa !34
  %66 = getelementptr inbounds %struct.FileSelectParams, ptr %65, i64 0, i32 2
  store i8 0, ptr %66, align 4, !tbaa !46
  br label %71

67:                                               ; preds = %57
  %68 = load ptr, ptr %5, align 8, !tbaa !34
  %69 = getelementptr inbounds %struct.FileSelectParams, ptr %68, i64 0, i32 1
  %70 = getelementptr inbounds %struct.FileSelectParams, ptr %68, i64 0, i32 2
  call void @BLI_split_dirfile(ptr noundef nonnull %2, ptr noundef nonnull %69, ptr noundef nonnull %70, i64 noundef 1056, i64 noundef 256) #9
  br label %71

71:                                               ; preds = %67, %62
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %2) #9
  br label %90

72:                                               ; preds = %53, %50
  br i1 %33, label %73, label %82

73:                                               ; preds = %72
  %74 = load ptr, ptr %21, align 8, !tbaa !47
  %75 = tail call zeroext i8 @RNA_struct_property_is_set_ex(ptr noundef %74, ptr noundef nonnull @.str.4, i8 noundef zeroext 0) #9
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %73
  %78 = load ptr, ptr %21, align 8, !tbaa !47
  %79 = getelementptr inbounds %struct.FileSelectParams, ptr %18, i64 0, i32 1
  tail call void @RNA_string_get(ptr noundef %78, ptr noundef nonnull @.str.4, ptr noundef nonnull %79) #9
  %80 = load ptr, ptr %5, align 8, !tbaa !34
  %81 = getelementptr inbounds %struct.FileSelectParams, ptr %80, i64 0, i32 2
  store i8 0, ptr %81, align 4, !tbaa !46
  br label %82

82:                                               ; preds = %77, %73, %72
  br i1 %30, label %90, label %83

83:                                               ; preds = %82
  %84 = load ptr, ptr %21, align 8, !tbaa !47
  %85 = tail call zeroext i8 @RNA_struct_property_is_set_ex(ptr noundef %84, ptr noundef nonnull @.str.3, i8 noundef zeroext 0) #9
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %21, align 8, !tbaa !47
  %89 = getelementptr inbounds %struct.FileSelectParams, ptr %18, i64 0, i32 2
  tail call void @RNA_string_get(ptr noundef %88, ptr noundef nonnull @.str.3, ptr noundef nonnull %89) #9
  br label %90

90:                                               ; preds = %82, %83, %87, %71
  %91 = getelementptr inbounds %struct.FileSelectParams, ptr %18, i64 0, i32 1
  %92 = load i8, ptr %91, align 4, !tbaa !46
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %100, label %94

94:                                               ; preds = %90
  %95 = load ptr, ptr @G, align 8, !tbaa !44
  %96 = getelementptr inbounds %struct.Main, ptr %95, i64 0, i32 2
  call void @BLI_cleanup_dir(ptr noundef nonnull %96, ptr noundef nonnull %91) #9
  %97 = load ptr, ptr @G, align 8, !tbaa !44
  %98 = getelementptr inbounds %struct.Main, ptr %97, i64 0, i32 2
  %99 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %91, ptr noundef nonnull %98) #9
  br label %100

100:                                              ; preds = %94, %90
  %101 = select i1 %33, i1 %30, i1 false
  %102 = select i1 %101, i1 %27, i1 false
  %103 = select i1 %102, i1 %24, i1 false
  %104 = getelementptr inbounds %struct.FileSelectParams, ptr %18, i64 0, i32 10
  %105 = load i16, ptr %104, align 2, !tbaa !55
  %106 = and i16 %105, -129
  %107 = select i1 %103, i16 128, i16 0
  %108 = or disjoint i16 %106, %107
  store i16 %108, ptr %104, align 2, !tbaa !55
  %109 = getelementptr inbounds %struct.FileSelectParams, ptr %18, i64 0, i32 13
  store i16 0, ptr %109, align 4, !tbaa !56
  %110 = load ptr, ptr %21, align 8, !tbaa !47
  %111 = call ptr @RNA_struct_find_property(ptr noundef %110, ptr noundef nonnull @.str.7) #9
  %112 = icmp eq ptr %111, null
  br i1 %112, label %120, label %113

113:                                              ; preds = %100
  %114 = load ptr, ptr %21, align 8, !tbaa !47
  %115 = call i32 @RNA_property_boolean_get(ptr noundef %114, ptr noundef nonnull %111) #9
  %116 = icmp eq i32 %115, 0
  %117 = select i1 %116, i16 0, i16 4
  %118 = load i16, ptr %109, align 4, !tbaa !56
  %119 = or i16 %117, %118
  store i16 %119, ptr %109, align 4, !tbaa !56
  br label %120

120:                                              ; preds = %113, %100
  %121 = load ptr, ptr %21, align 8, !tbaa !47
  %122 = call ptr @RNA_struct_find_property(ptr noundef %121, ptr noundef nonnull @.str.8) #9
  %123 = icmp eq ptr %122, null
  br i1 %123, label %131, label %124

124:                                              ; preds = %120
  %125 = load ptr, ptr %21, align 8, !tbaa !47
  %126 = call i32 @RNA_property_boolean_get(ptr noundef %125, ptr noundef nonnull %122) #9
  %127 = icmp eq i32 %126, 0
  %128 = select i1 %127, i16 0, i16 8
  %129 = load i16, ptr %109, align 4, !tbaa !56
  %130 = or i16 %128, %129
  store i16 %130, ptr %109, align 4, !tbaa !56
  br label %131

131:                                              ; preds = %124, %120
  %132 = load ptr, ptr %21, align 8, !tbaa !47
  %133 = call ptr @RNA_struct_find_property(ptr noundef %132, ptr noundef nonnull @.str.9) #9
  %134 = icmp eq ptr %133, null
  br i1 %134, label %142, label %135

135:                                              ; preds = %131
  %136 = load ptr, ptr %21, align 8, !tbaa !47
  %137 = call i32 @RNA_property_boolean_get(ptr noundef %136, ptr noundef nonnull %133) #9
  %138 = icmp eq i32 %137, 0
  %139 = select i1 %138, i16 0, i16 16
  %140 = load i16, ptr %109, align 4, !tbaa !56
  %141 = or i16 %139, %140
  store i16 %141, ptr %109, align 4, !tbaa !56
  br label %142

142:                                              ; preds = %135, %131
  %143 = load ptr, ptr %21, align 8, !tbaa !47
  %144 = call ptr @RNA_struct_find_property(ptr noundef %143, ptr noundef nonnull @.str.10) #9
  %145 = icmp eq ptr %144, null
  br i1 %145, label %153, label %146

146:                                              ; preds = %142
  %147 = load ptr, ptr %21, align 8, !tbaa !47
  %148 = call i32 @RNA_property_boolean_get(ptr noundef %147, ptr noundef nonnull %144) #9
  %149 = icmp eq i32 %148, 0
  %150 = select i1 %149, i16 0, i16 32
  %151 = load i16, ptr %109, align 4, !tbaa !56
  %152 = or i16 %150, %151
  store i16 %152, ptr %109, align 4, !tbaa !56
  br label %153

153:                                              ; preds = %146, %142
  %154 = load ptr, ptr %21, align 8, !tbaa !47
  %155 = call ptr @RNA_struct_find_property(ptr noundef %154, ptr noundef nonnull @.str.11) #9
  %156 = icmp eq ptr %155, null
  br i1 %156, label %164, label %157

157:                                              ; preds = %153
  %158 = load ptr, ptr %21, align 8, !tbaa !47
  %159 = call i32 @RNA_property_boolean_get(ptr noundef %158, ptr noundef nonnull %155) #9
  %160 = icmp eq i32 %159, 0
  %161 = select i1 %160, i16 0, i16 64
  %162 = load i16, ptr %109, align 4, !tbaa !56
  %163 = or i16 %161, %162
  store i16 %163, ptr %109, align 4, !tbaa !56
  br label %164

164:                                              ; preds = %157, %153
  %165 = load ptr, ptr %21, align 8, !tbaa !47
  %166 = call ptr @RNA_struct_find_property(ptr noundef %165, ptr noundef nonnull @.str.12) #9
  %167 = icmp eq ptr %166, null
  br i1 %167, label %175, label %168

168:                                              ; preds = %164
  %169 = load ptr, ptr %21, align 8, !tbaa !47
  %170 = call i32 @RNA_property_boolean_get(ptr noundef %169, ptr noundef nonnull %166) #9
  %171 = icmp eq i32 %170, 0
  %172 = select i1 %171, i16 0, i16 128
  %173 = load i16, ptr %109, align 4, !tbaa !56
  %174 = or i16 %172, %173
  store i16 %174, ptr %109, align 4, !tbaa !56
  br label %175

175:                                              ; preds = %168, %164
  %176 = load ptr, ptr %21, align 8, !tbaa !47
  %177 = call ptr @RNA_struct_find_property(ptr noundef %176, ptr noundef nonnull @.str.13) #9
  %178 = icmp eq ptr %177, null
  br i1 %178, label %186, label %179

179:                                              ; preds = %175
  %180 = load ptr, ptr %21, align 8, !tbaa !47
  %181 = call i32 @RNA_property_boolean_get(ptr noundef %180, ptr noundef nonnull %177) #9
  %182 = icmp eq i32 %181, 0
  %183 = select i1 %182, i16 0, i16 256
  %184 = load i16, ptr %109, align 4, !tbaa !56
  %185 = or i16 %183, %184
  store i16 %185, ptr %109, align 4, !tbaa !56
  br label %186

186:                                              ; preds = %179, %175
  %187 = load ptr, ptr %21, align 8, !tbaa !47
  %188 = call ptr @RNA_struct_find_property(ptr noundef %187, ptr noundef nonnull @.str.14) #9
  %189 = icmp eq ptr %188, null
  br i1 %189, label %197, label %190

190:                                              ; preds = %186
  %191 = load ptr, ptr %21, align 8, !tbaa !47
  %192 = call i32 @RNA_property_boolean_get(ptr noundef %191, ptr noundef nonnull %188) #9
  %193 = icmp eq i32 %192, 0
  %194 = select i1 %193, i16 0, i16 512
  %195 = load i16, ptr %109, align 4, !tbaa !56
  %196 = or i16 %194, %195
  store i16 %196, ptr %109, align 4, !tbaa !56
  br label %197

197:                                              ; preds = %190, %186
  %198 = load ptr, ptr %21, align 8, !tbaa !47
  %199 = call ptr @RNA_struct_find_property(ptr noundef %198, ptr noundef nonnull @.str.15) #9
  %200 = icmp eq ptr %199, null
  br i1 %200, label %208, label %201

201:                                              ; preds = %197
  %202 = load ptr, ptr %21, align 8, !tbaa !47
  %203 = call i32 @RNA_property_boolean_get(ptr noundef %202, ptr noundef nonnull %199) #9
  %204 = icmp eq i32 %203, 0
  %205 = select i1 %204, i16 0, i16 2048
  %206 = load i16, ptr %109, align 4, !tbaa !56
  %207 = or i16 %205, %206
  store i16 %207, ptr %109, align 4, !tbaa !56
  br label %208

208:                                              ; preds = %201, %197
  %209 = load ptr, ptr %21, align 8, !tbaa !47
  %210 = call ptr @RNA_struct_find_property(ptr noundef %209, ptr noundef nonnull @.str.16) #9
  %211 = icmp eq ptr %210, null
  br i1 %211, label %219, label %212

212:                                              ; preds = %208
  %213 = load ptr, ptr %21, align 8, !tbaa !47
  %214 = call i32 @RNA_property_boolean_get(ptr noundef %213, ptr noundef nonnull %210) #9
  %215 = icmp eq i32 %214, 0
  %216 = select i1 %215, i16 0, i16 4096
  %217 = load i16, ptr %109, align 4, !tbaa !56
  %218 = or i16 %216, %217
  store i16 %218, ptr %109, align 4, !tbaa !56
  br label %219

219:                                              ; preds = %212, %208
  %220 = load ptr, ptr %21, align 8, !tbaa !47
  %221 = call ptr @RNA_struct_find_property(ptr noundef %220, ptr noundef nonnull @.str.17) #9
  %222 = icmp eq ptr %221, null
  br i1 %222, label %230, label %223

223:                                              ; preds = %219
  %224 = load ptr, ptr %21, align 8, !tbaa !47
  %225 = call i32 @RNA_property_boolean_get(ptr noundef %224, ptr noundef nonnull %221) #9
  %226 = icmp eq i32 %225, 0
  %227 = select i1 %226, i16 0, i16 8192
  %228 = load i16, ptr %109, align 4, !tbaa !56
  %229 = or i16 %227, %228
  store i16 %229, ptr %109, align 4, !tbaa !56
  br label %230

230:                                              ; preds = %223, %219
  %231 = load ptr, ptr %21, align 8, !tbaa !47
  %232 = call ptr @RNA_struct_find_property(ptr noundef %231, ptr noundef nonnull @.str.18) #9
  %233 = icmp eq ptr %232, null
  br i1 %233, label %239, label %234

234:                                              ; preds = %230
  %235 = load ptr, ptr %21, align 8, !tbaa !47
  %236 = getelementptr inbounds %struct.FileSelectParams, ptr %18, i64 0, i32 5
  call void @RNA_property_string_get(ptr noundef %235, ptr noundef nonnull %232, ptr noundef nonnull %236) #9
  %237 = load i16, ptr %109, align 4, !tbaa !56
  %238 = or i16 %237, 18432
  store i16 %238, ptr %109, align 4, !tbaa !56
  br label %241

239:                                              ; preds = %230
  %240 = getelementptr inbounds %struct.FileSelectParams, ptr %18, i64 0, i32 5
  store i8 0, ptr %240, align 4, !tbaa !46
  br label %241

241:                                              ; preds = %239, %234
  %242 = load i16, ptr %109, align 4, !tbaa !56
  %243 = icmp eq i16 %242, 0
  br i1 %243, label %253, label %244

244:                                              ; preds = %241
  %245 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !57
  %246 = getelementptr inbounds %struct.FileSelectParams, ptr %18, i64 0, i32 10
  %247 = load i16, ptr %246, align 2, !tbaa !55
  %248 = and i16 %247, -257
  %249 = trunc i32 %245 to i16
  %250 = shl i16 %249, 5
  %251 = and i16 %250, 256
  %252 = or disjoint i16 %248, %251
  store i16 %252, ptr %246, align 2, !tbaa !55
  br label %253

253:                                              ; preds = %244, %241
  %254 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !57
  %255 = getelementptr inbounds %struct.FileSelectParams, ptr %18, i64 0, i32 10
  %256 = load i16, ptr %255, align 2, !tbaa !55
  %257 = and i16 %256, -9
  %258 = lshr i32 %254, 13
  %259 = trunc i32 %258 to i16
  %260 = and i16 %259, 8
  %261 = or disjoint i16 %257, %260
  store i16 %261, ptr %255, align 2, !tbaa !55
  %262 = getelementptr inbounds %struct.FileSelectParams, ptr %18, i64 0, i32 9
  %263 = load i16, ptr %262, align 4, !tbaa !53
  %264 = icmp eq i16 %263, 1
  br i1 %264, label %265, label %285

265:                                              ; preds = %253
  %266 = load ptr, ptr %21, align 8, !tbaa !47
  %267 = call i32 @RNA_boolean_get(ptr noundef %266, ptr noundef nonnull @.str.19) #9
  %268 = icmp eq i32 %267, 0
  %269 = select i1 %268, i16 0, i16 4
  %270 = getelementptr inbounds %struct.FileSelectParams, ptr %18, i64 0, i32 10
  %271 = load i16, ptr %270, align 2, !tbaa !55
  %272 = or i16 %269, %271
  store i16 %272, ptr %270, align 2, !tbaa !55
  %273 = load ptr, ptr %21, align 8, !tbaa !47
  %274 = call i32 @RNA_boolean_get(ptr noundef %273, ptr noundef nonnull @.str.20) #9
  %275 = icmp eq i32 %274, 0
  %276 = select i1 %275, i16 0, i16 16
  %277 = load i16, ptr %270, align 2, !tbaa !55
  %278 = or i16 %276, %277
  store i16 %278, ptr %270, align 2, !tbaa !55
  %279 = load ptr, ptr %21, align 8, !tbaa !47
  %280 = call i32 @RNA_boolean_get(ptr noundef %279, ptr noundef nonnull @.str.21) #9
  %281 = icmp eq i32 %280, 0
  %282 = select i1 %281, i16 0, i16 32
  %283 = load i16, ptr %270, align 2, !tbaa !55
  %284 = or i16 %282, %283
  store i16 %284, ptr %270, align 2, !tbaa !55
  br label %285

285:                                              ; preds = %265, %253
  %286 = load ptr, ptr %21, align 8, !tbaa !47
  %287 = call ptr @RNA_struct_find_property(ptr noundef %286, ptr noundef nonnull @.str.22) #9
  %288 = icmp eq ptr %287, null
  br i1 %288, label %294, label %289

289:                                              ; preds = %285
  %290 = load ptr, ptr %21, align 8, !tbaa !47
  %291 = call i32 @RNA_enum_get(ptr noundef %290, ptr noundef nonnull @.str.22) #9
  %292 = trunc i32 %291 to i16
  %293 = getelementptr inbounds %struct.FileSelectParams, ptr %18, i64 0, i32 12
  store i16 %292, ptr %293, align 2, !tbaa !62
  br label %294

294:                                              ; preds = %289, %285
  %295 = getelementptr inbounds %struct.FileSelectParams, ptr %18, i64 0, i32 12
  %296 = load i16, ptr %295, align 2, !tbaa !62
  %297 = icmp eq i16 %296, 0
  br i1 %297, label %298, label %309

298:                                              ; preds = %294
  %299 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !57
  %300 = and i32 %299, 536870912
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %307, label %302

302:                                              ; preds = %298
  %303 = load i16, ptr %109, align 4, !tbaa !56
  %304 = and i16 %303, 48
  %305 = icmp eq i16 %304, 0
  %306 = select i1 %305, i16 1, i16 3
  br label %307

307:                                              ; preds = %298, %302
  %308 = phi i16 [ %306, %302 ], [ 1, %298 ]
  store i16 %308, ptr %295, align 2, !tbaa !62
  br label %309

309:                                              ; preds = %307, %294
  br i1 %36, label %327, label %310

310:                                              ; preds = %309
  %311 = load ptr, ptr %21, align 8, !tbaa !47
  %312 = call zeroext i8 @RNA_struct_property_is_set_ex(ptr noundef %311, ptr noundef nonnull @.str.5, i8 noundef zeroext 0) #9
  %313 = icmp eq i8 %312, 0
  br i1 %313, label %314, label %327

314:                                              ; preds = %310
  %315 = load ptr, ptr %21, align 8, !tbaa !47
  %316 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !63
  %317 = and i32 %316, 1048576
  call void @RNA_boolean_set(ptr noundef %315, ptr noundef nonnull @.str.5, i32 noundef %317) #9
  br label %327

318:                                              ; preds = %17
  %319 = getelementptr inbounds %struct.FileSelectParams, ptr %18, i64 0, i32 9
  store i16 8, ptr %319, align 4, !tbaa !53
  %320 = getelementptr inbounds %struct.FileSelectParams, ptr %18, i64 0, i32 10
  %321 = load i16, ptr %320, align 2, !tbaa !55
  %322 = and i16 %321, -137
  %323 = or disjoint i16 %322, 8
  store i16 %323, ptr %320, align 2, !tbaa !55
  %324 = getelementptr inbounds %struct.FileSelectParams, ptr %18, i64 0, i32 12
  store i16 1, ptr %324, align 2, !tbaa !62
  %325 = getelementptr inbounds %struct.FileSelectParams, ptr %18, i64 0, i32 13
  store i16 0, ptr %325, align 4, !tbaa !56
  %326 = getelementptr inbounds %struct.FileSelectParams, ptr %18, i64 0, i32 5
  store i8 0, ptr %326, align 4, !tbaa !46
  br label %327

327:                                              ; preds = %309, %314, %310, %318
  %328 = getelementptr inbounds %struct.FileSelectParams, ptr %18, i64 0, i32 11
  store i16 1, ptr %328, align 4, !tbaa !64
  %329 = getelementptr inbounds %struct.SpaceFile, ptr %0, i64 0, i32 7
  %330 = load ptr, ptr %329, align 8, !tbaa !65
  %331 = icmp eq ptr %330, null
  br i1 %331, label %332, label %334

332:                                              ; preds = %327
  %333 = call ptr @folderlist_new() #9
  store ptr %333, ptr %329, align 8, !tbaa !65
  br label %334

334:                                              ; preds = %332, %327
  %335 = load ptr, ptr %5, align 8, !tbaa !34
  %336 = getelementptr inbounds %struct.FileSelectParams, ptr %335, i64 0, i32 1
  %337 = load i8, ptr %336, align 4, !tbaa !46
  %338 = icmp eq i8 %337, 0
  br i1 %338, label %339, label %352

339:                                              ; preds = %334
  %340 = load ptr, ptr @G, align 8, !tbaa !44
  %341 = getelementptr inbounds %struct.Main, ptr %340, i64 0, i32 2
  %342 = load i8, ptr %341, align 8, !tbaa !46
  %343 = icmp eq i8 %342, 0
  br i1 %343, label %345, label %344

344:                                              ; preds = %339
  call void @BLI_split_dir_part(ptr noundef nonnull %341, ptr noundef nonnull %336, i64 noundef 1056) #9
  br label %352

345:                                              ; preds = %339
  %346 = call ptr @BLI_getDefaultDocumentFolder() #9
  %347 = icmp eq ptr %346, null
  br i1 %347, label %352, label %348

348:                                              ; preds = %345
  %349 = load ptr, ptr %5, align 8, !tbaa !34
  %350 = getelementptr inbounds %struct.FileSelectParams, ptr %349, i64 0, i32 1
  %351 = call ptr @BLI_strncpy(ptr noundef nonnull %350, ptr noundef nonnull %346, i64 noundef 1056) #9
  br label %352

352:                                              ; preds = %345, %348, %344, %334
  %353 = load ptr, ptr %329, align 8, !tbaa !65
  %354 = load ptr, ptr %5, align 8, !tbaa !34
  %355 = getelementptr inbounds %struct.FileSelectParams, ptr %354, i64 0, i32 1
  call void @folderlist_pushdir(ptr noundef %353, ptr noundef nonnull %355) #9
  %356 = getelementptr inbounds %struct.SpaceFile, ptr %0, i64 0, i32 11
  %357 = load ptr, ptr %356, align 8, !tbaa !66
  %358 = icmp eq ptr %357, null
  br i1 %358, label %361, label %359

359:                                              ; preds = %352
  %360 = getelementptr inbounds %struct.FileLayout, ptr %357, i64 0, i32 13
  store i32 1, ptr %360, align 4, !tbaa !67
  br label %361

361:                                              ; preds = %359, %352
  ret i16 1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @BLI_split_dirfile(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_strncpy_utf8(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @RNA_struct_ui_name(ptr noundef) local_unnamed_addr #2

declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @RNA_struct_property_is_set_ex(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @BLI_cleanup_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_path_abs(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_property_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_property_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @folderlist_new() local_unnamed_addr #2

declare void @BLI_split_dir_part(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @BLI_getDefaultDocumentFolder() local_unnamed_addr #2

declare void @folderlist_pushdir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ED_fileselect_reset_params(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.SpaceFile, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.FileSelectParams, ptr %3, i64 0, i32 9
  store i16 8, ptr %4, align 4, !tbaa !53
  %5 = getelementptr inbounds %struct.FileSelectParams, ptr %3, i64 0, i32 10
  store i16 0, ptr %5, align 2, !tbaa !55
  store i8 0, ptr %3, align 4, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ED_fileselect_layout_numfiles(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.FileLayout, ptr %0, i64 0, i32 12
  %4 = load i32, ptr %3, align 4, !tbaa !69
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %27, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.FileLayout, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !70
  %10 = getelementptr inbounds %struct.FileLayout, ptr %0, i64 0, i32 4
  %11 = load i32, ptr %10, align 4, !tbaa !71
  %12 = shl nsw i32 %11, 1
  %13 = add nsw i32 %12, %9
  %14 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1
  %15 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 1
  %16 = load float, ptr %15, align 4, !tbaa !72
  %17 = load float, ptr %14, align 4, !tbaa !74
  %18 = fsub float %16, %17
  %19 = fptosi float %18 to i32
  %20 = srem i32 %19, %13
  %21 = sub i32 %13, %20
  %22 = add nsw i32 %21, %19
  %23 = sitofp i32 %22 to float
  %24 = sitofp i32 %13 to float
  %25 = fdiv float %23, %24
  %26 = getelementptr inbounds %struct.FileLayout, ptr %0, i64 0, i32 8
  br label %47

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.FileLayout, ptr %0, i64 0, i32 3
  %29 = load i32, ptr %28, align 4, !tbaa !75
  %30 = getelementptr inbounds %struct.FileLayout, ptr %0, i64 0, i32 5
  %31 = load i32, ptr %30, align 4, !tbaa !76
  %32 = shl nsw i32 %31, 1
  %33 = add nsw i32 %32, %29
  %34 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 3
  %35 = load float, ptr %34, align 4, !tbaa !77
  %36 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 2
  %37 = load float, ptr %36, align 4, !tbaa !78
  %38 = fsub float %35, %37
  %39 = fptosi float %38 to i32
  %40 = srem i32 %39, %33
  %41 = sub i32 %33, %40
  %42 = add nsw i32 %41, %39
  %43 = sitofp i32 %42 to float
  %44 = sitofp i32 %33 to float
  %45 = fdiv float %43, %44
  %46 = getelementptr inbounds %struct.FileLayout, ptr %0, i64 0, i32 9
  br label %47

47:                                               ; preds = %27, %7
  %48 = phi ptr [ %46, %27 ], [ %26, %7 ]
  %49 = phi float [ %45, %27 ], [ %25, %7 ]
  %50 = fptosi float %49 to i32
  %51 = load i32, ptr %48, align 4, !tbaa !79
  %52 = mul nsw i32 %51, %50
  ret i32 %52
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @ED_fileselect_layout_offset_rect(ptr noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %117, label %4

4:                                                ; preds = %2
  %5 = load i32, ptr %1, align 4, !tbaa !80
  %6 = getelementptr inbounds %struct.FileLayout, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !70
  %8 = getelementptr inbounds %struct.FileLayout, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !71
  %10 = shl nsw i32 %9, 1
  %11 = add nsw i32 %10, %7
  %12 = sdiv i32 %5, %11
  %13 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !82
  %15 = getelementptr inbounds %struct.FileLayout, ptr %0, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !75
  %17 = getelementptr inbounds %struct.FileLayout, ptr %0, i64 0, i32 5
  %18 = load i32, ptr %17, align 4, !tbaa !76
  %19 = shl nsw i32 %18, 1
  %20 = add nsw i32 %19, %16
  %21 = sdiv i32 %14, %20
  %22 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !83
  %24 = sdiv i32 %23, %11
  %25 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 3
  %26 = load i32, ptr %25, align 4, !tbaa !84
  %27 = sdiv i32 %26, %20
  %28 = getelementptr inbounds %struct.FileLayout, ptr %0, i64 0, i32 9
  %29 = getelementptr inbounds %struct.FileLayout, ptr %0, i64 0, i32 8
  %30 = load i32, ptr %29, align 4, !tbaa !85
  %31 = icmp sgt i32 %12, -1
  br i1 %31, label %32, label %39

32:                                               ; preds = %4
  %33 = load i32, ptr %28, align 4, !tbaa !86
  %34 = icmp sge i32 %12, %33
  %35 = icmp slt i32 %21, 0
  %36 = or i1 %35, %34
  %37 = icmp sge i32 %21, %30
  %38 = select i1 %36, i1 true, i1 %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %4, %32
  %40 = icmp sgt i32 %24, -1
  br i1 %40, label %41, label %75

41:                                               ; preds = %39
  %42 = load i32, ptr %28, align 4, !tbaa !86
  %43 = icmp sge i32 %24, %42
  %44 = icmp slt i32 %27, 0
  %45 = or i1 %44, %43
  %46 = icmp sge i32 %27, %30
  %47 = select i1 %45, i1 true, i1 %46
  br i1 %47, label %75, label %48

48:                                               ; preds = %41, %32
  %49 = icmp slt i32 %12, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %48
  %51 = load i32, ptr %28, align 4, !tbaa !86
  %52 = icmp slt i32 %12, %51
  %53 = add nsw i32 %51, -1
  %54 = select i1 %52, i32 %12, i32 %53
  br label %55

55:                                               ; preds = %50, %48
  %56 = phi i32 [ 0, %48 ], [ %54, %50 ]
  %57 = icmp slt i32 %21, 0
  %58 = icmp slt i32 %21, %30
  %59 = add nsw i32 %30, -1
  %60 = select i1 %58, i32 %21, i32 %59
  %61 = select i1 %57, i32 0, i32 %60
  %62 = icmp slt i32 %24, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %55
  %64 = load i32, ptr %28, align 4, !tbaa !86
  %65 = icmp slt i32 %24, %64
  %66 = add nsw i32 %64, -1
  %67 = select i1 %65, i32 %24, i32 %66
  br label %68

68:                                               ; preds = %63, %55
  %69 = phi i32 [ 0, %55 ], [ %67, %63 ]
  %70 = icmp slt i32 %27, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %68
  %72 = icmp slt i32 %27, %30
  %73 = add nsw i32 %30, -1
  %74 = select i1 %72, i32 %27, i32 %73
  br label %75

75:                                               ; preds = %39, %71, %68, %41
  %76 = phi i32 [ %12, %41 ], [ %56, %68 ], [ %56, %71 ], [ %12, %39 ]
  %77 = phi i32 [ %24, %41 ], [ %69, %68 ], [ %69, %71 ], [ %24, %39 ]
  %78 = phi i32 [ %21, %41 ], [ %61, %68 ], [ %61, %71 ], [ %21, %39 ]
  %79 = phi i32 [ %27, %41 ], [ 0, %68 ], [ %74, %71 ], [ %27, %39 ]
  %80 = load i32, ptr %28, align 4, !tbaa !86
  %81 = icmp slt i32 %76, %80
  %82 = icmp slt i32 %78, %30
  %83 = select i1 %81, i1 %82, i1 false
  br i1 %83, label %84, label %95

84:                                               ; preds = %75
  %85 = getelementptr inbounds %struct.FileLayout, ptr %0, i64 0, i32 12
  %86 = load i32, ptr %85, align 4, !tbaa !69
  %87 = and i32 %86, 1
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %84
  %90 = mul nsw i32 %76, %30
  %91 = add nsw i32 %78, %90
  br label %95

92:                                               ; preds = %84
  %93 = mul nsw i32 %80, %78
  %94 = add nsw i32 %93, %76
  br label %95

95:                                               ; preds = %75, %89, %92
  %96 = phi i32 [ %91, %89 ], [ %94, %92 ], [ -1, %75 ]
  %97 = icmp slt i32 %77, %80
  %98 = icmp slt i32 %79, %30
  %99 = select i1 %97, i1 %98, i1 false
  br i1 %99, label %100, label %111

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.FileLayout, ptr %0, i64 0, i32 12
  %102 = load i32, ptr %101, align 4, !tbaa !69
  %103 = and i32 %102, 1
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %100
  %106 = mul nsw i32 %77, %30
  %107 = add nsw i32 %79, %106
  br label %111

108:                                              ; preds = %100
  %109 = mul nsw i32 %80, %79
  %110 = add nsw i32 %109, %77
  br label %111

111:                                              ; preds = %95, %105, %108
  %112 = phi i32 [ %107, %105 ], [ %110, %108 ], [ -1, %95 ]
  %113 = zext i32 %112 to i64
  %114 = shl nuw i64 %113, 32
  %115 = zext i32 %96 to i64
  %116 = or disjoint i64 %114, %115
  br label %117

117:                                              ; preds = %2, %111
  %118 = phi i64 [ %116, %111 ], [ -1, %2 ]
  ret i64 %118
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ED_fileselect_layout_offset(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %37, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.FileLayout, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !70
  %8 = getelementptr inbounds %struct.FileLayout, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !71
  %10 = shl nsw i32 %9, 1
  %11 = add nsw i32 %10, %7
  %12 = sdiv i32 %1, %11
  %13 = getelementptr inbounds %struct.FileLayout, ptr %0, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !75
  %15 = getelementptr inbounds %struct.FileLayout, ptr %0, i64 0, i32 5
  %16 = load i32, ptr %15, align 4, !tbaa !76
  %17 = shl nsw i32 %16, 1
  %18 = add nsw i32 %17, %14
  %19 = sdiv i32 %2, %18
  %20 = getelementptr inbounds %struct.FileLayout, ptr %0, i64 0, i32 9
  %21 = load i32, ptr %20, align 4, !tbaa !86
  %22 = icmp slt i32 %12, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %5
  %24 = getelementptr inbounds %struct.FileLayout, ptr %0, i64 0, i32 8
  %25 = load i32, ptr %24, align 4, !tbaa !85
  %26 = icmp slt i32 %19, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.FileLayout, ptr %0, i64 0, i32 12
  %29 = load i32, ptr %28, align 4, !tbaa !69
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  %32 = mul nsw i32 %25, %12
  %33 = add nsw i32 %32, %19
  %34 = mul nsw i32 %21, %19
  %35 = add nsw i32 %34, %12
  %36 = select i1 %31, i32 %35, i32 %33
  br label %37

37:                                               ; preds = %23, %5, %3, %27
  %38 = phi i32 [ %36, %27 ], [ -1, %3 ], [ -1, %5 ], [ -1, %23 ]
  ret i32 %38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ED_fileselect_layout_tilepos(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #5 {
  %5 = getelementptr inbounds %struct.FileLayout, ptr %0, i64 0, i32 12
  %6 = load i32, ptr %5, align 4, !tbaa !69
  %7 = icmp eq i32 %6, 1
  %8 = getelementptr inbounds %struct.FileLayout, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !71
  %10 = getelementptr inbounds %struct.FileLayout, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !70
  %12 = shl nsw i32 %9, 1
  %13 = add nsw i32 %11, %12
  br i1 %7, label %14, label %22

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.FileLayout, ptr %0, i64 0, i32 8
  %16 = load i32, ptr %15, align 4, !tbaa !85
  %17 = sdiv i32 %1, %16
  %18 = mul nsw i32 %13, %17
  %19 = add nsw i32 %18, %9
  store i32 %19, ptr %2, align 4, !tbaa !79
  %20 = load i32, ptr %15, align 4, !tbaa !85
  %21 = srem i32 %1, %20
  br label %30

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.FileLayout, ptr %0, i64 0, i32 9
  %24 = load i32, ptr %23, align 4, !tbaa !86
  %25 = srem i32 %1, %24
  %26 = mul nsw i32 %13, %25
  %27 = add nsw i32 %26, %9
  store i32 %27, ptr %2, align 4, !tbaa !79
  %28 = load i32, ptr %23, align 4, !tbaa !86
  %29 = sdiv i32 %1, %28
  br label %30

30:                                               ; preds = %22, %14
  %31 = phi i32 [ %29, %22 ], [ %21, %14 ]
  %32 = getelementptr inbounds %struct.FileLayout, ptr %0, i64 0, i32 5
  %33 = load i32, ptr %32, align 4, !tbaa !76
  %34 = getelementptr inbounds %struct.FileLayout, ptr %0, i64 0, i32 3
  %35 = load i32, ptr %34, align 4, !tbaa !75
  %36 = shl nsw i32 %33, 1
  %37 = add nsw i32 %35, %36
  %38 = mul nsw i32 %37, %31
  %39 = add nsw i32 %38, %33
  store i32 %39, ptr %3, align 4, !tbaa !79
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local float @file_shorten_string(ptr noundef %0, float noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #9
  %5 = fcmp ugt float %1, 0.000000e+00
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  store i8 0, ptr %0, align 1, !tbaa !46
  br label %78

7:                                                ; preds = %3
  %8 = tail call ptr @UI_GetStyle() #9
  %9 = getelementptr inbounds %struct.uiStyle, ptr %8, i64 0, i32 6
  tail call void @uiStyleFontSet(ptr noundef nonnull %9) #9
  %10 = load i16, ptr %9, align 8, !tbaa !87
  %11 = sext i16 %10 to i32
  %12 = tail call float @BLF_width(i32 noundef %11, ptr noundef %0, i64 noundef 1024) #9
  %13 = icmp eq i32 %2, 1
  br i1 %13, label %16, label %14

14:                                               ; preds = %7
  %15 = fcmp ule float %12, %1
  br i1 %15, label %67, label %55

16:                                               ; preds = %7
  %17 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef nonnull @.str.23, i64 noundef 4) #9
  %18 = call ptr @UI_GetStyle() #9
  %19 = getelementptr inbounds %struct.uiStyle, ptr %18, i64 0, i32 6
  call void @uiStyleFontSet(ptr noundef nonnull %19) #9
  %20 = load i16, ptr %19, align 8, !tbaa !87
  %21 = sext i16 %20 to i32
  %22 = call float @BLF_width(i32 noundef %21, ptr noundef nonnull %4, i64 noundef 1024) #9
  %23 = load i8, ptr %0, align 1, !tbaa !46
  %24 = icmp eq i8 %23, 0
  %25 = fadd float %22, %12
  %26 = fcmp ule float %25, %1
  %27 = select i1 %24, i1 true, i1 %26
  br i1 %27, label %41, label %28

28:                                               ; preds = %16, %28
  %29 = phi ptr [ %30, %28 ], [ %0, %16 ]
  %30 = getelementptr inbounds i8, ptr %29, i64 1
  %31 = call ptr @UI_GetStyle() #9
  %32 = getelementptr inbounds %struct.uiStyle, ptr %31, i64 0, i32 6
  call void @uiStyleFontSet(ptr noundef nonnull %32) #9
  %33 = load i16, ptr %32, align 8, !tbaa !87
  %34 = sext i16 %33 to i32
  %35 = call float @BLF_width(i32 noundef %34, ptr noundef nonnull %30, i64 noundef 1024) #9
  %36 = load i8, ptr %30, align 1, !tbaa !46
  %37 = icmp ne i8 %36, 0
  %38 = fadd float %22, %35
  %39 = fcmp ogt float %38, %1
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %28, label %41, !llvm.loop !90

41:                                               ; preds = %28, %16
  %42 = phi ptr [ %0, %16 ], [ %30, %28 ]
  %43 = phi float [ %12, %16 ], [ %35, %28 ]
  br i1 %27, label %78, label %44

44:                                               ; preds = %41
  %45 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %42) #10
  %46 = getelementptr inbounds i8, ptr %4, i64 3
  %47 = shl i64 %45, 32
  %48 = add i64 %47, 4294967296
  %49 = ashr exact i64 %48, 32
  %50 = call ptr @BLI_strncpy(ptr noundef nonnull %46, ptr noundef nonnull %42, i64 noundef %49) #9
  %51 = add i64 %47, 17179869184
  %52 = ashr exact i64 %51, 32
  %53 = getelementptr inbounds [1024 x i8], ptr %4, i64 0, i64 %52
  store i8 0, ptr %53, align 1, !tbaa !46
  %54 = call ptr @BLI_strncpy(ptr noundef nonnull %0, ptr noundef nonnull %4, i64 noundef %52) #9
  br label %78

55:                                               ; preds = %14, %55
  %56 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #10
  %57 = shl i64 %56, 32
  %58 = add i64 %57, -4294967296
  %59 = ashr exact i64 %58, 32
  %60 = getelementptr inbounds i8, ptr %0, i64 %59
  store i8 0, ptr %60, align 1, !tbaa !46
  %61 = tail call ptr @UI_GetStyle() #9
  %62 = getelementptr inbounds %struct.uiStyle, ptr %61, i64 0, i32 6
  tail call void @uiStyleFontSet(ptr noundef nonnull %62) #9
  %63 = load i16, ptr %62, align 8, !tbaa !87
  %64 = sext i16 %63 to i32
  %65 = tail call float @BLF_width(i32 noundef %64, ptr noundef %0, i64 noundef 1024) #9
  %66 = fcmp ogt float %65, %1
  br i1 %66, label %55, label %67, !llvm.loop !93

67:                                               ; preds = %55, %14
  %68 = phi float [ %12, %14 ], [ %65, %55 ]
  br i1 %15, label %78, label %69

69:                                               ; preds = %67
  %70 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #10
  %71 = trunc i64 %70 to i32
  %72 = icmp sgt i32 %71, 3
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = and i64 %70, 4294967295
  %75 = getelementptr inbounds i8, ptr %0, i64 %74
  %76 = getelementptr inbounds i8, ptr %75, i64 -3
  %77 = tail call ptr @BLI_strncpy(ptr noundef nonnull %76, ptr noundef nonnull @.str.23, i64 noundef 4) #9
  br label %78

78:                                               ; preds = %44, %41, %69, %73, %67, %6
  %79 = phi float [ 0.000000e+00, %6 ], [ %43, %44 ], [ %43, %41 ], [ %68, %69 ], [ %68, %73 ], [ %68, %67 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #9
  ret float %79
}

; Function Attrs: nounwind uwtable
define dso_local float @file_string_width(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @UI_GetStyle() #9
  %3 = getelementptr inbounds %struct.uiStyle, ptr %2, i64 0, i32 6
  tail call void @uiStyleFontSet(ptr noundef nonnull %3) #9
  %4 = load i16, ptr %3, align 8, !tbaa !87
  %5 = sext i16 %4 to i32
  %6 = tail call float @BLF_width(i32 noundef %5, ptr noundef %0, i64 noundef 1024) #9
  ret float %6
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

declare ptr @UI_GetStyle() local_unnamed_addr #2

declare void @uiStyleFontSet(ptr noundef) local_unnamed_addr #2

declare float @BLF_width(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local float @file_font_pointsize() local_unnamed_addr #0 {
  %1 = tail call ptr @UI_GetStyle() #9
  %2 = getelementptr inbounds %struct.uiStyle, ptr %1, i64 0, i32 6
  tail call void @uiStyleFontSet(ptr noundef nonnull %2) #9
  %3 = getelementptr inbounds %struct.uiStyle, ptr %1, i64 0, i32 6, i32 1
  %4 = load i16, ptr %3, align 2, !tbaa !94
  %5 = sitofp i16 %4 to float
  %6 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !95
  %7 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !96
  %8 = sitofp i32 %7 to float
  %9 = fmul float %6, %8
  %10 = fdiv float %9, 7.200000e+01
  %11 = fmul float %10, %5
  ret float %11
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_fileselect_init_layout(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.SpaceFile, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call signext i16 @ED_fileselect_set_params(ptr noundef %0)
  br label %8

8:                                                ; preds = %2, %6
  %9 = load ptr, ptr %3, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.SpaceFile, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !66
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = load ptr, ptr @MEM_callocN, align 8, !tbaa !43
  %15 = tail call ptr %14(i64 noundef 92, ptr noundef nonnull @.str.24) #9
  store ptr %15, ptr %10, align 8, !tbaa !66
  %16 = getelementptr inbounds %struct.FileLayout, ptr %15, i64 0, i32 13
  store i32 1, ptr %16, align 4, !tbaa !67
  br label %21

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.FileLayout, ptr %11, i64 0, i32 13
  %19 = load i32, ptr %18, align 4, !tbaa !67
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %288, label %21

21:                                               ; preds = %17, %13
  %22 = getelementptr inbounds %struct.SpaceFile, ptr %0, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !97
  %24 = tail call i32 @filelist_numfiles(ptr noundef %23) #9
  %25 = tail call ptr @UI_GetStyle() #9
  %26 = getelementptr inbounds %struct.uiStyle, ptr %25, i64 0, i32 6
  tail call void @uiStyleFontSet(ptr noundef nonnull %26) #9
  %27 = getelementptr inbounds %struct.uiStyle, ptr %25, i64 0, i32 6, i32 1
  %28 = load i16, ptr %27, align 2, !tbaa !94
  %29 = sitofp i16 %28 to float
  %30 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !95
  %31 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !96
  %32 = sitofp i32 %31 to float
  %33 = fmul float %30, %32
  %34 = fdiv float %33, 7.200000e+01
  %35 = fmul float %34, %29
  %36 = fptosi float %35 to i32
  %37 = load ptr, ptr %10, align 8, !tbaa !66
  %38 = getelementptr inbounds %struct.FileLayout, ptr %37, i64 0, i32 14
  store i32 %36, ptr %38, align 4, !tbaa !98
  %39 = getelementptr inbounds %struct.FileSelectParams, ptr %9, i64 0, i32 12
  %40 = load i16, ptr %39, align 2, !tbaa !62
  %41 = icmp eq i16 %40, 3
  %42 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !99
  %43 = sitofp i16 %42 to float
  %44 = getelementptr inbounds %struct.FileLayout, ptr %37, i64 0, i32 5
  %45 = getelementptr inbounds %struct.FileLayout, ptr %37, i64 0, i32 6
  %46 = getelementptr inbounds %struct.FileLayout, ptr %37, i64 0, i32 7
  br i1 %41, label %47, label %83

47:                                               ; preds = %21
  %48 = fmul float %43, 0x4013333340000000
  %49 = fptosi float %48 to i32
  store i32 %49, ptr %37, align 4, !tbaa !100
  %50 = getelementptr inbounds %struct.FileLayout, ptr %37, i64 0, i32 1
  store i32 %49, ptr %50, align 4, !tbaa !101
  %51 = fmul float %43, 0x3FD3333340000000
  %52 = fptosi float %51 to i32
  %53 = getelementptr inbounds %struct.FileLayout, ptr %37, i64 0, i32 4
  store i32 %52, ptr %53, align 4, !tbaa !71
  store i32 %52, ptr %44, align 4, !tbaa !76
  store i32 %52, ptr %45, align 4, !tbaa !102
  store i32 %52, ptr %46, align 4, !tbaa !103
  %54 = shl nsw i32 %52, 1
  %55 = add nsw i32 %54, %49
  %56 = getelementptr inbounds %struct.FileLayout, ptr %37, i64 0, i32 2
  store i32 %55, ptr %56, align 4, !tbaa !70
  %57 = add nsw i32 %55, %36
  %58 = getelementptr inbounds %struct.FileLayout, ptr %37, i64 0, i32 3
  store i32 %57, ptr %58, align 4, !tbaa !75
  %59 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1
  %60 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 1
  %61 = load float, ptr %60, align 4, !tbaa !72
  %62 = load float, ptr %59, align 4, !tbaa !74
  %63 = fsub float %61, %62
  %64 = sitofp i32 %54 to float
  %65 = fsub float %63, %64
  %66 = fptosi float %65 to i32
  %67 = getelementptr inbounds %struct.FileLayout, ptr %37, i64 0, i32 10
  store i32 %66, ptr %67, align 4, !tbaa !104
  %68 = add nsw i32 %55, %54
  %69 = sdiv i32 %66, %68
  %70 = getelementptr inbounds %struct.FileLayout, ptr %37, i64 0, i32 9
  store i32 %69, ptr %70, align 4, !tbaa !86
  %71 = icmp sgt i32 %69, 0
  %72 = getelementptr inbounds %struct.FileLayout, ptr %37, i64 0, i32 8
  br i1 %71, label %73, label %75

73:                                               ; preds = %47
  %74 = sdiv i32 %24, %69
  br label %76

75:                                               ; preds = %47
  store i32 1, ptr %70, align 4, !tbaa !86
  br label %76

76:                                               ; preds = %75, %73
  %77 = phi i32 [ %24, %75 ], [ %74, %73 ]
  %78 = add nsw i32 %77, 1
  store i32 %78, ptr %72, align 4, !tbaa !85
  %79 = add nsw i32 %57, %54
  %80 = mul nsw i32 %78, %79
  %81 = add nsw i32 %80, %54
  %82 = getelementptr inbounds %struct.FileLayout, ptr %37, i64 0, i32 11
  store i32 %81, ptr %82, align 4, !tbaa !105
  br label %284

83:                                               ; preds = %21
  store i32 0, ptr %37, align 4, !tbaa !100
  %84 = getelementptr inbounds %struct.FileLayout, ptr %37, i64 0, i32 1
  store i32 0, ptr %84, align 4, !tbaa !101
  %85 = fmul float %43, 0x3FD99999A0000000
  %86 = fptosi float %85 to i32
  %87 = getelementptr inbounds %struct.FileLayout, ptr %37, i64 0, i32 4
  store i32 %86, ptr %87, align 4, !tbaa !71
  %88 = fmul float %43, 0x3FB99999A0000000
  %89 = fptosi float %88 to i32
  store i32 %89, ptr %44, align 4, !tbaa !76
  store i32 0, ptr %45, align 4, !tbaa !102
  store i32 0, ptr %46, align 4, !tbaa !103
  %90 = mul nsw i32 %36, 3
  %91 = sdiv i32 %90, 2
  %92 = getelementptr inbounds %struct.FileLayout, ptr %37, i64 0, i32 3
  store i32 %91, ptr %92, align 4, !tbaa !75
  %93 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 3
  %94 = load float, ptr %93, align 4, !tbaa !77
  %95 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 2
  %96 = load float, ptr %95, align 4, !tbaa !78
  %97 = fsub float %94, %96
  %98 = shl nsw i32 %89, 1
  %99 = sitofp i32 %98 to float
  %100 = fsub float %97, %99
  %101 = fptosi float %100 to i32
  %102 = getelementptr inbounds %struct.FileLayout, ptr %37, i64 0, i32 11
  store i32 %101, ptr %102, align 4, !tbaa !105
  %103 = add nsw i32 %98, %91
  %104 = sdiv i32 %101, %103
  %105 = getelementptr inbounds %struct.FileLayout, ptr %37, i64 0, i32 8
  store i32 %104, ptr %105, align 4, !tbaa !85
  %106 = load ptr, ptr %22, align 8, !tbaa !97
  %107 = tail call i32 @filelist_numfiles(ptr noundef %106) #9
  %108 = getelementptr i8, ptr %37, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %108, i8 0, i64 32, i1 false), !tbaa !106
  %109 = fmul float %43, 0x3FC99999A0000000
  %110 = fmul float %43, 0x3FE3333340000000
  %111 = fptosi float %110 to i32
  %112 = fptosi float %109 to i32
  %113 = icmp sgt i32 %107, 0
  br i1 %113, label %114, label %211

114:                                              ; preds = %83
  %115 = getelementptr inbounds %struct.FileLayout, ptr %37, i64 0, i32 15
  %116 = getelementptr inbounds %struct.FileLayout, ptr %37, i64 0, i32 15, i64 1
  %117 = getelementptr inbounds %struct.FileLayout, ptr %37, i64 0, i32 15, i64 2
  %118 = getelementptr inbounds %struct.FileLayout, ptr %37, i64 0, i32 15, i64 3
  %119 = getelementptr inbounds %struct.FileLayout, ptr %37, i64 0, i32 15, i64 4
  %120 = getelementptr inbounds %struct.FileLayout, ptr %37, i64 0, i32 15, i64 5
  %121 = getelementptr inbounds %struct.FileLayout, ptr %37, i64 0, i32 15, i64 6
  %122 = getelementptr inbounds %struct.FileLayout, ptr %37, i64 0, i32 15, i64 7
  br label %123

123:                                              ; preds = %114, %208
  %124 = phi i32 [ 0, %114 ], [ %209, %208 ]
  %125 = tail call ptr @filelist_file(ptr noundef %106, i32 noundef %124) #9
  %126 = icmp eq ptr %125, null
  br i1 %126, label %208, label %127

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.direntry, ptr %125, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !107
  %130 = tail call ptr @UI_GetStyle() #9
  %131 = getelementptr inbounds %struct.uiStyle, ptr %130, i64 0, i32 6
  tail call void @uiStyleFontSet(ptr noundef nonnull %131) #9
  %132 = load i16, ptr %131, align 8, !tbaa !87
  %133 = sext i16 %132 to i32
  %134 = tail call float @BLF_width(i32 noundef %133, ptr noundef %129, i64 noundef 1024) #9
  %135 = load float, ptr %115, align 4, !tbaa !106
  %136 = fcmp ogt float %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %127
  store float %134, ptr %115, align 4, !tbaa !106
  br label %138

138:                                              ; preds = %137, %127
  %139 = getelementptr inbounds %struct.direntry, ptr %125, i64 0, i32 11
  %140 = tail call ptr @UI_GetStyle() #9
  %141 = getelementptr inbounds %struct.uiStyle, ptr %140, i64 0, i32 6
  tail call void @uiStyleFontSet(ptr noundef nonnull %141) #9
  %142 = load i16, ptr %141, align 8, !tbaa !87
  %143 = sext i16 %142 to i32
  %144 = tail call float @BLF_width(i32 noundef %143, ptr noundef nonnull %139, i64 noundef 1024) #9
  %145 = load float, ptr %116, align 4, !tbaa !106
  %146 = fcmp ogt float %144, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %138
  store float %144, ptr %116, align 4, !tbaa !106
  br label %148

148:                                              ; preds = %147, %138
  %149 = getelementptr inbounds %struct.direntry, ptr %125, i64 0, i32 10
  %150 = tail call ptr @UI_GetStyle() #9
  %151 = getelementptr inbounds %struct.uiStyle, ptr %150, i64 0, i32 6
  tail call void @uiStyleFontSet(ptr noundef nonnull %151) #9
  %152 = load i16, ptr %151, align 8, !tbaa !87
  %153 = sext i16 %152 to i32
  %154 = tail call float @BLF_width(i32 noundef %153, ptr noundef nonnull %149, i64 noundef 1024) #9
  %155 = load float, ptr %117, align 4, !tbaa !106
  %156 = fcmp ogt float %154, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %148
  store float %154, ptr %117, align 4, !tbaa !106
  br label %158

158:                                              ; preds = %157, %148
  %159 = getelementptr inbounds %struct.direntry, ptr %125, i64 0, i32 5
  %160 = tail call ptr @UI_GetStyle() #9
  %161 = getelementptr inbounds %struct.uiStyle, ptr %160, i64 0, i32 6
  tail call void @uiStyleFontSet(ptr noundef nonnull %161) #9
  %162 = load i16, ptr %161, align 8, !tbaa !87
  %163 = sext i16 %162 to i32
  %164 = tail call float @BLF_width(i32 noundef %163, ptr noundef nonnull %159, i64 noundef 1024) #9
  %165 = load float, ptr %118, align 4, !tbaa !106
  %166 = fcmp ogt float %164, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %158
  store float %164, ptr %118, align 4, !tbaa !106
  br label %168

168:                                              ; preds = %167, %158
  %169 = getelementptr inbounds %struct.direntry, ptr %125, i64 0, i32 6
  %170 = tail call ptr @UI_GetStyle() #9
  %171 = getelementptr inbounds %struct.uiStyle, ptr %170, i64 0, i32 6
  tail call void @uiStyleFontSet(ptr noundef nonnull %171) #9
  %172 = load i16, ptr %171, align 8, !tbaa !87
  %173 = sext i16 %172 to i32
  %174 = tail call float @BLF_width(i32 noundef %173, ptr noundef nonnull %169, i64 noundef 1024) #9
  %175 = load float, ptr %119, align 4, !tbaa !106
  %176 = fcmp ogt float %174, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %168
  store float %174, ptr %119, align 4, !tbaa !106
  br label %178

178:                                              ; preds = %177, %168
  %179 = getelementptr inbounds %struct.direntry, ptr %125, i64 0, i32 7
  %180 = tail call ptr @UI_GetStyle() #9
  %181 = getelementptr inbounds %struct.uiStyle, ptr %180, i64 0, i32 6
  tail call void @uiStyleFontSet(ptr noundef nonnull %181) #9
  %182 = load i16, ptr %181, align 8, !tbaa !87
  %183 = sext i16 %182 to i32
  %184 = tail call float @BLF_width(i32 noundef %183, ptr noundef nonnull %179, i64 noundef 1024) #9
  %185 = load float, ptr %120, align 4, !tbaa !106
  %186 = fcmp ogt float %184, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %178
  store float %184, ptr %120, align 4, !tbaa !106
  br label %188

188:                                              ; preds = %187, %178
  %189 = getelementptr inbounds %struct.direntry, ptr %125, i64 0, i32 8
  %190 = tail call ptr @UI_GetStyle() #9
  %191 = getelementptr inbounds %struct.uiStyle, ptr %190, i64 0, i32 6
  tail call void @uiStyleFontSet(ptr noundef nonnull %191) #9
  %192 = load i16, ptr %191, align 8, !tbaa !87
  %193 = sext i16 %192 to i32
  %194 = tail call float @BLF_width(i32 noundef %193, ptr noundef nonnull %189, i64 noundef 1024) #9
  %195 = load float, ptr %121, align 4, !tbaa !106
  %196 = fcmp ogt float %194, %195
  br i1 %196, label %197, label %198

197:                                              ; preds = %188
  store float %194, ptr %121, align 4, !tbaa !106
  br label %198

198:                                              ; preds = %197, %188
  %199 = getelementptr inbounds %struct.direntry, ptr %125, i64 0, i32 9
  %200 = tail call ptr @UI_GetStyle() #9
  %201 = getelementptr inbounds %struct.uiStyle, ptr %200, i64 0, i32 6
  tail call void @uiStyleFontSet(ptr noundef nonnull %201) #9
  %202 = load i16, ptr %201, align 8, !tbaa !87
  %203 = sext i16 %202 to i32
  %204 = tail call float @BLF_width(i32 noundef %203, ptr noundef nonnull %199, i64 noundef 1024) #9
  %205 = load float, ptr %122, align 4, !tbaa !106
  %206 = fcmp ogt float %204, %205
  br i1 %206, label %207, label %208

207:                                              ; preds = %198
  store float %204, ptr %122, align 4, !tbaa !106
  br label %208

208:                                              ; preds = %207, %198, %123
  %209 = add nuw nsw i32 %124, 1
  %210 = icmp eq i32 %209, %107
  br i1 %210, label %211, label %123, !llvm.loop !112

211:                                              ; preds = %208, %83
  %212 = load i16, ptr %39, align 2, !tbaa !62
  %213 = icmp eq i16 %212, 1
  %214 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !99
  %215 = sitofp i16 %214 to float
  %216 = fmul float %215, 0x3FE99999A0000000
  %217 = fptosi float %216 to i32
  %218 = getelementptr inbounds %struct.FileLayout, ptr %37, i64 0, i32 15
  %219 = load float, ptr %218, align 4, !tbaa !106
  %220 = fptosi float %219 to i32
  br i1 %213, label %221, label %229

221:                                              ; preds = %211
  %222 = getelementptr inbounds %struct.FileLayout, ptr %37, i64 0, i32 15, i64 3
  %223 = load float, ptr %222, align 4, !tbaa !106
  %224 = fptosi float %223 to i32
  %225 = add i32 %111, %112
  %226 = add i32 %225, %220
  %227 = add i32 %226, %217
  %228 = add nsw i32 %227, %224
  br label %262

229:                                              ; preds = %211
  %230 = getelementptr inbounds %struct.FileLayout, ptr %37, i64 0, i32 15, i64 4
  %231 = load float, ptr %230, align 4, !tbaa !106
  %232 = fptosi float %231 to i32
  %233 = getelementptr inbounds %struct.FileLayout, ptr %37, i64 0, i32 15, i64 5
  %234 = load float, ptr %233, align 4, !tbaa !106
  %235 = fptosi float %234 to i32
  %236 = getelementptr inbounds %struct.FileLayout, ptr %37, i64 0, i32 15, i64 6
  %237 = load float, ptr %236, align 4, !tbaa !106
  %238 = fptosi float %237 to i32
  %239 = getelementptr inbounds %struct.FileLayout, ptr %37, i64 0, i32 15, i64 7
  %240 = load float, ptr %239, align 4, !tbaa !106
  %241 = fptosi float %240 to i32
  %242 = getelementptr inbounds %struct.FileLayout, ptr %37, i64 0, i32 15, i64 1
  %243 = load float, ptr %242, align 4, !tbaa !106
  %244 = fptosi float %243 to i32
  %245 = getelementptr inbounds %struct.FileLayout, ptr %37, i64 0, i32 15, i64 2
  %246 = load float, ptr %245, align 4, !tbaa !106
  %247 = fptosi float %246 to i32
  %248 = getelementptr inbounds %struct.FileLayout, ptr %37, i64 0, i32 15, i64 3
  %249 = load float, ptr %248, align 4, !tbaa !106
  %250 = fptosi float %249 to i32
  %251 = mul i32 %111, 7
  %252 = add i32 %251, %112
  %253 = add i32 %252, %220
  %254 = add i32 %253, %217
  %255 = add i32 %254, %232
  %256 = add i32 %255, %235
  %257 = add i32 %256, %238
  %258 = add i32 %257, %241
  %259 = add i32 %258, %244
  %260 = add i32 %259, %247
  %261 = add i32 %260, %250
  br label %262

262:                                              ; preds = %229, %221
  %263 = phi i32 [ %228, %221 ], [ %261, %229 ]
  %264 = add nsw i32 %263, %111
  %265 = getelementptr inbounds %struct.FileLayout, ptr %37, i64 0, i32 2
  store i32 %264, ptr %265, align 4, !tbaa !70
  %266 = load i32, ptr %105, align 4, !tbaa !85
  %267 = icmp sgt i32 %266, 0
  %268 = getelementptr inbounds %struct.FileLayout, ptr %37, i64 0, i32 9
  br i1 %267, label %269, label %271

269:                                              ; preds = %262
  %270 = sdiv i32 %24, %266
  br label %272

271:                                              ; preds = %262
  store i32 1, ptr %105, align 4, !tbaa !85
  br label %272

272:                                              ; preds = %271, %269
  %273 = phi i32 [ %24, %271 ], [ %270, %269 ]
  %274 = add nsw i32 %273, 1
  store i32 %274, ptr %268, align 4, !tbaa !86
  %275 = load ptr, ptr %10, align 8, !tbaa !66
  %276 = getelementptr inbounds %struct.FileLayout, ptr %275, i64 0, i32 9
  %277 = load i32, ptr %276, align 4, !tbaa !86
  %278 = load i32, ptr %87, align 4, !tbaa !71
  %279 = shl nsw i32 %278, 1
  %280 = add nsw i32 %279, %264
  %281 = mul nsw i32 %280, %277
  %282 = add nsw i32 %281, %279
  %283 = getelementptr inbounds %struct.FileLayout, ptr %37, i64 0, i32 10
  store i32 %282, ptr %283, align 4, !tbaa !104
  br label %284

284:                                              ; preds = %272, %76
  %285 = phi i32 [ 1, %272 ], [ 2, %76 ]
  %286 = getelementptr inbounds %struct.FileLayout, ptr %37, i64 0, i32 12
  store i32 %285, ptr %286, align 4, !tbaa !69
  %287 = getelementptr inbounds %struct.FileLayout, ptr %37, i64 0, i32 13
  store i32 0, ptr %287, align 4, !tbaa !67
  br label %288

288:                                              ; preds = %17, %284
  ret void
}

declare i32 @filelist_numfiles(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @ED_fileselect_get_layout(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.SpaceFile, ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !66
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @ED_fileselect_init_layout(ptr noundef %0, ptr noundef %1)
  br label %7

7:                                                ; preds = %6, %2
  %8 = load ptr, ptr %3, align 8, !tbaa !66
  ret ptr %8
}

; Function Attrs: nounwind uwtable
define dso_local void @file_change_dir(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_manager(ptr noundef %0) #9
  %4 = tail call ptr @CTX_wm_space_file(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.SpaceFile, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %44, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.SpaceFile, ptr %4, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !97
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  tail call void @thumbnails_stop(ptr noundef %3, ptr noundef nonnull %10) #9
  %13 = load ptr, ptr %9, align 8, !tbaa !97
  tail call void @filelist_freelib(ptr noundef %13) #9
  %14 = load ptr, ptr %9, align 8, !tbaa !97
  tail call void @filelist_free(ptr noundef %14) #9
  br label %15

15:                                               ; preds = %8, %12
  %16 = load ptr, ptr %5, align 8, !tbaa !34
  %17 = getelementptr inbounds %struct.FileSelectParams, ptr %16, i64 0, i32 6
  store i32 -1, ptr %17, align 4, !tbaa !113
  tail call void @WM_main_add_notifier(i32 noundef 252051456, ptr noundef null) #9
  %18 = icmp eq i32 %1, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %5, align 8, !tbaa !34
  %21 = getelementptr inbounds %struct.FileSelectParams, ptr %20, i64 0, i32 1
  %22 = tail call zeroext i8 @BLI_is_dir(ptr noundef nonnull %21) #9
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load ptr, ptr %5, align 8, !tbaa !34
  %26 = getelementptr inbounds %struct.FileSelectParams, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %9, align 8, !tbaa !97
  %28 = tail call ptr @filelist_dir(ptr noundef %27) #9
  %29 = tail call ptr @BLI_strncpy(ptr noundef nonnull %26, ptr noundef %28, i64 noundef 1056) #9
  br label %30

30:                                               ; preds = %24, %19, %15
  %31 = load ptr, ptr %9, align 8, !tbaa !97
  %32 = load ptr, ptr %5, align 8, !tbaa !34
  %33 = getelementptr inbounds %struct.FileSelectParams, ptr %32, i64 0, i32 1
  tail call void @filelist_setdir(ptr noundef %31, ptr noundef nonnull %33) #9
  %34 = tail call i32 @folderlist_clear_next(ptr noundef %4) #9
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.SpaceFile, ptr %4, i64 0, i32 8
  %38 = load ptr, ptr %37, align 8, !tbaa !114
  tail call void @folderlist_free(ptr noundef %38) #9
  br label %39

39:                                               ; preds = %36, %30
  %40 = getelementptr inbounds %struct.SpaceFile, ptr %4, i64 0, i32 7
  %41 = load ptr, ptr %40, align 8, !tbaa !65
  %42 = load ptr, ptr %5, align 8, !tbaa !34
  %43 = getelementptr inbounds %struct.FileSelectParams, ptr %42, i64 0, i32 1
  tail call void @folderlist_pushdir(ptr noundef %41, ptr noundef nonnull %43) #9
  tail call void @file_draw_check_cb(ptr noundef %0, ptr noundef null, ptr noundef null) #9
  br label %44

44:                                               ; preds = %39, %2
  ret void
}

declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_space_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ED_fileselect_clear(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.SpaceFile, ptr %1, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !97
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  tail call void @thumbnails_stop(ptr noundef %0, ptr noundef nonnull %4) #9
  %7 = load ptr, ptr %3, align 8, !tbaa !97
  tail call void @filelist_freelib(ptr noundef %7) #9
  %8 = load ptr, ptr %3, align 8, !tbaa !97
  tail call void @filelist_free(ptr noundef %8) #9
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct.SpaceFile, ptr %1, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct.FileSelectParams, ptr %11, i64 0, i32 6
  store i32 -1, ptr %12, align 4, !tbaa !113
  tail call void @WM_main_add_notifier(i32 noundef 252051456, ptr noundef null) #9
  ret void
}

declare zeroext i8 @BLI_is_dir(ptr noundef) local_unnamed_addr #2

declare ptr @filelist_dir(ptr noundef) local_unnamed_addr #2

declare void @filelist_setdir(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @folderlist_clear_next(ptr noundef) local_unnamed_addr #2

declare void @folderlist_free(ptr noundef) local_unnamed_addr #2

declare void @file_draw_check_cb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @file_select_match(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.SpaceFile, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !97
  %6 = tail call i32 @filelist_numfiles(ptr noundef %5) #9
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %31

8:                                                ; preds = %3, %27
  %9 = phi i32 [ %28, %27 ], [ 0, %3 ]
  %10 = phi i32 [ %29, %27 ], [ 0, %3 ]
  %11 = load ptr, ptr %4, align 8, !tbaa !97
  %12 = tail call ptr @filelist_file(ptr noundef %11, i32 noundef %10) #9
  %13 = getelementptr inbounds %struct.direntry, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !107
  %15 = tail call i32 @fnmatch(ptr noundef %1, ptr noundef %14, i32 noundef 0) #9
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.direntry, ptr %12, i64 0, i32 16
  %19 = load i32, ptr %18, align 8, !tbaa !115
  %20 = or i32 %19, 8
  store i32 %20, ptr %18, align 8, !tbaa !115
  %21 = icmp eq i32 %9, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load ptr, ptr %13, align 8, !tbaa !107
  %24 = tail call ptr @BLI_strncpy(ptr noundef %2, ptr noundef %23, i64 noundef 1024) #9
  br label %25

25:                                               ; preds = %22, %17
  %26 = add nsw i32 %9, 1
  br label %27

27:                                               ; preds = %8, %25
  %28 = phi i32 [ %26, %25 ], [ %9, %8 ]
  %29 = add nuw nsw i32 %10, 1
  %30 = icmp eq i32 %29, %6
  br i1 %30, label %31, label %8, !llvm.loop !116

31:                                               ; preds = %27, %3
  %32 = phi i32 [ 0, %3 ], [ %28, %27 ]
  ret i32 %32
}

declare ptr @filelist_file(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @fnmatch(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @autocomplete_directory(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = alloca [1024 x i8], align 16
  %5 = alloca [1024 x i8], align 16
  %6 = alloca %struct.stat, align 8
  %7 = tail call ptr @CTX_wm_space_file(ptr noundef %0) #9
  %8 = load i8, ptr %1, align 1, !tbaa !46
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %55, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.SpaceFile, ptr %7, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !97
  %13 = icmp eq ptr %12, null
  br i1 %13, label %55, label %14

14:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #9
  call void @BLI_split_dir_part(ptr noundef nonnull %1, ptr noundef nonnull %4, i64 noundef 1024) #9
  %15 = call ptr @opendir(ptr noundef nonnull %4)
  %16 = icmp eq ptr %15, null
  br i1 %16, label %53, label %17

17:                                               ; preds = %14
  %18 = call ptr @autocomplete_begin(ptr noundef nonnull %1, i64 noundef 1024) #9
  %19 = call ptr @readdir(ptr noundef nonnull %15) #9
  %20 = icmp eq ptr %19, null
  br i1 %20, label %43, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.stat, ptr %6, i64 0, i32 3
  br label %23

23:                                               ; preds = %21, %40
  %24 = phi ptr [ %19, %21 ], [ %41, %40 ]
  %25 = getelementptr inbounds %struct.dirent, ptr %24, i64 0, i32 4
  %26 = call i32 @strcmp(ptr noundef nonnull dereferenceable(2) @.str.25, ptr noundef nonnull dereferenceable(1) %25) #10
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %23
  %29 = call i32 @strcmp(ptr noundef nonnull dereferenceable(3) @.str.26, ptr noundef nonnull dereferenceable(1) %25) #10
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %6) #9
  call void @BLI_join_dirfile(ptr noundef nonnull %5, i64 noundef 1024, ptr noundef nonnull %4, ptr noundef nonnull %25) #9
  %32 = call i32 @BLI_stat(ptr noundef nonnull %5, ptr noundef nonnull %6) #9
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i32, ptr %22, align 8, !tbaa !117
  %36 = and i32 %35, 61440
  %37 = icmp eq i32 %36, 16384
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  call void @autocomplete_do_name(ptr noundef %18, ptr noundef nonnull %5) #9
  br label %39

39:                                               ; preds = %34, %38, %31
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #9
  br label %40

40:                                               ; preds = %23, %28, %39
  %41 = call ptr @readdir(ptr noundef nonnull %15) #9
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %23, !llvm.loop !118

43:                                               ; preds = %40, %17
  %44 = call i32 @closedir(ptr noundef nonnull %15)
  %45 = call i32 @autocomplete_end(ptr noundef %18, ptr noundef nonnull %1) #9
  switch i32 %45, label %48 [
    i32 0, label %53
    i32 1, label %46
  ]

46:                                               ; preds = %43
  %47 = call i32 @BLI_add_slash(ptr noundef nonnull %1) #9
  br label %53

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.SpaceFile, ptr %7, i64 0, i32 5
  %50 = load ptr, ptr %49, align 8, !tbaa !34
  %51 = getelementptr inbounds %struct.FileSelectParams, ptr %50, i64 0, i32 1
  %52 = call ptr @BLI_strncpy(ptr noundef nonnull %51, ptr noundef nonnull %1, i64 noundef 1056) #9
  br label %53

53:                                               ; preds = %48, %46, %43, %14
  %54 = phi i32 [ 0, %14 ], [ %45, %43 ], [ %45, %46 ], [ %45, %48 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #9
  br label %55

55:                                               ; preds = %53, %10, %3
  %56 = phi i32 [ %54, %53 ], [ 0, %10 ], [ 0, %3 ]
  ret i32 %56
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @opendir(ptr nocapture noundef readonly) local_unnamed_addr #7

declare ptr @autocomplete_begin(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @readdir(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

declare void @BLI_join_dirfile(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BLI_stat(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @autocomplete_do_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @closedir(ptr nocapture noundef) local_unnamed_addr #7

declare i32 @autocomplete_end(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BLI_add_slash(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @autocomplete_file(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = tail call ptr @CTX_wm_space_file(ptr noundef %0) #9
  %5 = load i8, ptr %1, align 1, !tbaa !46
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %33, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.SpaceFile, ptr %4, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !97
  %10 = icmp eq ptr %9, null
  br i1 %10, label %33, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @autocomplete_begin(ptr noundef nonnull %1, i64 noundef 1024) #9
  %13 = load ptr, ptr %8, align 8, !tbaa !97
  %14 = tail call i32 @filelist_numfiles(ptr noundef %13) #9
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %11, %28
  %17 = phi i32 [ %29, %28 ], [ 0, %11 ]
  %18 = load ptr, ptr %8, align 8, !tbaa !97
  %19 = tail call ptr @filelist_file(ptr noundef %18, i32 noundef %17) #9
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %16
  %22 = load i32, ptr %19, align 8, !tbaa !119
  %23 = trunc i32 %22 to i16
  %24 = and i16 %23, -4096
  switch i16 %24, label %28 [
    i16 -32768, label %25
    i16 16384, label %25
  ]

25:                                               ; preds = %21, %21
  %26 = getelementptr inbounds %struct.direntry, ptr %19, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !107
  tail call void @autocomplete_do_name(ptr noundef %12, ptr noundef %27) #9
  br label %28

28:                                               ; preds = %21, %25, %16
  %29 = add nuw nsw i32 %17, 1
  %30 = icmp eq i32 %29, %14
  br i1 %30, label %31, label %16, !llvm.loop !120

31:                                               ; preds = %28, %11
  %32 = tail call i32 @autocomplete_end(ptr noundef %12, ptr noundef nonnull %1) #9
  br label %33

33:                                               ; preds = %31, %7, %3
  %34 = phi i32 [ %32, %31 ], [ 0, %7 ], [ 0, %3 ]
  ret i32 %34
}

declare void @thumbnails_stop(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @filelist_freelib(ptr noundef) local_unnamed_addr #2

declare void @filelist_free(ptr noundef) local_unnamed_addr #2

declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ED_fileselect_exit(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %25, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.SpaceFile, ptr %1, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @WM_event_fileselect_event(ptr noundef %0, ptr noundef nonnull %6, i32 noundef 5) #9
  store ptr null, ptr %5, align 8, !tbaa !42
  br label %9

9:                                                ; preds = %8, %4
  %10 = getelementptr inbounds %struct.SpaceFile, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !65
  tail call void @folderlist_free(ptr noundef %11) #9
  %12 = getelementptr inbounds %struct.SpaceFile, ptr %1, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !114
  tail call void @folderlist_free(ptr noundef %13) #9
  %14 = getelementptr inbounds %struct.SpaceFile, ptr %1, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !97
  %16 = icmp eq ptr %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %9
  tail call void @thumbnails_stop(ptr noundef %0, ptr noundef nonnull %15) #9
  %18 = load ptr, ptr %14, align 8, !tbaa !97
  tail call void @filelist_freelib(ptr noundef %18) #9
  %19 = load ptr, ptr %14, align 8, !tbaa !97
  tail call void @filelist_free(ptr noundef %19) #9
  %20 = getelementptr inbounds %struct.SpaceFile, ptr %1, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  %22 = getelementptr inbounds %struct.FileSelectParams, ptr %21, i64 0, i32 6
  store i32 -1, ptr %22, align 4, !tbaa !113
  tail call void @WM_main_add_notifier(i32 noundef 252051456, ptr noundef null) #9
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  %24 = load ptr, ptr %14, align 8, !tbaa !97
  tail call void %23(ptr noundef %24) #9
  store ptr null, ptr %14, align 8, !tbaa !97
  br label %25

25:                                               ; preds = %2, %17, %9
  ret void
}

declare void @WM_event_fileselect_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }

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
!34 = !{!35, !36, i64 40}
!35 = !{!"SpaceFile", !36, i64 0, !36, i64 8, !39, i64 16, !40, i64 32, !40, i64 36, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !41, i64 96, !41, i64 98, !41, i64 100, !41, i64 102}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ListBase", !36, i64 0, !36, i64 8}
!40 = !{!"int", !37, i64 0}
!41 = !{!"short", !37, i64 0}
!42 = !{!35, !36, i64 72}
!43 = !{!36, !36, i64 0}
!44 = !{!45, !36, i64 0}
!45 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !39, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !37, i64 2090, !41, i64 2092, !40, i64 2096, !40, i64 2100, !37, i64 2104, !40, i64 2108, !40, i64 2112, !37, i64 2116}
!46 = !{!37, !37, i64 0}
!47 = !{!48, !36, i64 112}
!48 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!49 = !{!48, !36, i64 88}
!50 = !{!51, !36, i64 88}
!51 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !39, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !52, i64 152, !41, i64 184}
!52 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!53 = !{!54, !41, i64 1996}
!54 = !{!"FileSelectParams", !37, i64 0, !37, i64 96, !37, i64 1152, !37, i64 1408, !37, i64 1664, !37, i64 1920, !40, i64 1984, !40, i64 1988, !40, i64 1992, !41, i64 1996, !41, i64 1998, !41, i64 2000, !41, i64 2002, !41, i64 2004, !41, i64 2006, !37, i64 2008}
!55 = !{!54, !41, i64 1998}
!56 = !{!54, !41, i64 2004}
!57 = !{!58, !40, i64 8484}
!58 = !{!"UserDef", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !40, i64 8468, !41, i64 8472, !41, i64 8474, !41, i64 8476, !41, i64 8478, !41, i64 8480, !41, i64 8482, !40, i64 8484, !40, i64 8488, !40, i64 8492, !41, i64 8496, !41, i64 8498, !40, i64 8500, !40, i64 8504, !40, i64 8508, !40, i64 8512, !40, i64 8516, !40, i64 8520, !40, i64 8524, !41, i64 8528, !41, i64 8530, !41, i64 8532, !41, i64 8534, !39, i64 8536, !39, i64 8552, !39, i64 8568, !39, i64 8584, !39, i64 8600, !39, i64 8616, !39, i64 8632, !37, i64 8648, !41, i64 8712, !41, i64 8714, !41, i64 8716, !41, i64 8718, !41, i64 8720, !41, i64 8722, !41, i64 8724, !41, i64 8726, !37, i64 8728, !41, i64 8896, !41, i64 8898, !41, i64 8900, !41, i64 8902, !41, i64 8904, !41, i64 8906, !41, i64 8908, !41, i64 8910, !40, i64 8912, !40, i64 8916, !41, i64 8920, !41, i64 8922, !41, i64 8924, !41, i64 8926, !41, i64 8928, !41, i64 8930, !41, i64 8932, !41, i64 8934, !41, i64 8936, !41, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !41, i64 8944, !41, i64 8946, !41, i64 8948, !41, i64 8950, !41, i64 8952, !41, i64 8954, !59, i64 8956, !59, i64 8960, !40, i64 8964, !41, i64 8968, !41, i64 8970, !59, i64 8972, !41, i64 8976, !41, i64 8978, !41, i64 8980, !41, i64 8982, !60, i64 8984, !37, i64 9760, !37, i64 9772, !41, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !40, i64 10896, !40, i64 10900, !59, i64 10904, !59, i64 10908, !40, i64 10912, !41, i64 10916, !41, i64 10918, !41, i64 10920, !41, i64 10922, !41, i64 10924, !41, i64 10926, !61, i64 10928}
!59 = !{!"float", !37, i64 0}
!60 = !{!"ColorBand", !41, i64 0, !41, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!61 = !{!"WalkNavigation", !59, i64 0, !59, i64 4, !59, i64 8, !59, i64 12, !59, i64 16, !59, i64 20, !41, i64 24, !37, i64 26}
!62 = !{!54, !41, i64 2002}
!63 = !{!58, !40, i64 8}
!64 = !{!54, !41, i64 2000}
!65 = !{!35, !36, i64 56}
!66 = !{!35, !36, i64 88}
!67 = !{!68, !40, i64 52}
!68 = !{!"FileLayout", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !37, i64 60}
!69 = !{!68, !40, i64 48}
!70 = !{!68, !40, i64 8}
!71 = !{!68, !40, i64 16}
!72 = !{!73, !59, i64 4}
!73 = !{!"rctf", !59, i64 0, !59, i64 4, !59, i64 8, !59, i64 12}
!74 = !{!73, !59, i64 0}
!75 = !{!68, !40, i64 12}
!76 = !{!68, !40, i64 20}
!77 = !{!73, !59, i64 12}
!78 = !{!73, !59, i64 8}
!79 = !{!40, !40, i64 0}
!80 = !{!81, !40, i64 0}
!81 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!82 = !{!81, !40, i64 8}
!83 = !{!81, !40, i64 4}
!84 = !{!81, !40, i64 12}
!85 = !{!68, !40, i64 32}
!86 = !{!68, !40, i64 36}
!87 = !{!88, !41, i64 176}
!88 = !{!"uiStyle", !36, i64 0, !36, i64 8, !37, i64 16, !89, i64 80, !89, i64 112, !89, i64 144, !89, i64 176, !59, i64 208, !41, i64 212, !41, i64 214, !41, i64 216, !41, i64 218, !41, i64 220, !41, i64 222, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230}
!89 = !{!"uiFontStyle", !41, i64 0, !41, i64 2, !41, i64 4, !37, i64 6, !41, i64 12, !41, i64 14, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !59, i64 24, !59, i64 28}
!90 = distinct !{!90, !91, !92}
!91 = !{!"llvm.loop.mustprogress"}
!92 = !{!"llvm.loop.unroll.disable"}
!93 = distinct !{!93, !91, !92}
!94 = !{!88, !41, i64 178}
!95 = !{!58, !59, i64 10908}
!96 = !{!58, !40, i64 8524}
!97 = !{!35, !36, i64 48}
!98 = !{!68, !40, i64 56}
!99 = !{!58, !41, i64 8948}
!100 = !{!68, !40, i64 0}
!101 = !{!68, !40, i64 4}
!102 = !{!68, !40, i64 24}
!103 = !{!68, !40, i64 28}
!104 = !{!68, !40, i64 40}
!105 = !{!68, !40, i64 44}
!106 = !{!59, !59, i64 0}
!107 = !{!108, !36, i64 8}
!108 = !{!"direntry", !40, i64 0, !36, i64 8, !36, i64 16, !109, i64 24, !40, i64 168, !37, i64 172, !37, i64 188, !37, i64 192, !37, i64 196, !37, i64 200, !37, i64 216, !37, i64 224, !37, i64 240, !36, i64 256, !40, i64 264, !36, i64 272, !40, i64 280}
!109 = !{!"stat", !110, i64 0, !110, i64 8, !110, i64 16, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !110, i64 40, !110, i64 48, !110, i64 56, !110, i64 64, !111, i64 72, !111, i64 88, !111, i64 104, !37, i64 120}
!110 = !{!"long", !37, i64 0}
!111 = !{!"timespec", !110, i64 0, !110, i64 8}
!112 = distinct !{!112, !91, !92}
!113 = !{!54, !40, i64 1984}
!114 = !{!35, !36, i64 64}
!115 = !{!108, !40, i64 280}
!116 = distinct !{!116, !91, !92}
!117 = !{!109, !40, i64 24}
!118 = distinct !{!118, !91, !92}
!119 = !{!108, !40, i64 0}
!120 = distinct !{!120, !91, !92}
