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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_main_playanim(i32 noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds ptr, ptr %1, i64 1
  %4 = getelementptr inbounds ptr, ptr %1, i64 2
  %5 = tail call fastcc ptr @wm_main_playanim_intern(i32 noundef %0, ptr noundef %1) #12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %2, %7
  %8 = phi ptr [ %9, %7 ], [ %5, %2 ]
  store ptr @.str, ptr %3, align 8, !tbaa !34
  store ptr %8, ptr %4, align 8, !tbaa !34
  %9 = tail call fastcc ptr @wm_main_playanim_intern(i32 noundef 3, ptr noundef %1) #12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %7, !llvm.loop !38

11:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @wm_main_playanim_intern(i32 noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !40 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.PlayState, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 1088, ptr nonnull %5) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1088) %5, i8 0, i64 1088, i1 false)
  %6 = getelementptr inbounds %struct.PlayState, ptr %5, i64 0, i32 12
  store i8 1, ptr %6, align 1, !tbaa !41
  %7 = getelementptr inbounds %struct.PlayState, ptr %5, i64 0, i32 3
  store i16 1, ptr %7, align 4, !tbaa !46
  %8 = getelementptr inbounds %struct.PlayState, ptr %5, i64 0, i32 4
  store i16 1, ptr %8, align 2, !tbaa !47
  %9 = getelementptr inbounds %struct.PlayState, ptr %5, i64 0, i32 5
  %10 = getelementptr inbounds %struct.PlayState, ptr %5, i64 0, i32 6
  %11 = getelementptr inbounds %struct.PlayState, ptr %5, i64 0, i32 7
  %12 = getelementptr inbounds %struct.PlayState, ptr %5, i64 0, i32 8
  %13 = getelementptr inbounds %struct.PlayState, ptr %5, i64 0, i32 9
  %14 = getelementptr inbounds %struct.PlayState, ptr %5, i64 0, i32 10
  %15 = getelementptr inbounds %struct.PlayState, ptr %5, i64 0, i32 11
  %16 = getelementptr inbounds %struct.PlayState, ptr %5, i64 0, i32 16
  store ptr null, ptr %16, align 8, !tbaa !48
  %17 = getelementptr inbounds %struct.PlayState, ptr %5, i64 0, i32 21
  %18 = getelementptr inbounds %struct.PlayState, ptr %5, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %9, i8 0, i64 7, i1 false)
  store float 1.000000e+00, ptr %18, align 8, !tbaa !49
  %19 = getelementptr inbounds %struct.PlayState, ptr %5, i64 0, i32 14, i64 1
  store i8 0, ptr %19, align 2, !tbaa !50
  %20 = getelementptr inbounds %struct.PlayState, ptr %5, i64 0, i32 15
  store i32 1, ptr %20, align 4, !tbaa !51
  %21 = getelementptr inbounds %struct.PlayState, ptr %5, i64 0, i32 19
  store i32 -1, ptr %21, align 8, !tbaa !52
  %22 = icmp sgt i32 %0, 1
  br i1 %22, label %23, label %112

23:                                               ; preds = %2, %100
  %24 = phi i32 [ %107, %100 ], [ %0, %2 ]
  %25 = phi ptr [ %108, %100 ], [ %1, %2 ]
  %26 = phi i32 [ %104, %100 ], [ -1, %2 ]
  %27 = phi i32 [ %103, %100 ], [ -1, %2 ]
  %28 = phi i32 [ %102, %100 ], [ 0, %2 ]
  %29 = phi i32 [ %101, %100 ], [ 0, %2 ]
  %30 = getelementptr inbounds ptr, ptr %25, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !34
  %32 = load i8, ptr %31, align 1, !tbaa !50
  %33 = icmp eq i8 %32, 45
  br i1 %33, label %34, label %110

34:                                               ; preds = %23
  %35 = getelementptr inbounds i8, ptr %31, i64 1
  %36 = load i8, ptr %35, align 1, !tbaa !50
  switch i8 %36, label %97 [
    i8 109, label %37
    i8 112, label %38
    i8 102, label %50
    i8 115, label %68
    i8 101, label %75
    i8 106, label %82
  ]

37:                                               ; preds = %34
  store i1 true, ptr @fromdisk, align 1
  br label %100

38:                                               ; preds = %34
  %39 = icmp ugt i32 %24, 3
  br i1 %39, label %40, label %48

40:                                               ; preds = %38
  %41 = getelementptr inbounds ptr, ptr %25, i64 2
  %42 = load ptr, ptr %41, align 8, !tbaa !34
  %43 = tail call i32 @atoi(ptr nocapture noundef %42) #14
  %44 = getelementptr inbounds ptr, ptr %25, i64 3
  %45 = load ptr, ptr %44, align 8, !tbaa !34
  %46 = tail call i32 @atoi(ptr nocapture noundef %45) #14
  %47 = add nsw i32 %24, -2
  br label %100

48:                                               ; preds = %38
  %49 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.27)
  br label %100

50:                                               ; preds = %34
  %51 = icmp ugt i32 %24, 3
  br i1 %51, label %52, label %66

52:                                               ; preds = %50
  %53 = getelementptr inbounds ptr, ptr %25, i64 2
  %54 = load ptr, ptr %53, align 8, !tbaa !34
  %55 = tail call double @atof(ptr noundef %54) #14
  %56 = getelementptr inbounds ptr, ptr %25, i64 3
  %57 = load ptr, ptr %56, align 8, !tbaa !34
  %58 = tail call double @atof(ptr noundef %57) #14
  %59 = fcmp oeq double %55, 0.000000e+00
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.26)
  br label %62

62:                                               ; preds = %60, %52
  %63 = phi double [ 1.000000e+00, %60 ], [ %55, %52 ]
  %64 = fdiv double %58, %63
  store double %64, ptr @swaptime, align 8, !tbaa !53
  %65 = add nsw i32 %24, -2
  br label %100

66:                                               ; preds = %50
  %67 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.25)
  br label %100

68:                                               ; preds = %34
  %69 = getelementptr inbounds ptr, ptr %25, i64 2
  %70 = load ptr, ptr %69, align 8, !tbaa !34
  %71 = tail call i32 @atoi(ptr nocapture noundef %70) #14
  %72 = tail call i32 @llvm.smin.i32(i32 %71, i32 300000)
  %73 = tail call i32 @llvm.smax.i32(i32 %72, i32 1)
  %74 = add nsw i32 %24, -1
  br label %100

75:                                               ; preds = %34
  %76 = getelementptr inbounds ptr, ptr %25, i64 2
  %77 = load ptr, ptr %76, align 8, !tbaa !34
  %78 = tail call i32 @atoi(ptr nocapture noundef %77) #14
  %79 = tail call i32 @llvm.smin.i32(i32 %78, i32 300000)
  %80 = tail call i32 @llvm.smax.i32(i32 %79, i32 1)
  %81 = add nsw i32 %24, -1
  br label %100

82:                                               ; preds = %34
  %83 = getelementptr inbounds ptr, ptr %25, i64 2
  %84 = load ptr, ptr %83, align 8, !tbaa !34
  %85 = tail call i32 @atoi(ptr nocapture noundef %84) #14
  store i32 %85, ptr %20, align 4, !tbaa !51
  %86 = icmp slt i32 %85, 1
  br i1 %86, label %89, label %87

87:                                               ; preds = %82
  %88 = icmp ugt i32 %85, 300000
  br i1 %88, label %89, label %91

89:                                               ; preds = %87, %82
  %90 = phi i32 [ 1, %82 ], [ 300000, %87 ]
  store i32 %90, ptr %20, align 4, !tbaa !51
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i32 [ %85, %87 ], [ %90, %89 ]
  %93 = sitofp i32 %92 to double
  %94 = load double, ptr @swaptime, align 8, !tbaa !53
  %95 = fmul double %94, %93
  store double %95, ptr @swaptime, align 8, !tbaa !53
  %96 = add nsw i32 %24, -1
  br label %100

97:                                               ; preds = %34
  %98 = zext i8 %36 to i32
  %99 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %98) #12
  br label %100

100:                                              ; preds = %62, %66, %40, %48, %97, %91, %75, %68, %37
  %101 = phi i32 [ %29, %97 ], [ %29, %91 ], [ %29, %75 ], [ %29, %68 ], [ %29, %62 ], [ %29, %66 ], [ %43, %40 ], [ %29, %48 ], [ %29, %37 ]
  %102 = phi i32 [ %28, %97 ], [ %28, %91 ], [ %28, %75 ], [ %28, %68 ], [ %28, %62 ], [ %28, %66 ], [ %46, %40 ], [ %28, %48 ], [ %28, %37 ]
  %103 = phi i32 [ %27, %97 ], [ %27, %91 ], [ %27, %75 ], [ %73, %68 ], [ %27, %62 ], [ %27, %66 ], [ %27, %40 ], [ %27, %48 ], [ %27, %37 ]
  %104 = phi i32 [ %26, %97 ], [ %26, %91 ], [ %80, %75 ], [ %26, %68 ], [ %26, %62 ], [ %26, %66 ], [ %26, %40 ], [ %26, %48 ], [ %26, %37 ]
  %105 = phi ptr [ %25, %97 ], [ %30, %91 ], [ %30, %75 ], [ %30, %68 ], [ %53, %62 ], [ %25, %66 ], [ %41, %40 ], [ %25, %48 ], [ %25, %37 ]
  %106 = phi i32 [ %24, %97 ], [ %96, %91 ], [ %81, %75 ], [ %74, %68 ], [ %65, %62 ], [ %24, %66 ], [ %47, %40 ], [ %24, %48 ], [ %24, %37 ]
  %107 = add nsw i32 %106, -1
  %108 = getelementptr inbounds ptr, ptr %105, i64 1
  %109 = icmp sgt i32 %106, 2
  br i1 %109, label %23, label %112, !llvm.loop !55

110:                                              ; preds = %23
  %111 = tail call ptr @BLI_strncpy(ptr noundef nonnull @wm_main_playanim_intern.filepath, ptr noundef nonnull %31, i64 noundef 1024) #15
  br label %121

112:                                              ; preds = %100, %2
  %113 = phi i32 [ 0, %2 ], [ %101, %100 ]
  %114 = phi i32 [ 0, %2 ], [ %102, %100 ]
  %115 = phi i32 [ -1, %2 ], [ %103, %100 ]
  %116 = phi i32 [ -1, %2 ], [ %104, %100 ]
  %117 = phi ptr [ %1, %2 ], [ %108, %100 ]
  %118 = phi i32 [ %0, %2 ], [ %107, %100 ]
  %119 = tail call ptr @BLI_current_working_dir(ptr noundef nonnull @wm_main_playanim_intern.filepath, i64 noundef 1024) #15
  %120 = tail call i32 @BLI_add_slash(ptr noundef nonnull @wm_main_playanim_intern.filepath) #15
  br label %121

121:                                              ; preds = %112, %110
  %122 = phi i32 [ %113, %112 ], [ %29, %110 ]
  %123 = phi i32 [ %114, %112 ], [ %28, %110 ]
  %124 = phi i32 [ %115, %112 ], [ %27, %110 ]
  %125 = phi i32 [ %116, %112 ], [ %26, %110 ]
  %126 = phi ptr [ %117, %112 ], [ %25, %110 ]
  %127 = phi i32 [ %118, %112 ], [ %24, %110 ]
  %128 = tail call zeroext i8 @IMB_isanim(ptr noundef nonnull @wm_main_playanim_intern.filepath) #15
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %121
  %131 = tail call ptr @IMB_open_anim(ptr noundef nonnull @wm_main_playanim_intern.filepath, i32 noundef 1, i32 noundef 0, ptr noundef null) #15
  %132 = icmp eq ptr %131, null
  br i1 %132, label %141, label %138

133:                                              ; preds = %121
  %134 = tail call zeroext i8 @IMB_ispic(ptr noundef nonnull @wm_main_playanim_intern.filepath) #15
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %133
  %137 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef nonnull @__func__.wm_main_playanim_intern, ptr noundef nonnull @wm_main_playanim_intern.filepath) #12
  tail call void @exit(i32 noundef 1) #16
  unreachable

138:                                              ; preds = %130
  %139 = tail call ptr @IMB_anim_absolute(ptr noundef nonnull %131, i32 noundef 0, i32 noundef 0, i32 noundef 0) #15
  tail call void @IMB_close_anim(ptr noundef nonnull %131) #15
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %146

141:                                              ; preds = %133, %130, %138
  %142 = tail call ptr @IMB_loadiffname(ptr noundef nonnull @wm_main_playanim_intern.filepath, i32 noundef 1, ptr noundef null) #15
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %146

