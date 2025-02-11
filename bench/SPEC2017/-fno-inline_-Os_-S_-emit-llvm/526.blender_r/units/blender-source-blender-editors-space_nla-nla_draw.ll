; ModuleID = 'blender/source/blender/editors/space_nla/nla_draw.c'
source_filename = "blender/source/blender/editors/space_nla/nla_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.AnimData = type { ptr, ptr, ptr, %struct.ListBase, ptr, %struct.ListBase, %struct.ListBase, i32, i32, i16, i16, float }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.bAnimContext = type { ptr, i16, i16, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.SpaceNla = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], i16, i16, i32, ptr, %struct.View2D }
%struct.bAnimListElem = type { ptr, ptr, ptr, i32, i32, i32, i16, i16, ptr, ptr, ptr }
%struct.NlaTrack = type { ptr, ptr, %struct.ListBase, i32, i32, [64 x i8] }
%struct.NlaStrip = type { ptr, ptr, %struct.ListBase, ptr, ptr, %struct.ListBase, %struct.ListBase, [64 x i8], float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, ptr, i32, i32 }
%struct.DLRBT_Tree = type { ptr, ptr, ptr }
%struct.ActKeyColumn = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i16, float, i16, i16 }

@U = external local_unnamed_addr global %struct.UserDef, align 8
@__func__.draw_nla_channel_list = private unnamed_addr constant [22 x i8] c"draw_nla_channel_list\00", align 1
@.str = private unnamed_addr constant [10 x i8] c"influence\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"%d) Temp-Meta\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%.1f\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @nla_action_get_color(ptr noundef readonly %0, ptr noundef readnone %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %23, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !5
  %8 = and i32 %7, 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  tail call void @UI_GetThemeColor4fv(i32 noundef 167, ptr noundef %2) #5
  br label %14

11:                                               ; preds = %5
  %12 = icmp eq ptr %1, null
  %13 = select i1 %12, i32 166, i32 165
  tail call void @UI_GetThemeColor4fv(i32 noundef %13, ptr noundef %2) #5
  br i1 %4, label %26, label %14

14:                                               ; preds = %10, %11
  %15 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 7
  %16 = load i32, ptr %15, align 8, !tbaa !5
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds float, ptr %2, i64 3
  %21 = load float, ptr %20, align 4, !tbaa !14
  %22 = fmul float %21, 0x3FC3333340000000
  store float %22, ptr %20, align 4, !tbaa !14
  br label %26

23:                                               ; preds = %3
  %24 = icmp eq ptr %1, null
  %25 = select i1 %24, i32 166, i32 165
  tail call void @UI_GetThemeColor4fv(i32 noundef %25, ptr noundef %2) #5
  br label %26

26:                                               ; preds = %23, %19, %14, %11
  ret void
}

