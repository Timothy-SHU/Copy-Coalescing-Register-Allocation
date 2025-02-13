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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ED_fileselect_get_params(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.SpaceFile, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = tail call signext i16 @ED_fileselect_set_params(ptr noundef nonnull %0) #12
  %7 = load ptr, ptr %2, align 8, !tbaa !34
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi ptr [ %7, %5 ], [ %3, %1 ]
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef signext i16 @ED_fileselect_set_params(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca [1024 x i8], align 16
  %3 = getelementptr inbounds %struct.SpaceFile, ptr %0, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.SpaceFile, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !43
  %10 = tail call ptr %9(i64 noundef 2016, ptr noundef nonnull @.str) #13
  store ptr %10, ptr %5, align 8, !tbaa !34
  %11 = load ptr, ptr @G, align 8, !tbaa !44
  %12 = getelementptr inbounds %struct.Main, ptr %11, i64 0, i32 2
  %13 = getelementptr inbounds %struct.FileSelectParams, ptr %10, i64 0, i32 1
  %14 = getelementptr inbounds %struct.FileSelectParams, ptr %10, i64 0, i32 2
  tail call void @BLI_split_dirfile(ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14, i64 noundef 1056, i64 noundef 256) #13
  %15 = load ptr, ptr %5, align 8, !tbaa !34
  %16 = getelementptr inbounds %struct.FileSelectParams, ptr %15, i64 0, i32 5
  store i8 0, ptr %16, align 4, !tbaa !46
  %17 = load ptr, ptr %5, align 8, !tbaa !34
  br label %18

18:                                               ; preds = %8, %1
  %19 = phi ptr [ %17, %8 ], [ %6, %1 ]
  %20 = icmp eq ptr %4, null
  br i1 %20, label %322, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.wmOperator, ptr %4, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !47
  %24 = tail call ptr @RNA_struct_find_property(ptr noundef %23, ptr noundef nonnull @.str.1) #13
  %25 = icmp eq ptr %24, null
  %26 = load ptr, ptr %22, align 8, !tbaa !47
  %27 = tail call ptr @RNA_struct_find_property(ptr noundef %26, ptr noundef nonnull @.str.2) #13
  %28 = icmp eq ptr %27, null
  %29 = load ptr, ptr %22, align 8, !tbaa !47
  %30 = tail call ptr @RNA_struct_find_property(ptr noundef %29, ptr noundef nonnull @.str.3) #13
  %31 = icmp eq ptr %30, null
  %32 = load ptr, ptr %22, align 8, !tbaa !47
  %33 = tail call ptr @RNA_struct_find_property(ptr noundef %32, ptr noundef nonnull @.str.4) #13
  %34 = icmp ne ptr %33, null
  %35 = load ptr, ptr %22, align 8, !tbaa !47
  %36 = tail call ptr @RNA_struct_find_property(ptr noundef %35, ptr noundef nonnull @.str.5) #13
  %37 = icmp eq ptr %36, null
  %38 = getelementptr inbounds %struct.wmOperator, ptr %4, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !49
  %40 = getelementptr inbounds %struct.wmOperatorType, ptr %39, i64 0, i32 11
  %41 = load ptr, ptr %40, align 8, !tbaa !50
  %42 = tail call ptr @RNA_struct_ui_name(ptr noundef %41) #13
  %43 = tail call ptr @BLI_strncpy_utf8(ptr noundef %19, ptr noundef %42, i64 noundef 96) #13
  %44 = load ptr, ptr %22, align 8, !tbaa !47
  %45 = tail call ptr @RNA_struct_find_property(ptr noundef %44, ptr noundef nonnull @.str.6) #13
  %46 = icmp eq ptr %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %21
  %48 = load ptr, ptr %22, align 8, !tbaa !47
  %49 = tail call i32 @RNA_int_get(ptr noundef %48, ptr noundef nonnull @.str.6) #13
  %50 = trunc i32 %49 to i16
  br label %51

51:                                               ; preds = %21, %47
  %52 = phi i16 [ %50, %47 ], [ 9, %21 ]
  %53 = getelementptr inbounds %struct.FileSelectParams, ptr %19, i64 0, i32 9
  store i16 %52, ptr %53, align 4
  br i1 %28, label %72, label %54

54:                                               ; preds = %51
  %55 = load ptr, ptr %22, align 8, !tbaa !47
  %56 = tail call zeroext i8 @RNA_struct_property_is_set_ex(ptr noundef %55, ptr noundef nonnull @.str.2, i8 noundef zeroext 0) #13
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %72, label %58

58:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %2) #14
  %59 = load ptr, ptr %22, align 8, !tbaa !47
  call void @RNA_string_get(ptr noundef %59, ptr noundef nonnull @.str.2, ptr noundef nonnull %2) #13
  %60 = load i16, ptr %53, align 4, !tbaa !53
  %61 = icmp eq i16 %60, 1
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.FileSelectParams, ptr %19, i64 0, i32 1
  %64 = call ptr @BLI_strncpy(ptr noundef nonnull %63, ptr noundef nonnull %2, i64 noundef 1056) #13
  %65 = load ptr, ptr %5, align 8, !tbaa !34
  %66 = getelementptr inbounds %struct.FileSelectParams, ptr %65, i64 0, i32 2
  store i8 0, ptr %66, align 4, !tbaa !46
  br label %71

67:                                               ; preds = %58
  %68 = load ptr, ptr %5, align 8, !tbaa !34
  %69 = getelementptr inbounds %struct.FileSelectParams, ptr %68, i64 0, i32 1
  %70 = getelementptr inbounds %struct.FileSelectParams, ptr %68, i64 0, i32 2
  call void @BLI_split_dirfile(ptr noundef nonnull %2, ptr noundef nonnull %69, ptr noundef nonnull %70, i64 noundef 1056, i64 noundef 256) #13
  br label %71

71:                                               ; preds = %67, %62
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %2) #14
  br label %90

72:                                               ; preds = %54, %51
  br i1 %34, label %73, label %82

73:                                               ; preds = %72
  %74 = load ptr, ptr %22, align 8, !tbaa !47
  %75 = tail call zeroext i8 @RNA_struct_property_is_set_ex(ptr noundef %74, ptr noundef nonnull @.str.4, i8 noundef zeroext 0) #13
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %73
  %78 = load ptr, ptr %22, align 8, !tbaa !47
  %79 = getelementptr inbounds %struct.FileSelectParams, ptr %19, i64 0, i32 1
  tail call void @RNA_string_get(ptr noundef %78, ptr noundef nonnull @.str.4, ptr noundef nonnull %79) #13
  %80 = load ptr, ptr %5, align 8, !tbaa !34
  %81 = getelementptr inbounds %struct.FileSelectParams, ptr %80, i64 0, i32 2
  store i8 0, ptr %81, align 4, !tbaa !46
  br label %82

82:                                               ; preds = %77, %73, %72
  br i1 %31, label %90, label %83

83:                                               ; preds = %82
  %84 = load ptr, ptr %22, align 8, !tbaa !47
  %85 = tail call zeroext i8 @RNA_struct_property_is_set_ex(ptr noundef %84, ptr noundef nonnull @.str.3, i8 noundef zeroext 0) #13
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %22, align 8, !tbaa !47
  %89 = getelementptr inbounds %struct.FileSelectParams, ptr %19, i64 0, i32 2
  tail call void @RNA_string_get(ptr noundef %88, ptr noundef nonnull @.str.3, ptr noundef nonnull %89) #13
  br label %90

90:                                               ; preds = %82, %83, %87, %71
  %91 = getelementptr inbounds %struct.FileSelectParams, ptr %19, i64 0, i32 1
  %92 = load i8, ptr %91, align 4, !tbaa !46
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %100, label %94

94:                                               ; preds = %90
  %95 = load ptr, ptr @G, align 8, !tbaa !44
  %96 = getelementptr inbounds %struct.Main, ptr %95, i64 0, i32 2
  call void @BLI_cleanup_dir(ptr noundef nonnull %96, ptr noundef nonnull %91) #13
  %97 = load ptr, ptr @G, align 8, !tbaa !44
  %98 = getelementptr inbounds %struct.Main, ptr %97, i64 0, i32 2
  %99 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %91, ptr noundef nonnull %98) #13
  br label %100

100:                                              ; preds = %94, %90
  %101 = select i1 %34, i1 %31, i1 false
  %102 = select i1 %101, i1 %28, i1 false
  %103 = select i1 %102, i1 %25, i1 false
  %104 = getelementptr inbounds %struct.FileSelectParams, ptr %19, i64 0, i32 10
  %105 = load i16, ptr %104, align 2, !tbaa !55
  %106 = and i16 %105, -129
  %107 = select i1 %103, i16 128, i16 0
  %108 = or disjoint i16 %106, %107
  store i16 %108, ptr %104, align 2, !tbaa !55
  %109 = getelementptr inbounds %struct.FileSelectParams, ptr %19, i64 0, i32 13
  store i16 0, ptr %109, align 4, !tbaa !56
  %110 = load ptr, ptr %22, align 8, !tbaa !47
  %111 = call ptr @RNA_struct_find_property(ptr noundef %110, ptr noundef nonnull @.str.7) #13
  %112 = icmp eq ptr %111, null
  br i1 %112, label %120, label %113

