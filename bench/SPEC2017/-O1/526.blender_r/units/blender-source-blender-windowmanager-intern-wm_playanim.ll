; ModuleID = 'blender/source/blender/windowmanager/intern/wm_playanim.c'
source_filename = "blender/source/blender/windowmanager/intern/wm_playanim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ListBase = type { ptr, ptr }
%struct.PlayState = type { i32, i32, float, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i32, ptr, i32, i32, i32, ptr, [1024 x i8] }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.PlayAnimPict = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, i32 }
%struct.GHOST_TEventCursorData = type { i32, i32 }
%struct.GHOST_TEventDragnDropData = type { i32, i32, i32, ptr }
%struct.GHOST_TStringArray = type { i32, ptr }

@.str = private unnamed_addr constant [3 x i8] c"-a\00", align 1
@wm_main_playanim_intern.filepath = internal global [1024 x i8] zeroinitializer, align 16
@fromdisk = internal unnamed_addr global i1 false, align 1
@swaptime = internal unnamed_addr global double 4.000000e-02, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"unknown option '%c': skipping\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"%s: '%s' not an image file\0A\00", align 1
@__func__.wm_main_playanim_intern = private unnamed_addr constant [24 x i8] c"wm_main_playanim_intern\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"%s: '%s' couldn't open\0A\00", align 1
@g_WS.0 = internal unnamed_addr global ptr null, align 8
@g_WS.1 = internal unnamed_addr global ptr null, align 8
@g_WS.2 = internal unnamed_addr global i32 0, align 8
@.str.7 = private unnamed_addr constant [13 x i8] c"Blender:Anim\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"monospace\00", align 1
@datatoc_bmonofont_ttf = external global [0 x i8], align 1
@datatoc_bmonofont_ttf_size = external local_unnamed_addr global i32, align 4
@ptottime = internal unnamed_addr global double 0.000000e+00, align 8
@picsbase = internal global %struct.ListBase zeroinitializer, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_get_memory_blocks_in_use = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [34 x i8] c" Name: %s | Speed: %.2f frames/s\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"drop file %s\0A\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.13 = private unnamed_addr constant [5 x i8] c"Pict\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"%s : %4.d\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"couldn't open anim %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"picture\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"Not enough memory for pict struct '%s'\0A\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.18 = private unnamed_addr constant [15 x i8] c"build pic list\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"Error while reading %s\0A\00", align 1
@pupdate_time.ltime = internal unnamed_addr global double 0.000000e+00, align 8
@.str.21 = private unnamed_addr constant [30 x i8] c"%s: no ibuf for picture '%s'\0A\00", align 1
@__func__.playanim_toscreen = private unnamed_addr constant [18 x i8] c"playanim_toscreen\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"<NIL>\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"%s | %.2f frames/s\00", align 1
@str = private unnamed_addr constant [23 x i8] c"couldn't find pictures\00", align 1
@str.24 = private unnamed_addr constant [34 x i8] c"error: can't play this image type\00", align 1
@str.25 = private unnamed_addr constant [44 x i8] c"too few arguments for -f (need 2): skipping\00", align 1
@str.26 = private unnamed_addr constant [22 x i8] c"invalid fps,forcing 1\00", align 1
@str.27 = private unnamed_addr constant [44 x i8] c"too few arguments for -p (need 2): skipping\00", align 1
@str.28 = private unnamed_addr constant [20 x i8] c"Couldn't get memory\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @WM_main_playanim(i32 noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.PlayState, align 8
  %8 = getelementptr inbounds %struct.PlayState, ptr %7, i64 0, i32 12
  %9 = getelementptr inbounds %struct.PlayState, ptr %7, i64 0, i32 3
  %10 = getelementptr inbounds %struct.PlayState, ptr %7, i64 0, i32 4
  %11 = getelementptr inbounds %struct.PlayState, ptr %7, i64 0, i32 5
  %12 = getelementptr inbounds %struct.PlayState, ptr %7, i64 0, i32 6
  %13 = getelementptr inbounds %struct.PlayState, ptr %7, i64 0, i32 7
  %14 = getelementptr inbounds %struct.PlayState, ptr %7, i64 0, i32 8
  %15 = getelementptr inbounds %struct.PlayState, ptr %7, i64 0, i32 9
  %16 = getelementptr inbounds %struct.PlayState, ptr %7, i64 0, i32 10
  %17 = getelementptr inbounds %struct.PlayState, ptr %7, i64 0, i32 11
  %18 = getelementptr inbounds %struct.PlayState, ptr %7, i64 0, i32 13
  %19 = getelementptr inbounds %struct.PlayState, ptr %7, i64 0, i32 16
  %20 = getelementptr inbounds %struct.PlayState, ptr %7, i64 0, i32 21
  %21 = getelementptr inbounds %struct.PlayState, ptr %7, i64 0, i32 2
  %22 = getelementptr inbounds %struct.PlayState, ptr %7, i64 0, i32 14
  %23 = getelementptr inbounds %struct.PlayState, ptr %7, i64 0, i32 14, i64 1
  %24 = getelementptr inbounds %struct.PlayState, ptr %7, i64 0, i32 15
  %25 = getelementptr inbounds %struct.PlayState, ptr %7, i64 0, i32 19
  %26 = getelementptr inbounds %struct.PlayState, ptr %7, i64 0, i32 17
  %27 = getelementptr inbounds %struct.PlayState, ptr %7, i64 0, i32 18
  %28 = getelementptr inbounds %struct.PlayState, ptr %7, i64 0, i32 1
  %29 = getelementptr inbounds ptr, ptr %1, i64 1
  %30 = getelementptr inbounds ptr, ptr %1, i64 2
  br label %31

31:                                               ; preds = %2, %517
  %32 = phi i32 [ %0, %2 ], [ %518, %517 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 1088, ptr nonnull %7) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1088) %7, i8 0, i64 1088, i1 false)
  store i8 1, ptr %8, align 1, !tbaa !34
  store i16 1, ptr %9, align 4, !tbaa !42
  store i16 1, ptr %10, align 2, !tbaa !43
  store i8 0, ptr %18, align 8, !tbaa !44
  store ptr null, ptr %19, align 8, !tbaa !45
  store i8 0, ptr %20, align 8, !tbaa !46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %11, i8 0, i64 7, i1 false)
  store float 1.000000e+00, ptr %21, align 8, !tbaa !47
  store i8 0, ptr %22, align 1, !tbaa !46
  store i8 0, ptr %23, align 2, !tbaa !46
  store i32 1, ptr %24, align 4, !tbaa !48
  store i32 -1, ptr %25, align 8, !tbaa !49
  %33 = icmp sgt i32 %32, 1
  br i1 %33, label %34, label %128

34:                                               ; preds = %31, %116
  %35 = phi i32 [ %123, %116 ], [ %32, %31 ]
  %36 = phi ptr [ %124, %116 ], [ %1, %31 ]
  %37 = phi i32 [ %120, %116 ], [ -1, %31 ]
  %38 = phi i32 [ %119, %116 ], [ -1, %31 ]
  %39 = phi i32 [ %118, %116 ], [ 0, %31 ]
  %40 = phi i32 [ %117, %116 ], [ 0, %31 ]
  %41 = getelementptr inbounds ptr, ptr %36, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !50
  %43 = load i8, ptr %42, align 1, !tbaa !46
  %44 = icmp eq i8 %43, 45
  br i1 %44, label %45, label %126

45:                                               ; preds = %34
  %46 = getelementptr inbounds i8, ptr %42, i64 1
  %47 = load i8, ptr %46, align 1, !tbaa !46
  switch i8 %47, label %113 [
    i8 109, label %48
    i8 112, label %49
    i8 102, label %63
    i8 115, label %81
    i8 101, label %89
    i8 106, label %97
  ]

48:                                               ; preds = %45
  store i1 true, ptr @fromdisk, align 1
  br label %116

49:                                               ; preds = %45
  %50 = icmp ugt i32 %35, 3
  br i1 %50, label %51, label %61

51:                                               ; preds = %49
  %52 = getelementptr inbounds ptr, ptr %36, i64 2
  %53 = load ptr, ptr %52, align 8, !tbaa !50
  %54 = call i64 @strtol(ptr nocapture noundef nonnull %53, ptr noundef null, i32 noundef 10) #11
  %55 = trunc i64 %54 to i32
  %56 = getelementptr inbounds ptr, ptr %36, i64 3
  %57 = load ptr, ptr %56, align 8, !tbaa !50
  %58 = call i64 @strtol(ptr nocapture noundef nonnull %57, ptr noundef null, i32 noundef 10) #11
  %59 = trunc i64 %58 to i32
  %60 = add nsw i32 %35, -2
  br label %116

61:                                               ; preds = %49
  %62 = call i32 @puts(ptr nonnull dereferenceable(1) @str.27)
  br label %116

63:                                               ; preds = %45
  %64 = icmp ugt i32 %35, 3
  br i1 %64, label %65, label %79

65:                                               ; preds = %63
  %66 = getelementptr inbounds ptr, ptr %36, i64 2
  %67 = load ptr, ptr %66, align 8, !tbaa !50
  %68 = call double @strtod(ptr nocapture noundef nonnull %67, ptr noundef null) #11
  %69 = getelementptr inbounds ptr, ptr %36, i64 3
  %70 = load ptr, ptr %69, align 8, !tbaa !50
  %71 = call double @strtod(ptr nocapture noundef nonnull %70, ptr noundef null) #11
  %72 = fcmp oeq double %68, 0.000000e+00
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = call i32 @puts(ptr nonnull dereferenceable(1) @str.26)
  br label %75

75:                                               ; preds = %73, %65
  %76 = phi double [ 1.000000e+00, %73 ], [ %68, %65 ]
  %77 = fdiv double %71, %76
  store double %77, ptr @swaptime, align 8, !tbaa !51
  %78 = add nsw i32 %35, -2
  br label %116

79:                                               ; preds = %63
  %80 = call i32 @puts(ptr nonnull dereferenceable(1) @str.25)
  br label %116

81:                                               ; preds = %45
  %82 = getelementptr inbounds ptr, ptr %36, i64 2
  %83 = load ptr, ptr %82, align 8, !tbaa !50
  %84 = call i64 @strtol(ptr nocapture noundef nonnull %83, ptr noundef null, i32 noundef 10) #11
  %85 = trunc i64 %84 to i32
  %86 = call i32 @llvm.smin.i32(i32 %85, i32 300000)
  %87 = call i32 @llvm.smax.i32(i32 %86, i32 1)
  %88 = add nsw i32 %35, -1
  br label %116

89:                                               ; preds = %45
  %90 = getelementptr inbounds ptr, ptr %36, i64 2
  %91 = load ptr, ptr %90, align 8, !tbaa !50
  %92 = call i64 @strtol(ptr nocapture noundef nonnull %91, ptr noundef null, i32 noundef 10) #11
  %93 = trunc i64 %92 to i32
  %94 = call i32 @llvm.smin.i32(i32 %93, i32 300000)
  %95 = call i32 @llvm.smax.i32(i32 %94, i32 1)
  %96 = add nsw i32 %35, -1
  br label %116

97:                                               ; preds = %45
  %98 = getelementptr inbounds ptr, ptr %36, i64 2
  %99 = load ptr, ptr %98, align 8, !tbaa !50
  %100 = call i64 @strtol(ptr nocapture noundef nonnull %99, ptr noundef null, i32 noundef 10) #11
  %101 = trunc i64 %100 to i32
  store i32 %101, ptr %24, align 4, !tbaa !48
  %102 = icmp slt i32 %101, 1
  br i1 %102, label %105, label %103

103:                                              ; preds = %97
  %104 = icmp sgt i32 %101, 300000
  br i1 %104, label %105, label %107

105:                                              ; preds = %103, %97
  %106 = phi i32 [ 1, %97 ], [ 300000, %103 ]
  store i32 %106, ptr %24, align 4, !tbaa !48
  br label %107

107:                                              ; preds = %105, %103
  %108 = load i32, ptr %24, align 4, !tbaa !48
  %109 = sitofp i32 %108 to double
  %110 = load double, ptr @swaptime, align 8, !tbaa !51
  %111 = fmul double %110, %109
  store double %111, ptr @swaptime, align 8, !tbaa !51
  %112 = add nsw i32 %35, -1
  br label %116

113:                                              ; preds = %45
  %114 = zext i8 %47 to i32
  %115 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %114)
  br label %116

116:                                              ; preds = %113, %107, %89, %81, %79, %75, %61, %51, %48
  %117 = phi i32 [ %40, %113 ], [ %40, %107 ], [ %40, %89 ], [ %40, %81 ], [ %40, %75 ], [ %40, %79 ], [ %55, %51 ], [ %40, %61 ], [ %40, %48 ]
  %118 = phi i32 [ %39, %113 ], [ %39, %107 ], [ %39, %89 ], [ %39, %81 ], [ %39, %75 ], [ %39, %79 ], [ %59, %51 ], [ %39, %61 ], [ %39, %48 ]
  %119 = phi i32 [ %38, %113 ], [ %38, %107 ], [ %38, %89 ], [ %87, %81 ], [ %38, %75 ], [ %38, %79 ], [ %38, %51 ], [ %38, %61 ], [ %38, %48 ]
  %120 = phi i32 [ %37, %113 ], [ %37, %107 ], [ %95, %89 ], [ %37, %81 ], [ %37, %75 ], [ %37, %79 ], [ %37, %51 ], [ %37, %61 ], [ %37, %48 ]
  %121 = phi ptr [ %36, %113 ], [ %41, %107 ], [ %41, %89 ], [ %41, %81 ], [ %66, %75 ], [ %36, %79 ], [ %52, %51 ], [ %36, %61 ], [ %36, %48 ]
  %122 = phi i32 [ %35, %113 ], [ %112, %107 ], [ %96, %89 ], [ %88, %81 ], [ %78, %75 ], [ %35, %79 ], [ %60, %51 ], [ %35, %61 ], [ %35, %48 ]
  %123 = add nsw i32 %122, -1
  %124 = getelementptr inbounds ptr, ptr %121, i64 1
  %125 = icmp sgt i32 %122, 2
  br i1 %125, label %34, label %128, !llvm.loop !53