144:                                              ; preds = %141
  %145 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef nonnull @__func__.wm_main_playanim_intern, ptr noundef nonnull @wm_main_playanim_intern.filepath) #12
  tail call void @exit(i32 noundef 1) #16
  unreachable

146:                                              ; preds = %138, %141
  %147 = phi ptr [ %142, %141 ], [ %139, %138 ]
  %148 = call ptr @GHOST_CreateEventConsumer(ptr noundef nonnull @ghost_event_proc, ptr noundef nonnull %5) #15
  %149 = call ptr @GHOST_CreateSystem() #15
  store ptr %149, ptr @g_WS.0, align 8, !tbaa !56
  %150 = call i32 @GHOST_AddEventConsumer(ptr noundef %149, ptr noundef %148) #15
  %151 = getelementptr inbounds %struct.ImBuf, ptr %147, i64 0, i32 2
  %152 = load i32, ptr %151, align 8, !tbaa !58
  %153 = getelementptr inbounds %struct.ImBuf, ptr %147, i64 0, i32 3
  %154 = load i32, ptr %153, align 4, !tbaa !62
  call fastcc void @playanim_window_open(i32 noundef %122, i32 noundef %123, i32 noundef %152, i32 noundef %154) #12
  call fastcc void @playanim_gl_matrix() #12
  %155 = load ptr, ptr @g_WS.0, align 8, !tbaa !56
  call void @GHOST_GetMainDisplayDimensions(ptr noundef %155, ptr noundef nonnull %3, ptr noundef nonnull %4) #15
  %156 = call i32 @BLF_init(i32 noundef 11, i32 noundef 72) #15
  %157 = load i32, ptr @datatoc_bmonofont_ttf_size, align 4, !tbaa !63
  %158 = call i32 @BLF_load_mem(ptr noundef nonnull @.str.8, ptr noundef nonnull @datatoc_bmonofont_ttf, i32 noundef %157) #15
  store i32 %158, ptr %21, align 8, !tbaa !52
  call void @BLF_size(i32 noundef %158, i32 noundef 11, i32 noundef 72) #15
  %159 = load i32, ptr %151, align 8, !tbaa !58
  %160 = getelementptr inbounds %struct.PlayState, ptr %5, i64 0, i32 17
  store i32 %159, ptr %160, align 8, !tbaa !64
  %161 = load i32, ptr %153, align 4, !tbaa !62
  %162 = getelementptr inbounds %struct.PlayState, ptr %5, i64 0, i32 18
  store i32 %161, ptr %162, align 4, !tbaa !65
  store i32 %159, ptr %5, align 8, !tbaa !66
  %163 = getelementptr inbounds %struct.PlayState, ptr %5, i64 0, i32 1
  store i32 %161, ptr %163, align 4, !tbaa !67
  %164 = load i32, ptr %3, align 4, !tbaa !63
  %165 = urem i32 %164, %159
  %166 = udiv i32 %164, %159
  %167 = icmp eq i32 %165, 0
  br i1 %167, label %171, label %168

168:                                              ; preds = %146
  %169 = add i32 %166, 1
  %170 = mul i32 %169, %159
  store i32 %170, ptr %3, align 4, !tbaa !63
  br label %171

171:                                              ; preds = %168, %146
  %172 = load i32, ptr %4, align 4, !tbaa !63
  %173 = urem i32 %172, %161
  %174 = udiv i32 %172, %161
  %175 = icmp eq i32 %173, 0
  br i1 %175, label %179, label %176

176:                                              ; preds = %171
  %177 = add i32 %174, 1
  %178 = mul i32 %177, %161
  store i32 %178, ptr %4, align 4, !tbaa !63
  br label %179

179:                                              ; preds = %176, %171
  call void @glClearColor(float noundef 0x3FB99999A0000000, float noundef 0x3FB99999A0000000, float noundef 0x3FB99999A0000000, float noundef 0.000000e+00) #15
  call void @glClear(i32 noundef 16384) #15
  %180 = load ptr, ptr @g_WS.1, align 8, !tbaa !68
  %181 = call i32 @GHOST_SwapWindowBuffers(ptr noundef %180) #15
  %182 = icmp eq i32 %124, -1
  %183 = icmp eq i32 %125, -1
  %184 = select i1 %182, i1 true, i1 %183
  %185 = sub nsw i32 %125, %124
  %186 = add nsw i32 %185, 1
  %187 = select i1 %184, i32 300000, i32 %186
  %188 = load i32, ptr %20, align 4, !tbaa !51
  %189 = load i32, ptr %21, align 8, !tbaa !52
  call fastcc void @build_pict_list(ptr noundef nonnull %5, i32 noundef %187, i32 noundef %188, i32 noundef %189) #12
  %190 = icmp sgt i32 %127, 2
  br i1 %190, label %191, label %202

191:                                              ; preds = %179
  %192 = zext nneg i32 %127 to i64
  br label %193

193:                                              ; preds = %191, %193
  %194 = phi i64 [ 2, %191 ], [ %200, %193 ]
  %195 = getelementptr inbounds ptr, ptr %126, i64 %194
  %196 = load ptr, ptr %195, align 8, !tbaa !34
  %197 = call ptr @BLI_strncpy(ptr noundef nonnull @wm_main_playanim_intern.filepath, ptr noundef %196, i64 noundef 1024) #15
  %198 = load i32, ptr %20, align 4, !tbaa !51
  %199 = load i32, ptr %21, align 8, !tbaa !52
  call fastcc void @build_pict_list(ptr noundef nonnull %5, i32 noundef %187, i32 noundef %198, i32 noundef %199) #12
  %200 = add nuw nsw i64 %194, 1
  %201 = icmp eq i64 %200, %192
  br i1 %201, label %202, label %193, !llvm.loop !69

202:                                              ; preds = %193, %179
  call void @IMB_freeImBuf(ptr noundef nonnull %147) #15
  %203 = call fastcc i32 @pupdate_time() #12, !range !70
  store double 0.000000e+00, ptr @ptottime, align 8, !tbaa !53
  %204 = load i8, ptr %6, align 1, !tbaa !41
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %407, %403, %202
  %207 = load ptr, ptr @picsbase, align 8, !tbaa !34
  store ptr %207, ptr %16, align 8, !tbaa !48
  %208 = icmp eq ptr %207, null
  br i1 %208, label %440, label %410

209:                                              ; preds = %202, %407
  %210 = phi i8 [ %408, %407 ], [ %204, %202 ]
  %211 = load i8, ptr %11, align 2, !tbaa !71
  %212 = icmp eq i8 %211, 0
  %213 = load i16, ptr %7, align 4, !tbaa !46
  br i1 %212, label %216, label %214

214:                                              ; preds = %209
  %215 = sub i16 0, %213
  store i16 %215, ptr %7, align 4, !tbaa !46
  br label %216

216:                                              ; preds = %214, %209
  %217 = phi i16 [ %215, %214 ], [ %213, %209 ]
  %218 = icmp eq i16 %217, 1
  %219 = load ptr, ptr @picsbase, align 8
  %220 = load ptr, ptr getelementptr inbounds (%struct.ListBase, ptr @picsbase, i64 0, i32 1), align 8
  %221 = select i1 %218, ptr %219, ptr %220
  store ptr %221, ptr %16, align 8, !tbaa !48
  %222 = icmp eq ptr %221, null
  br i1 %222, label %223, label %226

223:                                              ; preds = %216
  %224 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  store i8 0, ptr %6, align 1, !tbaa !41
  %225 = load i8, ptr %11, align 2, !tbaa !71
  br label %226

226:                                              ; preds = %223, %216
  %227 = phi i8 [ 0, %223 ], [ %210, %216 ]
  %228 = phi i8 [ %225, %223 ], [ %211, %216 ]
  %229 = icmp eq i8 %228, 0
  br i1 %229, label %237, label %230

230:                                              ; preds = %226
  %231 = load i16, ptr %7, align 4, !tbaa !46
  %232 = icmp eq i16 %231, 1
  %233 = load ptr, ptr %16, align 8, !tbaa !48
  %234 = getelementptr inbounds %struct.PlayAnimPict, ptr %233, i64 0, i32 1
  %235 = select i1 %232, ptr %233, ptr %234
  %236 = load ptr, ptr %235, align 8, !tbaa !34
  store ptr %236, ptr %16, align 8, !tbaa !48
  br label %237

237:                                              ; preds = %230, %226
  %238 = load double, ptr @ptottime, align 8, !tbaa !53
  %239 = fcmp ogt double %238, 0.000000e+00
  br i1 %239, label %240, label %241

240:                                              ; preds = %237
  store double 0.000000e+00, ptr @ptottime, align 8, !tbaa !53
  br label %241

241:                                              ; preds = %240, %237
  %242 = load ptr, ptr %16, align 8, !tbaa !48
  %243 = icmp eq ptr %242, null
  br i1 %243, label %407, label %246

244:                                              ; preds = %403
  %245 = icmp eq ptr %404, null
  br i1 %245, label %407, label %246

246:                                              ; preds = %241, %244
  %247 = phi ptr [ %404, %244 ], [ %242, %241 ]
  %248 = getelementptr inbounds %struct.PlayAnimPict, ptr %247, i64 0, i32 5
  %249 = load ptr, ptr %248, align 8, !tbaa !72
  %250 = icmp eq ptr %249, null
  br i1 %250, label %251, label %283

251:                                              ; preds = %246
  %252 = getelementptr inbounds %struct.PlayAnimPict, ptr %247, i64 0, i32 6
  %253 = load ptr, ptr %252, align 8, !tbaa !74
  %254 = icmp eq ptr %253, null
  br i1 %254, label %259, label %255

255:                                              ; preds = %251
  %256 = getelementptr inbounds %struct.PlayAnimPict, ptr %247, i64 0, i32 7
  %257 = load i32, ptr %256, align 8, !tbaa !75
  %258 = call ptr @IMB_anim_absolute(ptr noundef nonnull %253, i32 noundef %257, i32 noundef 0, i32 noundef 0) #15
  br label %278

259:                                              ; preds = %251
  %260 = getelementptr inbounds %struct.PlayAnimPict, ptr %247, i64 0, i32 2
  %261 = load ptr, ptr %260, align 8, !tbaa !76
  %262 = icmp eq ptr %261, null
  br i1 %262, label %272, label %263

263:                                              ; preds = %259
  %264 = getelementptr inbounds %struct.PlayAnimPict, ptr %247, i64 0, i32 3
  %265 = load i32, ptr %264, align 8, !tbaa !77
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.PlayAnimPict, ptr %247, i64 0, i32 8
  %268 = load i32, ptr %267, align 4, !tbaa !78
  %269 = getelementptr inbounds %struct.PlayAnimPict, ptr %247, i64 0, i32 4
  %270 = load ptr, ptr %269, align 8, !tbaa !79
  %271 = call ptr @IMB_ibImageFromMemory(ptr noundef nonnull %261, i64 noundef %266, i32 noundef %268, ptr noundef null, ptr noundef %270) #15
  br label %278

272:                                              ; preds = %259
  %273 = getelementptr inbounds %struct.PlayAnimPict, ptr %247, i64 0, i32 4
  %274 = load ptr, ptr %273, align 8, !tbaa !79
  %275 = getelementptr inbounds %struct.PlayAnimPict, ptr %247, i64 0, i32 8
  %276 = load i32, ptr %275, align 4, !tbaa !78
  %277 = call ptr @IMB_loadiffname(ptr noundef %274, i32 noundef %276, ptr noundef null) #15
  br label %278

278:                                              ; preds = %255, %272, %263
  %279 = phi ptr [ %258, %255 ], [ %271, %263 ], [ %277, %272 ]
  %280 = icmp eq ptr %279, null
  br i1 %280, label %305, label %281

281:                                              ; preds = %278
  %282 = load ptr, ptr %16, align 8, !tbaa !48
  br label %283

283:                                              ; preds = %281, %246
  %284 = phi ptr [ %282, %281 ], [ %247, %246 ]
  %285 = phi ptr [ %279, %281 ], [ %249, %246 ]
  %286 = getelementptr inbounds %struct.PlayAnimPict, ptr %284, i64 0, i32 5
  store ptr %285, ptr %286, align 8, !tbaa !72
  %287 = getelementptr inbounds %struct.ImBuf, ptr %285, i64 0, i32 27
  %288 = getelementptr inbounds %struct.PlayAnimPict, ptr %284, i64 0, i32 4
  %289 = load ptr, ptr %288, align 8, !tbaa !79
  %290 = call ptr @BLI_strncpy(ptr noundef nonnull %287, ptr noundef %289, i64 noundef 1024) #15
  %291 = call fastcc i32 @pupdate_time() #12, !range !70
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %296, label %293