; Function Attrs: optsize
declare void @UI_GetThemeColor4fv(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @draw_nla_main_data(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %6 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2
  %7 = load ptr, ptr %0, align 8, !tbaa !15
  %8 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  %9 = load i16, ptr %8, align 8, !tbaa !17
  %10 = sext i16 %9 to i32
  %11 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef 11, ptr noundef %7, i32 noundef %10) #5
  %12 = uitofp i64 %11 to float
  %13 = icmp eq ptr %1, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !18
  %16 = sitofp i16 %15 to float
  %17 = fmul float %16, 0x3FF3333340000000
  %18 = call float @llvm.fmuladd.f32(float %16, float 0x3FB99999A0000000, float %17)
  br label %41

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.SpaceNla, ptr %1, i64 0, i32 7
  %21 = load i16, ptr %20, align 2, !tbaa !22
  %22 = and i16 %21, 32
  %23 = icmp eq i16 %22, 0
  %24 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !18
  %25 = sitofp i16 %24 to float
  br i1 %23, label %29, label %26

26:                                               ; preds = %19
  %27 = fmul float %25, 0x3FE99999A0000000
  %28 = call float @llvm.fmuladd.f32(float %25, float 0x3FB99999A0000000, float %27)
  br label %38

29:                                               ; preds = %19
  %30 = fmul float %25, 0x3FF3333340000000
  %31 = call float @llvm.fmuladd.f32(float %25, float 0x3FB99999A0000000, float %30)
  %32 = getelementptr inbounds %struct.SpaceNla, ptr %1, i64 0, i32 7
  %33 = load i16, ptr %32, align 2, !tbaa !22
  %34 = and i16 %33, 32
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = fmul float %25, 0x3FF3333340000000
  br label %41

38:                                               ; preds = %26, %29
  %39 = phi float [ %28, %26 ], [ %31, %29 ]
  %40 = fmul float %25, 0x3FE99999A0000000
  br label %41

41:                                               ; preds = %36, %14, %38
  %42 = phi i16 [ %24, %38 ], [ %24, %36 ], [ %15, %14 ]
  %43 = phi float [ %39, %38 ], [ %31, %36 ], [ %18, %14 ]
  %44 = phi float [ %25, %38 ], [ %25, %36 ], [ %16, %14 ]
  %45 = phi float [ %40, %38 ], [ %37, %36 ], [ %17, %14 ]
  %46 = fmul float %45, 2.000000e+00
  %47 = call float @llvm.fmuladd.f32(float %12, float %43, float %46)
  %48 = fptosi float %47 to i32
  %49 = sub nsw i32 0, %48
  %50 = sitofp i32 %49 to float
  %51 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 0, i32 2
  store float %50, ptr %51, align 8, !tbaa !27
  br i1 %13, label %57, label %52

52:                                               ; preds = %41
  %53 = getelementptr inbounds %struct.SpaceNla, ptr %1, i64 0, i32 7
  %54 = load i16, ptr %53, align 2, !tbaa !22
  %55 = and i16 %54, 32
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52, %41
  br label %58

58:                                               ; preds = %52, %57
  %59 = phi float [ 0x3FF3333340000000, %57 ], [ 0x3FE99999A0000000, %52 ]
  %60 = load ptr, ptr %4, align 8, !tbaa !28
  %61 = icmp eq ptr %60, null
  br i1 %61, label %202, label %62

62:                                               ; preds = %58
  %63 = fneg float %44
  %64 = fmul float %59, %63
  %65 = getelementptr inbounds %struct.SpaceNla, ptr %1, i64 0, i32 7
  %66 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1
  %67 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 2
  %68 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 3
  %69 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 1
  br label %70

70:                                               ; preds = %62, %194
  %71 = phi i16 [ %42, %62 ], [ %196, %194 ]
  %72 = phi ptr [ %60, %62 ], [ %200, %194 ]
  %73 = phi float [ %64, %62 ], [ %199, %194 ]
  br i1 %13, label %74, label %79

74:                                               ; preds = %70
  %75 = sitofp i16 %71 to float
  %76 = fmul float %75, 0x3FE3333340000000
  %77 = insertelement <2 x float> poison, float %76, i64 0
  %78 = shufflevector <2 x float> %77, <2 x float> poison, <2 x i32> zeroinitializer
  br label %90

79:                                               ; preds = %70
  %80 = load i16, ptr %65, align 2, !tbaa !22
  %81 = and i16 %80, 32
  %82 = icmp eq i16 %81, 0
  %83 = insertelement <2 x i16> poison, i16 %71, i64 0
  %84 = shufflevector <2 x i16> %83, <2 x i16> poison, <2 x i32> zeroinitializer
  %85 = sitofp <2 x i16> %84 to <2 x float>
  br i1 %82, label %86, label %88

86:                                               ; preds = %79
  %87 = fmul <2 x float> %85, <float 0x3FE3333340000000, float 0x3FE3333340000000>
  br label %90

88:                                               ; preds = %79
  %89 = fmul <2 x float> %85, <float 0x3FD99999A0000000, float 0x3FD99999A0000000>
  br label %90

90:                                               ; preds = %74, %86, %88
  %91 = phi <2 x float> [ %89, %88 ], [ %87, %86 ], [ %78, %74 ]
  %92 = extractelement <2 x float> %91, i64 0
  %93 = fsub float %73, %92
  %94 = extractelement <2 x float> %91, i64 1
  %95 = fadd float %73, %94
  %96 = load float, ptr %67, align 8, !tbaa !29
  %97 = load float, ptr %68, align 4, !tbaa !30
  %98 = fcmp olt float %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %90
  %100 = fcmp olt float %96, %93
  %101 = fcmp olt float %93, %97
  %102 = and i1 %100, %101
  br i1 %102, label %115, label %107

103:                                              ; preds = %90
  %104 = fcmp olt float %97, %93
  %105 = fcmp olt float %93, %96
  %106 = and i1 %105, %104
  br i1 %106, label %115, label %111

107:                                              ; preds = %99
  %108 = fcmp olt float %96, %95
  %109 = fcmp olt float %95, %97
  %110 = and i1 %108, %109
  br i1 %110, label %115, label %179

111:                                              ; preds = %103
  %112 = fcmp olt float %97, %95
  %113 = fcmp olt float %95, %96
  %114 = and i1 %113, %112
  br i1 %114, label %115, label %179

115:                                              ; preds = %111, %107, %103, %99
  %116 = getelementptr inbounds %struct.bAnimListElem, ptr %72, i64 0, i32 3
  %117 = load i32, ptr %116, align 8, !tbaa !31
  switch i32 %117, label %179 [
    i32 30, label %118
    i32 31, label %143
  ]

118:                                              ; preds = %115
  %119 = getelementptr inbounds %struct.bAnimListElem, ptr %72, i64 0, i32 10
  %120 = load ptr, ptr %119, align 8, !tbaa !33
  %121 = getelementptr inbounds %struct.bAnimListElem, ptr %72, i64 0, i32 2
  %122 = load ptr, ptr %121, align 8, !tbaa !34
  %123 = getelementptr inbounds %struct.NlaTrack, ptr %122, i64 0, i32 2
  %124 = load ptr, ptr %123, align 8, !tbaa !28
  %125 = icmp eq ptr %124, null
  br i1 %125, label %179, label %126

126:                                              ; preds = %118, %139
  %127 = phi ptr [ %141, %139 ], [ %124, %118 ]
  %128 = phi i32 [ %140, %139 ], [ 1, %118 ]
  %129 = load float, ptr %66, align 8, !tbaa !35
  %130 = load float, ptr %69, align 4, !tbaa !36
  %131 = call zeroext i8 @BKE_nlastrip_within_bounds(ptr noundef nonnull %127, float noundef %129, float noundef %130) #5
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %139, label %133

133:                                              ; preds = %126
  call fastcc void @nla_draw_strip(ptr noundef %1, ptr noundef %120, ptr noundef %122, ptr noundef nonnull %127, ptr noundef nonnull %6, float noundef %93, float noundef %95) #7
  call fastcc void @nla_draw_strip_text(ptr noundef %120, ptr noundef %122, ptr noundef nonnull %127, i32 noundef %128, ptr noundef nonnull %6, float noundef %93, float noundef %95) #7
  %134 = getelementptr inbounds %struct.NlaStrip, ptr %127, i64 0, i32 23
  %135 = load i32, ptr %134, align 8, !tbaa !37
  %136 = and i32 %135, 1073741824
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %133
  call fastcc void @nla_draw_strip_frames_text(ptr noundef nonnull %127, ptr noundef nonnull %6, float noundef %95) #7
  br label %139

139:                                              ; preds = %126, %138, %133
  %140 = add nuw nsw i32 %128, 1
  %141 = load ptr, ptr %127, align 8, !tbaa !28
  %142 = icmp eq ptr %141, null
  br i1 %142, label %179, label %126, !llvm.loop !39

143:                                              ; preds = %115
  %144 = getelementptr inbounds %struct.bAnimListElem, ptr %72, i64 0, i32 10
  %145 = load ptr, ptr %144, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #5
  call void @glEnable(i32 noundef 3042) #5
  %146 = getelementptr inbounds %struct.bAnimListElem, ptr %72, i64 0, i32 2
  %147 = load ptr, ptr %146, align 8, !tbaa !34
  call void @nla_action_get_color(ptr noundef %145, ptr noundef %147, ptr noundef nonnull %5) #7
  call void @glColor4fv(ptr noundef nonnull %5) #5
  %148 = load float, ptr %66, align 8, !tbaa !35
  %149 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !18
  %150 = sitofp i16 %149 to float
  %151 = call float @llvm.fmuladd.f32(float %150, float 0x3FB99999A0000000, float %93)
  %152 = load float, ptr %69, align 4, !tbaa !36
  %153 = call float @llvm.fmuladd.f32(float %150, float 0xBFB99999A0000000, float %95)
  call void @glRectf(float noundef %148, float noundef %151, float noundef %152, float noundef %153) #5
  %154 = load ptr, ptr %146, align 8, !tbaa !34
  %155 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !18
  %156 = sitofp i16 %155 to float
  %157 = call float @llvm.fmuladd.f32(float %156, float 0x3FB99999A0000000, float %93)
  %158 = call float @llvm.fmuladd.f32(float %156, float 0xBFB99999A0000000, float %95)
  call fastcc void @nla_action_draw_keyframes(ptr noundef %145, ptr noundef %154, ptr noundef nonnull %6, float noundef %73, float noundef %157, float noundef %158) #7
  call void @glLineWidth(float noundef 2.000000e+00) #5
  call void @glColor4f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 0x3FD3333340000000) #5
  %159 = load float, ptr %66, align 8, !tbaa !35
  %160 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !18
  %161 = sitofp i16 %160 to float
  %162 = call float @llvm.fmuladd.f32(float %161, float 0x3FB99999A0000000, float %93)
  %163 = load float, ptr %69, align 4, !tbaa !36
  call void @fdrawline(float noundef %159, float noundef %162, float noundef %163, float noundef %162) #5
  %164 = load float, ptr %66, align 8, !tbaa !35
  %165 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !18
  %166 = sitofp i16 %165 to float
  %167 = call float @llvm.fmuladd.f32(float %166, float 0xBFB99999A0000000, float %95)
  %168 = load float, ptr %69, align 4, !tbaa !36
  call void @fdrawline(float noundef %164, float noundef %167, float noundef %168, float noundef %167) #5
  call void @glLineWidth(float noundef 1.000000e+00) #5
  call void @glColor3f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #5
  %169 = load float, ptr %66, align 8, !tbaa !35
  %170 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !18
  %171 = sitofp i16 %170 to float
  %172 = call float @llvm.fmuladd.f32(float %171, float 0x3FB99999A0000000, float %93)
  %173 = load float, ptr %69, align 4, !tbaa !36
  call void @fdrawline(float noundef %169, float noundef %172, float noundef %173, float noundef %172) #5
  %174 = load float, ptr %66, align 8, !tbaa !35
  %175 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !18
  %176 = sitofp i16 %175 to float
  %177 = call float @llvm.fmuladd.f32(float %176, float 0xBFB99999A0000000, float %95)
  %178 = load float, ptr %69, align 4, !tbaa !36
  call void @fdrawline(float noundef %174, float noundef %177, float noundef %178, float noundef %177) #5
  call void @glDisable(i32 noundef 3042) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  br label %179

179:                                              ; preds = %139, %118, %143, %115, %111, %107
  br i1 %13, label %180, label %182

180:                                              ; preds = %179
  %181 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !18
  br label %190

182:                                              ; preds = %179
  %183 = load i16, ptr %65, align 2, !tbaa !22
  %184 = and i16 %183, 32
  %185 = icmp eq i16 %184, 0
  %186 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !18
  br i1 %185, label %190, label %187

187:                                              ; preds = %182
  %188 = sitofp i16 %186 to float
  %189 = fmul float %188, 0x3FE99999A0000000
  br label %194

190:                                              ; preds = %180, %182
  %191 = phi i16 [ %181, %180 ], [ %186, %182 ]
  %192 = sitofp i16 %191 to float
  %193 = fmul float %192, 0x3FF3333340000000
  br label %194