126:                                              ; preds = %34
  %127 = call ptr @BLI_strncpy(ptr noundef nonnull @wm_main_playanim_intern.filepath, ptr noundef nonnull %42, i64 noundef 1024) #11
  br label %137

128:                                              ; preds = %116, %31
  %129 = phi i32 [ 0, %31 ], [ %117, %116 ]
  %130 = phi i32 [ 0, %31 ], [ %118, %116 ]
  %131 = phi i32 [ -1, %31 ], [ %119, %116 ]
  %132 = phi i32 [ -1, %31 ], [ %120, %116 ]
  %133 = phi ptr [ %1, %31 ], [ %124, %116 ]
  %134 = phi i32 [ %32, %31 ], [ %123, %116 ]
  %135 = call ptr @BLI_current_working_dir(ptr noundef nonnull @wm_main_playanim_intern.filepath, i64 noundef 1024) #11
  %136 = call i32 @BLI_add_slash(ptr noundef nonnull @wm_main_playanim_intern.filepath) #11
  br label %137

137:                                              ; preds = %128, %126
  %138 = phi i32 [ %129, %128 ], [ %40, %126 ]
  %139 = phi i32 [ %130, %128 ], [ %39, %126 ]
  %140 = phi i32 [ %131, %128 ], [ %38, %126 ]
  %141 = phi i32 [ %132, %128 ], [ %37, %126 ]
  %142 = phi ptr [ %133, %128 ], [ %36, %126 ]
  %143 = phi i32 [ %134, %128 ], [ %35, %126 ]
  %144 = call zeroext i8 @IMB_isanim(ptr noundef nonnull @wm_main_playanim_intern.filepath) #11
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %151, label %146

146:                                              ; preds = %137
  %147 = call ptr @IMB_open_anim(ptr noundef nonnull @wm_main_playanim_intern.filepath, i32 noundef 1, i32 noundef 0, ptr noundef null) #11
  %148 = icmp eq ptr %147, null
  br i1 %148, label %156, label %149

149:                                              ; preds = %146
  %150 = call ptr @IMB_anim_absolute(ptr noundef nonnull %147, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  call void @IMB_close_anim(ptr noundef nonnull %147) #11
  br label %156

151:                                              ; preds = %137
  %152 = call zeroext i8 @IMB_ispic(ptr noundef nonnull @wm_main_playanim_intern.filepath) #11
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %151
  %155 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef nonnull @__func__.wm_main_playanim_intern, ptr noundef nonnull @wm_main_playanim_intern.filepath)
  call void @exit(i32 noundef 1) #12
  unreachable

156:                                              ; preds = %151, %149, %146
  %157 = phi ptr [ %150, %149 ], [ null, %146 ], [ null, %151 ]
  %158 = icmp eq ptr %157, null
  br i1 %158, label %159, label %161

159:                                              ; preds = %156
  %160 = call ptr @IMB_loadiffname(ptr noundef nonnull @wm_main_playanim_intern.filepath, i32 noundef 1, ptr noundef null) #11
  br label %161

161:                                              ; preds = %159, %156
  %162 = phi ptr [ %160, %159 ], [ %157, %156 ]
  %163 = icmp eq ptr %162, null
  br i1 %163, label %164, label %166

164:                                              ; preds = %161
  %165 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef nonnull @__func__.wm_main_playanim_intern, ptr noundef nonnull @wm_main_playanim_intern.filepath)
  call void @exit(i32 noundef 1) #12
  unreachable