293:                                              ; preds = %283, %293
  call void @PIL_sleep_ms(i32 noundef 1) #15
  %294 = call fastcc i32 @pupdate_time() #12, !range !70
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %296, label %293, !llvm.loop !80

296:                                              ; preds = %293, %283
  %297 = load double, ptr @swaptime, align 8, !tbaa !53
  %298 = load double, ptr @ptottime, align 8, !tbaa !53
  %299 = fsub double %298, %297
  store double %299, ptr @ptottime, align 8, !tbaa !53
  %300 = load ptr, ptr %16, align 8, !tbaa !48
  %301 = load i32, ptr %21, align 8, !tbaa !52
  %302 = load i32, ptr %20, align 4, !tbaa !51
  call fastcc void @playanim_toscreen(ptr noundef nonnull %5, ptr noundef %300, ptr noundef nonnull %285, i32 noundef %301, i32 noundef %302) #12
  %303 = load i8, ptr %9, align 8, !tbaa !81
  %304 = icmp eq i8 %303, 0
  br i1 %304, label %316, label %307

305:                                              ; preds = %278
  %306 = call i32 @puts(ptr nonnull dereferenceable(1) @str.24)
  call void @exit(i32 noundef 0) #16
  unreachable

307:                                              ; preds = %296
  %308 = load ptr, ptr %16, align 8, !tbaa !48
  %309 = load ptr, ptr %308, align 8, !tbaa !82
  %310 = icmp eq ptr %309, null
  br i1 %310, label %315, label %311

311:                                              ; preds = %307
  %312 = getelementptr inbounds %struct.PlayAnimPict, ptr %308, i64 0, i32 1
  %313 = load ptr, ptr %312, align 8, !tbaa !83
  %314 = icmp eq ptr %313, null
  br i1 %314, label %315, label %316

315:                                              ; preds = %311, %307
  store i8 1, ptr %14, align 1, !tbaa !84
  br label %316

316:                                              ; preds = %315, %311, %296
  %317 = load i16, ptr %7, align 4, !tbaa !46
  store i16 %317, ptr %8, align 2, !tbaa !47
  br label %318

318:                                              ; preds = %344, %316
  %319 = load ptr, ptr @g_WS.0, align 8, !tbaa !56
  %320 = call i32 @GHOST_ProcessEvents(ptr noundef %319, i32 noundef 0) #15
  %321 = icmp ne i32 %320, 0
  %322 = load i8, ptr %14, align 1
  %323 = icmp ne i8 %322, 0
  %324 = select i1 %321, i1 true, i1 %323
  br i1 %324, label %325, label %347

325:                                              ; preds = %318
  br i1 %321, label %326, label %344

326:                                              ; preds = %325
  %327 = load ptr, ptr @g_WS.0, align 8, !tbaa !56
  %328 = call i32 @GHOST_DispatchEvents(ptr noundef %327) #15
  %329 = load i8, ptr %14, align 1, !tbaa !84
  %330 = icmp eq i8 %329, 0
  br i1 %330, label %344, label %331

331:                                              ; preds = %326
  %332 = call fastcc i32 @pupdate_time() #12, !range !70
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %337, label %334

334:                                              ; preds = %331, %334
  call void @PIL_sleep_ms(i32 noundef 1) #15
  %335 = call fastcc i32 @pupdate_time() #12, !range !70
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %337, label %334, !llvm.loop !85

337:                                              ; preds = %334, %331
  %338 = load double, ptr @swaptime, align 8, !tbaa !53
  %339 = load double, ptr @ptottime, align 8, !tbaa !53
  %340 = fsub double %339, %338
  store double %340, ptr @ptottime, align 8, !tbaa !53
  %341 = load ptr, ptr %16, align 8, !tbaa !48
  %342 = load i32, ptr %21, align 8, !tbaa !52
  %343 = load i32, ptr %20, align 4, !tbaa !51
  call fastcc void @playanim_toscreen(ptr noundef nonnull %5, ptr noundef %341, ptr noundef nonnull %285, i32 noundef %342, i32 noundef %343) #12
  br label %344

344:                                              ; preds = %325, %337, %326
  %345 = load i8, ptr %6, align 1, !tbaa !41
  %346 = icmp eq i8 %345, 0
  br i1 %346, label %347, label %318, !llvm.loop !86

347:                                              ; preds = %344, %318
  %348 = load i8, ptr %13, align 4, !tbaa !87
  store i8 %348, ptr %14, align 1, !tbaa !84
  %349 = icmp eq i8 %348, 0
  %350 = load i8, ptr %15, align 2
  %351 = icmp eq i8 %350, 0
  %352 = select i1 %349, i1 %351, i1 false
  br i1 %352, label %353, label %354

353:                                              ; preds = %347
  store i8 1, ptr %15, align 2, !tbaa !88
  br label %354

354:                                              ; preds = %353, %347
  %355 = call fastcc i32 @pupdate_time() #12, !range !70
  %356 = load ptr, ptr %16, align 8, !tbaa !48
  %357 = icmp ne ptr %356, null
  %358 = load i16, ptr %8, align 2
  %359 = icmp ne i16 %358, 0
  %360 = select i1 %357, i1 %359, i1 false
  br i1 %360, label %361, label %403

361:                                              ; preds = %354
  %362 = load double, ptr @ptottime, align 8, !tbaa !53
  %363 = sext i16 %358 to i32
  %364 = load i8, ptr %9, align 8
  %365 = icmp ne i8 %364, 0
  %366 = load i8, ptr %14, align 1
  %367 = icmp eq i8 %366, 0
  %368 = load double, ptr @swaptime, align 8
  %369 = load i8, ptr %10, align 1
  %370 = icmp ne i8 %369, 0
  %371 = load i8, ptr %12, align 1
  %372 = icmp ne i8 %371, 0
  br label %373

373:                                              ; preds = %361, %393
  %374 = phi ptr [ %356, %361 ], [ %376, %393 ]
  %375 = phi double [ %362, %361 ], [ %394, %393 ]
  %376 = call fastcc ptr @playanim_step(ptr noundef nonnull %374, i32 noundef %363) #12
  store ptr %376, ptr %16, align 8, !tbaa !48
  %377 = icmp ne ptr %376, null
  %378 = select i1 %365, i1 %377, i1 false
  br i1 %378, label %379, label %388

379:                                              ; preds = %373
  %380 = load ptr, ptr %376, align 8, !tbaa !82
  %381 = icmp eq ptr %380, null
  br i1 %381, label %382, label %383

382:                                              ; preds = %379
  store i8 1, ptr %14, align 1, !tbaa !84
  br label %403

383:                                              ; preds = %379
  %384 = getelementptr inbounds %struct.PlayAnimPict, ptr %376, i64 0, i32 1
  %385 = load ptr, ptr %384, align 8, !tbaa !83
  %386 = icmp eq ptr %385, null
  br i1 %386, label %387, label %388

387:                                              ; preds = %383
  store i8 1, ptr %14, align 1, !tbaa !84
  br label %403

388:                                              ; preds = %383, %373
  br i1 %367, label %389, label %396

389:                                              ; preds = %388
  %390 = fcmp olt double %375, %368
  %391 = select i1 %390, i1 true, i1 %370
  %392 = select i1 %391, i1 true, i1 %372
  br i1 %392, label %396, label %393

393:                                              ; preds = %389
  %394 = fsub double %375, %368
  store double %394, ptr @ptottime, align 8, !tbaa !53
  %395 = icmp eq ptr %376, null
  br i1 %395, label %396, label %373, !llvm.loop !89

396:                                              ; preds = %388, %389, %393
  %397 = icmp eq ptr %376, null
  %398 = load i8, ptr %13, align 4
  %399 = icmp ne i8 %398, 0
  %400 = select i1 %397, i1 %399, i1 false
  br i1 %400, label %401, label %403

401:                                              ; preds = %396
  %402 = call fastcc ptr @playanim_step(ptr noundef null, i32 noundef %363) #12
  store ptr %402, ptr %16, align 8, !tbaa !48
  br label %403

403:                                              ; preds = %382, %387, %396, %401, %354
  %404 = phi ptr [ %376, %396 ], [ %402, %401 ], [ %356, %354 ], [ %376, %387 ], [ %376, %382 ]
  %405 = load i8, ptr %6, align 1, !tbaa !41
  %406 = icmp eq i8 %405, 0
  br i1 %406, label %206, label %244

407:                                              ; preds = %244, %241
  %408 = phi i8 [ %227, %241 ], [ %405, %244 ]
  %409 = icmp eq i8 %408, 0
  br i1 %409, label %206, label %209, !llvm.loop !90

410:                                              ; preds = %206, %436
  %411 = phi ptr [ %438, %436 ], [ %207, %206 ]
  %412 = phi ptr [ %422, %436 ], [ null, %206 ]
  %413 = getelementptr inbounds %struct.PlayAnimPict, ptr %411, i64 0, i32 6
  %414 = load ptr, ptr %413, align 8, !tbaa !74
  %415 = icmp eq ptr %414, null
  %416 = icmp eq ptr %412, %414
  %417 = select i1 %415, i1 true, i1 %416
  br i1 %417, label %420, label %418

418:                                              ; preds = %410
  call void @IMB_close_anim(ptr noundef nonnull %414) #15
  %419 = load ptr, ptr %16, align 8, !tbaa !48
  br label %420

420:                                              ; preds = %418, %410
  %421 = phi ptr [ %419, %418 ], [ %411, %410 ]
  %422 = phi ptr [ %414, %418 ], [ %412, %410 ]
  %423 = getelementptr inbounds %struct.PlayAnimPict, ptr %421, i64 0, i32 5
  %424 = load ptr, ptr %423, align 8, !tbaa !72
  %425 = icmp eq ptr %424, null
  br i1 %425, label %428, label %426

426:                                              ; preds = %420
  call void @IMB_freeImBuf(ptr noundef nonnull %424) #15
  %427 = load ptr, ptr %16, align 8, !tbaa !48
  br label %428

428:                                              ; preds = %426, %420
  %429 = phi ptr [ %427, %426 ], [ %421, %420 ]
  %430 = getelementptr inbounds %struct.PlayAnimPict, ptr %429, i64 0, i32 2
  %431 = load ptr, ptr %430, align 8, !tbaa !76
  %432 = icmp eq ptr %431, null
  br i1 %432, label %436, label %433

433:                                              ; preds = %428
  %434 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %434(ptr noundef nonnull %431) #15
  %435 = load ptr, ptr %16, align 8, !tbaa !48
  br label %436

436:                                              ; preds = %433, %428
  %437 = phi ptr [ %435, %433 ], [ %429, %428 ]
  %438 = load ptr, ptr %437, align 8, !tbaa !34
  store ptr %438, ptr %16, align 8, !tbaa !48
  %439 = icmp eq ptr %438, null
  br i1 %439, label %440, label %410, !llvm.loop !91

440:                                              ; preds = %436, %206
  call void @BLI_freelistN(ptr noundef nonnull @picsbase) #15
  call void @BLF_exit() #15
  %441 = load ptr, ptr @g_WS.0, align 8, !tbaa !56
  %442 = load ptr, ptr @g_WS.1, align 8, !tbaa !68
  %443 = call i32 @GHOST_DisposeWindow(ptr noundef %441, ptr noundef %442) #15
  %444 = load i8, ptr %17, align 8, !tbaa !50
  %445 = icmp eq i8 %444, 0
  br i1 %445, label %448, label %446

446:                                              ; preds = %440
  %447 = call ptr @BLI_strncpy(ptr noundef nonnull @wm_main_playanim_intern.filepath, ptr noundef nonnull %17, i64 noundef 1024) #15
  br label %451

448:                                              ; preds = %440
  call void @IMB_exit() #15
  call void @BKE_images_exit() #15
  call void @DAG_exit() #15
  %449 = load ptr, ptr @MEM_get_memory_blocks_in_use, align 8, !tbaa !34
  %450 = call i32 %449() #15
  br label %451