194:                                              ; preds = %190, %187
  %195 = phi float [ %192, %190 ], [ %188, %187 ]
  %196 = phi i16 [ %191, %190 ], [ %186, %187 ]
  %197 = phi float [ %193, %190 ], [ %189, %187 ]
  %198 = call float @llvm.fmuladd.f32(float %195, float 0x3FB99999A0000000, float %197)
  %199 = fsub float %73, %198
  %200 = load ptr, ptr %72, align 8, !tbaa !28
  %201 = icmp eq ptr %200, null
  br i1 %201, label %202, label %70, !llvm.loop !41

202:                                              ; preds = %194, %58
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: optsize
declare i64 @ANIM_animdata_filter(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: optsize
declare zeroext i8 @BKE_nlastrip_within_bounds(ptr noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @nla_draw_strip(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr nocapture noundef readonly %4, float noundef %5, float noundef %6) unnamed_addr #0 {
  %8 = alloca [3 x float], align 4
  %9 = icmp eq ptr %1, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.AnimData, ptr %1, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !5
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.NlaTrack, ptr %2, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !42
  %18 = and i32 %17, 8
  %19 = icmp eq i32 %18, 0
  br label %20

20:                                               ; preds = %15, %10, %7
  %21 = phi i1 [ false, %10 ], [ false, %7 ], [ %19, %15 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #6
  call fastcc void @nla_strip_get_color_inside(ptr noundef %1, ptr noundef %3, ptr noundef nonnull %8) #7
  %22 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 19
  %23 = load i16, ptr %22, align 2, !tbaa !44
  %24 = icmp eq i16 %23, 2
  %25 = select i1 %24, i1 true, i1 %21
  br i1 %25, label %78, label %26

26:                                               ; preds = %20
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #5
  call void @glEnable(i32 noundef 3042) #5
  %27 = load i16, ptr %22, align 2, !tbaa !44
  switch i16 %27, label %77 [
    i16 0, label %28
    i16 1, label %44
  ]

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !45
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %44

32:                                               ; preds = %28
  %33 = load float, ptr %8, align 4, !tbaa !14
  %34 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !14
  %36 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  %37 = load float, ptr %36, align 4, !tbaa !14
  call void @glColor4f(float noundef %33, float noundef %35, float noundef %37, float noundef 0x3FC3333340000000) #5
  call void @glBegin(i32 noundef 7) #5
  %38 = getelementptr inbounds %struct.View2D, ptr %4, i64 0, i32 1
  %39 = load float, ptr %38, align 8, !tbaa !35
  call void @glVertex2f(float noundef %39, float noundef %5) #5
  %40 = load float, ptr %38, align 8, !tbaa !35
  call void @glVertex2f(float noundef %40, float noundef %6) #5
  %41 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 10
  %42 = load float, ptr %41, align 8, !tbaa !46
  call void @glVertex2f(float noundef %42, float noundef %6) #5
  %43 = load float, ptr %41, align 8, !tbaa !46
  call void @glVertex2f(float noundef %43, float noundef %5) #5
  call void @glEnd() #5
  br label %44

44:                                               ; preds = %28, %32, %26
  %45 = load ptr, ptr %3, align 8, !tbaa !47
  %46 = icmp eq ptr %45, null
  br i1 %46, label %55, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.NlaStrip, ptr %45, i64 0, i32 10
  %49 = load float, ptr %48, align 8, !tbaa !46
  %50 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 11
  %51 = load float, ptr %50, align 4, !tbaa !48
  %52 = fsub float %49, %51
  %53 = call float @llvm.fabs.f32(float %52)
  %54 = fcmp ult float %53, 0x3E80000000000000
  br i1 %54, label %77, label %55

55:                                               ; preds = %47, %44
  %56 = load float, ptr %8, align 4, !tbaa !14
  %57 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  %58 = load float, ptr %57, align 4, !tbaa !14
  %59 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  %60 = load float, ptr %59, align 4, !tbaa !14
  call void @glColor4f(float noundef %56, float noundef %58, float noundef %60, float noundef 0x3FD3333340000000) #5
  call void @glBegin(i32 noundef 7) #5
  %61 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 11
  %62 = load float, ptr %61, align 4, !tbaa !48
  call void @glVertex2f(float noundef %62, float noundef %5) #5
  %63 = load float, ptr %61, align 4, !tbaa !48
  call void @glVertex2f(float noundef %63, float noundef %6) #5
  %64 = load ptr, ptr %3, align 8, !tbaa !47
  %65 = icmp eq ptr %64, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %55
  %67 = getelementptr inbounds %struct.NlaStrip, ptr %64, i64 0, i32 10
  %68 = load float, ptr %67, align 8, !tbaa !46
  call void @glVertex2f(float noundef %68, float noundef %6) #5
  %69 = load ptr, ptr %3, align 8, !tbaa !47
  %70 = getelementptr inbounds %struct.NlaStrip, ptr %69, i64 0, i32 10
  br label %74

71:                                               ; preds = %55
  %72 = getelementptr inbounds %struct.View2D, ptr %4, i64 0, i32 1, i32 1
  %73 = load float, ptr %72, align 4, !tbaa !36
  call void @glVertex2f(float noundef %73, float noundef %6) #5
  br label %74

74:                                               ; preds = %71, %66
  %75 = phi ptr [ %72, %71 ], [ %70, %66 ]
  %76 = load float, ptr %75, align 4, !tbaa !14
  call void @glVertex2f(float noundef %76, float noundef %5) #5
  call void @glEnd() #5
  br label %77

77:                                               ; preds = %47, %74, %26
  call void @glDisable(i32 noundef 3042) #5
  br label %78

78:                                               ; preds = %77, %20
  br i1 %21, label %84, label %79

79:                                               ; preds = %78
  call void @glColor3fv(ptr noundef nonnull %8) #5
  call void @uiSetRoundBox(i32 noundef 15) #5
  %80 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 10
  %81 = load float, ptr %80, align 8, !tbaa !46
  %82 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 11
  %83 = load float, ptr %82, align 4, !tbaa !48
  call void @uiDrawBoxShade(i32 noundef 9, float noundef %81, float noundef %5, float noundef %83, float noundef %6, float noundef 0.000000e+00, float noundef 5.000000e-01, float noundef 0x3FB99999A0000000) #5
  br label %94

84:                                               ; preds = %78
  %85 = load float, ptr %8, align 4, !tbaa !14
  %86 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  %87 = load float, ptr %86, align 4, !tbaa !14
  %88 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  %89 = load float, ptr %88, align 4, !tbaa !14
  call void @glColor4f(float noundef %85, float noundef %87, float noundef %89, float noundef 0x3FB99999A0000000) #5
  call void @glEnable(i32 noundef 3042) #5
  %90 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 10
  %91 = load float, ptr %90, align 8, !tbaa !46
  %92 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 11
  %93 = load float, ptr %92, align 4, !tbaa !48
  call void @glRectf(float noundef %91, float noundef %5, float noundef %93, float noundef %6) #5
  call void @glDisable(i32 noundef 3042) #5
  br label %94

94:                                               ; preds = %84, %79
  %95 = getelementptr inbounds %struct.SpaceNla, ptr %0, i64 0, i32 7
  %96 = load i16, ptr %95, align 2, !tbaa !22
  %97 = and i16 %96, 32
  %98 = icmp eq i16 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  call fastcc void @nla_draw_strip_curves(ptr noundef nonnull %3, float noundef %5, float noundef %6) #7
  br label %100

100:                                              ; preds = %99, %94
  %101 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 23
  %102 = load i32, ptr %101, align 8, !tbaa !37
  %103 = and i32 %102, 1
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %100
  call void @glColor3f(float noundef 0x3FECCCCCC0000000, float noundef 1.000000e+00, float noundef 0x3FECCCCCC0000000) #5
  br label %107

106:                                              ; preds = %100
  call void @glColor3f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #5
  br label %107

107:                                              ; preds = %106, %105
  %108 = load i32, ptr %101, align 8, !tbaa !37
  %109 = and i32 %108, 4096
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %107
  call void @setlinestyle(i32 noundef 4) #5
  br label %112

112:                                              ; preds = %111, %107
  %113 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 10
  %114 = load float, ptr %113, align 8, !tbaa !46
  %115 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 11
  %116 = load float, ptr %115, align 4, !tbaa !48
  call void @uiDrawBoxShade(i32 noundef 2, float noundef %114, float noundef %5, float noundef %116, float noundef %6, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0x3FB99999A0000000) #5
  %117 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 21
  %118 = load i16, ptr %117, align 2, !tbaa !49
  switch i16 %118, label %186 [
    i16 0, label %119
    i16 2, label %153
  ]

119:                                              ; preds = %112
  %120 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 14
  %121 = load float, ptr %120, align 8, !tbaa !50
  %122 = fadd float %121, -1.000000e+00
  %123 = call float @llvm.fabs.f32(float %122)
  %124 = fcmp ult float %123, 0x3E80000000000000
  br i1 %124, label %186, label %125

125:                                              ; preds = %119
  %126 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 13
  %127 = load float, ptr %126, align 4, !tbaa !51
  %128 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 12
  %129 = load float, ptr %128, align 8, !tbaa !52
  %130 = fsub float %127, %129
  %131 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 15
  %132 = load float, ptr %131, align 4, !tbaa !53
  %133 = fmul float %130, %132
  %134 = fcmp ogt float %121, 1.000000e+00
  br i1 %134, label %135, label %186

135:                                              ; preds = %125
  %136 = fadd float %5, 4.000000e+00
  %137 = fadd float %6, -4.000000e+00
  br label %138

138:                                              ; preds = %135, %148
  %139 = phi float [ %121, %135 ], [ %149, %148 ]
  %140 = phi float [ 1.000000e+00, %135 ], [ %151, %148 ]
  %141 = phi i32 [ 1, %135 ], [ %150, %148 ]
  %142 = load float, ptr %113, align 8, !tbaa !46
  %143 = call float @llvm.fmuladd.f32(float %133, float %140, float %142)
  %144 = load float, ptr %115, align 4, !tbaa !48
  %145 = fcmp olt float %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %138
  call void @fdrawline(float noundef %143, float noundef %136, float noundef %143, float noundef %137) #5
  %147 = load float, ptr %120, align 8, !tbaa !50
  br label %148

148:                                              ; preds = %146, %138
  %149 = phi float [ %147, %146 ], [ %139, %138 ]
  %150 = add nuw nsw i32 %141, 1
  %151 = sitofp i32 %150 to float
  %152 = fcmp ogt float %149, %151
  br i1 %152, label %138, label %186, !llvm.loop !54

153:                                              ; preds = %112
  %154 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 2
  %155 = load ptr, ptr %154, align 8, !tbaa !55
  %156 = getelementptr inbounds %struct.NlaStrip, ptr %3, i64 0, i32 2, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !56
  %158 = icmp eq ptr %155, %157
  br i1 %158, label %186, label %159

159:                                              ; preds = %153
  %160 = fsub float %6, %5
  %161 = fmul float %160, 5.000000e-01
  %162 = fadd float %161, %5
  %163 = icmp eq ptr %155, null
  br i1 %163, label %186, label %164

164:                                              ; preds = %159, %181
  %165 = phi ptr [ %184, %181 ], [ %155, %159 ]
  %166 = getelementptr inbounds %struct.NlaStrip, ptr %165, i64 0, i32 1
  %167 = load ptr, ptr %166, align 8, !tbaa !45
  %168 = icmp eq ptr %167, null
  br i1 %168, label %178, label %169

169:                                              ; preds = %164
  %170 = getelementptr inbounds %struct.NlaStrip, ptr %167, i64 0, i32 11
  %171 = load float, ptr %170, align 4, !tbaa !48
  %172 = getelementptr inbounds %struct.NlaStrip, ptr %165, i64 0, i32 10
  %173 = load float, ptr %172, align 8, !tbaa !46
  %174 = fsub float %171, %173
  %175 = call float @llvm.fabs.f32(float %174)
  %176 = fcmp ult float %175, 0x3E80000000000000
  br i1 %176, label %178, label %177

177:                                              ; preds = %169
  call void @fdrawline(float noundef %173, float noundef %162, float noundef %173, float noundef %6) #5
  br label %178

178:                                              ; preds = %177, %169, %164
  %179 = load ptr, ptr %165, align 8, !tbaa !47
  %180 = icmp eq ptr %179, null
  br i1 %180, label %186, label %181

181:                                              ; preds = %178
  %182 = getelementptr inbounds %struct.NlaStrip, ptr %165, i64 0, i32 11
  %183 = load float, ptr %182, align 4, !tbaa !48
  call void @fdrawline(float noundef %183, float noundef %5, float noundef %183, float noundef %162) #5
  %184 = load ptr, ptr %165, align 8, !tbaa !47
  %185 = icmp eq ptr %184, null
  br i1 %185, label %186, label %164, !llvm.loop !57

186:                                              ; preds = %178, %181, %148, %159, %125, %112, %119, %153
  call void @setlinestyle(i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @nla_draw_strip_text(ptr noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, float noundef %5, float noundef %6) unnamed_addr #0 {
  %8 = alloca [256 x i8], align 16
  %9 = alloca [4 x i8], align 1
  %10 = alloca %struct.rctf, align 4
  %11 = icmp eq ptr %0, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 7
  %14 = load i32, ptr %13, align 8, !tbaa !5
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.NlaTrack, ptr %1, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !42
  %20 = and i32 %19, 8
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i8 -128, i8 -1
  br label %23

23:                                               ; preds = %17, %12, %7
  %24 = phi i8 [ -1, %12 ], [ -1, %7 ], [ %22, %17 ]
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %8) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #6
  %25 = getelementptr inbounds %struct.NlaStrip, ptr %2, i64 0, i32 23
  %26 = load i32, ptr %25, align 8, !tbaa !37
  %27 = and i32 %26, 1073741824
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %23
  %30 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %8, i64 noundef 256, ptr noundef nonnull @.str.1, i32 noundef %3) #5
  br label %34

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.NlaStrip, ptr %2, i64 0, i32 7
  %33 = call i64 @BLI_strncpy_rlen(ptr noundef nonnull %8, ptr noundef nonnull %32, i64 noundef 256) #5
  br label %34

34:                                               ; preds = %31, %29
  %35 = phi i64 [ %30, %29 ], [ %33, %31 ]
  %36 = load i32, ptr %25, align 8, !tbaa !37
  %37 = and i32 %36, 19
  %38 = icmp eq i32 %37, 0
  %39 = sext i1 %38 to i8
  %40 = getelementptr inbounds [4 x i8], ptr %9, i64 0, i64 2
  store i8 %39, ptr %40, align 1
  %41 = getelementptr inbounds [4 x i8], ptr %9, i64 0, i64 1
  store i8 %39, ptr %41, align 1
  store i8 %39, ptr %9, align 1, !tbaa !58
  %42 = getelementptr inbounds [4 x i8], ptr %9, i64 0, i64 3
  store i8 %24, ptr %42, align 1
  %43 = getelementptr inbounds %struct.NlaStrip, ptr %2, i64 0, i32 11
  %44 = load float, ptr %43, align 4, !tbaa !48
  %45 = getelementptr inbounds %struct.NlaStrip, ptr %2, i64 0, i32 10
  %46 = load float, ptr %45, align 8, !tbaa !46
  %47 = fsub float %44, %46
  %48 = fcmp ugt float %47, 5.000000e+00
  %49 = select i1 %48, float 1.000000e+00, float 5.000000e-01
  %50 = fadd float %46, %49
  store float %50, ptr %10, align 4, !tbaa !59
  %51 = getelementptr inbounds %struct.rctf, ptr %10, i64 0, i32 2
  store float %5, ptr %51, align 4, !tbaa !60
  %52 = fsub float %44, %49
  %53 = getelementptr inbounds %struct.rctf, ptr %10, i64 0, i32 1
  store float %52, ptr %53, align 4, !tbaa !61
  %54 = getelementptr inbounds %struct.rctf, ptr %10, i64 0, i32 3
  store float %6, ptr %54, align 4, !tbaa !62
  call void @UI_view2d_text_cache_add_rectf(ptr noundef %4, ptr noundef nonnull %10, ptr noundef nonnull %8, i64 noundef %35, ptr noundef nonnull %9) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %8) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @nla_draw_strip_frames_text(ptr nocapture noundef readonly %0, ptr noundef %1, float noundef %2) unnamed_addr #0 {
  %4 = alloca [4 x i8], align 4
  %5 = alloca [32 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 -2302756, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #6
  %6 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 10
  %7 = load float, ptr %6, align 8, !tbaa !46
  %8 = fpext float %7 to double
  %9 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 32, ptr noundef nonnull @.str.2, double noundef %8) #5
  %10 = load float, ptr %6, align 8, !tbaa !46
  %11 = fadd float %10, -1.000000e+00
  %12 = fadd float %2, 1.000000e+00
  call void @UI_view2d_text_cache_add(ptr noundef %1, float noundef %11, float noundef %12, ptr noundef nonnull %5, i64 noundef %9, ptr noundef nonnull %4) #5
  %13 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 11
  %14 = load float, ptr %13, align 4, !tbaa !48
  %15 = fpext float %14 to double
  %16 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 32, ptr noundef nonnull @.str.2, double noundef %15) #5
  %17 = load float, ptr %13, align 4, !tbaa !48
  call void @UI_view2d_text_cache_add(ptr noundef %1, float noundef %17, float noundef %12, ptr noundef nonnull %5, i64 noundef %16, ptr noundef nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glColor4fv(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glRectf(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @nla_action_draw_keyframes(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3, float noundef %4, float noundef %5) unnamed_addr #0 {
  %7 = alloca %struct.DLRBT_Tree, align 8
  %8 = alloca float, align 4
  %9 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #6
  call void @BLI_dlrbTree_init(ptr noundef nonnull %7) #5
  call void @action_to_keylist(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7, ptr noundef null) #5
  call void @BLI_dlrbTree_linkedlist_sync(ptr noundef nonnull %7) #5
  %10 = icmp eq ptr %1, null
  %11 = load ptr, ptr %7, align 8
  %12 = icmp eq ptr %11, null
  %13 = select i1 %10, i1 true, i1 %12
  br i1 %13, label %40, label %14

14:                                               ; preds = %6
  call void @nla_action_get_color(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %9) #7
  %15 = getelementptr inbounds [4 x float], ptr %9, i64 0, i64 3
  %16 = load float, ptr %15, align 4, !tbaa !14
  %17 = fmul float %16, 2.500000e+00
  store float %17, ptr %15, align 4, !tbaa !14
  call void @glColor4fv(ptr noundef nonnull %9) #5
  %18 = load ptr, ptr %7, align 8, !tbaa !63
  %19 = getelementptr inbounds %struct.ActKeyColumn, ptr %18, i64 0, i32 8
  %20 = load float, ptr %19, align 4, !tbaa !65
  %21 = getelementptr inbounds %struct.DLRBT_Tree, ptr %7, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !67
  %23 = getelementptr inbounds %struct.ActKeyColumn, ptr %22, i64 0, i32 8
  %24 = load float, ptr %23, align 4, !tbaa !65
  %25 = fadd float %4, 2.000000e+00
  %26 = fadd float %5, -2.000000e+00
  call void @glRectf(float noundef %20, float noundef %25, float noundef %24, float noundef %26) #5
  call void @UI_view2d_scale_get(ptr noundef %2, ptr noundef nonnull %8, ptr noundef null) #5
  call void @glColor3f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #5
  %27 = load ptr, ptr %7, align 8, !tbaa !28
  %28 = icmp eq ptr %27, null
  br i1 %28, label %39, label %29

29:                                               ; preds = %14, %29
  %30 = phi ptr [ %37, %29 ], [ %27, %14 ]
  %31 = getelementptr inbounds %struct.ActKeyColumn, ptr %30, i64 0, i32 8
  %32 = load float, ptr %31, align 4, !tbaa !65
  %33 = load float, ptr %8, align 4, !tbaa !14
  %34 = getelementptr inbounds %struct.ActKeyColumn, ptr %30, i64 0, i32 6
  %35 = load i8, ptr %34, align 1, !tbaa !68
  %36 = zext i8 %35 to i16
  call void @draw_keyframe_shape(float noundef %32, float noundef %3, float noundef %33, float noundef 3.000000e+00, i16 noundef signext 0, i16 noundef signext %36, i16 noundef signext 0, float noundef 1.000000e+00) #5
  %37 = load ptr, ptr %30, align 8, !tbaa !28
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %29, !llvm.loop !69

39:                                               ; preds = %29, %14
  call void @BLI_dlrbTree_free(ptr noundef nonnull %7) #5
  br label %40

40:                                               ; preds = %6, %39
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #6
  ret void
}

; Function Attrs: optsize
declare void @glLineWidth(float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glColor4f(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @fdrawline(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glColor3f(float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ANIM_animdata_freelist(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @draw_nla_channel_list(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = getelementptr inbounds %struct.bAnimContext, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !70
  %7 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2
  %8 = load ptr, ptr %1, align 8, !tbaa !15
  %9 = getelementptr inbounds %struct.bAnimContext, ptr %1, i64 0, i32 1
  %10 = load i16, ptr %9, align 8, !tbaa !17
  %11 = sext i16 %10 to i32
  %12 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %1, ptr noundef nonnull %4, i32 noundef 11, ptr noundef %8, i32 noundef %11) #5
  %13 = uitofp i64 %12 to float
  %14 = icmp eq ptr %6, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !18
  %17 = sitofp i16 %16 to float
  %18 = fmul float %17, 0x3FF3333340000000
  %19 = call float @llvm.fmuladd.f32(float %17, float 0x3FB99999A0000000, float %18)
  br label %42

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.SpaceNla, ptr %6, i64 0, i32 7
  %22 = load i16, ptr %21, align 2, !tbaa !22
  %23 = and i16 %22, 32
  %24 = icmp eq i16 %23, 0
  %25 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !18
  %26 = sitofp i16 %25 to float
  br i1 %24, label %30, label %27

27:                                               ; preds = %20
  %28 = fmul float %26, 0x3FE99999A0000000
  %29 = call float @llvm.fmuladd.f32(float %26, float 0x3FB99999A0000000, float %28)
  br label %39

30:                                               ; preds = %20
  %31 = fmul float %26, 0x3FF3333340000000
  %32 = call float @llvm.fmuladd.f32(float %26, float 0x3FB99999A0000000, float %31)
  %33 = getelementptr inbounds %struct.SpaceNla, ptr %6, i64 0, i32 7
  %34 = load i16, ptr %33, align 2, !tbaa !22
  %35 = and i16 %34, 32
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = fmul float %26, 0x3FF3333340000000
  br label %42

39:                                               ; preds = %27, %30
  %40 = phi float [ %29, %27 ], [ %32, %30 ]
  %41 = fmul float %26, 0x3FE99999A0000000
  br label %42

42:                                               ; preds = %37, %15, %39
  %43 = phi float [ %40, %39 ], [ %32, %37 ], [ %19, %15 ]
  %44 = phi float [ %41, %39 ], [ %38, %37 ], [ %18, %15 ]
  %45 = fmul float %44, 2.000000e+00
  %46 = call float @llvm.fmuladd.f32(float %13, float %43, float %45)
  %47 = fptosi float %46 to i32
  %48 = sub nsw i32 0, %47
  %49 = sitofp i32 %48 to float
  %50 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 0, i32 2
  store float %49, ptr %50, align 8, !tbaa !27
  %51 = getelementptr inbounds %struct.bAnimContext, ptr %1, i64 0, i32 5
  %52 = load ptr, ptr %51, align 8, !tbaa !71
  call void @UI_view2d_sync(ptr noundef null, ptr noundef %52, ptr noundef nonnull %7, i32 noundef 1) #5
  br i1 %14, label %58, label %53

53:                                               ; preds = %42
  %54 = getelementptr inbounds %struct.SpaceNla, ptr %6, i64 0, i32 7
  %55 = load i16, ptr %54, align 2, !tbaa !22
  %56 = and i16 %55, 32
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53, %42
  br label %59

59:                                               ; preds = %53, %58
  %60 = phi float [ 0x3FF3333340000000, %58 ], [ 0x3FE99999A0000000, %53 ]
  %61 = load ptr, ptr %4, align 8, !tbaa !28
  %62 = icmp eq ptr %61, null
  br i1 %62, label %140, label %63

63:                                               ; preds = %59
  %64 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !18
  %65 = sitofp i16 %64 to float
  %66 = fneg float %60
  %67 = fmul float %66, %65
  %68 = getelementptr inbounds %struct.SpaceNla, ptr %6, i64 0, i32 7
  %69 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 2
  %70 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 3
  br label %71

71:                                               ; preds = %63, %132
  %72 = phi i16 [ %64, %63 ], [ %134, %132 ]
  %73 = phi ptr [ %61, %63 ], [ %138, %132 ]
  %74 = phi float [ %67, %63 ], [ %137, %132 ]
  br i1 %14, label %75, label %80

75:                                               ; preds = %71
  %76 = sitofp i16 %72 to float
  %77 = fmul float %76, 0x3FE3333340000000
  %78 = insertelement <2 x float> poison, float %77, i64 0
  %79 = shufflevector <2 x float> %78, <2 x float> poison, <2 x i32> zeroinitializer
  br label %91

80:                                               ; preds = %71
  %81 = load i16, ptr %68, align 2, !tbaa !22
  %82 = and i16 %81, 32
  %83 = icmp eq i16 %82, 0
  %84 = insertelement <2 x i16> poison, i16 %72, i64 0
  %85 = shufflevector <2 x i16> %84, <2 x i16> poison, <2 x i32> zeroinitializer
  %86 = sitofp <2 x i16> %85 to <2 x float>
  br i1 %83, label %87, label %89

87:                                               ; preds = %80
  %88 = fmul <2 x float> %86, <float 0x3FE3333340000000, float 0x3FE3333340000000>
  br label %91

89:                                               ; preds = %80
  %90 = fmul <2 x float> %86, <float 0x3FD99999A0000000, float 0x3FD99999A0000000>
  br label %91

91:                                               ; preds = %75, %87, %89
  %92 = phi <2 x float> [ %90, %89 ], [ %88, %87 ], [ %79, %75 ]
  %93 = extractelement <2 x float> %92, i64 0
  %94 = fsub float %74, %93
  %95 = extractelement <2 x float> %92, i64 1
  %96 = fadd float %74, %95
  %97 = load float, ptr %69, align 8, !tbaa !29
  %98 = load float, ptr %70, align 4, !tbaa !30
  %99 = fcmp olt float %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %91
  %101 = fcmp olt float %97, %94
  %102 = fcmp olt float %94, %98
  %103 = and i1 %101, %102
  br i1 %103, label %116, label %108

104:                                              ; preds = %91
  %105 = fcmp olt float %98, %94
  %106 = fcmp olt float %94, %97
  %107 = and i1 %106, %105
  br i1 %107, label %116, label %112

108:                                              ; preds = %100
  %109 = fcmp olt float %97, %96
  %110 = fcmp olt float %96, %98
  %111 = and i1 %109, %110
  br i1 %111, label %116, label %117

112:                                              ; preds = %104
  %113 = fcmp olt float %98, %96
  %114 = fcmp olt float %96, %97
  %115 = and i1 %114, %113
  br i1 %115, label %116, label %117

116:                                              ; preds = %112, %108, %104, %100
  call void @ANIM_channel_draw(ptr noundef nonnull %1, ptr noundef nonnull %73, float noundef %94, float noundef %96) #5
  br label %117

117:                                              ; preds = %112, %108, %116
  br i1 %14, label %118, label %120

118:                                              ; preds = %117
  %119 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !18
  br label %128

120:                                              ; preds = %117
  %121 = load i16, ptr %68, align 2, !tbaa !22
  %122 = and i16 %121, 32
  %123 = icmp eq i16 %122, 0
  %124 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !18
  br i1 %123, label %128, label %125

125:                                              ; preds = %120
  %126 = sitofp i16 %124 to float
  %127 = fmul float %126, 0x3FE99999A0000000
  br label %132

128:                                              ; preds = %118, %120
  %129 = phi i16 [ %119, %118 ], [ %124, %120 ]
  %130 = sitofp i16 %129 to float
  %131 = fmul float %130, 0x3FF3333340000000
  br label %132

132:                                              ; preds = %128, %125
  %133 = phi float [ %130, %128 ], [ %126, %125 ]
  %134 = phi i16 [ %129, %128 ], [ %124, %125 ]
  %135 = phi float [ %131, %128 ], [ %127, %125 ]
  %136 = call float @llvm.fmuladd.f32(float %133, float 0x3FB99999A0000000, float %135)
  %137 = fsub float %74, %136
  %138 = load ptr, ptr %73, align 8, !tbaa !28
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %71, !llvm.loop !72

140:                                              ; preds = %132, %59
  %141 = call ptr @uiBeginBlock(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull @__func__.draw_nla_channel_list, i16 noundef signext 0) #5
  br i1 %14, label %147, label %142

142:                                              ; preds = %140
  %143 = getelementptr inbounds %struct.SpaceNla, ptr %6, i64 0, i32 7
  %144 = load i16, ptr %143, align 2, !tbaa !22
  %145 = and i16 %144, 32
  %146 = icmp eq i16 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %142, %140
  br label %148

148:                                              ; preds = %142, %147
  %149 = phi float [ 0x3FF3333340000000, %147 ], [ 0x3FE99999A0000000, %142 ]
  %150 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !18
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #5
  call void @glEnable(i32 noundef 3042) #5
  %151 = load ptr, ptr %4, align 8, !tbaa !28
  %152 = icmp eq ptr %151, null
  br i1 %152, label %230, label %153

153:                                              ; preds = %148
  %154 = sitofp i16 %150 to float
  %155 = fneg float %149
  %156 = fmul float %155, %154
  %157 = getelementptr inbounds %struct.SpaceNla, ptr %6, i64 0, i32 7
  %158 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 2
  %159 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 2, i32 1, i32 3
  br label %160

160:                                              ; preds = %153, %222
  %161 = phi ptr [ %151, %153 ], [ %228, %222 ]
  %162 = phi float [ %156, %153 ], [ %226, %222 ]
  %163 = phi i64 [ 0, %153 ], [ %227, %222 ]
  br i1 %14, label %164, label %170

164:                                              ; preds = %160
  %165 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !18
  %166 = sitofp i16 %165 to float
  %167 = fmul float %166, 0x3FE3333340000000
  %168 = insertelement <2 x float> poison, float %167, i64 0
  %169 = shufflevector <2 x float> %168, <2 x float> poison, <2 x i32> zeroinitializer
  br label %181

170:                                              ; preds = %160
  %171 = load i16, ptr %157, align 2, !tbaa !22
  %172 = and i16 %171, 32
  %173 = icmp eq i16 %172, 0
  %174 = load <8 x i16>, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4
  %175 = shufflevector <8 x i16> %174, <8 x i16> poison, <2 x i32> zeroinitializer
  %176 = sitofp <2 x i16> %175 to <2 x float>
  br i1 %173, label %177, label %179

177:                                              ; preds = %170
  %178 = fmul <2 x float> %176, <float 0x3FE3333340000000, float 0x3FE3333340000000>
  br label %181

179:                                              ; preds = %170
  %180 = fmul <2 x float> %176, <float 0x3FD99999A0000000, float 0x3FD99999A0000000>
  br label %181

181:                                              ; preds = %164, %177, %179
  %182 = phi <2 x float> [ %180, %179 ], [ %178, %177 ], [ %169, %164 ]
  %183 = extractelement <2 x float> %182, i64 0
  %184 = fsub float %162, %183
  %185 = extractelement <2 x float> %182, i64 1
  %186 = fadd float %162, %185
  %187 = load float, ptr %158, align 8, !tbaa !29
  %188 = load float, ptr %159, align 4, !tbaa !30
  %189 = fcmp olt float %187, %188
  br i1 %189, label %190, label %194

190:                                              ; preds = %181
  %191 = fcmp olt float %187, %184
  %192 = fcmp olt float %184, %188
  %193 = and i1 %191, %192
  br i1 %193, label %206, label %198

194:                                              ; preds = %181
  %195 = fcmp olt float %188, %184
  %196 = fcmp olt float %184, %187
  %197 = and i1 %196, %195
  br i1 %197, label %206, label %202

198:                                              ; preds = %190
  %199 = fcmp olt float %187, %186
  %200 = fcmp olt float %186, %188
  %201 = and i1 %199, %200
  br i1 %201, label %206, label %207

202:                                              ; preds = %194
  %203 = fcmp olt float %188, %186
  %204 = fcmp olt float %186, %187
  %205 = and i1 %204, %203
  br i1 %205, label %206, label %207

206:                                              ; preds = %202, %198, %194, %190
  call void @ANIM_channel_draw_widgets(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %161, ptr noundef %141, float noundef %184, float noundef %186, i64 noundef %163) #5
  br label %207

207:                                              ; preds = %202, %198, %206
  br i1 %14, label %208, label %210

208:                                              ; preds = %207
  %209 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !18
  br label %218

210:                                              ; preds = %207
  %211 = load i16, ptr %157, align 2, !tbaa !22
  %212 = and i16 %211, 32
  %213 = icmp eq i16 %212, 0
  %214 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !18
  br i1 %213, label %218, label %215

215:                                              ; preds = %210
  %216 = sitofp i16 %214 to float
  %217 = fmul float %216, 0x3FE99999A0000000
  br label %222

218:                                              ; preds = %208, %210
  %219 = phi i16 [ %209, %208 ], [ %214, %210 ]
  %220 = sitofp i16 %219 to float
  %221 = fmul float %220, 0x3FF3333340000000
  br label %222

222:                                              ; preds = %218, %215
  %223 = phi float [ %220, %218 ], [ %216, %215 ]
  %224 = phi float [ %221, %218 ], [ %217, %215 ]
  %225 = call float @llvm.fmuladd.f32(float %223, float 0x3FB99999A0000000, float %224)
  %226 = fsub float %162, %225
  %227 = add i64 %163, 1
  %228 = load ptr, ptr %161, align 8, !tbaa !28
  %229 = icmp eq ptr %228, null
  br i1 %229, label %230, label %160, !llvm.loop !73

230:                                              ; preds = %222, %148
  call void @uiEndBlock(ptr noundef %0, ptr noundef %141) #5
  call void @uiDrawBlock(ptr noundef %0, ptr noundef %141) #5
  call void @glDisable(i32 noundef 3042) #5
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  ret void
}

; Function Attrs: optsize
declare void @UI_view2d_sync(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ANIM_channel_draw(ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @uiBeginBlock(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ANIM_channel_draw_widgets(ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @uiEndBlock(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @uiDrawBlock(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @nla_strip_get_color_inside(ptr noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.NlaStrip, ptr %1, i64 0, i32 21
  %5 = load i16, ptr %4, align 2, !tbaa !49
  %6 = getelementptr inbounds %struct.NlaStrip, ptr %1, i64 0, i32 23
  %7 = load i32, ptr %6, align 8, !tbaa !37
  switch i16 %5, label %20 [
    i16 1, label %8
    i16 2, label %12
    i16 3, label %16
  ]

8:                                                ; preds = %3
  %9 = and i32 %7, 2
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i32 169, i32 170
  br label %37

12:                                               ; preds = %3
  %13 = and i32 %7, 2
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, i32 171, i32 172
  br label %37

16:                                               ; preds = %3
  %17 = and i32 %7, 2
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 173, i32 174
  br label %37

20:                                               ; preds = %3
  %21 = and i32 %7, 1
  %22 = icmp ne i32 %21, 0
  %23 = icmp ne ptr %0, null
  %24 = and i1 %23, %22
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 7
  %27 = load i32, ptr %26, align 8, !tbaa !5
  %28 = and i32 %27, 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %25, %20
  %31 = and i32 %7, 16
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = and i32 %7, 2
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %35, i32 77, i32 78
  br label %37

37:                                               ; preds = %33, %30, %25, %16, %12, %8
  %38 = phi i32 [ %11, %8 ], [ %15, %12 ], [ %19, %16 ], [ 167, %25 ], [ 168, %30 ], [ %36, %33 ]
  tail call void @UI_GetThemeColor3fv(i32 noundef %38, ptr noundef %2) #5
  ret void
}

; Function Attrs: optsize
declare void @glBegin(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glVertex2f(float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glEnd() local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

; Function Attrs: optsize
declare void @glColor3fv(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @uiSetRoundBox(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @uiDrawBoxShade(i32 noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @nla_draw_strip_curves(ptr noundef %0, float noundef %1, float noundef %2) unnamed_addr #0 {
  %4 = fsub float %2, %1
  tail call void @glColor3f(float noundef 0x3FE6666660000000, float noundef 0x3FE6666660000000, float noundef 0x3FE6666660000000) #5
  tail call void @glEnable(i32 noundef 2848) #5
  tail call void @glEnable(i32 noundef 3042) #5
  %5 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 23
  %6 = load i32, ptr %5, align 8, !tbaa !37
  %7 = and i32 %6, 32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 5
  %11 = tail call ptr @list_find_fcurve(ptr noundef nonnull %10, ptr noundef nonnull @.str, i32 noundef 0) #5
  tail call void @glBegin(i32 noundef 3) #5
  %12 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 10
  %13 = load float, ptr %12, align 8, !tbaa !46
  %14 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 11
  %15 = load float, ptr %14, align 4, !tbaa !48
  %16 = fcmp ugt float %13, %15
  br i1 %16, label %57, label %17

17:                                               ; preds = %9, %17
  %18 = phi float [ %21, %17 ], [ %13, %9 ]
  %19 = tail call float @evaluate_fcurve(ptr noundef %11, float noundef %18) #5
  %20 = tail call float @llvm.fmuladd.f32(float %19, float %4, float %1)
  tail call void @glVertex2f(float noundef %18, float noundef %20) #5
  %21 = fadd float %18, 1.000000e+00
  %22 = load float, ptr %14, align 4, !tbaa !48
  %23 = fcmp ugt float %21, %22
  br i1 %23, label %57, label %17, !llvm.loop !74

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 16
  %26 = load float, ptr %25, align 8, !tbaa !75
  %27 = tail call float @llvm.fabs.f32(float %26)
  %28 = fcmp ult float %27, 0x3E80000000000000
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 17
  %31 = load float, ptr %30, align 4, !tbaa !76
  %32 = tail call float @llvm.fabs.f32(float %31)
  %33 = fcmp ult float %32, 0x3E80000000000000
  br i1 %33, label %58, label %34

34:                                               ; preds = %24, %29
  tail call void @glBegin(i32 noundef 3) #5
  %35 = load float, ptr %25, align 8, !tbaa !75
  %36 = tail call float @llvm.fabs.f32(float %35)
  %37 = fcmp ult float %36, 0x3E80000000000000
  %38 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 10
  %39 = load float, ptr %38, align 8, !tbaa !46
  br i1 %37, label %44, label %40

40:                                               ; preds = %34
  tail call void @glVertex2f(float noundef %39, float noundef %1) #5
  %41 = load float, ptr %38, align 8, !tbaa !46
  %42 = load float, ptr %25, align 8, !tbaa !75
  %43 = fadd float %41, %42
  br label %44

44:                                               ; preds = %34, %40
  %45 = phi float [ %43, %40 ], [ %39, %34 ]
  tail call void @glVertex2f(float noundef %45, float noundef %2) #5
  %46 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 17
  %47 = load float, ptr %46, align 4, !tbaa !76
  %48 = tail call float @llvm.fabs.f32(float %47)
  %49 = fcmp ult float %48, 0x3E80000000000000
  %50 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 11
  br i1 %49, label %54, label %51

51:                                               ; preds = %44
  %52 = load float, ptr %50, align 4, !tbaa !48
  %53 = fsub float %52, %47
  tail call void @glVertex2f(float noundef %53, float noundef %2) #5
  br label %54

54:                                               ; preds = %44, %51
  %55 = phi float [ %1, %51 ], [ %2, %44 ]
  %56 = load float, ptr %50, align 4, !tbaa !48
  tail call void @glVertex2f(float noundef %56, float noundef %55) #5
  br label %57

57:                                               ; preds = %17, %9, %54
  tail call void @glEnd() #5
  br label %58

58:                                               ; preds = %57, %29
  tail call void @glDisable(i32 noundef 2848) #5
  tail call void @glDisable(i32 noundef 3042) #5
  ret void
}

; Function Attrs: optsize
declare void @setlinestyle(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @UI_GetThemeColor3fv(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @list_find_fcurve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @evaluate_fcurve(ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @BLI_strncpy_rlen(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @UI_view2d_text_cache_add_rectf(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @UI_view2d_text_cache_add(ptr noundef, float noundef, float noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_dlrbTree_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @action_to_keylist(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_dlrbTree_linkedlist_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @UI_view2d_scale_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @draw_keyframe_shape(float noundef, float noundef, float noundef, float noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_dlrbTree_free(ptr noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind }
attributes #7 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !11, i64 80}
!6 = !{!"AnimData", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !7, i64 40, !10, i64 48, !10, i64 64, !11, i64 80, !11, i64 84, !12, i64 88, !12, i64 90, !13, i64 92}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"ListBase", !7, i64 0, !7, i64 8}
!11 = !{!"int", !8, i64 0}
!12 = !{!"short", !8, i64 0}
!13 = !{!"float", !8, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!16, !7, i64 0}
!16 = !{!"bAnimContext", !7, i64 0, !12, i64 8, !12, i64 10, !12, i64 12, !12, i64 14, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72}
!17 = !{!16, !12, i64 8}
!18 = !{!19, !12, i64 8948}
!19 = !{!"UserDef", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !8, i64 20, !8, i64 788, !8, i64 1556, !8, i64 2580, !8, i64 3348, !8, i64 4116, !8, i64 4884, !8, i64 5652, !8, i64 6420, !8, i64 7444, !11, i64 8468, !12, i64 8472, !12, i64 8474, !12, i64 8476, !12, i64 8478, !12, i64 8480, !12, i64 8482, !11, i64 8484, !11, i64 8488, !11, i64 8492, !12, i64 8496, !12, i64 8498, !11, i64 8500, !11, i64 8504, !11, i64 8508, !11, i64 8512, !11, i64 8516, !11, i64 8520, !11, i64 8524, !12, i64 8528, !12, i64 8530, !12, i64 8532, !12, i64 8534, !10, i64 8536, !10, i64 8552, !10, i64 8568, !10, i64 8584, !10, i64 8600, !10, i64 8616, !10, i64 8632, !8, i64 8648, !12, i64 8712, !12, i64 8714, !12, i64 8716, !12, i64 8718, !12, i64 8720, !12, i64 8722, !12, i64 8724, !12, i64 8726, !8, i64 8728, !12, i64 8896, !12, i64 8898, !12, i64 8900, !12, i64 8902, !12, i64 8904, !12, i64 8906, !12, i64 8908, !12, i64 8910, !11, i64 8912, !11, i64 8916, !12, i64 8920, !12, i64 8922, !12, i64 8924, !12, i64 8926, !12, i64 8928, !12, i64 8930, !12, i64 8932, !12, i64 8934, !12, i64 8936, !12, i64 8938, !8, i64 8940, !8, i64 8941, !8, i64 8942, !8, i64 8943, !12, i64 8944, !12, i64 8946, !12, i64 8948, !12, i64 8950, !12, i64 8952, !12, i64 8954, !13, i64 8956, !13, i64 8960, !11, i64 8964, !12, i64 8968, !12, i64 8970, !13, i64 8972, !12, i64 8976, !12, i64 8978, !12, i64 8980, !12, i64 8982, !20, i64 8984, !8, i64 9760, !8, i64 9772, !12, i64 9788, !8, i64 9790, !8, i64 9791, !8, i64 9792, !8, i64 9872, !11, i64 10896, !11, i64 10900, !13, i64 10904, !13, i64 10908, !11, i64 10912, !12, i64 10916, !12, i64 10918, !12, i64 10920, !12, i64 10922, !12, i64 10924, !12, i64 10926, !21, i64 10928}
!20 = !{!"ColorBand", !12, i64 0, !12, i64 2, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !8, i64 8}
!21 = !{!"WalkNavigation", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !12, i64 24, !8, i64 26}
!22 = !{!23, !12, i64 58}
!23 = !{!"SpaceNla", !7, i64 0, !7, i64 8, !10, i64 16, !11, i64 32, !13, i64 36, !8, i64 40, !12, i64 56, !12, i64 58, !11, i64 60, !7, i64 64, !24, i64 72}
!24 = !{!"View2D", !25, i64 0, !25, i64 16, !26, i64 32, !26, i64 48, !26, i64 64, !8, i64 80, !8, i64 88, !13, i64 96, !13, i64 100, !12, i64 104, !12, i64 106, !12, i64 108, !12, i64 110, !12, i64 112, !12, i64 114, !12, i64 116, !12, i64 118, !12, i64 120, !12, i64 122, !12, i64 124, !12, i64 126, !7, i64 128, !11, i64 136, !11, i64 140, !7, i64 144, !7, i64 152}
!25 = !{!"rctf", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12}
!26 = !{!"rcti", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!27 = !{!24, !13, i64 8}
!28 = !{!7, !7, i64 0}
!29 = !{!24, !13, i64 24}
!30 = !{!24, !13, i64 28}
!31 = !{!32, !11, i64 24}
!32 = !{!"bAnimListElem", !7, i64 0, !7, i64 8, !7, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !12, i64 36, !12, i64 38, !7, i64 40, !7, i64 48, !7, i64 56}
!33 = !{!32, !7, i64 56}
!34 = !{!32, !7, i64 16}
!35 = !{!24, !13, i64 16}
!36 = !{!24, !13, i64 20}
!37 = !{!38, !11, i64 200}
!38 = !{!"NlaStrip", !7, i64 0, !7, i64 8, !10, i64 16, !7, i64 32, !7, i64 40, !10, i64 48, !10, i64 64, !8, i64 80, !13, i64 144, !13, i64 148, !13, i64 152, !13, i64 156, !13, i64 160, !13, i64 164, !13, i64 168, !13, i64 172, !13, i64 176, !13, i64 180, !12, i64 184, !12, i64 186, !12, i64 188, !12, i64 190, !7, i64 192, !11, i64 200, !11, i64 204}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.mustprogress"}
!41 = distinct !{!41, !40}
!42 = !{!43, !11, i64 32}
!43 = !{!"NlaTrack", !7, i64 0, !7, i64 8, !10, i64 16, !11, i64 32, !11, i64 36, !8, i64 40}
!44 = !{!38, !12, i64 186}
!45 = !{!38, !7, i64 8}
!46 = !{!38, !13, i64 152}
!47 = !{!38, !7, i64 0}
!48 = !{!38, !13, i64 156}
!49 = !{!38, !12, i64 190}
!50 = !{!38, !13, i64 168}
!51 = !{!38, !13, i64 164}
!52 = !{!38, !13, i64 160}
!53 = !{!38, !13, i64 172}
!54 = distinct !{!54, !40}
!55 = !{!38, !7, i64 16}
!56 = !{!38, !7, i64 24}
!57 = distinct !{!57, !40}
!58 = !{!8, !8, i64 0}
!59 = !{!25, !13, i64 0}
!60 = !{!25, !13, i64 8}
!61 = !{!25, !13, i64 4}
!62 = !{!25, !13, i64 12}
!63 = !{!64, !7, i64 0}
!64 = !{!"DLRBT_Tree", !7, i64 0, !7, i64 8, !7, i64 16}
!65 = !{!66, !13, i64 44}
!66 = !{!"ActKeyColumn", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !8, i64 40, !8, i64 41, !12, i64 42, !13, i64 44, !12, i64 48, !12, i64 50}
!67 = !{!64, !7, i64 8}
!68 = !{!66, !8, i64 41}
!69 = distinct !{!69, !40}
!70 = !{!16, !7, i64 24}
!71 = !{!16, !7, i64 16}
!72 = distinct !{!72, !40}
!73 = distinct !{!73, !40}
!74 = distinct !{!74, !40}
!75 = !{!38, !13, i64 176}
!76 = !{!38, !13, i64 180}