113:                                              ; preds = %100
  %114 = load ptr, ptr %22, align 8, !tbaa !47
  %115 = call i32 @RNA_property_boolean_get(ptr noundef %114, ptr noundef nonnull %111) #13
  %116 = icmp eq i32 %115, 0
  %117 = select i1 %116, i16 0, i16 4
  %118 = load i16, ptr %109, align 4, !tbaa !56
  %119 = or i16 %117, %118
  store i16 %119, ptr %109, align 4, !tbaa !56
  br label %120

120:                                              ; preds = %113, %100
  %121 = load ptr, ptr %22, align 8, !tbaa !47
  %122 = call ptr @RNA_struct_find_property(ptr noundef %121, ptr noundef nonnull @.str.8) #13
  %123 = icmp eq ptr %122, null
  br i1 %123, label %131, label %124

124:                                              ; preds = %120
  %125 = load ptr, ptr %22, align 8, !tbaa !47
  %126 = call i32 @RNA_property_boolean_get(ptr noundef %125, ptr noundef nonnull %122) #13
  %127 = icmp eq i32 %126, 0
  %128 = select i1 %127, i16 0, i16 8
  %129 = load i16, ptr %109, align 4, !tbaa !56
  %130 = or i16 %128, %129
  store i16 %130, ptr %109, align 4, !tbaa !56
  br label %131

131:                                              ; preds = %124, %120
  %132 = load ptr, ptr %22, align 8, !tbaa !47
  %133 = call ptr @RNA_struct_find_property(ptr noundef %132, ptr noundef nonnull @.str.9) #13
  %134 = icmp eq ptr %133, null
  br i1 %134, label %142, label %135

135:                                              ; preds = %131
  %136 = load ptr, ptr %22, align 8, !tbaa !47
  %137 = call i32 @RNA_property_boolean_get(ptr noundef %136, ptr noundef nonnull %133) #13
  %138 = icmp eq i32 %137, 0
  %139 = select i1 %138, i16 0, i16 16
  %140 = load i16, ptr %109, align 4, !tbaa !56
  %141 = or i16 %139, %140
  store i16 %141, ptr %109, align 4, !tbaa !56
  br label %142

142:                                              ; preds = %135, %131
  %143 = load ptr, ptr %22, align 8, !tbaa !47
  %144 = call ptr @RNA_struct_find_property(ptr noundef %143, ptr noundef nonnull @.str.10) #13
  %145 = icmp eq ptr %144, null
  br i1 %145, label %153, label %146

146:                                              ; preds = %142
  %147 = load ptr, ptr %22, align 8, !tbaa !47
  %148 = call i32 @RNA_property_boolean_get(ptr noundef %147, ptr noundef nonnull %144) #13
  %149 = icmp eq i32 %148, 0
  %150 = select i1 %149, i16 0, i16 32
  %151 = load i16, ptr %109, align 4, !tbaa !56
  %152 = or i16 %150, %151
  store i16 %152, ptr %109, align 4, !tbaa !56
  br label %153

153:                                              ; preds = %146, %142
  %154 = load ptr, ptr %22, align 8, !tbaa !47
  %155 = call ptr @RNA_struct_find_property(ptr noundef %154, ptr noundef nonnull @.str.11) #13
  %156 = icmp eq ptr %155, null
  br i1 %156, label %164, label %157

157:                                              ; preds = %153
  %158 = load ptr, ptr %22, align 8, !tbaa !47
  %159 = call i32 @RNA_property_boolean_get(ptr noundef %158, ptr noundef nonnull %155) #13
  %160 = icmp eq i32 %159, 0
  %161 = select i1 %160, i16 0, i16 64
  %162 = load i16, ptr %109, align 4, !tbaa !56
  %163 = or i16 %161, %162
  store i16 %163, ptr %109, align 4, !tbaa !56
  br label %164

164:                                              ; preds = %157, %153
  %165 = load ptr, ptr %22, align 8, !tbaa !47
  %166 = call ptr @RNA_struct_find_property(ptr noundef %165, ptr noundef nonnull @.str.12) #13
  %167 = icmp eq ptr %166, null
  br i1 %167, label %175, label %168

168:                                              ; preds = %164
  %169 = load ptr, ptr %22, align 8, !tbaa !47
  %170 = call i32 @RNA_property_boolean_get(ptr noundef %169, ptr noundef nonnull %166) #13
  %171 = icmp eq i32 %170, 0
  %172 = select i1 %171, i16 0, i16 128
  %173 = load i16, ptr %109, align 4, !tbaa !56
  %174 = or i16 %172, %173
  store i16 %174, ptr %109, align 4, !tbaa !56
  br label %175

175:                                              ; preds = %168, %164
  %176 = load ptr, ptr %22, align 8, !tbaa !47
  %177 = call ptr @RNA_struct_find_property(ptr noundef %176, ptr noundef nonnull @.str.13) #13
  %178 = icmp eq ptr %177, null
  br i1 %178, label %186, label %179

179:                                              ; preds = %175
  %180 = load ptr, ptr %22, align 8, !tbaa !47
  %181 = call i32 @RNA_property_boolean_get(ptr noundef %180, ptr noundef nonnull %177) #13
  %182 = icmp eq i32 %181, 0
  %183 = select i1 %182, i16 0, i16 256
  %184 = load i16, ptr %109, align 4, !tbaa !56
  %185 = or i16 %183, %184
  store i16 %185, ptr %109, align 4, !tbaa !56
  br label %186

186:                                              ; preds = %179, %175
  %187 = load ptr, ptr %22, align 8, !tbaa !47
  %188 = call ptr @RNA_struct_find_property(ptr noundef %187, ptr noundef nonnull @.str.14) #13
  %189 = icmp eq ptr %188, null
  br i1 %189, label %197, label %190

190:                                              ; preds = %186
  %191 = load ptr, ptr %22, align 8, !tbaa !47
  %192 = call i32 @RNA_property_boolean_get(ptr noundef %191, ptr noundef nonnull %188) #13
  %193 = icmp eq i32 %192, 0
  %194 = select i1 %193, i16 0, i16 512
  %195 = load i16, ptr %109, align 4, !tbaa !56
  %196 = or i16 %194, %195
  store i16 %196, ptr %109, align 4, !tbaa !56
  br label %197

197:                                              ; preds = %190, %186
  %198 = load ptr, ptr %22, align 8, !tbaa !47
  %199 = call ptr @RNA_struct_find_property(ptr noundef %198, ptr noundef nonnull @.str.15) #13
  %200 = icmp eq ptr %199, null
  br i1 %200, label %208, label %201

201:                                              ; preds = %197
  %202 = load ptr, ptr %22, align 8, !tbaa !47
  %203 = call i32 @RNA_property_boolean_get(ptr noundef %202, ptr noundef nonnull %199) #13
  %204 = icmp eq i32 %203, 0
  %205 = select i1 %204, i16 0, i16 2048
  %206 = load i16, ptr %109, align 4, !tbaa !56
  %207 = or i16 %205, %206
  store i16 %207, ptr %109, align 4, !tbaa !56
  br label %208

208:                                              ; preds = %201, %197
  %209 = load ptr, ptr %22, align 8, !tbaa !47
  %210 = call ptr @RNA_struct_find_property(ptr noundef %209, ptr noundef nonnull @.str.16) #13
  %211 = icmp eq ptr %210, null
  br i1 %211, label %219, label %212

212:                                              ; preds = %208
  %213 = load ptr, ptr %22, align 8, !tbaa !47
  %214 = call i32 @RNA_property_boolean_get(ptr noundef %213, ptr noundef nonnull %210) #13
  %215 = icmp eq i32 %214, 0
  %216 = select i1 %215, i16 0, i16 4096
  %217 = load i16, ptr %109, align 4, !tbaa !56
  %218 = or i16 %216, %217
  store i16 %218, ptr %109, align 4, !tbaa !56
  br label %219

219:                                              ; preds = %212, %208
  %220 = load ptr, ptr %22, align 8, !tbaa !47
  %221 = call ptr @RNA_struct_find_property(ptr noundef %220, ptr noundef nonnull @.str.17) #13
  %222 = icmp eq ptr %221, null
  br i1 %222, label %230, label %223

223:                                              ; preds = %219
  %224 = load ptr, ptr %22, align 8, !tbaa !47
  %225 = call i32 @RNA_property_boolean_get(ptr noundef %224, ptr noundef nonnull %221) #13
  %226 = icmp eq i32 %225, 0
  %227 = select i1 %226, i16 0, i16 8192
  %228 = load i16, ptr %109, align 4, !tbaa !56
  %229 = or i16 %227, %228
  store i16 %229, ptr %109, align 4, !tbaa !56
  br label %230

230:                                              ; preds = %223, %219
  %231 = load ptr, ptr %22, align 8, !tbaa !47
  %232 = call ptr @RNA_struct_find_property(ptr noundef %231, ptr noundef nonnull @.str.18) #13
  %233 = icmp eq ptr %232, null
  br i1 %233, label %239, label %234

234:                                              ; preds = %230
  %235 = load ptr, ptr %22, align 8, !tbaa !47
  %236 = getelementptr inbounds %struct.FileSelectParams, ptr %19, i64 0, i32 5
  call void @RNA_property_string_get(ptr noundef %235, ptr noundef nonnull %232, ptr noundef nonnull %236) #13
  %237 = load i16, ptr %109, align 4, !tbaa !56
  %238 = or i16 %237, 18432
  store i16 %238, ptr %109, align 4, !tbaa !56
  br label %245