451:                                              ; preds = %448, %446
  %452 = phi ptr [ @wm_main_playanim_intern.filepath, %446 ], [ null, %448 ]
  call void @llvm.lifetime.end.p0(i64 1088, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret ptr %452
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare double @atof(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @BLI_current_working_dir(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @BLI_add_slash(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare zeroext i8 @IMB_isanim(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @IMB_open_anim(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @IMB_anim_absolute(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @IMB_close_anim(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare zeroext i8 @IMB_ispic(ptr noundef) local_unnamed_addr #5

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @IMB_loadiffname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @GHOST_CreateEventConsumer(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @ghost_event_proc(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !92 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = tail call i32 @GHOST_GetEventType(ptr noundef %0) #15
  tail call fastcc void @playanim_event_qual_update() #12
  %12 = icmp eq i32 %11, 2
  %13 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 13
  %14 = load i8, ptr %13, align 8, !tbaa !93
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %2
  %17 = and i32 %11, -2
  %18 = icmp eq i32 %17, 8
  br i1 %18, label %19, label %389

19:                                               ; preds = %16
  %20 = tail call ptr @GHOST_GetEventData(ptr noundef %0) #15
  %21 = load i32, ptr %20, align 4, !tbaa !94
  %22 = icmp eq i32 %21, 27
  br i1 %22, label %23, label %389

23:                                               ; preds = %19
  store i8 0, ptr %13, align 8, !tbaa !93
  br label %389

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 10
  %26 = load i8, ptr %25, align 1, !tbaa !84
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 11
  %30 = load i8, ptr %29, align 2, !tbaa !88
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  store i8 0, ptr %29, align 2, !tbaa !88
  br label %33

33:                                               ; preds = %32, %28
  %34 = tail call fastcc i32 @pupdate_time() #12, !range !70
  store double 0.000000e+00, ptr @ptottime, align 8, !tbaa !53
  br label %35

35:                                               ; preds = %24, %33
  switch i32 %11, label %389 [
    i32 8, label %36
    i32 9, label %36
    i32 2, label %250
    i32 3, label %250
    i32 1, label %298
    i32 12, label %333
    i32 13, label %333
    i32 15, label %336
    i32 16, label %336
    i32 10, label %367
    i32 11, label %367
    i32 20, label %369
  ]

36:                                               ; preds = %35, %35
  %37 = tail call ptr @GHOST_GetEventData(ptr noundef %0) #15
  %38 = load i32, ptr %37, align 4, !tbaa !94
  switch i32 %38, label %389 [
    i32 65, label %39
    i32 80, label %46
    i32 70, label %53
    i32 49, label %64
    i32 280, label %64
    i32 50, label %71
    i32 281, label %71
    i32 51, label %78
    i32 282, label %78
    i32 52, label %85
    i32 283, label %85
    i32 53, label %96
    i32 284, label %96
    i32 54, label %103
    i32 285, label %103
    i32 55, label %110
    i32 286, label %110
    i32 56, label %117
    i32 287, label %117
    i32 57, label %124
    i32 288, label %124
    i32 267, label %131
    i32 270, label %144
    i32 268, label %156
    i32 269, label %169
    i32 47, label %181
    i32 294, label %181
    i32 48, label %204
    i32 279, label %204
    i32 13, label %213
    i32 290, label %213
    i32 46, label %217
    i32 289, label %217
    i32 61, label %228
    i32 291, label %228
    i32 45, label %238
    i32 292, label %238
    i32 27, label %248
  ]

39:                                               ; preds = %36
  %40 = icmp eq i32 %11, 8
  br i1 %40, label %41, label %389

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 8
  %43 = load i8, ptr %42, align 1, !tbaa !96
  %44 = icmp eq i8 %43, 0
  %45 = zext i1 %44 to i8
  store i8 %45, ptr %42, align 1, !tbaa !96
  br label %389

46:                                               ; preds = %36
  %47 = icmp eq i32 %11, 8
  br i1 %47, label %48, label %389

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 7
  %50 = load i8, ptr %49, align 2, !tbaa !71
  %51 = icmp eq i8 %50, 0
  %52 = zext i1 %51 to i8
  store i8 %52, ptr %49, align 2, !tbaa !71
  br label %389

53:                                               ; preds = %36
  %54 = icmp eq i32 %11, 8
  br i1 %54, label %55, label %389

55:                                               ; preds = %53
  %56 = load i32, ptr @g_WS.2, align 8, !tbaa !97
  %57 = and i32 %56, 3
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 14, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !50
  %62 = icmp eq i8 %61, 0
  %63 = zext i1 %62 to i8
  store i8 %63, ptr %60, align 1, !tbaa !50
  br label %389

64:                                               ; preds = %36, %36
  %65 = icmp eq i32 %11, 8
  br i1 %65, label %66, label %389

66:                                               ; preds = %64
  %67 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 15
  %68 = load i32, ptr %67, align 4, !tbaa !51
  %69 = sitofp i32 %68 to double
  %70 = fdiv double %69, 6.000000e+01
  store double %70, ptr @swaptime, align 8, !tbaa !53
  br label %389

71:                                               ; preds = %36, %36
  %72 = icmp eq i32 %11, 8
  br i1 %72, label %73, label %389

73:                                               ; preds = %71
  %74 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 15
  %75 = load i32, ptr %74, align 4, !tbaa !51
  %76 = sitofp i32 %75 to double
  %77 = fdiv double %76, 5.000000e+01
  store double %77, ptr @swaptime, align 8, !tbaa !53
  br label %389

78:                                               ; preds = %36, %36
  %79 = icmp eq i32 %11, 8
  br i1 %79, label %80, label %389

80:                                               ; preds = %78
  %81 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 15
  %82 = load i32, ptr %81, align 4, !tbaa !51
  %83 = sitofp i32 %82 to double
  %84 = fdiv double %83, 3.000000e+01
  store double %84, ptr @swaptime, align 8, !tbaa !53
  br label %389

85:                                               ; preds = %36, %36
  %86 = load i32, ptr @g_WS.2, align 8, !tbaa !97
  %87 = and i32 %86, 3
  %88 = icmp eq i32 %87, 0
  %89 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 15
  %90 = load i32, ptr %89, align 4, !tbaa !51
  %91 = sitofp i32 %90 to double
  br i1 %88, label %94, label %92

92:                                               ; preds = %85
  %93 = fdiv double %91, 2.400000e+01
  store double %93, ptr @swaptime, align 8, !tbaa !53
  br label %389

94:                                               ; preds = %85
  %95 = fdiv double %91, 2.500000e+01
  store double %95, ptr @swaptime, align 8, !tbaa !53
  br label %389

96:                                               ; preds = %36, %36
  %97 = icmp eq i32 %11, 8
  br i1 %97, label %98, label %389

98:                                               ; preds = %96
  %99 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 15
  %100 = load i32, ptr %99, align 4, !tbaa !51
  %101 = sitofp i32 %100 to double
  %102 = fdiv double %101, 2.000000e+01
  store double %102, ptr @swaptime, align 8, !tbaa !53
  br label %389

103:                                              ; preds = %36, %36
  %104 = icmp eq i32 %11, 8
  br i1 %104, label %105, label %389

105:                                              ; preds = %103
  %106 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 15
  %107 = load i32, ptr %106, align 4, !tbaa !51
  %108 = sitofp i32 %107 to double
  %109 = fdiv double %108, 1.500000e+01
  store double %109, ptr @swaptime, align 8, !tbaa !53
  br label %389

110:                                              ; preds = %36, %36
  %111 = icmp eq i32 %11, 8
  br i1 %111, label %112, label %389

112:                                              ; preds = %110
  %113 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 15
  %114 = load i32, ptr %113, align 4, !tbaa !51
  %115 = sitofp i32 %114 to double
  %116 = fdiv double %115, 1.200000e+01
  store double %116, ptr @swaptime, align 8, !tbaa !53
  br label %389

117:                                              ; preds = %36, %36
  %118 = icmp eq i32 %11, 8
  br i1 %118, label %119, label %389

119:                                              ; preds = %117
  %120 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 15
  %121 = load i32, ptr %120, align 4, !tbaa !51
  %122 = sitofp i32 %121 to double
  %123 = fdiv double %122, 1.000000e+01
  store double %123, ptr @swaptime, align 8, !tbaa !53
  br label %389

124:                                              ; preds = %36, %36
  %125 = icmp eq i32 %11, 8
  br i1 %125, label %126, label %389

126:                                              ; preds = %124
  %127 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 15
  %128 = load i32, ptr %127, align 4, !tbaa !51
  %129 = sitofp i32 %128 to double
  %130 = fdiv double %129, 6.000000e+00
  store double %130, ptr @swaptime, align 8, !tbaa !53
  br label %389

131:                                              ; preds = %36
  %132 = icmp eq i32 %11, 8
  br i1 %132, label %133, label %389

133:                                              ; preds = %131
  %134 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 9
  store i8 1, ptr %134, align 4, !tbaa !87
  store i8 0, ptr %25, align 1, !tbaa !84
  %135 = load i32, ptr @g_WS.2, align 8, !tbaa !97
  %136 = and i32 %135, 3
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %142, label %138

138:                                              ; preds = %133
  %139 = load ptr, ptr @picsbase, align 8, !tbaa !98
  %140 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 16
  store ptr %139, ptr %140, align 8, !tbaa !48
  %141 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 4
  store i16 0, ptr %141, align 2, !tbaa !47
  br label %389

142:                                              ; preds = %133
  %143 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 4
  store i16 -1, ptr %143, align 2, !tbaa !47
  br label %389

144:                                              ; preds = %36
  %145 = icmp eq i32 %11, 8
  br i1 %145, label %146, label %389

146:                                              ; preds = %144
  store i8 0, ptr %25, align 1, !tbaa !84
  %147 = load i32, ptr @g_WS.2, align 8, !tbaa !97
  %148 = and i32 %147, 3
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %153, label %150

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 3
  store i16 -1, ptr %151, align 4, !tbaa !46
  %152 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 4
  store i16 -1, ptr %152, align 2, !tbaa !47
  br label %389

153:                                              ; preds = %146
  %154 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 4
  store i16 -10, ptr %154, align 2, !tbaa !47
  %155 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 9
  store i8 1, ptr %155, align 4, !tbaa !87
  br label %389

156:                                              ; preds = %36
  %157 = icmp eq i32 %11, 8
  br i1 %157, label %158, label %389

158:                                              ; preds = %156
  %159 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 9
  store i8 1, ptr %159, align 4, !tbaa !87
  store i8 0, ptr %25, align 1, !tbaa !84
  %160 = load i32, ptr @g_WS.2, align 8, !tbaa !97
  %161 = and i32 %160, 3
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %167, label %163

163:                                              ; preds = %158
  %164 = load ptr, ptr getelementptr inbounds (%struct.ListBase, ptr @picsbase, i64 0, i32 1), align 8, !tbaa !100
  %165 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 16
  store ptr %164, ptr %165, align 8, !tbaa !48
  %166 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 4
  store i16 0, ptr %166, align 2, !tbaa !47
  br label %389

167:                                              ; preds = %158
  %168 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 4
  store i16 1, ptr %168, align 2, !tbaa !47
  br label %389

169:                                              ; preds = %36
  %170 = icmp eq i32 %11, 8
  br i1 %170, label %171, label %389

171:                                              ; preds = %169
  store i8 0, ptr %25, align 1, !tbaa !84
  %172 = load i32, ptr @g_WS.2, align 8, !tbaa !97
  %173 = and i32 %172, 3
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %178, label %175

175:                                              ; preds = %171
  %176 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 3
  store i16 1, ptr %176, align 4, !tbaa !46
  %177 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 4
  store i16 1, ptr %177, align 2, !tbaa !47
  br label %389

178:                                              ; preds = %171
  %179 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 4
  store i16 10, ptr %179, align 2, !tbaa !47
  %180 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 9
  store i8 1, ptr %180, align 4, !tbaa !87
  br label %389

181:                                              ; preds = %36, %36
  %182 = icmp eq i32 %11, 8
  br i1 %182, label %183, label %389

183:                                              ; preds = %181
  %184 = load i32, ptr @g_WS.2, align 8, !tbaa !97
  %185 = and i32 %184, 3
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %199, label %187

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 20
  %189 = load ptr, ptr %188, align 8, !tbaa !101
  %190 = icmp eq ptr %189, null
  br i1 %190, label %389, label %191

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.ImBuf, ptr %189, i64 0, i32 27
  %193 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 15
  %194 = load i32, ptr %193, align 4, !tbaa !51
  %195 = sitofp i32 %194 to double
  %196 = load double, ptr @swaptime, align 8, !tbaa !53
  %197 = fdiv double %195, %196
  %198 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, ptr noundef nonnull %192, double noundef %197) #12
  br label %389

199:                                              ; preds = %183
  %200 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 15
  %201 = load i32, ptr %200, align 4, !tbaa !51
  %202 = sitofp i32 %201 to double
  %203 = fdiv double %202, 5.000000e+00
  store double %203, ptr @swaptime, align 8, !tbaa !53
  br label %389

204:                                              ; preds = %36, %36
  %205 = icmp eq i32 %11, 8
  br i1 %205, label %206, label %389

206:                                              ; preds = %204
  %207 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 5
  %208 = load i8, ptr %207, align 8, !tbaa !81
  %209 = icmp eq i8 %208, 0
  br i1 %209, label %211, label %210

210:                                              ; preds = %206
  store i8 0, ptr %25, align 1, !tbaa !84
  store i8 0, ptr %207, align 8, !tbaa !81
  br label %389

211:                                              ; preds = %206
  %212 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 16
  store ptr null, ptr %212, align 8, !tbaa !48
  store i8 1, ptr %207, align 8, !tbaa !81
  store i8 0, ptr %25, align 1, !tbaa !84
  br label %389

213:                                              ; preds = %36, %36
  %214 = icmp eq i32 %11, 8
  br i1 %214, label %215, label %389

215:                                              ; preds = %213
  %216 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 9
  store i8 0, ptr %216, align 4, !tbaa !87
  store i8 0, ptr %25, align 1, !tbaa !84
  br label %389

217:                                              ; preds = %36, %36
  %218 = icmp eq i32 %11, 8
  br i1 %218, label %219, label %389

219:                                              ; preds = %217
  %220 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 9
  %221 = load i8, ptr %220, align 4, !tbaa !87
  %222 = icmp eq i8 %221, 0
  br i1 %222, label %224, label %223

223:                                              ; preds = %219
  store i8 0, ptr %25, align 1, !tbaa !84
  br label %389

224:                                              ; preds = %219
  store i8 1, ptr %220, align 4, !tbaa !87
  %225 = load i8, ptr %25, align 1, !tbaa !84
  %226 = icmp eq i8 %225, 0
  %227 = zext i1 %226 to i8
  store i8 %227, ptr %25, align 1, !tbaa !84
  br label %389

228:                                              ; preds = %36, %36
  %229 = icmp eq i32 %11, 8
  br i1 %229, label %230, label %389

230:                                              ; preds = %228
  %231 = load i32, ptr @g_WS.2, align 8, !tbaa !97
  %232 = and i32 %231, 48
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %235, label %234

234:                                              ; preds = %230
  tail call fastcc void @playanim_window_zoom(ptr noundef nonnull %1, float noundef 1.000000e+00) #12
  br label %389

235:                                              ; preds = %230
  %236 = load double, ptr @swaptime, align 8, !tbaa !53
  %237 = fdiv double %236, 1.100000e+00
  store double %237, ptr @swaptime, align 8, !tbaa !53
  br label %389

238:                                              ; preds = %36, %36
  %239 = icmp eq i32 %11, 8
  br i1 %239, label %240, label %389

240:                                              ; preds = %238
  %241 = load i32, ptr @g_WS.2, align 8, !tbaa !97
  %242 = and i32 %241, 48
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %245, label %244

244:                                              ; preds = %240
  tail call fastcc void @playanim_window_zoom(ptr noundef nonnull %1, float noundef -1.000000e+00) #12
  br label %389

245:                                              ; preds = %240
  %246 = load double, ptr @swaptime, align 8, !tbaa !53
  %247 = fmul double %246, 1.100000e+00
  store double %247, ptr @swaptime, align 8, !tbaa !53
  br label %389

248:                                              ; preds = %36
  %249 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 12
  store i8 0, ptr %249, align 1, !tbaa !41
  br label %389

250:                                              ; preds = %35, %35
  %251 = tail call ptr @GHOST_GetEventData(ptr noundef %0) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  %252 = load ptr, ptr @g_WS.0, align 8, !tbaa !56
  %253 = call i32 @GHOST_GetCursorPosition(ptr noundef %252, ptr noundef nonnull %3, ptr noundef nonnull %4) #15
  %254 = load ptr, ptr @g_WS.1, align 8, !tbaa !68
  %255 = load i32, ptr %3, align 4, !tbaa !63
  %256 = load i32, ptr %4, align 4, !tbaa !63
  call void @GHOST_ScreenToClient(ptr noundef %254, i32 noundef %255, i32 noundef %256, ptr noundef nonnull %3, ptr noundef nonnull %4) #15
  call fastcc void @playanim_window_get_size(ptr noundef nonnull %5, ptr noundef nonnull %6) #12
  %257 = load i32, ptr %3, align 4, !tbaa !63
  %258 = icmp sgt i32 %257, -1
  br i1 %258, label %259, label %268

259:                                              ; preds = %250
  %260 = load i32, ptr %5, align 4, !tbaa !63
  %261 = icmp slt i32 %257, %260
  %262 = load i32, ptr %4, align 4
  %263 = icmp sgt i32 %262, -1
  %264 = select i1 %261, i1 %263, i1 false
  br i1 %264, label %265, label %268

265:                                              ; preds = %259
  %266 = load i32, ptr %6, align 4, !tbaa !63
  %267 = icmp sle i32 %262, %266
  br label %268

268:                                              ; preds = %265, %259, %250
  %269 = phi i1 [ false, %259 ], [ false, %250 ], [ %267, %265 ]
  %270 = load i32, ptr %251, align 4, !tbaa !102
  switch i32 %270, label %297 [
    i32 0, label %271
    i32 1, label %279
    i32 2, label %287
  ]

271:                                              ; preds = %268
  br i1 %12, label %272, label %276

272:                                              ; preds = %271
  br i1 %269, label %273, label %297

273:                                              ; preds = %272
  %274 = load i32, ptr @g_WS.2, align 8, !tbaa !97
  %275 = or i32 %274, 65536
  br label %295

276:                                              ; preds = %271
  %277 = load i32, ptr @g_WS.2, align 8, !tbaa !97
  %278 = and i32 %277, -65537
  br label %295

279:                                              ; preds = %268
  br i1 %12, label %280, label %284

280:                                              ; preds = %279
  br i1 %269, label %281, label %297

281:                                              ; preds = %280
  %282 = load i32, ptr @g_WS.2, align 8, !tbaa !97
  %283 = or i32 %282, 131072
  br label %295

284:                                              ; preds = %279
  %285 = load i32, ptr @g_WS.2, align 8, !tbaa !97
  %286 = and i32 %285, -131073
  br label %295

287:                                              ; preds = %268
  br i1 %12, label %288, label %292

288:                                              ; preds = %287
  br i1 %269, label %289, label %297

289:                                              ; preds = %288
  %290 = load i32, ptr @g_WS.2, align 8, !tbaa !97
  %291 = or i32 %290, 262144
  br label %295

292:                                              ; preds = %287
  %293 = load i32, ptr @g_WS.2, align 8, !tbaa !97
  %294 = and i32 %293, -262145
  br label %295

295:                                              ; preds = %273, %276, %289, %292, %284, %281
  %296 = phi i32 [ %283, %281 ], [ %286, %284 ], [ %294, %292 ], [ %291, %289 ], [ %278, %276 ], [ %275, %273 ]
  store i32 %296, ptr @g_WS.2, align 8, !tbaa !97
  br label %297

297:                                              ; preds = %295, %268, %280, %288, %272
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  br label %389

298:                                              ; preds = %35
  %299 = load i32, ptr @g_WS.2, align 8, !tbaa !97
  %300 = and i32 %299, 65536
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %389, label %302

302:                                              ; preds = %298
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  %303 = tail call ptr @GHOST_GetEventData(ptr noundef %0) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #13
  %304 = load ptr, ptr @g_WS.1, align 8, !tbaa !68
  %305 = load i32, ptr %303, align 4, !tbaa !104
  %306 = getelementptr inbounds %struct.GHOST_TEventCursorData, ptr %303, i64 0, i32 1
  %307 = load i32, ptr %306, align 4, !tbaa !106
  call void @GHOST_ScreenToClient(ptr noundef %304, i32 noundef %305, i32 noundef %307, ptr noundef nonnull %9, ptr noundef nonnull %10) #15
  call fastcc void @playanim_window_get_size(ptr noundef nonnull %7, ptr noundef nonnull %8) #12
  %308 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 16
  br label %309

309:                                              ; preds = %309, %302
  %310 = phi ptr [ @picsbase, %302 ], [ %312, %309 ]
  %311 = phi i32 [ 0, %302 ], [ %314, %309 ]
  %312 = load ptr, ptr %310, align 8, !tbaa !34
  store ptr %312, ptr %308, align 8, !tbaa !48
  %313 = icmp eq ptr %312, null
  %314 = add nuw nsw i32 %311, 1
  br i1 %313, label %315, label %309, !llvm.loop !107

315:                                              ; preds = %309
  %316 = load i32, ptr %9, align 4, !tbaa !63
  %317 = mul nsw i32 %316, %311
  %318 = load i32, ptr %7, align 4, !tbaa !63
  %319 = sdiv i32 %317, %318
  %320 = load ptr, ptr @picsbase, align 8, !tbaa !98
  store ptr %320, ptr %308, align 8, !tbaa !48
  %321 = icmp sgt i32 %319, 0
  br i1 %321, label %322, label %330

322:                                              ; preds = %315, %327
  %323 = phi ptr [ %325, %327 ], [ %320, %315 ]
  %324 = phi i32 [ %328, %327 ], [ %319, %315 ]
  %325 = load ptr, ptr %323, align 8, !tbaa !82
  %326 = icmp eq ptr %325, null
  br i1 %326, label %330, label %327

327:                                              ; preds = %322
  store ptr %325, ptr %308, align 8, !tbaa !48
  %328 = add nsw i32 %324, -1
  %329 = icmp sgt i32 %324, 1
  br i1 %329, label %322, label %330, !llvm.loop !108

330:                                              ; preds = %327, %322, %315
  %331 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 9
  store i8 1, ptr %331, align 4, !tbaa !87
  store i8 0, ptr %25, align 1, !tbaa !84
  %332 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 4
  store i16 0, ptr %332, align 2, !tbaa !47
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  br label %389

333:                                              ; preds = %35, %35
  %334 = load i32, ptr @g_WS.2, align 8, !tbaa !97
  %335 = and i32 %334, -458753
  store i32 %335, ptr @g_WS.2, align 8, !tbaa !97
  br label %389

336:                                              ; preds = %35, %35
  %337 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 1
  tail call fastcc void @playanim_window_get_size(ptr noundef nonnull %1, ptr noundef nonnull %337) #12
  %338 = load ptr, ptr @g_WS.1, align 8, !tbaa !68
  %339 = tail call i32 @GHOST_ActivateWindowDrawingContext(ptr noundef %338) #15
  %340 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 17
  %341 = load <2 x i32>, ptr %1, align 8, !tbaa !63
  %342 = sitofp <2 x i32> %341 to <2 x float>
  %343 = load <2 x i32>, ptr %340, align 8, !tbaa !63
  %344 = sitofp <2 x i32> %343 to <2 x float>
  %345 = fdiv <2 x float> %342, %344
  %346 = extractelement <2 x float> %345, i64 0
  %347 = extractelement <2 x float> %345, i64 1
  %348 = fcmp olt float %346, %347
  %349 = select i1 %348, float %346, float %347
  %350 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 2
  %351 = fadd float %349, 5.000000e-01
  %352 = tail call float @llvm.floor.f32(float %351)
  %353 = fcmp olt float %352, 1.000000e+00
  %354 = select i1 %353, float 1.000000e+00, float %352
  store float %354, ptr %350, align 8, !tbaa !49
  %355 = extractelement <2 x i32> %341, i64 0
  %356 = extractelement <2 x i32> %341, i64 1
  tail call void @glViewport(i32 noundef 0, i32 noundef 0, i32 noundef %355, i32 noundef %356) #15
  %357 = load i32, ptr %1, align 8, !tbaa !66
  %358 = load i32, ptr %337, align 4, !tbaa !67
  tail call void @glScissor(i32 noundef 0, i32 noundef 0, i32 noundef %357, i32 noundef %358) #15
  tail call fastcc void @playanim_gl_matrix() #12
  store double 0.000000e+00, ptr @ptottime, align 8, !tbaa !53
  %359 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 16
  %360 = load ptr, ptr %359, align 8, !tbaa !48
  %361 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 20
  %362 = load ptr, ptr %361, align 8, !tbaa !101
  %363 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 19
  %364 = load i32, ptr %363, align 8, !tbaa !52
  %365 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 15
  %366 = load i32, ptr %365, align 4, !tbaa !51
  tail call fastcc void @playanim_toscreen(ptr noundef nonnull %1, ptr noundef %360, ptr noundef %362, i32 noundef %364, i32 noundef %366) #12
  br label %389

367:                                              ; preds = %35, %35
  %368 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 12
  store i8 0, ptr %368, align 1, !tbaa !41
  br label %389

369:                                              ; preds = %35
  %370 = tail call ptr @GHOST_GetEventData(ptr noundef %0) #15
  %371 = getelementptr inbounds %struct.GHOST_TEventDragnDropData, ptr %370, i64 0, i32 2
  %372 = load i32, ptr %371, align 8, !tbaa !109
  %373 = icmp eq i32 %372, 1
  br i1 %373, label %374, label %389

374:                                              ; preds = %369
  %375 = getelementptr inbounds %struct.GHOST_TEventDragnDropData, ptr %370, i64 0, i32 3
  %376 = load ptr, ptr %375, align 8, !tbaa !111
  %377 = load i32, ptr %376, align 8, !tbaa !112
  %378 = icmp sgt i32 %377, 0
  br i1 %378, label %379, label %389

379:                                              ; preds = %374
  %380 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 21
  %381 = getelementptr inbounds %struct.GHOST_TStringArray, ptr %376, i64 0, i32 1
  %382 = load ptr, ptr %381, align 8, !tbaa !114
  %383 = load ptr, ptr %382, align 8, !tbaa !34
  %384 = tail call ptr @BLI_strncpy(ptr noundef nonnull %380, ptr noundef %383, i64 noundef 1024) #15
  %385 = getelementptr inbounds %struct.PlayState, ptr %1, i64 0, i32 12
  store i8 0, ptr %385, align 1, !tbaa !41
  %386 = load ptr, ptr %381, align 8, !tbaa !114
  %387 = load ptr, ptr %386, align 8, !tbaa !34
  %388 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef %387) #12
  br label %389

389:                                              ; preds = %238, %228, %217, %213, %204, %181, %169, %156, %144, %131, %124, %117, %110, %103, %96, %78, %71, %64, %53, %46, %39, %297, %333, %336, %367, %330, %298, %35, %36, %244, %245, %234, %235, %224, %223, %215, %211, %210, %187, %191, %199, %178, %175, %167, %163, %153, %150, %142, %138, %126, %119, %112, %105, %98, %92, %94, %80, %73, %66, %55, %48, %41, %248, %374, %379, %369, %16, %19, %23
  ret i32 1
}

; Function Attrs: optsize
declare ptr @GHOST_CreateSystem() local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @GHOST_AddEventConsumer(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @playanim_window_open(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !115 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  %7 = load ptr, ptr @g_WS.0, align 8, !tbaa !56
  call void @GHOST_GetMainDisplayDimensions(ptr noundef %7, ptr noundef nonnull %5, ptr noundef nonnull %6) #15
  %8 = load i32, ptr %6, align 4, !tbaa !63
  %9 = add i32 %3, %1
  %10 = sub i32 %8, %9
  %11 = load ptr, ptr @g_WS.0, align 8, !tbaa !56
  %12 = call ptr @GHOST_CreateWindow(ptr noundef %11, ptr noundef nonnull @.str.7, i32 noundef %0, i32 noundef %10, i32 noundef %2, i32 noundef %3, i32 noundef 0, i32 noundef 1, i32 noundef 0, i16 noundef zeroext 0) #15
  store ptr %12, ptr @g_WS.1, align 8, !tbaa !68
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @playanim_gl_matrix() unnamed_addr #0 !PGOFuncName !116 {
  tail call void @glMatrixMode(i32 noundef 5889) #15
  tail call void @glLoadIdentity() #15
  tail call void @glOrtho(double noundef 0.000000e+00, double noundef 1.000000e+00, double noundef 0.000000e+00, double noundef 1.000000e+00, double noundef -1.000000e+00, double noundef 1.000000e+00) #15
  tail call void @glMatrixMode(i32 noundef 5888) #15
  ret void
}

; Function Attrs: optsize
declare void @GHOST_GetMainDisplayDimensions(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @BLF_init(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @BLF_load_mem(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BLF_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @glClearColor(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @glClear(i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @GHOST_SwapWindowBuffers(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @build_pict_list(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !117 {
  %5 = getelementptr inbounds %struct.PlayState, ptr %0, i64 0, i32 13
  store i8 1, ptr %5, align 8, !tbaa !93
  tail call fastcc void @build_pict_list_ex(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #12
  store i8 0, ptr %5, align 8, !tbaa !93
  ret void
}

; Function Attrs: optsize
declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @pupdate_time() unnamed_addr #0 !PGOFuncName !118 {
  %1 = tail call double @PIL_check_seconds_timer() #15
  %2 = load double, ptr @pupdate_time.ltime, align 8, !tbaa !53
  %3 = fsub double %1, %2
  %4 = load double, ptr @ptottime, align 8, !tbaa !53
  %5 = fadd double %4, %3
  store double %5, ptr @ptottime, align 8, !tbaa !53
  store double %1, ptr @pupdate_time.ltime, align 8, !tbaa !53
  %6 = fcmp olt double %5, 0.000000e+00
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: optsize
declare ptr @IMB_ibImageFromMemory(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @PIL_sleep_ms(i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @playanim_toscreen(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !119 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [1056 x i8], align 16
  %9 = icmp eq ptr %2, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %5
  %11 = icmp eq ptr %1, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.PlayAnimPict, ptr %1, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !79
  br label %15

15:                                               ; preds = %10, %12
  %16 = phi ptr [ %14, %12 ], [ @.str.22, %10 ]
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, ptr noundef nonnull @__func__.playanim_toscreen, ptr noundef %16) #12
  br label %122

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !120
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 9
  %24 = load ptr, ptr %23, align 8, !tbaa !121
  %25 = icmp eq ptr %24, null
  br i1 %25, label %122, label %26

26:                                               ; preds = %22
  tail call void @IMB_rect_from_float(ptr noundef nonnull %2) #15
  tail call void @imb_freerectfloatImBuf(ptr noundef nonnull %2) #15
  %27 = load ptr, ptr %19, align 8, !tbaa !120
  %28 = icmp eq ptr %27, null
  br i1 %28, label %122, label %29

29:                                               ; preds = %18, %26
  %30 = load ptr, ptr @g_WS.1, align 8, !tbaa !68
  %31 = tail call i32 @GHOST_ActivateWindowDrawingContext(ptr noundef %30) #15
  %32 = getelementptr inbounds %struct.PlayState, ptr %0, i64 0, i32 2
  %33 = load float, ptr %32, align 8, !tbaa !49
  %34 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 2
  %35 = load i32, ptr %34, align 8, !tbaa !58
  %36 = sitofp i32 %35 to float
  %37 = fmul float %33, %36
  %38 = load i32, ptr %0, align 8, !tbaa !66
  %39 = sitofp i32 %38 to float
  %40 = fdiv float %37, %39
  %41 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 3
  %42 = load i32, ptr %41, align 4, !tbaa !62
  %43 = sitofp i32 %42 to float
  %44 = fmul float %33, %43
  %45 = getelementptr inbounds %struct.PlayState, ptr %0, i64 0, i32 1
  %46 = load i32, ptr %45, align 4, !tbaa !67
  %47 = sitofp i32 %46 to float
  %48 = fdiv float %44, %47
  %49 = fsub float 1.000000e+00, %40
  %50 = fmul float %49, 5.000000e-01
  %51 = fsub float 1.000000e+00, %48
  %52 = fmul float %51, 5.000000e-01
  %53 = fcmp olt float %50, 0.000000e+00
  br i1 %53, label %57, label %54

54:                                               ; preds = %29
  %55 = fcmp ogt float %50, 1.000000e+00
  br i1 %55, label %56, label %57

56:                                               ; preds = %54
  br label %57

57:                                               ; preds = %29, %54, %56
  %58 = phi float [ 1.000000e+00, %56 ], [ %50, %54 ], [ 0.000000e+00, %29 ]
  %59 = fcmp olt float %52, 0.000000e+00
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = fcmp ogt float %52, 1.000000e+00
  br i1 %61, label %62, label %63

62:                                               ; preds = %60
  br label %63

63:                                               ; preds = %57, %60, %62
  %64 = phi float [ 1.000000e+00, %62 ], [ %52, %60 ], [ 0.000000e+00, %57 ]
  tail call void @glRasterPos2f(float noundef %58, float noundef %64) #15
  tail call void @glClearColor(float noundef 0x3FB99999A0000000, float noundef 0x3FB99999A0000000, float noundef 0x3FB99999A0000000, float noundef 0.000000e+00) #15
  tail call void @glClear(i32 noundef 16384) #15
  %65 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 4
  %66 = load i8, ptr %65, align 8, !tbaa !122
  %67 = icmp eq i8 %66, 32
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  tail call void @glEnable(i32 noundef 3042) #15
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #15
  %69 = fadd float %40, %58
  %70 = fadd float %48, %64
  tail call void @fdrawcheckerboard(float noundef %58, float noundef %64, float noundef %69, float noundef %70) #15
  br label %71

71:                                               ; preds = %68, %63
  %72 = getelementptr inbounds %struct.PlayState, ptr %0, i64 0, i32 14
  %73 = load i8, ptr %72, align 1, !tbaa !50
  %74 = icmp eq i8 %73, 0
  %75 = select i1 %74, float 0.000000e+00, float %40
  %76 = fadd float %58, %75
  %77 = getelementptr inbounds %struct.PlayState, ptr %0, i64 0, i32 14, i64 1
  %78 = load i8, ptr %77, align 1, !tbaa !50
  %79 = icmp eq i8 %78, 0
  %80 = select i1 %79, float 0.000000e+00, float %48
  %81 = fadd float %64, %80
  tail call void @glRasterPos2f(float noundef %76, float noundef %81) #15
  %82 = load float, ptr %32, align 8, !tbaa !49
  %83 = load <2 x i8>, ptr %72, align 1, !tbaa !50
  %84 = uitofp <2 x i8> %83 to <2 x float>
  %85 = insertelement <2 x float> poison, float %82, i64 0
  %86 = shufflevector <2 x float> %85, <2 x float> poison, <2 x i32> zeroinitializer
  %87 = fmul <2 x float> %86, %84
  %88 = fcmp une <2 x float> %87, zeroinitializer
  %89 = extractelement <2 x i1> %88, i64 0
  %90 = select i1 %89, float -1.000000e+00, float 1.000000e+00
  %91 = extractelement <2 x i1> %88, i64 1
  %92 = select i1 %91, float -1.000000e+00, float 1.000000e+00
  tail call void @glPixelZoom(float noundef %90, float noundef %92) #15
  %93 = load i32, ptr %34, align 8, !tbaa !58
  %94 = load i32, ptr %41, align 4, !tbaa !62
  %95 = load ptr, ptr %19, align 8, !tbaa !120
  tail call void @glDrawPixels(i32 noundef %93, i32 noundef %94, i32 noundef 6408, i32 noundef 5121, ptr noundef %95) #15
  tail call void @glDisable(i32 noundef 3042) #15
  %96 = tail call fastcc i32 @pupdate_time() #12, !range !70
  %97 = icmp eq ptr %1, null
  br i1 %97, label %119, label %98

98:                                               ; preds = %71
  %99 = load i32, ptr @g_WS.2, align 8, !tbaa !97
  %100 = and i32 %99, 65539
  %101 = icmp ne i32 %100, 0
  %102 = icmp ne i32 %3, -1
  %103 = and i1 %102, %101
  br i1 %103, label %104, label %119

104:                                              ; preds = %98
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 1056, ptr nonnull %8) #13
  tail call void @cpack(i32 noundef -1) #15
  %105 = getelementptr inbounds %struct.PlayAnimPict, ptr %1, i64 0, i32 4
  %106 = load ptr, ptr %105, align 8, !tbaa !79
  %107 = sitofp i32 %4 to double
  %108 = load double, ptr @swaptime, align 8, !tbaa !53
  %109 = fdiv double %107, %108
  %110 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %8, i64 noundef 1056, ptr noundef nonnull @.str.23, ptr noundef %106, double noundef %109) #15
  call fastcc void @playanim_window_get_size(ptr noundef nonnull %6, ptr noundef nonnull %7) #12
  %111 = load i32, ptr %6, align 4, !tbaa !63
  %112 = sitofp i32 %111 to float
  %113 = fdiv float 1.000000e+00, %112
  %114 = load i32, ptr %7, align 4, !tbaa !63
  %115 = sitofp i32 %114 to float
  %116 = fdiv float 1.000000e+00, %115
  call void @BLF_enable(i32 noundef %3, i32 noundef 32) #15
  call void @BLF_aspect(i32 noundef %3, float noundef %113, float noundef %116, float noundef 1.000000e+00) #15
  %117 = fmul float %113, 1.000000e+01
  %118 = fmul float %116, 1.000000e+01
  call void @BLF_position(i32 noundef %3, float noundef %117, float noundef %118, float noundef 0.000000e+00) #15
  call void @BLF_draw(i32 noundef %3, ptr noundef nonnull %8, i64 noundef 1056) #15
  call void @llvm.lifetime.end.p0(i64 1056, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  br label %119

119:                                              ; preds = %104, %98, %71
  %120 = load ptr, ptr @g_WS.1, align 8, !tbaa !68
  %121 = call i32 @GHOST_SwapWindowBuffers(ptr noundef %120) #15
  br label %122

122:                                              ; preds = %22, %26, %119, %15
  ret void
}

; Function Attrs: optsize
declare i32 @GHOST_ProcessEvents(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @GHOST_DispatchEvents(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @playanim_step(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #7 !PGOFuncName !123 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %14

4:                                                ; preds = %2
  %5 = icmp eq ptr %0, null
  br i1 %5, label %27, label %6

6:                                                ; preds = %4, %6
  %7 = phi i32 [ %9, %6 ], [ %1, %4 ]
  %8 = phi ptr [ %10, %6 ], [ %0, %4 ]
  %9 = add nsw i32 %7, -1
  %10 = load ptr, ptr %8, align 8, !tbaa !82
  %11 = icmp ne i32 %9, 0
  %12 = icmp ne ptr %10, null
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %6, label %27, !llvm.loop !124

14:                                               ; preds = %2
  %15 = icmp ne i32 %1, 0
  %16 = icmp ne ptr %0, null
  %17 = and i1 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %14, %18
  %19 = phi i32 [ %21, %18 ], [ %1, %14 ]
  %20 = phi ptr [ %23, %18 ], [ %0, %14 ]
  %21 = add nsw i32 %19, 1
  %22 = getelementptr inbounds %struct.PlayAnimPict, ptr %20, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !83
  %24 = icmp ne i32 %21, 0
  %25 = icmp ne ptr %23, null
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %18, label %27, !llvm.loop !125

27:                                               ; preds = %18, %6, %4, %14
  %28 = phi ptr [ %0, %14 ], [ null, %4 ], [ %10, %6 ], [ %23, %18 ]
  ret ptr %28
}

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BLF_exit() local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @GHOST_DisposeWindow(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @IMB_exit() local_unnamed_addr #5

; Function Attrs: optsize
declare void @BKE_images_exit() local_unnamed_addr #5

; Function Attrs: optsize
declare void @DAG_exit() local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @GHOST_GetEventType(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @playanim_event_qual_update() unnamed_addr #0 !PGOFuncName !126 {
  %1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #13
  %2 = load ptr, ptr @g_WS.0, align 8, !tbaa !56
  %3 = call i32 @GHOST_GetModifierKeyState(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %1) #15
  %4 = load i32, ptr %1, align 4, !tbaa !63
  %5 = icmp ne i32 %4, 0
  %6 = load i32, ptr @g_WS.2, align 8
  %7 = and i32 %6, -2
  %8 = zext i1 %5 to i32
  %9 = or disjoint i32 %7, %8
  store i32 %9, ptr @g_WS.2, align 8, !tbaa !97
  %10 = load ptr, ptr @g_WS.0, align 8, !tbaa !56
  %11 = call i32 @GHOST_GetModifierKeyState(ptr noundef %10, i32 noundef 1, ptr noundef nonnull %1) #15
  %12 = load i32, ptr %1, align 4, !tbaa !63
  %13 = icmp eq i32 %12, 0
  %14 = load i32, ptr @g_WS.2, align 8
  %15 = and i32 %14, -3
  %16 = select i1 %13, i32 0, i32 2
  %17 = or disjoint i32 %15, %16
  store i32 %17, ptr @g_WS.2, align 8, !tbaa !97
  %18 = load ptr, ptr @g_WS.0, align 8, !tbaa !56
  %19 = call i32 @GHOST_GetModifierKeyState(ptr noundef %18, i32 noundef 4, ptr noundef nonnull %1) #15
  %20 = load i32, ptr %1, align 4, !tbaa !63
  %21 = icmp eq i32 %20, 0
  %22 = load i32, ptr @g_WS.2, align 8
  %23 = and i32 %22, -17
  %24 = select i1 %21, i32 0, i32 16
  %25 = or disjoint i32 %23, %24
  store i32 %25, ptr @g_WS.2, align 8, !tbaa !97
  %26 = load ptr, ptr @g_WS.0, align 8, !tbaa !56
  %27 = call i32 @GHOST_GetModifierKeyState(ptr noundef %26, i32 noundef 5, ptr noundef nonnull %1) #15
  %28 = load i32, ptr %1, align 4, !tbaa !63
  %29 = icmp eq i32 %28, 0
  %30 = load i32, ptr @g_WS.2, align 8
  %31 = and i32 %30, -33
  %32 = select i1 %29, i32 0, i32 32
  %33 = or disjoint i32 %31, %32
  store i32 %33, ptr @g_WS.2, align 8, !tbaa !97
  %34 = load ptr, ptr @g_WS.0, align 8, !tbaa !56
  %35 = call i32 @GHOST_GetModifierKeyState(ptr noundef %34, i32 noundef 2, ptr noundef nonnull %1) #15
  %36 = load i32, ptr %1, align 4, !tbaa !63
  %37 = icmp eq i32 %36, 0
  %38 = load i32, ptr @g_WS.2, align 8
  %39 = and i32 %38, -5
  %40 = select i1 %37, i32 0, i32 4
  %41 = or disjoint i32 %39, %40
  store i32 %41, ptr @g_WS.2, align 8, !tbaa !97
  %42 = load ptr, ptr @g_WS.0, align 8, !tbaa !56
  %43 = call i32 @GHOST_GetModifierKeyState(ptr noundef %42, i32 noundef 3, ptr noundef nonnull %1) #15
  %44 = load i32, ptr %1, align 4, !tbaa !63
  %45 = icmp eq i32 %44, 0
  %46 = load i32, ptr @g_WS.2, align 8
  %47 = and i32 %46, -9
  %48 = select i1 %45, i32 0, i32 8
  %49 = or disjoint i32 %47, %48
  store i32 %49, ptr @g_WS.2, align 8, !tbaa !97
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #13
  ret void
}

; Function Attrs: optsize
declare ptr @GHOST_GetEventData(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @playanim_window_zoom(ptr nocapture noundef %0, float noundef %1) unnamed_addr #0 !PGOFuncName !127 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  %5 = getelementptr inbounds %struct.PlayState, ptr %0, i64 0, i32 2
  %6 = load float, ptr %5, align 8, !tbaa !49
  %7 = fadd float %6, %1
  %8 = fcmp ogt float %7, 0.000000e+00
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store float %7, ptr %5, align 8, !tbaa !49
  br label %10

10:                                               ; preds = %9, %2
  call fastcc void @playanim_window_get_size(ptr noundef nonnull %3, ptr noundef nonnull %4) #12
  %11 = load float, ptr %5, align 8, !tbaa !49
  %12 = getelementptr inbounds %struct.PlayState, ptr %0, i64 0, i32 17
  %13 = load i32, ptr %12, align 8, !tbaa !64
  %14 = sitofp i32 %13 to float
  %15 = fmul float %11, %14
  %16 = fptosi float %15 to i32
  %17 = getelementptr inbounds %struct.PlayState, ptr %0, i64 0, i32 18
  %18 = load i32, ptr %17, align 4, !tbaa !65
  %19 = sitofp i32 %18 to float
  %20 = fmul float %11, %19
  %21 = fptosi float %20 to i32
  %22 = load ptr, ptr @g_WS.1, align 8, !tbaa !68
  %23 = tail call i32 @GHOST_SetClientSize(ptr noundef %22, i32 noundef %16, i32 noundef %21) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret void
}

; Function Attrs: optsize
declare i32 @GHOST_GetCursorPosition(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @GHOST_ScreenToClient(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @playanim_window_get_size(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !PGOFuncName !128 {
  %3 = load ptr, ptr @g_WS.1, align 8, !tbaa !68
  %4 = tail call ptr @GHOST_GetClientBounds(ptr noundef %3) #15
  %5 = tail call i32 @GHOST_GetWidthRectangle(ptr noundef %4) #15
  store i32 %5, ptr %0, align 4, !tbaa !63
  %6 = tail call i32 @GHOST_GetHeightRectangle(ptr noundef %4) #15
  store i32 %6, ptr %1, align 4, !tbaa !63
  tail call void @GHOST_DisposeRectangle(ptr noundef %4) #15
  ret void
}

; Function Attrs: optsize
declare i32 @GHOST_ActivateWindowDrawingContext(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @glViewport(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @glScissor(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @GHOST_GetModifierKeyState(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @GHOST_SetClientSize(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @GHOST_GetClientBounds(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @GHOST_GetWidthRectangle(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @GHOST_GetHeightRectangle(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @GHOST_DisposeRectangle(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @GHOST_CreateWindow(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: optsize
declare void @glMatrixMode(i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @glLoadIdentity() local_unnamed_addr #5

; Function Attrs: optsize
declare void @glOrtho(double noundef, double noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @build_pict_list_ex(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !129 {
  %5 = alloca [1024 x i8], align 16
  %6 = alloca [1056 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 1056, ptr nonnull %6) #13
  %7 = tail call zeroext i8 @IMB_isanim(ptr noundef nonnull @wm_main_playanim_intern.filepath) #15
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %34, label %9

9:                                                ; preds = %4
  %10 = tail call ptr @IMB_open_anim(ptr noundef nonnull @wm_main_playanim_intern.filepath, i32 noundef 1, i32 noundef 0, ptr noundef null) #15
  %11 = icmp eq ptr %10, null
  br i1 %11, label %32, label %12

12:                                               ; preds = %9
  %13 = tail call ptr @IMB_anim_absolute(ptr noundef nonnull %10, i32 noundef 0, i32 noundef 0, i32 noundef 0) #15
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call fastcc void @playanim_toscreen(ptr noundef %0, ptr noundef null, ptr noundef nonnull %13, i32 noundef %3, i32 noundef %2) #12
  tail call void @IMB_freeImBuf(ptr noundef nonnull %13) #15
  br label %16

16:                                               ; preds = %15, %12
  %17 = tail call i32 @IMB_anim_get_duration(ptr noundef nonnull %10, i32 noundef 0) #15
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %126

19:                                               ; preds = %16, %19
  %20 = phi i32 [ %26, %19 ], [ 0, %16 ]
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %22 = call ptr %21(i64 noundef 64, ptr noundef nonnull @.str.13) #15
  %23 = getelementptr inbounds %struct.PlayAnimPict, ptr %22, i64 0, i32 6
  store ptr %10, ptr %23, align 8, !tbaa !74
  %24 = getelementptr inbounds %struct.PlayAnimPict, ptr %22, i64 0, i32 7
  store i32 %20, ptr %24, align 8, !tbaa !75
  %25 = getelementptr inbounds %struct.PlayAnimPict, ptr %22, i64 0, i32 8
  store i32 1, ptr %25, align 4, !tbaa !78
  %26 = add nuw nsw i32 %20, 1
  %27 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %6, i64 noundef 1056, ptr noundef nonnull @.str.14, ptr noundef nonnull @wm_main_playanim_intern.filepath, i32 noundef %26) #15
  %28 = call noalias ptr @strdup(ptr noundef nonnull %6) #15
  %29 = getelementptr inbounds %struct.PlayAnimPict, ptr %22, i64 0, i32 4
  store ptr %28, ptr %29, align 8, !tbaa !79
  call void @BLI_addtail(ptr noundef nonnull @picsbase, ptr noundef %22) #15
  %30 = call i32 @IMB_anim_get_duration(ptr noundef nonnull %10, i32 noundef 0) #15
  %31 = icmp slt i32 %26, %30
  br i1 %31, label %19, label %126, !llvm.loop !130

32:                                               ; preds = %9
  %33 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, ptr noundef nonnull @wm_main_playanim_intern.filepath) #12
  br label %126

34:                                               ; preds = %4
  %35 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef nonnull @wm_main_playanim_intern.filepath, i64 noundef 1024) #15
  %36 = call fastcc i32 @pupdate_time() #12, !range !70
  store double 1.000000e+00, ptr @ptottime, align 8, !tbaa !53
  %37 = call zeroext i8 @IMB_ispic(ptr noundef nonnull %5) #15
  %38 = icmp eq i8 %37, 0
  %39 = icmp eq i32 %1, 0
  %40 = or i1 %38, %39
  br i1 %40, label %126, label %41

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.PlayState, ptr %0, i64 0, i32 13
  br label %43

43:                                               ; preds = %41, %120
  %44 = phi i32 [ %1, %41 ], [ %121, %120 ]
  %45 = call i32 @BLI_open(ptr noundef nonnull %5, i32 noundef 0, i32 noundef 0) #15
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %126, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %49 = call ptr %48(i64 noundef 64, ptr noundef nonnull @.str.16) #15
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, ptr noundef nonnull %5) #12
  %53 = call i32 @close(i32 noundef %45) #15
  br label %126

54:                                               ; preds = %47
  %55 = call i64 @BLI_file_descriptor_size(i32 noundef %45) #15
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = call i32 @close(i32 noundef %45) #15
  %59 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %59(ptr noundef nonnull %49) #15
  br label %126

60:                                               ; preds = %54
  %61 = trunc i64 %55 to i32
  %62 = getelementptr inbounds %struct.PlayAnimPict, ptr %49, i64 0, i32 3
  store i32 %61, ptr %62, align 8, !tbaa !77
  %63 = getelementptr inbounds %struct.PlayAnimPict, ptr %49, i64 0, i32 8
  store i32 1, ptr %63, align 4, !tbaa !78
  %64 = load i1, ptr @fromdisk, align 1
  br i1 %64, label %81, label %65

65:                                               ; preds = %60
  %66 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %67 = call ptr %66(i64 noundef %55, ptr noundef nonnull @.str.18) #15
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = call i32 @puts(ptr nonnull dereferenceable(1) @str.28)
  %71 = call i32 @close(i32 noundef %45) #15
  %72 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %72(ptr noundef nonnull %49) #15
  br label %126

73:                                               ; preds = %65
  %74 = call i64 @read(i32 noundef %45, ptr noundef nonnull %67, i64 noundef %55) #15
  %75 = icmp eq i64 %74, %55
  br i1 %75, label %81, label %76

76:                                               ; preds = %73
  %77 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, ptr noundef nonnull %5) #12
  %78 = call i32 @close(i32 noundef %45) #15
  %79 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %79(ptr noundef nonnull %49) #15
  %80 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %80(ptr noundef nonnull %67) #15
  br label %126

81:                                               ; preds = %60, %73
  %82 = phi ptr [ %67, %73 ], [ null, %60 ]
  %83 = getelementptr inbounds %struct.PlayAnimPict, ptr %49, i64 0, i32 2
  store ptr %82, ptr %83, align 8, !tbaa !76
  %84 = call noalias ptr @strdup(ptr noundef nonnull %5) #15
  %85 = getelementptr inbounds %struct.PlayAnimPict, ptr %49, i64 0, i32 4
  store ptr %84, ptr %85, align 8, !tbaa !79
  %86 = call i32 @close(i32 noundef %45) #15
  call void @BLI_addtail(ptr noundef nonnull @picsbase, ptr noundef nonnull %49) #15
  %87 = call fastcc i32 @pupdate_time() #12, !range !70
  %88 = load double, ptr @ptottime, align 8, !tbaa !53
  %89 = fcmp ogt double %88, 1.000000e+00
  br i1 %89, label %90, label %109

90:                                               ; preds = %81
  %91 = load ptr, ptr %83, align 8, !tbaa !76
  %92 = icmp eq ptr %91, null
  br i1 %92, label %99, label %93

93:                                               ; preds = %90
  %94 = load i32, ptr %62, align 8, !tbaa !77
  %95 = sext i32 %94 to i64
  %96 = load i32, ptr %63, align 4, !tbaa !78
  %97 = load ptr, ptr %85, align 8, !tbaa !79
  %98 = call ptr @IMB_ibImageFromMemory(ptr noundef nonnull %91, i64 noundef %95, i32 noundef %96, ptr noundef null, ptr noundef %97) #15
  br label %103

99:                                               ; preds = %90
  %100 = load ptr, ptr %85, align 8, !tbaa !79
  %101 = load i32, ptr %63, align 4, !tbaa !78
  %102 = call ptr @IMB_loadiffname(ptr noundef %100, i32 noundef %101, ptr noundef null) #15
  br label %103

103:                                              ; preds = %99, %93
  %104 = phi ptr [ %98, %93 ], [ %102, %99 ]
  %105 = icmp eq ptr %104, null
  br i1 %105, label %107, label %106

106:                                              ; preds = %103
  call fastcc void @playanim_toscreen(ptr noundef %0, ptr noundef nonnull %49, ptr noundef nonnull %104, i32 noundef %3, i32 noundef %2) #12
  call void @IMB_freeImBuf(ptr noundef nonnull %104) #15
  br label %107

107:                                              ; preds = %106, %103
  %108 = call fastcc i32 @pupdate_time() #12, !range !70
  store double 0.000000e+00, ptr @ptottime, align 8, !tbaa !53
  br label %109

109:                                              ; preds = %107, %81
  call void @BLI_newname(ptr noundef nonnull %5, i32 noundef %2) #15
  br label %110

110:                                              ; preds = %115, %109
  %111 = load ptr, ptr @g_WS.0, align 8, !tbaa !56
  %112 = call i32 @GHOST_ProcessEvents(ptr noundef %111, i32 noundef 0) #15
  %113 = and i32 %112, 255
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %120, label %115

115:                                              ; preds = %110
  %116 = load ptr, ptr @g_WS.0, align 8, !tbaa !56
  %117 = call i32 @GHOST_DispatchEvents(ptr noundef %116) #15
  %118 = load i8, ptr %42, align 8, !tbaa !93
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %126, label %110, !llvm.loop !131

120:                                              ; preds = %110
  %121 = add nsw i32 %44, -1
  %122 = call zeroext i8 @IMB_ispic(ptr noundef nonnull %5) #15
  %123 = icmp eq i8 %122, 0
  %124 = icmp eq i32 %121, 0
  %125 = select i1 %123, i1 true, i1 %124
  br i1 %125, label %126, label %43, !llvm.loop !132

126:                                              ; preds = %19, %120, %43, %115, %16, %34, %76, %69, %57, %51, %32
  call void @llvm.lifetime.end.p0(i64 1056, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #13
  ret void
}

; Function Attrs: optsize
declare i32 @IMB_anim_get_duration(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias ptr @strdup(ptr nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @BLI_open(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @close(i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i64 @BLI_file_descriptor_size(i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree optsize
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @BLI_newname(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare double @PIL_check_seconds_timer() local_unnamed_addr #5

; Function Attrs: optsize
declare void @IMB_rect_from_float(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @imb_freerectfloatImBuf(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @glRasterPos2f(float noundef, float noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @fdrawcheckerboard(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @glPixelZoom(float noundef, float noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @glDrawPixels(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @cpack(i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BLF_enable(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BLF_aspect(i32 noundef, float noundef, float noundef, float noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BLF_position(i32 noundef, float noundef, float noundef, float noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BLF_draw(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { optsize }
attributes #13 = { nounwind }
attributes #14 = { nounwind optsize willreturn memory(read) }
attributes #15 = { nounwind optsize }
attributes #16 = { noreturn nounwind optsize }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"wm_playanim.c:wm_main_playanim_intern"}
!41 = !{!42, !36, i64 23}
!42 = !{!"PlayState", !43, i64 0, !43, i64 4, !44, i64 8, !45, i64 12, !45, i64 14, !36, i64 16, !36, i64 17, !36, i64 18, !36, i64 19, !36, i64 20, !36, i64 21, !36, i64 22, !36, i64 23, !36, i64 24, !36, i64 25, !43, i64 28, !35, i64 32, !43, i64 40, !43, i64 44, !43, i64 48, !35, i64 56, !36, i64 64}
!43 = !{!"int", !36, i64 0}
!44 = !{!"float", !36, i64 0}
!45 = !{!"short", !36, i64 0}
!46 = !{!42, !45, i64 12}
!47 = !{!42, !45, i64 14}
!48 = !{!42, !35, i64 32}
!49 = !{!42, !44, i64 8}
!50 = !{!36, !36, i64 0}
!51 = !{!42, !43, i64 28}
!52 = !{!42, !43, i64 48}
!53 = !{!54, !54, i64 0}
!54 = !{!"double", !36, i64 0}
!55 = distinct !{!55, !39}
!56 = !{!57, !35, i64 0}
!57 = !{!"WindowStateGlobal", !35, i64 0, !35, i64 8, !43, i64 16}
!58 = !{!59, !43, i64 16}
!59 = !{!"ImBuf", !35, i64 0, !35, i64 8, !43, i64 16, !43, i64 20, !36, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !35, i64 40, !35, i64 48, !36, i64 56, !43, i64 72, !43, i64 76, !43, i64 80, !43, i64 84, !35, i64 88, !35, i64 96, !35, i64 104, !44, i64 112, !36, i64 120, !43, i64 280, !43, i64 284, !43, i64 288, !43, i64 292, !35, i64 296, !35, i64 304, !43, i64 312, !36, i64 316, !36, i64 1340, !35, i64 2368, !43, i64 2376, !35, i64 2384, !43, i64 2392, !43, i64 2396, !35, i64 2400, !35, i64 2408, !35, i64 2416, !35, i64 2424, !43, i64 2432, !60, i64 2436, !61, i64 2456}
!60 = !{!"rcti", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!61 = !{!"DDSData", !43, i64 0, !43, i64 4, !35, i64 8, !43, i64 16}
!62 = !{!59, !43, i64 20}
!63 = !{!43, !43, i64 0}
!64 = !{!42, !43, i64 40}
!65 = !{!42, !43, i64 44}
!66 = !{!42, !43, i64 0}
!67 = !{!42, !43, i64 4}
!68 = !{!57, !35, i64 8}
!69 = distinct !{!69, !39}
!70 = !{i32 0, i32 2}
!71 = !{!42, !36, i64 18}
!72 = !{!73, !35, i64 40}
!73 = !{!"PlayAnimPict", !35, i64 0, !35, i64 8, !35, i64 16, !43, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !43, i64 56, !43, i64 60}
!74 = !{!73, !35, i64 48}
!75 = !{!73, !43, i64 56}
!76 = !{!73, !35, i64 16}
!77 = !{!73, !43, i64 24}
!78 = !{!73, !43, i64 60}
!79 = !{!73, !35, i64 32}
!80 = distinct !{!80, !39}
!81 = !{!42, !36, i64 16}
!82 = !{!73, !35, i64 0}
!83 = !{!73, !35, i64 8}
!84 = !{!42, !36, i64 21}
!85 = distinct !{!85, !39}
!86 = distinct !{!86, !39}
!87 = !{!42, !36, i64 20}
!88 = !{!42, !36, i64 22}
!89 = distinct !{!89, !39}
!90 = distinct !{!90, !39}
!91 = distinct !{!91, !39}
!92 = !{!"wm_playanim.c:ghost_event_proc"}
!93 = !{!42, !36, i64 24}
!94 = !{!95, !43, i64 0}
!95 = !{!"", !43, i64 0, !36, i64 4, !36, i64 5}
!96 = !{!42, !36, i64 19}
!97 = !{!57, !43, i64 16}
!98 = !{!99, !35, i64 0}
!99 = !{!"ListBase", !35, i64 0, !35, i64 8}
!100 = !{!99, !35, i64 8}
!101 = !{!42, !35, i64 56}
!102 = !{!103, !43, i64 0}
!103 = !{!"", !43, i64 0}
!104 = !{!105, !43, i64 0}
!105 = !{!"", !43, i64 0, !43, i64 4}
!106 = !{!105, !43, i64 4}
!107 = distinct !{!107, !39}
!108 = distinct !{!108, !39}
!109 = !{!110, !43, i64 8}
!110 = !{!"", !43, i64 0, !43, i64 4, !43, i64 8, !35, i64 16}
!111 = !{!110, !35, i64 16}
!112 = !{!113, !43, i64 0}
!113 = !{!"", !43, i64 0, !35, i64 8}
!114 = !{!113, !35, i64 8}
!115 = !{!"wm_playanim.c:playanim_window_open"}
!116 = !{!"wm_playanim.c:playanim_gl_matrix"}
!117 = !{!"wm_playanim.c:build_pict_list"}
!118 = !{!"wm_playanim.c:pupdate_time"}
!119 = !{!"wm_playanim.c:playanim_toscreen"}
!120 = !{!59, !35, i64 40}
!121 = !{!59, !35, i64 48}
!122 = !{!59, !36, i64 24}
!123 = !{!"wm_playanim.c:playanim_step"}
!124 = distinct !{!124, !39}
!125 = distinct !{!125, !39}
!126 = !{!"wm_playanim.c:playanim_event_qual_update"}
!127 = !{!"wm_playanim.c:playanim_window_zoom"}
!128 = !{!"wm_playanim.c:playanim_window_get_size"}
!129 = !{!"wm_playanim.c:build_pict_list_ex"}
!130 = distinct !{!130, !39}
!131 = distinct !{!131, !39}
!132 = distinct !{!132, !39}