166:                                              ; preds = %161
  %167 = call ptr @GHOST_CreateEventConsumer(ptr noundef nonnull @ghost_event_proc, ptr noundef nonnull %7) #11
  %168 = call ptr @GHOST_CreateSystem() #11
  store ptr %168, ptr @g_WS.0, align 8, !tbaa !56
  %169 = call i32 @GHOST_AddEventConsumer(ptr noundef %168, ptr noundef %167) #11
  %170 = getelementptr inbounds %struct.ImBuf, ptr %162, i64 0, i32 2
  %171 = load i32, ptr %170, align 8, !tbaa !58
  %172 = getelementptr inbounds %struct.ImBuf, ptr %162, i64 0, i32 3
  %173 = load i32, ptr %172, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  %174 = load ptr, ptr @g_WS.0, align 8, !tbaa !56
  call void @GHOST_GetMainDisplayDimensions(ptr noundef %174, ptr noundef nonnull %3, ptr noundef nonnull %4) #11
  %175 = load i32, ptr %4, align 4, !tbaa !63
  %176 = add i32 %173, %139
  %177 = sub i32 %175, %176
  %178 = load ptr, ptr @g_WS.0, align 8, !tbaa !56
  %179 = call ptr @GHOST_CreateWindow(ptr noundef %178, ptr noundef nonnull @.str.7, i32 noundef %138, i32 noundef %177, i32 noundef %171, i32 noundef %173, i32 noundef 0, i32 noundef 1, i32 noundef 0, i16 noundef zeroext 0) #11
  store ptr %179, ptr @g_WS.1, align 8, !tbaa !64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  call void @glMatrixMode(i32 noundef 5889) #11
  call void @glLoadIdentity() #11
  call void @glOrtho(double noundef 0.000000e+00, double noundef 1.000000e+00, double noundef 0.000000e+00, double noundef 1.000000e+00, double noundef -1.000000e+00, double noundef 1.000000e+00) #11
  call void @glMatrixMode(i32 noundef 5888) #11
  %180 = load ptr, ptr @g_WS.0, align 8, !tbaa !56
  call void @GHOST_GetMainDisplayDimensions(ptr noundef %180, ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  %181 = call i32 @BLF_init(i32 noundef 11, i32 noundef 72) #11
  %182 = load i32, ptr @datatoc_bmonofont_ttf_size, align 4, !tbaa !63
  %183 = call i32 @BLF_load_mem(ptr noundef nonnull @.str.8, ptr noundef nonnull @datatoc_bmonofont_ttf, i32 noundef %182) #11
  store i32 %183, ptr %25, align 8, !tbaa !49
  call void @BLF_size(i32 noundef %183, i32 noundef 11, i32 noundef 72) #11
  %184 = load i32, ptr %170, align 8, !tbaa !58
  store i32 %184, ptr %26, align 8, !tbaa !65
  %185 = load i32, ptr %172, align 4, !tbaa !62
  store i32 %185, ptr %27, align 4, !tbaa !66
  store i32 %184, ptr %7, align 8, !tbaa !67
  store i32 %185, ptr %28, align 4, !tbaa !68
  %186 = load i32, ptr %5, align 4, !tbaa !63
  %187 = urem i32 %186, %184
  %188 = udiv i32 %186, %184
  %189 = icmp eq i32 %187, 0
  br i1 %189, label %193, label %190

190:                                              ; preds = %166
  %191 = add i32 %188, 1
  %192 = mul i32 %191, %184
  store i32 %192, ptr %5, align 4, !tbaa !63
  br label %193

193:                                              ; preds = %190, %166
  %194 = load i32, ptr %6, align 4, !tbaa !63
  %195 = load i32, ptr %172, align 4, !tbaa !62
  %196 = urem i32 %194, %195
  %197 = udiv i32 %194, %195
  %198 = icmp eq i32 %196, 0
  br i1 %198, label %202, label %199

199:                                              ; preds = %193
  %200 = add i32 %197, 1
  %201 = mul i32 %200, %195
  store i32 %201, ptr %6, align 4, !tbaa !63
  br label %202

202:                                              ; preds = %199, %193
  call void @glClearColor(float noundef 0x3FB99999A0000000, float noundef 0x3FB99999A0000000, float noundef 0x3FB99999A0000000, float noundef 0.000000e+00) #11
  call void @glClear(i32 noundef 16384) #11
  %203 = load ptr, ptr @g_WS.1, align 8, !tbaa !64
  %204 = call i32 @GHOST_SwapWindowBuffers(ptr noundef %203) #11
  %205 = icmp eq i32 %140, -1
  %206 = icmp eq i32 %141, -1
  %207 = select i1 %205, i1 true, i1 %206
  %208 = sub nsw i32 %141, %140
  %209 = add nsw i32 %208, 1
  %210 = select i1 %207, i32 300000, i32 %209
  %211 = load i32, ptr %24, align 4, !tbaa !48
  %212 = load i32, ptr %25, align 8, !tbaa !49
  call fastcc void @build_pict_list(ptr noundef nonnull %7, i32 noundef %210, i32 noundef %211, i32 noundef %212)
  %213 = icmp sgt i32 %143, 2
  br i1 %213, label %214, label %225

214:                                              ; preds = %202
  %215 = zext nneg i32 %143 to i64
  br label %216

216:                                              ; preds = %214, %216
  %217 = phi i64 [ 2, %214 ], [ %223, %216 ]
  %218 = getelementptr inbounds ptr, ptr %142, i64 %217
  %219 = load ptr, ptr %218, align 8, !tbaa !50
  %220 = call ptr @BLI_strncpy(ptr noundef nonnull @wm_main_playanim_intern.filepath, ptr noundef %219, i64 noundef 1024) #11
  %221 = load i32, ptr %24, align 4, !tbaa !48
  %222 = load i32, ptr %25, align 8, !tbaa !49
  call fastcc void @build_pict_list(ptr noundef nonnull %7, i32 noundef %210, i32 noundef %221, i32 noundef %222)
  %223 = add nuw nsw i64 %217, 1
  %224 = icmp eq i64 %223, %215
  br i1 %224, label %225, label %216, !llvm.loop !69

225:                                              ; preds = %216, %202
  call void @IMB_freeImBuf(ptr noundef nonnull %162) #11
  %226 = call double @PIL_check_seconds_timer() #11
  %227 = load double, ptr @pupdate_time.ltime, align 8, !tbaa !51
  %228 = fsub double %226, %227
  %229 = load double, ptr @ptottime, align 8, !tbaa !51
  %230 = fadd double %229, %228
  store double %230, ptr @ptottime, align 8, !tbaa !51
  store double %226, ptr @pupdate_time.ltime, align 8, !tbaa !51
  store double 0.000000e+00, ptr @ptottime, align 8, !tbaa !51
  %231 = load i8, ptr %8, align 1, !tbaa !34
  %232 = icmp eq i8 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %473, %225
  %234 = load ptr, ptr @picsbase, align 8, !tbaa !50
  store ptr %234, ptr %19, align 8, !tbaa !45
  %235 = icmp eq ptr %234, null
  br i1 %235, label %503, label %476

236:                                              ; preds = %225, %473
  %237 = load i8, ptr %13, align 2, !tbaa !70
  %238 = icmp eq i8 %237, 0
  br i1 %238, label %242, label %239

239:                                              ; preds = %236
  %240 = load i16, ptr %9, align 4, !tbaa !42
  %241 = sub i16 0, %240
  store i16 %241, ptr %9, align 4, !tbaa !42
  br label %242

242:                                              ; preds = %239, %236
  %243 = load i16, ptr %9, align 4, !tbaa !42
  %244 = icmp eq i16 %243, 1
  %245 = load ptr, ptr @picsbase, align 8
  %246 = load ptr, ptr getelementptr inbounds (%struct.ListBase, ptr @picsbase, i64 0, i32 1), align 8
  %247 = select i1 %244, ptr %245, ptr %246
  store ptr %247, ptr %19, align 8, !tbaa !45
  %248 = icmp eq ptr %247, null
  br i1 %248, label %249, label %251

249:                                              ; preds = %242
  %250 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  store i8 0, ptr %8, align 1, !tbaa !34
  br label %251

251:                                              ; preds = %249, %242
  %252 = load i8, ptr %13, align 2, !tbaa !70
  %253 = icmp eq i8 %252, 0
  br i1 %253, label %261, label %254

254:                                              ; preds = %251
  %255 = load i16, ptr %9, align 4, !tbaa !42
  %256 = icmp eq i16 %255, 1
  %257 = load ptr, ptr %19, align 8, !tbaa !45
  %258 = getelementptr inbounds %struct.PlayAnimPict, ptr %257, i64 0, i32 1
  %259 = select i1 %256, ptr %257, ptr %258
  %260 = load ptr, ptr %259, align 8, !tbaa !50
  store ptr %260, ptr %19, align 8, !tbaa !45
  br label %261

261:                                              ; preds = %254, %251
  %262 = load double, ptr @ptottime, align 8, !tbaa !51
  %263 = fcmp ogt double %262, 0.000000e+00
  br i1 %263, label %264, label %265

264:                                              ; preds = %261
  store double 0.000000e+00, ptr @ptottime, align 8, !tbaa !51
  br label %265

265:                                              ; preds = %264, %261
  br label %266

266:                                              ; preds = %265, %470
  %267 = load ptr, ptr %19, align 8, !tbaa !45
  %268 = icmp eq ptr %267, null
  br i1 %268, label %473, label %269

269:                                              ; preds = %266
  %270 = getelementptr inbounds %struct.PlayAnimPict, ptr %267, i64 0, i32 5
  %271 = load ptr, ptr %270, align 8, !tbaa !71
  %272 = icmp eq ptr %271, null
  br i1 %272, label %273, label %300

273:                                              ; preds = %269
  %274 = getelementptr inbounds %struct.PlayAnimPict, ptr %267, i64 0, i32 6
  %275 = load ptr, ptr %274, align 8, !tbaa !73
  %276 = icmp eq ptr %275, null
  br i1 %276, label %281, label %277

277:                                              ; preds = %273
  %278 = getelementptr inbounds %struct.PlayAnimPict, ptr %267, i64 0, i32 7
  %279 = load i32, ptr %278, align 8, !tbaa !74
  %280 = call ptr @IMB_anim_absolute(ptr noundef nonnull %275, i32 noundef %279, i32 noundef 0, i32 noundef 0) #11
  br label %300

281:                                              ; preds = %273
  %282 = getelementptr inbounds %struct.PlayAnimPict, ptr %267, i64 0, i32 2
  %283 = load ptr, ptr %282, align 8, !tbaa !75
  %284 = icmp eq ptr %283, null
  br i1 %284, label %294, label %285

285:                                              ; preds = %281
  %286 = getelementptr inbounds %struct.PlayAnimPict, ptr %267, i64 0, i32 3
  %287 = load i32, ptr %286, align 8, !tbaa !76
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.PlayAnimPict, ptr %267, i64 0, i32 8
  %290 = load i32, ptr %289, align 4, !tbaa !77
  %291 = getelementptr inbounds %struct.PlayAnimPict, ptr %267, i64 0, i32 4
  %292 = load ptr, ptr %291, align 8, !tbaa !78
  %293 = call ptr @IMB_ibImageFromMemory(ptr noundef nonnull %283, i64 noundef %288, i32 noundef %290, ptr noundef null, ptr noundef %292) #11
  br label %300

294:                                              ; preds = %281
  %295 = getelementptr inbounds %struct.PlayAnimPict, ptr %267, i64 0, i32 4
  %296 = load ptr, ptr %295, align 8, !tbaa !78
  %297 = getelementptr inbounds %struct.PlayAnimPict, ptr %267, i64 0, i32 8
  %298 = load i32, ptr %297, align 4, !tbaa !77
  %299 = call ptr @IMB_loadiffname(ptr noundef %296, i32 noundef %298, ptr noundef null) #11
  br label %300

300:                                              ; preds = %294, %285, %277, %269
  %301 = phi ptr [ %280, %277 ], [ %293, %285 ], [ %299, %294 ], [ %271, %269 ]
  %302 = icmp eq ptr %301, null
  br i1 %302, label %332, label %303

303:                                              ; preds = %300
  %304 = load ptr, ptr %19, align 8, !tbaa !45
  %305 = getelementptr inbounds %struct.PlayAnimPict, ptr %304, i64 0, i32 5
  store ptr %301, ptr %305, align 8, !tbaa !71
  %306 = getelementptr inbounds %struct.ImBuf, ptr %301, i64 0, i32 27
  %307 = getelementptr inbounds %struct.PlayAnimPict, ptr %304, i64 0, i32 4
  %308 = load ptr, ptr %307, align 8, !tbaa !78
  %309 = call ptr @BLI_strncpy(ptr noundef nonnull %306, ptr noundef %308, i64 noundef 1024) #11
  %310 = call double @PIL_check_seconds_timer() #11
  %311 = load double, ptr @pupdate_time.ltime, align 8, !tbaa !51
  %312 = fsub double %310, %311
  %313 = load double, ptr @ptottime, align 8, !tbaa !51
  %314 = fadd double %313, %312
  store double %314, ptr @ptottime, align 8, !tbaa !51
  store double %310, ptr @pupdate_time.ltime, align 8, !tbaa !51
  %315 = fcmp uge double %314, 0.000000e+00
  br i1 %315, label %323, label %316

316:                                              ; preds = %303, %316
  call void @PIL_sleep_ms(i32 noundef 1) #11
  %317 = call double @PIL_check_seconds_timer() #11
  %318 = load double, ptr @pupdate_time.ltime, align 8, !tbaa !51
  %319 = fsub double %317, %318
  %320 = load double, ptr @ptottime, align 8, !tbaa !51
  %321 = fadd double %320, %319
  store double %321, ptr @ptottime, align 8, !tbaa !51
  store double %317, ptr @pupdate_time.ltime, align 8, !tbaa !51
  %322 = fcmp uge double %321, 0.000000e+00
  br i1 %322, label %323, label %316, !llvm.loop !79

323:                                              ; preds = %316, %303
  %324 = phi double [ %314, %303 ], [ %321, %316 ]
  %325 = load double, ptr @swaptime, align 8, !tbaa !51
  %326 = fsub double %324, %325
  store double %326, ptr @ptottime, align 8, !tbaa !51
  %327 = load ptr, ptr %19, align 8, !tbaa !45
  %328 = load i32, ptr %25, align 8, !tbaa !49
  %329 = load i32, ptr %24, align 4, !tbaa !48
  call fastcc void @playanim_toscreen(ptr noundef nonnull %7, ptr noundef %327, ptr noundef nonnull %301, i32 noundef %328, i32 noundef %329)
  %330 = load i8, ptr %11, align 8, !tbaa !80
  %331 = icmp eq i8 %330, 0
  br i1 %331, label %343, label %334

332:                                              ; preds = %300
  %333 = call i32 @puts(ptr nonnull dereferenceable(1) @str.24)
  call void @exit(i32 noundef 0) #12
  unreachable

334:                                              ; preds = %323
  %335 = load ptr, ptr %19, align 8, !tbaa !45
  %336 = load ptr, ptr %335, align 8, !tbaa !81
  %337 = icmp eq ptr %336, null
  br i1 %337, label %342, label %338

338:                                              ; preds = %334
  %339 = getelementptr inbounds %struct.PlayAnimPict, ptr %335, i64 0, i32 1
  %340 = load ptr, ptr %339, align 8, !tbaa !82
  %341 = icmp eq ptr %340, null
  br i1 %341, label %342, label %343

342:                                              ; preds = %338, %334
  store i8 1, ptr %16, align 1, !tbaa !83
  br label %343

343:                                              ; preds = %342, %338, %323
  %344 = load i16, ptr %9, align 4, !tbaa !42
  store i16 %344, ptr %10, align 2, !tbaa !43
  br label %345

345:                                              ; preds = %381, %343
  %346 = load ptr, ptr @g_WS.0, align 8, !tbaa !56
  %347 = call i32 @GHOST_ProcessEvents(ptr noundef %346, i32 noundef 0) #11
  %348 = icmp ne i32 %347, 0
  %349 = load i8, ptr %16, align 1
  %350 = icmp ne i8 %349, 0
  %351 = select i1 %348, i1 true, i1 %350
  br i1 %351, label %352, label %384

352:                                              ; preds = %345
  br i1 %348, label %353, label %356

353:                                              ; preds = %352
  %354 = load ptr, ptr @g_WS.0, align 8, !tbaa !56
  %355 = call i32 @GHOST_DispatchEvents(ptr noundef %354) #11
  br label %356

356:                                              ; preds = %353, %352
  %357 = load i8, ptr %16, align 1, !tbaa !83
  %358 = icmp ne i8 %357, 0
  %359 = and i1 %348, %358
  br i1 %359, label %360, label %381

360:                                              ; preds = %356
  %361 = call double @PIL_check_seconds_timer() #11
  %362 = load double, ptr @pupdate_time.ltime, align 8, !tbaa !51
  %363 = fsub double %361, %362
  %364 = load double, ptr @ptottime, align 8, !tbaa !51
  %365 = fadd double %364, %363
  store double %365, ptr @ptottime, align 8, !tbaa !51
  store double %361, ptr @pupdate_time.ltime, align 8, !tbaa !51
  %366 = fcmp uge double %365, 0.000000e+00
  br i1 %366, label %374, label %367

367:                                              ; preds = %360, %367
  call void @PIL_sleep_ms(i32 noundef 1) #11
  %368 = call double @PIL_check_seconds_timer() #11
  %369 = load double, ptr @pupdate_time.ltime, align 8, !tbaa !51
  %370 = fsub double %368, %369
  %371 = load double, ptr @ptottime, align 8, !tbaa !51
  %372 = fadd double %371, %370
  store double %372, ptr @ptottime, align 8, !tbaa !51
  store double %368, ptr @pupdate_time.ltime, align 8, !tbaa !51
  %373 = fcmp uge double %372, 0.000000e+00
  br i1 %373, label %374, label %367, !llvm.loop !84

374:                                              ; preds = %367, %360
  %375 = phi double [ %365, %360 ], [ %372, %367 ]
  %376 = load double, ptr @swaptime, align 8, !tbaa !51
  %377 = fsub double %375, %376
  store double %377, ptr @ptottime, align 8, !tbaa !51
  %378 = load ptr, ptr %19, align 8, !tbaa !45
  %379 = load i32, ptr %25, align 8, !tbaa !49
  %380 = load i32, ptr %24, align 4, !tbaa !48
  call fastcc void @playanim_toscreen(ptr noundef nonnull %7, ptr noundef %378, ptr noundef nonnull %301, i32 noundef %379, i32 noundef %380)
  br label %381

381:                                              ; preds = %374, %356
  %382 = load i8, ptr %8, align 1, !tbaa !34
  %383 = icmp eq i8 %382, 0
  br i1 %383, label %384, label %345, !llvm.loop !85

384:                                              ; preds = %381, %345
  %385 = load i8, ptr %15, align 4, !tbaa !86
  store i8 %385, ptr %16, align 1, !tbaa !83
  %386 = icmp eq i8 %385, 0
  %387 = load i8, ptr %17, align 2
  %388 = icmp eq i8 %387, 0
  %389 = select i1 %386, i1 %388, i1 false
  br i1 %389, label %390, label %391

390:                                              ; preds = %384
  store i8 1, ptr %17, align 2, !tbaa !87
  br label %391

391:                                              ; preds = %390, %384
  %392 = call double @PIL_check_seconds_timer() #11
  %393 = load double, ptr @pupdate_time.ltime, align 8, !tbaa !51
  %394 = fsub double %392, %393
  %395 = load double, ptr @ptottime, align 8, !tbaa !51
  %396 = fadd double %395, %394
  store double %396, ptr @ptottime, align 8, !tbaa !51
  store double %392, ptr @pupdate_time.ltime, align 8, !tbaa !51
  %397 = load ptr, ptr %19, align 8, !tbaa !45
  %398 = icmp ne ptr %397, null
  %399 = load i16, ptr %10, align 2
  %400 = icmp ne i16 %399, 0
  %401 = select i1 %398, i1 %400, i1 false
  br i1 %401, label %402, label %470

402:                                              ; preds = %391
  %403 = load ptr, ptr %19, align 8, !tbaa !45
  %404 = icmp eq ptr %403, null
  br i1 %404, label %463, label %405

405:                                              ; preds = %402
  %406 = load double, ptr @ptottime, align 8, !tbaa !51
  %407 = load i8, ptr %16, align 1, !tbaa !83
  %408 = sext i16 %399 to i32
  %409 = icmp sgt i16 %399, 0
  %410 = icmp slt i16 %399, 0
  %411 = load i8, ptr %11, align 8, !tbaa !80
  %412 = icmp ne i8 %411, 0
  %413 = load double, ptr @swaptime, align 8
  %414 = load i8, ptr %12, align 1
  %415 = icmp ne i8 %414, 0
  %416 = load i8, ptr %14, align 1
  %417 = icmp ne i8 %416, 0
  br label %418

418:                                              ; preds = %405, %459
  %419 = phi ptr [ %403, %405 ], [ %441, %459 ]
  %420 = phi i8 [ %407, %405 ], [ %453, %459 ]
  %421 = phi double [ %406, %405 ], [ %460, %459 ]
  br i1 %409, label %422, label %430

422:                                              ; preds = %418, %422
  %423 = phi i32 [ %425, %422 ], [ %408, %418 ]
  %424 = phi ptr [ %426, %422 ], [ %419, %418 ]
  %425 = add nsw i32 %423, -1
  %426 = load ptr, ptr %424, align 8, !tbaa !81
  %427 = icmp ne i32 %425, 0
  %428 = icmp ne ptr %426, null
  %429 = select i1 %427, i1 %428, i1 false
  br i1 %429, label %422, label %440, !llvm.loop !88

430:                                              ; preds = %418
  br i1 %410, label %431, label %440

431:                                              ; preds = %430, %431
  %432 = phi i32 [ %434, %431 ], [ %408, %430 ]
  %433 = phi ptr [ %436, %431 ], [ %419, %430 ]
  %434 = add nsw i32 %432, 1
  %435 = getelementptr inbounds %struct.PlayAnimPict, ptr %433, i64 0, i32 1
  %436 = load ptr, ptr %435, align 8, !tbaa !82
  %437 = icmp ne i32 %434, 0
  %438 = icmp ne ptr %436, null
  %439 = select i1 %437, i1 %438, i1 false
  br i1 %439, label %431, label %440, !llvm.loop !89

440:                                              ; preds = %431, %422, %430
  %441 = phi ptr [ %419, %430 ], [ %426, %422 ], [ %436, %431 ]
  %442 = icmp ne ptr %441, null
  %443 = select i1 %412, i1 %442, i1 false
  br i1 %443, label %444, label %452

444:                                              ; preds = %440
  %445 = load ptr, ptr %441, align 8, !tbaa !81
  %446 = icmp eq ptr %445, null
  br i1 %446, label %451, label %447

447:                                              ; preds = %444
  %448 = getelementptr inbounds %struct.PlayAnimPict, ptr %441, i64 0, i32 1
  %449 = load ptr, ptr %448, align 8, !tbaa !82
  %450 = icmp eq ptr %449, null
  br i1 %450, label %451, label %452

451:                                              ; preds = %447, %444
  store i8 1, ptr %16, align 1, !tbaa !83
  br label %452

452:                                              ; preds = %451, %447, %440
  %453 = phi i8 [ %420, %447 ], [ %420, %440 ], [ 1, %451 ]
  %454 = icmp eq i8 %453, 0
  br i1 %454, label %455, label %462

455:                                              ; preds = %452
  %456 = fcmp olt double %421, %413
  %457 = select i1 %456, i1 true, i1 %415
  %458 = select i1 %457, i1 true, i1 %417
  br i1 %458, label %462, label %459

459:                                              ; preds = %455
  %460 = fsub double %421, %413
  store double %460, ptr @ptottime, align 8, !tbaa !51
  %461 = icmp eq ptr %441, null
  br i1 %461, label %462, label %418, !llvm.loop !90

462:                                              ; preds = %459, %452, %455
  store ptr %441, ptr %19, align 8, !tbaa !45
  br label %463

463:                                              ; preds = %462, %402
  %464 = load ptr, ptr %19, align 8, !tbaa !45
  %465 = icmp eq ptr %464, null
  %466 = load i8, ptr %15, align 4
  %467 = icmp ne i8 %466, 0
  %468 = select i1 %465, i1 %467, i1 false
  br i1 %468, label %469, label %470

469:                                              ; preds = %463
  store ptr null, ptr %19, align 8, !tbaa !45
  br label %470

470:                                              ; preds = %469, %463, %391
  %471 = load i8, ptr %8, align 1, !tbaa !34
  %472 = icmp eq i8 %471, 0
  br i1 %472, label %473, label %266

473:                                              ; preds = %470, %266
  %474 = load i8, ptr %8, align 1, !tbaa !34
  %475 = icmp eq i8 %474, 0
  br i1 %475, label %233, label %236, !llvm.loop !91

476:                                              ; preds = %233, %499
  %477 = phi ptr [ %501, %499 ], [ %234, %233 ]
  %478 = phi ptr [ %486, %499 ], [ null, %233 ]
  %479 = getelementptr inbounds %struct.PlayAnimPict, ptr %477, i64 0, i32 6
  %480 = load ptr, ptr %479, align 8, !tbaa !73
  %481 = icmp eq ptr %480, null
  %482 = icmp eq ptr %478, %480
  %483 = select i1 %481, i1 true, i1 %482
  br i1 %483, label %485, label %484

484:                                              ; preds = %476
  call void @IMB_close_anim(ptr noundef nonnull %480) #11
  br label %485

485:                                              ; preds = %484, %476
  %486 = phi ptr [ %480, %484 ], [ %478, %476 ]
  %487 = load ptr, ptr %19, align 8, !tbaa !45
  %488 = getelementptr inbounds %struct.PlayAnimPict, ptr %487, i64 0, i32 5
  %489 = load ptr, ptr %488, align 8, !tbaa !71
  %490 = icmp eq ptr %489, null
  br i1 %490, label %492, label %491

491:                                              ; preds = %485
  call void @IMB_freeImBuf(ptr noundef nonnull %489) #11
  br label %492

492:                                              ; preds = %491, %485
  %493 = load ptr, ptr %19, align 8, !tbaa !45
  %494 = getelementptr inbounds %struct.PlayAnimPict, ptr %493, i64 0, i32 2
  %495 = load ptr, ptr %494, align 8, !tbaa !75
  %496 = icmp eq ptr %495, null
  br i1 %496, label %499, label %497

497:                                              ; preds = %492
  %498 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  call void %498(ptr noundef nonnull %495) #11
  br label %499

499:                                              ; preds = %497, %492
  %500 = load ptr, ptr %19, align 8, !tbaa !45
  %501 = load ptr, ptr %500, align 8, !tbaa !50
  store ptr %501, ptr %19, align 8, !tbaa !45
  %502 = icmp eq ptr %501, null
  br i1 %502, label %503, label %476, !llvm.loop !92

503:                                              ; preds = %499, %233
  call void @BLI_freelistN(ptr noundef nonnull @picsbase) #11
  call void @BLF_exit() #11
  %504 = load ptr, ptr @g_WS.0, align 8, !tbaa !56
  %505 = load ptr, ptr @g_WS.1, align 8, !tbaa !64
  %506 = call i32 @GHOST_DisposeWindow(ptr noundef %504, ptr noundef %505) #11
  %507 = load i8, ptr %20, align 8, !tbaa !46
  %508 = icmp eq i8 %507, 0
  br i1 %508, label %511, label %509

509:                                              ; preds = %503
  %510 = call ptr @BLI_strncpy(ptr noundef nonnull @wm_main_playanim_intern.filepath, ptr noundef nonnull %20, i64 noundef 1024) #11
  br label %514

511:                                              ; preds = %503
  call void @IMB_exit() #11
  call void @BKE_images_exit() #11
  call void @DAG_exit() #11
  %512 = load ptr, ptr @MEM_get_memory_blocks_in_use, align 8, !tbaa !50
  %513 = call i32 %512() #11
  br label %514

514:                                              ; preds = %509, %511
  %515 = phi ptr [ @wm_main_playanim_intern.filepath, %509 ], [ null, %511 ]
  call void @llvm.lifetime.end.p0(i64 1088, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  br i1 %508, label %517, label %516

516:                                              ; preds = %514
  store ptr @.str, ptr %29, align 8, !tbaa !50
  store ptr %515, ptr %30, align 8, !tbaa !50
  br label %517

517:                                              ; preds = %514, %516
  %518 = phi i32 [ 3, %516 ], [ %32, %514 ]
  br i1 %508, label %519, label %31, !llvm.loop !93

519:                                              ; preds = %517
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare ptr @BLI_current_working_dir(ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @BLI_add_slash(ptr noundef) local_unnamed_addr #4

declare zeroext i8 @IMB_isanim(ptr noundef) local_unnamed_addr #4

declare ptr @IMB_open_anim(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare ptr @IMB_anim_absolute(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @IMB_close_anim(ptr noundef) local_unnamed_addr #4

declare zeroext i8 @IMB_ispic(ptr noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

declare ptr @IMB_loadiffname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare ptr @GHOST_CreateEventConsumer(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal noundef i32 @ghost_event_proc(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = tail call i32 @GHOST_GetEventType(ptr noundef %0) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  %9 = load ptr, ptr @g_WS.0, align 8, !tbaa !56
  %10 = call i32 @GHOST_GetModifierKeyState(ptr noundef %9, i32 noundef 0, ptr noundef nonnull %3) #11
  %11 = load i32, ptr %3, align 4, !tbaa !63
  %12 = icmp ne i32 %11, 0
  %13 = load i32, ptr @g_WS.2, align 8
  %14 = and i32 %13, -2
  %15 = zext i1 %12 to i32
  %16 = or disjoint i32 %14, %15
  store i32 %16, ptr @g_WS.2, align 8, !tbaa !94
  %17 = load ptr, ptr @g_WS.0, align 8, !tbaa !56
  %18 = call i32 @GHOST_GetModifierKeyState(ptr noundef %17, i32 noundef 1, ptr noundef nonnull %3) #11
  %19 = load i32, ptr %3, align 4, !tbaa !63
  %20 = icmp eq i32 %19, 0
  %21 = load i32, ptr @g_WS.2, align 8
  %22 = and i32 %21, -3
  %23 = select i1 %20, i32 0, i32 2
  %24 = or disjoint i32 %22, %23
  store i32 %24, ptr @g_WS.2, align 8, !tbaa !94
  %25 = load ptr, ptr @g_WS.0, align 8, !tbaa !56
  %26 = call i32 @GHOST_GetModifierKeyState(ptr noundef %25, i32 noundef 4, ptr noundef nonnull %3) #11
  %27 = load i32, ptr %3, align 4, !tbaa !63
  %28 = icmp eq i32 %27, 0
  %29 = load i32, ptr @g_WS.2, align 8
  %30 = and i32 %29, -17
  %31 = select i1 %28, i32 0, i32 16
  %32 = or disjoint i32 %30, %31
  store i32 %32, ptr @g_WS.2, align 8, !tbaa !94
  %33 = load ptr, ptr @g_WS.0, align 8, !tbaa !56
  %34 = call i32 @GHOST_GetModifierKeyState(ptr noundef %33, i32 noundef 5, ptr noundef nonnull %3) #11
  %35 = load i32, ptr %3, align 4, !tbaa !63
  %36 = icmp eq i32 %35, 0
  %37 = load i32, ptr @g_WS.2, align 8
  %38 = and i32 %37, -33
  %39 = select i1 %36, i32 0, i32 32
  %40 = or disjoint i32 %38, %39
  store i32 %40, ptr @g_WS.2, align 8, !tbaa !94
  %41 = load ptr, ptr @g_WS.0, align 8, !tbaa !56
  %42 = call i32 @GHOST_GetModifierKeyState(ptr noundef %41, i32 noundef 2, ptr noundef nonnull %3) #11
  %43 = load i32, ptr %3, align 4, !tbaa !63
  %44 = icmp eq i32 %43, 0
  %45 = load i32, ptr @g_WS.2, align 8
  %46 = and i32 %45, -5
  %47 = select i1 %44, i32 0, i32 4
  %48 = or disjoint i32 %46, %47
  store i32 %48, ptr @g_WS.2, align 8, !tbaa !94
  %49 = load ptr, ptr @g_WS.0, align 8, !tbaa !56
  %50 = call i32 @GHOST_GetModifierKeyState(ptr noundef %49, i32 noundef 3, ptr noundef nonnull %3) #11
  %51 = load i32, ptr %3, align 4, !tbaa !63
  %52 = icmp eq i32 %51, 0
  %53 = load i32, ptr @g_WS.2, align 8
  %54 = and i32 %53, -9
  %55 = select i1 %52, i32 0, i32 8
  %56 = or disjoint i32 %54, %55
  store i32 %56, ptr @g_WS.2, align 8, !tbaa !94
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  %57 = icmp eq i32 %8, 2
  %58 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 13
  %59 = load i8, ptr %58, align 8, !tbaa !44
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %2
  %62 = and i32 %8, -2
  %63 = icmp eq i32 %62, 8
  br i1 %63, label %64, label %431

64:                                               ; preds = %61
  %65 = call ptr @GHOST_GetEventData(ptr noundef %0) #11
  %66 = load i32, ptr %65, align 4, !tbaa !95
  %67 = icmp eq i32 %66, 27
  br i1 %67, label %68, label %431

68:                                               ; preds = %64
  store i8 0, ptr %58, align 8, !tbaa !44
  br label %431

69:                                               ; preds = %2
  %70 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 10
  %71 = load i8, ptr %70, align 1, !tbaa !83
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %85, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 11
  %75 = load i8, ptr %74, align 2, !tbaa !87
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %73
  store i8 0, ptr %74, align 2, !tbaa !87
  br label %78

78:                                               ; preds = %77, %73
  br i1 %72, label %85, label %79

79:                                               ; preds = %78
  %80 = call double @PIL_check_seconds_timer() #11
  %81 = load double, ptr @pupdate_time.ltime, align 8, !tbaa !51
  %82 = fsub double %80, %81
  %83 = load double, ptr @ptottime, align 8, !tbaa !51
  %84 = fadd double %83, %82
  store double %84, ptr @ptottime, align 8, !tbaa !51
  store double %80, ptr @pupdate_time.ltime, align 8, !tbaa !51
  store double 0.000000e+00, ptr @ptottime, align 8, !tbaa !51
  br label %85

85:                                               ; preds = %69, %79, %78
  switch i32 %8, label %431 [
    i32 8, label %86
    i32 9, label %86
    i32 2, label %279
    i32 3, label %279
    i32 1, label %329
    i32 12, label %369
    i32 13, label %369
    i32 15, label %372
    i32 16, label %372
    i32 10, label %409
    i32 11, label %409
    i32 20, label %411
  ]

86:                                               ; preds = %85, %85
  %87 = call ptr @GHOST_GetEventData(ptr noundef %0) #11
  %88 = load i32, ptr %87, align 4, !tbaa !95
  switch i32 %88, label %431 [
    i32 65, label %89
    i32 80, label %95
    i32 70, label %101
    i32 49, label %111
    i32 280, label %111
    i32 50, label %117
    i32 281, label %117
    i32 51, label %123
    i32 282, label %123
    i32 52, label %129
    i32 283, label %129
    i32 53, label %140
    i32 284, label %140
    i32 54, label %146
    i32 285, label %146
    i32 55, label %152
    i32 286, label %152
    i32 56, label %158
    i32 287, label %158
    i32 57, label %164
    i32 288, label %164
    i32 267, label %170
    i32 270, label %182
    i32 268, label %193
    i32 269, label %205
    i32 47, label %216
    i32 294, label %216
    i32 48, label %238
    i32 279, label %238
    i32 13, label %246
    i32 290, label %246
    i32 46, label %249
    i32 289, label %249
    i32 61, label %259
    i32 291, label %259
    i32 45, label %268
    i32 292, label %268
    i32 27, label %277
  ]

89:                                               ; preds = %86
  switch i32 %8, label %431 [
    i32 8, label %90
    i32 2, label %90
  ]

90:                                               ; preds = %89, %89
  %91 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 8
  %92 = load i8, ptr %91, align 1, !tbaa !97
  %93 = icmp eq i8 %92, 0
  %94 = zext i1 %93 to i8
  store i8 %94, ptr %91, align 1, !tbaa !97
  br label %431

95:                                               ; preds = %86
  switch i32 %8, label %431 [
    i32 8, label %96
    i32 2, label %96
  ]

96:                                               ; preds = %95, %95
  %97 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 7
  %98 = load i8, ptr %97, align 2, !tbaa !70
  %99 = icmp eq i8 %98, 0
  %100 = zext i1 %99 to i8
  store i8 %100, ptr %97, align 2, !tbaa !70
  br label %431

101:                                              ; preds = %86
  switch i32 %8, label %431 [
    i32 8, label %102
    i32 2, label %102
  ]

102:                                              ; preds = %101, %101
  %103 = load i32, ptr @g_WS.2, align 8, !tbaa !94
  %104 = and i32 %103, 3
  %105 = icmp ne i32 %104, 0
  %106 = zext i1 %105 to i64
  %107 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 14, i64 %106
  %108 = load i8, ptr %107, align 1, !tbaa !46
  %109 = icmp eq i8 %108, 0
  %110 = zext i1 %109 to i8
  store i8 %110, ptr %107, align 1, !tbaa !46
  br label %431

111:                                              ; preds = %86, %86
  switch i32 %8, label %431 [
    i32 8, label %112
    i32 2, label %112
  ]

112:                                              ; preds = %111, %111
  %113 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 15
  %114 = load i32, ptr %113, align 4, !tbaa !48
  %115 = sitofp i32 %114 to double
  %116 = fdiv double %115, 6.000000e+01
  store double %116, ptr @swaptime, align 8, !tbaa !51
  br label %431

117:                                              ; preds = %86, %86
  switch i32 %8, label %431 [
    i32 8, label %118
    i32 2, label %118
  ]

118:                                              ; preds = %117, %117
  %119 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 15
  %120 = load i32, ptr %119, align 4, !tbaa !48
  %121 = sitofp i32 %120 to double
  %122 = fdiv double %121, 5.000000e+01
  store double %122, ptr @swaptime, align 8, !tbaa !51
  br label %431

123:                                              ; preds = %86, %86
  switch i32 %8, label %431 [
    i32 8, label %124
    i32 2, label %124
  ]

124:                                              ; preds = %123, %123
  %125 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 15
  %126 = load i32, ptr %125, align 4, !tbaa !48
  %127 = sitofp i32 %126 to double
  %128 = fdiv double %127, 3.000000e+01
  store double %128, ptr @swaptime, align 8, !tbaa !51
  br label %431

129:                                              ; preds = %86, %86
  %130 = load i32, ptr @g_WS.2, align 8, !tbaa !94
  %131 = and i32 %130, 3
  %132 = icmp eq i32 %131, 0
  %133 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 15
  %134 = load i32, ptr %133, align 4, !tbaa !48
  %135 = sitofp i32 %134 to double
  br i1 %132, label %138, label %136

136:                                              ; preds = %129
  %137 = fdiv double %135, 2.400000e+01
  store double %137, ptr @swaptime, align 8, !tbaa !51
  br label %431

138:                                              ; preds = %129
  %139 = fdiv double %135, 2.500000e+01
  store double %139, ptr @swaptime, align 8, !tbaa !51
  br label %431

140:                                              ; preds = %86, %86
  switch i32 %8, label %431 [
    i32 8, label %141
    i32 2, label %141
  ]

141:                                              ; preds = %140, %140
  %142 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 15
  %143 = load i32, ptr %142, align 4, !tbaa !48
  %144 = sitofp i32 %143 to double
  %145 = fdiv double %144, 2.000000e+01
  store double %145, ptr @swaptime, align 8, !tbaa !51
  br label %431

146:                                              ; preds = %86, %86
  switch i32 %8, label %431 [
    i32 8, label %147
    i32 2, label %147
  ]

147:                                              ; preds = %146, %146
  %148 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 15
  %149 = load i32, ptr %148, align 4, !tbaa !48
  %150 = sitofp i32 %149 to double
  %151 = fdiv double %150, 1.500000e+01
  store double %151, ptr @swaptime, align 8, !tbaa !51
  br label %431

152:                                              ; preds = %86, %86
  switch i32 %8, label %431 [
    i32 8, label %153
    i32 2, label %153
  ]

153:                                              ; preds = %152, %152
  %154 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 15
  %155 = load i32, ptr %154, align 4, !tbaa !48
  %156 = sitofp i32 %155 to double
  %157 = fdiv double %156, 1.200000e+01
  store double %157, ptr @swaptime, align 8, !tbaa !51
  br label %431

158:                                              ; preds = %86, %86
  switch i32 %8, label %431 [
    i32 8, label %159
    i32 2, label %159
  ]

159:                                              ; preds = %158, %158
  %160 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 15
  %161 = load i32, ptr %160, align 4, !tbaa !48
  %162 = sitofp i32 %161 to double
  %163 = fdiv double %162, 1.000000e+01
  store double %163, ptr @swaptime, align 8, !tbaa !51
  br label %431

164:                                              ; preds = %86, %86
  switch i32 %8, label %431 [
    i32 8, label %165
    i32 2, label %165
  ]

165:                                              ; preds = %164, %164
  %166 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 15
  %167 = load i32, ptr %166, align 4, !tbaa !48
  %168 = sitofp i32 %167 to double
  %169 = fdiv double %168, 6.000000e+00
  store double %169, ptr @swaptime, align 8, !tbaa !51
  br label %431

170:                                              ; preds = %86
  switch i32 %8, label %431 [
    i32 8, label %171
    i32 2, label %171
  ]

171:                                              ; preds = %170, %170
  %172 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 9
  store i8 1, ptr %172, align 4, !tbaa !86
  store i8 0, ptr %70, align 1, !tbaa !83
  %173 = load i32, ptr @g_WS.2, align 8, !tbaa !94
  %174 = and i32 %173, 3
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %180, label %176

176:                                              ; preds = %171
  %177 = load ptr, ptr @picsbase, align 8, !tbaa !98
  %178 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 16
  store ptr %177, ptr %178, align 8, !tbaa !45
  %179 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 4
  store i16 0, ptr %179, align 2, !tbaa !43
  br label %431

180:                                              ; preds = %171
  %181 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 4
  store i16 -1, ptr %181, align 2, !tbaa !43
  br label %431

182:                                              ; preds = %86
  switch i32 %8, label %431 [
    i32 8, label %183
    i32 2, label %183
  ]

183:                                              ; preds = %182, %182
  store i8 0, ptr %70, align 1, !tbaa !83
  %184 = load i32, ptr @g_WS.2, align 8, !tbaa !94
  %185 = and i32 %184, 3
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %190, label %187

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 3
  store i16 -1, ptr %188, align 4, !tbaa !42
  %189 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 4
  store i16 -1, ptr %189, align 2, !tbaa !43
  br label %431

190:                                              ; preds = %183
  %191 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 4
  store i16 -10, ptr %191, align 2, !tbaa !43
  %192 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 9
  store i8 1, ptr %192, align 4, !tbaa !86
  br label %431

193:                                              ; preds = %86
  switch i32 %8, label %431 [
    i32 8, label %194
    i32 2, label %194
  ]

194:                                              ; preds = %193, %193
  %195 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 9
  store i8 1, ptr %195, align 4, !tbaa !86
  store i8 0, ptr %70, align 1, !tbaa !83
  %196 = load i32, ptr @g_WS.2, align 8, !tbaa !94
  %197 = and i32 %196, 3
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %203, label %199

199:                                              ; preds = %194
  %200 = load ptr, ptr getelementptr inbounds (%struct.ListBase, ptr @picsbase, i64 0, i32 1), align 8, !tbaa !100
  %201 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 16
  store ptr %200, ptr %201, align 8, !tbaa !45
  %202 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 4
  store i16 0, ptr %202, align 2, !tbaa !43
  br label %431

203:                                              ; preds = %194
  %204 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 4
  store i16 1, ptr %204, align 2, !tbaa !43
  br label %431

205:                                              ; preds = %86
  switch i32 %8, label %431 [
    i32 8, label %206
    i32 2, label %206
  ]

206:                                              ; preds = %205, %205
  store i8 0, ptr %70, align 1, !tbaa !83
  %207 = load i32, ptr @g_WS.2, align 8, !tbaa !94
  %208 = and i32 %207, 3
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %213, label %210

210:                                              ; preds = %206
  %211 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 3
  store i16 1, ptr %211, align 4, !tbaa !42
  %212 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 4
  store i16 1, ptr %212, align 2, !tbaa !43
  br label %431

213:                                              ; preds = %206
  %214 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 4
  store i16 10, ptr %214, align 2, !tbaa !43
  %215 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 9
  store i8 1, ptr %215, align 4, !tbaa !86
  br label %431

216:                                              ; preds = %86, %86
  switch i32 %8, label %431 [
    i32 8, label %217
    i32 2, label %217
  ]

217:                                              ; preds = %216, %216
  %218 = load i32, ptr @g_WS.2, align 8, !tbaa !94
  %219 = and i32 %218, 3
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %233, label %221

221:                                              ; preds = %217
  %222 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 20
  %223 = load ptr, ptr %222, align 8, !tbaa !101
  %224 = icmp eq ptr %223, null
  br i1 %224, label %431, label %225

225:                                              ; preds = %221
  %226 = getelementptr inbounds %struct.ImBuf, ptr %223, i64 0, i32 27
  %227 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 15
  %228 = load i32, ptr %227, align 4, !tbaa !48
  %229 = sitofp i32 %228 to double
  %230 = load double, ptr @swaptime, align 8, !tbaa !51
  %231 = fdiv double %229, %230
  %232 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, ptr noundef nonnull %226, double noundef %231)
  br label %431

233:                                              ; preds = %217
  %234 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 15
  %235 = load i32, ptr %234, align 4, !tbaa !48
  %236 = sitofp i32 %235 to double
  %237 = fdiv double %236, 5.000000e+00
  store double %237, ptr @swaptime, align 8, !tbaa !51
  br label %431

238:                                              ; preds = %86, %86
  switch i32 %8, label %431 [
    i32 8, label %239
    i32 2, label %239
  ]

239:                                              ; preds = %238, %238
  %240 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 5
  %241 = load i8, ptr %240, align 8, !tbaa !80
  %242 = icmp eq i8 %241, 0
  br i1 %242, label %244, label %243

243:                                              ; preds = %239
  store i8 0, ptr %70, align 1, !tbaa !83
  store i8 0, ptr %240, align 8, !tbaa !80
  br label %431

244:                                              ; preds = %239
  %245 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 16
  store ptr null, ptr %245, align 8, !tbaa !45
  store i8 1, ptr %240, align 8, !tbaa !80
  store i8 0, ptr %70, align 1, !tbaa !83
  br label %431

246:                                              ; preds = %86, %86
  switch i32 %8, label %431 [
    i32 8, label %247
    i32 2, label %247
  ]

247:                                              ; preds = %246, %246
  %248 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 9
  store i8 0, ptr %248, align 4, !tbaa !86
  store i8 0, ptr %70, align 1, !tbaa !83
  br label %431

249:                                              ; preds = %86, %86
  switch i32 %8, label %431 [
    i32 8, label %250
    i32 2, label %250
  ]

250:                                              ; preds = %249, %249
  %251 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 9
  %252 = load i8, ptr %251, align 4, !tbaa !86
  %253 = icmp eq i8 %252, 0
  br i1 %253, label %255, label %254

254:                                              ; preds = %250
  store i8 0, ptr %70, align 1, !tbaa !83
  br label %431

255:                                              ; preds = %250
  store i8 1, ptr %251, align 4, !tbaa !86
  %256 = load i8, ptr %70, align 1, !tbaa !83
  %257 = icmp eq i8 %256, 0
  %258 = zext i1 %257 to i8
  store i8 %258, ptr %70, align 1, !tbaa !83
  br label %431

259:                                              ; preds = %86, %86
  switch i32 %8, label %431 [
    i32 8, label %260
    i32 2, label %260
  ]

260:                                              ; preds = %259, %259
  %261 = load i32, ptr @g_WS.2, align 8, !tbaa !94
  %262 = and i32 %261, 48
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %265, label %264

264:                                              ; preds = %260
  call fastcc void @playanim_window_zoom(ptr noundef %1, float noundef 1.000000e+00)
  br label %431

265:                                              ; preds = %260
  %266 = load double, ptr @swaptime, align 8, !tbaa !51
  %267 = fdiv double %266, 1.100000e+00
  store double %267, ptr @swaptime, align 8, !tbaa !51
  br label %431

268:                                              ; preds = %86, %86
  switch i32 %8, label %431 [
    i32 8, label %269
    i32 2, label %269
  ]

269:                                              ; preds = %268, %268
  %270 = load i32, ptr @g_WS.2, align 8, !tbaa !94
  %271 = and i32 %270, 48
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %274, label %273

273:                                              ; preds = %269
  call fastcc void @playanim_window_zoom(ptr noundef %1, float noundef -1.000000e+00)
  br label %431

274:                                              ; preds = %269
  %275 = load double, ptr @swaptime, align 8, !tbaa !51
  %276 = fmul double %275, 1.100000e+00
  store double %276, ptr @swaptime, align 8, !tbaa !51
  br label %431

277:                                              ; preds = %86
  %278 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 12
  store i8 0, ptr %278, align 1, !tbaa !34
  br label %431

279:                                              ; preds = %85, %85
  %280 = call ptr @GHOST_GetEventData(ptr noundef %0) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  %281 = load ptr, ptr @g_WS.0, align 8, !tbaa !56
  %282 = call i32 @GHOST_GetCursorPosition(ptr noundef %281, ptr noundef nonnull %4, ptr noundef nonnull %5) #11
  %283 = load ptr, ptr @g_WS.1, align 8, !tbaa !64
  %284 = load i32, ptr %4, align 4, !tbaa !63
  %285 = load i32, ptr %5, align 4, !tbaa !63
  call void @GHOST_ScreenToClient(ptr noundef %283, i32 noundef %284, i32 noundef %285, ptr noundef nonnull %4, ptr noundef nonnull %5) #11
  %286 = load ptr, ptr @g_WS.1, align 8, !tbaa !64
  %287 = call ptr @GHOST_GetClientBounds(ptr noundef %286) #11
  %288 = call i32 @GHOST_GetWidthRectangle(ptr noundef %287) #11
  %289 = call i32 @GHOST_GetHeightRectangle(ptr noundef %287) #11
  call void @GHOST_DisposeRectangle(ptr noundef %287) #11
  %290 = load i32, ptr %4, align 4, !tbaa !63
  %291 = icmp sgt i32 %290, -1
  br i1 %291, label %292, label %299

292:                                              ; preds = %279
  %293 = icmp slt i32 %290, %288
  %294 = load i32, ptr %5, align 4
  %295 = icmp sgt i32 %294, -1
  %296 = select i1 %293, i1 %295, i1 false
  %297 = icmp sle i32 %294, %289
  %298 = select i1 %296, i1 %297, i1 false
  br label %299

299:                                              ; preds = %292, %279
  %300 = phi i1 [ false, %279 ], [ %298, %292 ]
  %301 = load i32, ptr %280, align 4, !tbaa !102
  switch i32 %301, label %328 [
    i32 0, label %302
    i32 1, label %310
    i32 2, label %318
  ]

302:                                              ; preds = %299
  br i1 %57, label %303, label %307

303:                                              ; preds = %302
  br i1 %300, label %304, label %328

304:                                              ; preds = %303
  %305 = load i32, ptr @g_WS.2, align 8, !tbaa !94
  %306 = or i32 %305, 65536
  br label %326

307:                                              ; preds = %302
  %308 = load i32, ptr @g_WS.2, align 8, !tbaa !94
  %309 = and i32 %308, -65537
  br label %326

310:                                              ; preds = %299
  br i1 %57, label %311, label %315

311:                                              ; preds = %310
  br i1 %300, label %312, label %328

312:                                              ; preds = %311
  %313 = load i32, ptr @g_WS.2, align 8, !tbaa !94
  %314 = or i32 %313, 131072
  br label %326

315:                                              ; preds = %310
  %316 = load i32, ptr @g_WS.2, align 8, !tbaa !94
  %317 = and i32 %316, -131073
  br label %326

318:                                              ; preds = %299
  br i1 %57, label %319, label %323

319:                                              ; preds = %318
  br i1 %300, label %320, label %328

320:                                              ; preds = %319
  %321 = load i32, ptr @g_WS.2, align 8, !tbaa !94
  %322 = or i32 %321, 262144
  br label %326

323:                                              ; preds = %318
  %324 = load i32, ptr @g_WS.2, align 8, !tbaa !94
  %325 = and i32 %324, -262145
  br label %326

326:                                              ; preds = %304, %307, %320, %323, %315, %312
  %327 = phi i32 [ %314, %312 ], [ %317, %315 ], [ %325, %323 ], [ %322, %320 ], [ %309, %307 ], [ %306, %304 ]
  store i32 %327, ptr @g_WS.2, align 8, !tbaa !94
  br label %328

328:                                              ; preds = %326, %299, %311, %319, %303
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  br label %431

329:                                              ; preds = %85
  %330 = load i32, ptr @g_WS.2, align 8, !tbaa !94
  %331 = and i32 %330, 65536
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %431, label %333

333:                                              ; preds = %329
  %334 = call ptr @GHOST_GetEventData(ptr noundef %0) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  %335 = load ptr, ptr @g_WS.1, align 8, !tbaa !64
  %336 = load i32, ptr %334, align 4, !tbaa !104
  %337 = getelementptr inbounds %struct.GHOST_TEventCursorData, ptr %334, i64 0, i32 1
  %338 = load i32, ptr %337, align 4, !tbaa !106
  call void @GHOST_ScreenToClient(ptr noundef %335, i32 noundef %336, i32 noundef %338, ptr noundef nonnull %6, ptr noundef nonnull %7) #11
  %339 = load ptr, ptr @g_WS.1, align 8, !tbaa !64
  %340 = call ptr @GHOST_GetClientBounds(ptr noundef %339) #11
  %341 = call i32 @GHOST_GetWidthRectangle(ptr noundef %340) #11
  %342 = call i32 @GHOST_GetHeightRectangle(ptr noundef %340) #11
  call void @GHOST_DisposeRectangle(ptr noundef %340) #11
  %343 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 16
  br label %344

344:                                              ; preds = %344, %333
  %345 = phi ptr [ @picsbase, %333 ], [ %347, %344 ]
  %346 = phi i32 [ 0, %333 ], [ %349, %344 ]
  %347 = load ptr, ptr %345, align 8, !tbaa !50
  store ptr %347, ptr %343, align 8, !tbaa !45
  %348 = icmp eq ptr %347, null
  %349 = add nuw nsw i32 %346, 1
  br i1 %348, label %350, label %344, !llvm.loop !107

350:                                              ; preds = %344
  %351 = load i32, ptr %6, align 4, !tbaa !63
  %352 = mul nsw i32 %351, %346
  %353 = sdiv i32 %352, %341
  %354 = load ptr, ptr @picsbase, align 8, !tbaa !98
  store ptr %354, ptr %343, align 8, !tbaa !45
  %355 = icmp sgt i32 %353, 0
  br i1 %355, label %356, label %366

356:                                              ; preds = %350
  %357 = load ptr, ptr %343, align 8, !tbaa !45
  br label %358

358:                                              ; preds = %356, %363
  %359 = phi ptr [ %357, %356 ], [ %361, %363 ]
  %360 = phi i32 [ %353, %356 ], [ %364, %363 ]
  %361 = load ptr, ptr %359, align 8, !tbaa !81
  %362 = icmp eq ptr %361, null
  br i1 %362, label %366, label %363

363:                                              ; preds = %358
  store ptr %361, ptr %343, align 8, !tbaa !45
  %364 = add nsw i32 %360, -1
  %365 = icmp sgt i32 %360, 1
  br i1 %365, label %358, label %366, !llvm.loop !108

366:                                              ; preds = %363, %358, %350
  %367 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 9
  store i8 1, ptr %367, align 4, !tbaa !86
  store i8 0, ptr %70, align 1, !tbaa !83
  %368 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 4
  store i16 0, ptr %368, align 2, !tbaa !43
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  br label %431

369:                                              ; preds = %85, %85
  %370 = load i32, ptr @g_WS.2, align 8, !tbaa !94
  %371 = and i32 %370, -458753
  store i32 %371, ptr @g_WS.2, align 8, !tbaa !94
  br label %431

372:                                              ; preds = %85, %85
  %373 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 1
  %374 = load ptr, ptr @g_WS.1, align 8, !tbaa !64
  %375 = call ptr @GHOST_GetClientBounds(ptr noundef %374) #11
  %376 = call i32 @GHOST_GetWidthRectangle(ptr noundef %375) #11
  store i32 %376, ptr %1, align 4, !tbaa !63
  %377 = call i32 @GHOST_GetHeightRectangle(ptr noundef %375) #11
  store i32 %377, ptr %373, align 4, !tbaa !63
  call void @GHOST_DisposeRectangle(ptr noundef %375) #11
  %378 = load ptr, ptr @g_WS.1, align 8, !tbaa !64
  %379 = call i32 @GHOST_ActivateWindowDrawingContext(ptr noundef %378) #11
  %380 = load i32, ptr %1, align 8, !tbaa !67
  %381 = sitofp i32 %380 to float
  %382 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 17
  %383 = load i32, ptr %382, align 8, !tbaa !65
  %384 = sitofp i32 %383 to float
  %385 = fdiv float %381, %384
  %386 = load i32, ptr %373, align 4, !tbaa !68
  %387 = sitofp i32 %386 to float
  %388 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 18
  %389 = load i32, ptr %388, align 4, !tbaa !66
  %390 = sitofp i32 %389 to float
  %391 = fdiv float %387, %390
  %392 = fcmp olt float %385, %391
  %393 = select i1 %392, float %385, float %391
  %394 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 2
  %395 = fadd float %393, 5.000000e-01
  %396 = call float @llvm.floor.f32(float %395)
  %397 = fcmp olt float %396, 1.000000e+00
  %398 = select i1 %397, float 1.000000e+00, float %396
  store float %398, ptr %394, align 8, !tbaa !47
  call void @glViewport(i32 noundef 0, i32 noundef 0, i32 noundef %380, i32 noundef %386) #11
  %399 = load i32, ptr %1, align 8, !tbaa !67
  %400 = load i32, ptr %373, align 4, !tbaa !68
  call void @glScissor(i32 noundef 0, i32 noundef 0, i32 noundef %399, i32 noundef %400) #11
  call void @glMatrixMode(i32 noundef 5889) #11
  call void @glLoadIdentity() #11
  call void @glOrtho(double noundef 0.000000e+00, double noundef 1.000000e+00, double noundef 0.000000e+00, double noundef 1.000000e+00, double noundef -1.000000e+00, double noundef 1.000000e+00) #11
  call void @glMatrixMode(i32 noundef 5888) #11
  store double 0.000000e+00, ptr @ptottime, align 8, !tbaa !51
  %401 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 16
  %402 = load ptr, ptr %401, align 8, !tbaa !45
  %403 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 20
  %404 = load ptr, ptr %403, align 8, !tbaa !101
  %405 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 19
  %406 = load i32, ptr %405, align 8, !tbaa !49
  %407 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 15
  %408 = load i32, ptr %407, align 4, !tbaa !48
  call fastcc void @playanim_toscreen(ptr noundef nonnull %1, ptr noundef %402, ptr noundef %404, i32 noundef %406, i32 noundef %408)
  br label %431

409:                                              ; preds = %85, %85
  %410 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 12
  store i8 0, ptr %410, align 1, !tbaa !34
  br label %431

411:                                              ; preds = %85
  %412 = call ptr @GHOST_GetEventData(ptr noundef %0) #11
  %413 = getelementptr inbounds %struct.GHOST_TEventDragnDropData, ptr %412, i64 0, i32 2
  %414 = load i32, ptr %413, align 8, !tbaa !109
  %415 = icmp eq i32 %414, 1
  br i1 %415, label %416, label %431

416:                                              ; preds = %411
  %417 = getelementptr inbounds %struct.GHOST_TEventDragnDropData, ptr %412, i64 0, i32 3
  %418 = load ptr, ptr %417, align 8, !tbaa !111
  %419 = load i32, ptr %418, align 8, !tbaa !112
  %420 = icmp sgt i32 %419, 0
  br i1 %420, label %421, label %431

421:                                              ; preds = %416
  %422 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 21
  %423 = getelementptr inbounds %struct.GHOST_TStringArray, ptr %418, i64 0, i32 1
  %424 = load ptr, ptr %423, align 8, !tbaa !114
  %425 = load ptr, ptr %424, align 8, !tbaa !50
  %426 = call ptr @BLI_strncpy(ptr noundef nonnull %422, ptr noundef %425, i64 noundef 1024) #11
  %427 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 12
  store i8 0, ptr %427, align 1, !tbaa !34
  %428 = load ptr, ptr %423, align 8, !tbaa !114
  %429 = load ptr, ptr %428, align 8, !tbaa !50
  %430 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef %429)
  br label %431

431:                                              ; preds = %328, %369, %372, %409, %366, %329, %85, %268, %259, %249, %246, %238, %216, %205, %193, %182, %170, %164, %158, %152, %146, %140, %123, %117, %111, %101, %95, %89, %86, %273, %274, %264, %265, %255, %254, %247, %244, %243, %221, %225, %233, %213, %210, %203, %199, %190, %187, %180, %176, %165, %159, %153, %147, %141, %136, %138, %124, %118, %112, %102, %96, %90, %277, %416, %421, %411, %61, %64, %68
  ret i32 1
}

declare ptr @GHOST_CreateSystem() local_unnamed_addr #4

declare i32 @GHOST_AddEventConsumer(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @GHOST_GetMainDisplayDimensions(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @BLF_init(i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @BLF_load_mem(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @BLF_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @glClearColor(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #4

declare void @glClear(i32 noundef) local_unnamed_addr #4

declare i32 @GHOST_SwapWindowBuffers(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @build_pict_list(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [1024 x i8], align 16
  %6 = alloca [1056 x i8], align 16
  %7 = getelementptr inbounds %struct.PlayState, ptr %0, i64 0, i32 13
  store i8 1, ptr %7, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 1056, ptr nonnull %6) #11
  %8 = tail call zeroext i8 @IMB_isanim(ptr noundef nonnull @wm_main_playanim_intern.filepath) #11
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %35, label %10

10:                                               ; preds = %4
  %11 = tail call ptr @IMB_open_anim(ptr noundef nonnull @wm_main_playanim_intern.filepath, i32 noundef 1, i32 noundef 0, ptr noundef null) #11
  %12 = icmp eq ptr %11, null
  br i1 %12, label %33, label %13

13:                                               ; preds = %10
  %14 = tail call ptr @IMB_anim_absolute(ptr noundef nonnull %11, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  tail call fastcc void @playanim_toscreen(ptr noundef %0, ptr noundef null, ptr noundef nonnull %14, i32 noundef %3, i32 noundef %2)
  tail call void @IMB_freeImBuf(ptr noundef nonnull %14) #11
  br label %17

17:                                               ; preds = %16, %13
  %18 = tail call i32 @IMB_anim_get_duration(ptr noundef nonnull %11, i32 noundef 0) #11
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %136

20:                                               ; preds = %17, %20
  %21 = phi i32 [ %27, %20 ], [ 0, %17 ]
  %22 = load ptr, ptr @MEM_callocN, align 8, !tbaa !50
  %23 = call ptr %22(i64 noundef 64, ptr noundef nonnull @.str.13) #11
  %24 = getelementptr inbounds %struct.PlayAnimPict, ptr %23, i64 0, i32 6
  store ptr %11, ptr %24, align 8, !tbaa !73
  %25 = getelementptr inbounds %struct.PlayAnimPict, ptr %23, i64 0, i32 7
  store i32 %21, ptr %25, align 8, !tbaa !74
  %26 = getelementptr inbounds %struct.PlayAnimPict, ptr %23, i64 0, i32 8
  store i32 1, ptr %26, align 4, !tbaa !77
  %27 = add nuw nsw i32 %21, 1
  %28 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %6, i64 noundef 1056, ptr noundef nonnull @.str.14, ptr noundef nonnull @wm_main_playanim_intern.filepath, i32 noundef %27) #11
  %29 = call noalias ptr @strdup(ptr noundef nonnull %6) #11
  %30 = getelementptr inbounds %struct.PlayAnimPict, ptr %23, i64 0, i32 4
  store ptr %29, ptr %30, align 8, !tbaa !78
  call void @BLI_addtail(ptr noundef nonnull @picsbase, ptr noundef %23) #11
  %31 = call i32 @IMB_anim_get_duration(ptr noundef nonnull %11, i32 noundef 0) #11
  %32 = icmp slt i32 %27, %31
  br i1 %32, label %20, label %136, !llvm.loop !115

33:                                               ; preds = %10
  %34 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, ptr noundef nonnull @wm_main_playanim_intern.filepath)
  br label %136

35:                                               ; preds = %4
  %36 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef nonnull @wm_main_playanim_intern.filepath, i64 noundef 1024) #11
  %37 = call double @PIL_check_seconds_timer() #11
  %38 = load double, ptr @pupdate_time.ltime, align 8, !tbaa !51
  %39 = fsub double %37, %38
  %40 = load double, ptr @ptottime, align 8, !tbaa !51
  %41 = fadd double %40, %39
  store double %41, ptr @ptottime, align 8, !tbaa !51
  store double %37, ptr @pupdate_time.ltime, align 8, !tbaa !51
  store double 1.000000e+00, ptr @ptottime, align 8, !tbaa !51
  br label %42

42:                                               ; preds = %133, %35
  %43 = phi i32 [ %1, %35 ], [ %134, %133 ]
  %44 = call zeroext i8 @IMB_ispic(ptr noundef nonnull %5) #11
  %45 = icmp eq i8 %44, 0
  %46 = icmp eq i32 %43, 0
  %47 = select i1 %45, i1 true, i1 %46
  br i1 %47, label %136, label %48

48:                                               ; preds = %42
  %49 = call i32 @BLI_open(ptr noundef nonnull %5, i32 noundef 0, i32 noundef 0) #11
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %133, label %51

51:                                               ; preds = %48
  %52 = load ptr, ptr @MEM_callocN, align 8, !tbaa !50
  %53 = call ptr %52(i64 noundef 64, ptr noundef nonnull @.str.16) #11
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, ptr noundef nonnull %5)
  %57 = call i32 @close(i32 noundef %49) #11
  br label %133

58:                                               ; preds = %51
  %59 = call i64 @BLI_file_descriptor_size(i32 noundef %49) #11
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = call i32 @close(i32 noundef %49) #11
  %63 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  call void %63(ptr noundef nonnull %53) #11
  br label %133

64:                                               ; preds = %58
  %65 = trunc i64 %59 to i32
  %66 = getelementptr inbounds %struct.PlayAnimPict, ptr %53, i64 0, i32 3
  store i32 %65, ptr %66, align 8, !tbaa !76
  %67 = getelementptr inbounds %struct.PlayAnimPict, ptr %53, i64 0, i32 8
  store i32 1, ptr %67, align 4, !tbaa !77
  %68 = load i1, ptr @fromdisk, align 1
  br i1 %68, label %85, label %69

69:                                               ; preds = %64
  %70 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !50
  %71 = call ptr %70(i64 noundef %59, ptr noundef nonnull @.str.18) #11
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = call i32 @puts(ptr nonnull dereferenceable(1) @str.28)
  %75 = call i32 @close(i32 noundef %49) #11
  %76 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  call void %76(ptr noundef nonnull %53) #11
  br label %133

77:                                               ; preds = %69
  %78 = call i64 @read(i32 noundef %49, ptr noundef nonnull %71, i64 noundef %59) #11
  %79 = icmp eq i64 %78, %59
  br i1 %79, label %85, label %80

80:                                               ; preds = %77
  %81 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, ptr noundef nonnull %5)
  %82 = call i32 @close(i32 noundef %49) #11
  %83 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  call void %83(ptr noundef nonnull %53) #11
  %84 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  call void %84(ptr noundef nonnull %71) #11
  br label %133

85:                                               ; preds = %77, %64
  %86 = phi ptr [ %71, %77 ], [ null, %64 ]
  %87 = getelementptr inbounds %struct.PlayAnimPict, ptr %53, i64 0, i32 2
  store ptr %86, ptr %87, align 8, !tbaa !75
  %88 = call noalias ptr @strdup(ptr noundef nonnull %5) #11
  %89 = getelementptr inbounds %struct.PlayAnimPict, ptr %53, i64 0, i32 4
  store ptr %88, ptr %89, align 8, !tbaa !78
  %90 = call i32 @close(i32 noundef %49) #11
  call void @BLI_addtail(ptr noundef nonnull @picsbase, ptr noundef nonnull %53) #11
  %91 = call double @PIL_check_seconds_timer() #11
  %92 = load double, ptr @pupdate_time.ltime, align 8, !tbaa !51
  %93 = fsub double %91, %92
  %94 = load double, ptr @ptottime, align 8, !tbaa !51
  %95 = fadd double %94, %93
  store double %95, ptr @ptottime, align 8, !tbaa !51
  store double %91, ptr @pupdate_time.ltime, align 8, !tbaa !51
  %96 = fcmp ogt double %95, 1.000000e+00
  br i1 %96, label %97, label %120

97:                                               ; preds = %85
  %98 = load ptr, ptr %87, align 8, !tbaa !75
  %99 = icmp eq ptr %98, null
  br i1 %99, label %106, label %100

100:                                              ; preds = %97
  %101 = load i32, ptr %66, align 8, !tbaa !76
  %102 = sext i32 %101 to i64
  %103 = load i32, ptr %67, align 4, !tbaa !77
  %104 = load ptr, ptr %89, align 8, !tbaa !78
  %105 = call ptr @IMB_ibImageFromMemory(ptr noundef nonnull %98, i64 noundef %102, i32 noundef %103, ptr noundef null, ptr noundef %104) #11
  br label %110

106:                                              ; preds = %97
  %107 = load ptr, ptr %89, align 8, !tbaa !78
  %108 = load i32, ptr %67, align 4, !tbaa !77
  %109 = call ptr @IMB_loadiffname(ptr noundef %107, i32 noundef %108, ptr noundef null) #11
  br label %110

110:                                              ; preds = %106, %100
  %111 = phi ptr [ %105, %100 ], [ %109, %106 ]
  %112 = icmp eq ptr %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %110
  call fastcc void @playanim_toscreen(ptr noundef %0, ptr noundef nonnull %53, ptr noundef nonnull %111, i32 noundef %3, i32 noundef %2)
  call void @IMB_freeImBuf(ptr noundef nonnull %111) #11
  br label %114

114:                                              ; preds = %113, %110
  %115 = call double @PIL_check_seconds_timer() #11
  %116 = load double, ptr @pupdate_time.ltime, align 8, !tbaa !51
  %117 = fsub double %115, %116
  %118 = load double, ptr @ptottime, align 8, !tbaa !51
  %119 = fadd double %118, %117
  store double %119, ptr @ptottime, align 8, !tbaa !51
  store double %115, ptr @pupdate_time.ltime, align 8, !tbaa !51
  store double 0.000000e+00, ptr @ptottime, align 8, !tbaa !51
  br label %120

120:                                              ; preds = %114, %85
  call void @BLI_newname(ptr noundef nonnull %5, i32 noundef %2) #11
  br label %121

121:                                              ; preds = %126, %120
  %122 = load ptr, ptr @g_WS.0, align 8, !tbaa !56
  %123 = call i32 @GHOST_ProcessEvents(ptr noundef %122, i32 noundef 0) #11
  %124 = and i32 %123, 255
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %131, label %126

126:                                              ; preds = %121
  %127 = load ptr, ptr @g_WS.0, align 8, !tbaa !56
  %128 = call i32 @GHOST_DispatchEvents(ptr noundef %127) #11
  %129 = load i8, ptr %7, align 8, !tbaa !44
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %133, label %121, !llvm.loop !116

131:                                              ; preds = %121
  %132 = add nsw i32 %43, -1
  br label %133

133:                                              ; preds = %126, %131, %80, %73, %61, %55, %48
  %134 = phi i32 [ %43, %55 ], [ %43, %61 ], [ %43, %73 ], [ %43, %80 ], [ %132, %131 ], [ %43, %48 ], [ %43, %126 ]
  %135 = phi i1 [ false, %55 ], [ false, %61 ], [ false, %73 ], [ false, %80 ], [ true, %131 ], [ false, %48 ], [ false, %126 ]
  br i1 %135, label %42, label %136, !llvm.loop !117

136:                                              ; preds = %20, %42, %133, %17, %33
  call void @llvm.lifetime.end.p0(i64 1056, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #11
  store i8 0, ptr %7, align 8, !tbaa !44
  ret void
}

declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #4

declare ptr @IMB_ibImageFromMemory(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @PIL_sleep_ms(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @playanim_toscreen(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca [1056 x i8], align 16
  %7 = icmp eq ptr %2, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %5
  %9 = icmp eq ptr %1, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.PlayAnimPict, ptr %1, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !78
  br label %13

13:                                               ; preds = %8, %10
  %14 = phi ptr [ %12, %10 ], [ @.str.22, %8 ]
  %15 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, ptr noundef nonnull @__func__.playanim_toscreen, ptr noundef %14)
  br label %127

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !118
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 9
  %22 = load ptr, ptr %21, align 8, !tbaa !119
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @IMB_rect_from_float(ptr noundef nonnull %2) #11
  tail call void @imb_freerectfloatImBuf(ptr noundef nonnull %2) #11
  br label %25

25:                                               ; preds = %24, %20, %16
  %26 = load ptr, ptr %17, align 8, !tbaa !118
  %27 = icmp eq ptr %26, null
  br i1 %27, label %127, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr @g_WS.1, align 8, !tbaa !64
  %30 = tail call i32 @GHOST_ActivateWindowDrawingContext(ptr noundef %29) #11
  %31 = getelementptr inbounds %struct.PlayState, ptr %0, i64 0, i32 2
  %32 = load float, ptr %31, align 8, !tbaa !47
  %33 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 2
  %34 = load i32, ptr %33, align 8, !tbaa !58
  %35 = sitofp i32 %34 to float
  %36 = fmul float %32, %35
  %37 = load i32, ptr %0, align 8, !tbaa !67
  %38 = sitofp i32 %37 to float
  %39 = fdiv float %36, %38
  %40 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 3
  %41 = load i32, ptr %40, align 4, !tbaa !62
  %42 = sitofp i32 %41 to float
  %43 = fmul float %32, %42
  %44 = getelementptr inbounds %struct.PlayState, ptr %0, i64 0, i32 1
  %45 = load i32, ptr %44, align 4, !tbaa !68
  %46 = sitofp i32 %45 to float
  %47 = fdiv float %43, %46
  %48 = fsub float 1.000000e+00, %39
  %49 = fmul float %48, 5.000000e-01
  %50 = fsub float 1.000000e+00, %47
  %51 = fmul float %50, 5.000000e-01
  %52 = fcmp olt float %49, 0.000000e+00
  br i1 %52, label %56, label %53

53:                                               ; preds = %28
  %54 = fcmp ogt float %49, 1.000000e+00
  br i1 %54, label %55, label %56

55:                                               ; preds = %53
  br label %56

56:                                               ; preds = %28, %53, %55
  %57 = phi float [ 1.000000e+00, %55 ], [ %49, %53 ], [ 0.000000e+00, %28 ]
  %58 = fcmp olt float %51, 0.000000e+00
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = fcmp ogt float %51, 1.000000e+00
  br i1 %60, label %61, label %62

61:                                               ; preds = %59
  br label %62

62:                                               ; preds = %56, %59, %61
  %63 = phi float [ 1.000000e+00, %61 ], [ %51, %59 ], [ 0.000000e+00, %56 ]
  tail call void @glRasterPos2f(float noundef %57, float noundef %63) #11
  tail call void @glClearColor(float noundef 0x3FB99999A0000000, float noundef 0x3FB99999A0000000, float noundef 0x3FB99999A0000000, float noundef 0.000000e+00) #11
  tail call void @glClear(i32 noundef 16384) #11
  %64 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 4
  %65 = load i8, ptr %64, align 8, !tbaa !120
  %66 = icmp eq i8 %65, 32
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  tail call void @glEnable(i32 noundef 3042) #11
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #11
  %68 = fadd float %39, %57
  %69 = fadd float %47, %63
  tail call void @fdrawcheckerboard(float noundef %57, float noundef %63, float noundef %68, float noundef %69) #11
  br label %70

70:                                               ; preds = %67, %62
  %71 = getelementptr inbounds %struct.PlayState, ptr %0, i64 0, i32 14
  %72 = load i8, ptr %71, align 1, !tbaa !46
  %73 = icmp eq i8 %72, 0
  %74 = select i1 %73, float 0.000000e+00, float %39
  %75 = fadd float %57, %74
  %76 = getelementptr inbounds %struct.PlayState, ptr %0, i64 0, i32 14, i64 1
  %77 = load i8, ptr %76, align 1, !tbaa !46
  %78 = icmp eq i8 %77, 0
  %79 = select i1 %78, float 0.000000e+00, float %47
  %80 = fadd float %63, %79
  tail call void @glRasterPos2f(float noundef %75, float noundef %80) #11
  %81 = load float, ptr %31, align 8, !tbaa !47
  %82 = load i8, ptr %71, align 1, !tbaa !46
  %83 = uitofp i8 %82 to float
  %84 = fmul float %81, %83
  %85 = fcmp une float %84, 0.000000e+00
  %86 = select i1 %85, float -1.000000e+00, float 1.000000e+00
  %87 = load i8, ptr %76, align 1, !tbaa !46
  %88 = uitofp i8 %87 to float
  %89 = fmul float %81, %88
  %90 = fcmp une float %89, 0.000000e+00
  %91 = select i1 %90, float -1.000000e+00, float 1.000000e+00
  tail call void @glPixelZoom(float noundef %86, float noundef %91) #11
  %92 = load i32, ptr %33, align 8, !tbaa !58
  %93 = load i32, ptr %40, align 4, !tbaa !62
  %94 = load ptr, ptr %17, align 8, !tbaa !118
  tail call void @glDrawPixels(i32 noundef %92, i32 noundef %93, i32 noundef 6408, i32 noundef 5121, ptr noundef %94) #11
  tail call void @glDisable(i32 noundef 3042) #11
  %95 = tail call double @PIL_check_seconds_timer() #11
  %96 = load double, ptr @pupdate_time.ltime, align 8, !tbaa !51
  %97 = fsub double %95, %96
  %98 = load double, ptr @ptottime, align 8, !tbaa !51
  %99 = fadd double %98, %97
  store double %99, ptr @ptottime, align 8, !tbaa !51
  store double %95, ptr @pupdate_time.ltime, align 8, !tbaa !51
  %100 = icmp eq ptr %1, null
  br i1 %100, label %124, label %101

101:                                              ; preds = %70
  %102 = load i32, ptr @g_WS.2, align 8, !tbaa !94
  %103 = and i32 %102, 65539
  %104 = icmp ne i32 %103, 0
  %105 = icmp ne i32 %3, -1
  %106 = and i1 %105, %104
  br i1 %106, label %107, label %124

107:                                              ; preds = %101
  call void @llvm.lifetime.start.p0(i64 1056, ptr nonnull %6) #11
  tail call void @cpack(i32 noundef -1) #11
  %108 = getelementptr inbounds %struct.PlayAnimPict, ptr %1, i64 0, i32 4
  %109 = load ptr, ptr %108, align 8, !tbaa !78
  %110 = sitofp i32 %4 to double
  %111 = load double, ptr @swaptime, align 8, !tbaa !51
  %112 = fdiv double %110, %111
  %113 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %6, i64 noundef 1056, ptr noundef nonnull @.str.23, ptr noundef %109, double noundef %112) #11
  %114 = load ptr, ptr @g_WS.1, align 8, !tbaa !64
  %115 = call ptr @GHOST_GetClientBounds(ptr noundef %114) #11
  %116 = call i32 @GHOST_GetWidthRectangle(ptr noundef %115) #11
  %117 = call i32 @GHOST_GetHeightRectangle(ptr noundef %115) #11
  call void @GHOST_DisposeRectangle(ptr noundef %115) #11
  %118 = sitofp i32 %116 to float
  %119 = fdiv float 1.000000e+00, %118
  %120 = sitofp i32 %117 to float
  %121 = fdiv float 1.000000e+00, %120
  call void @BLF_enable(i32 noundef %3, i32 noundef 32) #11
  call void @BLF_aspect(i32 noundef %3, float noundef %119, float noundef %121, float noundef 1.000000e+00) #11
  %122 = fmul float %119, 1.000000e+01
  %123 = fmul float %121, 1.000000e+01
  call void @BLF_position(i32 noundef %3, float noundef %122, float noundef %123, float noundef 0.000000e+00) #11
  call void @BLF_draw(i32 noundef %3, ptr noundef nonnull %6, i64 noundef 1056) #11
  call void @llvm.lifetime.end.p0(i64 1056, ptr nonnull %6) #11
  br label %124

124:                                              ; preds = %107, %101, %70
  %125 = load ptr, ptr @g_WS.1, align 8, !tbaa !64
  %126 = call i32 @GHOST_SwapWindowBuffers(ptr noundef %125) #11
  br label %127

127:                                              ; preds = %25, %124, %13
  ret void
}

declare i32 @GHOST_ProcessEvents(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @GHOST_DispatchEvents(ptr noundef) local_unnamed_addr #4

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #4

declare void @BLF_exit() local_unnamed_addr #4

declare i32 @GHOST_DisposeWindow(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @IMB_exit() local_unnamed_addr #4

declare void @BKE_images_exit() local_unnamed_addr #4

declare void @DAG_exit() local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #6

declare i32 @GHOST_GetEventType(ptr noundef) local_unnamed_addr #4

declare ptr @GHOST_GetEventData(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @playanim_window_zoom(ptr nocapture noundef %0, float noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.PlayState, ptr %0, i64 0, i32 2
  %4 = load float, ptr %3, align 8, !tbaa !47
  %5 = fadd float %4, %1
  %6 = fcmp ogt float %5, 0.000000e+00
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  store float %5, ptr %3, align 8, !tbaa !47
  br label %8

8:                                                ; preds = %7, %2
  %9 = load ptr, ptr @g_WS.1, align 8, !tbaa !64
  %10 = tail call ptr @GHOST_GetClientBounds(ptr noundef %9) #11
  %11 = tail call i32 @GHOST_GetWidthRectangle(ptr noundef %10) #11
  %12 = tail call i32 @GHOST_GetHeightRectangle(ptr noundef %10) #11
  tail call void @GHOST_DisposeRectangle(ptr noundef %10) #11
  %13 = load float, ptr %3, align 8, !tbaa !47
  %14 = getelementptr inbounds %struct.PlayState, ptr %0, i64 0, i32 17
  %15 = load i32, ptr %14, align 8, !tbaa !65
  %16 = sitofp i32 %15 to float
  %17 = fmul float %13, %16
  %18 = fptosi float %17 to i32
  %19 = getelementptr inbounds %struct.PlayState, ptr %0, i64 0, i32 18
  %20 = load i32, ptr %19, align 4, !tbaa !66
  %21 = sitofp i32 %20 to float
  %22 = fmul float %13, %21
  %23 = fptosi float %22 to i32
  %24 = load ptr, ptr @g_WS.1, align 8, !tbaa !64
  %25 = tail call i32 @GHOST_SetClientSize(ptr noundef %24, i32 noundef %18, i32 noundef %23) #11
  ret void
}

declare i32 @GHOST_GetCursorPosition(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @GHOST_ScreenToClient(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @GHOST_ActivateWindowDrawingContext(ptr noundef) local_unnamed_addr #4

declare void @glViewport(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @glScissor(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @GHOST_GetModifierKeyState(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @GHOST_SetClientSize(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare ptr @GHOST_GetClientBounds(ptr noundef) local_unnamed_addr #4

declare i32 @GHOST_GetWidthRectangle(ptr noundef) local_unnamed_addr #4

declare i32 @GHOST_GetHeightRectangle(ptr noundef) local_unnamed_addr #4

declare void @GHOST_DisposeRectangle(ptr noundef) local_unnamed_addr #4

declare ptr @GHOST_CreateWindow(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #4

declare void @glMatrixMode(i32 noundef) local_unnamed_addr #4

declare void @glLoadIdentity() local_unnamed_addr #4

declare void @glOrtho(double noundef, double noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #4

declare i32 @IMB_anim_get_duration(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias ptr @strdup(ptr nocapture noundef readonly) local_unnamed_addr #7

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @BLI_open(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @close(i32 noundef) local_unnamed_addr #4

declare i64 @BLI_file_descriptor_size(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #8

declare void @BLI_newname(ptr noundef, i32 noundef) local_unnamed_addr #4

declare double @PIL_check_seconds_timer() local_unnamed_addr #4

declare void @IMB_rect_from_float(ptr noundef) local_unnamed_addr #4

declare void @imb_freerectfloatImBuf(ptr noundef) local_unnamed_addr #4

declare void @glRasterPos2f(float noundef, float noundef) local_unnamed_addr #4

declare void @glEnable(i32 noundef) local_unnamed_addr #4

declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @fdrawcheckerboard(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #4

declare void @glPixelZoom(float noundef, float noundef) local_unnamed_addr #4

declare void @glDrawPixels(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @glDisable(i32 noundef) local_unnamed_addr #4

declare void @cpack(i32 noundef) local_unnamed_addr #4

declare void @BLF_enable(i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @BLF_aspect(i32 noundef, float noundef, float noundef, float noundef) local_unnamed_addr #4

declare void @BLF_position(i32 noundef, float noundef, float noundef, float noundef) local_unnamed_addr #4

declare void @BLF_draw(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }

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
!34 = !{!35, !37, i64 23}
!35 = !{!"PlayState", !36, i64 0, !36, i64 4, !39, i64 8, !40, i64 12, !40, i64 14, !37, i64 16, !37, i64 17, !37, i64 18, !37, i64 19, !37, i64 20, !37, i64 21, !37, i64 22, !37, i64 23, !37, i64 24, !37, i64 25, !36, i64 28, !41, i64 32, !36, i64 40, !36, i64 44, !36, i64 48, !41, i64 56, !37, i64 64}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"float", !37, i64 0}
!40 = !{!"short", !37, i64 0}
!41 = !{!"any pointer", !37, i64 0}
!42 = !{!35, !40, i64 12}
!43 = !{!35, !40, i64 14}
!44 = !{!35, !37, i64 24}
!45 = !{!35, !41, i64 32}
!46 = !{!37, !37, i64 0}
!47 = !{!35, !39, i64 8}
!48 = !{!35, !36, i64 28}
!49 = !{!35, !36, i64 48}
!50 = !{!41, !41, i64 0}
!51 = !{!52, !52, i64 0}
!52 = !{!"double", !37, i64 0}
!53 = distinct !{!53, !54, !55}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!"llvm.loop.unroll.disable"}
!56 = !{!57, !41, i64 0}
!57 = !{!"WindowStateGlobal", !41, i64 0, !41, i64 8, !36, i64 16}
!58 = !{!59, !36, i64 16}
!59 = !{!"ImBuf", !41, i64 0, !41, i64 8, !36, i64 16, !36, i64 20, !37, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !41, i64 40, !41, i64 48, !37, i64 56, !36, i64 72, !36, i64 76, !36, i64 80, !36, i64 84, !41, i64 88, !41, i64 96, !41, i64 104, !39, i64 112, !37, i64 120, !36, i64 280, !36, i64 284, !36, i64 288, !36, i64 292, !41, i64 296, !41, i64 304, !36, i64 312, !37, i64 316, !37, i64 1340, !41, i64 2368, !36, i64 2376, !41, i64 2384, !36, i64 2392, !36, i64 2396, !41, i64 2400, !41, i64 2408, !41, i64 2416, !41, i64 2424, !36, i64 2432, !60, i64 2436, !61, i64 2456}
!60 = !{!"rcti", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12}
!61 = !{!"DDSData", !36, i64 0, !36, i64 4, !41, i64 8, !36, i64 16}
!62 = !{!59, !36, i64 20}
!63 = !{!36, !36, i64 0}
!64 = !{!57, !41, i64 8}
!65 = !{!35, !36, i64 40}
!66 = !{!35, !36, i64 44}
!67 = !{!35, !36, i64 0}
!68 = !{!35, !36, i64 4}
!69 = distinct !{!69, !54, !55}
!70 = !{!35, !37, i64 18}
!71 = !{!72, !41, i64 40}
!72 = !{!"PlayAnimPict", !41, i64 0, !41, i64 8, !41, i64 16, !36, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !36, i64 56, !36, i64 60}
!73 = !{!72, !41, i64 48}
!74 = !{!72, !36, i64 56}
!75 = !{!72, !41, i64 16}
!76 = !{!72, !36, i64 24}
!77 = !{!72, !36, i64 60}
!78 = !{!72, !41, i64 32}
!79 = distinct !{!79, !54, !55}
!80 = !{!35, !37, i64 16}
!81 = !{!72, !41, i64 0}
!82 = !{!72, !41, i64 8}
!83 = !{!35, !37, i64 21}
!84 = distinct !{!84, !54, !55}
!85 = distinct !{!85, !54, !55}
!86 = !{!35, !37, i64 20}
!87 = !{!35, !37, i64 22}
!88 = distinct !{!88, !54, !55}
!89 = distinct !{!89, !54, !55}
!90 = distinct !{!90, !54, !55}
!91 = distinct !{!91, !54, !55}
!92 = distinct !{!92, !54, !55}
!93 = distinct !{!93, !54, !55}
!94 = !{!57, !36, i64 16}
!95 = !{!96, !36, i64 0}
!96 = !{!"", !36, i64 0, !37, i64 4, !37, i64 5}
!97 = !{!35, !37, i64 19}
!98 = !{!99, !41, i64 0}
!99 = !{!"ListBase", !41, i64 0, !41, i64 8}
!100 = !{!99, !41, i64 8}
!101 = !{!35, !41, i64 56}
!102 = !{!103, !36, i64 0}
!103 = !{!"", !36, i64 0}
!104 = !{!105, !36, i64 0}
!105 = !{!"", !36, i64 0, !36, i64 4}
!106 = !{!105, !36, i64 4}
!107 = distinct !{!107, !54, !55}
!108 = distinct !{!108, !54, !55}
!109 = !{!110, !36, i64 8}
!110 = !{!"", !36, i64 0, !36, i64 4, !36, i64 8, !41, i64 16}
!111 = !{!110, !41, i64 16}
!112 = !{!113, !36, i64 0}
!113 = !{!"", !36, i64 0, !41, i64 8}
!114 = !{!113, !41, i64 8}
!115 = distinct !{!115, !54, !55}
!116 = distinct !{!116, !54, !55}
!117 = distinct !{!117, !54, !55}
!118 = !{!59, !41, i64 40}
!119 = !{!59, !41, i64 48}
!120 = !{!59, !37, i64 24}