239:                                              ; preds = %230
  %240 = getelementptr inbounds %struct.FileSelectParams, ptr %19, i64 0, i32 5
  store i8 0, ptr %240, align 4, !tbaa !46
  %241 = load i16, ptr %109, align 4, !tbaa !56
  %242 = icmp eq i16 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %239
  %244 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !57
  br label %255

245:                                              ; preds = %234, %239
  %246 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !57
  %247 = and i32 %246, 8
  %248 = icmp eq i32 %247, 0
  %249 = getelementptr inbounds %struct.FileSelectParams, ptr %19, i64 0, i32 10
  %250 = load i16, ptr %249, align 2, !tbaa !55
  br i1 %248, label %253, label %251

251:                                              ; preds = %245
  %252 = or i16 %250, 256
  store i16 %252, ptr %249, align 2, !tbaa !55
  br label %255

253:                                              ; preds = %245
  %254 = and i16 %250, -257
  store i16 %254, ptr %249, align 2, !tbaa !55
  br label %255

255:                                              ; preds = %243, %251, %253
  %256 = phi i32 [ %244, %243 ], [ %246, %251 ], [ %246, %253 ]
  %257 = getelementptr inbounds %struct.FileSelectParams, ptr %19, i64 0, i32 10
  %258 = load i16, ptr %257, align 2, !tbaa !55
  %259 = and i16 %258, -9
  %260 = lshr i32 %256, 13
  %261 = trunc i32 %260 to i16
  %262 = and i16 %261, 8
  %263 = or disjoint i16 %259, %262
  store i16 %263, ptr %257, align 2, !tbaa !55
  %264 = load i16, ptr %53, align 4, !tbaa !53
  %265 = icmp eq i16 %264, 1
  br i1 %265, label %266, label %286

266:                                              ; preds = %255
  %267 = load ptr, ptr %22, align 8, !tbaa !47
  %268 = call i32 @RNA_boolean_get(ptr noundef %267, ptr noundef nonnull @.str.19) #13
  %269 = icmp eq i32 %268, 0
  %270 = select i1 %269, i16 0, i16 4
  %271 = getelementptr inbounds %struct.FileSelectParams, ptr %19, i64 0, i32 10
  %272 = load i16, ptr %271, align 2, !tbaa !55
  %273 = or i16 %270, %272
  store i16 %273, ptr %271, align 2, !tbaa !55
  %274 = load ptr, ptr %22, align 8, !tbaa !47
  %275 = call i32 @RNA_boolean_get(ptr noundef %274, ptr noundef nonnull @.str.20) #13
  %276 = icmp eq i32 %275, 0
  %277 = select i1 %276, i16 0, i16 16
  %278 = load i16, ptr %271, align 2, !tbaa !55
  %279 = or i16 %277, %278
  store i16 %279, ptr %271, align 2, !tbaa !55
  %280 = load ptr, ptr %22, align 8, !tbaa !47
  %281 = call i32 @RNA_boolean_get(ptr noundef %280, ptr noundef nonnull @.str.21) #13
  %282 = icmp eq i32 %281, 0
  %283 = select i1 %282, i16 0, i16 32
  %284 = load i16, ptr %271, align 2, !tbaa !55
  %285 = or i16 %283, %284
  store i16 %285, ptr %271, align 2, !tbaa !55
  br label %286

286:                                              ; preds = %266, %255
  %287 = load ptr, ptr %22, align 8, !tbaa !47
  %288 = call ptr @RNA_struct_find_property(ptr noundef %287, ptr noundef nonnull @.str.22) #13
  %289 = icmp eq ptr %288, null
  br i1 %289, label %290, label %293

290:                                              ; preds = %286
  %291 = getelementptr inbounds %struct.FileSelectParams, ptr %19, i64 0, i32 12
  %292 = load i16, ptr %291, align 2, !tbaa !62
  br label %298

293:                                              ; preds = %286
  %294 = load ptr, ptr %22, align 8, !tbaa !47
  %295 = call i32 @RNA_enum_get(ptr noundef %294, ptr noundef nonnull @.str.22) #13
  %296 = trunc i32 %295 to i16
  %297 = getelementptr inbounds %struct.FileSelectParams, ptr %19, i64 0, i32 12
  store i16 %296, ptr %297, align 2, !tbaa !62
  br label %298

298:                                              ; preds = %290, %293
  %299 = phi i16 [ %292, %290 ], [ %296, %293 ]
  %300 = getelementptr inbounds %struct.FileSelectParams, ptr %19, i64 0, i32 12
  %301 = icmp eq i16 %299, 0
  br i1 %301, label %302, label %313

302:                                              ; preds = %298
  %303 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !57
  %304 = and i32 %303, 536870912
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %311, label %306

306:                                              ; preds = %302
  %307 = load i16, ptr %109, align 4, !tbaa !56
  %308 = and i16 %307, 48
  %309 = icmp eq i16 %308, 0
  %310 = select i1 %309, i16 1, i16 3
  br label %311

311:                                              ; preds = %302, %306
  %312 = phi i16 [ %310, %306 ], [ 1, %302 ]
  store i16 %312, ptr %300, align 2, !tbaa !62
  br label %313

313:                                              ; preds = %311, %298
  br i1 %37, label %331, label %314

314:                                              ; preds = %313
  %315 = load ptr, ptr %22, align 8, !tbaa !47
  %316 = call zeroext i8 @RNA_struct_property_is_set_ex(ptr noundef %315, ptr noundef nonnull @.str.5, i8 noundef zeroext 0) #13
  %317 = icmp eq i8 %316, 0
  br i1 %317, label %318, label %331

318:                                              ; preds = %314
  %319 = load ptr, ptr %22, align 8, !tbaa !47
  %320 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !63
  %321 = and i32 %320, 1048576
  call void @RNA_boolean_set(ptr noundef %319, ptr noundef nonnull @.str.5, i32 noundef %321) #13
  br label %331

322:                                              ; preds = %18
  %323 = getelementptr inbounds %struct.FileSelectParams, ptr %19, i64 0, i32 9
  store i16 8, ptr %323, align 4, !tbaa !53
  %324 = getelementptr inbounds %struct.FileSelectParams, ptr %19, i64 0, i32 10
  %325 = load i16, ptr %324, align 2, !tbaa !55
  %326 = and i16 %325, -137
  %327 = or disjoint i16 %326, 8
  store i16 %327, ptr %324, align 2, !tbaa !55
  %328 = getelementptr inbounds %struct.FileSelectParams, ptr %19, i64 0, i32 12
  store i16 1, ptr %328, align 2, !tbaa !62
  %329 = getelementptr inbounds %struct.FileSelectParams, ptr %19, i64 0, i32 13
  store i16 0, ptr %329, align 4, !tbaa !56
  %330 = getelementptr inbounds %struct.FileSelectParams, ptr %19, i64 0, i32 5
  store i8 0, ptr %330, align 4, !tbaa !46
  br label %331

331:                                              ; preds = %313, %318, %314, %322
  %332 = getelementptr inbounds %struct.FileSelectParams, ptr %19, i64 0, i32 11
  store i16 1, ptr %332, align 4, !tbaa !64
  %333 = getelementptr inbounds %struct.SpaceFile, ptr %0, i64 0, i32 7
  %334 = load ptr, ptr %333, align 8, !tbaa !65
  %335 = icmp eq ptr %334, null
  br i1 %335, label %336, label %338

336:                                              ; preds = %331
  %337 = call ptr @folderlist_new() #13
  store ptr %337, ptr %333, align 8, !tbaa !65
  br label %338

338:                                              ; preds = %336, %331
  %339 = load ptr, ptr %5, align 8, !tbaa !34
  %340 = getelementptr inbounds %struct.FileSelectParams, ptr %339, i64 0, i32 1
  %341 = load i8, ptr %340, align 4, !tbaa !46
  %342 = icmp eq i8 %341, 0
  br i1 %342, label %343, label %356

343:                                              ; preds = %338
  %344 = load ptr, ptr @G, align 8, !tbaa !44
  %345 = getelementptr inbounds %struct.Main, ptr %344, i64 0, i32 2
  %346 = load i8, ptr %345, align 8, !tbaa !46
  %347 = icmp eq i8 %346, 0
  br i1 %347, label %349, label %348

348:                                              ; preds = %343
  call void @BLI_split_dir_part(ptr noundef nonnull %345, ptr noundef nonnull %340, i64 noundef 1056) #13
  br label %356

349:                                              ; preds = %343
  %350 = call ptr @BLI_getDefaultDocumentFolder() #13
  %351 = icmp eq ptr %350, null
  br i1 %351, label %356, label %352

352:                                              ; preds = %349
  %353 = load ptr, ptr %5, align 8, !tbaa !34
  %354 = getelementptr inbounds %struct.FileSelectParams, ptr %353, i64 0, i32 1
  %355 = call ptr @BLI_strncpy(ptr noundef nonnull %354, ptr noundef nonnull %350, i64 noundef 1056) #13
  br label %356

356:                                              ; preds = %349, %352, %348, %338
  %357 = load ptr, ptr %333, align 8, !tbaa !65
  %358 = load ptr, ptr %5, align 8, !tbaa !34
  %359 = getelementptr inbounds %struct.FileSelectParams, ptr %358, i64 0, i32 1
  call void @folderlist_pushdir(ptr noundef %357, ptr noundef nonnull %359) #13
  %360 = getelementptr inbounds %struct.SpaceFile, ptr %0, i64 0, i32 11
  %361 = load ptr, ptr %360, align 8, !tbaa !66
  %362 = icmp eq ptr %361, null
  br i1 %362, label %365, label %363

363:                                              ; preds = %356
  %364 = getelementptr inbounds %struct.FileLayout, ptr %361, i64 0, i32 13
  store i32 1, ptr %364, align 4, !tbaa !67
  br label %365

365:                                              ; preds = %363, %356
  ret i16 1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @BLI_split_dirfile(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_strncpy_utf8(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_struct_ui_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @RNA_struct_property_is_set_ex(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @BLI_cleanup_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BLI_path_abs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_property_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @folderlist_new() local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_split_dir_part(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_getDefaultDocumentFolder() local_unnamed_addr #2

; Function Attrs: optsize
declare void @folderlist_pushdir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ED_fileselect_layout_numfiles(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.FileLayout, ptr %0, i64 0, i32 12
  %4 = load i32, ptr %3, align 4, !tbaa !69
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1
  br i1 %6, label %24, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.FileLayout, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !70
  %11 = getelementptr inbounds %struct.FileLayout, ptr %0, i64 0, i32 4
  %12 = load i32, ptr %11, align 4, !tbaa !71
  %13 = shl nsw i32 %12, 1
  %14 = add nsw i32 %13, %10
  %15 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %7) #12
  %16 = fptosi float %15 to i32
  %17 = srem i32 %16, %14
  %18 = sub i32 %14, %17
  %19 = add nsw i32 %18, %16
  %20 = sitofp i32 %19 to float
  %21 = sitofp i32 %14 to float
  %22 = fdiv float %20, %21
  %23 = getelementptr inbounds %struct.FileLayout, ptr %0, i64 0, i32 8
  br label %40

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.FileLayout, ptr %0, i64 0, i32 3
  %26 = load i32, ptr %25, align 4, !tbaa !72
  %27 = getelementptr inbounds %struct.FileLayout, ptr %0, i64 0, i32 5
  %28 = load i32, ptr %27, align 4, !tbaa !73
  %29 = shl nsw i32 %28, 1
  %30 = add nsw i32 %29, %26
  %31 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %7) #12
  %32 = fptosi float %31 to i32
  %33 = srem i32 %32, %30
  %34 = sub i32 %30, %33
  %35 = add nsw i32 %34, %32
  %36 = sitofp i32 %35 to float
  %37 = sitofp i32 %30 to float
  %38 = fdiv float %36, %37
  %39 = getelementptr inbounds %struct.FileLayout, ptr %0, i64 0, i32 9
  br label %40

40:                                               ; preds = %24, %8
  %41 = phi ptr [ %39, %24 ], [ %23, %8 ]
  %42 = phi float [ %38, %24 ], [ %22, %8 ]
  %43 = fptosi float %42 to i32
  %44 = load i32, ptr %41, align 4, !tbaa !74
  %45 = mul nsw i32 %44, %43
  ret i32 %45
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_x(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !75 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 4, !tbaa !76
  %4 = load float, ptr %0, align 4, !tbaa !78
  %5 = fsub float %3, %4
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_y(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !79 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %3 = load float, ptr %2, align 4, !tbaa !80
  %4 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !81
  %6 = fsub float %3, %5
  ret float %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i64 @ED_fileselect_layout_offset_rect(ptr noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %97, label %4

4:                                                ; preds = %2
  %5 = load i32, ptr %1, align 4, !tbaa !82
  %6 = getelementptr inbounds %struct.FileLayout, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !70
  %8 = getelementptr inbounds %struct.FileLayout, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !71
  %10 = shl nsw i32 %9, 1
  %11 = add nsw i32 %10, %7
  %12 = sdiv i32 %5, %11
  %13 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !84
  %15 = getelementptr inbounds %struct.FileLayout, ptr %0, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !72
  %17 = getelementptr inbounds %struct.FileLayout, ptr %0, i64 0, i32 5
  %18 = load i32, ptr %17, align 4, !tbaa !73
  %19 = shl nsw i32 %18, 1
  %20 = add nsw i32 %19, %16
  %21 = sdiv i32 %14, %20
  %22 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !85
  %24 = sdiv i32 %23, %11
  %25 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 3
  %26 = load i32, ptr %25, align 4, !tbaa !86
  %27 = sdiv i32 %26, %20
  %28 = getelementptr inbounds %struct.FileLayout, ptr %0, i64 0, i32 9
  %29 = load i32, ptr %28, align 4, !tbaa !87
  %30 = getelementptr inbounds %struct.FileLayout, ptr %0, i64 0, i32 8
  %31 = load i32, ptr %30, align 4, !tbaa !88
  %32 = tail call fastcc zeroext i8 @is_inside(i32 noundef %12, i32 noundef %21, i32 noundef %29, i32 noundef %31) #12, !range !89
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %4
  %35 = tail call fastcc zeroext i8 @is_inside(i32 noundef %24, i32 noundef %27, i32 noundef %29, i32 noundef %31) #12, !range !89
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %56, label %37

37:                                               ; preds = %34, %4
  %38 = icmp slt i32 %12, 0
  %39 = icmp slt i32 %12, %29
  %40 = add nsw i32 %29, -1
  %41 = select i1 %39, i32 %12, i32 %40
  %42 = select i1 %38, i32 0, i32 %41
  %43 = icmp slt i32 %21, 0
  %44 = icmp slt i32 %21, %31
  %45 = add nsw i32 %31, -1
  %46 = select i1 %44, i32 %21, i32 %45
  %47 = select i1 %43, i32 0, i32 %46
  %48 = icmp slt i32 %24, 0
  %49 = icmp slt i32 %24, %29
  %50 = select i1 %49, i32 %24, i32 %40
  %51 = select i1 %48, i32 0, i32 %50
  %52 = icmp slt i32 %27, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %37
  %54 = icmp slt i32 %27, %31
  %55 = select i1 %54, i32 %27, i32 %45
  br label %56

56:                                               ; preds = %53, %37, %34
  %57 = phi i32 [ %12, %34 ], [ %42, %37 ], [ %42, %53 ]
  %58 = phi i32 [ %24, %34 ], [ %51, %37 ], [ %51, %53 ]
  %59 = phi i32 [ %21, %34 ], [ %47, %37 ], [ %47, %53 ]
  %60 = phi i32 [ %27, %34 ], [ 0, %37 ], [ %55, %53 ]
  %61 = icmp slt i32 %57, %29
  %62 = icmp slt i32 %59, %31
  %63 = select i1 %61, i1 %62, i1 false
  br i1 %63, label %64, label %75

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.FileLayout, ptr %0, i64 0, i32 12
  %66 = load i32, ptr %65, align 4, !tbaa !69
  %67 = and i32 %66, 1
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %64
  %70 = mul nsw i32 %57, %31
  %71 = add nsw i32 %59, %70
  br label %75

72:                                               ; preds = %64
  %73 = mul nsw i32 %59, %29
  %74 = add nsw i32 %73, %57
  br label %75

75:                                               ; preds = %56, %69, %72
  %76 = phi i32 [ %71, %69 ], [ %74, %72 ], [ -1, %56 ]
  %77 = icmp slt i32 %58, %29
  %78 = icmp slt i32 %60, %31
  %79 = select i1 %77, i1 %78, i1 false
  br i1 %79, label %80, label %91

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.FileLayout, ptr %0, i64 0, i32 12
  %82 = load i32, ptr %81, align 4, !tbaa !69
  %83 = and i32 %82, 1
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %80
  %86 = mul nsw i32 %58, %31
  %87 = add nsw i32 %60, %86
  br label %91

88:                                               ; preds = %80
  %89 = mul nsw i32 %60, %29
  %90 = add nsw i32 %89, %58
  br label %91

91:                                               ; preds = %75, %85, %88
  %92 = phi i32 [ %87, %85 ], [ %90, %88 ], [ -1, %75 ]
  %93 = zext i32 %92 to i64
  %94 = shl nuw i64 %93, 32
  %95 = zext i32 %76 to i64
  %96 = or disjoint i64 %94, %95
  br label %97

97:                                               ; preds = %2, %91
  %98 = phi i64 [ %96, %91 ], [ -1, %2 ]
  ret i64 %98
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef zeroext i8 @is_inside(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #6 !PGOFuncName !90 {
  %5 = icmp sgt i32 %0, -1
  br i1 %5, label %6, label %13

6:                                                ; preds = %4
  %7 = icmp slt i32 %0, %2
  %8 = icmp sgt i32 %1, -1
  %9 = and i1 %8, %7
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = icmp slt i32 %1, %3
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %10, %6, %4
  %14 = phi i8 [ 0, %6 ], [ 0, %4 ], [ %12, %10 ]
  ret i8 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @ED_fileselect_layout_offset(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
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
  %14 = load i32, ptr %13, align 4, !tbaa !72
  %15 = getelementptr inbounds %struct.FileLayout, ptr %0, i64 0, i32 5
  %16 = load i32, ptr %15, align 4, !tbaa !73
  %17 = shl nsw i32 %16, 1
  %18 = add nsw i32 %17, %14
  %19 = sdiv i32 %2, %18
  %20 = getelementptr inbounds %struct.FileLayout, ptr %0, i64 0, i32 9
  %21 = load i32, ptr %20, align 4, !tbaa !87
  %22 = icmp slt i32 %12, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %5
  %24 = getelementptr inbounds %struct.FileLayout, ptr %0, i64 0, i32 8
  %25 = load i32, ptr %24, align 4, !tbaa !88
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @ED_fileselect_layout_tilepos(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #7 {
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
  %16 = load i32, ptr %15, align 4, !tbaa !88
  %17 = sdiv i32 %1, %16
  %18 = mul nsw i32 %13, %17
  %19 = add nsw i32 %18, %9
  store i32 %19, ptr %2, align 4, !tbaa !74
  %20 = load i32, ptr %15, align 4, !tbaa !88
  %21 = srem i32 %1, %20
  br label %30

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.FileLayout, ptr %0, i64 0, i32 9
  %24 = load i32, ptr %23, align 4, !tbaa !87
  %25 = srem i32 %1, %24
  %26 = mul nsw i32 %13, %25
  %27 = add nsw i32 %26, %9
  store i32 %27, ptr %2, align 4, !tbaa !74
  %28 = load i32, ptr %23, align 4, !tbaa !87
  %29 = sdiv i32 %1, %28
  br label %30

30:                                               ; preds = %22, %14
  %31 = phi i32 [ %29, %22 ], [ %21, %14 ]
  %32 = getelementptr inbounds %struct.FileLayout, ptr %0, i64 0, i32 5
  %33 = load i32, ptr %32, align 4, !tbaa !73
  %34 = getelementptr inbounds %struct.FileLayout, ptr %0, i64 0, i32 3
  %35 = load i32, ptr %34, align 4, !tbaa !72
  %36 = shl nsw i32 %33, 1
  %37 = add nsw i32 %35, %36
  %38 = mul nsw i32 %37, %31
  %39 = add nsw i32 %38, %33
  store i32 %39, ptr %3, align 4, !tbaa !74
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @file_shorten_string(ptr noundef %0, float noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #14
  %5 = fcmp ugt float %1, 0.000000e+00
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  store i8 0, ptr %0, align 1, !tbaa !46
  br label %59

7:                                                ; preds = %3
  %8 = tail call float @file_string_width(ptr noundef %0) #12
  %9 = icmp eq i32 %2, 1
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = fcmp ule float %8, %1
  br i1 %11, label %59, label %41

12:                                               ; preds = %7
  %13 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef nonnull @.str.23, i64 noundef 4) #13
  %14 = call float @file_string_width(ptr noundef nonnull %4) #12
  %15 = load i8, ptr %0, align 1, !tbaa !46
  %16 = icmp eq i8 %15, 0
  %17 = fadd float %14, %8
  %18 = fcmp ule float %17, %1
  %19 = select i1 %16, i1 true, i1 %18
  br i1 %19, label %59, label %20

20:                                               ; preds = %12, %20
  %21 = phi ptr [ %22, %20 ], [ %0, %12 ]
  %22 = getelementptr inbounds i8, ptr %21, i64 1
  %23 = call float @file_string_width(ptr noundef nonnull %22) #12
  %24 = load i8, ptr %22, align 1, !tbaa !46
  %25 = icmp ne i8 %24, 0
  %26 = fadd float %14, %23
  %27 = fcmp ogt float %26, %1
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %20, label %29, !llvm.loop !91

29:                                               ; preds = %20
  br i1 %19, label %59, label %30

30:                                               ; preds = %29
  %31 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %22) #15
  %32 = getelementptr inbounds i8, ptr %4, i64 3
  %33 = shl i64 %31, 32
  %34 = add i64 %33, 4294967296
  %35 = ashr exact i64 %34, 32
  %36 = call ptr @BLI_strncpy(ptr noundef nonnull %32, ptr noundef nonnull %22, i64 noundef %35) #13
  %37 = add i64 %33, 17179869184
  %38 = ashr exact i64 %37, 32
  %39 = getelementptr inbounds [1024 x i8], ptr %4, i64 0, i64 %38
  store i8 0, ptr %39, align 1, !tbaa !46
  %40 = call ptr @BLI_strncpy(ptr noundef nonnull %0, ptr noundef nonnull %4, i64 noundef %38) #13
  br label %59

41:                                               ; preds = %10, %41
  %42 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #15
  %43 = shl i64 %42, 32
  %44 = add i64 %43, -4294967296
  %45 = ashr exact i64 %44, 32
  %46 = getelementptr inbounds i8, ptr %0, i64 %45
  store i8 0, ptr %46, align 1, !tbaa !46
  %47 = tail call float @file_string_width(ptr noundef %0) #12
  %48 = fcmp ogt float %47, %1
  br i1 %48, label %41, label %49, !llvm.loop !93

49:                                               ; preds = %41
  br i1 %11, label %59, label %50

50:                                               ; preds = %49
  %51 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #15
  %52 = trunc i64 %51 to i32
  %53 = icmp sgt i32 %52, 3
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = and i64 %51, 4294967295
  %56 = getelementptr inbounds i8, ptr %0, i64 %55
  %57 = getelementptr inbounds i8, ptr %56, i64 -3
  %58 = tail call ptr @BLI_strncpy(ptr noundef nonnull %57, ptr noundef nonnull @.str.23, i64 noundef 4) #13
  br label %59

59:                                               ; preds = %12, %10, %30, %29, %50, %54, %49, %6
  %60 = phi float [ 0.000000e+00, %6 ], [ %23, %30 ], [ %23, %29 ], [ %47, %50 ], [ %47, %54 ], [ %47, %49 ], [ %8, %10 ], [ %8, %12 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #14
  ret float %60
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @file_string_width(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @UI_GetStyle() #13
  %3 = getelementptr inbounds %struct.uiStyle, ptr %2, i64 0, i32 6
  tail call void @uiStyleFontSet(ptr noundef nonnull %3) #13
  %4 = load i16, ptr %3, align 8, !tbaa !94
  %5 = sext i16 %4 to i32
  %6 = tail call float @BLF_width(i32 noundef %5, ptr noundef %0, i64 noundef 1024) #13
  ret float %6
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @UI_GetStyle() local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiStyleFontSet(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @BLF_width(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @file_font_pointsize() local_unnamed_addr #0 {
  %1 = tail call ptr @UI_GetStyle() #13
  %2 = getelementptr inbounds %struct.uiStyle, ptr %1, i64 0, i32 6
  tail call void @uiStyleFontSet(ptr noundef nonnull %2) #13
  %3 = getelementptr inbounds %struct.uiStyle, ptr %1, i64 0, i32 6, i32 1
  %4 = load i16, ptr %3, align 2, !tbaa !97
  %5 = sitofp i16 %4 to float
  %6 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !98
  %7 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !99
  %8 = sitofp i32 %7 to float
  %9 = fmul float %6, %8
  %10 = fdiv float %9, 7.200000e+01
  %11 = fmul float %10, %5
  ret float %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_fileselect_init_layout(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call ptr @ED_fileselect_get_params(ptr noundef %0) #12
  %4 = getelementptr inbounds %struct.SpaceFile, ptr %0, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !66
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !43
  %9 = tail call ptr %8(i64 noundef 92, ptr noundef nonnull @.str.24) #13
  store ptr %9, ptr %4, align 8, !tbaa !66
  %10 = getelementptr inbounds %struct.FileLayout, ptr %9, i64 0, i32 13
  store i32 1, ptr %10, align 4, !tbaa !67
  br label %15

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.FileLayout, ptr %5, i64 0, i32 13
  %13 = load i32, ptr %12, align 4, !tbaa !67
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %155, label %15

15:                                               ; preds = %11, %7
  %16 = getelementptr inbounds %struct.SpaceFile, ptr %0, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !100
  %18 = tail call i32 @filelist_numfiles(ptr noundef %17) #13
  %19 = tail call float @file_font_pointsize() #12
  %20 = fptosi float %19 to i32
  %21 = load ptr, ptr %4, align 8, !tbaa !66
  %22 = getelementptr inbounds %struct.FileLayout, ptr %21, i64 0, i32 14
  store i32 %20, ptr %22, align 4, !tbaa !101
  %23 = getelementptr inbounds %struct.FileSelectParams, ptr %3, i64 0, i32 12
  %24 = load i16, ptr %23, align 2, !tbaa !62
  %25 = icmp eq i16 %24, 3
  %26 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !102
  %27 = sitofp i16 %26 to float
  br i1 %25, label %28, label %63

28:                                               ; preds = %15
  %29 = fmul float %27, 0x4013333340000000
  %30 = fptosi float %29 to i32
  store i32 %30, ptr %21, align 4, !tbaa !103
  %31 = getelementptr inbounds %struct.FileLayout, ptr %21, i64 0, i32 1
  store i32 %30, ptr %31, align 4, !tbaa !104
  %32 = fmul float %27, 0x3FD3333340000000
  %33 = fptosi float %32 to i32
  %34 = getelementptr inbounds %struct.FileLayout, ptr %21, i64 0, i32 4
  %35 = insertelement <4 x i32> poison, i32 %33, i64 0
  %36 = shufflevector <4 x i32> %35, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %36, ptr %34, align 4, !tbaa !74
  %37 = shl nsw i32 %33, 1
  %38 = add nsw i32 %37, %30
  %39 = getelementptr inbounds %struct.FileLayout, ptr %21, i64 0, i32 2
  store i32 %38, ptr %39, align 4, !tbaa !70
  %40 = add nsw i32 %38, %20
  %41 = getelementptr inbounds %struct.FileLayout, ptr %21, i64 0, i32 3
  store i32 %40, ptr %41, align 4, !tbaa !72
  %42 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1
  %43 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %42) #12
  %44 = sitofp i32 %37 to float
  %45 = fsub float %43, %44
  %46 = fptosi float %45 to i32
  %47 = getelementptr inbounds %struct.FileLayout, ptr %21, i64 0, i32 10
  store i32 %46, ptr %47, align 4, !tbaa !105
  %48 = add nsw i32 %38, %37
  %49 = sdiv i32 %46, %48
  %50 = getelementptr inbounds %struct.FileLayout, ptr %21, i64 0, i32 9
  store i32 %49, ptr %50, align 4, !tbaa !87
  %51 = icmp sgt i32 %49, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %28
  %53 = sdiv i32 %18, %49
  br label %55

54:                                               ; preds = %28
  store i32 1, ptr %50, align 4, !tbaa !87
  br label %55

55:                                               ; preds = %54, %52
  %56 = phi i32 [ %53, %52 ], [ %18, %54 ]
  %57 = add nsw i32 %56, 1
  %58 = getelementptr inbounds %struct.FileLayout, ptr %21, i64 0, i32 8
  store i32 %57, ptr %58, align 4
  %59 = add nsw i32 %40, %37
  %60 = mul nsw i32 %57, %59
  %61 = add nsw i32 %60, %37
  %62 = getelementptr inbounds %struct.FileLayout, ptr %21, i64 0, i32 11
  store i32 %61, ptr %62, align 4, !tbaa !106
  br label %151

63:                                               ; preds = %15
  %64 = fmul float %27, 0x3FE3333340000000
  %65 = fptosi float %64 to i32
  %66 = fmul float %27, 0x3FC99999A0000000
  %67 = fptosi float %66 to i32
  store i32 0, ptr %21, align 4, !tbaa !103
  %68 = getelementptr inbounds %struct.FileLayout, ptr %21, i64 0, i32 1
  store i32 0, ptr %68, align 4, !tbaa !104
  %69 = insertelement <2 x float> poison, float %27, i64 0
  %70 = shufflevector <2 x float> %69, <2 x float> poison, <2 x i32> zeroinitializer
  %71 = fmul <2 x float> %70, <float 0x3FD99999A0000000, float 0x3FB99999A0000000>
  %72 = getelementptr inbounds %struct.FileLayout, ptr %21, i64 0, i32 4
  %73 = fptosi <2 x float> %71 to <2 x i32>
  store <2 x i32> %73, ptr %72, align 4, !tbaa !74
  %74 = getelementptr inbounds %struct.FileLayout, ptr %21, i64 0, i32 6
  store i32 0, ptr %74, align 4, !tbaa !107
  %75 = getelementptr inbounds %struct.FileLayout, ptr %21, i64 0, i32 7
  store i32 0, ptr %75, align 4, !tbaa !108
  %76 = mul nsw i32 %20, 3
  %77 = sdiv i32 %76, 2
  %78 = getelementptr inbounds %struct.FileLayout, ptr %21, i64 0, i32 3
  store i32 %77, ptr %78, align 4, !tbaa !72
  %79 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1
  %80 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %79) #12
  %81 = extractelement <2 x i32> %73, i64 1
  %82 = shl nsw i32 %81, 1
  %83 = sitofp i32 %82 to float
  %84 = fsub float %80, %83
  %85 = fptosi float %84 to i32
  %86 = getelementptr inbounds %struct.FileLayout, ptr %21, i64 0, i32 11
  store i32 %85, ptr %86, align 4, !tbaa !106
  %87 = add nsw i32 %82, %77
  %88 = sdiv i32 %85, %87
  %89 = getelementptr inbounds %struct.FileLayout, ptr %21, i64 0, i32 8
  store i32 %88, ptr %89, align 4, !tbaa !88
  %90 = load ptr, ptr %16, align 8, !tbaa !100
  tail call fastcc void @column_widths(ptr noundef %90, ptr noundef nonnull %21) #12
  %91 = load i16, ptr %23, align 2, !tbaa !62
  %92 = icmp eq i16 %91, 1
  %93 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !102
  %94 = sitofp i16 %93 to float
  %95 = fmul float %94, 0x3FE99999A0000000
  %96 = fptosi float %95 to i32
  %97 = getelementptr inbounds %struct.FileLayout, ptr %21, i64 0, i32 15
  %98 = load float, ptr %97, align 4, !tbaa !109
  %99 = fptosi float %98 to i32
  br i1 %92, label %100, label %108

100:                                              ; preds = %63
  %101 = getelementptr inbounds %struct.FileLayout, ptr %21, i64 0, i32 15, i64 3
  %102 = load float, ptr %101, align 4, !tbaa !109
  %103 = fptosi float %102 to i32
  %104 = add i32 %65, %67
  %105 = add i32 %104, %99
  %106 = add i32 %105, %96
  %107 = add nsw i32 %106, %103
  br label %129

108:                                              ; preds = %63
  %109 = getelementptr inbounds %struct.FileLayout, ptr %21, i64 0, i32 15, i64 4
  %110 = load <4 x float>, ptr %109, align 4, !tbaa !109
  %111 = fptosi <4 x float> %110 to <4 x i32>
  %112 = getelementptr inbounds %struct.FileLayout, ptr %21, i64 0, i32 15, i64 1
  %113 = load float, ptr %112, align 4, !tbaa !109
  %114 = fptosi float %113 to i32
  %115 = getelementptr inbounds %struct.FileLayout, ptr %21, i64 0, i32 15, i64 2
  %116 = load <2 x float>, ptr %115, align 4, !tbaa !109
  %117 = fptosi <2 x float> %116 to <2 x i32>
  %118 = mul i32 %65, 7
  %119 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %111)
  %120 = add i32 %119, %114
  %121 = shufflevector <2 x i32> %117, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %122 = add <2 x i32> %121, %117
  %123 = extractelement <2 x i32> %122, i64 0
  %124 = add i32 %118, %96
  %125 = add i32 %99, %67
  %126 = add i32 %120, %123
  %127 = add i32 %124, %125
  %128 = add i32 %126, %127
  br label %129

129:                                              ; preds = %108, %100
  %130 = phi i32 [ %107, %100 ], [ %128, %108 ]
  %131 = add nsw i32 %130, %65
  %132 = getelementptr inbounds %struct.FileLayout, ptr %21, i64 0, i32 2
  store i32 %131, ptr %132, align 4, !tbaa !70
  %133 = load i32, ptr %89, align 4, !tbaa !88
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %129
  %136 = sdiv i32 %18, %133
  br label %138

137:                                              ; preds = %129
  store i32 1, ptr %89, align 4, !tbaa !88
  br label %138

138:                                              ; preds = %137, %135
  %139 = phi i32 [ %136, %135 ], [ %18, %137 ]
  %140 = add nsw i32 %139, 1
  %141 = getelementptr inbounds %struct.FileLayout, ptr %21, i64 0, i32 9
  store i32 %140, ptr %141, align 4
  %142 = load ptr, ptr %4, align 8, !tbaa !66
  %143 = getelementptr inbounds %struct.FileLayout, ptr %142, i64 0, i32 9
  %144 = load i32, ptr %143, align 4, !tbaa !87
  %145 = load i32, ptr %72, align 4, !tbaa !71
  %146 = shl nsw i32 %145, 1
  %147 = add nsw i32 %146, %131
  %148 = mul nsw i32 %147, %144
  %149 = add nsw i32 %148, %146
  %150 = getelementptr inbounds %struct.FileLayout, ptr %21, i64 0, i32 10
  store i32 %149, ptr %150, align 4, !tbaa !105
  br label %151

151:                                              ; preds = %138, %55
  %152 = phi i32 [ 1, %138 ], [ 2, %55 ]
  %153 = getelementptr inbounds %struct.FileLayout, ptr %21, i64 0, i32 12
  store i32 %152, ptr %153, align 4, !tbaa !69
  %154 = getelementptr inbounds %struct.FileLayout, ptr %21, i64 0, i32 13
  store i32 0, ptr %154, align 4, !tbaa !67
  br label %155

155:                                              ; preds = %11, %151
  ret void
}

; Function Attrs: optsize
declare i32 @filelist_numfiles(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @column_widths(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !PGOFuncName !110 {
  %3 = tail call i32 @filelist_numfiles(ptr noundef %0) #13
  %4 = getelementptr i8, ptr %1, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %4, i8 0, i64 32, i1 false), !tbaa !109
  %5 = icmp sgt i32 %3, 0
  br i1 %5, label %6, label %70

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.FileLayout, ptr %1, i64 0, i32 15, i64 1
  %8 = getelementptr inbounds %struct.FileLayout, ptr %1, i64 0, i32 15, i64 2
  %9 = getelementptr inbounds %struct.FileLayout, ptr %1, i64 0, i32 15, i64 3
  %10 = getelementptr inbounds %struct.FileLayout, ptr %1, i64 0, i32 15, i64 4
  %11 = getelementptr inbounds %struct.FileLayout, ptr %1, i64 0, i32 15, i64 5
  %12 = getelementptr inbounds %struct.FileLayout, ptr %1, i64 0, i32 15, i64 6
  %13 = getelementptr inbounds %struct.FileLayout, ptr %1, i64 0, i32 15, i64 7
  br label %14

14:                                               ; preds = %6, %67
  %15 = phi i32 [ 0, %6 ], [ %68, %67 ]
  %16 = tail call ptr @filelist_file(ptr noundef %0, i32 noundef %15) #13
  %17 = icmp eq ptr %16, null
  br i1 %17, label %67, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.direntry, ptr %16, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !111
  %21 = tail call float @file_string_width(ptr noundef %20) #12
  %22 = load float, ptr %4, align 4, !tbaa !109
  %23 = fcmp ogt float %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store float %21, ptr %4, align 4, !tbaa !109
  br label %25

25:                                               ; preds = %24, %18
  %26 = getelementptr inbounds %struct.direntry, ptr %16, i64 0, i32 11
  %27 = tail call float @file_string_width(ptr noundef nonnull %26) #12
  %28 = load float, ptr %7, align 4, !tbaa !109
  %29 = fcmp ogt float %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store float %27, ptr %7, align 4, !tbaa !109
  br label %31

31:                                               ; preds = %30, %25
  %32 = getelementptr inbounds %struct.direntry, ptr %16, i64 0, i32 10
  %33 = tail call float @file_string_width(ptr noundef nonnull %32) #12
  %34 = load float, ptr %8, align 4, !tbaa !109
  %35 = fcmp ogt float %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store float %33, ptr %8, align 4, !tbaa !109
  br label %37

37:                                               ; preds = %36, %31
  %38 = getelementptr inbounds %struct.direntry, ptr %16, i64 0, i32 5
  %39 = tail call float @file_string_width(ptr noundef nonnull %38) #12
  %40 = load float, ptr %9, align 4, !tbaa !109
  %41 = fcmp ogt float %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store float %39, ptr %9, align 4, !tbaa !109
  br label %43

43:                                               ; preds = %42, %37
  %44 = getelementptr inbounds %struct.direntry, ptr %16, i64 0, i32 6
  %45 = tail call float @file_string_width(ptr noundef nonnull %44) #12
  %46 = load float, ptr %10, align 4, !tbaa !109
  %47 = fcmp ogt float %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store float %45, ptr %10, align 4, !tbaa !109
  br label %49

49:                                               ; preds = %48, %43
  %50 = getelementptr inbounds %struct.direntry, ptr %16, i64 0, i32 7
  %51 = tail call float @file_string_width(ptr noundef nonnull %50) #12
  %52 = load float, ptr %11, align 4, !tbaa !109
  %53 = fcmp ogt float %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store float %51, ptr %11, align 4, !tbaa !109
  br label %55

55:                                               ; preds = %54, %49
  %56 = getelementptr inbounds %struct.direntry, ptr %16, i64 0, i32 8
  %57 = tail call float @file_string_width(ptr noundef nonnull %56) #12
  %58 = load float, ptr %12, align 4, !tbaa !109
  %59 = fcmp ogt float %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store float %57, ptr %12, align 4, !tbaa !109
  br label %61

61:                                               ; preds = %60, %55
  %62 = getelementptr inbounds %struct.direntry, ptr %16, i64 0, i32 9
  %63 = tail call float @file_string_width(ptr noundef nonnull %62) #12
  %64 = load float, ptr %13, align 4, !tbaa !109
  %65 = fcmp ogt float %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store float %63, ptr %13, align 4, !tbaa !109
  br label %67

67:                                               ; preds = %61, %66, %14
  %68 = add nuw nsw i32 %15, 1
  %69 = icmp eq i32 %68, %3
  br i1 %69, label %70, label %14, !llvm.loop !116

70:                                               ; preds = %67, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ED_fileselect_get_layout(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.SpaceFile, ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !66
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  tail call void @ED_fileselect_init_layout(ptr noundef nonnull %0, ptr noundef %1) #12
  %7 = load ptr, ptr %3, align 8, !tbaa !66
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi ptr [ %7, %6 ], [ %4, %2 ]
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @file_change_dir(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_manager(ptr noundef %0) #13
  %4 = tail call ptr @CTX_wm_space_file(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.SpaceFile, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %37, label %8

8:                                                ; preds = %2
  tail call void @ED_fileselect_clear(ptr noundef %3, ptr noundef nonnull %4) #12
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %8
  %11 = load ptr, ptr %5, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct.FileSelectParams, ptr %11, i64 0, i32 1
  %13 = tail call zeroext i8 @BLI_is_dir(ptr noundef nonnull %12) #13
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = load ptr, ptr %5, align 8, !tbaa !34
  %17 = getelementptr inbounds %struct.FileSelectParams, ptr %16, i64 0, i32 1
  %18 = getelementptr inbounds %struct.SpaceFile, ptr %4, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !100
  %20 = tail call ptr @filelist_dir(ptr noundef %19) #13
  %21 = tail call ptr @BLI_strncpy(ptr noundef nonnull %17, ptr noundef %20, i64 noundef 1056) #13
  br label %22

22:                                               ; preds = %15, %10, %8
  %23 = getelementptr inbounds %struct.SpaceFile, ptr %4, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !100
  %25 = load ptr, ptr %5, align 8, !tbaa !34
  %26 = getelementptr inbounds %struct.FileSelectParams, ptr %25, i64 0, i32 1
  tail call void @filelist_setdir(ptr noundef %24, ptr noundef nonnull %26) #13
  %27 = tail call i32 @folderlist_clear_next(ptr noundef nonnull %4) #13
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.SpaceFile, ptr %4, i64 0, i32 8
  %31 = load ptr, ptr %30, align 8, !tbaa !117
  tail call void @folderlist_free(ptr noundef %31) #13
  br label %32

32:                                               ; preds = %29, %22
  %33 = getelementptr inbounds %struct.SpaceFile, ptr %4, i64 0, i32 7
  %34 = load ptr, ptr %33, align 8, !tbaa !65
  %35 = load ptr, ptr %5, align 8, !tbaa !34
  %36 = getelementptr inbounds %struct.FileSelectParams, ptr %35, i64 0, i32 1
  tail call void @folderlist_pushdir(ptr noundef %34, ptr noundef nonnull %36) #13
  tail call void @file_draw_check_cb(ptr noundef %0, ptr noundef null, ptr noundef null) #13
  br label %37

37:                                               ; preds = %32, %2
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_space_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_fileselect_clear(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.SpaceFile, ptr %1, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !100
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  tail call void @thumbnails_stop(ptr noundef %0, ptr noundef nonnull %4) #13
  %7 = load ptr, ptr %3, align 8, !tbaa !100
  tail call void @filelist_freelib(ptr noundef %7) #13
  %8 = load ptr, ptr %3, align 8, !tbaa !100
  tail call void @filelist_free(ptr noundef %8) #13
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct.SpaceFile, ptr %1, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct.FileSelectParams, ptr %11, i64 0, i32 6
  store i32 -1, ptr %12, align 4, !tbaa !118
  tail call void @WM_main_add_notifier(i32 noundef 252051456, ptr noundef null) #13
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BLI_is_dir(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @filelist_dir(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @filelist_setdir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @folderlist_clear_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @folderlist_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @file_draw_check_cb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @file_select_match(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.SpaceFile, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !100
  %6 = tail call i32 @filelist_numfiles(ptr noundef %5) #13
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %31

8:                                                ; preds = %3, %27
  %9 = phi i32 [ %28, %27 ], [ 0, %3 ]
  %10 = phi i32 [ %29, %27 ], [ 0, %3 ]
  %11 = load ptr, ptr %4, align 8, !tbaa !100
  %12 = tail call ptr @filelist_file(ptr noundef %11, i32 noundef %10) #13
  %13 = getelementptr inbounds %struct.direntry, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !111
  %15 = tail call i32 @fnmatch(ptr noundef %1, ptr noundef %14, i32 noundef 0) #13
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.direntry, ptr %12, i64 0, i32 16
  %19 = load i32, ptr %18, align 8, !tbaa !119
  %20 = or i32 %19, 8
  store i32 %20, ptr %18, align 8, !tbaa !119
  %21 = icmp eq i32 %9, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load ptr, ptr %13, align 8, !tbaa !111
  %24 = tail call ptr @BLI_strncpy(ptr noundef %2, ptr noundef %23, i64 noundef 1024) #13
  br label %25

25:                                               ; preds = %22, %17
  %26 = add nsw i32 %9, 1
  br label %27

27:                                               ; preds = %8, %25
  %28 = phi i32 [ %26, %25 ], [ %9, %8 ]
  %29 = add nuw nsw i32 %10, 1
  %30 = icmp eq i32 %29, %6
  br i1 %30, label %31, label %8, !llvm.loop !120

31:                                               ; preds = %27, %3
  %32 = phi i32 [ 0, %3 ], [ %28, %27 ]
  ret i32 %32
}

; Function Attrs: optsize
declare ptr @filelist_file(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @fnmatch(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @autocomplete_directory(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = alloca [1024 x i8], align 16
  %5 = alloca [1024 x i8], align 16
  %6 = alloca %struct.stat, align 8
  %7 = tail call ptr @CTX_wm_space_file(ptr noundef %0) #13
  %8 = load i8, ptr %1, align 1, !tbaa !46
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %55, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.SpaceFile, ptr %7, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !100
  %13 = icmp eq ptr %12, null
  br i1 %13, label %55, label %14

14:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #14
  call void @BLI_split_dir_part(ptr noundef nonnull %1, ptr noundef nonnull %4, i64 noundef 1024) #13
  %15 = call ptr @opendir(ptr noundef nonnull %4) #12
  %16 = icmp eq ptr %15, null
  br i1 %16, label %53, label %17

17:                                               ; preds = %14
  %18 = call ptr @autocomplete_begin(ptr noundef nonnull %1, i64 noundef 1024) #13
  %19 = call ptr @readdir(ptr noundef nonnull %15) #13
  %20 = icmp eq ptr %19, null
  br i1 %20, label %43, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.stat, ptr %6, i64 0, i32 3
  br label %23

23:                                               ; preds = %21, %40
  %24 = phi ptr [ %19, %21 ], [ %41, %40 ]
  %25 = getelementptr inbounds %struct.dirent, ptr %24, i64 0, i32 4
  %26 = call i32 @strcmp(ptr noundef nonnull dereferenceable(2) @.str.25, ptr noundef nonnull dereferenceable(1) %25) #15
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %23
  %29 = call i32 @strcmp(ptr noundef nonnull dereferenceable(3) @.str.26, ptr noundef nonnull dereferenceable(1) %25) #15
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %6) #14
  call void @BLI_join_dirfile(ptr noundef nonnull %5, i64 noundef 1024, ptr noundef nonnull %4, ptr noundef nonnull %25) #13
  %32 = call i32 @BLI_stat(ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i32, ptr %22, align 8, !tbaa !121
  %36 = and i32 %35, 61440
  %37 = icmp eq i32 %36, 16384
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  call void @autocomplete_do_name(ptr noundef %18, ptr noundef nonnull %5) #13
  br label %39

39:                                               ; preds = %34, %38, %31
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #14
  br label %40

40:                                               ; preds = %23, %28, %39
  %41 = call ptr @readdir(ptr noundef nonnull %15) #13
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %23, !llvm.loop !122

43:                                               ; preds = %40, %17
  %44 = call i32 @closedir(ptr noundef nonnull %15) #12
  %45 = call i32 @autocomplete_end(ptr noundef %18, ptr noundef nonnull %1) #13
  switch i32 %45, label %48 [
    i32 0, label %53
    i32 1, label %46
  ]

46:                                               ; preds = %43
  %47 = call i32 @BLI_add_slash(ptr noundef nonnull %1) #13
  br label %53

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.SpaceFile, ptr %7, i64 0, i32 5
  %50 = load ptr, ptr %49, align 8, !tbaa !34
  %51 = getelementptr inbounds %struct.FileSelectParams, ptr %50, i64 0, i32 1
  %52 = call ptr @BLI_strncpy(ptr noundef nonnull %51, ptr noundef nonnull %1, i64 noundef 1056) #13
  br label %53

53:                                               ; preds = %48, %46, %43, %14
  %54 = phi i32 [ 0, %14 ], [ %45, %43 ], [ 1, %46 ], [ %45, %48 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #14
  br label %55

55:                                               ; preds = %53, %10, %3
  %56 = phi i32 [ %54, %53 ], [ 0, %10 ], [ 0, %3 ]
  ret i32 %56
}

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @opendir(ptr nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @autocomplete_begin(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @readdir(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @BLI_join_dirfile(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_stat(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @autocomplete_do_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @closedir(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare i32 @autocomplete_end(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_add_slash(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @autocomplete_file(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = tail call ptr @CTX_wm_space_file(ptr noundef %0) #13
  %5 = load i8, ptr %1, align 1, !tbaa !46
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %33, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.SpaceFile, ptr %4, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !100
  %10 = icmp eq ptr %9, null
  br i1 %10, label %33, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @autocomplete_begin(ptr noundef nonnull %1, i64 noundef 1024) #13
  %13 = load ptr, ptr %8, align 8, !tbaa !100
  %14 = tail call i32 @filelist_numfiles(ptr noundef %13) #13
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %11, %28
  %17 = phi i32 [ %29, %28 ], [ 0, %11 ]
  %18 = load ptr, ptr %8, align 8, !tbaa !100
  %19 = tail call ptr @filelist_file(ptr noundef %18, i32 noundef %17) #13
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %16
  %22 = load i32, ptr %19, align 8, !tbaa !123
  %23 = trunc i32 %22 to i16
  %24 = and i16 %23, -4096
  switch i16 %24, label %28 [
    i16 -32768, label %25
    i16 16384, label %25
  ]

25:                                               ; preds = %21, %21
  %26 = getelementptr inbounds %struct.direntry, ptr %19, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !111
  tail call void @autocomplete_do_name(ptr noundef %12, ptr noundef %27) #13
  br label %28

28:                                               ; preds = %21, %25, %16
  %29 = add nuw nsw i32 %17, 1
  %30 = icmp eq i32 %29, %14
  br i1 %30, label %31, label %16, !llvm.loop !124

31:                                               ; preds = %28, %11
  %32 = tail call i32 @autocomplete_end(ptr noundef %12, ptr noundef nonnull %1) #13
  br label %33

33:                                               ; preds = %31, %7, %3
  %34 = phi i32 [ %32, %31 ], [ 0, %7 ], [ 0, %3 ]
  ret i32 %34
}

; Function Attrs: optsize
declare void @thumbnails_stop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @filelist_freelib(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @filelist_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_fileselect_exit(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %20, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.SpaceFile, ptr %1, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @WM_event_fileselect_event(ptr noundef %0, ptr noundef nonnull %6, i32 noundef 5) #13
  store ptr null, ptr %5, align 8, !tbaa !42
  br label %9

9:                                                ; preds = %8, %4
  %10 = getelementptr inbounds %struct.SpaceFile, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !65
  tail call void @folderlist_free(ptr noundef %11) #13
  %12 = getelementptr inbounds %struct.SpaceFile, ptr %1, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !117
  tail call void @folderlist_free(ptr noundef %13) #13
  %14 = getelementptr inbounds %struct.SpaceFile, ptr %1, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !100
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %9
  tail call void @ED_fileselect_clear(ptr noundef %0, ptr noundef nonnull %1) #12
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  %19 = load ptr, ptr %14, align 8, !tbaa !100
  tail call void %18(ptr noundef %19) #13
  store ptr null, ptr %14, align 8, !tbaa !100
  br label %20

20:                                               ; preds = %2, %17, %9
  ret void
}

; Function Attrs: optsize
declare void @WM_event_fileselect_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #11

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { optsize }
attributes #13 = { nounwind optsize }
attributes #14 = { nounwind }
attributes #15 = { nounwind optsize willreturn memory(read) }

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
!72 = !{!68, !40, i64 12}
!73 = !{!68, !40, i64 20}
!74 = !{!40, !40, i64 0}
!75 = !{!"filesel.c:BLI_rctf_size_x"}
!76 = !{!77, !59, i64 4}
!77 = !{!"rctf", !59, i64 0, !59, i64 4, !59, i64 8, !59, i64 12}
!78 = !{!77, !59, i64 0}
!79 = !{!"filesel.c:BLI_rctf_size_y"}
!80 = !{!77, !59, i64 12}
!81 = !{!77, !59, i64 8}
!82 = !{!83, !40, i64 0}
!83 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!84 = !{!83, !40, i64 8}
!85 = !{!83, !40, i64 4}
!86 = !{!83, !40, i64 12}
!87 = !{!68, !40, i64 36}
!88 = !{!68, !40, i64 32}
!89 = !{i8 0, i8 2}
!90 = !{!"filesel.c:is_inside"}
!91 = distinct !{!91, !92}
!92 = !{!"llvm.loop.mustprogress"}
!93 = distinct !{!93, !92}
!94 = !{!95, !41, i64 176}
!95 = !{!"uiStyle", !36, i64 0, !36, i64 8, !37, i64 16, !96, i64 80, !96, i64 112, !96, i64 144, !96, i64 176, !59, i64 208, !41, i64 212, !41, i64 214, !41, i64 216, !41, i64 218, !41, i64 220, !41, i64 222, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230}
!96 = !{!"uiFontStyle", !41, i64 0, !41, i64 2, !41, i64 4, !37, i64 6, !41, i64 12, !41, i64 14, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !59, i64 24, !59, i64 28}
!97 = !{!95, !41, i64 178}
!98 = !{!58, !59, i64 10908}
!99 = !{!58, !40, i64 8524}
!100 = !{!35, !36, i64 48}
!101 = !{!68, !40, i64 56}
!102 = !{!58, !41, i64 8948}
!103 = !{!68, !40, i64 0}
!104 = !{!68, !40, i64 4}
!105 = !{!68, !40, i64 40}
!106 = !{!68, !40, i64 44}
!107 = !{!68, !40, i64 24}
!108 = !{!68, !40, i64 28}
!109 = !{!59, !59, i64 0}
!110 = !{!"filesel.c:column_widths"}
!111 = !{!112, !36, i64 8}
!112 = !{!"direntry", !40, i64 0, !36, i64 8, !36, i64 16, !113, i64 24, !40, i64 168, !37, i64 172, !37, i64 188, !37, i64 192, !37, i64 196, !37, i64 200, !37, i64 216, !37, i64 224, !37, i64 240, !36, i64 256, !40, i64 264, !36, i64 272, !40, i64 280}
!113 = !{!"stat", !114, i64 0, !114, i64 8, !114, i64 16, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !114, i64 40, !114, i64 48, !114, i64 56, !114, i64 64, !115, i64 72, !115, i64 88, !115, i64 104, !37, i64 120}
!114 = !{!"long", !37, i64 0}
!115 = !{!"timespec", !114, i64 0, !114, i64 8}
!116 = distinct !{!116, !92}
!117 = !{!35, !36, i64 64}
!118 = !{!54, !40, i64 1984}
!119 = !{!112, !40, i64 280}
!120 = distinct !{!120, !92}
!121 = !{!113, !40, i64 24}
!122 = distinct !{!122, !92}
!123 = !{!112, !40, i64 0}
!124 = distinct !{!124, !92}
