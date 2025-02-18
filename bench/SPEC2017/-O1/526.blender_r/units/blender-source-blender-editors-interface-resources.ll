; ModuleID = 'blender/source/blender/editors/interface/resources.c'
source_filename = "blender/source/blender/editors/interface/resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.uiWidgetColors = type { [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], i16, i16, i16, i16 }
%struct.bTheme = type { ptr, ptr, [32 x i8], %struct.ThemeUI, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, %struct.ThemeSpace, [20 x %struct.ThemeWireColor], i32, i32 }
%struct.ThemeUI = type { %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetColors, %struct.uiWidgetStateColors, %struct.uiPanelColors, [4 x i8], float, i16, [3 x i16], [256 x i8], float, [4 x i8], [4 x i8], [4 x i8] }
%struct.uiWidgetStateColors = type { [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], float, float }
%struct.uiPanelColors = type { [4 x i8], [4 x i8], i16, i16, i32 }
%struct.ThemeSpace = type { [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], %struct.uiPanelColors, %struct.uiGradientColors, [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [3 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8] }
%struct.uiGradientColors = type { [4 x i8], [4 x i8], i32, i32 }
%struct.ThemeWireColor = type { [4 x i8], [4 x i8], [4 x i8], i16, i16 }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.wmKeyMap = type { ptr, ptr, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, ptr, ptr }
%struct.bAddon = type { ptr, ptr, [64 x i8], ptr }

@UI_ThemeGetColorPtr.error = internal global [4 x i8] c"\F0\00\F0\FF", align 1
@UI_ThemeGetColorPtr.alert = internal global [4 x i8] c"\F0<<\FF", align 1
@UI_ThemeGetColorPtr.headerdesel = internal global [4 x i8] c"\00\00\00\FF", align 1
@UI_ThemeGetColorPtr.setting = internal global i8 0, align 1
@theme_regionid = internal unnamed_addr global i32 0, align 4
@U = external global %struct.UserDef, align 8
@.str = private unnamed_addr constant [8 x i8] c"Default\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"theme\00", align 1
@theme_active = internal unnamed_addr global ptr null, align 8
@theme_spacetype = internal unnamed_addr global i32 1, align 4
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"Armature_Sketch\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Armature Sketch\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"View3D\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"View3D Generic\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"3D View Generic\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"EditMesh\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"Mesh\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"TimeLine\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"Timeline\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"UVEdit\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"UV Editor\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"Animation_Channels\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"Animation Channels\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"GraphEdit Keys\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"Graph Editor\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"GraphEdit Generic\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"Graph Editor Generic\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"Action_Keys\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"Dopesheet\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"NLA Data\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"NLA Editor\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"Node Generic\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"Node Editor\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"Logic Generic\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"Logic Editor\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"File\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"File Browser\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"FileMain\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"File Browser Main\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"FileButtons\00", align 1
@.str.34 = private unnamed_addr constant [21 x i8] c"File Browser Buttons\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"Buttons Generic\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"Property Editor\00", align 1
@__const.init_userdef_do_versions.wcol_progress = private unnamed_addr constant %struct.uiWidgetColors { [4 x i8] c"\00\00\00\FF", [4 x i8] c"\BE\BE\BE\FF", [4 x i8] c"ddd\B4", [4 x i8] c"DDD\FF", [4 x i8] c"\00\00\00\FF", [4 x i8] c"\FF\FF\FF\FF", i16 0, i16 5, i16 -5, i16 0 }, align 2
@.str.37 = private unnamed_addr constant [7 x i8] c"cycles\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"bAddon\00", align 1
@__const.init_userdef_do_versions.wcol_pie_menu = private unnamed_addr constant %struct.uiWidgetColors { [4 x i8] c"\0A\0A\0A\C8", [4 x i8] c"\19\19\19\E6", [4 x i8] c"\8C\8C\8C\FF", [4 x i8] c"---\E6", [4 x i8] c"\A0\A0\A0\FF", [4 x i8] c"\FF\FF\FF\FF", i16 1, i16 10, i16 -10, i16 0 }, align 2

; Function Attrs: nounwind uwtable
define dso_local void @ui_resources_init() local_unnamed_addr #0 {
  tail call void @UI_icons_init(i32 noundef 846) #16
  ret void
}

declare void @UI_icons_init(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ui_resources_free() local_unnamed_addr #0 {
  tail call void @UI_icons_free() #16
  ret void
}

declare void @UI_icons_free() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local nonnull ptr @UI_ThemeGetColorPtr(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %475, label %5

5:                                                ; preds = %3
  %6 = icmp slt i32 %2, 1
  br i1 %6, label %7, label %10

7:                                                ; preds = %5
  %8 = icmp eq i32 %2, 0
  %9 = select i1 %8, ptr @UI_ThemeGetColorPtr.alert, ptr @UI_ThemeGetColorPtr.error
  br label %475

10:                                               ; preds = %5
  switch i32 %1, label %45 [
    i32 4, label %11
    i32 1, label %13
    i32 2, label %15
    i32 5, label %17
    i32 13, label %19
    i32 12, label %21
    i32 8, label %23
    i32 6, label %25
    i32 9, label %27
    i32 3, label %29
    i32 7, label %31
    i32 19, label %33
    i32 18, label %35
    i32 15, label %37
    i32 16, label %39
    i32 17, label %41
    i32 20, label %43
  ]

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 4
  br label %47

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 5
  br label %47

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 7
  br label %47

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 6
  br label %47

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 10
  br label %47

21:                                               ; preds = %10
  %22 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 9
  br label %47

23:                                               ; preds = %10
  %24 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 11
  br label %47

25:                                               ; preds = %10
  %26 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 12
  br label %47

27:                                               ; preds = %10
  %28 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 13
  br label %47

29:                                               ; preds = %10
  %30 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 14
  br label %47

31:                                               ; preds = %10
  %32 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 8
  br label %47

33:                                               ; preds = %10
  %34 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 18
  br label %47

35:                                               ; preds = %10
  %36 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 19
  br label %47

37:                                               ; preds = %10
  %38 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 15
  br label %47

39:                                               ; preds = %10
  %40 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 16
  br label %47

41:                                               ; preds = %10
  %42 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 17
  br label %47

43:                                               ; preds = %10
  %44 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 20
  br label %47

45:                                               ; preds = %10
  %46 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 5
  br label %47

47:                                               ; preds = %45, %43, %41, %39, %37, %35, %33, %31, %29, %27, %25, %23, %21, %19, %17, %15, %13, %11
  %48 = phi ptr [ %46, %45 ], [ %44, %43 ], [ %42, %41 ], [ %40, %39 ], [ %38, %37 ], [ %36, %35 ], [ %34, %33 ], [ %32, %31 ], [ %30, %29 ], [ %28, %27 ], [ %26, %25 ], [ %24, %23 ], [ %22, %21 ], [ %20, %19 ], [ %18, %17 ], [ %16, %15 ], [ %14, %13 ], [ %12, %11 ]
  switch i32 %2, label %475 [
    i32 2, label %49
    i32 179, label %57
    i32 180, label %59
    i32 181, label %61
    i32 3, label %65
    i32 4, label %75
    i32 5, label %85
    i32 10, label %95
    i32 11, label %97
    i32 12, label %107
    i32 13, label %109
    i32 14, label %111
    i32 15, label %113
    i32 16, label %115
    i32 17, label %119
    i32 18, label %123
    i32 19, label %125
    i32 20, label %127
    i32 6, label %129
    i32 7, label %131
    i32 8, label %133
    i32 9, label %135
    i32 21, label %137
    i32 22, label %139
    i32 23, label %141
    i32 24, label %143
    i32 192, label %145
    i32 25, label %147
    i32 26, label %149
    i32 27, label %151
    i32 89, label %153
    i32 90, label %155
    i32 91, label %157
    i32 92, label %159
    i32 28, label %161
    i32 29, label %163
    i32 30, label %165
    i32 31, label %167
    i32 32, label %169
    i32 33, label %171
    i32 34, label %173
    i32 35, label %175
    i32 36, label %177
    i32 37, label %179
    i32 38, label %181
    i32 39, label %183
    i32 40, label %185
    i32 126, label %187
    i32 134, label %189
    i32 127, label %191
    i32 41, label %193
    i32 42, label %195
    i32 43, label %197
    i32 47, label %199
    i32 48, label %201
    i32 135, label %203
    i32 136, label %205
    i32 137, label %207
    i32 138, label %209
    i32 44, label %211
    i32 45, label %213
    i32 46, label %215
    i32 74, label %217
    i32 75, label %219
    i32 76, label %221
    i32 77, label %223
    i32 78, label %225
    i32 79, label %227
    i32 80, label %229
    i32 81, label %231
    i32 82, label %233
    i32 83, label %235
    i32 84, label %237
    i32 85, label %239
    i32 86, label %241
    i32 87, label %243
    i32 88, label %245
    i32 49, label %247
    i32 50, label %249
    i32 51, label %251
    i32 52, label %253
    i32 53, label %255
    i32 64, label %257
    i32 65, label %259
    i32 54, label %261
    i32 55, label %263
    i32 58, label %265
    i32 56, label %267
    i32 57, label %269
    i32 59, label %271
    i32 60, label %273
    i32 63, label %275
    i32 61, label %277
    i32 62, label %279
    i32 160, label %281
    i32 161, label %283
    i32 66, label %285
    i32 67, label %287
    i32 69, label %289
    i32 70, label %291
    i32 71, label %293
    i32 68, label %295
    i32 72, label %297
    i32 73, label %299
    i32 93, label %301
    i32 94, label %303
    i32 95, label %305
    i32 96, label %307
    i32 97, label %309
    i32 98, label %311
    i32 99, label %313
    i32 100, label %315
    i32 101, label %317
    i32 102, label %319
    i32 103, label %321
    i32 105, label %323
    i32 106, label %325
    i32 104, label %327
    i32 107, label %329
    i32 108, label %331
    i32 109, label %333
    i32 139, label %335
    i32 116, label %337
    i32 117, label %339
    i32 118, label %341
    i32 119, label %343
    i32 120, label %345
    i32 121, label %347
    i32 122, label %349
    i32 123, label %351
    i32 124, label %353
    i32 125, label %355
    i32 110, label %357
    i32 111, label %359
    i32 112, label %361
    i32 113, label %363
    i32 114, label %365
    i32 115, label %367
    i32 128, label %369
    i32 129, label %371
    i32 130, label %373
    i32 131, label %375
    i32 132, label %377
    i32 133, label %379
    i32 150, label %381
    i32 151, label %383
    i32 152, label %385
    i32 153, label %387
    i32 154, label %389
    i32 155, label %391
    i32 156, label %393
    i32 157, label %395
    i32 159, label %397
    i32 158, label %399
    i32 140, label %401
    i32 141, label %403
    i32 142, label %405
    i32 143, label %407
    i32 144, label %409
    i32 145, label %411
    i32 146, label %413
    i32 147, label %415
    i32 148, label %417
    i32 149, label %419
    i32 162, label %421
    i32 163, label %423
    i32 164, label %425
    i32 165, label %427
    i32 166, label %429
    i32 167, label %431
    i32 168, label %433
    i32 169, label %435
    i32 170, label %437
    i32 171, label %439
    i32 172, label %441
    i32 173, label %443
    i32 174, label %445
    i32 175, label %447
    i32 176, label %449
    i32 177, label %451
    i32 178, label %453
    i32 182, label %455
    i32 183, label %457
    i32 184, label %459
    i32 185, label %461
    i32 186, label %463
    i32 187, label %465
    i32 188, label %467
    i32 189, label %469
    i32 190, label %471
    i32 191, label %473
  ]

49:                                               ; preds = %47
  %50 = load i32, ptr @theme_regionid, align 4, !tbaa !34
  switch i32 %50, label %55 [
    i32 0, label %475
    i32 2, label %51
    i32 1, label %53
  ]

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 16
  br label %475

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 4
  br label %475

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 12
  br label %475

57:                                               ; preds = %47
  %58 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 21
  br label %475

59:                                               ; preds = %47
  %60 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 21, i32 1
  br label %475

61:                                               ; preds = %47
  %62 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 21, i32 2
  %63 = load i32, ptr %62, align 4, !tbaa !38
  %64 = trunc i32 %63 to i8
  store i8 %64, ptr @UI_ThemeGetColorPtr.setting, align 1, !tbaa !43
  br label %475

65:                                               ; preds = %47
  %66 = load i32, ptr @theme_regionid, align 4, !tbaa !34
  switch i32 %66, label %73 [
    i32 0, label %67
    i32 2, label %69
    i32 1, label %71
  ]

67:                                               ; preds = %65
  %68 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 2
  br label %475

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 18
  br label %475

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 6
  br label %475

73:                                               ; preds = %65
  %74 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 14
  br label %475

75:                                               ; preds = %47
  %76 = load i32, ptr @theme_regionid, align 4, !tbaa !34
  switch i32 %76, label %83 [
    i32 0, label %77
    i32 2, label %79
    i32 1, label %81
  ]

77:                                               ; preds = %75
  %78 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 3
  br label %475

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 19
  br label %475

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 7
  br label %475

83:                                               ; preds = %75
  %84 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 15
  br label %475

85:                                               ; preds = %47
  %86 = load i32, ptr @theme_regionid, align 4, !tbaa !34
  switch i32 %86, label %93 [
    i32 0, label %87
    i32 2, label %89
    i32 1, label %91
  ]

87:                                               ; preds = %85
  %88 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 1
  br label %475

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 17
  br label %475

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 5
  br label %475

93:                                               ; preds = %85
  %94 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 13
  br label %475

95:                                               ; preds = %47
  %96 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 4
  br label %475

97:                                               ; preds = %47
  %98 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 4
  %99 = load i8, ptr %98, align 1, !tbaa !43
  %100 = tail call i8 @llvm.usub.sat.i8(i8 %99, i8 10)
  store i8 %100, ptr @UI_ThemeGetColorPtr.headerdesel, align 1, !tbaa !43
  %101 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 4, i64 1
  %102 = load i8, ptr %101, align 1, !tbaa !43
  %103 = tail call i8 @llvm.usub.sat.i8(i8 %102, i8 10)
  store i8 %103, ptr getelementptr inbounds ([4 x i8], ptr @UI_ThemeGetColorPtr.headerdesel, i64 0, i64 1), align 1, !tbaa !43
  %104 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 4, i64 2
  %105 = load i8, ptr %104, align 1, !tbaa !43
  %106 = tail call i8 @llvm.usub.sat.i8(i8 %105, i8 10)
  store i8 %106, ptr getelementptr inbounds ([4 x i8], ptr @UI_ThemeGetColorPtr.headerdesel, i64 0, i64 2), align 1, !tbaa !43
  br label %475

107:                                              ; preds = %47
  %108 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 6
  br label %475

109:                                              ; preds = %47
  %110 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 7
  br label %475

111:                                              ; preds = %47
  %112 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 20
  br label %475

113:                                              ; preds = %47
  %114 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 20, i32 1
  br label %475

115:                                              ; preds = %47
  %116 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 20, i32 2
  %117 = load i16, ptr %116, align 4, !tbaa !44
  %118 = trunc i16 %117 to i8
  store i8 %118, ptr @UI_ThemeGetColorPtr.setting, align 1, !tbaa !43
  br label %475

119:                                              ; preds = %47
  %120 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 20, i32 3
  %121 = load i16, ptr %120, align 2, !tbaa !45
  %122 = trunc i16 %121 to i8
  store i8 %122, ptr @UI_ThemeGetColorPtr.setting, align 1, !tbaa !43
  br label %475

123:                                              ; preds = %47
  %124 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 12
  br label %475

125:                                              ; preds = %47
  %126 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 14
  br label %475

127:                                              ; preds = %47
  %128 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 15
  br label %475

129:                                              ; preds = %47
  %130 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 8
  br label %475

131:                                              ; preds = %47
  %132 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 9
  br label %475

133:                                              ; preds = %47
  %134 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 10
  br label %475

135:                                              ; preds = %47
  %136 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 11
  br label %475

137:                                              ; preds = %47
  %138 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 22
  br label %475

139:                                              ; preds = %47
  %140 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 23
  br label %475

141:                                              ; preds = %47
  %142 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 24
  br label %475

143:                                              ; preds = %47
  %144 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 25
  br label %475

145:                                              ; preds = %47
  %146 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 26
  br label %475

147:                                              ; preds = %47
  %148 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 27
  br label %475

149:                                              ; preds = %47
  %150 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 110
  br label %475

151:                                              ; preds = %47
  %152 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 28
  br label %475

153:                                              ; preds = %47
  %154 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 30
  br label %475

155:                                              ; preds = %47
  %156 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 31
  br label %475

157:                                              ; preds = %47
  %158 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 33
  br label %475

159:                                              ; preds = %47
  %160 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 32
  br label %475

161:                                              ; preds = %47
  %162 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 29
  br label %475

163:                                              ; preds = %47
  %164 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 34
  br label %475

165:                                              ; preds = %47
  %166 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 35
  br label %475

167:                                              ; preds = %47
  %168 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 36
  br label %475

169:                                              ; preds = %47
  %170 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 37
  br label %475

171:                                              ; preds = %47
  %172 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 38
  br label %475

173:                                              ; preds = %47
  %174 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 39
  br label %475

175:                                              ; preds = %47
  %176 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 40
  br label %475

177:                                              ; preds = %47
  %178 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 99
  br label %475

179:                                              ; preds = %47
  %180 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 100
  br label %475

181:                                              ; preds = %47
  %182 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 41
  br label %475

183:                                              ; preds = %47
  %184 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 42
  br label %475

185:                                              ; preds = %47
  %186 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 43
  br label %475

187:                                              ; preds = %47
  %188 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 44
  br label %475

189:                                              ; preds = %47
  %190 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 46
  br label %475

191:                                              ; preds = %47
  %192 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 128
  br label %475

193:                                              ; preds = %47
  %194 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 45
  br label %475

195:                                              ; preds = %47
  %196 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 47
  br label %475

197:                                              ; preds = %47
  %198 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 48
  br label %475

199:                                              ; preds = %47
  %200 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 49
  br label %475

201:                                              ; preds = %47
  %202 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 101
  br label %475

203:                                              ; preds = %47
  %204 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 50
  br label %475

205:                                              ; preds = %47
  %206 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 51
  br label %475

207:                                              ; preds = %47
  %208 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 53
  br label %475

209:                                              ; preds = %47
  %210 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 52
  br label %475

211:                                              ; preds = %47
  %212 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 54
  br label %475

213:                                              ; preds = %47
  %214 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 55
  br label %475

215:                                              ; preds = %47
  %216 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 56
  br label %475

217:                                              ; preds = %47
  %218 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 57
  br label %475

219:                                              ; preds = %47
  %220 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 58
  br label %475

221:                                              ; preds = %47
  %222 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 59
  br label %475

223:                                              ; preds = %47
  %224 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 60
  br label %475

225:                                              ; preds = %47
  %226 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 61
  br label %475

227:                                              ; preds = %47
  %228 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 83
  br label %475

229:                                              ; preds = %47
  %230 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 87
  br label %475

231:                                              ; preds = %47
  %232 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 84
  br label %475

233:                                              ; preds = %47
  %234 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 88
  br label %475

235:                                              ; preds = %47
  %236 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 85
  br label %475

237:                                              ; preds = %47
  %238 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 89
  br label %475

239:                                              ; preds = %47
  %240 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 86
  br label %475

241:                                              ; preds = %47
  %242 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 90
  br label %475

243:                                              ; preds = %47
  %244 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 91
  br label %475

245:                                              ; preds = %47
  %246 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 92
  br label %475

247:                                              ; preds = %47
  %248 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 62
  br label %475

249:                                              ; preds = %47
  %250 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 65
  br label %475

251:                                              ; preds = %47
  %252 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 66
  br label %475

253:                                              ; preds = %47
  %254 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 68
  br label %475

255:                                              ; preds = %47
  %256 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 69
  br label %475

257:                                              ; preds = %47
  %258 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 67
  br label %475

259:                                              ; preds = %47
  %260 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 70
  br label %475

261:                                              ; preds = %47
  %262 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 71
  br label %475

263:                                              ; preds = %47
  %264 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 72
  br label %475

265:                                              ; preds = %47
  %266 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 75
  br label %475

267:                                              ; preds = %47
  %268 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 73
  br label %475

269:                                              ; preds = %47
  %270 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 74
  br label %475

271:                                              ; preds = %47
  %272 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 76
  br label %475

273:                                              ; preds = %47
  %274 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 77
  br label %475

275:                                              ; preds = %47
  %276 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 80
  br label %475

277:                                              ; preds = %47
  %278 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 78
  br label %475

279:                                              ; preds = %47
  %280 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 79
  br label %475

281:                                              ; preds = %47
  %282 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 63
  br label %475

283:                                              ; preds = %47
  %284 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 64
  br label %475

285:                                              ; preds = %47
  %286 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 105
  br label %475

287:                                              ; preds = %47
  %288 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 107
  br label %475

289:                                              ; preds = %47
  %290 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 108
  br label %475

291:                                              ; preds = %47
  %292 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 103
  br label %475

293:                                              ; preds = %47
  %294 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 109
  br label %475

295:                                              ; preds = %47
  %296 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 110
  br label %475

297:                                              ; preds = %47
  %298 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 106
  br label %475

299:                                              ; preds = %47
  %300 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 104
  br label %475

301:                                              ; preds = %47
  %302 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 103
  br label %475

303:                                              ; preds = %47
  %304 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 106
  br label %475

305:                                              ; preds = %47
  %306 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 111
  br label %475

307:                                              ; preds = %47
  %308 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 105
  br label %475

309:                                              ; preds = %47
  %310 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 112
  br label %475

311:                                              ; preds = %47
  %312 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 113
  br label %475

313:                                              ; preds = %47
  %314 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 114
  br label %475

315:                                              ; preds = %47
  %316 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 117
  br label %475

317:                                              ; preds = %47
  %318 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 116
  br label %475

319:                                              ; preds = %47
  %320 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 118
  br label %475

321:                                              ; preds = %47
  %322 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 115
  br label %475

323:                                              ; preds = %47
  %324 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 107
  br label %475

325:                                              ; preds = %47
  %326 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 108
  br label %475

327:                                              ; preds = %47
  %328 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 93
  br label %475

329:                                              ; preds = %47
  %330 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 119
  br label %475

331:                                              ; preds = %47
  %332 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 104
  br label %475

333:                                              ; preds = %47
  %334 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 109
  br label %475

335:                                              ; preds = %47
  %336 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 102
  br label %475

337:                                              ; preds = %47
  %338 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 119
  br label %475

339:                                              ; preds = %47
  %340 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 120
  br label %475

341:                                              ; preds = %47
  %342 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 121
  br label %475

343:                                              ; preds = %47
  %344 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 122
  br label %475

345:                                              ; preds = %47
  %346 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 123
  br label %475

347:                                              ; preds = %47
  %348 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 124
  br label %475

349:                                              ; preds = %47
  %350 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 125
  br label %475

351:                                              ; preds = %47
  %352 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 126
  br label %475

353:                                              ; preds = %47
  %354 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 127
  br label %475

355:                                              ; preds = %47
  %356 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 144
  br label %475

357:                                              ; preds = %47
  %358 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 93
  br label %475

359:                                              ; preds = %47
  %360 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 94
  br label %475

361:                                              ; preds = %47
  %362 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 95
  br label %475

363:                                              ; preds = %47
  %364 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 96
  br label %475

365:                                              ; preds = %47
  %366 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 97
  br label %475

367:                                              ; preds = %47
  %368 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 98
  br label %475

369:                                              ; preds = %47
  %370 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 129
  br label %475

371:                                              ; preds = %47
  %372 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 130
  br label %475

373:                                              ; preds = %47
  %374 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 132
  br label %475

375:                                              ; preds = %47
  %376 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 81
  br label %475

377:                                              ; preds = %47
  %378 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 82
  br label %475

379:                                              ; preds = %47
  %380 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 144
  br label %475

381:                                              ; preds = %47
  %382 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 145
  br label %475

383:                                              ; preds = %47
  %384 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 146
  br label %475

385:                                              ; preds = %47
  %386 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 147
  br label %475

387:                                              ; preds = %47
  %388 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 148
  br label %475

389:                                              ; preds = %47
  %390 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 149
  br label %475

391:                                              ; preds = %47
  %392 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 150
  br label %475

393:                                              ; preds = %47
  %394 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 177
  br label %475

395:                                              ; preds = %47
  %396 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 176
  br label %475

397:                                              ; preds = %47
  %398 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 152
  br label %475

399:                                              ; preds = %47
  %400 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 151
  br label %475

401:                                              ; preds = %47
  %402 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 133
  br label %475

403:                                              ; preds = %47
  %404 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 134
  br label %475

405:                                              ; preds = %47
  %406 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 135
  br label %475

407:                                              ; preds = %47
  %408 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 136
  br label %475

409:                                              ; preds = %47
  %410 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 139
  br label %475

411:                                              ; preds = %47
  %412 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 137
  br label %475

413:                                              ; preds = %47
  %414 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 140
  br label %475

415:                                              ; preds = %47
  %416 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 141
  br label %475

417:                                              ; preds = %47
  %418 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 142
  br label %475

419:                                              ; preds = %47
  %420 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 138
  br label %475

421:                                              ; preds = %47
  %422 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 153
  br label %475

423:                                              ; preds = %47
  %424 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 154
  br label %475

425:                                              ; preds = %47
  %426 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 155
  br label %475

427:                                              ; preds = %47
  %428 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 156
  br label %475

429:                                              ; preds = %47
  %430 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 157
  br label %475

431:                                              ; preds = %47
  %432 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 158
  br label %475

433:                                              ; preds = %47
  %434 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 159
  br label %475

435:                                              ; preds = %47
  %436 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 160
  br label %475

437:                                              ; preds = %47
  %438 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 161
  br label %475

439:                                              ; preds = %47
  %440 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 162
  br label %475

441:                                              ; preds = %47
  %442 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 163
  br label %475

443:                                              ; preds = %47
  %444 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 164
  br label %475

445:                                              ; preds = %47
  %446 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 165
  br label %475

447:                                              ; preds = %47
  %448 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 3, i32 20
  br label %475

449:                                              ; preds = %47
  %450 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 3, i32 26
  br label %475

451:                                              ; preds = %47
  %452 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 3, i32 27
  br label %475

453:                                              ; preds = %47
  %454 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 3, i32 28
  br label %475

455:                                              ; preds = %47
  %456 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 166
  br label %475

457:                                              ; preds = %47
  %458 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 167
  br label %475

459:                                              ; preds = %47
  %460 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 168
  br label %475

461:                                              ; preds = %47
  %462 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 169
  br label %475

463:                                              ; preds = %47
  %464 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 170
  br label %475

465:                                              ; preds = %47
  %466 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 171
  br label %475

467:                                              ; preds = %47
  %468 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 172
  br label %475

469:                                              ; preds = %47
  %470 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 173
  br label %475

471:                                              ; preds = %47
  %472 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 174
  br label %475

473:                                              ; preds = %47
  %474 = getelementptr inbounds %struct.ThemeSpace, ptr %48, i64 0, i32 175
  br label %475

475:                                              ; preds = %7, %49, %87, %91, %93, %89, %77, %81, %83, %79, %67, %71, %73, %69, %53, %55, %51, %47, %473, %471, %469, %467, %465, %463, %461, %459, %457, %455, %453, %451, %449, %447, %445, %443, %441, %439, %437, %435, %433, %431, %429, %427, %425, %423, %421, %419, %417, %415, %413, %411, %409, %407, %405, %403, %401, %399, %397, %395, %393, %391, %389, %387, %385, %383, %381, %379, %377, %375, %373, %371, %369, %367, %365, %363, %361, %359, %357, %355, %353, %351, %349, %347, %345, %343, %341, %339, %337, %335, %333, %331, %329, %327, %325, %323, %321, %319, %317, %315, %313, %311, %309, %307, %305, %303, %301, %299, %297, %295, %293, %291, %289, %287, %285, %283, %281, %279, %277, %275, %273, %271, %269, %267, %265, %263, %261, %259, %257, %255, %253, %251, %249, %247, %245, %243, %241, %239, %237, %235, %233, %231, %229, %227, %225, %223, %221, %219, %217, %215, %213, %211, %209, %207, %205, %203, %201, %199, %197, %195, %193, %191, %189, %187, %185, %183, %181, %179, %177, %175, %173, %171, %169, %167, %165, %163, %161, %159, %157, %155, %153, %151, %149, %147, %145, %143, %141, %139, %137, %135, %133, %131, %129, %127, %125, %123, %119, %115, %113, %111, %109, %107, %97, %95, %61, %59, %57, %3
  %476 = phi ptr [ @UI_ThemeGetColorPtr.error, %47 ], [ %474, %473 ], [ %472, %471 ], [ %470, %469 ], [ %468, %467 ], [ %466, %465 ], [ %464, %463 ], [ %462, %461 ], [ %460, %459 ], [ %458, %457 ], [ %456, %455 ], [ %454, %453 ], [ %452, %451 ], [ %450, %449 ], [ %448, %447 ], [ %446, %445 ], [ %444, %443 ], [ %442, %441 ], [ %440, %439 ], [ %438, %437 ], [ %436, %435 ], [ %434, %433 ], [ %432, %431 ], [ %430, %429 ], [ %428, %427 ], [ %426, %425 ], [ %424, %423 ], [ %422, %421 ], [ %420, %419 ], [ %418, %417 ], [ %416, %415 ], [ %414, %413 ], [ %412, %411 ], [ %410, %409 ], [ %408, %407 ], [ %406, %405 ], [ %404, %403 ], [ %402, %401 ], [ %400, %399 ], [ %398, %397 ], [ %396, %395 ], [ %394, %393 ], [ %392, %391 ], [ %390, %389 ], [ %388, %387 ], [ %386, %385 ], [ %384, %383 ], [ %382, %381 ], [ %380, %379 ], [ %378, %377 ], [ %376, %375 ], [ %374, %373 ], [ %372, %371 ], [ %370, %369 ], [ %368, %367 ], [ %366, %365 ], [ %364, %363 ], [ %362, %361 ], [ %360, %359 ], [ %358, %357 ], [ %356, %355 ], [ %354, %353 ], [ %352, %351 ], [ %350, %349 ], [ %348, %347 ], [ %346, %345 ], [ %344, %343 ], [ %342, %341 ], [ %340, %339 ], [ %338, %337 ], [ %336, %335 ], [ %334, %333 ], [ %332, %331 ], [ %330, %329 ], [ %328, %327 ], [ %326, %325 ], [ %324, %323 ], [ %322, %321 ], [ %320, %319 ], [ %318, %317 ], [ %316, %315 ], [ %314, %313 ], [ %312, %311 ], [ %310, %309 ], [ %308, %307 ], [ %306, %305 ], [ %304, %303 ], [ %302, %301 ], [ %300, %299 ], [ %298, %297 ], [ %296, %295 ], [ %294, %293 ], [ %292, %291 ], [ %290, %289 ], [ %288, %287 ], [ %286, %285 ], [ %284, %283 ], [ %282, %281 ], [ %280, %279 ], [ %278, %277 ], [ %276, %275 ], [ %274, %273 ], [ %272, %271 ], [ %270, %269 ], [ %268, %267 ], [ %266, %265 ], [ %264, %263 ], [ %262, %261 ], [ %260, %259 ], [ %258, %257 ], [ %256, %255 ], [ %254, %253 ], [ %252, %251 ], [ %250, %249 ], [ %248, %247 ], [ %246, %245 ], [ %244, %243 ], [ %242, %241 ], [ %240, %239 ], [ %238, %237 ], [ %236, %235 ], [ %234, %233 ], [ %232, %231 ], [ %230, %229 ], [ %228, %227 ], [ %226, %225 ], [ %224, %223 ], [ %222, %221 ], [ %220, %219 ], [ %218, %217 ], [ %216, %215 ], [ %214, %213 ], [ %212, %211 ], [ %210, %209 ], [ %208, %207 ], [ %206, %205 ], [ %204, %203 ], [ %202, %201 ], [ %200, %199 ], [ %198, %197 ], [ %196, %195 ], [ %194, %193 ], [ %192, %191 ], [ %190, %189 ], [ %188, %187 ], [ %186, %185 ], [ %184, %183 ], [ %182, %181 ], [ %180, %179 ], [ %178, %177 ], [ %176, %175 ], [ %174, %173 ], [ %172, %171 ], [ %170, %169 ], [ %168, %167 ], [ %166, %165 ], [ %164, %163 ], [ %162, %161 ], [ %160, %159 ], [ %158, %157 ], [ %156, %155 ], [ %154, %153 ], [ %152, %151 ], [ %150, %149 ], [ %148, %147 ], [ %146, %145 ], [ %144, %143 ], [ %142, %141 ], [ %140, %139 ], [ %138, %137 ], [ %136, %135 ], [ %134, %133 ], [ %132, %131 ], [ %130, %129 ], [ %128, %127 ], [ %126, %125 ], [ %124, %123 ], [ @UI_ThemeGetColorPtr.setting, %119 ], [ @UI_ThemeGetColorPtr.setting, %115 ], [ %114, %113 ], [ %112, %111 ], [ %110, %109 ], [ %108, %107 ], [ @UI_ThemeGetColorPtr.headerdesel, %97 ], [ %96, %95 ], [ %88, %87 ], [ %90, %89 ], [ %92, %91 ], [ %94, %93 ], [ %78, %77 ], [ %80, %79 ], [ %82, %81 ], [ %84, %83 ], [ %68, %67 ], [ %70, %69 ], [ %72, %71 ], [ %74, %73 ], [ @UI_ThemeGetColorPtr.setting, %61 ], [ %60, %59 ], [ %58, %57 ], [ %52, %51 ], [ %54, %53 ], [ %56, %55 ], [ @UI_ThemeGetColorPtr.error, %3 ], [ %9, %7 ], [ %48, %49 ]
  ret ptr %476
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local void @ui_theme_init_default() local_unnamed_addr #0 {
  %1 = tail call ptr @BLI_findstring(ptr noundef nonnull getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), ptr noundef nonnull @.str, i32 noundef 16) #16
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %5 = tail call ptr %4(i64 noundef 13528, ptr noundef nonnull @.str.1) #16
  tail call void @BLI_addtail(ptr noundef nonnull getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), ptr noundef %5) #16
  %6 = getelementptr inbounds %struct.bTheme, ptr %5, i64 0, i32 2
  store i64 32770348699510084, ptr %6, align 1
  br label %7

7:                                                ; preds = %3, %0
  %8 = phi ptr [ %5, %3 ], [ %1, %0 ]
  %9 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !48
  store ptr %9, ptr @theme_active, align 8, !tbaa !46
  store i32 1, ptr @theme_spacetype, align 4, !tbaa !34
  store i32 0, ptr @theme_regionid, align 4, !tbaa !34
  %10 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 3
  tail call void @ui_widget_color_init(ptr noundef nonnull %10) #16
  %11 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 3, i32 24
  store i8 0, ptr %11, align 8, !tbaa !43
  %12 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 3, i32 19
  %13 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 3, i32 19, i32 3
  store i16 0, ptr %13, align 2, !tbaa !54
  %14 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 3, i32 19, i32 2
  store i16 0, ptr %14, align 8, !tbaa !59
  store i8 0, ptr %12, align 1, !tbaa !43
  %15 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 3, i32 19, i32 0, i64 1
  store i8 0, ptr %15, align 1, !tbaa !43
  %16 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 3, i32 19, i32 0, i64 2
  store i8 0, ptr %16, align 1, !tbaa !43
  %17 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 3, i32 19, i32 0, i64 3
  store i8 25, ptr %17, align 1, !tbaa !43
  %18 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 3, i32 20
  store i8 -1, ptr %18, align 1, !tbaa !43
  %19 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 3, i32 20, i64 1
  store i8 -1, ptr %19, align 1, !tbaa !43
  %20 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 3, i32 20, i64 2
  store i8 -1, ptr %20, align 1, !tbaa !43
  %21 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 3, i32 20, i64 3
  store i8 5, ptr %21, align 1, !tbaa !43
  %22 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 3, i32 26
  store i8 -36, ptr %22, align 1, !tbaa !43
  %23 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 3, i32 26, i64 1
  store i8 0, ptr %23, align 1, !tbaa !43
  %24 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 3, i32 26, i64 2
  store i8 0, ptr %24, align 1, !tbaa !43
  %25 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 3, i32 26, i64 3
  store i8 -1, ptr %25, align 1, !tbaa !43
  %26 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 3, i32 27
  store i8 0, ptr %26, align 1, !tbaa !43
  %27 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 3, i32 27, i64 1
  store i8 -36, ptr %27, align 1, !tbaa !43
  %28 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 3, i32 27, i64 2
  store i8 0, ptr %28, align 1, !tbaa !43
  %29 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 3, i32 27, i64 3
  store i8 -1, ptr %29, align 1, !tbaa !43
  %30 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 3, i32 28
  store i8 0, ptr %30, align 1, !tbaa !43
  %31 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 3, i32 28, i64 1
  store i8 0, ptr %31, align 1, !tbaa !43
  %32 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 3, i32 28, i64 2
  store i8 -36, ptr %32, align 1, !tbaa !43
  %33 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 3, i32 28, i64 3
  store i8 -1, ptr %33, align 1, !tbaa !43
  %34 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 3, i32 21
  store float 5.000000e-01, ptr %34, align 4, !tbaa !60
  %35 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 3, i32 22
  store i16 12, ptr %35, align 8, !tbaa !61
  tail call fastcc void @ui_theme_init_boneColorSets(ptr noundef %8)
  tail call fastcc void @ui_theme_init_new(ptr noundef %8)
  %36 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5
  %37 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 20
  %38 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 20, i32 3
  store i16 0, ptr %38, align 2, !tbaa !62
  %39 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 20, i32 2
  store i16 0, ptr %39, align 8, !tbaa !63
  %40 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 20, i32 1
  store i8 114, ptr %40, align 1, !tbaa !43
  %41 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 20, i32 1, i64 1
  store i8 114, ptr %41, align 1, !tbaa !43
  %42 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 20, i32 1, i64 2
  store i8 114, ptr %42, align 1, !tbaa !43
  %43 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 20, i32 1, i64 3
  store i8 127, ptr %43, align 1, !tbaa !43
  store i8 0, ptr %37, align 1, !tbaa !43
  %44 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 20, i32 0, i64 1
  store i8 0, ptr %44, align 1, !tbaa !43
  %45 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 20, i32 0, i64 2
  store i8 0, ptr %45, align 1, !tbaa !43
  %46 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 20, i32 0, i64 3
  store i8 2, ptr %46, align 1, !tbaa !43
  store i8 57, ptr %36, align 1, !tbaa !43
  %47 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 0, i64 1
  store i8 57, ptr %47, align 1, !tbaa !43
  %48 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 0, i64 2
  store i8 57, ptr %48, align 1, !tbaa !43
  %49 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 0, i64 3
  store i8 -1, ptr %49, align 1, !tbaa !43
  %50 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 2
  store i8 0, ptr %50, align 1, !tbaa !43
  %51 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 2, i64 1
  store i8 0, ptr %51, align 1, !tbaa !43
  %52 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 2, i64 2
  store i8 0, ptr %52, align 1, !tbaa !43
  %53 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 2, i64 3
  %54 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %53, i8 -1, i64 5, i1 false)
  store i8 114, ptr %54, align 1, !tbaa !43
  %55 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 4, i64 1
  store i8 114, ptr %55, align 1, !tbaa !43
  %56 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 4, i64 2
  store i8 114, ptr %56, align 1, !tbaa !43
  %57 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 4, i64 3
  store i8 -1, ptr %57, align 1, !tbaa !43
  %58 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 12
  store i8 114, ptr %58, align 1, !tbaa !43
  %59 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 12, i64 1
  store i8 114, ptr %59, align 1, !tbaa !43
  %60 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 12, i64 2
  store i8 114, ptr %60, align 1, !tbaa !43
  %61 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 12, i64 3
  store i8 127, ptr %61, align 1, !tbaa !43
  %62 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 22
  store i8 -96, ptr %62, align 1, !tbaa !43
  %63 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 22, i64 1
  store i8 -96, ptr %63, align 1, !tbaa !43
  %64 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 22, i64 2
  store i8 -96, ptr %64, align 1, !tbaa !43
  %65 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 22, i64 3
  store i8 100, ptr %65, align 1, !tbaa !43
  %66 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 23
  store i8 127, ptr %66, align 1, !tbaa !43
  %67 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 23, i64 1
  store i8 112, ptr %67, align 1, !tbaa !43
  %68 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 23, i64 2
  store i8 112, ptr %68, align 1, !tbaa !43
  %69 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 23, i64 3
  store i8 100, ptr %69, align 1, !tbaa !43
  %70 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 25
  store i8 64, ptr %70, align 1, !tbaa !43
  %71 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 25, i64 1
  store i8 64, ptr %71, align 1, !tbaa !43
  %72 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 25, i64 2
  store i8 64, ptr %72, align 1, !tbaa !43
  %73 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 25, i64 3
  store i8 -1, ptr %73, align 1, !tbaa !43
  %74 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 26
  store i8 0, ptr %74, align 1, !tbaa !43
  %75 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 26, i64 1
  store i8 0, ptr %75, align 1, !tbaa !43
  %76 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 26, i64 2
  store i8 0, ptr %76, align 1, !tbaa !43
  %77 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 26, i64 3
  store i8 -1, ptr %77, align 1, !tbaa !43
  %78 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 27
  store i8 0, ptr %78, align 1, !tbaa !43
  %79 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 27, i64 1
  store i8 0, ptr %79, align 1, !tbaa !43
  %80 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 27, i64 2
  store i8 0, ptr %80, align 1, !tbaa !43
  %81 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 27, i64 3
  store i8 -1, ptr %81, align 1, !tbaa !43
  %82 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 28
  store i8 0, ptr %82, align 1, !tbaa !43
  %83 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 28, i64 1
  store i8 0, ptr %83, align 1, !tbaa !43
  %84 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 28, i64 2
  store i8 0, ptr %84, align 1, !tbaa !43
  %85 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 28, i64 3
  store i8 -1, ptr %85, align 1, !tbaa !43
  %86 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 30
  store i8 0, ptr %86, align 1, !tbaa !43
  %87 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 30, i64 1
  store i8 0, ptr %87, align 1, !tbaa !43
  %88 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 30, i64 2
  store i8 0, ptr %88, align 1, !tbaa !43
  %89 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 30, i64 3
  store i8 40, ptr %89, align 1, !tbaa !43
  %90 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 31
  store i8 0, ptr %90, align 1, !tbaa !43
  %91 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 31, i64 1
  store i8 0, ptr %91, align 1, !tbaa !43
  %92 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 31, i64 2
  store i8 0, ptr %92, align 1, !tbaa !43
  %93 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 31, i64 3
  store i8 -1, ptr %93, align 1, !tbaa !43
  %94 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 33
  store i8 0, ptr %94, align 1, !tbaa !43
  %95 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 33, i64 1
  store i8 0, ptr %95, align 1, !tbaa !43
  %96 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 33, i64 2
  store i8 0, ptr %96, align 1, !tbaa !43
  %97 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 33, i64 3
  store i8 -1, ptr %97, align 1, !tbaa !43
  %98 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 32
  store i8 0, ptr %98, align 1, !tbaa !43
  %99 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 32, i64 1
  store i8 0, ptr %99, align 1, !tbaa !43
  %100 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 32, i64 2
  store i8 0, ptr %100, align 1, !tbaa !43
  %101 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 32, i64 3
  store i8 -1, ptr %101, align 1, !tbaa !43
  %102 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 29
  store i8 -15, ptr %102, align 1, !tbaa !43
  %103 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 29, i64 1
  store i8 88, ptr %103, align 1, !tbaa !43
  %104 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 29, i64 2
  store i8 0, ptr %104, align 1, !tbaa !43
  %105 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 29, i64 3
  store i8 -1, ptr %105, align 1, !tbaa !43
  %106 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 34
  store i8 -1, ptr %106, align 1, !tbaa !43
  %107 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 34, i64 1
  store i8 -86, ptr %107, align 1, !tbaa !43
  %108 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 34, i64 2
  store i8 64, ptr %108, align 1, !tbaa !43
  %109 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 34, i64 3
  store i8 -1, ptr %109, align 1, !tbaa !43
  %110 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 35
  store i8 8, ptr %110, align 1, !tbaa !43
  %111 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 35, i64 1
  store i8 48, ptr %111, align 1, !tbaa !43
  %112 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 35, i64 2
  store i8 8, ptr %112, align 1, !tbaa !43
  %113 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 35, i64 3
  store i8 -1, ptr %113, align 1, !tbaa !43
  %114 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 36
  store i8 85, ptr %114, align 1, !tbaa !43
  %115 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 36, i64 1
  store i8 -69, ptr %115, align 1, !tbaa !43
  %116 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 36, i64 2
  store i8 85, ptr %116, align 1, !tbaa !43
  %117 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 36, i64 3
  %118 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 38
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %117, i8 -1, i64 5, i1 false)
  store i8 0, ptr %118, align 1, !tbaa !43
  %119 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 38, i64 1
  store i8 0, ptr %119, align 1, !tbaa !43
  %120 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 38, i64 2
  store i8 0, ptr %120, align 1, !tbaa !43
  %121 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 38, i64 3
  store i8 -1, ptr %121, align 1, !tbaa !43
  %122 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 39
  store i8 -1, ptr %122, align 1, !tbaa !43
  %123 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 39, i64 1
  store i8 -123, ptr %123, align 1, !tbaa !43
  %124 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 39, i64 2
  store i8 0, ptr %124, align 1, !tbaa !43
  %125 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 39, i64 3
  store i8 -1, ptr %125, align 1, !tbaa !43
  %126 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 40
  store i8 0, ptr %126, align 1, !tbaa !43
  %127 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 40, i64 1
  store i8 0, ptr %127, align 1, !tbaa !43
  %128 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 40, i64 2
  store i8 0, ptr %128, align 1, !tbaa !43
  %129 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 40, i64 3
  store i8 -1, ptr %129, align 1, !tbaa !43
  %130 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 99
  store i8 3, ptr %130, align 4, !tbaa !64
  %131 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 100
  store i8 1, ptr %131, align 1, !tbaa !65
  %132 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 41
  store i8 0, ptr %132, align 1, !tbaa !43
  %133 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 41, i64 1
  store i8 0, ptr %133, align 1, !tbaa !43
  %134 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 41, i64 2
  store i8 0, ptr %134, align 1, !tbaa !43
  %135 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 41, i64 3
  store i8 -1, ptr %135, align 1, !tbaa !43
  %136 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 42
  store i8 -1, ptr %136, align 1, !tbaa !43
  %137 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 42, i64 1
  store i8 -96, ptr %137, align 1, !tbaa !43
  %138 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 42, i64 2
  store i8 0, ptr %138, align 1, !tbaa !43
  %139 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 42, i64 3
  store i8 -1, ptr %139, align 1, !tbaa !43
  %140 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 43
  store i8 -37, ptr %140, align 1, !tbaa !43
  %141 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 43, i64 1
  store i8 37, ptr %141, align 1, !tbaa !43
  %142 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 43, i64 2
  store i8 18, ptr %142, align 1, !tbaa !43
  %143 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 43, i64 3
  store i8 -1, ptr %143, align 1, !tbaa !43
  %144 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 45
  store i8 75, ptr %144, align 1, !tbaa !43
  %145 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 45, i64 1
  store i8 75, ptr %145, align 1, !tbaa !43
  %146 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 45, i64 2
  store i8 75, ptr %146, align 1, !tbaa !43
  %147 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 45, i64 3
  store i8 -1, ptr %147, align 1, !tbaa !43
  %148 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 47
  store i8 0, ptr %148, align 1, !tbaa !43
  %149 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 47, i64 1
  store i8 0, ptr %149, align 1, !tbaa !43
  %150 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 47, i64 2
  store i8 0, ptr %150, align 1, !tbaa !43
  %151 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 47, i64 3
  store i8 18, ptr %151, align 1, !tbaa !43
  %152 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 48
  store i8 -1, ptr %152, align 1, !tbaa !43
  %153 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 48, i64 1
  store i8 -123, ptr %153, align 1, !tbaa !43
  %154 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 48, i64 2
  store i8 0, ptr %154, align 1, !tbaa !43
  %155 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 48, i64 3
  store i8 60, ptr %155, align 1, !tbaa !43
  %156 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 54
  store i8 34, ptr %156, align 1, !tbaa !43
  %157 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 54, i64 1
  store i8 -35, ptr %157, align 1, !tbaa !43
  %158 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 54, i64 2
  store i8 -35, ptr %158, align 1, !tbaa !43
  %159 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 54, i64 3
  store i8 -1, ptr %159, align 1, !tbaa !43
  %160 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 55
  store i8 35, ptr %160, align 1, !tbaa !43
  %161 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 55, i64 1
  store i8 97, ptr %161, align 1, !tbaa !43
  %162 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 55, i64 2
  store i8 -35, ptr %162, align 1, !tbaa !43
  %163 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 55, i64 3
  store i8 -1, ptr %163, align 1, !tbaa !43
  %164 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 56
  store i8 -35, ptr %164, align 1, !tbaa !43
  %165 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 56, i64 1
  store i8 35, ptr %165, align 1, !tbaa !43
  %166 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 56, i64 2
  store i8 -35, ptr %166, align 1, !tbaa !43
  %167 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 56, i64 3
  store i8 -1, ptr %167, align 1, !tbaa !43
  %168 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 49
  store i8 -1, ptr %168, align 1, !tbaa !43
  %169 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 49, i64 1
  store i8 -123, ptr %169, align 1, !tbaa !43
  %170 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 49, i64 2
  store i8 0, ptr %170, align 1, !tbaa !43
  %171 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 49, i64 3
  store i8 -1, ptr %171, align 1, !tbaa !43
  %172 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 128
  store i8 -1, ptr %172, align 1, !tbaa !43
  %173 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 128, i64 1
  store i8 -1, ptr %173, align 1, !tbaa !43
  %174 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 128, i64 2
  store i8 -1, ptr %174, align 1, !tbaa !43
  %175 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 128, i64 3
  store i8 -128, ptr %175, align 1, !tbaa !43
  %176 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 46
  store i8 -52, ptr %176, align 1, !tbaa !43
  %177 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 46, i64 1
  store i8 0, ptr %177, align 1, !tbaa !43
  %178 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 46, i64 2
  store i8 -103, ptr %178, align 1, !tbaa !43
  %179 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 46, i64 3
  store i8 -1, ptr %179, align 1, !tbaa !43
  %180 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 44
  store i8 0, ptr %180, align 1, !tbaa !43
  %181 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 44, i64 1
  store i8 -1, ptr %181, align 1, !tbaa !43
  %182 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 44, i64 2
  store i8 -1, ptr %182, align 1, !tbaa !43
  %183 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 44, i64 3
  store i8 -1, ptr %183, align 1, !tbaa !43
  %184 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 6
  store i8 0, ptr %184, align 1, !tbaa !43
  %185 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 6, i64 1
  store i8 0, ptr %185, align 1, !tbaa !43
  %186 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 6, i64 2
  store i8 0, ptr %186, align 1, !tbaa !43
  %187 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 6, i64 3
  %188 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %187, i8 -1, i64 5, i1 false)
  store i8 0, ptr %188, align 1, !tbaa !43
  %189 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 14, i64 1
  store i8 0, ptr %189, align 1, !tbaa !43
  %190 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 14, i64 2
  store i8 0, ptr %190, align 1, !tbaa !43
  %191 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 14, i64 3
  %192 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %191, i8 -1, i64 5, i1 false)
  store i8 0, ptr %192, align 1, !tbaa !43
  %193 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 13, i64 1
  store i8 0, ptr %193, align 1, !tbaa !43
  %194 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 13, i64 2
  store i8 0, ptr %194, align 1, !tbaa !43
  %195 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 13, i64 3
  store i8 -1, ptr %195, align 1, !tbaa !43
  %196 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 1
  store i8 0, ptr %196, align 1, !tbaa !43
  %197 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 1, i64 1
  store i8 0, ptr %197, align 1, !tbaa !43
  %198 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 1, i64 2
  store i8 0, ptr %198, align 1, !tbaa !43
  %199 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 1, i64 3
  store i8 -1, ptr %199, align 1, !tbaa !43
  %200 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 63
  store i8 127, ptr %200, align 1, !tbaa !43
  %201 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 63, i64 1
  store i8 -1, ptr %201, align 1, !tbaa !43
  %202 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 63, i64 2
  store i8 127, ptr %202, align 1, !tbaa !43
  %203 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 63, i64 3
  store i8 -1, ptr %203, align 1, !tbaa !43
  %204 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 64
  store i8 127, ptr %204, align 1, !tbaa !43
  %205 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 64, i64 1
  store i8 -1, ptr %205, align 1, !tbaa !43
  %206 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 64, i64 2
  store i8 127, ptr %206, align 1, !tbaa !43
  %207 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 64, i64 3
  store i8 51, ptr %207, align 1, !tbaa !43
  %208 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 177
  store i8 127, ptr %208, align 1, !tbaa !43
  %209 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 177, i64 1
  store i8 -1, ptr %209, align 1, !tbaa !43
  %210 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 177, i64 2
  store i8 127, ptr %210, align 1, !tbaa !43
  %211 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 177, i64 3
  store i8 127, ptr %211, align 1, !tbaa !43
  %212 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 176
  store i8 -1, ptr %212, align 1, !tbaa !43
  %213 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 176, i64 1
  store i8 127, ptr %213, align 1, !tbaa !43
  %214 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 176, i64 2
  store i8 127, ptr %214, align 1, !tbaa !43
  %215 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 176, i64 3
  store i8 127, ptr %215, align 1, !tbaa !43
  %216 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 101
  store i8 4, ptr %216, align 2, !tbaa !66
  %217 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 50
  store i8 32, ptr %217, align 1, !tbaa !43
  %218 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 50, i64 1
  store i8 0, ptr %218, align 1, !tbaa !43
  %219 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 50, i64 2
  store i8 0, ptr %219, align 1, !tbaa !43
  %220 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 50, i64 3
  store i8 -1, ptr %220, align 1, !tbaa !43
  %221 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 51
  store i8 32, ptr %221, align 1, !tbaa !43
  %222 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 51, i64 1
  store i8 32, ptr %222, align 1, !tbaa !43
  %223 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 51, i64 2
  store i8 0, ptr %223, align 1, !tbaa !43
  %224 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 51, i64 3
  store i8 -1, ptr %224, align 1, !tbaa !43
  %225 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 53
  store i8 0, ptr %225, align 1, !tbaa !43
  %226 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 53, i64 1
  store i8 32, ptr %226, align 1, !tbaa !43
  %227 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 53, i64 2
  store i8 0, ptr %227, align 1, !tbaa !43
  %228 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 53, i64 3
  store i8 -1, ptr %228, align 1, !tbaa !43
  %229 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 52
  store i8 0, ptr %229, align 1, !tbaa !43
  %230 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 52, i64 1
  store i8 0, ptr %230, align 1, !tbaa !43
  %231 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 52, i64 2
  store i8 -128, ptr %231, align 1, !tbaa !43
  %232 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 52, i64 3
  store i8 -1, ptr %232, align 1, !tbaa !43
  %233 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 62
  store i8 96, ptr %233, align 1, !tbaa !43
  %234 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 62, i64 1
  store i8 -64, ptr %234, align 1, !tbaa !43
  %235 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 62, i64 2
  store i8 64, ptr %235, align 1, !tbaa !43
  %236 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 62, i64 3
  store i8 -1, ptr %236, align 1, !tbaa !43
  %237 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 65
  store i8 -112, ptr %237, align 1, !tbaa !43
  %238 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 65, i64 1
  store i8 -112, ptr %238, align 1, !tbaa !43
  %239 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 65, i64 2
  store i8 0, ptr %239, align 1, !tbaa !43
  %240 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 65, i64 3
  store i8 -1, ptr %240, align 1, !tbaa !43
  %241 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 66
  store i8 -128, ptr %241, align 1, !tbaa !43
  %242 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 66, i64 1
  store i8 48, ptr %242, align 1, !tbaa !43
  %243 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 66, i64 2
  store i8 96, ptr %243, align 1, !tbaa !43
  %244 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 66, i64 3
  store i8 -1, ptr %244, align 1, !tbaa !43
  %245 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 68
  store i8 -16, ptr %245, align 1, !tbaa !43
  %246 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 68, i64 1
  store i8 -1, ptr %246, align 1, !tbaa !43
  %247 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 68, i64 2
  store i8 64, ptr %247, align 1, !tbaa !43
  %248 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 68, i64 3
  store i8 -1, ptr %248, align 1, !tbaa !43
  %249 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 69
  store i8 -16, ptr %249, align 1, !tbaa !43
  %250 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 69, i64 1
  store i8 -112, ptr %250, align 1, !tbaa !43
  %251 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 69, i64 2
  store i8 -96, ptr %251, align 1, !tbaa !43
  %252 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 69, i64 3
  store i8 -1, ptr %252, align 1, !tbaa !43
  %253 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 71
  store i8 0, ptr %253, align 1, !tbaa !43
  %254 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 71, i64 1
  store i8 0, ptr %254, align 1, !tbaa !43
  %255 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 71, i64 2
  store i8 0, ptr %255, align 1, !tbaa !43
  %256 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 71, i64 3
  store i8 -1, ptr %256, align 1, !tbaa !43
  %257 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 72
  store i8 -112, ptr %257, align 1, !tbaa !43
  %258 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 72, i64 1
  store i8 -112, ptr %258, align 1, !tbaa !43
  %259 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 72, i64 2
  store i8 0, ptr %259, align 1, !tbaa !43
  %260 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 72, i64 3
  store i8 -1, ptr %260, align 1, !tbaa !43
  %261 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 73
  store i8 64, ptr %261, align 1, !tbaa !43
  %262 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 73, i64 1
  store i8 -112, ptr %262, align 1, !tbaa !43
  %263 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 73, i64 2
  store i8 48, ptr %263, align 1, !tbaa !43
  %264 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 73, i64 3
  store i8 -1, ptr %264, align 1, !tbaa !43
  %265 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 74
  store i8 -128, ptr %265, align 1, !tbaa !43
  %266 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 74, i64 1
  store i8 48, ptr %266, align 1, !tbaa !43
  %267 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 74, i64 2
  store i8 96, ptr %267, align 1, !tbaa !43
  %268 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 74, i64 3
  store i8 -1, ptr %268, align 1, !tbaa !43
  %269 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 76
  store i8 0, ptr %269, align 1, !tbaa !43
  %270 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 76, i64 1
  store i8 0, ptr %270, align 1, !tbaa !43
  %271 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 76, i64 2
  store i8 0, ptr %271, align 1, !tbaa !43
  %272 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 76, i64 3
  store i8 -1, ptr %272, align 1, !tbaa !43
  %273 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 77
  store i8 -16, ptr %273, align 1, !tbaa !43
  %274 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 77, i64 1
  store i8 -1, ptr %274, align 1, !tbaa !43
  %275 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 77, i64 2
  store i8 64, ptr %275, align 1, !tbaa !43
  %276 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 77, i64 3
  store i8 -1, ptr %276, align 1, !tbaa !43
  %277 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 78
  store i8 64, ptr %277, align 1, !tbaa !43
  %278 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 78, i64 1
  store i8 -64, ptr %278, align 1, !tbaa !43
  %279 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 78, i64 2
  store i8 48, ptr %279, align 1, !tbaa !43
  %280 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 78, i64 3
  store i8 -1, ptr %280, align 1, !tbaa !43
  %281 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 79
  store i8 -16, ptr %281, align 1, !tbaa !43
  %282 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 79, i64 1
  store i8 -112, ptr %282, align 1, !tbaa !43
  %283 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 79, i64 2
  store i8 -96, ptr %283, align 1, !tbaa !43
  %284 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 79, i64 3
  store i8 -1, ptr %284, align 1, !tbaa !43
  %285 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 129
  store i8 0, ptr %285, align 1, !tbaa !43
  %286 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 129, i64 1
  store i8 0, ptr %286, align 1, !tbaa !43
  %287 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 129, i64 2
  store i8 0, ptr %287, align 1, !tbaa !43
  %288 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 129, i64 3
  store i8 -1, ptr %288, align 1, !tbaa !43
  %289 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 130
  store i8 -1, ptr %289, align 1, !tbaa !43
  %290 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 130, i64 1
  store i8 -1, ptr %290, align 1, !tbaa !43
  %291 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 130, i64 2
  store i8 0, ptr %291, align 1, !tbaa !43
  %292 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 130, i64 3
  store i8 -1, ptr %292, align 1, !tbaa !43
  %293 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 67
  store i8 -37, ptr %293, align 1, !tbaa !43
  %294 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 67, i64 1
  store i8 37, ptr %294, align 1, !tbaa !43
  %295 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 67, i64 2
  store i8 18, ptr %295, align 1, !tbaa !43
  %296 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 67, i64 3
  store i8 -1, ptr %296, align 1, !tbaa !43
  %297 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 67
  store i8 -37, ptr %297, align 1, !tbaa !43
  %298 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 67, i64 1
  store i8 37, ptr %298, align 1, !tbaa !43
  %299 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 67, i64 2
  store i8 18, ptr %299, align 1, !tbaa !43
  %300 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 67, i64 3
  store i8 -1, ptr %300, align 1, !tbaa !43
  %301 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 70
  %302 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 57
  store i32 -1, ptr %301, align 1
  store i8 -56, ptr %302, align 1, !tbaa !43
  %303 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 57, i64 1
  store i8 -56, ptr %303, align 1, !tbaa !43
  %304 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 57, i64 2
  store i8 -56, ptr %304, align 1, !tbaa !43
  %305 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 57, i64 3
  store i8 -1, ptr %305, align 1, !tbaa !43
  %306 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 58
  store i8 80, ptr %306, align 1, !tbaa !43
  %307 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 58, i64 1
  store i8 -56, ptr %307, align 1, !tbaa !43
  %308 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 58, i64 2
  store i8 -1, ptr %308, align 1, !tbaa !43
  %309 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 58, i64 3
  store i8 80, ptr %309, align 1, !tbaa !43
  %310 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 59
  store i8 -116, ptr %310, align 1, !tbaa !43
  %311 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 59, i64 1
  store i8 -1, ptr %311, align 1, !tbaa !43
  %312 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 59, i64 2
  store i8 -1, ptr %312, align 1, !tbaa !43
  %313 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 59, i64 3
  store i8 80, ptr %313, align 1, !tbaa !43
  %314 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 139
  store i8 -56, ptr %314, align 1, !tbaa !43
  %315 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 139, i64 1
  store i8 -56, ptr %315, align 1, !tbaa !43
  %316 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 139, i64 2
  store i8 -56, ptr %316, align 1, !tbaa !43
  %317 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 139, i64 3
  store i8 -1, ptr %317, align 1, !tbaa !43
  %318 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 142
  store i8 0, ptr %318, align 1, !tbaa !43
  %319 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 142, i64 1
  store i8 0, ptr %319, align 1, !tbaa !43
  %320 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 142, i64 2
  store i8 0, ptr %320, align 1, !tbaa !43
  %321 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 142, i64 3
  store i8 -1, ptr %321, align 1, !tbaa !43
  %322 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 155
  store i8 -76, ptr %322, align 1, !tbaa !43
  %323 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 155, i64 1
  store i8 77, ptr %323, align 1, !tbaa !43
  %324 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 155, i64 2
  store i8 77, ptr %324, align 1, !tbaa !43
  %325 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 155, i64 3
  store i8 -1, ptr %325, align 1, !tbaa !43
  %326 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 21
  %327 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 21, i32 1
  store i32 0, ptr %326, align 1
  store i8 58, ptr %327, align 1, !tbaa !43
  %328 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 21, i32 1, i64 1
  store i8 58, ptr %328, align 1, !tbaa !43
  %329 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 21, i32 1, i64 2
  store i8 58, ptr %329, align 1, !tbaa !43
  %330 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 21, i32 1, i64 3
  store i8 -1, ptr %330, align 1, !tbaa !43
  %331 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 21, i32 2
  store i32 0, ptr %331, align 8, !tbaa !67
  %332 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(720) %332, ptr noundef nonnull align 8 dereferenceable(720) %36, i64 720, i1 false), !tbaa.struct !68
  store i8 114, ptr %332, align 1, !tbaa !43
  %333 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 4, i32 0, i64 1
  store i8 114, ptr %333, align 1, !tbaa !43
  %334 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 4, i32 0, i64 2
  store i8 114, ptr %334, align 1, !tbaa !43
  %335 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 4, i32 0, i64 3
  store i8 -1, ptr %335, align 1, !tbaa !43
  %336 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(720) %336, ptr noundef nonnull align 8 dereferenceable(720) %36, i64 720, i1 false), !tbaa.struct !68
  store i8 107, ptr %336, align 1, !tbaa !43
  %337 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 0, i64 1
  store i8 107, ptr %337, align 1, !tbaa !43
  %338 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 0, i64 2
  store i8 107, ptr %338, align 1, !tbaa !43
  %339 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 0, i64 3
  store i8 -1, ptr %339, align 1, !tbaa !43
  %340 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 16
  store i8 102, ptr %340, align 1, !tbaa !43
  %341 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 16, i64 1
  store i8 102, ptr %341, align 1, !tbaa !43
  %342 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 16, i64 2
  store i8 102, ptr %342, align 1, !tbaa !43
  %343 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 16, i64 3
  store i8 -1, ptr %343, align 1, !tbaa !43
  %344 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 25
  store i8 94, ptr %344, align 1, !tbaa !43
  %345 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 25, i64 1
  store i8 94, ptr %345, align 1, !tbaa !43
  %346 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 25, i64 2
  store i8 94, ptr %346, align 1, !tbaa !43
  %347 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 25, i64 3
  store i8 -1, ptr %347, align 1, !tbaa !43
  %348 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 22
  store i8 -106, ptr %348, align 1, !tbaa !43
  %349 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 22, i64 1
  store i8 -106, ptr %349, align 1, !tbaa !43
  %350 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 22, i64 2
  store i8 -106, ptr %350, align 1, !tbaa !43
  %351 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 22, i64 3
  store i8 100, ptr %351, align 1, !tbaa !43
  %352 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 23
  store i8 112, ptr %352, align 1, !tbaa !43
  %353 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 23, i64 1
  store i8 112, ptr %353, align 1, !tbaa !43
  %354 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 23, i64 2
  store i8 112, ptr %354, align 1, !tbaa !43
  %355 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 23, i64 3
  store i8 100, ptr %355, align 1, !tbaa !43
  %356 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 38
  store i8 0, ptr %356, align 1, !tbaa !43
  %357 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 38, i64 1
  store i8 0, ptr %357, align 1, !tbaa !43
  %358 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 38, i64 2
  store i8 0, ptr %358, align 1, !tbaa !43
  %359 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 38, i64 3
  store i8 -1, ptr %359, align 1, !tbaa !43
  %360 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 39
  store i8 -1, ptr %360, align 1, !tbaa !43
  %361 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 39, i64 1
  store i8 -123, ptr %361, align 1, !tbaa !43
  %362 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 39, i64 2
  store i8 0, ptr %362, align 1, !tbaa !43
  %363 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 39, i64 3
  store i8 -1, ptr %363, align 1, !tbaa !43
  %364 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 24
  store i8 96, ptr %364, align 1, !tbaa !43
  %365 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 24, i64 1
  store i8 -64, ptr %365, align 1, !tbaa !43
  %366 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 24, i64 2
  store i8 64, ptr %366, align 1, !tbaa !43
  %367 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 24, i64 3
  store i8 -1, ptr %367, align 1, !tbaa !43
  %368 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 99
  store i8 6, ptr %368, align 4, !tbaa !70
  %369 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 129
  store i8 0, ptr %369, align 1, !tbaa !43
  %370 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 129, i64 1
  store i8 0, ptr %370, align 1, !tbaa !43
  %371 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 129, i64 2
  store i8 0, ptr %371, align 1, !tbaa !43
  %372 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 129, i64 3
  store i8 -1, ptr %372, align 1, !tbaa !43
  %373 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 130
  store i8 -1, ptr %373, align 1, !tbaa !43
  %374 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 130, i64 1
  store i8 -123, ptr %374, align 1, !tbaa !43
  %375 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 130, i64 2
  store i8 0, ptr %375, align 1, !tbaa !43
  %376 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 130, i64 3
  store i8 -1, ptr %376, align 1, !tbaa !43
  %377 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 75
  store i8 -103, ptr %377, align 1, !tbaa !43
  %378 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 75, i64 1
  store i8 64, ptr %378, align 1, !tbaa !43
  %379 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 75, i64 2
  store i8 48, ptr %379, align 1, !tbaa !43
  %380 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 75, i64 3
  store i8 -1, ptr %380, align 1, !tbaa !43
  %381 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 80
  store i8 -16, ptr %381, align 1, !tbaa !43
  %382 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 80, i64 1
  store i8 -81, ptr %382, align 1, !tbaa !43
  %383 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 80, i64 2
  store i8 -112, ptr %383, align 1, !tbaa !43
  %384 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 80, i64 3
  store i8 -1, ptr %384, align 1, !tbaa !43
  %385 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 132
  store i8 5, ptr %385, align 4, !tbaa !71
  %386 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 81
  store i8 82, ptr %386, align 1, !tbaa !43
  %387 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 81, i64 1
  store i8 96, ptr %387, align 1, !tbaa !43
  %388 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 81, i64 2
  store i8 110, ptr %388, align 1, !tbaa !43
  %389 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 81, i64 3
  store i8 -1, ptr %389, align 1, !tbaa !43
  %390 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 82
  store i8 124, ptr %390, align 1, !tbaa !43
  %391 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 82, i64 1
  store i8 -119, ptr %391, align 1, !tbaa !43
  %392 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 82, i64 2
  store i8 -106, ptr %392, align 1, !tbaa !43
  %393 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 82, i64 3
  store i8 -1, ptr %393, align 1, !tbaa !43
  %394 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 35
  store i8 79, ptr %394, align 1, !tbaa !43
  %395 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 35, i64 1
  store i8 101, ptr %395, align 1, !tbaa !43
  %396 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 35, i64 2
  store i8 73, ptr %396, align 1, !tbaa !43
  %397 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 35, i64 3
  store i8 -1, ptr %397, align 1, !tbaa !43
  %398 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 36
  store i8 -121, ptr %398, align 1, !tbaa !43
  %399 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 36, i64 1
  store i8 -79, ptr %399, align 1, !tbaa !43
  %400 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 36, i64 2
  store i8 125, ptr %400, align 1, !tbaa !43
  %401 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 36, i64 3
  store i8 -1, ptr %401, align 1, !tbaa !43
  %402 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(720) %402, ptr noundef nonnull align 8 dereferenceable(720) %336, i64 720, i1 false), !tbaa.struct !68
  %403 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9, i32 60
  store i8 12, ptr %403, align 1, !tbaa !43
  %404 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9, i32 60, i64 1
  store i8 10, ptr %404, align 1, !tbaa !43
  %405 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9, i32 60, i64 2
  store i8 10, ptr %405, align 1, !tbaa !43
  %406 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9, i32 60, i64 3
  store i8 -128, ptr %406, align 1, !tbaa !43
  %407 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9, i32 61
  store i8 -1, ptr %407, align 1, !tbaa !43
  %408 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9, i32 61, i64 1
  store i8 -116, ptr %408, align 1, !tbaa !43
  %409 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9, i32 61, i64 2
  store i8 0, ptr %409, align 1, !tbaa !43
  %410 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9, i32 61, i64 3
  store i8 -1, ptr %410, align 1, !tbaa !43
  %411 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9, i32 156
  store i8 -52, ptr %411, align 1, !tbaa !43
  %412 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9, i32 156, i64 1
  store i8 112, ptr %412, align 1, !tbaa !43
  %413 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9, i32 156, i64 2
  store i8 26, ptr %413, align 1, !tbaa !43
  %414 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9, i32 156, i64 3
  store i8 102, ptr %414, align 1, !tbaa !43
  %415 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9, i32 83
  store i8 -24, ptr %415, align 1, !tbaa !43
  %416 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9, i32 83, i64 1
  store i8 -24, ptr %416, align 1, !tbaa !43
  %417 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9, i32 83, i64 2
  store i8 -24, ptr %417, align 1, !tbaa !43
  %418 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9, i32 83, i64 3
  store i8 -1, ptr %418, align 1, !tbaa !43
  %419 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9, i32 87
  store i8 -1, ptr %419, align 1, !tbaa !43
  %420 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9, i32 87, i64 1
  store i8 -66, ptr %420, align 1, !tbaa !43
  %421 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9, i32 87, i64 2
  store i8 50, ptr %421, align 1, !tbaa !43
  %422 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9, i32 87, i64 3
  store i8 -1, ptr %422, align 1, !tbaa !43
  %423 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9, i32 84
  store i8 -24, ptr %423, align 1, !tbaa !43
  %424 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9, i32 84, i64 1
  store i8 -77, ptr %424, align 1, !tbaa !43
  %425 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9, i32 84, i64 2
  store i8 -52, ptr %425, align 1, !tbaa !43
  %426 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9, i32 84, i64 3
  store i8 -1, ptr %426, align 1, !tbaa !43
  %427 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9, i32 88
  store i8 -14, ptr %427, align 1, !tbaa !43
  %428 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9, i32 88, i64 1
  store i8 -128, ptr %428, align 1, !tbaa !43
  %429 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9, i32 88, i64 2
  store i8 -128, ptr %429, align 1, !tbaa !43
  %430 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9, i32 88, i64 3
  store i8 -1, ptr %430, align 1, !tbaa !43
  %431 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9, i32 85
  store i8 -77, ptr %431, align 1, !tbaa !43
  %432 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9, i32 85, i64 1
  store i8 -37, ptr %432, align 1, !tbaa !43
  %433 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9, i32 85, i64 2
  store i8 -24, ptr %433, align 1, !tbaa !43
  %434 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9, i32 85, i64 3
  store i8 -1, ptr %434, align 1, !tbaa !43
  %435 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9, i32 89
  store i8 84, ptr %435, align 1, !tbaa !43
  %436 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9, i32 89, i64 1
  store i8 -65, ptr %436, align 1, !tbaa !43
  %437 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9, i32 89, i64 2
  store i8 -19, ptr %437, align 1, !tbaa !43
  %438 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9, i32 89, i64 3
  store i8 -1, ptr %438, align 1, !tbaa !43
  %439 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9, i32 86
  store i8 -108, ptr %439, align 1, !tbaa !43
  %440 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9, i32 86, i64 1
  store i8 -27, ptr %440, align 1, !tbaa !43
  %441 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9, i32 86, i64 2
  store i8 117, ptr %441, align 1, !tbaa !43
  %442 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9, i32 86, i64 3
  store i8 -1, ptr %442, align 1, !tbaa !43
  %443 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9, i32 90
  store i8 97, ptr %443, align 1, !tbaa !43
  %444 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9, i32 90, i64 1
  store i8 -64, ptr %444, align 1, !tbaa !43
  %445 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9, i32 90, i64 2
  store i8 66, ptr %445, align 1, !tbaa !43
  %446 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9, i32 90, i64 3
  store i8 -1, ptr %446, align 1, !tbaa !43
  %447 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9, i32 91
  store i8 0, ptr %447, align 1, !tbaa !43
  %448 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9, i32 91, i64 1
  store i8 0, ptr %448, align 1, !tbaa !43
  %449 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9, i32 91, i64 2
  store i8 0, ptr %449, align 1, !tbaa !43
  %450 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9, i32 91, i64 3
  store i8 -1, ptr %450, align 1, !tbaa !43
  %451 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9, i32 92
  store i8 0, ptr %451, align 1, !tbaa !43
  %452 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9, i32 92, i64 1
  store i8 0, ptr %452, align 1, !tbaa !43
  %453 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9, i32 92, i64 2
  store i8 0, ptr %453, align 1, !tbaa !43
  %454 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9, i32 92, i64 3
  store i8 -1, ptr %454, align 1, !tbaa !43
  %455 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(720) %455, ptr noundef nonnull align 8 dereferenceable(720) %402, i64 720, i1 false), !tbaa.struct !68
  %456 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 10, i32 156
  store i8 -52, ptr %456, align 1, !tbaa !43
  %457 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 10, i32 156, i64 1
  store i8 112, ptr %457, align 1, !tbaa !43
  %458 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 10, i32 156, i64 2
  store i8 26, ptr %458, align 1, !tbaa !43
  %459 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 10, i32 156, i64 3
  store i8 102, ptr %459, align 1, !tbaa !43
  %460 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 10, i32 157
  store i8 -103, ptr %460, align 1, !tbaa !43
  %461 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 10, i32 157, i64 1
  store i8 -121, ptr %461, align 1, !tbaa !43
  %462 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 10, i32 157, i64 2
  store i8 97, ptr %462, align 1, !tbaa !43
  %463 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 10, i32 157, i64 3
  store i8 77, ptr %463, align 1, !tbaa !43
  %464 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 10, i32 158
  store i8 77, ptr %464, align 1, !tbaa !43
  %465 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 10, i32 158, i64 1
  store i8 -13, ptr %465, align 1, !tbaa !43
  %466 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 10, i32 158, i64 2
  store i8 26, ptr %466, align 1, !tbaa !43
  %467 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 10, i32 158, i64 3
  store i8 77, ptr %467, align 1, !tbaa !43
  %468 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 10, i32 159
  store i8 -39, ptr %468, align 1, !tbaa !43
  %469 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 10, i32 159, i64 1
  store i8 0, ptr %469, align 1, !tbaa !43
  %470 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 10, i32 159, i64 2
  store i8 0, ptr %470, align 1, !tbaa !43
  %471 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 10, i32 159, i64 3
  store i8 -1, ptr %471, align 1, !tbaa !43
  %472 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 10, i32 160
  store i8 28, ptr %472, align 1, !tbaa !43
  %473 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 10, i32 160, i64 1
  store i8 38, ptr %473, align 1, !tbaa !43
  %474 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 10, i32 160, i64 2
  store i8 48, ptr %474, align 1, !tbaa !43
  %475 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 10, i32 160, i64 3
  store i8 -1, ptr %475, align 1, !tbaa !43
  %476 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 10, i32 161
  store i8 46, ptr %476, align 1, !tbaa !43
  %477 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 10, i32 161, i64 1
  store i8 117, ptr %477, align 1, !tbaa !43
  %478 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 10, i32 161, i64 2
  store i8 -37, ptr %478, align 1, !tbaa !43
  %479 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 10, i32 161, i64 3
  store i8 -1, ptr %479, align 1, !tbaa !43
  %480 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 10, i32 162
  store i8 51, ptr %480, align 1, !tbaa !43
  %481 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 10, i32 162, i64 1
  store i8 38, ptr %481, align 1, !tbaa !43
  %482 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 10, i32 162, i64 2
  store i8 66, ptr %482, align 1, !tbaa !43
  %483 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 10, i32 162, i64 3
  store i8 -1, ptr %483, align 1, !tbaa !43
  %484 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 10, i32 163
  store i8 105, ptr %484, align 1, !tbaa !43
  %485 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 10, i32 163, i64 1
  store i8 33, ptr %485, align 1, !tbaa !43
  %486 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 10, i32 163, i64 2
  store i8 -106, ptr %486, align 1, !tbaa !43
  %487 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 10, i32 163, i64 3
  store i8 -1, ptr %487, align 1, !tbaa !43
  %488 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 10, i32 164
  store i8 43, ptr %488, align 1, !tbaa !43
  %489 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 10, i32 164, i64 1
  store i8 61, ptr %489, align 1, !tbaa !43
  %490 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 10, i32 164, i64 2
  store i8 61, ptr %490, align 1, !tbaa !43
  %491 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 10, i32 164, i64 3
  store i8 -1, ptr %491, align 1, !tbaa !43
  %492 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 10, i32 165
  store i8 31, ptr %492, align 1, !tbaa !43
  %493 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 10, i32 165, i64 1
  store i8 122, ptr %493, align 1, !tbaa !43
  %494 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 10, i32 165, i64 2
  store i8 122, ptr %494, align 1, !tbaa !43
  %495 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 10, i32 165, i64 3
  store i8 -1, ptr %495, align 1, !tbaa !43
  %496 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 10, i32 91
  store i8 0, ptr %496, align 1, !tbaa !43
  %497 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 10, i32 91, i64 1
  store i8 0, ptr %497, align 1, !tbaa !43
  %498 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 10, i32 91, i64 2
  store i8 0, ptr %498, align 1, !tbaa !43
  %499 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 10, i32 91, i64 3
  store i8 -1, ptr %499, align 1, !tbaa !43
  %500 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 10, i32 92
  store i8 0, ptr %500, align 1, !tbaa !43
  %501 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 10, i32 92, i64 1
  store i8 0, ptr %501, align 1, !tbaa !43
  %502 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 10, i32 92, i64 2
  store i8 0, ptr %502, align 1, !tbaa !43
  %503 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 10, i32 92, i64 3
  store i8 -1, ptr %503, align 1, !tbaa !43
  %504 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(720) %504, ptr noundef nonnull align 8 dereferenceable(720) %36, i64 720, i1 false), !tbaa.struct !68
  store i8 76, ptr %504, align 1, !tbaa !43
  %505 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 6, i32 0, i64 1
  store i8 76, ptr %505, align 1, !tbaa !43
  %506 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 6, i32 0, i64 2
  store i8 76, ptr %506, align 1, !tbaa !43
  %507 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 6, i32 0, i64 3
  store i8 -1, ptr %507, align 1, !tbaa !43
  %508 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 6, i32 16
  store i8 102, ptr %508, align 1, !tbaa !43
  %509 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 6, i32 16, i64 1
  store i8 102, ptr %509, align 1, !tbaa !43
  %510 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 6, i32 16, i64 2
  store i8 102, ptr %510, align 1, !tbaa !43
  %511 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 6, i32 16, i64 3
  store i8 -1, ptr %511, align 1, !tbaa !43
  %512 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 6, i32 2
  store i8 -6, ptr %512, align 1, !tbaa !43
  %513 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 6, i32 2, i64 1
  store i8 -6, ptr %513, align 1, !tbaa !43
  %514 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 6, i32 2, i64 2
  store i8 -6, ptr %514, align 1, !tbaa !43
  %515 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 6, i32 2, i64 3
  store i8 -1, ptr %515, align 1, !tbaa !43
  %516 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 6, i32 3
  store i8 15, ptr %516, align 1, !tbaa !43
  %517 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 6, i32 3, i64 1
  store i8 15, ptr %517, align 1, !tbaa !43
  %518 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 6, i32 3, i64 2
  store i8 15, ptr %518, align 1, !tbaa !43
  %519 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 6, i32 3, i64 3
  store i8 -1, ptr %519, align 1, !tbaa !43
  %520 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 6, i32 34
  store i8 -126, ptr %520, align 1, !tbaa !43
  %521 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 6, i32 34, i64 1
  store i8 -126, ptr %521, align 1, !tbaa !43
  %522 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 6, i32 34, i64 2
  store i8 -126, ptr %522, align 1, !tbaa !43
  %523 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 6, i32 34, i64 3
  store i8 -1, ptr %523, align 1, !tbaa !43
  %524 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 6, i32 24
  store i8 -1, ptr %524, align 1, !tbaa !43
  %525 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 6, i32 24, i64 1
  store i8 -116, ptr %525, align 1, !tbaa !43
  %526 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 6, i32 24, i64 2
  store i8 25, ptr %526, align 1, !tbaa !43
  %527 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 6, i32 24, i64 3
  store i8 -1, ptr %527, align 1, !tbaa !43
  %528 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 6, i32 25
  store i8 -6, ptr %528, align 1, !tbaa !43
  %529 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 6, i32 25, i64 1
  store i8 -6, ptr %529, align 1, !tbaa !43
  %530 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 6, i32 25, i64 2
  store i8 -6, ptr %530, align 1, !tbaa !43
  %531 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 6, i32 25, i64 3
  store i8 -1, ptr %531, align 1, !tbaa !43
  %532 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 6, i32 122
  store i8 -6, ptr %532, align 1, !tbaa !43
  %533 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 6, i32 122, i64 1
  store i8 -6, ptr %533, align 1, !tbaa !43
  %534 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 6, i32 122, i64 2
  store i8 -6, ptr %534, align 1, !tbaa !43
  %535 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 6, i32 122, i64 3
  store i8 -1, ptr %535, align 1, !tbaa !43
  %536 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 6, i32 119
  store i8 -6, ptr %536, align 1, !tbaa !43
  %537 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 6, i32 119, i64 1
  store i8 -6, ptr %537, align 1, !tbaa !43
  %538 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 6, i32 119, i64 2
  store i8 -6, ptr %538, align 1, !tbaa !43
  %539 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 6, i32 119, i64 3
  store i8 -1, ptr %539, align 1, !tbaa !43
  %540 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 6, i32 123
  store i8 -6, ptr %540, align 1, !tbaa !43
  %541 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 6, i32 123, i64 1
  store i8 -6, ptr %541, align 1, !tbaa !43
  %542 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 6, i32 123, i64 2
  store i8 -6, ptr %542, align 1, !tbaa !43
  %543 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 6, i32 123, i64 3
  store i8 -1, ptr %543, align 1, !tbaa !43
  %544 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(720) %544, ptr noundef nonnull align 8 dereferenceable(720) %36, i64 720, i1 false), !tbaa.struct !68
  store i8 116, ptr %544, align 1, !tbaa !43
  %545 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 11, i32 0, i64 1
  store i8 116, ptr %545, align 1, !tbaa !43
  %546 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 11, i32 0, i64 2
  store i8 116, ptr %546, align 1, !tbaa !43
  %547 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 11, i32 0, i64 3
  store i8 -1, ptr %547, align 1, !tbaa !43
  %548 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 11, i32 119
  store i8 81, ptr %548, align 1, !tbaa !43
  %549 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 11, i32 119, i64 1
  store i8 105, ptr %549, align 1, !tbaa !43
  %550 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 11, i32 119, i64 2
  store i8 -121, ptr %550, align 1, !tbaa !43
  %551 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 11, i32 119, i64 3
  store i8 -1, ptr %551, align 1, !tbaa !43
  %552 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 11, i32 120
  store i8 32, ptr %552, align 1, !tbaa !43
  %553 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 11, i32 120, i64 1
  store i8 32, ptr %553, align 1, !tbaa !43
  %554 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 11, i32 120, i64 2
  store i8 -113, ptr %554, align 1, !tbaa !43
  %555 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 11, i32 120, i64 3
  store i8 -1, ptr %555, align 1, !tbaa !43
  %556 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 11, i32 121
  store i8 -104, ptr %556, align 1, !tbaa !43
  %557 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 11, i32 121, i64 1
  store i8 78, ptr %557, align 1, !tbaa !43
  %558 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 11, i32 121, i64 2
  store i8 62, ptr %558, align 1, !tbaa !43
  %559 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 11, i32 121, i64 3
  store i8 -1, ptr %559, align 1, !tbaa !43
  %560 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 11, i32 122
  store i8 109, ptr %560, align 1, !tbaa !43
  %561 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 11, i32 122, i64 1
  store i8 88, ptr %561, align 1, !tbaa !43
  %562 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 11, i32 122, i64 2
  store i8 -127, ptr %562, align 1, !tbaa !43
  %563 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 11, i32 122, i64 3
  store i8 -1, ptr %563, align 1, !tbaa !43
  %564 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 11, i32 123
  store i8 78, ptr %564, align 1, !tbaa !43
  %565 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 11, i32 123, i64 1
  store i8 -104, ptr %565, align 1, !tbaa !43
  %566 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 11, i32 123, i64 2
  store i8 62, ptr %566, align 1, !tbaa !43
  %567 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 11, i32 123, i64 3
  store i8 -1, ptr %567, align 1, !tbaa !43
  %568 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 11, i32 124
  store i8 46, ptr %568, align 1, !tbaa !43
  %569 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 11, i32 124, i64 1
  store i8 -113, ptr %569, align 1, !tbaa !43
  %570 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 11, i32 124, i64 2
  store i8 -113, ptr %570, align 1, !tbaa !43
  %571 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 11, i32 124, i64 3
  store i8 -1, ptr %571, align 1, !tbaa !43
  %572 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 11, i32 125
  store i8 -87, ptr %572, align 1, !tbaa !43
  %573 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 11, i32 125, i64 1
  store i8 84, ptr %573, align 1, !tbaa !43
  %574 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 11, i32 125, i64 2
  store i8 124, ptr %574, align 1, !tbaa !43
  %575 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 11, i32 125, i64 3
  store i8 -1, ptr %575, align 1, !tbaa !43
  %576 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 11, i32 126
  store i8 -94, ptr %576, align 1, !tbaa !43
  %577 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 11, i32 126, i64 1
  store i8 95, ptr %577, align 1, !tbaa !43
  %578 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 11, i32 126, i64 2
  store i8 111, ptr %578, align 1, !tbaa !43
  %579 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 11, i32 126, i64 3
  store i8 -1, ptr %579, align 1, !tbaa !43
  %580 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 11, i32 127
  store i8 109, ptr %580, align 1, !tbaa !43
  %581 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 11, i32 127, i64 1
  store i8 -111, ptr %581, align 1, !tbaa !43
  %582 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 11, i32 127, i64 2
  store i8 -125, ptr %582, align 1, !tbaa !43
  %583 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 11, i32 127, i64 3
  store i8 -1, ptr %583, align 1, !tbaa !43
  %584 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 11, i32 144
  store i8 0, ptr %584, align 1, !tbaa !43
  %585 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 11, i32 144, i64 1
  store i8 0, ptr %585, align 1, !tbaa !43
  %586 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 11, i32 144, i64 2
  store i8 0, ptr %586, align 1, !tbaa !43
  %587 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 11, i32 144, i64 3
  store i8 -1, ptr %587, align 1, !tbaa !43
  %588 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 11, i32 25
  store i8 64, ptr %588, align 1, !tbaa !43
  %589 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 11, i32 25, i64 1
  store i8 64, ptr %589, align 1, !tbaa !43
  %590 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 11, i32 25, i64 2
  store i8 64, ptr %590, align 1, !tbaa !43
  %591 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 11, i32 25, i64 3
  store i8 -1, ptr %591, align 1, !tbaa !43
  %592 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(720) %592, ptr noundef nonnull align 8 dereferenceable(720) %36, i64 720, i1 false), !tbaa.struct !68
  store i8 53, ptr %592, align 1, !tbaa !43
  %593 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 0, i64 1
  store i8 53, ptr %593, align 1, !tbaa !43
  %594 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 0, i64 2
  store i8 53, ptr %594, align 1, !tbaa !43
  %595 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 0, i64 3
  store i8 -1, ptr %595, align 1, !tbaa !43
  %596 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 38
  store i8 0, ptr %596, align 1, !tbaa !43
  %597 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 38, i64 1
  store i8 0, ptr %597, align 1, !tbaa !43
  %598 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 38, i64 2
  store i8 0, ptr %598, align 1, !tbaa !43
  %599 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 38, i64 3
  store i8 -1, ptr %599, align 1, !tbaa !43
  %600 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 39
  store i8 -1, ptr %600, align 1, !tbaa !43
  %601 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 39, i64 1
  store i8 -123, ptr %601, align 1, !tbaa !43
  %602 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 39, i64 2
  store i8 0, ptr %602, align 1, !tbaa !43
  %603 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 39, i64 3
  store i8 -1, ptr %603, align 1, !tbaa !43
  %604 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 28
  store i8 -64, ptr %604, align 1, !tbaa !43
  %605 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 28, i64 1
  store i8 -64, ptr %605, align 1, !tbaa !43
  %606 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 28, i64 2
  store i8 -64, ptr %606, align 1, !tbaa !43
  %607 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 28, i64 3
  store i8 -1, ptr %607, align 1, !tbaa !43
  %608 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 42
  store i8 -1, ptr %608, align 1, !tbaa !43
  %609 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 42, i64 1
  store i8 -123, ptr %609, align 1, !tbaa !43
  %610 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 42, i64 2
  store i8 0, ptr %610, align 1, !tbaa !43
  %611 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 42, i64 3
  store i8 -1, ptr %611, align 1, !tbaa !43
  %612 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 99
  store i8 3, ptr %612, align 4, !tbaa !72
  %613 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 101
  store i8 3, ptr %613, align 2, !tbaa !73
  %614 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 47
  store i8 -1, ptr %614, align 1, !tbaa !43
  %615 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 47, i64 1
  store i8 -1, ptr %615, align 1, !tbaa !43
  %616 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 47, i64 2
  store i8 -1, ptr %616, align 1, !tbaa !43
  %617 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 47, i64 3
  store i8 10, ptr %617, align 1, !tbaa !43
  %618 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 48
  store i8 -1, ptr %618, align 1, !tbaa !43
  %619 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 48, i64 1
  store i8 -123, ptr %619, align 1, !tbaa !43
  %620 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 48, i64 2
  store i8 0, ptr %620, align 1, !tbaa !43
  %621 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 48, i64 3
  store i8 60, ptr %621, align 1, !tbaa !43
  %622 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 128
  store i8 -1, ptr %622, align 1, !tbaa !43
  %623 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 128, i64 1
  store i8 -1, ptr %623, align 1, !tbaa !43
  %624 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 128, i64 2
  store i8 -1, ptr %624, align 1, !tbaa !43
  %625 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 128, i64 3
  store i8 -128, ptr %625, align 1, !tbaa !43
  %626 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 144
  store i8 114, ptr %626, align 1, !tbaa !43
  %627 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 144, i64 1
  store i8 114, ptr %627, align 1, !tbaa !43
  %628 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 144, i64 2
  store i8 114, ptr %628, align 1, !tbaa !43
  %629 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 144, i64 3
  store i8 -1, ptr %629, align 1, !tbaa !43
  %630 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 145
  store i8 127, ptr %630, align 1, !tbaa !43
  %631 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 145, i64 1
  store i8 127, ptr %631, align 1, !tbaa !43
  %632 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 145, i64 2
  store i8 0, ptr %632, align 1, !tbaa !43
  %633 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 145, i64 3
  store i8 51, ptr %633, align 1, !tbaa !43
  %634 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 146
  store i8 -1, ptr %634, align 1, !tbaa !43
  %635 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 146, i64 1
  store i8 0, ptr %635, align 1, !tbaa !43
  %636 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 146, i64 2
  store i8 -1, ptr %636, align 1, !tbaa !43
  %637 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 146, i64 3
  store i8 51, ptr %637, align 1, !tbaa !43
  %638 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 147
  store i8 0, ptr %638, align 1, !tbaa !43
  %639 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 147, i64 1
  store i8 0, ptr %639, align 1, !tbaa !43
  %640 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 147, i64 2
  store i8 -1, ptr %640, align 1, !tbaa !43
  %641 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 147, i64 3
  store i8 51, ptr %641, align 1, !tbaa !43
  %642 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 148
  store i8 0, ptr %642, align 1, !tbaa !43
  %643 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 148, i64 1
  store i8 -1, ptr %643, align 1, !tbaa !43
  %644 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 148, i64 2
  store i8 0, ptr %644, align 1, !tbaa !43
  %645 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 148, i64 3
  store i8 -1, ptr %645, align 1, !tbaa !43
  %646 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 149
  store i8 -1, ptr %646, align 1, !tbaa !43
  %647 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 149, i64 1
  store i8 0, ptr %647, align 1, !tbaa !43
  %648 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 149, i64 2
  store i8 0, ptr %648, align 1, !tbaa !43
  %649 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 149, i64 3
  store i8 -1, ptr %649, align 1, !tbaa !43
  %650 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 150
  store i8 -31, ptr %650, align 1, !tbaa !43
  %651 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 150, i64 1
  store i8 -46, ptr %651, align 1, !tbaa !43
  %652 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 150, i64 2
  store i8 -61, ptr %652, align 1, !tbaa !43
  %653 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 150, i64 3
  store i8 35, ptr %653, align 1, !tbaa !43
  %654 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 152, i64 3
  %655 = load i8, ptr %654, align 1, !tbaa !43
  %656 = icmp eq i8 %655, 0
  br i1 %656, label %657, label %661

657:                                              ; preds = %7
  %658 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 152
  store i8 96, ptr %658, align 1, !tbaa !43
  %659 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 152, i64 1
  store i8 96, ptr %659, align 1, !tbaa !43
  %660 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 152, i64 2
  store i8 96, ptr %660, align 1, !tbaa !43
  store i8 -1, ptr %654, align 1, !tbaa !43
  br label %661

661:                                              ; preds = %7, %657
  %662 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 151, i64 3
  %663 = load i8, ptr %662, align 1, !tbaa !43
  %664 = icmp eq i8 %663, 0
  br i1 %664, label %665, label %669

665:                                              ; preds = %661
  %666 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 151
  store i8 112, ptr %666, align 1, !tbaa !43
  %667 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 151, i64 1
  store i8 112, ptr %667, align 1, !tbaa !43
  %668 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 151, i64 2
  store i8 112, ptr %668, align 1, !tbaa !43
  store i8 -1, ptr %662, align 1, !tbaa !43
  br label %669

669:                                              ; preds = %661, %665
  %670 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 71
  store i8 0, ptr %670, align 1, !tbaa !43
  %671 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 71, i64 1
  store i8 0, ptr %671, align 1, !tbaa !43
  %672 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 71, i64 2
  store i8 0, ptr %672, align 1, !tbaa !43
  %673 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 71, i64 3
  store i8 -1, ptr %673, align 1, !tbaa !43
  %674 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 72
  store i8 -112, ptr %674, align 1, !tbaa !43
  %675 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 72, i64 1
  store i8 -112, ptr %675, align 1, !tbaa !43
  %676 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 72, i64 2
  store i8 0, ptr %676, align 1, !tbaa !43
  %677 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 72, i64 3
  store i8 -1, ptr %677, align 1, !tbaa !43
  %678 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 73
  store i8 64, ptr %678, align 1, !tbaa !43
  %679 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 73, i64 1
  store i8 -112, ptr %679, align 1, !tbaa !43
  %680 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 73, i64 2
  store i8 48, ptr %680, align 1, !tbaa !43
  %681 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 73, i64 3
  store i8 -1, ptr %681, align 1, !tbaa !43
  %682 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 74
  store i8 -128, ptr %682, align 1, !tbaa !43
  %683 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 74, i64 1
  store i8 48, ptr %683, align 1, !tbaa !43
  %684 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 74, i64 2
  store i8 96, ptr %684, align 1, !tbaa !43
  %685 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 74, i64 3
  store i8 -1, ptr %685, align 1, !tbaa !43
  %686 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 76
  store i8 0, ptr %686, align 1, !tbaa !43
  %687 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 76, i64 1
  store i8 0, ptr %687, align 1, !tbaa !43
  %688 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 76, i64 2
  store i8 0, ptr %688, align 1, !tbaa !43
  %689 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 76, i64 3
  store i8 -1, ptr %689, align 1, !tbaa !43
  %690 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 77
  store i8 -16, ptr %690, align 1, !tbaa !43
  %691 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 77, i64 1
  store i8 -1, ptr %691, align 1, !tbaa !43
  %692 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 77, i64 2
  store i8 64, ptr %692, align 1, !tbaa !43
  %693 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 77, i64 3
  store i8 -1, ptr %693, align 1, !tbaa !43
  %694 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 78
  store i8 64, ptr %694, align 1, !tbaa !43
  %695 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 78, i64 1
  store i8 -64, ptr %695, align 1, !tbaa !43
  %696 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 78, i64 2
  store i8 48, ptr %696, align 1, !tbaa !43
  %697 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 78, i64 3
  store i8 -1, ptr %697, align 1, !tbaa !43
  %698 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 79
  store i8 -16, ptr %698, align 1, !tbaa !43
  %699 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 79, i64 1
  store i8 -112, ptr %699, align 1, !tbaa !43
  %700 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 79, i64 2
  store i8 -96, ptr %700, align 1, !tbaa !43
  %701 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 79, i64 3
  store i8 -1, ptr %701, align 1, !tbaa !43
  %702 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 129
  store i8 0, ptr %702, align 1, !tbaa !43
  %703 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 129, i64 1
  store i8 0, ptr %703, align 1, !tbaa !43
  %704 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 129, i64 2
  store i8 0, ptr %704, align 1, !tbaa !43
  %705 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 129, i64 3
  store i8 -1, ptr %705, align 1, !tbaa !43
  %706 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 130
  store i8 -1, ptr %706, align 1, !tbaa !43
  %707 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 130, i64 1
  store i8 -1, ptr %707, align 1, !tbaa !43
  %708 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 130, i64 2
  store i8 0, ptr %708, align 1, !tbaa !43
  %709 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 130, i64 3
  store i8 -1, ptr %709, align 1, !tbaa !43
  %710 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 67
  store i8 -37, ptr %710, align 1, !tbaa !43
  %711 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 67, i64 1
  store i8 37, ptr %711, align 1, !tbaa !43
  %712 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 67, i64 2
  store i8 18, ptr %712, align 1, !tbaa !43
  %713 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 67, i64 3
  store i8 -1, ptr %713, align 1, !tbaa !43
  %714 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 132
  store i8 5, ptr %714, align 4, !tbaa !74
  %715 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(720) %715, ptr noundef nonnull align 8 dereferenceable(720) %36, i64 720, i1 false), !tbaa.struct !68
  store i8 -103, ptr %715, align 1, !tbaa !43
  %716 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 13, i32 0, i64 1
  store i8 -103, ptr %716, align 1, !tbaa !43
  %717 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 13, i32 0, i64 2
  store i8 -103, ptr %717, align 1, !tbaa !43
  %718 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 13, i32 0, i64 3
  store i8 -1, ptr %718, align 1, !tbaa !43
  %719 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 13, i32 22
  store i8 -113, ptr %719, align 1, !tbaa !43
  %720 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 13, i32 22, i64 1
  store i8 -113, ptr %720, align 1, !tbaa !43
  %721 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 13, i32 22, i64 2
  store i8 -113, ptr %721, align 1, !tbaa !43
  %722 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 13, i32 22, i64 3
  store i8 -1, ptr %722, align 1, !tbaa !43
  %723 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 13, i32 23
  store i8 -58, ptr %723, align 1, !tbaa !43
  %724 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 13, i32 23, i64 1
  store i8 119, ptr %724, align 1, !tbaa !43
  %725 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 13, i32 23, i64 2
  store i8 119, ptr %725, align 1, !tbaa !43
  %726 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 13, i32 23, i64 3
  store i8 -1, ptr %726, align 1, !tbaa !43
  %727 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 13, i32 24
  store i8 -1, ptr %727, align 1, !tbaa !43
  %728 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 13, i32 24, i64 1
  store i8 0, ptr %728, align 1, !tbaa !43
  %729 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 13, i32 24, i64 2
  store i8 0, ptr %729, align 1, !tbaa !43
  %730 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 13, i32 24, i64 3
  store i8 -1, ptr %730, align 1, !tbaa !43
  %731 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 13, i32 106
  store i8 0, ptr %731, align 1, !tbaa !43
  %732 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 13, i32 106, i64 1
  store i8 0, ptr %732, align 1, !tbaa !43
  %733 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 13, i32 106, i64 2
  store i8 -56, ptr %733, align 1, !tbaa !43
  %734 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 13, i32 106, i64 3
  store i8 -1, ptr %734, align 1, !tbaa !43
  %735 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 13, i32 103
  store i8 100, ptr %735, align 1, !tbaa !43
  %736 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 13, i32 103, i64 1
  store i8 0, ptr %736, align 1, !tbaa !43
  %737 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 13, i32 103, i64 2
  store i8 0, ptr %737, align 1, !tbaa !43
  %738 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 13, i32 103, i64 3
  store i8 -1, ptr %738, align 1, !tbaa !43
  %739 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 13, i32 108
  store i8 0, ptr %739, align 1, !tbaa !43
  %740 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 13, i32 108, i64 1
  store i8 100, ptr %740, align 1, !tbaa !43
  %741 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 13, i32 108, i64 2
  store i8 50, ptr %741, align 1, !tbaa !43
  %742 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 13, i32 108, i64 3
  store i8 -1, ptr %742, align 1, !tbaa !43
  %743 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 13, i32 107
  store i8 95, ptr %743, align 1, !tbaa !43
  %744 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 13, i32 107, i64 1
  store i8 95, ptr %744, align 1, !tbaa !43
  %745 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 13, i32 107, i64 2
  store i8 0, ptr %745, align 1, !tbaa !43
  %746 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 13, i32 107, i64 3
  store i8 -1, ptr %746, align 1, !tbaa !43
  %747 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 13, i32 109
  store i8 50, ptr %747, align 1, !tbaa !43
  %748 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 13, i32 109, i64 1
  store i8 0, ptr %748, align 1, !tbaa !43
  %749 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 13, i32 109, i64 2
  store i8 -116, ptr %749, align 1, !tbaa !43
  %750 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 13, i32 109, i64 3
  store i8 -1, ptr %750, align 1, !tbaa !43
  %751 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 13, i32 110
  store i8 -116, ptr %751, align 1, !tbaa !43
  %752 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 13, i32 110, i64 1
  store i8 60, ptr %752, align 1, !tbaa !43
  %753 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 13, i32 110, i64 2
  store i8 0, ptr %753, align 1, !tbaa !43
  %754 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 13, i32 110, i64 3
  store i8 -1, ptr %754, align 1, !tbaa !43
  %755 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 13, i32 105
  store i8 -128, ptr %755, align 1, !tbaa !43
  %756 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 13, i32 105, i64 1
  store i8 0, ptr %756, align 1, !tbaa !43
  %757 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 13, i32 105, i64 2
  store i8 80, ptr %757, align 1, !tbaa !43
  %758 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 13, i32 105, i64 3
  store i8 -1, ptr %758, align 1, !tbaa !43
  %759 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 13, i32 104
  store i8 76, ptr %759, align 1, !tbaa !43
  %760 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 13, i32 104, i64 1
  store i8 76, ptr %760, align 1, !tbaa !43
  %761 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 13, i32 104, i64 2
  store i8 76, ptr %761, align 1, !tbaa !43
  %762 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 13, i32 104, i64 3
  store i8 -1, ptr %762, align 1, !tbaa !43
  %763 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(720) %763, ptr noundef nonnull align 8 dereferenceable(720) %36, i64 720, i1 false), !tbaa.struct !68
  store i8 114, ptr %763, align 1, !tbaa !43
  %764 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 14, i32 0, i64 1
  store i8 114, ptr %764, align 1, !tbaa !43
  %765 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 14, i32 0, i64 2
  store i8 114, ptr %765, align 1, !tbaa !43
  %766 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 14, i32 0, i64 3
  store i8 -1, ptr %766, align 1, !tbaa !43
  %767 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 14, i32 153
  store i8 51, ptr %767, align 1, !tbaa !43
  %768 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 14, i32 153, i64 1
  store i8 127, ptr %768, align 1, !tbaa !43
  %769 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 14, i32 153, i64 2
  store i8 51, ptr %769, align 1, !tbaa !43
  %770 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 14, i32 153, i64 3
  store i8 76, ptr %770, align 1, !tbaa !43
  %771 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 14, i32 154
  store i8 -126, ptr %771, align 1, !tbaa !43
  %772 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 14, i32 154, i64 1
  store i8 -121, ptr %772, align 1, !tbaa !43
  %773 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 14, i32 154, i64 2
  store i8 -116, ptr %773, align 1, !tbaa !43
  %774 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 14, i32 154, i64 3
  store i8 76, ptr %774, align 1, !tbaa !43
  %775 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(720) %775, ptr noundef nonnull align 8 dereferenceable(720) %36, i64 720, i1 false), !tbaa.struct !68
  store i8 114, ptr %775, align 1, !tbaa !43
  %776 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 8, i32 0, i64 1
  store i8 114, ptr %776, align 1, !tbaa !43
  %777 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 8, i32 0, i64 2
  store i8 114, ptr %777, align 1, !tbaa !43
  %778 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 8, i32 0, i64 3
  store i8 -1, ptr %778, align 1, !tbaa !43
  %779 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 8, i32 166
  store i8 96, ptr %779, align 1, !tbaa !43
  %780 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 8, i32 166, i64 1
  store i8 -128, ptr %780, align 1, !tbaa !43
  %781 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 8, i32 166, i64 2
  %782 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 8, i32 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %781, i8 -1, i64 6, i1 false)
  store i8 -36, ptr %782, align 1, !tbaa !43
  %783 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 8, i32 168, i64 1
  store i8 0, ptr %783, align 1, !tbaa !43
  %784 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 8, i32 168, i64 2
  store i8 0, ptr %784, align 1, !tbaa !43
  %785 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 8, i32 168, i64 3
  store i8 -1, ptr %785, align 1, !tbaa !43
  %786 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 8, i32 169
  store i8 0, ptr %786, align 1, !tbaa !43
  %787 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 8, i32 169, i64 1
  store i8 0, ptr %787, align 1, !tbaa !43
  %788 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 8, i32 169, i64 2
  store i8 0, ptr %788, align 1, !tbaa !43
  %789 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 8, i32 169, i64 3
  store i8 -1, ptr %789, align 1, !tbaa !43
  %790 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 8, i32 170
  store i8 -36, ptr %790, align 1, !tbaa !43
  %791 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 8, i32 170, i64 1
  store i8 -128, ptr %791, align 1, !tbaa !43
  %792 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 8, i32 170, i64 2
  store i8 96, ptr %792, align 1, !tbaa !43
  %793 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 8, i32 170, i64 3
  store i8 -1, ptr %793, align 1, !tbaa !43
  %794 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 8, i32 171
  store i8 0, ptr %794, align 1, !tbaa !43
  %795 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 8, i32 171, i64 1
  store i8 0, ptr %795, align 1, !tbaa !43
  %796 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 8, i32 171, i64 2
  store i8 0, ptr %796, align 1, !tbaa !43
  %797 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 8, i32 171, i64 3
  store i8 -1, ptr %797, align 1, !tbaa !43
  %798 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 8, i32 172
  store i8 0, ptr %798, align 1, !tbaa !43
  %799 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 8, i32 172, i64 1
  store i8 -86, ptr %799, align 1, !tbaa !43
  %800 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 8, i32 172, i64 2
  store i8 0, ptr %800, align 1, !tbaa !43
  %801 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 8, i32 172, i64 3
  store i8 -1, ptr %801, align 1, !tbaa !43
  %802 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 8, i32 173
  store i8 0, ptr %802, align 1, !tbaa !43
  %803 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 8, i32 173, i64 1
  store i8 0, ptr %803, align 1, !tbaa !43
  %804 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 8, i32 173, i64 2
  store i8 0, ptr %804, align 1, !tbaa !43
  %805 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 8, i32 173, i64 3
  store i8 -1, ptr %805, align 1, !tbaa !43
  %806 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 8, i32 174
  store i8 -60, ptr %806, align 1, !tbaa !43
  %807 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 8, i32 174, i64 1
  store i8 -60, ptr %807, align 1, !tbaa !43
  %808 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 8, i32 174, i64 2
  store i8 -60, ptr %808, align 1, !tbaa !43
  %809 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 8, i32 174, i64 3
  store i8 -1, ptr %809, align 1, !tbaa !43
  %810 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 8, i32 175
  store i8 0, ptr %810, align 1, !tbaa !43
  %811 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 8, i32 175, i64 1
  store i8 0, ptr %811, align 1, !tbaa !43
  %812 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 8, i32 175, i64 2
  store i8 0, ptr %812, align 1, !tbaa !43
  %813 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 8, i32 175, i64 3
  store i8 -1, ptr %813, align 1, !tbaa !43
  %814 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(720) %814, ptr noundef nonnull align 8 dereferenceable(720) %36, i64 720, i1 false), !tbaa.struct !68
  store i8 114, ptr %814, align 1, !tbaa !43
  %815 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 18, i32 0, i64 1
  store i8 114, ptr %815, align 1, !tbaa !43
  %816 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 18, i32 0, i64 2
  store i8 114, ptr %816, align 1, !tbaa !43
  %817 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 18, i32 0, i64 3
  store i8 -1, ptr %817, align 1, !tbaa !43
  %818 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(720) %818, ptr noundef nonnull align 8 dereferenceable(720) %36, i64 720, i1 false), !tbaa.struct !68
  store i8 0, ptr %818, align 1, !tbaa !43
  %819 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 19, i32 0, i64 1
  store i8 0, ptr %819, align 1, !tbaa !43
  %820 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 19, i32 0, i64 2
  store i8 0, ptr %820, align 1, !tbaa !43
  %821 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 19, i32 0, i64 3
  store i8 -1, ptr %821, align 1, !tbaa !43
  %822 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 19, i32 93
  store i8 96, ptr %822, align 1, !tbaa !43
  %823 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 19, i32 93, i64 1
  store i8 -128, ptr %823, align 1, !tbaa !43
  %824 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 19, i32 93, i64 2
  %825 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 19, i32 95
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %824, i8 -1, i64 6, i1 false)
  store i8 0, ptr %825, align 1, !tbaa !43
  %826 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 19, i32 95, i64 1
  store i8 -86, ptr %826, align 1, !tbaa !43
  %827 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 19, i32 95, i64 2
  store i8 0, ptr %827, align 1, !tbaa !43
  %828 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 19, i32 95, i64 3
  store i8 -1, ptr %828, align 1, !tbaa !43
  %829 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 19, i32 96
  store i8 -36, ptr %829, align 1, !tbaa !43
  %830 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 19, i32 96, i64 1
  store i8 96, ptr %830, align 1, !tbaa !43
  %831 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 19, i32 96, i64 2
  store i8 96, ptr %831, align 1, !tbaa !43
  %832 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 19, i32 96, i64 3
  store i8 -1, ptr %832, align 1, !tbaa !43
  %833 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 19, i32 97
  store i8 -36, ptr %833, align 1, !tbaa !43
  %834 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 19, i32 97, i64 1
  store i8 96, ptr %834, align 1, !tbaa !43
  %835 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 19, i32 97, i64 2
  store i8 96, ptr %835, align 1, !tbaa !43
  %836 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 19, i32 97, i64 3
  %837 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 19, i32 98, i64 3
  store i32 -1, ptr %836, align 1
  store i8 48, ptr %837, align 1, !tbaa !43
  %838 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(720) %838, ptr noundef nonnull align 8 dereferenceable(720) %36, i64 720, i1 false), !tbaa.struct !68
  store i8 114, ptr %838, align 1, !tbaa !43
  %839 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 15, i32 0, i64 1
  store i8 114, ptr %839, align 1, !tbaa !43
  %840 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 15, i32 0, i64 2
  store i8 114, ptr %840, align 1, !tbaa !43
  %841 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 15, i32 0, i64 3
  store i8 -1, ptr %841, align 1, !tbaa !43
  %842 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 15, i32 25
  store i8 91, ptr %842, align 1, !tbaa !43
  %843 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 15, i32 25, i64 1
  store i8 91, ptr %843, align 1, !tbaa !43
  %844 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 15, i32 25, i64 2
  store i8 91, ptr %844, align 1, !tbaa !43
  %845 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 15, i32 25, i64 3
  store i8 -1, ptr %845, align 1, !tbaa !43
  %846 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 15, i32 22
  store i8 -83, ptr %846, align 1, !tbaa !43
  %847 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 15, i32 22, i64 1
  store i8 -83, ptr %847, align 1, !tbaa !43
  %848 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 15, i32 22, i64 2
  store i8 -83, ptr %848, align 1, !tbaa !43
  %849 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 15, i32 22, i64 3
  store i8 -1, ptr %849, align 1, !tbaa !43
  %850 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(720) %850, ptr noundef nonnull align 8 dereferenceable(720) %36, i64 720, i1 false), !tbaa.struct !68
  %851 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 110
  store i8 115, ptr %851, align 1, !tbaa !43
  %852 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 110, i64 1
  store i8 115, ptr %852, align 1, !tbaa !43
  %853 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 110, i64 2
  store i8 115, ptr %853, align 1, !tbaa !43
  %854 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 110, i64 3
  store i8 -1, ptr %854, align 1, !tbaa !43
  %855 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 42
  %856 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 103
  store i32 -1, ptr %855, align 1
  store i8 -101, ptr %856, align 1, !tbaa !43
  %857 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 103, i64 1
  store i8 -101, ptr %857, align 1, !tbaa !43
  %858 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 103, i64 2
  store i8 -101, ptr %858, align 1, !tbaa !43
  %859 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 103, i64 3
  store i8 -96, ptr %859, align 1, !tbaa !43
  %860 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 106
  store i8 100, ptr %860, align 1, !tbaa !43
  %861 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 106, i64 1
  store i8 100, ptr %861, align 1, !tbaa !43
  %862 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 106, i64 2
  store i8 100, ptr %862, align 1, !tbaa !43
  %863 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 106, i64 3
  store i8 -1, ptr %863, align 1, !tbaa !43
  %864 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 111
  store i8 100, ptr %864, align 1, !tbaa !43
  %865 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 111, i64 1
  store i8 100, ptr %865, align 1, !tbaa !43
  %866 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 111, i64 2
  store i8 100, ptr %866, align 1, !tbaa !43
  %867 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 111, i64 3
  store i8 -1, ptr %867, align 1, !tbaa !43
  %868 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 105
  store i8 108, ptr %868, align 1, !tbaa !43
  %869 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 105, i64 1
  store i8 105, ptr %869, align 1, !tbaa !43
  %870 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 105, i64 2
  store i8 111, ptr %870, align 1, !tbaa !43
  %871 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 105, i64 3
  store i8 -1, ptr %871, align 1, !tbaa !43
  %872 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 107
  store i8 104, ptr %872, align 1, !tbaa !43
  %873 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 107, i64 1
  store i8 106, ptr %873, align 1, !tbaa !43
  %874 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 107, i64 2
  store i8 117, ptr %874, align 1, !tbaa !43
  %875 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 107, i64 3
  store i8 -1, ptr %875, align 1, !tbaa !43
  %876 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 108
  store i8 105, ptr %876, align 1, !tbaa !43
  %877 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 108, i64 1
  store i8 117, ptr %877, align 1, !tbaa !43
  %878 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 108, i64 2
  store i8 110, ptr %878, align 1, !tbaa !43
  %879 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 108, i64 3
  store i8 -1, ptr %879, align 1, !tbaa !43
  %880 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 114
  store i8 108, ptr %880, align 1, !tbaa !43
  %881 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 114, i64 1
  store i8 105, ptr %881, align 1, !tbaa !43
  %882 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 114, i64 2
  store i8 111, ptr %882, align 1, !tbaa !43
  %883 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 114, i64 3
  store i8 -1, ptr %883, align 1, !tbaa !43
  %884 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 115
  store i8 108, ptr %884, align 1, !tbaa !43
  %885 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 115, i64 1
  store i8 105, ptr %885, align 1, !tbaa !43
  %886 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 115, i64 2
  store i8 111, ptr %886, align 1, !tbaa !43
  %887 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 115, i64 3
  store i8 -1, ptr %887, align 1, !tbaa !43
  %888 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 112
  store i8 108, ptr %888, align 1, !tbaa !43
  %889 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 112, i64 1
  store i8 105, ptr %889, align 1, !tbaa !43
  %890 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 112, i64 2
  store i8 111, ptr %890, align 1, !tbaa !43
  %891 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 112, i64 3
  store i8 -1, ptr %891, align 1, !tbaa !43
  %892 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 116
  store i8 108, ptr %892, align 1, !tbaa !43
  %893 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 116, i64 1
  store i8 105, ptr %893, align 1, !tbaa !43
  %894 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 116, i64 2
  store i8 111, ptr %894, align 1, !tbaa !43
  %895 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 116, i64 3
  store i8 -1, ptr %895, align 1, !tbaa !43
  %896 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 117
  store i8 108, ptr %896, align 1, !tbaa !43
  %897 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 117, i64 1
  store i8 105, ptr %897, align 1, !tbaa !43
  %898 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 117, i64 2
  store i8 111, ptr %898, align 1, !tbaa !43
  %899 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 117, i64 3
  store i8 -1, ptr %899, align 1, !tbaa !43
  %900 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 113
  store i8 108, ptr %900, align 1, !tbaa !43
  %901 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 113, i64 1
  store i8 105, ptr %901, align 1, !tbaa !43
  %902 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 113, i64 2
  store i8 111, ptr %902, align 1, !tbaa !43
  %903 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 113, i64 3
  store i8 -1, ptr %903, align 1, !tbaa !43
  %904 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 118
  store i8 108, ptr %904, align 1, !tbaa !43
  %905 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 118, i64 1
  store i8 105, ptr %905, align 1, !tbaa !43
  %906 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 118, i64 2
  store i8 111, ptr %906, align 1, !tbaa !43
  %907 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 118, i64 3
  store i8 -1, ptr %907, align 1, !tbaa !43
  %908 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 119
  store i8 -101, ptr %908, align 1, !tbaa !43
  %909 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 119, i64 1
  store i8 -101, ptr %909, align 1, !tbaa !43
  %910 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 119, i64 2
  store i8 -101, ptr %910, align 1, !tbaa !43
  %911 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 119, i64 3
  store i8 -96, ptr %911, align 1, !tbaa !43
  %912 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 104
  store i8 -105, ptr %912, align 1, !tbaa !43
  %913 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 104, i64 1
  store i8 116, ptr %913, align 1, !tbaa !43
  %914 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 104, i64 2
  store i8 116, ptr %914, align 1, !tbaa !43
  %915 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 104, i64 3
  store i8 -1, ptr %915, align 1, !tbaa !43
  %916 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 109
  store i8 116, ptr %916, align 1, !tbaa !43
  %917 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 109, i64 1
  store i8 -105, ptr %917, align 1, !tbaa !43
  %918 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 109, i64 2
  store i8 -105, ptr %918, align 1, !tbaa !43
  %919 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 109, i64 3
  store i8 -1, ptr %919, align 1, !tbaa !43
  %920 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 93
  store i8 -33, ptr %920, align 1, !tbaa !43
  %921 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 93, i64 1
  store i8 -54, ptr %921, align 1, !tbaa !43
  %922 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 93, i64 2
  store i8 53, ptr %922, align 1, !tbaa !43
  %923 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 93, i64 3
  store i8 -1, ptr %923, align 1, !tbaa !43
  %924 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 102
  store i8 5, ptr %924, align 1, !tbaa !75
  %925 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(720) %925, ptr noundef nonnull align 8 dereferenceable(720) %36, i64 720, i1 false), !tbaa.struct !68
  store i8 100, ptr %925, align 1, !tbaa !43
  %926 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 17, i32 0, i64 1
  store i8 100, ptr %926, align 1, !tbaa !43
  %927 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 17, i32 0, i64 2
  store i8 100, ptr %927, align 1, !tbaa !43
  %928 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 17, i32 0, i64 3
  store i8 -1, ptr %928, align 1, !tbaa !43
  %929 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(720) %929, ptr noundef nonnull align 8 dereferenceable(720) %36, i64 720, i1 false), !tbaa.struct !68
  %930 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 133
  store i8 0, ptr %930, align 1, !tbaa !43
  %931 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 133, i64 1
  store i8 0, ptr %931, align 1, !tbaa !43
  %932 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 133, i64 2
  store i8 0, ptr %932, align 1, !tbaa !43
  %933 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 133, i64 3
  store i8 -1, ptr %933, align 1, !tbaa !43
  %934 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 134
  store i8 127, ptr %934, align 1, !tbaa !43
  %935 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 134, i64 1
  store i8 127, ptr %935, align 1, !tbaa !43
  %936 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 134, i64 2
  store i8 0, ptr %936, align 1, !tbaa !43
  %937 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 134, i64 3
  %938 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 136, i64 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %937, i8 -1, i64 7, i1 false)
  store i8 0, ptr %938, align 1, !tbaa !43
  %939 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 136, i64 3
  store i8 -1, ptr %939, align 1, !tbaa !43
  %940 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 137
  store i8 127, ptr %940, align 1, !tbaa !43
  %941 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 137, i64 1
  store i8 0, ptr %941, align 1, !tbaa !43
  %942 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 137, i64 2
  store i8 0, ptr %942, align 1, !tbaa !43
  %943 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 137, i64 3
  store i8 -1, ptr %943, align 1, !tbaa !43
  %944 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 138
  store i8 127, ptr %944, align 1, !tbaa !43
  %945 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 138, i64 1
  store i8 127, ptr %945, align 1, !tbaa !43
  %946 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 138, i64 2
  store i8 127, ptr %946, align 1, !tbaa !43
  %947 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 138, i64 3
  store i8 -1, ptr %947, align 1, !tbaa !43
  %948 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 140
  store i8 -1, ptr %948, align 1, !tbaa !43
  %949 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 140, i64 1
  store i8 0, ptr %949, align 1, !tbaa !43
  %950 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 140, i64 2
  store i8 0, ptr %950, align 1, !tbaa !43
  %951 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 140, i64 3
  store i8 -1, ptr %951, align 1, !tbaa !43
  %952 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 141
  store i8 0, ptr %952, align 1, !tbaa !43
  %953 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 141, i64 1
  store i8 0, ptr %953, align 1, !tbaa !43
  %954 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 141, i64 2
  store i8 -1, ptr %954, align 1, !tbaa !43
  %955 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 141, i64 3
  store i8 -1, ptr %955, align 1, !tbaa !43
  %956 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 25
  store i8 94, ptr %956, align 1, !tbaa !43
  %957 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 25, i64 1
  store i8 94, ptr %957, align 1, !tbaa !43
  %958 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 25, i64 2
  store i8 94, ptr %958, align 1, !tbaa !43
  %959 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 25, i64 3
  store i8 -1, ptr %959, align 1, !tbaa !43
  %960 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 62
  store i8 96, ptr %960, align 1, !tbaa !43
  %961 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 62, i64 1
  store i8 -64, ptr %961, align 1, !tbaa !43
  %962 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 62, i64 2
  store i8 64, ptr %962, align 1, !tbaa !43
  %963 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 62, i64 3
  store i8 -1, ptr %963, align 1, !tbaa !43
  %964 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 16
  store i8 102, ptr %964, align 1, !tbaa !43
  %965 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 16, i64 1
  store i8 102, ptr %965, align 1, !tbaa !43
  %966 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 16, i64 2
  store i8 102, ptr %966, align 1, !tbaa !43
  %967 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 16, i64 3
  store i8 -1, ptr %967, align 1, !tbaa !43
  %968 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 60
  store i8 12, ptr %968, align 1, !tbaa !43
  %969 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 60, i64 1
  store i8 10, ptr %969, align 1, !tbaa !43
  %970 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 60, i64 2
  store i8 10, ptr %970, align 1, !tbaa !43
  %971 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 60, i64 3
  store i8 -128, ptr %971, align 1, !tbaa !43
  %972 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 61
  store i8 -1, ptr %972, align 1, !tbaa !43
  %973 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 61, i64 1
  store i8 -116, ptr %973, align 1, !tbaa !43
  %974 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 61, i64 2
  store i8 0, ptr %974, align 1, !tbaa !43
  %975 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 61, i64 3
  store i8 -1, ptr %975, align 1, !tbaa !43
  %976 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 132
  store i8 5, ptr %976, align 4, !tbaa !76
  %977 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 71
  store i8 0, ptr %977, align 1, !tbaa !43
  %978 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 71, i64 1
  store i8 0, ptr %978, align 1, !tbaa !43
  %979 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 71, i64 2
  store i8 0, ptr %979, align 1, !tbaa !43
  %980 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 71, i64 3
  store i8 -1, ptr %980, align 1, !tbaa !43
  %981 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 72
  store i8 -112, ptr %981, align 1, !tbaa !43
  %982 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 72, i64 1
  store i8 -112, ptr %982, align 1, !tbaa !43
  %983 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 72, i64 2
  store i8 0, ptr %983, align 1, !tbaa !43
  %984 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 72, i64 3
  store i8 -1, ptr %984, align 1, !tbaa !43
  %985 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 73
  store i8 64, ptr %985, align 1, !tbaa !43
  %986 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 73, i64 1
  store i8 -112, ptr %986, align 1, !tbaa !43
  %987 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 73, i64 2
  store i8 48, ptr %987, align 1, !tbaa !43
  %988 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 73, i64 3
  store i8 -1, ptr %988, align 1, !tbaa !43
  %989 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 74
  store i8 -128, ptr %989, align 1, !tbaa !43
  %990 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 74, i64 1
  store i8 48, ptr %990, align 1, !tbaa !43
  %991 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 74, i64 2
  store i8 96, ptr %991, align 1, !tbaa !43
  %992 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 74, i64 3
  store i8 -1, ptr %992, align 1, !tbaa !43
  %993 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 76
  store i8 0, ptr %993, align 1, !tbaa !43
  %994 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 76, i64 1
  store i8 0, ptr %994, align 1, !tbaa !43
  %995 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 76, i64 2
  store i8 0, ptr %995, align 1, !tbaa !43
  %996 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 76, i64 3
  store i8 -1, ptr %996, align 1, !tbaa !43
  %997 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 77
  store i8 -16, ptr %997, align 1, !tbaa !43
  %998 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 77, i64 1
  store i8 -1, ptr %998, align 1, !tbaa !43
  %999 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 77, i64 2
  store i8 64, ptr %999, align 1, !tbaa !43
  %1000 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 77, i64 3
  store i8 -1, ptr %1000, align 1, !tbaa !43
  %1001 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 78
  store i8 64, ptr %1001, align 1, !tbaa !43
  %1002 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 78, i64 1
  store i8 -64, ptr %1002, align 1, !tbaa !43
  %1003 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 78, i64 2
  store i8 48, ptr %1003, align 1, !tbaa !43
  %1004 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 78, i64 3
  store i8 -1, ptr %1004, align 1, !tbaa !43
  %1005 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 79
  store i8 -16, ptr %1005, align 1, !tbaa !43
  %1006 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 79, i64 1
  store i8 -112, ptr %1006, align 1, !tbaa !43
  %1007 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 79, i64 2
  store i8 -96, ptr %1007, align 1, !tbaa !43
  %1008 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 79, i64 3
  store i8 -1, ptr %1008, align 1, !tbaa !43
  %1009 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 129
  store i8 0, ptr %1009, align 1, !tbaa !43
  %1010 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 129, i64 1
  store i8 0, ptr %1010, align 1, !tbaa !43
  %1011 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 129, i64 2
  store i8 0, ptr %1011, align 1, !tbaa !43
  %1012 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 129, i64 3
  store i8 -1, ptr %1012, align 1, !tbaa !43
  %1013 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 130
  store i8 -1, ptr %1013, align 1, !tbaa !43
  %1014 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 130, i64 1
  store i8 -1, ptr %1014, align 1, !tbaa !43
  %1015 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 130, i64 2
  store i8 0, ptr %1015, align 1, !tbaa !43
  %1016 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 130, i64 3
  store i8 -1, ptr %1016, align 1, !tbaa !43
  %1017 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 67
  store i8 -37, ptr %1017, align 1, !tbaa !43
  %1018 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 67, i64 1
  store i8 37, ptr %1018, align 1, !tbaa !43
  %1019 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 67, i64 2
  store i8 18, ptr %1019, align 1, !tbaa !43
  %1020 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 67, i64 3
  store i8 -1, ptr %1020, align 1, !tbaa !43
  ret void
}

declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @UI_SetTheme(i32 noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !48
  store ptr %5, ptr @theme_active, align 8, !tbaa !46
  br label %10

6:                                                ; preds = %2
  %7 = icmp eq i32 %1, 0
  %8 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !48
  store ptr %8, ptr @theme_active, align 8, !tbaa !46
  %9 = select i1 %7, i32 1, i32 4
  br label %10

10:                                               ; preds = %6, %4
  %11 = phi i32 [ %0, %4 ], [ %9, %6 ]
  store i32 %11, ptr @theme_spacetype, align 4, !tbaa !34
  store i32 %1, ptr @theme_regionid, align 4, !tbaa !34
  ret void
}

declare void @ui_widget_color_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal fastcc void @ui_theme_init_boneColorSets(ptr noundef writeonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21
  store i8 -102, ptr %2, align 1, !tbaa !43
  %3 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 0, i32 0, i64 1
  store i8 0, ptr %3, align 1, !tbaa !43
  %4 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 0, i32 0, i64 2
  store i8 0, ptr %4, align 1, !tbaa !43
  %5 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 0, i32 0, i64 3
  store i8 -1, ptr %5, align 1, !tbaa !43
  %6 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 0, i32 1
  store i8 -67, ptr %6, align 1, !tbaa !43
  %7 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 0, i32 1, i64 1
  store i8 17, ptr %7, align 1, !tbaa !43
  %8 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 0, i32 1, i64 2
  store i8 17, ptr %8, align 1, !tbaa !43
  %9 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 0, i32 1, i64 3
  store i8 -1, ptr %9, align 1, !tbaa !43
  %10 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 0, i32 2
  store i8 -9, ptr %10, align 1, !tbaa !43
  %11 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 0, i32 2, i64 1
  store i8 10, ptr %11, align 1, !tbaa !43
  %12 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 0, i32 2, i64 2
  store i8 10, ptr %12, align 1, !tbaa !43
  %13 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 0, i32 2, i64 3
  store i8 -1, ptr %13, align 1, !tbaa !43
  %14 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 1
  store i8 -9, ptr %14, align 1, !tbaa !43
  %15 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 1, i32 0, i64 1
  store i8 64, ptr %15, align 1, !tbaa !43
  %16 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 1, i32 0, i64 2
  store i8 24, ptr %16, align 1, !tbaa !43
  %17 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 1, i32 0, i64 3
  store i8 -1, ptr %17, align 1, !tbaa !43
  %18 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 1, i32 1
  store i8 -10, ptr %18, align 1, !tbaa !43
  %19 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 1, i32 1, i64 1
  store i8 105, ptr %19, align 1, !tbaa !43
  %20 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 1, i32 1, i64 2
  store i8 19, ptr %20, align 1, !tbaa !43
  %21 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 1, i32 1, i64 3
  store i8 -1, ptr %21, align 1, !tbaa !43
  %22 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 1, i32 2
  store i8 -6, ptr %22, align 1, !tbaa !43
  %23 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 1, i32 2, i64 1
  store i8 -103, ptr %23, align 1, !tbaa !43
  %24 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 1, i32 2, i64 2
  store i8 0, ptr %24, align 1, !tbaa !43
  %25 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 1, i32 2, i64 3
  store i8 -1, ptr %25, align 1, !tbaa !43
  %26 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 2
  store i8 30, ptr %26, align 1, !tbaa !43
  %27 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 2, i32 0, i64 1
  store i8 -111, ptr %27, align 1, !tbaa !43
  %28 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 2, i32 0, i64 2
  store i8 9, ptr %28, align 1, !tbaa !43
  %29 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 2, i32 0, i64 3
  store i8 -1, ptr %29, align 1, !tbaa !43
  %30 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 2, i32 1
  store i8 89, ptr %30, align 1, !tbaa !43
  %31 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 2, i32 1, i64 1
  store i8 -73, ptr %31, align 1, !tbaa !43
  %32 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 2, i32 1, i64 2
  store i8 11, ptr %32, align 1, !tbaa !43
  %33 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 2, i32 1, i64 3
  store i8 -1, ptr %33, align 1, !tbaa !43
  %34 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 2, i32 2
  store i8 -125, ptr %34, align 1, !tbaa !43
  %35 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 2, i32 2, i64 1
  store i8 -17, ptr %35, align 1, !tbaa !43
  %36 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 2, i32 2, i64 2
  store i8 29, ptr %36, align 1, !tbaa !43
  %37 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 2, i32 2, i64 3
  store i8 -1, ptr %37, align 1, !tbaa !43
  %38 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 3
  store i8 10, ptr %38, align 1, !tbaa !43
  %39 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 3, i32 0, i64 1
  store i8 54, ptr %39, align 1, !tbaa !43
  %40 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 3, i32 0, i64 2
  store i8 -108, ptr %40, align 1, !tbaa !43
  %41 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 3, i32 0, i64 3
  store i8 -1, ptr %41, align 1, !tbaa !43
  %42 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 3, i32 1
  store i8 54, ptr %42, align 1, !tbaa !43
  %43 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 3, i32 1, i64 1
  store i8 103, ptr %43, align 1, !tbaa !43
  %44 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 3, i32 1, i64 2
  store i8 -33, ptr %44, align 1, !tbaa !43
  %45 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 3, i32 1, i64 3
  store i8 -1, ptr %45, align 1, !tbaa !43
  %46 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 3, i32 2
  store i8 94, ptr %46, align 1, !tbaa !43
  %47 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 3, i32 2, i64 1
  store i8 -63, ptr %47, align 1, !tbaa !43
  %48 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 3, i32 2, i64 2
  store i8 -17, ptr %48, align 1, !tbaa !43
  %49 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 3, i32 2, i64 3
  store i8 -1, ptr %49, align 1, !tbaa !43
  %50 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 4
  store i8 -87, ptr %50, align 1, !tbaa !43
  %51 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 4, i32 0, i64 1
  store i8 41, ptr %51, align 1, !tbaa !43
  %52 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 4, i32 0, i64 2
  store i8 78, ptr %52, align 1, !tbaa !43
  %53 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 4, i32 0, i64 3
  store i8 -1, ptr %53, align 1, !tbaa !43
  %54 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 4, i32 1
  store i8 -63, ptr %54, align 1, !tbaa !43
  %55 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 4, i32 1, i64 1
  store i8 65, ptr %55, align 1, !tbaa !43
  %56 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 4, i32 1, i64 2
  store i8 106, ptr %56, align 1, !tbaa !43
  %57 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 4, i32 1, i64 3
  store i8 -1, ptr %57, align 1, !tbaa !43
  %58 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 4, i32 2
  store i8 -16, ptr %58, align 1, !tbaa !43
  %59 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 4, i32 2, i64 1
  store i8 93, ptr %59, align 1, !tbaa !43
  %60 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 4, i32 2, i64 2
  store i8 -111, ptr %60, align 1, !tbaa !43
  %61 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 4, i32 2, i64 3
  store i8 -1, ptr %61, align 1, !tbaa !43
  %62 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 5
  store i8 67, ptr %62, align 1, !tbaa !43
  %63 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 5, i32 0, i64 1
  store i8 12, ptr %63, align 1, !tbaa !43
  %64 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 5, i32 0, i64 2
  store i8 120, ptr %64, align 1, !tbaa !43
  %65 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 5, i32 0, i64 3
  store i8 -1, ptr %65, align 1, !tbaa !43
  %66 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 5, i32 1
  store i8 84, ptr %66, align 1, !tbaa !43
  %67 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 5, i32 1, i64 1
  store i8 58, ptr %67, align 1, !tbaa !43
  %68 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 5, i32 1, i64 2
  store i8 -93, ptr %68, align 1, !tbaa !43
  %69 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 5, i32 1, i64 3
  store i8 -1, ptr %69, align 1, !tbaa !43
  %70 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 5, i32 2
  store i8 -121, ptr %70, align 1, !tbaa !43
  %71 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 5, i32 2, i64 1
  store i8 100, ptr %71, align 1, !tbaa !43
  %72 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 5, i32 2, i64 2
  store i8 -43, ptr %72, align 1, !tbaa !43
  %73 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 5, i32 2, i64 3
  store i8 -1, ptr %73, align 1, !tbaa !43
  %74 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 6
  store i8 36, ptr %74, align 1, !tbaa !43
  %75 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 6, i32 0, i64 1
  store i8 120, ptr %75, align 1, !tbaa !43
  %76 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 6, i32 0, i64 2
  store i8 90, ptr %76, align 1, !tbaa !43
  %77 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 6, i32 0, i64 3
  store i8 -1, ptr %77, align 1, !tbaa !43
  %78 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 6, i32 1
  store i8 60, ptr %78, align 1, !tbaa !43
  %79 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 6, i32 1, i64 1
  store i8 -107, ptr %79, align 1, !tbaa !43
  %80 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 6, i32 1, i64 2
  store i8 121, ptr %80, align 1, !tbaa !43
  %81 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 6, i32 1, i64 3
  store i8 -1, ptr %81, align 1, !tbaa !43
  %82 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 6, i32 2
  store i8 111, ptr %82, align 1, !tbaa !43
  %83 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 6, i32 2, i64 1
  store i8 -74, ptr %83, align 1, !tbaa !43
  %84 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 6, i32 2, i64 2
  store i8 -85, ptr %84, align 1, !tbaa !43
  %85 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 6, i32 2, i64 3
  store i8 -1, ptr %85, align 1, !tbaa !43
  %86 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 7
  store i8 75, ptr %86, align 1, !tbaa !43
  %87 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 7, i32 0, i64 1
  store i8 112, ptr %87, align 1, !tbaa !43
  %88 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 7, i32 0, i64 2
  store i8 124, ptr %88, align 1, !tbaa !43
  %89 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 7, i32 0, i64 3
  store i8 -1, ptr %89, align 1, !tbaa !43
  %90 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 7, i32 1
  store i8 106, ptr %90, align 1, !tbaa !43
  %91 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 7, i32 1, i64 1
  store i8 -122, ptr %91, align 1, !tbaa !43
  %92 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 7, i32 1, i64 2
  store i8 -111, ptr %92, align 1, !tbaa !43
  %93 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 7, i32 1, i64 3
  store i8 -1, ptr %93, align 1, !tbaa !43
  %94 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 7, i32 2
  store i8 -101, ptr %94, align 1, !tbaa !43
  %95 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 7, i32 2, i64 1
  store i8 -62, ptr %95, align 1, !tbaa !43
  %96 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 7, i32 2, i64 2
  store i8 -51, ptr %96, align 1, !tbaa !43
  %97 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 7, i32 2, i64 3
  store i8 -1, ptr %97, align 1, !tbaa !43
  %98 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 8
  store i8 -12, ptr %98, align 1, !tbaa !43
  %99 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 8, i32 0, i64 1
  store i8 -55, ptr %99, align 1, !tbaa !43
  %100 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 8, i32 0, i64 2
  store i8 12, ptr %100, align 1, !tbaa !43
  %101 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 8, i32 0, i64 3
  store i8 -1, ptr %101, align 1, !tbaa !43
  %102 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 8, i32 1
  store i8 -18, ptr %102, align 1, !tbaa !43
  %103 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 8, i32 1, i64 1
  store i8 -62, ptr %103, align 1, !tbaa !43
  %104 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 8, i32 1, i64 2
  store i8 54, ptr %104, align 1, !tbaa !43
  %105 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 8, i32 1, i64 3
  store i8 -1, ptr %105, align 1, !tbaa !43
  %106 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 8, i32 2
  store i8 -13, ptr %106, align 1, !tbaa !43
  %107 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 8, i32 2, i64 1
  store i8 -1, ptr %107, align 1, !tbaa !43
  %108 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 8, i32 2, i64 2
  store i8 0, ptr %108, align 1, !tbaa !43
  %109 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 8, i32 2, i64 3
  store i8 -1, ptr %109, align 1, !tbaa !43
  %110 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 9
  store i8 30, ptr %110, align 1, !tbaa !43
  %111 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 9, i32 0, i64 1
  store i8 32, ptr %111, align 1, !tbaa !43
  %112 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 9, i32 0, i64 2
  store i8 36, ptr %112, align 1, !tbaa !43
  %113 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 9, i32 0, i64 3
  store i8 -1, ptr %113, align 1, !tbaa !43
  %114 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 9, i32 1
  store i8 72, ptr %114, align 1, !tbaa !43
  %115 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 9, i32 1, i64 1
  store i8 76, ptr %115, align 1, !tbaa !43
  %116 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 9, i32 1, i64 2
  store i8 86, ptr %116, align 1, !tbaa !43
  %117 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 9, i32 1, i64 3
  %118 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %117, i8 -1, i64 5, i1 false)
  store i8 111, ptr %118, align 1, !tbaa !43
  %119 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 10, i32 0, i64 1
  store i8 47, ptr %119, align 1, !tbaa !43
  %120 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 10, i32 0, i64 2
  store i8 106, ptr %120, align 1, !tbaa !43
  %121 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 10, i32 0, i64 3
  store i8 -1, ptr %121, align 1, !tbaa !43
  %122 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 10, i32 1
  store i8 -104, ptr %122, align 1, !tbaa !43
  %123 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 10, i32 1, i64 1
  store i8 69, ptr %123, align 1, !tbaa !43
  %124 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 10, i32 1, i64 2
  store i8 -66, ptr %124, align 1, !tbaa !43
  %125 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 10, i32 1, i64 3
  store i8 -1, ptr %125, align 1, !tbaa !43
  %126 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 10, i32 2
  store i8 -45, ptr %126, align 1, !tbaa !43
  %127 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 10, i32 2, i64 1
  store i8 48, ptr %127, align 1, !tbaa !43
  %128 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 10, i32 2, i64 2
  store i8 -42, ptr %128, align 1, !tbaa !43
  %129 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 10, i32 2, i64 3
  store i8 -1, ptr %129, align 1, !tbaa !43
  %130 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 11
  store i8 108, ptr %130, align 1, !tbaa !43
  %131 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 11, i32 0, i64 1
  store i8 -114, ptr %131, align 1, !tbaa !43
  %132 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 11, i32 0, i64 2
  store i8 34, ptr %132, align 1, !tbaa !43
  %133 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 11, i32 0, i64 3
  store i8 -1, ptr %133, align 1, !tbaa !43
  %134 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 11, i32 1
  store i8 127, ptr %134, align 1, !tbaa !43
  %135 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 11, i32 1, i64 1
  store i8 -80, ptr %135, align 1, !tbaa !43
  %136 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 11, i32 1, i64 2
  store i8 34, ptr %136, align 1, !tbaa !43
  %137 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 11, i32 1, i64 3
  store i8 -1, ptr %137, align 1, !tbaa !43
  %138 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 11, i32 2
  store i8 -69, ptr %138, align 1, !tbaa !43
  %139 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 11, i32 2, i64 1
  store i8 -17, ptr %139, align 1, !tbaa !43
  %140 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 11, i32 2, i64 2
  store i8 91, ptr %140, align 1, !tbaa !43
  %141 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 11, i32 2, i64 3
  store i8 -1, ptr %141, align 1, !tbaa !43
  %142 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 12
  store i8 -115, ptr %142, align 1, !tbaa !43
  %143 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 12, i32 0, i64 1
  store i8 -115, ptr %143, align 1, !tbaa !43
  %144 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 12, i32 0, i64 2
  store i8 -115, ptr %144, align 1, !tbaa !43
  %145 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 12, i32 0, i64 3
  store i8 -1, ptr %145, align 1, !tbaa !43
  %146 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 12, i32 1
  store i8 -80, ptr %146, align 1, !tbaa !43
  %147 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 12, i32 1, i64 1
  store i8 -80, ptr %147, align 1, !tbaa !43
  %148 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 12, i32 1, i64 2
  store i8 -80, ptr %148, align 1, !tbaa !43
  %149 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 12, i32 1, i64 3
  store i8 -1, ptr %149, align 1, !tbaa !43
  %150 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 12, i32 2
  store i8 -34, ptr %150, align 1, !tbaa !43
  %151 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 12, i32 2, i64 1
  store i8 -34, ptr %151, align 1, !tbaa !43
  %152 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 12, i32 2, i64 2
  store i8 -34, ptr %152, align 1, !tbaa !43
  %153 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 12, i32 2, i64 3
  store i8 -1, ptr %153, align 1, !tbaa !43
  %154 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 13
  store i8 -125, ptr %154, align 1, !tbaa !43
  %155 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 13, i32 0, i64 1
  store i8 67, ptr %155, align 1, !tbaa !43
  %156 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 13, i32 0, i64 2
  store i8 38, ptr %156, align 1, !tbaa !43
  %157 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 13, i32 0, i64 3
  store i8 -1, ptr %157, align 1, !tbaa !43
  %158 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 13, i32 1
  store i8 -117, ptr %158, align 1, !tbaa !43
  %159 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 13, i32 1, i64 1
  store i8 88, ptr %159, align 1, !tbaa !43
  %160 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 13, i32 1, i64 2
  store i8 17, ptr %160, align 1, !tbaa !43
  %161 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 13, i32 1, i64 3
  store i8 -1, ptr %161, align 1, !tbaa !43
  %162 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 13, i32 2
  store i8 -67, ptr %162, align 1, !tbaa !43
  %163 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 13, i32 2, i64 1
  store i8 106, ptr %163, align 1, !tbaa !43
  %164 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 13, i32 2, i64 2
  store i8 17, ptr %164, align 1, !tbaa !43
  %165 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 13, i32 2, i64 3
  store i8 -1, ptr %165, align 1, !tbaa !43
  %166 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 14
  store i8 8, ptr %166, align 1, !tbaa !43
  %167 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 14, i32 0, i64 1
  store i8 49, ptr %167, align 1, !tbaa !43
  %168 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 14, i32 0, i64 2
  store i8 14, ptr %168, align 1, !tbaa !43
  %169 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 14, i32 0, i64 3
  store i8 -1, ptr %169, align 1, !tbaa !43
  %170 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 14, i32 1
  store i8 28, ptr %170, align 1, !tbaa !43
  %171 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 14, i32 1, i64 1
  store i8 67, ptr %171, align 1, !tbaa !43
  %172 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 14, i32 1, i64 2
  store i8 11, ptr %172, align 1, !tbaa !43
  %173 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 14, i32 1, i64 3
  store i8 -1, ptr %173, align 1, !tbaa !43
  %174 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 14, i32 2
  store i8 52, ptr %174, align 1, !tbaa !43
  %175 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 14, i32 2, i64 1
  store i8 98, ptr %175, align 1, !tbaa !43
  %176 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 14, i32 2, i64 2
  store i8 43, ptr %176, align 1, !tbaa !43
  %177 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 14, i32 2, i64 3
  store i8 -1, ptr %177, align 1, !tbaa !43
  br label %178

178:                                              ; preds = %1, %178
  %179 = phi i64 [ 0, %1 ], [ %181, %178 ]
  %180 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 %179, i32 3
  store i16 0, ptr %180, align 4, !tbaa !77
  %181 = add nuw nsw i64 %179, 1
  %182 = icmp eq i64 %181, 20
  br i1 %182, label %183, label %178, !llvm.loop !79

183:                                              ; preds = %178
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal fastcc void @ui_theme_init_new(ptr nocapture noundef writeonly %0) unnamed_addr #5 {
  br label %2

2:                                                ; preds = %1, %2
  %3 = phi i64 [ 960, %1 ], [ %54, %2 ]
  %4 = getelementptr inbounds i8, ptr %0, i64 %3
  %5 = getelementptr inbounds %struct.ThemeSpace, ptr %4, i64 0, i32 6
  store i8 0, ptr %5, align 1, !tbaa !43
  %6 = getelementptr inbounds %struct.ThemeSpace, ptr %4, i64 0, i32 6, i64 1
  store i8 0, ptr %6, align 1, !tbaa !43
  %7 = getelementptr inbounds %struct.ThemeSpace, ptr %4, i64 0, i32 6, i64 2
  store i8 0, ptr %7, align 1, !tbaa !43
  %8 = getelementptr inbounds %struct.ThemeSpace, ptr %4, i64 0, i32 6, i64 3
  store i8 -1, ptr %8, align 1, !tbaa !43
  %9 = getelementptr inbounds %struct.ThemeSpace, ptr %4, i64 0, i32 5
  store i8 0, ptr %9, align 1, !tbaa !43
  %10 = getelementptr inbounds %struct.ThemeSpace, ptr %4, i64 0, i32 5, i64 1
  store i8 0, ptr %10, align 1, !tbaa !43
  %11 = getelementptr inbounds %struct.ThemeSpace, ptr %4, i64 0, i32 5, i64 2
  store i8 0, ptr %11, align 1, !tbaa !43
  %12 = getelementptr inbounds %struct.ThemeSpace, ptr %4, i64 0, i32 5, i64 3
  store i8 -1, ptr %12, align 1, !tbaa !43
  %13 = getelementptr inbounds %struct.ThemeSpace, ptr %4, i64 0, i32 7
  %14 = getelementptr inbounds %struct.ThemeSpace, ptr %4, i64 0, i32 12
  store i32 -1, ptr %13, align 1
  store i8 -111, ptr %14, align 1, !tbaa !43
  %15 = getelementptr inbounds %struct.ThemeSpace, ptr %4, i64 0, i32 12, i64 1
  store i8 -111, ptr %15, align 1, !tbaa !43
  %16 = getelementptr inbounds %struct.ThemeSpace, ptr %4, i64 0, i32 12, i64 2
  store i8 -111, ptr %16, align 1, !tbaa !43
  %17 = getelementptr inbounds %struct.ThemeSpace, ptr %4, i64 0, i32 12, i64 3
  store i8 -11, ptr %17, align 1, !tbaa !43
  %18 = getelementptr inbounds %struct.ThemeSpace, ptr %4, i64 0, i32 13
  store i8 0, ptr %18, align 1, !tbaa !43
  %19 = getelementptr inbounds %struct.ThemeSpace, ptr %4, i64 0, i32 13, i64 1
  store i8 0, ptr %19, align 1, !tbaa !43
  %20 = getelementptr inbounds %struct.ThemeSpace, ptr %4, i64 0, i32 13, i64 2
  store i8 0, ptr %20, align 1, !tbaa !43
  %21 = getelementptr inbounds %struct.ThemeSpace, ptr %4, i64 0, i32 13, i64 3
  store i8 -1, ptr %21, align 1, !tbaa !43
  %22 = getelementptr inbounds %struct.ThemeSpace, ptr %4, i64 0, i32 14
  store i8 0, ptr %22, align 1, !tbaa !43
  %23 = getelementptr inbounds %struct.ThemeSpace, ptr %4, i64 0, i32 14, i64 1
  store i8 0, ptr %23, align 1, !tbaa !43
  %24 = getelementptr inbounds %struct.ThemeSpace, ptr %4, i64 0, i32 14, i64 2
  store i8 0, ptr %24, align 1, !tbaa !43
  %25 = getelementptr inbounds %struct.ThemeSpace, ptr %4, i64 0, i32 14, i64 3
  %26 = getelementptr inbounds %struct.ThemeSpace, ptr %4, i64 0, i32 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %25, i8 -1, i64 5, i1 false)
  store i8 -91, ptr %26, align 1, !tbaa !43
  %27 = getelementptr inbounds %struct.ThemeSpace, ptr %4, i64 0, i32 16, i64 1
  store i8 -91, ptr %27, align 1, !tbaa !43
  %28 = getelementptr inbounds %struct.ThemeSpace, ptr %4, i64 0, i32 16, i64 2
  store i8 -91, ptr %28, align 1, !tbaa !43
  %29 = getelementptr inbounds %struct.ThemeSpace, ptr %4, i64 0, i32 16, i64 3
  store i8 -1, ptr %29, align 1, !tbaa !43
  %30 = getelementptr inbounds %struct.ThemeSpace, ptr %4, i64 0, i32 17
  store i8 0, ptr %30, align 1, !tbaa !43
  %31 = getelementptr inbounds %struct.ThemeSpace, ptr %4, i64 0, i32 17, i64 1
  store i8 0, ptr %31, align 1, !tbaa !43
  %32 = getelementptr inbounds %struct.ThemeSpace, ptr %4, i64 0, i32 17, i64 2
  store i8 0, ptr %32, align 1, !tbaa !43
  %33 = getelementptr inbounds %struct.ThemeSpace, ptr %4, i64 0, i32 17, i64 3
  store i8 -1, ptr %33, align 1, !tbaa !43
  %34 = getelementptr inbounds %struct.ThemeSpace, ptr %4, i64 0, i32 18
  store i8 0, ptr %34, align 1, !tbaa !43
  %35 = getelementptr inbounds %struct.ThemeSpace, ptr %4, i64 0, i32 18, i64 1
  store i8 0, ptr %35, align 1, !tbaa !43
  %36 = getelementptr inbounds %struct.ThemeSpace, ptr %4, i64 0, i32 18, i64 2
  store i8 0, ptr %36, align 1, !tbaa !43
  %37 = getelementptr inbounds %struct.ThemeSpace, ptr %4, i64 0, i32 18, i64 3
  %38 = getelementptr inbounds %struct.ThemeSpace, ptr %4, i64 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %37, i8 -1, i64 5, i1 false)
  store i8 114, ptr %38, align 1, !tbaa !43
  %39 = getelementptr inbounds %struct.ThemeSpace, ptr %4, i64 0, i32 8, i64 1
  store i8 114, ptr %39, align 1, !tbaa !43
  %40 = getelementptr inbounds %struct.ThemeSpace, ptr %4, i64 0, i32 8, i64 2
  store i8 114, ptr %40, align 1, !tbaa !43
  %41 = getelementptr inbounds %struct.ThemeSpace, ptr %4, i64 0, i32 8, i64 3
  store i8 -1, ptr %41, align 1, !tbaa !43
  %42 = getelementptr inbounds %struct.ThemeSpace, ptr %4, i64 0, i32 9
  store i8 83, ptr %42, align 1, !tbaa !43
  %43 = getelementptr inbounds %struct.ThemeSpace, ptr %4, i64 0, i32 9, i64 1
  store i8 83, ptr %43, align 1, !tbaa !43
  %44 = getelementptr inbounds %struct.ThemeSpace, ptr %4, i64 0, i32 9, i64 2
  store i8 83, ptr %44, align 1, !tbaa !43
  %45 = getelementptr inbounds %struct.ThemeSpace, ptr %4, i64 0, i32 9, i64 3
  store i8 -1, ptr %45, align 1, !tbaa !43
  %46 = getelementptr inbounds %struct.ThemeSpace, ptr %4, i64 0, i32 10
  store i8 64, ptr %46, align 1, !tbaa !43
  %47 = getelementptr inbounds %struct.ThemeSpace, ptr %4, i64 0, i32 10, i64 1
  store i8 64, ptr %47, align 1, !tbaa !43
  %48 = getelementptr inbounds %struct.ThemeSpace, ptr %4, i64 0, i32 10, i64 2
  store i8 64, ptr %48, align 1, !tbaa !43
  %49 = getelementptr inbounds %struct.ThemeSpace, ptr %4, i64 0, i32 10, i64 3
  store i8 -1, ptr %49, align 1, !tbaa !43
  %50 = getelementptr inbounds %struct.ThemeSpace, ptr %4, i64 0, i32 11
  store i8 60, ptr %50, align 1, !tbaa !43
  %51 = getelementptr inbounds %struct.ThemeSpace, ptr %4, i64 0, i32 11, i64 1
  store i8 60, ptr %51, align 1, !tbaa !43
  %52 = getelementptr inbounds %struct.ThemeSpace, ptr %4, i64 0, i32 11, i64 2
  store i8 60, ptr %52, align 1, !tbaa !43
  %53 = getelementptr inbounds %struct.ThemeSpace, ptr %4, i64 0, i32 11, i64 3
  store i8 -1, ptr %53, align 1, !tbaa !43
  %54 = add nuw nsw i64 %3, 720
  %55 = icmp eq i64 %54, 13200
  br i1 %55, label %56, label %2, !llvm.loop !82

56:                                               ; preds = %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define dso_local void @ui_style_init_default() local_unnamed_addr #0 {
  tail call void @BLI_freelistN(ptr noundef nonnull getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 40)) #16
  tail call void @uiStyleInit() #16
  ret void
}

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #1

declare void @uiStyleInit() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @UI_GetTheme() local_unnamed_addr #7 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !48
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define dso_local void @UI_ThemeColor(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @theme_active, align 8, !tbaa !46
  %3 = load i32, ptr @theme_spacetype, align 4, !tbaa !34
  %4 = tail call ptr @UI_ThemeGetColorPtr(ptr noundef %2, i32 noundef %3, i32 noundef %0)
  tail call void @glColor3ubv(ptr noundef nonnull %4) #16
  ret void
}

declare void @glColor3ubv(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @UI_ThemeColor4(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @theme_active, align 8, !tbaa !46
  %3 = load i32, ptr @theme_spacetype, align 4, !tbaa !34
  %4 = tail call ptr @UI_ThemeGetColorPtr(ptr noundef %2, i32 noundef %3, i32 noundef %0)
  tail call void @glColor4ubv(ptr noundef nonnull %4) #16
  ret void
}

declare void @glColor4ubv(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @UI_ThemeColorShade(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @theme_active, align 8, !tbaa !46
  %4 = load i32, ptr @theme_spacetype, align 4, !tbaa !34
  %5 = tail call ptr @UI_ThemeGetColorPtr(ptr noundef %3, i32 noundef %4, i32 noundef %0)
  %6 = load i8, ptr %5, align 1, !tbaa !43
  %7 = zext i8 %6 to i32
  %8 = add nsw i32 %7, %1
  %9 = tail call i32 @llvm.smin.i32(i32 %8, i32 255)
  %10 = tail call i32 @llvm.smax.i32(i32 %9, i32 0)
  %11 = trunc i32 %10 to i8
  %12 = getelementptr inbounds i8, ptr %5, i64 1
  %13 = load i8, ptr %12, align 1, !tbaa !43
  %14 = zext i8 %13 to i32
  %15 = add nsw i32 %14, %1
  %16 = tail call i32 @llvm.smin.i32(i32 %15, i32 255)
  %17 = tail call i32 @llvm.smax.i32(i32 %16, i32 0)
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds i8, ptr %5, i64 2
  %20 = load i8, ptr %19, align 1, !tbaa !43
  %21 = zext i8 %20 to i32
  %22 = add nsw i32 %21, %1
  %23 = tail call i32 @llvm.smin.i32(i32 %22, i32 255)
  %24 = tail call i32 @llvm.smax.i32(i32 %23, i32 0)
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds i8, ptr %5, i64 3
  %27 = load i8, ptr %26, align 1, !tbaa !43
  tail call void @glColor4ub(i8 noundef zeroext %11, i8 noundef zeroext %18, i8 noundef zeroext %25, i8 noundef zeroext %27) #16
  ret void
}

declare void @glColor4ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @UI_ThemeColorShadeAlpha(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @theme_active, align 8, !tbaa !46
  %5 = load i32, ptr @theme_spacetype, align 4, !tbaa !34
  %6 = tail call ptr @UI_ThemeGetColorPtr(ptr noundef %4, i32 noundef %5, i32 noundef %0)
  %7 = load i8, ptr %6, align 1, !tbaa !43
  %8 = zext i8 %7 to i32
  %9 = add nsw i32 %8, %1
  %10 = tail call i32 @llvm.smin.i32(i32 %9, i32 255)
  %11 = tail call i32 @llvm.smax.i32(i32 %10, i32 0)
  %12 = trunc i32 %11 to i8
  %13 = getelementptr inbounds i8, ptr %6, i64 1
  %14 = load i8, ptr %13, align 1, !tbaa !43
  %15 = zext i8 %14 to i32
  %16 = add nsw i32 %15, %1
  %17 = tail call i32 @llvm.smin.i32(i32 %16, i32 255)
  %18 = tail call i32 @llvm.smax.i32(i32 %17, i32 0)
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds i8, ptr %6, i64 2
  %21 = load i8, ptr %20, align 1, !tbaa !43
  %22 = zext i8 %21 to i32
  %23 = add nsw i32 %22, %1
  %24 = tail call i32 @llvm.smin.i32(i32 %23, i32 255)
  %25 = tail call i32 @llvm.smax.i32(i32 %24, i32 0)
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds i8, ptr %6, i64 3
  %28 = load i8, ptr %27, align 1, !tbaa !43
  %29 = zext i8 %28 to i32
  %30 = add nsw i32 %29, %2
  %31 = tail call i32 @llvm.smin.i32(i32 %30, i32 255)
  %32 = tail call i32 @llvm.smax.i32(i32 %31, i32 0)
  %33 = trunc i32 %32 to i8
  tail call void @glColor4ub(i8 noundef zeroext %12, i8 noundef zeroext %19, i8 noundef zeroext %26, i8 noundef zeroext %33) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @UI_GetThemeColorBlend3ubv(i32 noundef %0, i32 noundef %1, float noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #8 {
  %5 = load ptr, ptr @theme_active, align 8, !tbaa !46
  %6 = load i32, ptr @theme_spacetype, align 4, !tbaa !34
  %7 = tail call ptr @UI_ThemeGetColorPtr(ptr noundef %5, i32 noundef %6, i32 noundef %0)
  %8 = tail call ptr @UI_ThemeGetColorPtr(ptr noundef %5, i32 noundef %6, i32 noundef %1)
  %9 = fcmp olt float %2, 0.000000e+00
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = fcmp ogt float %2, 1.000000e+00
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  br label %13

13:                                               ; preds = %4, %10, %12
  %14 = phi float [ 1.000000e+00, %12 ], [ %2, %10 ], [ 0.000000e+00, %4 ]
  %15 = fsub float 1.000000e+00, %14
  %16 = load i8, ptr %7, align 1, !tbaa !43
  %17 = uitofp i8 %16 to float
  %18 = load i8, ptr %8, align 1, !tbaa !43
  %19 = uitofp i8 %18 to float
  %20 = fmul float %14, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %17, float %20)
  %22 = tail call float @llvm.floor.f32(float %21)
  %23 = fptoui float %22 to i8
  store i8 %23, ptr %3, align 1, !tbaa !43
  %24 = getelementptr inbounds i8, ptr %7, i64 1
  %25 = load i8, ptr %24, align 1, !tbaa !43
  %26 = uitofp i8 %25 to float
  %27 = getelementptr inbounds i8, ptr %8, i64 1
  %28 = load i8, ptr %27, align 1, !tbaa !43
  %29 = uitofp i8 %28 to float
  %30 = fmul float %14, %29
  %31 = tail call float @llvm.fmuladd.f32(float %15, float %26, float %30)
  %32 = tail call float @llvm.floor.f32(float %31)
  %33 = fptoui float %32 to i8
  %34 = getelementptr inbounds i8, ptr %3, i64 1
  store i8 %33, ptr %34, align 1, !tbaa !43
  %35 = getelementptr inbounds i8, ptr %7, i64 2
  %36 = load i8, ptr %35, align 1, !tbaa !43
  %37 = uitofp i8 %36 to float
  %38 = getelementptr inbounds i8, ptr %8, i64 2
  %39 = load i8, ptr %38, align 1, !tbaa !43
  %40 = uitofp i8 %39 to float
  %41 = fmul float %14, %40
  %42 = tail call float @llvm.fmuladd.f32(float %15, float %37, float %41)
  %43 = tail call float @llvm.floor.f32(float %42)
  %44 = fptoui float %43 to i8
  %45 = getelementptr inbounds i8, ptr %3, i64 2
  store i8 %44, ptr %45, align 1, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #9

; Function Attrs: nounwind uwtable
define dso_local void @UI_ThemeColorBlend(i32 noundef %0, i32 noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = alloca [3 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #16
  %5 = load ptr, ptr @theme_active, align 8, !tbaa !46
  %6 = load i32, ptr @theme_spacetype, align 4, !tbaa !34
  %7 = tail call ptr @UI_ThemeGetColorPtr(ptr noundef %5, i32 noundef %6, i32 noundef %0)
  %8 = tail call ptr @UI_ThemeGetColorPtr(ptr noundef %5, i32 noundef %6, i32 noundef %1)
  %9 = fcmp olt float %2, 0.000000e+00
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = fcmp ogt float %2, 1.000000e+00
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  br label %13

13:                                               ; preds = %3, %10, %12
  %14 = phi float [ 1.000000e+00, %12 ], [ %2, %10 ], [ 0.000000e+00, %3 ]
  %15 = fsub float 1.000000e+00, %14
  %16 = load i8, ptr %7, align 1, !tbaa !43
  %17 = uitofp i8 %16 to float
  %18 = load i8, ptr %8, align 1, !tbaa !43
  %19 = uitofp i8 %18 to float
  %20 = fmul float %14, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %17, float %20)
  %22 = tail call float @llvm.floor.f32(float %21)
  %23 = fptoui float %22 to i8
  store i8 %23, ptr %4, align 1, !tbaa !43
  %24 = getelementptr inbounds i8, ptr %7, i64 1
  %25 = load i8, ptr %24, align 1, !tbaa !43
  %26 = uitofp i8 %25 to float
  %27 = getelementptr inbounds i8, ptr %8, i64 1
  %28 = load i8, ptr %27, align 1, !tbaa !43
  %29 = uitofp i8 %28 to float
  %30 = fmul float %14, %29
  %31 = tail call float @llvm.fmuladd.f32(float %15, float %26, float %30)
  %32 = tail call float @llvm.floor.f32(float %31)
  %33 = fptoui float %32 to i8
  %34 = getelementptr inbounds i8, ptr %4, i64 1
  store i8 %33, ptr %34, align 1, !tbaa !43
  %35 = getelementptr inbounds i8, ptr %7, i64 2
  %36 = load i8, ptr %35, align 1, !tbaa !43
  %37 = uitofp i8 %36 to float
  %38 = getelementptr inbounds i8, ptr %8, i64 2
  %39 = load i8, ptr %38, align 1, !tbaa !43
  %40 = uitofp i8 %39 to float
  %41 = fmul float %14, %40
  %42 = tail call float @llvm.fmuladd.f32(float %15, float %37, float %41)
  %43 = tail call float @llvm.floor.f32(float %42)
  %44 = fptoui float %43 to i8
  %45 = getelementptr inbounds i8, ptr %4, i64 2
  store i8 %44, ptr %45, align 1, !tbaa !43
  call void @glColor3ubv(ptr noundef nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @UI_ThemeColorBlendShade(i32 noundef %0, i32 noundef %1, float noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @theme_active, align 8, !tbaa !46
  %6 = load i32, ptr @theme_spacetype, align 4, !tbaa !34
  %7 = tail call ptr @UI_ThemeGetColorPtr(ptr noundef %5, i32 noundef %6, i32 noundef %0)
  %8 = tail call ptr @UI_ThemeGetColorPtr(ptr noundef %5, i32 noundef %6, i32 noundef %1)
  %9 = fcmp olt float %2, 0.000000e+00
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = fcmp ogt float %2, 1.000000e+00
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  br label %13

13:                                               ; preds = %4, %10, %12
  %14 = phi float [ 1.000000e+00, %12 ], [ %2, %10 ], [ 0.000000e+00, %4 ]
  %15 = sitofp i32 %3 to float
  %16 = fsub float 1.000000e+00, %14
  %17 = load i8, ptr %7, align 1, !tbaa !43
  %18 = uitofp i8 %17 to float
  %19 = load i8, ptr %8, align 1, !tbaa !43
  %20 = uitofp i8 %19 to float
  %21 = fmul float %14, %20
  %22 = tail call float @llvm.fmuladd.f32(float %16, float %18, float %21)
  %23 = tail call float @llvm.floor.f32(float %22)
  %24 = fadd float %23, %15
  %25 = fptosi float %24 to i32
  %26 = getelementptr inbounds i8, ptr %7, i64 1
  %27 = load i8, ptr %26, align 1, !tbaa !43
  %28 = uitofp i8 %27 to float
  %29 = getelementptr inbounds i8, ptr %8, i64 1
  %30 = load i8, ptr %29, align 1, !tbaa !43
  %31 = uitofp i8 %30 to float
  %32 = fmul float %14, %31
  %33 = tail call float @llvm.fmuladd.f32(float %16, float %28, float %32)
  %34 = tail call float @llvm.floor.f32(float %33)
  %35 = fadd float %34, %15
  %36 = fptosi float %35 to i32
  %37 = getelementptr inbounds i8, ptr %7, i64 2
  %38 = load i8, ptr %37, align 1, !tbaa !43
  %39 = uitofp i8 %38 to float
  %40 = getelementptr inbounds i8, ptr %8, i64 2
  %41 = load i8, ptr %40, align 1, !tbaa !43
  %42 = uitofp i8 %41 to float
  %43 = fmul float %14, %42
  %44 = tail call float @llvm.fmuladd.f32(float %16, float %39, float %43)
  %45 = tail call float @llvm.floor.f32(float %44)
  %46 = fadd float %45, %15
  %47 = fptosi float %46 to i32
  %48 = tail call i32 @llvm.smin.i32(i32 %25, i32 255)
  %49 = tail call i32 @llvm.smax.i32(i32 %48, i32 0)
  %50 = trunc i32 %49 to i8
  %51 = tail call i32 @llvm.smin.i32(i32 %36, i32 255)
  %52 = tail call i32 @llvm.smax.i32(i32 %51, i32 0)
  %53 = trunc i32 %52 to i8
  %54 = tail call i32 @llvm.smin.i32(i32 %47, i32 255)
  %55 = tail call i32 @llvm.smax.i32(i32 %54, i32 0)
  %56 = trunc i32 %55 to i8
  tail call void @glColor3ub(i8 noundef zeroext %50, i8 noundef zeroext %53, i8 noundef zeroext %56) #16
  ret void
}

declare void @glColor3ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @UI_ThemeColorBlendShadeAlpha(i32 noundef %0, i32 noundef %1, float noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr @theme_active, align 8, !tbaa !46
  %7 = load i32, ptr @theme_spacetype, align 4, !tbaa !34
  %8 = tail call ptr @UI_ThemeGetColorPtr(ptr noundef %6, i32 noundef %7, i32 noundef %0)
  %9 = tail call ptr @UI_ThemeGetColorPtr(ptr noundef %6, i32 noundef %7, i32 noundef %1)
  %10 = fcmp olt float %2, 0.000000e+00
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = fcmp ogt float %2, 1.000000e+00
  br i1 %12, label %13, label %14

13:                                               ; preds = %11
  br label %14

14:                                               ; preds = %5, %11, %13
  %15 = phi float [ 1.000000e+00, %13 ], [ %2, %11 ], [ 0.000000e+00, %5 ]
  %16 = sitofp i32 %3 to float
  %17 = fsub float 1.000000e+00, %15
  %18 = load i8, ptr %8, align 1, !tbaa !43
  %19 = uitofp i8 %18 to float
  %20 = load i8, ptr %9, align 1, !tbaa !43
  %21 = uitofp i8 %20 to float
  %22 = fmul float %15, %21
  %23 = tail call float @llvm.fmuladd.f32(float %17, float %19, float %22)
  %24 = tail call float @llvm.floor.f32(float %23)
  %25 = fadd float %24, %16
  %26 = fptosi float %25 to i32
  %27 = getelementptr inbounds i8, ptr %8, i64 1
  %28 = load i8, ptr %27, align 1, !tbaa !43
  %29 = uitofp i8 %28 to float
  %30 = getelementptr inbounds i8, ptr %9, i64 1
  %31 = load i8, ptr %30, align 1, !tbaa !43
  %32 = uitofp i8 %31 to float
  %33 = fmul float %15, %32
  %34 = tail call float @llvm.fmuladd.f32(float %17, float %29, float %33)
  %35 = tail call float @llvm.floor.f32(float %34)
  %36 = fadd float %35, %16
  %37 = fptosi float %36 to i32
  %38 = getelementptr inbounds i8, ptr %8, i64 2
  %39 = load i8, ptr %38, align 1, !tbaa !43
  %40 = uitofp i8 %39 to float
  %41 = getelementptr inbounds i8, ptr %9, i64 2
  %42 = load i8, ptr %41, align 1, !tbaa !43
  %43 = uitofp i8 %42 to float
  %44 = fmul float %15, %43
  %45 = tail call float @llvm.fmuladd.f32(float %17, float %40, float %44)
  %46 = tail call float @llvm.floor.f32(float %45)
  %47 = fadd float %46, %16
  %48 = fptosi float %47 to i32
  %49 = sitofp i32 %4 to float
  %50 = getelementptr inbounds i8, ptr %8, i64 3
  %51 = load i8, ptr %50, align 1, !tbaa !43
  %52 = uitofp i8 %51 to float
  %53 = getelementptr inbounds i8, ptr %9, i64 3
  %54 = load i8, ptr %53, align 1, !tbaa !43
  %55 = uitofp i8 %54 to float
  %56 = fmul float %15, %55
  %57 = tail call float @llvm.fmuladd.f32(float %17, float %52, float %56)
  %58 = tail call float @llvm.floor.f32(float %57)
  %59 = fadd float %58, %49
  %60 = fptosi float %59 to i32
  %61 = tail call i32 @llvm.smin.i32(i32 %26, i32 255)
  %62 = tail call i32 @llvm.smax.i32(i32 %61, i32 0)
  %63 = trunc i32 %62 to i8
  %64 = tail call i32 @llvm.smin.i32(i32 %37, i32 255)
  %65 = tail call i32 @llvm.smax.i32(i32 %64, i32 0)
  %66 = trunc i32 %65 to i8
  %67 = tail call i32 @llvm.smin.i32(i32 %48, i32 255)
  %68 = tail call i32 @llvm.smax.i32(i32 %67, i32 0)
  %69 = trunc i32 %68 to i8
  %70 = tail call i32 @llvm.smin.i32(i32 %60, i32 255)
  %71 = tail call i32 @llvm.smax.i32(i32 %70, i32 0)
  %72 = trunc i32 %71 to i8
  tail call void @glColor4ub(i8 noundef zeroext %63, i8 noundef zeroext %66, i8 noundef zeroext %69, i8 noundef zeroext %72) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local float @UI_GetThemeValuef(i32 noundef %0) local_unnamed_addr #8 {
  %2 = load ptr, ptr @theme_active, align 8, !tbaa !46
  %3 = load i32, ptr @theme_spacetype, align 4, !tbaa !34
  %4 = tail call ptr @UI_ThemeGetColorPtr(ptr noundef %2, i32 noundef %3, i32 noundef %0)
  %5 = load i8, ptr %4, align 1, !tbaa !43
  %6 = uitofp i8 %5 to float
  ret float %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @UI_GetThemeValue(i32 noundef %0) local_unnamed_addr #8 {
  %2 = load ptr, ptr @theme_active, align 8, !tbaa !46
  %3 = load i32, ptr @theme_spacetype, align 4, !tbaa !34
  %4 = tail call ptr @UI_ThemeGetColorPtr(ptr noundef %2, i32 noundef %3, i32 noundef %0)
  %5 = load i8, ptr %4, align 1, !tbaa !43
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @UI_GetThemeColor3fv(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #8 {
  %3 = load ptr, ptr @theme_active, align 8, !tbaa !46
  %4 = load i32, ptr @theme_spacetype, align 4, !tbaa !34
  %5 = tail call ptr @UI_ThemeGetColorPtr(ptr noundef %3, i32 noundef %4, i32 noundef %0)
  %6 = load i8, ptr %5, align 1, !tbaa !43
  %7 = uitofp i8 %6 to float
  %8 = fdiv float %7, 2.550000e+02
  store float %8, ptr %1, align 4, !tbaa !83
  %9 = getelementptr inbounds i8, ptr %5, i64 1
  %10 = load i8, ptr %9, align 1, !tbaa !43
  %11 = uitofp i8 %10 to float
  %12 = fdiv float %11, 2.550000e+02
  %13 = getelementptr inbounds float, ptr %1, i64 1
  store float %12, ptr %13, align 4, !tbaa !83
  %14 = getelementptr inbounds i8, ptr %5, i64 2
  %15 = load i8, ptr %14, align 1, !tbaa !43
  %16 = uitofp i8 %15 to float
  %17 = fdiv float %16, 2.550000e+02
  %18 = getelementptr inbounds float, ptr %1, i64 2
  store float %17, ptr %18, align 4, !tbaa !83
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @UI_GetThemeColor4fv(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #8 {
  %3 = load ptr, ptr @theme_active, align 8, !tbaa !46
  %4 = load i32, ptr @theme_spacetype, align 4, !tbaa !34
  %5 = tail call ptr @UI_ThemeGetColorPtr(ptr noundef %3, i32 noundef %4, i32 noundef %0)
  %6 = load i8, ptr %5, align 1, !tbaa !43
  %7 = uitofp i8 %6 to float
  %8 = fdiv float %7, 2.550000e+02
  store float %8, ptr %1, align 4, !tbaa !83
  %9 = getelementptr inbounds i8, ptr %5, i64 1
  %10 = load i8, ptr %9, align 1, !tbaa !43
  %11 = uitofp i8 %10 to float
  %12 = fdiv float %11, 2.550000e+02
  %13 = getelementptr inbounds float, ptr %1, i64 1
  store float %12, ptr %13, align 4, !tbaa !83
  %14 = getelementptr inbounds i8, ptr %5, i64 2
  %15 = load i8, ptr %14, align 1, !tbaa !43
  %16 = uitofp i8 %15 to float
  %17 = fdiv float %16, 2.550000e+02
  %18 = getelementptr inbounds float, ptr %1, i64 2
  store float %17, ptr %18, align 4, !tbaa !83
  %19 = getelementptr inbounds i8, ptr %5, i64 3
  %20 = load i8, ptr %19, align 1, !tbaa !43
  %21 = uitofp i8 %20 to float
  %22 = fdiv float %21, 2.550000e+02
  %23 = getelementptr inbounds float, ptr %1, i64 3
  store float %22, ptr %23, align 4, !tbaa !83
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @UI_GetThemeColorShade3fv(i32 noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #8 {
  %4 = load ptr, ptr @theme_active, align 8, !tbaa !46
  %5 = load i32, ptr @theme_spacetype, align 4, !tbaa !34
  %6 = tail call ptr @UI_ThemeGetColorPtr(ptr noundef %4, i32 noundef %5, i32 noundef %0)
  %7 = load i8, ptr %6, align 1, !tbaa !43
  %8 = zext i8 %7 to i32
  %9 = add nsw i32 %8, %1
  %10 = tail call i32 @llvm.smin.i32(i32 %9, i32 255)
  %11 = tail call i32 @llvm.smax.i32(i32 %10, i32 0)
  %12 = sitofp i32 %11 to float
  %13 = getelementptr inbounds i8, ptr %6, i64 1
  %14 = load i8, ptr %13, align 1, !tbaa !43
  %15 = zext i8 %14 to i32
  %16 = add nsw i32 %15, %1
  %17 = tail call i32 @llvm.smin.i32(i32 %16, i32 255)
  %18 = tail call i32 @llvm.smax.i32(i32 %17, i32 0)
  %19 = sitofp i32 %18 to float
  %20 = getelementptr inbounds i8, ptr %6, i64 2
  %21 = load i8, ptr %20, align 1, !tbaa !43
  %22 = zext i8 %21 to i32
  %23 = add nsw i32 %22, %1
  %24 = tail call i32 @llvm.smin.i32(i32 %23, i32 255)
  %25 = tail call i32 @llvm.smax.i32(i32 %24, i32 0)
  %26 = sitofp i32 %25 to float
  %27 = fdiv float %12, 2.550000e+02
  store float %27, ptr %2, align 4, !tbaa !83
  %28 = fdiv float %19, 2.550000e+02
  %29 = getelementptr inbounds float, ptr %2, i64 1
  store float %28, ptr %29, align 4, !tbaa !83
  %30 = fdiv float %26, 2.550000e+02
  %31 = getelementptr inbounds float, ptr %2, i64 2
  store float %30, ptr %31, align 4, !tbaa !83
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @UI_GetThemeColorShade3ubv(i32 noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #8 {
  %4 = load ptr, ptr @theme_active, align 8, !tbaa !46
  %5 = load i32, ptr @theme_spacetype, align 4, !tbaa !34
  %6 = tail call ptr @UI_ThemeGetColorPtr(ptr noundef %4, i32 noundef %5, i32 noundef %0)
  %7 = load i8, ptr %6, align 1, !tbaa !43
  %8 = zext i8 %7 to i32
  %9 = add nsw i32 %8, %1
  %10 = tail call i32 @llvm.smin.i32(i32 %9, i32 255)
  %11 = tail call i32 @llvm.smax.i32(i32 %10, i32 0)
  %12 = trunc i32 %11 to i8
  %13 = getelementptr inbounds i8, ptr %6, i64 1
  %14 = load i8, ptr %13, align 1, !tbaa !43
  %15 = zext i8 %14 to i32
  %16 = add nsw i32 %15, %1
  %17 = tail call i32 @llvm.smin.i32(i32 %16, i32 255)
  %18 = tail call i32 @llvm.smax.i32(i32 %17, i32 0)
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds i8, ptr %6, i64 2
  %21 = load i8, ptr %20, align 1, !tbaa !43
  %22 = zext i8 %21 to i32
  %23 = add nsw i32 %22, %1
  %24 = tail call i32 @llvm.smin.i32(i32 %23, i32 255)
  %25 = tail call i32 @llvm.smax.i32(i32 %24, i32 0)
  %26 = trunc i32 %25 to i8
  store i8 %12, ptr %2, align 1, !tbaa !43
  %27 = getelementptr inbounds i8, ptr %2, i64 1
  store i8 %19, ptr %27, align 1, !tbaa !43
  %28 = getelementptr inbounds i8, ptr %2, i64 2
  store i8 %26, ptr %28, align 1, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @UI_GetThemeColor3ubv(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #8 {
  %3 = load ptr, ptr @theme_active, align 8, !tbaa !46
  %4 = load i32, ptr @theme_spacetype, align 4, !tbaa !34
  %5 = tail call ptr @UI_ThemeGetColorPtr(ptr noundef %3, i32 noundef %4, i32 noundef %0)
  %6 = load i8, ptr %5, align 1, !tbaa !43
  store i8 %6, ptr %1, align 1, !tbaa !43
  %7 = getelementptr inbounds i8, ptr %5, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa !43
  %9 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 %8, ptr %9, align 1, !tbaa !43
  %10 = getelementptr inbounds i8, ptr %5, i64 2
  %11 = load i8, ptr %10, align 1, !tbaa !43
  %12 = getelementptr inbounds i8, ptr %1, i64 2
  store i8 %11, ptr %12, align 1, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @UI_GetThemeColor4ubv(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #8 {
  %3 = load ptr, ptr @theme_active, align 8, !tbaa !46
  %4 = load i32, ptr @theme_spacetype, align 4, !tbaa !34
  %5 = tail call ptr @UI_ThemeGetColorPtr(ptr noundef %3, i32 noundef %4, i32 noundef %0)
  %6 = load i8, ptr %5, align 1, !tbaa !43
  store i8 %6, ptr %1, align 1, !tbaa !43
  %7 = getelementptr inbounds i8, ptr %5, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa !43
  %9 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 %8, ptr %9, align 1, !tbaa !43
  %10 = getelementptr inbounds i8, ptr %5, i64 2
  %11 = load i8, ptr %10, align 1, !tbaa !43
  %12 = getelementptr inbounds i8, ptr %1, i64 2
  store i8 %11, ptr %12, align 1, !tbaa !43
  %13 = getelementptr inbounds i8, ptr %5, i64 3
  %14 = load i8, ptr %13, align 1, !tbaa !43
  %15 = getelementptr inbounds i8, ptr %1, i64 3
  store i8 %14, ptr %15, align 1, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @UI_GetThemeColorType4ubv(i32 noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #8 {
  %4 = load ptr, ptr @theme_active, align 8, !tbaa !46
  %5 = tail call ptr @UI_ThemeGetColorPtr(ptr noundef %4, i32 noundef %1, i32 noundef %0)
  %6 = load i8, ptr %5, align 1, !tbaa !43
  store i8 %6, ptr %2, align 1, !tbaa !43
  %7 = getelementptr inbounds i8, ptr %5, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa !43
  %9 = getelementptr inbounds i8, ptr %2, i64 1
  store i8 %8, ptr %9, align 1, !tbaa !43
  %10 = getelementptr inbounds i8, ptr %5, i64 2
  %11 = load i8, ptr %10, align 1, !tbaa !43
  %12 = getelementptr inbounds i8, ptr %2, i64 2
  store i8 %11, ptr %12, align 1, !tbaa !43
  %13 = getelementptr inbounds i8, ptr %5, i64 3
  %14 = load i8, ptr %13, align 1, !tbaa !43
  %15 = getelementptr inbounds i8, ptr %2, i64 3
  store i8 %14, ptr %15, align 1, !tbaa !43
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @UI_ColorPtrBlendShade3ubv(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = fcmp olt float %2, 0.000000e+00
  br i1 %5, label %9, label %6

6:                                                ; preds = %4
  %7 = fcmp ogt float %2, 1.000000e+00
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  br label %9

9:                                                ; preds = %4, %6, %8
  %10 = phi float [ 1.000000e+00, %8 ], [ %2, %6 ], [ 0.000000e+00, %4 ]
  %11 = sitofp i32 %3 to float
  %12 = fsub float 1.000000e+00, %10
  %13 = load i8, ptr %0, align 1, !tbaa !43
  %14 = uitofp i8 %13 to float
  %15 = load i8, ptr %1, align 1, !tbaa !43
  %16 = uitofp i8 %15 to float
  %17 = fmul float %10, %16
  %18 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %17)
  %19 = tail call float @llvm.floor.f32(float %18)
  %20 = fadd float %19, %11
  %21 = fptosi float %20 to i32
  %22 = getelementptr inbounds i8, ptr %0, i64 1
  %23 = load i8, ptr %22, align 1, !tbaa !43
  %24 = uitofp i8 %23 to float
  %25 = getelementptr inbounds i8, ptr %1, i64 1
  %26 = load i8, ptr %25, align 1, !tbaa !43
  %27 = uitofp i8 %26 to float
  %28 = fmul float %10, %27
  %29 = tail call float @llvm.fmuladd.f32(float %12, float %24, float %28)
  %30 = tail call float @llvm.floor.f32(float %29)
  %31 = fadd float %30, %11
  %32 = fptosi float %31 to i32
  %33 = getelementptr inbounds i8, ptr %0, i64 2
  %34 = load i8, ptr %33, align 1, !tbaa !43
  %35 = uitofp i8 %34 to float
  %36 = getelementptr inbounds i8, ptr %1, i64 2
  %37 = load i8, ptr %36, align 1, !tbaa !43
  %38 = uitofp i8 %37 to float
  %39 = fmul float %10, %38
  %40 = tail call float @llvm.fmuladd.f32(float %12, float %35, float %39)
  %41 = tail call float @llvm.floor.f32(float %40)
  %42 = fadd float %41, %11
  %43 = fptosi float %42 to i32
  %44 = tail call i32 @llvm.smin.i32(i32 %21, i32 255)
  %45 = tail call i32 @llvm.smax.i32(i32 %44, i32 0)
  %46 = tail call i32 @llvm.smin.i32(i32 %32, i32 255)
  %47 = tail call i32 @llvm.smax.i32(i32 %46, i32 0)
  %48 = tail call i32 @llvm.smin.i32(i32 %43, i32 255)
  %49 = tail call i32 @llvm.smax.i32(i32 %48, i32 0)
  %50 = trunc i32 %45 to i8
  %51 = trunc i32 %47 to i8
  %52 = trunc i32 %49 to i8
  tail call void @glColor3ub(i8 noundef zeroext %50, i8 noundef zeroext %51, i8 noundef zeroext %52) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @UI_GetColorPtrShade3ubv(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #10 {
  %4 = load i8, ptr %0, align 1, !tbaa !43
  %5 = zext i8 %4 to i32
  %6 = add nsw i32 %5, %2
  %7 = getelementptr inbounds i8, ptr %0, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa !43
  %9 = zext i8 %8 to i32
  %10 = add nsw i32 %9, %2
  %11 = getelementptr inbounds i8, ptr %0, i64 2
  %12 = load i8, ptr %11, align 1, !tbaa !43
  %13 = zext i8 %12 to i32
  %14 = add nsw i32 %13, %2
  %15 = tail call i32 @llvm.smin.i32(i32 %6, i32 255)
  %16 = tail call i32 @llvm.smax.i32(i32 %15, i32 0)
  %17 = trunc i32 %16 to i8
  %18 = tail call i32 @llvm.smin.i32(i32 %10, i32 255)
  %19 = tail call i32 @llvm.smax.i32(i32 %18, i32 0)
  %20 = trunc i32 %19 to i8
  %21 = tail call i32 @llvm.smin.i32(i32 %14, i32 255)
  %22 = tail call i32 @llvm.smax.i32(i32 %21, i32 0)
  %23 = trunc i32 %22 to i8
  store i8 %17, ptr %1, align 1, !tbaa !43
  %24 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 %20, ptr %24, align 1, !tbaa !43
  %25 = getelementptr inbounds i8, ptr %1, i64 2
  store i8 %23, ptr %25, align 1, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @UI_GetColorPtrBlendShade3ubv(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, float noundef %3, i32 noundef %4) local_unnamed_addr #10 {
  %6 = fcmp olt float %3, 0.000000e+00
  br i1 %6, label %10, label %7

7:                                                ; preds = %5
  %8 = fcmp ogt float %3, 1.000000e+00
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  br label %10

10:                                               ; preds = %5, %7, %9
  %11 = phi float [ 1.000000e+00, %9 ], [ %3, %7 ], [ 0.000000e+00, %5 ]
  %12 = sitofp i32 %4 to double
  %13 = fsub float 1.000000e+00, %11
  %14 = load i8, ptr %0, align 1, !tbaa !43
  %15 = uitofp i8 %14 to float
  %16 = load i8, ptr %1, align 1, !tbaa !43
  %17 = uitofp i8 %16 to float
  %18 = fmul float %11, %17
  %19 = tail call float @llvm.fmuladd.f32(float %13, float %15, float %18)
  %20 = tail call float @llvm.floor.f32(float %19)
  %21 = fpext float %20 to double
  %22 = fadd double %12, %21
  %23 = fptosi double %22 to i32
  %24 = getelementptr inbounds i8, ptr %0, i64 1
  %25 = load i8, ptr %24, align 1, !tbaa !43
  %26 = uitofp i8 %25 to float
  %27 = getelementptr inbounds i8, ptr %1, i64 1
  %28 = load i8, ptr %27, align 1, !tbaa !43
  %29 = uitofp i8 %28 to float
  %30 = fmul float %11, %29
  %31 = tail call float @llvm.fmuladd.f32(float %13, float %26, float %30)
  %32 = tail call float @llvm.floor.f32(float %31)
  %33 = fpext float %32 to double
  %34 = fadd double %12, %33
  %35 = fptosi double %34 to i32
  %36 = getelementptr inbounds i8, ptr %0, i64 2
  %37 = load i8, ptr %36, align 1, !tbaa !43
  %38 = uitofp i8 %37 to float
  %39 = getelementptr inbounds i8, ptr %1, i64 2
  %40 = load i8, ptr %39, align 1, !tbaa !43
  %41 = uitofp i8 %40 to float
  %42 = fmul float %11, %41
  %43 = tail call float @llvm.fmuladd.f32(float %13, float %38, float %42)
  %44 = tail call float @llvm.floor.f32(float %43)
  %45 = fpext float %44 to double
  %46 = fadd double %12, %45
  %47 = fptosi double %46 to i32
  %48 = tail call i32 @llvm.smin.i32(i32 %23, i32 255)
  %49 = tail call i32 @llvm.smax.i32(i32 %48, i32 0)
  %50 = trunc i32 %49 to i8
  %51 = tail call i32 @llvm.smin.i32(i32 %35, i32 255)
  %52 = tail call i32 @llvm.smax.i32(i32 %51, i32 0)
  %53 = trunc i32 %52 to i8
  %54 = tail call i32 @llvm.smin.i32(i32 %47, i32 255)
  %55 = tail call i32 @llvm.smax.i32(i32 %54, i32 0)
  %56 = trunc i32 %55 to i8
  store i8 %50, ptr %2, align 1, !tbaa !43
  %57 = getelementptr inbounds i8, ptr %2, i64 1
  store i8 %53, ptr %57, align 1, !tbaa !43
  %58 = getelementptr inbounds i8, ptr %2, i64 2
  store i8 %56, ptr %58, align 1, !tbaa !43
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @UI_ThemeClearColor(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @theme_active, align 8, !tbaa !46
  %3 = load i32, ptr @theme_spacetype, align 4, !tbaa !34
  %4 = tail call ptr @UI_ThemeGetColorPtr(ptr noundef %2, i32 noundef %3, i32 noundef %0)
  %5 = load i8, ptr %4, align 1, !tbaa !43
  %6 = uitofp i8 %5 to float
  %7 = fdiv float %6, 2.550000e+02
  %8 = getelementptr inbounds i8, ptr %4, i64 1
  %9 = load i8, ptr %8, align 1, !tbaa !43
  %10 = uitofp i8 %9 to float
  %11 = fdiv float %10, 2.550000e+02
  %12 = getelementptr inbounds i8, ptr %4, i64 2
  %13 = load i8, ptr %12, align 1, !tbaa !43
  %14 = uitofp i8 %13 to float
  %15 = fdiv float %14, 2.550000e+02
  tail call void @glClearColor(float noundef %7, float noundef %11, float noundef %15, float noundef 0.000000e+00) #16
  ret void
}

declare void @glClearColor(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @UI_ThemeMenuShadowWidth() local_unnamed_addr #11 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !48
  %2 = getelementptr inbounds %struct.bTheme, ptr %1, i64 0, i32 3, i32 22
  %3 = load i16, ptr %2, align 8, !tbaa !61
  %4 = sitofp i16 %3 to float
  %5 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !84
  %6 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !85
  %7 = sitofp i32 %6 to float
  %8 = fmul float %5, %7
  %9 = fdiv float %8, 7.200000e+01
  %10 = fmul float %9, %4
  %11 = fptosi float %10 to i32
  ret i32 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @UI_make_axis_color(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i8 noundef zeroext %2) local_unnamed_addr #12 {
  switch i8 %2, label %66 [
    i8 88, label %4
    i8 89, label %9
    i8 90, label %14
  ]

4:                                                ; preds = %3
  %5 = load ptr, ptr @theme_active, align 8, !tbaa !46
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds %struct.bTheme, ptr %5, i64 0, i32 3, i32 26
  %8 = select i1 %6, ptr @UI_ThemeGetColorPtr.error, ptr %7
  br label %19

9:                                                ; preds = %3
  %10 = load ptr, ptr @theme_active, align 8, !tbaa !46
  %11 = icmp eq ptr %10, null
  %12 = getelementptr inbounds %struct.bTheme, ptr %10, i64 0, i32 3, i32 27
  %13 = select i1 %11, ptr @UI_ThemeGetColorPtr.error, ptr %12
  br label %19

14:                                               ; preds = %3
  %15 = load ptr, ptr @theme_active, align 8, !tbaa !46
  %16 = icmp eq ptr %15, null
  %17 = getelementptr inbounds %struct.bTheme, ptr %15, i64 0, i32 3, i32 28
  %18 = select i1 %16, ptr @UI_ThemeGetColorPtr.error, ptr %17
  br label %19

19:                                               ; preds = %4, %9, %14
  %20 = phi ptr [ %18, %14 ], [ %13, %9 ], [ %8, %4 ]
  %21 = load i8, ptr %20, align 1, !tbaa !43
  %22 = getelementptr inbounds i8, ptr %20, i64 1
  %23 = load i8, ptr %22, align 1, !tbaa !43
  %24 = getelementptr inbounds i8, ptr %20, i64 2
  %25 = load i8, ptr %24, align 1, !tbaa !43
  %26 = load i8, ptr %0, align 1, !tbaa !43
  %27 = uitofp i8 %26 to float
  %28 = uitofp i8 %21 to float
  %29 = fmul float %28, 5.000000e-01
  %30 = tail call float @llvm.fmuladd.f32(float %27, float 5.000000e-01, float %29)
  %31 = tail call float @llvm.floor.f32(float %30)
  %32 = fpext float %31 to double
  %33 = fadd double %32, -1.000000e+01
  %34 = fptosi double %33 to i32
  %35 = getelementptr inbounds i8, ptr %0, i64 1
  %36 = load i8, ptr %35, align 1, !tbaa !43
  %37 = uitofp i8 %36 to float
  %38 = uitofp i8 %23 to float
  %39 = fmul float %38, 5.000000e-01
  %40 = tail call float @llvm.fmuladd.f32(float %37, float 5.000000e-01, float %39)
  %41 = tail call float @llvm.floor.f32(float %40)
  %42 = fpext float %41 to double
  %43 = fadd double %42, -1.000000e+01
  %44 = fptosi double %43 to i32
  %45 = getelementptr inbounds i8, ptr %0, i64 2
  %46 = load i8, ptr %45, align 1, !tbaa !43
  %47 = uitofp i8 %46 to float
  %48 = uitofp i8 %25 to float
  %49 = fmul float %48, 5.000000e-01
  %50 = tail call float @llvm.fmuladd.f32(float %47, float 5.000000e-01, float %49)
  %51 = tail call float @llvm.floor.f32(float %50)
  %52 = fpext float %51 to double
  %53 = fadd double %52, -1.000000e+01
  %54 = fptosi double %53 to i32
  %55 = tail call i32 @llvm.smin.i32(i32 %34, i32 255)
  %56 = tail call i32 @llvm.smax.i32(i32 %55, i32 0)
  %57 = trunc i32 %56 to i8
  %58 = tail call i32 @llvm.smin.i32(i32 %44, i32 255)
  %59 = tail call i32 @llvm.smax.i32(i32 %58, i32 0)
  %60 = trunc i32 %59 to i8
  %61 = tail call i32 @llvm.smin.i32(i32 %54, i32 255)
  %62 = tail call i32 @llvm.smax.i32(i32 %61, i32 0)
  %63 = trunc i32 %62 to i8
  store i8 %57, ptr %1, align 1, !tbaa !43
  %64 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 %60, ptr %64, align 1, !tbaa !43
  %65 = getelementptr inbounds i8, ptr %1, i64 2
  store i8 %63, ptr %65, align 1, !tbaa !43
  br label %66

66:                                               ; preds = %19, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @init_userdef_do_versions() local_unnamed_addr #0 {
  %1 = load ptr, ptr @G, align 8, !tbaa !86
  %2 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 21), align 2, !tbaa !88
  %3 = icmp eq i16 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store i16 3, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 21), align 2, !tbaa !88
  br label %5

5:                                                ; preds = %4, %0
  %6 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 36), align 4, !tbaa !89
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  store i16 5, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 36), align 4, !tbaa !89
  store i16 2, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 37), align 2, !tbaa !90
  br label %9

9:                                                ; preds = %8, %5
  %10 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 52), align 4, !tbaa !91
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i16 5, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 52), align 4, !tbaa !91
  store i16 5, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 53), align 2, !tbaa !92
  br label %13

13:                                               ; preds = %12, %9
  %14 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 27), align 4, !tbaa !93
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 2048, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 27), align 4, !tbaa !93
  br label %17

17:                                               ; preds = %16, %13
  %18 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 5), align 4
  %19 = icmp eq i16 %18, 47
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  tail call void @BLI_system_temporary_dir(ptr noundef nonnull getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 5)) #16
  br label %21

21:                                               ; preds = %20, %17
  %22 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 91), align 8, !tbaa !94
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i16 2, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 91), align 8, !tbaa !94
  br label %25

25:                                               ; preds = %24, %21
  %26 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 4), align 8, !tbaa !95
  %27 = icmp slt i32 %26, 1
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 1, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 4), align 8, !tbaa !95
  br label %29

29:                                               ; preds = %28, %25
  %30 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 55), align 8, !tbaa !96
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i16 14, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 55), align 8, !tbaa !96
  store i16 25, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 58), align 2, !tbaa !97
  store i16 16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 57), align 4, !tbaa !98
  br label %33

33:                                               ; preds = %32, %29
  %34 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 66), align 2, !tbaa !99
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i16 15, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 66), align 2, !tbaa !99
  br label %37

37:                                               ; preds = %36, %33
  %38 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 105), align 8, !tbaa !100
  %39 = fcmp oeq float %38, 0.000000e+00
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store float 2.500000e-01, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 105), align 8, !tbaa !100
  br label %41

41:                                               ; preds = %40, %37
  %42 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !101
  %43 = and i32 %42, 131072
  %44 = icmp eq i32 %43, 0
  %45 = select i1 %44, ptr null, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 95)
  %46 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !48
  %47 = getelementptr inbounds %struct.bTheme, ptr %46, i64 0, i32 5, i32 40
  tail call void @vDM_ColorBand_store(ptr noundef %45, ptr noundef nonnull %47) #16
  %48 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 3
  %49 = load i16, ptr %48, align 8, !tbaa !102
  %50 = icmp slt i16 %49, 192
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  store i16 47, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 11), align 4
  br label %52

52:                                               ; preds = %51, %41
  %53 = load i16, ptr %48, align 8, !tbaa !102
  %54 = icmp slt i16 %53, 220
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 3), align 4, !tbaa !105
  %57 = or i32 %56, 512
  store i32 %57, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 3), align 4, !tbaa !105
  br label %58

58:                                               ; preds = %55, %52
  %59 = icmp slt i16 %53, 235
  br i1 %59, label %60, label %106

60:                                               ; preds = %58
  %61 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !106
  %62 = or i32 %61, 8192
  store i32 %62, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !106
  %63 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 46), align 8, !tbaa !107
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store i16 32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 46), align 8, !tbaa !107
  br label %66

66:                                               ; preds = %65, %60
  %67 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !46
  %68 = icmp eq ptr %67, null
  br i1 %68, label %106, label %69

69:                                               ; preds = %66, %103
  %70 = phi ptr [ %104, %103 ], [ %67, %66 ]
  %71 = getelementptr inbounds %struct.bTheme, ptr %70, i64 0, i32 5, i32 43, i64 3
  %72 = load i8, ptr %71, align 1, !tbaa !43
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.bTheme, ptr %70, i64 0, i32 5, i32 43
  store i8 -26, ptr %75, align 1, !tbaa !43
  %76 = getelementptr inbounds %struct.bTheme, ptr %70, i64 0, i32 5, i32 43, i64 1
  store i8 -106, ptr %76, align 1, !tbaa !43
  %77 = getelementptr inbounds %struct.bTheme, ptr %70, i64 0, i32 5, i32 43, i64 2
  store i8 50, ptr %77, align 1, !tbaa !43
  store i8 -1, ptr %71, align 1, !tbaa !43
  br label %78

78:                                               ; preds = %74, %69
  %79 = getelementptr inbounds %struct.bTheme, ptr %70, i64 0, i32 5, i32 54, i64 3
  %80 = load i8, ptr %79, align 1, !tbaa !43
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.bTheme, ptr %70, i64 0, i32 5, i32 54
  store i8 34, ptr %83, align 1, !tbaa !43
  %84 = getelementptr inbounds %struct.bTheme, ptr %70, i64 0, i32 5, i32 54, i64 1
  store i8 -35, ptr %84, align 1, !tbaa !43
  %85 = getelementptr inbounds %struct.bTheme, ptr %70, i64 0, i32 5, i32 54, i64 2
  store i8 -35, ptr %85, align 1, !tbaa !43
  store i8 -1, ptr %79, align 1, !tbaa !43
  br label %86

86:                                               ; preds = %82, %78
  %87 = getelementptr inbounds %struct.bTheme, ptr %70, i64 0, i32 5, i32 55, i64 3
  %88 = load i8, ptr %87, align 1, !tbaa !43
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.bTheme, ptr %70, i64 0, i32 5, i32 55
  store i8 35, ptr %91, align 1, !tbaa !43
  %92 = getelementptr inbounds %struct.bTheme, ptr %70, i64 0, i32 5, i32 55, i64 1
  store i8 97, ptr %92, align 1, !tbaa !43
  %93 = getelementptr inbounds %struct.bTheme, ptr %70, i64 0, i32 5, i32 55, i64 2
  store i8 -35, ptr %93, align 1, !tbaa !43
  store i8 -1, ptr %87, align 1, !tbaa !43
  br label %94

94:                                               ; preds = %90, %86
  %95 = getelementptr inbounds %struct.bTheme, ptr %70, i64 0, i32 5, i32 49, i64 3
  %96 = load i8, ptr %95, align 1, !tbaa !43
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.bTheme, ptr %70, i64 0, i32 5, i32 49
  store i8 -1, ptr %99, align 1, !tbaa !43
  %100 = getelementptr inbounds %struct.bTheme, ptr %70, i64 0, i32 5, i32 49, i64 1
  store i8 -118, ptr %100, align 1, !tbaa !43
  %101 = getelementptr inbounds %struct.bTheme, ptr %70, i64 0, i32 5, i32 49, i64 2
  store i8 48, ptr %101, align 1, !tbaa !43
  store i8 -1, ptr %95, align 1, !tbaa !43
  %102 = getelementptr inbounds %struct.bTheme, ptr %70, i64 0, i32 5, i32 101
  store i8 4, ptr %102, align 2, !tbaa !66
  br label %103

103:                                              ; preds = %94, %98
  %104 = load ptr, ptr %70, align 8, !tbaa !46
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %69, !llvm.loop !108

106:                                              ; preds = %103, %66, %58
  %107 = load i16, ptr %48, align 8, !tbaa !102
  %108 = icmp slt i16 %107, 236
  br i1 %108, label %109, label %115

109:                                              ; preds = %106
  %110 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !101
  %111 = and i32 %110, 16384
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %109
  %114 = and i32 %110, -4097
  store i32 %114, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !101
  br label %115

115:                                              ; preds = %109, %113, %106
  %116 = icmp sgt i16 %107, 236
  %117 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %118 = icmp eq ptr %117, null
  %119 = select i1 %116, i1 true, i1 %118
  br i1 %119, label %165, label %120

120:                                              ; preds = %115, %162
  %121 = phi ptr [ %163, %162 ], [ %117, %115 ]
  %122 = getelementptr inbounds %struct.bTheme, ptr %121, i64 0, i32 15, i32 0, i64 3
  %123 = load i8, ptr %122, align 1, !tbaa !43
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %125, label %138

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.bTheme, ptr %121, i64 0, i32 15
  %127 = getelementptr inbounds %struct.bTheme, ptr %121, i64 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(720) %126, ptr noundef nonnull align 8 dereferenceable(720) %127, i64 720, i1 false), !tbaa.struct !68
  store i8 114, ptr %126, align 1, !tbaa !43
  %128 = getelementptr inbounds %struct.bTheme, ptr %121, i64 0, i32 15, i32 0, i64 1
  store i8 114, ptr %128, align 1, !tbaa !43
  %129 = getelementptr inbounds %struct.bTheme, ptr %121, i64 0, i32 15, i32 0, i64 2
  store i8 114, ptr %129, align 1, !tbaa !43
  store i8 -1, ptr %122, align 1, !tbaa !43
  %130 = getelementptr inbounds %struct.bTheme, ptr %121, i64 0, i32 15, i32 25
  store i8 91, ptr %130, align 1, !tbaa !43
  %131 = getelementptr inbounds %struct.bTheme, ptr %121, i64 0, i32 15, i32 25, i64 1
  store i8 91, ptr %131, align 1, !tbaa !43
  %132 = getelementptr inbounds %struct.bTheme, ptr %121, i64 0, i32 15, i32 25, i64 2
  store i8 91, ptr %132, align 1, !tbaa !43
  %133 = getelementptr inbounds %struct.bTheme, ptr %121, i64 0, i32 15, i32 25, i64 3
  store i8 -1, ptr %133, align 1, !tbaa !43
  %134 = getelementptr inbounds %struct.bTheme, ptr %121, i64 0, i32 15, i32 22
  store i8 -83, ptr %134, align 1, !tbaa !43
  %135 = getelementptr inbounds %struct.bTheme, ptr %121, i64 0, i32 15, i32 22, i64 1
  store i8 -83, ptr %135, align 1, !tbaa !43
  %136 = getelementptr inbounds %struct.bTheme, ptr %121, i64 0, i32 15, i32 22, i64 2
  store i8 -83, ptr %136, align 1, !tbaa !43
  %137 = getelementptr inbounds %struct.bTheme, ptr %121, i64 0, i32 15, i32 22, i64 3
  store i8 -1, ptr %137, align 1, !tbaa !43
  br label %138

138:                                              ; preds = %125, %120
  %139 = getelementptr inbounds %struct.bTheme, ptr %121, i64 0, i32 13, i32 106, i64 3
  %140 = load i8, ptr %139, align 1, !tbaa !43
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %142, label %162

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.bTheme, ptr %121, i64 0, i32 13, i32 106
  store i8 0, ptr %143, align 1, !tbaa !43
  %144 = getelementptr inbounds %struct.bTheme, ptr %121, i64 0, i32 13, i32 106, i64 1
  store i8 0, ptr %144, align 1, !tbaa !43
  %145 = getelementptr inbounds %struct.bTheme, ptr %121, i64 0, i32 13, i32 106, i64 2
  store i8 -56, ptr %145, align 1, !tbaa !43
  store i8 -1, ptr %139, align 1, !tbaa !43
  %146 = getelementptr inbounds %struct.bTheme, ptr %121, i64 0, i32 13, i32 103
  store i8 100, ptr %146, align 1, !tbaa !43
  %147 = getelementptr inbounds %struct.bTheme, ptr %121, i64 0, i32 13, i32 103, i64 1
  store i8 0, ptr %147, align 1, !tbaa !43
  %148 = getelementptr inbounds %struct.bTheme, ptr %121, i64 0, i32 13, i32 103, i64 2
  store i8 0, ptr %148, align 1, !tbaa !43
  %149 = getelementptr inbounds %struct.bTheme, ptr %121, i64 0, i32 13, i32 103, i64 3
  store i8 -1, ptr %149, align 1, !tbaa !43
  %150 = getelementptr inbounds %struct.bTheme, ptr %121, i64 0, i32 13, i32 108
  store i8 0, ptr %150, align 1, !tbaa !43
  %151 = getelementptr inbounds %struct.bTheme, ptr %121, i64 0, i32 13, i32 108, i64 1
  store i8 100, ptr %151, align 1, !tbaa !43
  %152 = getelementptr inbounds %struct.bTheme, ptr %121, i64 0, i32 13, i32 108, i64 2
  store i8 50, ptr %152, align 1, !tbaa !43
  %153 = getelementptr inbounds %struct.bTheme, ptr %121, i64 0, i32 13, i32 108, i64 3
  store i8 -1, ptr %153, align 1, !tbaa !43
  %154 = getelementptr inbounds %struct.bTheme, ptr %121, i64 0, i32 13, i32 107
  store i8 95, ptr %154, align 1, !tbaa !43
  %155 = getelementptr inbounds %struct.bTheme, ptr %121, i64 0, i32 13, i32 107, i64 1
  store i8 95, ptr %155, align 1, !tbaa !43
  %156 = getelementptr inbounds %struct.bTheme, ptr %121, i64 0, i32 13, i32 107, i64 2
  store i8 0, ptr %156, align 1, !tbaa !43
  %157 = getelementptr inbounds %struct.bTheme, ptr %121, i64 0, i32 13, i32 107, i64 3
  store i8 -1, ptr %157, align 1, !tbaa !43
  %158 = getelementptr inbounds %struct.bTheme, ptr %121, i64 0, i32 13, i32 105
  store i8 -128, ptr %158, align 1, !tbaa !43
  %159 = getelementptr inbounds %struct.bTheme, ptr %121, i64 0, i32 13, i32 105, i64 1
  store i8 0, ptr %159, align 1, !tbaa !43
  %160 = getelementptr inbounds %struct.bTheme, ptr %121, i64 0, i32 13, i32 105, i64 2
  store i8 80, ptr %160, align 1, !tbaa !43
  %161 = getelementptr inbounds %struct.bTheme, ptr %121, i64 0, i32 13, i32 105, i64 3
  store i8 -1, ptr %161, align 1, !tbaa !43
  br label %162

162:                                              ; preds = %138, %142
  %163 = load ptr, ptr %121, align 8, !tbaa !46
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %120, !llvm.loop !109

165:                                              ; preds = %162, %115
  %166 = load i16, ptr %48, align 8, !tbaa !102
  %167 = icmp sgt i16 %166, 237
  %168 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %169 = icmp eq ptr %168, null
  %170 = select i1 %167, i1 true, i1 %169
  br i1 %170, label %187, label %171

171:                                              ; preds = %165, %184
  %172 = phi ptr [ %185, %184 ], [ %168, %165 ]
  %173 = getelementptr inbounds %struct.bTheme, ptr %172, i64 0, i32 5, i32 57, i64 3
  %174 = load i8, ptr %173, align 1, !tbaa !43
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %176, label %184

176:                                              ; preds = %171
  %177 = getelementptr inbounds %struct.bTheme, ptr %172, i64 0, i32 5, i32 57
  store i8 -56, ptr %177, align 1, !tbaa !43
  %178 = getelementptr inbounds %struct.bTheme, ptr %172, i64 0, i32 5, i32 57, i64 1
  store i8 -56, ptr %178, align 1, !tbaa !43
  %179 = getelementptr inbounds %struct.bTheme, ptr %172, i64 0, i32 5, i32 57, i64 2
  store i8 -56, ptr %179, align 1, !tbaa !43
  store i8 -1, ptr %173, align 1, !tbaa !43
  %180 = getelementptr inbounds %struct.bTheme, ptr %172, i64 0, i32 5, i32 58
  store i8 80, ptr %180, align 1, !tbaa !43
  %181 = getelementptr inbounds %struct.bTheme, ptr %172, i64 0, i32 5, i32 58, i64 1
  store i8 -56, ptr %181, align 1, !tbaa !43
  %182 = getelementptr inbounds %struct.bTheme, ptr %172, i64 0, i32 5, i32 58, i64 2
  store i8 -1, ptr %182, align 1, !tbaa !43
  %183 = getelementptr inbounds %struct.bTheme, ptr %172, i64 0, i32 5, i32 58, i64 3
  store i8 80, ptr %183, align 1, !tbaa !43
  br label %184

184:                                              ; preds = %171, %176
  %185 = load ptr, ptr %172, align 8, !tbaa !46
  %186 = icmp eq ptr %185, null
  br i1 %186, label %187, label %171, !llvm.loop !110

187:                                              ; preds = %184, %165
  %188 = load i16, ptr %48, align 8, !tbaa !102
  %189 = icmp sgt i16 %188, 238
  %190 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %191 = icmp eq ptr %190, null
  %192 = select i1 %189, i1 true, i1 %191
  br i1 %192, label %209, label %193

193:                                              ; preds = %187, %206
  %194 = phi ptr [ %207, %206 ], [ %190, %187 ]
  %195 = getelementptr inbounds %struct.bTheme, ptr %194, i64 0, i32 10, i32 60, i64 3
  %196 = load i8, ptr %195, align 1, !tbaa !43
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %198, label %206

198:                                              ; preds = %193
  %199 = getelementptr inbounds %struct.bTheme, ptr %194, i64 0, i32 10, i32 60
  %200 = getelementptr inbounds %struct.bTheme, ptr %194, i64 0, i32 10, i32 61
  store i8 -1, ptr %200, align 1, !tbaa !43
  %201 = getelementptr inbounds %struct.bTheme, ptr %194, i64 0, i32 10, i32 61, i64 1
  store i8 -1, ptr %201, align 1, !tbaa !43
  %202 = getelementptr inbounds %struct.bTheme, ptr %194, i64 0, i32 10, i32 61, i64 2
  store i8 -86, ptr %202, align 1, !tbaa !43
  %203 = getelementptr inbounds %struct.bTheme, ptr %194, i64 0, i32 10, i32 61, i64 3
  store i8 -1, ptr %203, align 1, !tbaa !43
  store i8 -28, ptr %199, align 1, !tbaa !43
  %204 = getelementptr inbounds %struct.bTheme, ptr %194, i64 0, i32 10, i32 60, i64 1
  store i8 -100, ptr %204, align 1, !tbaa !43
  %205 = getelementptr inbounds %struct.bTheme, ptr %194, i64 0, i32 10, i32 60, i64 2
  store i8 -58, ptr %205, align 1, !tbaa !43
  store i8 -1, ptr %195, align 1, !tbaa !43
  br label %206

206:                                              ; preds = %193, %198
  %207 = load ptr, ptr %194, align 8, !tbaa !46
  %208 = icmp eq ptr %207, null
  br i1 %208, label %209, label %193, !llvm.loop !111

209:                                              ; preds = %206, %187
  %210 = load i16, ptr %48, align 8, !tbaa !102
  %211 = icmp slt i16 %210, 240
  br i1 %211, label %212, label %233

212:                                              ; preds = %209
  %213 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !46
  %214 = icmp eq ptr %213, null
  br i1 %214, label %229, label %215

215:                                              ; preds = %212, %226
  %216 = phi ptr [ %227, %226 ], [ %213, %212 ]
  %217 = getelementptr inbounds %struct.bTheme, ptr %216, i64 0, i32 5, i32 30, i64 3
  %218 = load i8, ptr %217, align 1, !tbaa !43
  %219 = icmp eq i8 %218, 0
  br i1 %219, label %220, label %226

220:                                              ; preds = %215
  %221 = getelementptr inbounds %struct.bTheme, ptr %216, i64 0, i32 5, i32 30
  store i8 0, ptr %221, align 1, !tbaa !43
  %222 = getelementptr inbounds %struct.bTheme, ptr %216, i64 0, i32 5, i32 30, i64 1
  store i8 0, ptr %222, align 1, !tbaa !43
  %223 = getelementptr inbounds %struct.bTheme, ptr %216, i64 0, i32 5, i32 30, i64 2
  store i8 0, ptr %223, align 1, !tbaa !43
  store i8 40, ptr %217, align 1, !tbaa !43
  %224 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !106
  %225 = or i32 %224, 32
  store i32 %225, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !106
  br label %226

226:                                              ; preds = %215, %220
  %227 = load ptr, ptr %216, align 8, !tbaa !46
  %228 = icmp eq ptr %227, null
  br i1 %228, label %229, label %215, !llvm.loop !112

229:                                              ; preds = %226, %212
  %230 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 67), align 4, !tbaa !113
  %231 = icmp eq i16 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %229
  store i16 6, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 67), align 4, !tbaa !113
  br label %233

233:                                              ; preds = %229, %232, %209
  %234 = load i16, ptr %48, align 8, !tbaa !102
  %235 = icmp slt i16 %234, 242
  br i1 %235, label %236, label %320

236:                                              ; preds = %233
  %237 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !46
  %238 = icmp eq ptr %237, null
  br i1 %238, label %314, label %239

239:                                              ; preds = %236, %311
  %240 = phi ptr [ %312, %311 ], [ %237, %236 ]
  %241 = getelementptr inbounds %struct.bTheme, ptr %240, i64 0, i32 16, i32 106, i64 3
  %242 = load i8, ptr %241, align 1, !tbaa !43
  %243 = icmp eq i8 %242, 0
  br i1 %243, label %244, label %267

244:                                              ; preds = %239
  %245 = getelementptr inbounds %struct.bTheme, ptr %240, i64 0, i32 16, i32 106
  %246 = getelementptr inbounds %struct.bTheme, ptr %240, i64 0, i32 16
  %247 = getelementptr inbounds %struct.bTheme, ptr %240, i64 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(720) %246, ptr noundef nonnull align 8 dereferenceable(720) %247, i64 720, i1 false), !tbaa.struct !68
  %248 = getelementptr inbounds %struct.bTheme, ptr %240, i64 0, i32 16, i32 42
  %249 = getelementptr inbounds %struct.bTheme, ptr %240, i64 0, i32 16, i32 103
  store i32 -1, ptr %248, align 1
  store i8 -106, ptr %249, align 1, !tbaa !43
  %250 = getelementptr inbounds %struct.bTheme, ptr %240, i64 0, i32 16, i32 103, i64 1
  store i8 -106, ptr %250, align 1, !tbaa !43
  %251 = getelementptr inbounds %struct.bTheme, ptr %240, i64 0, i32 16, i32 103, i64 2
  store i8 -106, ptr %251, align 1, !tbaa !43
  %252 = getelementptr inbounds %struct.bTheme, ptr %240, i64 0, i32 16, i32 103, i64 3
  store i8 -1, ptr %252, align 1, !tbaa !43
  store i8 -127, ptr %245, align 1, !tbaa !43
  %253 = getelementptr inbounds %struct.bTheme, ptr %240, i64 0, i32 16, i32 106, i64 1
  store i8 -125, ptr %253, align 1, !tbaa !43
  %254 = getelementptr inbounds %struct.bTheme, ptr %240, i64 0, i32 16, i32 106, i64 2
  store i8 -112, ptr %254, align 1, !tbaa !43
  store i8 -1, ptr %241, align 1, !tbaa !43
  %255 = getelementptr inbounds %struct.bTheme, ptr %240, i64 0, i32 16, i32 105
  store i8 127, ptr %255, align 1, !tbaa !43
  %256 = getelementptr inbounds %struct.bTheme, ptr %240, i64 0, i32 16, i32 105, i64 1
  store i8 127, ptr %256, align 1, !tbaa !43
  %257 = getelementptr inbounds %struct.bTheme, ptr %240, i64 0, i32 16, i32 105, i64 2
  store i8 127, ptr %257, align 1, !tbaa !43
  %258 = getelementptr inbounds %struct.bTheme, ptr %240, i64 0, i32 16, i32 105, i64 3
  store i8 -1, ptr %258, align 1, !tbaa !43
  %259 = getelementptr inbounds %struct.bTheme, ptr %240, i64 0, i32 16, i32 107
  store i8 -114, ptr %259, align 1, !tbaa !43
  %260 = getelementptr inbounds %struct.bTheme, ptr %240, i64 0, i32 16, i32 107, i64 1
  store i8 -118, ptr %260, align 1, !tbaa !43
  %261 = getelementptr inbounds %struct.bTheme, ptr %240, i64 0, i32 16, i32 107, i64 2
  store i8 -111, ptr %261, align 1, !tbaa !43
  %262 = getelementptr inbounds %struct.bTheme, ptr %240, i64 0, i32 16, i32 107, i64 3
  store i8 -1, ptr %262, align 1, !tbaa !43
  %263 = getelementptr inbounds %struct.bTheme, ptr %240, i64 0, i32 16, i32 108
  store i8 120, ptr %263, align 1, !tbaa !43
  %264 = getelementptr inbounds %struct.bTheme, ptr %240, i64 0, i32 16, i32 108, i64 1
  store i8 -111, ptr %264, align 1, !tbaa !43
  %265 = getelementptr inbounds %struct.bTheme, ptr %240, i64 0, i32 16, i32 108, i64 2
  store i8 120, ptr %265, align 1, !tbaa !43
  %266 = getelementptr inbounds %struct.bTheme, ptr %240, i64 0, i32 16, i32 108, i64 3
  store i8 -1, ptr %266, align 1, !tbaa !43
  br label %267

267:                                              ; preds = %244, %239
  %268 = getelementptr inbounds %struct.bTheme, ptr %240, i64 0, i32 5, i32 35, i64 3
  %269 = load i8, ptr %268, align 1, !tbaa !43
  %270 = icmp eq i8 %269, 0
  br i1 %270, label %271, label %279

271:                                              ; preds = %267
  %272 = getelementptr inbounds %struct.bTheme, ptr %240, i64 0, i32 5, i32 35
  store i8 12, ptr %272, align 1, !tbaa !43
  %273 = getelementptr inbounds %struct.bTheme, ptr %240, i64 0, i32 5, i32 35, i64 1
  store i8 48, ptr %273, align 1, !tbaa !43
  %274 = getelementptr inbounds %struct.bTheme, ptr %240, i64 0, i32 5, i32 35, i64 2
  store i8 12, ptr %274, align 1, !tbaa !43
  store i8 -1, ptr %268, align 1, !tbaa !43
  %275 = getelementptr inbounds %struct.bTheme, ptr %240, i64 0, i32 5, i32 36
  store i8 102, ptr %275, align 1, !tbaa !43
  %276 = getelementptr inbounds %struct.bTheme, ptr %240, i64 0, i32 5, i32 36, i64 1
  store i8 -1, ptr %276, align 1, !tbaa !43
  %277 = getelementptr inbounds %struct.bTheme, ptr %240, i64 0, i32 5, i32 36, i64 2
  store i8 102, ptr %277, align 1, !tbaa !43
  %278 = getelementptr inbounds %struct.bTheme, ptr %240, i64 0, i32 5, i32 36, i64 3
  store i8 -1, ptr %278, align 1, !tbaa !43
  br label %279

279:                                              ; preds = %271, %267
  %280 = getelementptr inbounds %struct.bTheme, ptr %240, i64 0, i32 11, i32 119, i64 3
  %281 = load i8, ptr %280, align 1, !tbaa !43
  %282 = icmp eq i8 %281, 0
  br i1 %282, label %283, label %311

283:                                              ; preds = %279
  %284 = getelementptr inbounds %struct.bTheme, ptr %240, i64 0, i32 11, i32 119
  store i8 81, ptr %284, align 1, !tbaa !43
  %285 = getelementptr inbounds %struct.bTheme, ptr %240, i64 0, i32 11, i32 119, i64 1
  store i8 105, ptr %285, align 1, !tbaa !43
  %286 = getelementptr inbounds %struct.bTheme, ptr %240, i64 0, i32 11, i32 119, i64 2
  store i8 -121, ptr %286, align 1, !tbaa !43
  store i8 -1, ptr %280, align 1, !tbaa !43
  %287 = getelementptr inbounds %struct.bTheme, ptr %240, i64 0, i32 11, i32 122
  store i8 109, ptr %287, align 1, !tbaa !43
  %288 = getelementptr inbounds %struct.bTheme, ptr %240, i64 0, i32 11, i32 122, i64 1
  store i8 88, ptr %288, align 1, !tbaa !43
  %289 = getelementptr inbounds %struct.bTheme, ptr %240, i64 0, i32 11, i32 122, i64 2
  store i8 -127, ptr %289, align 1, !tbaa !43
  %290 = getelementptr inbounds %struct.bTheme, ptr %240, i64 0, i32 11, i32 122, i64 3
  store i8 -1, ptr %290, align 1, !tbaa !43
  %291 = getelementptr inbounds %struct.bTheme, ptr %240, i64 0, i32 11, i32 123
  store i8 78, ptr %291, align 1, !tbaa !43
  %292 = getelementptr inbounds %struct.bTheme, ptr %240, i64 0, i32 11, i32 123, i64 1
  store i8 -104, ptr %292, align 1, !tbaa !43
  %293 = getelementptr inbounds %struct.bTheme, ptr %240, i64 0, i32 11, i32 123, i64 2
  store i8 62, ptr %293, align 1, !tbaa !43
  %294 = getelementptr inbounds %struct.bTheme, ptr %240, i64 0, i32 11, i32 123, i64 3
  store i8 -1, ptr %294, align 1, !tbaa !43
  %295 = getelementptr inbounds %struct.bTheme, ptr %240, i64 0, i32 11, i32 124
  store i8 46, ptr %295, align 1, !tbaa !43
  %296 = getelementptr inbounds %struct.bTheme, ptr %240, i64 0, i32 11, i32 124, i64 1
  store i8 -113, ptr %296, align 1, !tbaa !43
  %297 = getelementptr inbounds %struct.bTheme, ptr %240, i64 0, i32 11, i32 124, i64 2
  store i8 -113, ptr %297, align 1, !tbaa !43
  %298 = getelementptr inbounds %struct.bTheme, ptr %240, i64 0, i32 11, i32 124, i64 3
  store i8 -1, ptr %298, align 1, !tbaa !43
  %299 = getelementptr inbounds %struct.bTheme, ptr %240, i64 0, i32 11, i32 125
  store i8 -87, ptr %299, align 1, !tbaa !43
  %300 = getelementptr inbounds %struct.bTheme, ptr %240, i64 0, i32 11, i32 125, i64 1
  store i8 84, ptr %300, align 1, !tbaa !43
  %301 = getelementptr inbounds %struct.bTheme, ptr %240, i64 0, i32 11, i32 125, i64 2
  store i8 124, ptr %301, align 1, !tbaa !43
  %302 = getelementptr inbounds %struct.bTheme, ptr %240, i64 0, i32 11, i32 125, i64 3
  store i8 -1, ptr %302, align 1, !tbaa !43
  %303 = getelementptr inbounds %struct.bTheme, ptr %240, i64 0, i32 11, i32 126
  store i8 -94, ptr %303, align 1, !tbaa !43
  %304 = getelementptr inbounds %struct.bTheme, ptr %240, i64 0, i32 11, i32 126, i64 1
  store i8 95, ptr %304, align 1, !tbaa !43
  %305 = getelementptr inbounds %struct.bTheme, ptr %240, i64 0, i32 11, i32 126, i64 2
  store i8 111, ptr %305, align 1, !tbaa !43
  %306 = getelementptr inbounds %struct.bTheme, ptr %240, i64 0, i32 11, i32 126, i64 3
  store i8 -1, ptr %306, align 1, !tbaa !43
  %307 = getelementptr inbounds %struct.bTheme, ptr %240, i64 0, i32 11, i32 127
  store i8 109, ptr %307, align 1, !tbaa !43
  %308 = getelementptr inbounds %struct.bTheme, ptr %240, i64 0, i32 11, i32 127, i64 1
  store i8 -111, ptr %308, align 1, !tbaa !43
  %309 = getelementptr inbounds %struct.bTheme, ptr %240, i64 0, i32 11, i32 127, i64 2
  store i8 -125, ptr %309, align 1, !tbaa !43
  %310 = getelementptr inbounds %struct.bTheme, ptr %240, i64 0, i32 11, i32 127, i64 3
  store i8 -1, ptr %310, align 1, !tbaa !43
  br label %311

311:                                              ; preds = %279, %283
  %312 = load ptr, ptr %240, align 8, !tbaa !46
  %313 = icmp eq ptr %312, null
  br i1 %313, label %314, label %239, !llvm.loop !114

314:                                              ; preds = %311, %236
  %315 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 68), align 2, !tbaa !115
  %316 = icmp eq i16 %315, 0
  br i1 %316, label %317, label %320

317:                                              ; preds = %314
  store i16 15, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 68), align 2, !tbaa !115
  store i16 8, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 69), align 8, !tbaa !116
  %318 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !106
  %319 = or i32 %318, 131072
  store i32 %319, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !106
  br label %320

320:                                              ; preds = %314, %317, %233
  %321 = load i16, ptr %48, align 8, !tbaa !102
  %322 = icmp sgt i16 %321, 242
  %323 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %324 = icmp eq ptr %323, null
  %325 = select i1 %322, i1 true, i1 %324
  br i1 %325, label %351, label %326

326:                                              ; preds = %320, %348
  %327 = phi ptr [ %349, %348 ], [ %323, %320 ]
  %328 = getelementptr inbounds %struct.bTheme, ptr %327, i64 0, i32 9, i32 60, i64 3
  %329 = load i8, ptr %328, align 1, !tbaa !43
  %330 = icmp eq i8 %329, 0
  br i1 %330, label %331, label %343

331:                                              ; preds = %326
  %332 = getelementptr inbounds %struct.bTheme, ptr %327, i64 0, i32 9, i32 60
  %333 = getelementptr inbounds %struct.bTheme, ptr %327, i64 0, i32 5, i32 44
  store i8 -1, ptr %333, align 1, !tbaa !43
  %334 = getelementptr inbounds %struct.bTheme, ptr %327, i64 0, i32 5, i32 44, i64 1
  store i8 32, ptr %334, align 1, !tbaa !43
  %335 = getelementptr inbounds %struct.bTheme, ptr %327, i64 0, i32 5, i32 44, i64 2
  store i8 32, ptr %335, align 1, !tbaa !43
  %336 = getelementptr inbounds %struct.bTheme, ptr %327, i64 0, i32 5, i32 44, i64 3
  store i8 -1, ptr %336, align 1, !tbaa !43
  %337 = getelementptr inbounds %struct.bTheme, ptr %327, i64 0, i32 9, i32 61
  store i8 -1, ptr %337, align 1, !tbaa !43
  %338 = getelementptr inbounds %struct.bTheme, ptr %327, i64 0, i32 9, i32 61, i64 1
  store i8 -1, ptr %338, align 1, !tbaa !43
  %339 = getelementptr inbounds %struct.bTheme, ptr %327, i64 0, i32 9, i32 61, i64 2
  store i8 -86, ptr %339, align 1, !tbaa !43
  %340 = getelementptr inbounds %struct.bTheme, ptr %327, i64 0, i32 9, i32 61, i64 3
  store i8 -52, ptr %340, align 1, !tbaa !43
  store i8 -28, ptr %332, align 1, !tbaa !43
  %341 = getelementptr inbounds %struct.bTheme, ptr %327, i64 0, i32 9, i32 60, i64 1
  store i8 -100, ptr %341, align 1, !tbaa !43
  %342 = getelementptr inbounds %struct.bTheme, ptr %327, i64 0, i32 9, i32 60, i64 2
  store i8 -58, ptr %342, align 1, !tbaa !43
  store i8 -52, ptr %328, align 1, !tbaa !43
  br label %343

343:                                              ; preds = %331, %326
  %344 = getelementptr inbounds %struct.bTheme, ptr %327, i64 0, i32 7, i32 99
  %345 = load i8, ptr %344, align 4, !tbaa !70
  %346 = icmp eq i8 %345, 0
  br i1 %346, label %347, label %348

347:                                              ; preds = %343
  store i8 3, ptr %344, align 4, !tbaa !70
  br label %348

348:                                              ; preds = %343, %347
  %349 = load ptr, ptr %327, align 8, !tbaa !46
  %350 = icmp eq ptr %349, null
  br i1 %350, label %351, label %326, !llvm.loop !117

351:                                              ; preds = %348, %320
  %352 = load i16, ptr %48, align 8, !tbaa !102
  %353 = icmp slt i16 %352, 244
  %354 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 70), align 2
  %355 = icmp eq i16 %354, 0
  %356 = select i1 %353, i1 %355, i1 false
  br i1 %356, label %357, label %358

357:                                              ; preds = %351
  store i16 10, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 70), align 2, !tbaa !118
  br label %358

358:                                              ; preds = %357, %351
  %359 = icmp slt i16 %352, 245
  br i1 %359, label %366, label %360

360:                                              ; preds = %358
  %361 = icmp eq i16 %352, 245
  br i1 %361, label %362, label %381

362:                                              ; preds = %360
  %363 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 4
  %364 = load i16, ptr %363, align 2, !tbaa !119
  %365 = icmp slt i16 %364, 3
  br i1 %365, label %366, label %381

366:                                              ; preds = %362, %358
  %367 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !46
  %368 = icmp eq ptr %367, null
  br i1 %368, label %377, label %369

369:                                              ; preds = %366, %369
  %370 = phi ptr [ %375, %369 ], [ %367, %366 ]
  %371 = getelementptr inbounds %struct.bTheme, ptr %370, i64 0, i32 5, i32 128
  store i8 -1, ptr %371, align 1, !tbaa !43
  %372 = getelementptr inbounds %struct.bTheme, ptr %370, i64 0, i32 5, i32 128, i64 1
  store i8 -1, ptr %372, align 1, !tbaa !43
  %373 = getelementptr inbounds %struct.bTheme, ptr %370, i64 0, i32 5, i32 128, i64 2
  store i8 -1, ptr %373, align 1, !tbaa !43
  %374 = getelementptr inbounds %struct.bTheme, ptr %370, i64 0, i32 5, i32 128, i64 3
  store i8 -128, ptr %374, align 1, !tbaa !43
  %375 = load ptr, ptr %370, align 8, !tbaa !46
  %376 = icmp eq ptr %375, null
  br i1 %376, label %377, label %369, !llvm.loop !120

377:                                              ; preds = %369, %366
  %378 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 95), align 8, !tbaa !121
  %379 = icmp eq i16 %378, 0
  br i1 %379, label %380, label %381

380:                                              ; preds = %377
  tail call void @init_colorband(ptr noundef nonnull getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 95), i8 noundef zeroext 1) #16
  br label %381

381:                                              ; preds = %377, %380, %362, %360
  %382 = load i16, ptr %48, align 8, !tbaa !102
  %383 = icmp slt i16 %382, 245
  br i1 %383, label %393, label %384

384:                                              ; preds = %381
  %385 = icmp eq i16 %382, 245
  br i1 %385, label %386, label %426

386:                                              ; preds = %384
  %387 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 4
  %388 = load i16, ptr %387, align 2, !tbaa !119
  %389 = icmp sgt i16 %388, 10
  %390 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %391 = icmp eq ptr %390, null
  %392 = select i1 %389, i1 true, i1 %391
  br i1 %392, label %426, label %396

393:                                              ; preds = %381
  %394 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !46
  %395 = icmp eq ptr %394, null
  br i1 %395, label %426, label %396

396:                                              ; preds = %393, %386
  %397 = phi ptr [ %394, %393 ], [ %390, %386 ]
  br label %398

398:                                              ; preds = %396, %398
  %399 = phi ptr [ %424, %398 ], [ %397, %396 ]
  %400 = getelementptr inbounds %struct.bTheme, ptr %399, i64 0, i32 5, i32 62
  store i8 96, ptr %400, align 1, !tbaa !43
  %401 = getelementptr inbounds %struct.bTheme, ptr %399, i64 0, i32 5, i32 62, i64 1
  store i8 -64, ptr %401, align 1, !tbaa !43
  %402 = getelementptr inbounds %struct.bTheme, ptr %399, i64 0, i32 5, i32 62, i64 2
  store i8 64, ptr %402, align 1, !tbaa !43
  %403 = getelementptr inbounds %struct.bTheme, ptr %399, i64 0, i32 5, i32 62, i64 3
  store i8 -1, ptr %403, align 1, !tbaa !43
  %404 = getelementptr inbounds %struct.bTheme, ptr %399, i64 0, i32 7, i32 62
  store i8 96, ptr %404, align 1, !tbaa !43
  %405 = getelementptr inbounds %struct.bTheme, ptr %399, i64 0, i32 7, i32 62, i64 1
  store i8 -64, ptr %405, align 1, !tbaa !43
  %406 = getelementptr inbounds %struct.bTheme, ptr %399, i64 0, i32 7, i32 62, i64 2
  store i8 64, ptr %406, align 1, !tbaa !43
  %407 = getelementptr inbounds %struct.bTheme, ptr %399, i64 0, i32 7, i32 62, i64 3
  store i8 -1, ptr %407, align 1, !tbaa !43
  %408 = getelementptr inbounds %struct.bTheme, ptr %399, i64 0, i32 9, i32 62
  store i8 96, ptr %408, align 1, !tbaa !43
  %409 = getelementptr inbounds %struct.bTheme, ptr %399, i64 0, i32 9, i32 62, i64 1
  store i8 -64, ptr %409, align 1, !tbaa !43
  %410 = getelementptr inbounds %struct.bTheme, ptr %399, i64 0, i32 9, i32 62, i64 2
  store i8 64, ptr %410, align 1, !tbaa !43
  %411 = getelementptr inbounds %struct.bTheme, ptr %399, i64 0, i32 9, i32 62, i64 3
  store i8 -1, ptr %411, align 1, !tbaa !43
  %412 = getelementptr inbounds %struct.bTheme, ptr %399, i64 0, i32 10, i32 62
  store i8 96, ptr %412, align 1, !tbaa !43
  %413 = getelementptr inbounds %struct.bTheme, ptr %399, i64 0, i32 10, i32 62, i64 1
  store i8 -64, ptr %413, align 1, !tbaa !43
  %414 = getelementptr inbounds %struct.bTheme, ptr %399, i64 0, i32 10, i32 62, i64 2
  store i8 64, ptr %414, align 1, !tbaa !43
  %415 = getelementptr inbounds %struct.bTheme, ptr %399, i64 0, i32 10, i32 62, i64 3
  store i8 -1, ptr %415, align 1, !tbaa !43
  %416 = getelementptr inbounds %struct.bTheme, ptr %399, i64 0, i32 11, i32 62
  store i8 96, ptr %416, align 1, !tbaa !43
  %417 = getelementptr inbounds %struct.bTheme, ptr %399, i64 0, i32 11, i32 62, i64 1
  store i8 -64, ptr %417, align 1, !tbaa !43
  %418 = getelementptr inbounds %struct.bTheme, ptr %399, i64 0, i32 11, i32 62, i64 2
  store i8 64, ptr %418, align 1, !tbaa !43
  %419 = getelementptr inbounds %struct.bTheme, ptr %399, i64 0, i32 11, i32 62, i64 3
  store i8 -1, ptr %419, align 1, !tbaa !43
  %420 = getelementptr inbounds %struct.bTheme, ptr %399, i64 0, i32 15, i32 62
  store i8 96, ptr %420, align 1, !tbaa !43
  %421 = getelementptr inbounds %struct.bTheme, ptr %399, i64 0, i32 15, i32 62, i64 1
  store i8 -64, ptr %421, align 1, !tbaa !43
  %422 = getelementptr inbounds %struct.bTheme, ptr %399, i64 0, i32 15, i32 62, i64 2
  store i8 64, ptr %422, align 1, !tbaa !43
  %423 = getelementptr inbounds %struct.bTheme, ptr %399, i64 0, i32 15, i32 62, i64 3
  store i8 -1, ptr %423, align 1, !tbaa !43
  %424 = load ptr, ptr %399, align 8, !tbaa !46
  %425 = icmp eq ptr %424, null
  br i1 %425, label %426, label %398, !llvm.loop !122

426:                                              ; preds = %398, %393, %386, %384
  %427 = load i16, ptr %48, align 8, !tbaa !102
  %428 = icmp slt i16 %427, 245
  br i1 %428, label %438, label %429

429:                                              ; preds = %426
  %430 = icmp eq i16 %427, 245
  br i1 %430, label %431, label %460

431:                                              ; preds = %429
  %432 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 4
  %433 = load i16, ptr %432, align 2, !tbaa !119
  %434 = icmp sgt i16 %433, 12
  %435 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %436 = icmp eq ptr %435, null
  %437 = select i1 %434, i1 true, i1 %436
  br i1 %437, label %460, label %441

438:                                              ; preds = %426
  %439 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !46
  %440 = icmp eq ptr %439, null
  br i1 %440, label %460, label %441

441:                                              ; preds = %438, %431
  %442 = phi ptr [ %439, %438 ], [ %435, %431 ]
  br label %443

443:                                              ; preds = %441, %457
  %444 = phi ptr [ %458, %457 ], [ %442, %441 ]
  %445 = getelementptr inbounds %struct.bTheme, ptr %444, i64 0, i32 9, i32 35
  store i8 57, ptr %445, align 1, !tbaa !43
  %446 = getelementptr inbounds %struct.bTheme, ptr %444, i64 0, i32 9, i32 35, i64 1
  store i8 125, ptr %446, align 1, !tbaa !43
  %447 = getelementptr inbounds %struct.bTheme, ptr %444, i64 0, i32 9, i32 35, i64 2
  store i8 27, ptr %447, align 1, !tbaa !43
  %448 = getelementptr inbounds %struct.bTheme, ptr %444, i64 0, i32 9, i32 35, i64 3
  store i8 -1, ptr %448, align 1, !tbaa !43
  %449 = getelementptr inbounds %struct.bTheme, ptr %444, i64 0, i32 9, i32 36
  store i8 125, ptr %449, align 1, !tbaa !43
  %450 = getelementptr inbounds %struct.bTheme, ptr %444, i64 0, i32 9, i32 36, i64 1
  store i8 -23, ptr %450, align 1, !tbaa !43
  %451 = getelementptr inbounds %struct.bTheme, ptr %444, i64 0, i32 9, i32 36, i64 2
  store i8 96, ptr %451, align 1, !tbaa !43
  %452 = getelementptr inbounds %struct.bTheme, ptr %444, i64 0, i32 9, i32 36, i64 3
  store i8 -1, ptr %452, align 1, !tbaa !43
  %453 = getelementptr inbounds %struct.bTheme, ptr %444, i64 0, i32 21, i64 0, i32 0, i64 3
  %454 = load i8, ptr %453, align 1, !tbaa !43
  %455 = icmp eq i8 %454, 0
  br i1 %455, label %456, label %457

456:                                              ; preds = %443
  tail call fastcc void @ui_theme_init_boneColorSets(ptr noundef nonnull %444)
  br label %457

457:                                              ; preds = %443, %456
  %458 = load ptr, ptr %444, align 8, !tbaa !46
  %459 = icmp eq ptr %458, null
  br i1 %459, label %460, label %443, !llvm.loop !123

460:                                              ; preds = %457, %438, %431, %429
  %461 = load i16, ptr %48, align 8, !tbaa !102
  %462 = icmp slt i16 %461, 245
  br i1 %462, label %469, label %463

463:                                              ; preds = %460
  %464 = icmp eq i16 %461, 245
  br i1 %464, label %465, label %472

465:                                              ; preds = %463
  %466 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 4
  %467 = load i16, ptr %466, align 2, !tbaa !119
  %468 = icmp slt i16 %467, 16
  br i1 %468, label %469, label %472

469:                                              ; preds = %465, %460
  %470 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !101
  %471 = or i32 %470, 786432
  store i32 %471, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !101
  br label %472

472:                                              ; preds = %469, %465, %463
  %473 = icmp slt i16 %461, 247
  br i1 %473, label %483, label %474

474:                                              ; preds = %472
  %475 = icmp eq i16 %461, 247
  br i1 %475, label %476, label %539

476:                                              ; preds = %474
  %477 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 4
  %478 = load i16, ptr %477, align 2, !tbaa !119
  %479 = icmp sgt i16 %478, 2
  %480 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %481 = icmp eq ptr %480, null
  %482 = select i1 %479, i1 true, i1 %481
  br i1 %482, label %539, label %486

483:                                              ; preds = %472
  %484 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !46
  %485 = icmp eq ptr %484, null
  br i1 %485, label %539, label %486

486:                                              ; preds = %483, %476
  %487 = phi ptr [ %484, %483 ], [ %480, %476 ]
  br label %488

488:                                              ; preds = %486, %488
  %489 = phi ptr [ %537, %488 ], [ %487, %486 ]
  %490 = getelementptr inbounds %struct.bTheme, ptr %489, i64 0, i32 7, i32 38
  %491 = getelementptr inbounds %struct.bTheme, ptr %489, i64 0, i32 7, i32 129
  %492 = load i8, ptr %490, align 1, !tbaa !43
  %493 = getelementptr inbounds %struct.bTheme, ptr %489, i64 0, i32 7, i32 38, i64 1
  %494 = load i8, ptr %493, align 1, !tbaa !43
  %495 = getelementptr inbounds %struct.bTheme, ptr %489, i64 0, i32 7, i32 38, i64 2
  %496 = load i8, ptr %495, align 1, !tbaa !43
  store i8 %492, ptr %491, align 1, !tbaa !43
  %497 = getelementptr inbounds %struct.bTheme, ptr %489, i64 0, i32 7, i32 129, i64 1
  store i8 %494, ptr %497, align 1, !tbaa !43
  %498 = getelementptr inbounds %struct.bTheme, ptr %489, i64 0, i32 7, i32 129, i64 2
  store i8 %496, ptr %498, align 1, !tbaa !43
  %499 = getelementptr inbounds %struct.bTheme, ptr %489, i64 0, i32 7, i32 129, i64 3
  store i8 -1, ptr %499, align 1, !tbaa !43
  %500 = getelementptr inbounds %struct.bTheme, ptr %489, i64 0, i32 7, i32 39
  %501 = getelementptr inbounds %struct.bTheme, ptr %489, i64 0, i32 7, i32 130
  %502 = load i8, ptr %500, align 1, !tbaa !43
  %503 = getelementptr inbounds %struct.bTheme, ptr %489, i64 0, i32 7, i32 39, i64 1
  %504 = load i8, ptr %503, align 1, !tbaa !43
  %505 = getelementptr inbounds %struct.bTheme, ptr %489, i64 0, i32 7, i32 39, i64 2
  %506 = load i8, ptr %505, align 1, !tbaa !43
  store i8 %502, ptr %501, align 1, !tbaa !43
  %507 = getelementptr inbounds %struct.bTheme, ptr %489, i64 0, i32 7, i32 130, i64 1
  store i8 %504, ptr %507, align 1, !tbaa !43
  %508 = getelementptr inbounds %struct.bTheme, ptr %489, i64 0, i32 7, i32 130, i64 2
  store i8 %506, ptr %508, align 1, !tbaa !43
  %509 = getelementptr inbounds %struct.bTheme, ptr %489, i64 0, i32 7, i32 130, i64 3
  store i8 -1, ptr %509, align 1, !tbaa !43
  %510 = getelementptr inbounds %struct.bTheme, ptr %489, i64 0, i32 7, i32 99
  %511 = load i8, ptr %510, align 4, !tbaa !70
  %512 = getelementptr inbounds %struct.bTheme, ptr %489, i64 0, i32 7, i32 132
  store i8 %511, ptr %512, align 4, !tbaa !71
  %513 = getelementptr inbounds %struct.bTheme, ptr %489, i64 0, i32 5, i32 58
  %514 = getelementptr inbounds %struct.bTheme, ptr %489, i64 0, i32 11, i32 58
  %515 = load i8, ptr %513, align 1, !tbaa !43
  %516 = getelementptr inbounds %struct.bTheme, ptr %489, i64 0, i32 5, i32 58, i64 1
  %517 = load i8, ptr %516, align 1, !tbaa !43
  %518 = getelementptr inbounds %struct.bTheme, ptr %489, i64 0, i32 5, i32 58, i64 2
  %519 = load i8, ptr %518, align 1, !tbaa !43
  store i8 %515, ptr %514, align 1, !tbaa !43
  %520 = getelementptr inbounds %struct.bTheme, ptr %489, i64 0, i32 11, i32 58, i64 1
  store i8 %517, ptr %520, align 1, !tbaa !43
  %521 = getelementptr inbounds %struct.bTheme, ptr %489, i64 0, i32 11, i32 58, i64 2
  store i8 %519, ptr %521, align 1, !tbaa !43
  %522 = getelementptr inbounds %struct.bTheme, ptr %489, i64 0, i32 11, i32 58, i64 3
  store i8 -1, ptr %522, align 1, !tbaa !43
  %523 = getelementptr inbounds %struct.bTheme, ptr %489, i64 0, i32 12, i32 58
  store i8 %515, ptr %523, align 1, !tbaa !43
  %524 = getelementptr inbounds %struct.bTheme, ptr %489, i64 0, i32 12, i32 58, i64 1
  store i8 %517, ptr %524, align 1, !tbaa !43
  %525 = getelementptr inbounds %struct.bTheme, ptr %489, i64 0, i32 12, i32 58, i64 2
  store i8 %519, ptr %525, align 1, !tbaa !43
  %526 = getelementptr inbounds %struct.bTheme, ptr %489, i64 0, i32 12, i32 58, i64 3
  store i8 -1, ptr %526, align 1, !tbaa !43
  %527 = getelementptr inbounds %struct.bTheme, ptr %489, i64 0, i32 5, i32 39
  %528 = getelementptr inbounds %struct.bTheme, ptr %489, i64 0, i32 11, i32 39
  %529 = load i8, ptr %527, align 1, !tbaa !43
  %530 = getelementptr inbounds %struct.bTheme, ptr %489, i64 0, i32 5, i32 39, i64 1
  %531 = load i8, ptr %530, align 1, !tbaa !43
  %532 = getelementptr inbounds %struct.bTheme, ptr %489, i64 0, i32 5, i32 39, i64 2
  %533 = load i8, ptr %532, align 1, !tbaa !43
  store i8 %529, ptr %528, align 1, !tbaa !43
  %534 = getelementptr inbounds %struct.bTheme, ptr %489, i64 0, i32 11, i32 39, i64 1
  store i8 %531, ptr %534, align 1, !tbaa !43
  %535 = getelementptr inbounds %struct.bTheme, ptr %489, i64 0, i32 11, i32 39, i64 2
  store i8 %533, ptr %535, align 1, !tbaa !43
  %536 = getelementptr inbounds %struct.bTheme, ptr %489, i64 0, i32 11, i32 39, i64 3
  store i8 -1, ptr %536, align 1, !tbaa !43
  %537 = load ptr, ptr %489, align 8, !tbaa !46
  %538 = icmp eq ptr %537, null
  br i1 %538, label %539, label %488, !llvm.loop !124

539:                                              ; preds = %488, %483, %476, %474
  %540 = load i16, ptr %48, align 8, !tbaa !102
  %541 = icmp slt i16 %540, 250
  br i1 %541, label %542, label %611

542:                                              ; preds = %539
  %543 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !46
  %544 = icmp eq ptr %543, null
  br i1 %544, label %610, label %545

545:                                              ; preds = %542, %559
  %546 = phi ptr [ %608, %559 ], [ %543, %542 ]
  %547 = getelementptr inbounds %struct.bTheme, ptr %546, i64 0, i32 12, i32 49, i64 3
  %548 = load i8, ptr %547, align 1, !tbaa !43
  %549 = icmp eq i8 %548, 0
  br i1 %549, label %550, label %559

550:                                              ; preds = %545
  %551 = getelementptr inbounds %struct.bTheme, ptr %546, i64 0, i32 12, i32 49
  %552 = getelementptr inbounds %struct.bTheme, ptr %546, i64 0, i32 12, i32 128
  store i8 -1, ptr %552, align 1, !tbaa !43
  %553 = getelementptr inbounds %struct.bTheme, ptr %546, i64 0, i32 12, i32 128, i64 1
  store i8 -1, ptr %553, align 1, !tbaa !43
  %554 = getelementptr inbounds %struct.bTheme, ptr %546, i64 0, i32 12, i32 128, i64 2
  store i8 -1, ptr %554, align 1, !tbaa !43
  %555 = getelementptr inbounds %struct.bTheme, ptr %546, i64 0, i32 12, i32 128, i64 3
  store i8 -128, ptr %555, align 1, !tbaa !43
  store i8 -1, ptr %551, align 1, !tbaa !43
  %556 = getelementptr inbounds %struct.bTheme, ptr %546, i64 0, i32 12, i32 49, i64 1
  store i8 -123, ptr %556, align 1, !tbaa !43
  %557 = getelementptr inbounds %struct.bTheme, ptr %546, i64 0, i32 12, i32 49, i64 2
  store i8 0, ptr %557, align 1, !tbaa !43
  store i8 -1, ptr %547, align 1, !tbaa !43
  %558 = getelementptr inbounds %struct.bTheme, ptr %546, i64 0, i32 12, i32 101
  store i8 2, ptr %558, align 2, !tbaa !73
  br label %559

559:                                              ; preds = %550, %545
  %560 = getelementptr inbounds %struct.bTheme, ptr %546, i64 0, i32 9, i32 81
  store i8 82, ptr %560, align 1, !tbaa !43
  %561 = getelementptr inbounds %struct.bTheme, ptr %546, i64 0, i32 9, i32 81, i64 1
  store i8 96, ptr %561, align 1, !tbaa !43
  %562 = getelementptr inbounds %struct.bTheme, ptr %546, i64 0, i32 9, i32 81, i64 2
  store i8 110, ptr %562, align 1, !tbaa !43
  %563 = getelementptr inbounds %struct.bTheme, ptr %546, i64 0, i32 9, i32 81, i64 3
  store i8 -1, ptr %563, align 1, !tbaa !43
  %564 = getelementptr inbounds %struct.bTheme, ptr %546, i64 0, i32 9, i32 82
  store i8 124, ptr %564, align 1, !tbaa !43
  %565 = getelementptr inbounds %struct.bTheme, ptr %546, i64 0, i32 9, i32 82, i64 1
  store i8 -119, ptr %565, align 1, !tbaa !43
  %566 = getelementptr inbounds %struct.bTheme, ptr %546, i64 0, i32 9, i32 82, i64 2
  store i8 -106, ptr %566, align 1, !tbaa !43
  %567 = getelementptr inbounds %struct.bTheme, ptr %546, i64 0, i32 9, i32 82, i64 3
  store i8 -1, ptr %567, align 1, !tbaa !43
  %568 = getelementptr inbounds %struct.bTheme, ptr %546, i64 0, i32 9, i32 35
  store i8 79, ptr %568, align 1, !tbaa !43
  %569 = getelementptr inbounds %struct.bTheme, ptr %546, i64 0, i32 9, i32 35, i64 1
  store i8 101, ptr %569, align 1, !tbaa !43
  %570 = getelementptr inbounds %struct.bTheme, ptr %546, i64 0, i32 9, i32 35, i64 2
  store i8 73, ptr %570, align 1, !tbaa !43
  %571 = getelementptr inbounds %struct.bTheme, ptr %546, i64 0, i32 9, i32 35, i64 3
  store i8 -1, ptr %571, align 1, !tbaa !43
  %572 = getelementptr inbounds %struct.bTheme, ptr %546, i64 0, i32 9, i32 36
  store i8 -121, ptr %572, align 1, !tbaa !43
  %573 = getelementptr inbounds %struct.bTheme, ptr %546, i64 0, i32 9, i32 36, i64 1
  store i8 -79, ptr %573, align 1, !tbaa !43
  %574 = getelementptr inbounds %struct.bTheme, ptr %546, i64 0, i32 9, i32 36, i64 2
  store i8 125, ptr %574, align 1, !tbaa !43
  %575 = getelementptr inbounds %struct.bTheme, ptr %546, i64 0, i32 9, i32 36, i64 3
  store i8 -1, ptr %575, align 1, !tbaa !43
  %576 = getelementptr inbounds %struct.bTheme, ptr %546, i64 0, i32 7, i32 81
  store i8 82, ptr %576, align 1, !tbaa !43
  %577 = getelementptr inbounds %struct.bTheme, ptr %546, i64 0, i32 7, i32 81, i64 1
  store i8 96, ptr %577, align 1, !tbaa !43
  %578 = getelementptr inbounds %struct.bTheme, ptr %546, i64 0, i32 7, i32 81, i64 2
  store i8 110, ptr %578, align 1, !tbaa !43
  %579 = getelementptr inbounds %struct.bTheme, ptr %546, i64 0, i32 7, i32 81, i64 3
  store i8 -1, ptr %579, align 1, !tbaa !43
  %580 = getelementptr inbounds %struct.bTheme, ptr %546, i64 0, i32 7, i32 82
  store i8 124, ptr %580, align 1, !tbaa !43
  %581 = getelementptr inbounds %struct.bTheme, ptr %546, i64 0, i32 7, i32 82, i64 1
  store i8 -119, ptr %581, align 1, !tbaa !43
  %582 = getelementptr inbounds %struct.bTheme, ptr %546, i64 0, i32 7, i32 82, i64 2
  store i8 -106, ptr %582, align 1, !tbaa !43
  %583 = getelementptr inbounds %struct.bTheme, ptr %546, i64 0, i32 7, i32 82, i64 3
  store i8 -1, ptr %583, align 1, !tbaa !43
  %584 = getelementptr inbounds %struct.bTheme, ptr %546, i64 0, i32 7, i32 35
  store i8 79, ptr %584, align 1, !tbaa !43
  %585 = getelementptr inbounds %struct.bTheme, ptr %546, i64 0, i32 7, i32 35, i64 1
  store i8 101, ptr %585, align 1, !tbaa !43
  %586 = getelementptr inbounds %struct.bTheme, ptr %546, i64 0, i32 7, i32 35, i64 2
  store i8 73, ptr %586, align 1, !tbaa !43
  %587 = getelementptr inbounds %struct.bTheme, ptr %546, i64 0, i32 7, i32 35, i64 3
  store i8 -1, ptr %587, align 1, !tbaa !43
  %588 = getelementptr inbounds %struct.bTheme, ptr %546, i64 0, i32 7, i32 36
  store i8 -121, ptr %588, align 1, !tbaa !43
  %589 = getelementptr inbounds %struct.bTheme, ptr %546, i64 0, i32 7, i32 36, i64 1
  store i8 -79, ptr %589, align 1, !tbaa !43
  %590 = getelementptr inbounds %struct.bTheme, ptr %546, i64 0, i32 7, i32 36, i64 2
  store i8 125, ptr %590, align 1, !tbaa !43
  %591 = getelementptr inbounds %struct.bTheme, ptr %546, i64 0, i32 7, i32 36, i64 3
  store i8 -1, ptr %591, align 1, !tbaa !43
  %592 = getelementptr inbounds %struct.bTheme, ptr %546, i64 0, i32 10, i32 81
  store i8 82, ptr %592, align 1, !tbaa !43
  %593 = getelementptr inbounds %struct.bTheme, ptr %546, i64 0, i32 10, i32 81, i64 1
  store i8 96, ptr %593, align 1, !tbaa !43
  %594 = getelementptr inbounds %struct.bTheme, ptr %546, i64 0, i32 10, i32 81, i64 2
  store i8 110, ptr %594, align 1, !tbaa !43
  %595 = getelementptr inbounds %struct.bTheme, ptr %546, i64 0, i32 10, i32 81, i64 3
  store i8 -1, ptr %595, align 1, !tbaa !43
  %596 = getelementptr inbounds %struct.bTheme, ptr %546, i64 0, i32 10, i32 82
  store i8 124, ptr %596, align 1, !tbaa !43
  %597 = getelementptr inbounds %struct.bTheme, ptr %546, i64 0, i32 10, i32 82, i64 1
  store i8 -119, ptr %597, align 1, !tbaa !43
  %598 = getelementptr inbounds %struct.bTheme, ptr %546, i64 0, i32 10, i32 82, i64 2
  store i8 -106, ptr %598, align 1, !tbaa !43
  %599 = getelementptr inbounds %struct.bTheme, ptr %546, i64 0, i32 10, i32 82, i64 3
  store i8 -1, ptr %599, align 1, !tbaa !43
  %600 = getelementptr inbounds %struct.bTheme, ptr %546, i64 0, i32 10, i32 60
  store i8 12, ptr %600, align 1, !tbaa !43
  %601 = getelementptr inbounds %struct.bTheme, ptr %546, i64 0, i32 10, i32 60, i64 1
  store i8 10, ptr %601, align 1, !tbaa !43
  %602 = getelementptr inbounds %struct.bTheme, ptr %546, i64 0, i32 10, i32 60, i64 2
  store i8 10, ptr %602, align 1, !tbaa !43
  %603 = getelementptr inbounds %struct.bTheme, ptr %546, i64 0, i32 10, i32 60, i64 3
  store i8 -128, ptr %603, align 1, !tbaa !43
  %604 = getelementptr inbounds %struct.bTheme, ptr %546, i64 0, i32 10, i32 61
  store i8 -1, ptr %604, align 1, !tbaa !43
  %605 = getelementptr inbounds %struct.bTheme, ptr %546, i64 0, i32 10, i32 61, i64 1
  store i8 -116, ptr %605, align 1, !tbaa !43
  %606 = getelementptr inbounds %struct.bTheme, ptr %546, i64 0, i32 10, i32 61, i64 2
  store i8 0, ptr %606, align 1, !tbaa !43
  %607 = getelementptr inbounds %struct.bTheme, ptr %546, i64 0, i32 10, i32 61, i64 3
  store i8 -1, ptr %607, align 1, !tbaa !43
  %608 = load ptr, ptr %546, align 8, !tbaa !46
  %609 = icmp eq ptr %608, null
  br i1 %609, label %610, label %545, !llvm.loop !125

610:                                              ; preds = %559, %542
  store i16 1, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 48), align 4, !tbaa !126
  store i16 2, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 49), align 2, !tbaa !127
  store i8 2, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 75), align 4, !tbaa !128
  br label %611

611:                                              ; preds = %610, %539
  %612 = load i16, ptr %48, align 8, !tbaa !102
  %613 = icmp slt i16 %612, 250
  br i1 %613, label %623, label %614

614:                                              ; preds = %611
  %615 = icmp eq i16 %612, 250
  br i1 %615, label %616, label %656

616:                                              ; preds = %614
  %617 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 4
  %618 = load i16, ptr %617, align 2, !tbaa !119
  %619 = icmp sgt i16 %618, 0
  %620 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %621 = icmp eq ptr %620, null
  %622 = select i1 %619, i1 true, i1 %621
  br i1 %622, label %656, label %626

623:                                              ; preds = %611
  %624 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !46
  %625 = icmp eq ptr %624, null
  br i1 %625, label %656, label %626

626:                                              ; preds = %623, %616
  %627 = phi ptr [ %624, %623 ], [ %620, %616 ]
  br label %628

628:                                              ; preds = %626, %645
  %629 = phi ptr [ %654, %645 ], [ %627, %626 ]
  tail call fastcc void @ui_theme_init_new(ptr noundef nonnull %629)
  %630 = getelementptr inbounds %struct.bTheme, ptr %629, i64 0, i32 3, i32 6, i32 0, i64 3
  %631 = load i8, ptr %630, align 1, !tbaa !43
  %632 = icmp eq i8 %631, 0
  br i1 %632, label %633, label %635

633:                                              ; preds = %628
  %634 = getelementptr inbounds %struct.bTheme, ptr %629, i64 0, i32 3
  tail call void @ui_widget_color_init(ptr noundef nonnull %634) #16
  br label %635

635:                                              ; preds = %633, %628
  %636 = getelementptr inbounds %struct.bTheme, ptr %629, i64 0, i32 17, i32 106, i64 3
  %637 = load i8, ptr %636, align 1, !tbaa !43
  %638 = icmp eq i8 %637, 0
  br i1 %638, label %639, label %645

639:                                              ; preds = %635
  %640 = getelementptr inbounds %struct.bTheme, ptr %629, i64 0, i32 17
  %641 = getelementptr inbounds %struct.bTheme, ptr %629, i64 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(720) %640, ptr noundef nonnull align 8 dereferenceable(720) %641, i64 720, i1 false), !tbaa.struct !68
  store i8 100, ptr %640, align 1, !tbaa !43
  %642 = getelementptr inbounds %struct.bTheme, ptr %629, i64 0, i32 17, i32 0, i64 1
  store i8 100, ptr %642, align 1, !tbaa !43
  %643 = getelementptr inbounds %struct.bTheme, ptr %629, i64 0, i32 17, i32 0, i64 2
  store i8 100, ptr %643, align 1, !tbaa !43
  %644 = getelementptr inbounds %struct.bTheme, ptr %629, i64 0, i32 17, i32 0, i64 3
  store i8 -1, ptr %644, align 1, !tbaa !43
  br label %645

645:                                              ; preds = %639, %635
  %646 = getelementptr inbounds %struct.bTheme, ptr %629, i64 0, i32 8
  store i8 114, ptr %646, align 1, !tbaa !43
  %647 = getelementptr inbounds %struct.bTheme, ptr %629, i64 0, i32 8, i32 0, i64 1
  store i8 114, ptr %647, align 1, !tbaa !43
  %648 = getelementptr inbounds %struct.bTheme, ptr %629, i64 0, i32 8, i32 0, i64 2
  store i8 114, ptr %648, align 1, !tbaa !43
  %649 = getelementptr inbounds %struct.bTheme, ptr %629, i64 0, i32 8, i32 0, i64 3
  store i8 -1, ptr %649, align 1, !tbaa !43
  %650 = getelementptr inbounds %struct.bTheme, ptr %629, i64 0, i32 18
  store i8 114, ptr %650, align 1, !tbaa !43
  %651 = getelementptr inbounds %struct.bTheme, ptr %629, i64 0, i32 18, i32 0, i64 1
  store i8 114, ptr %651, align 1, !tbaa !43
  %652 = getelementptr inbounds %struct.bTheme, ptr %629, i64 0, i32 18, i32 0, i64 2
  store i8 114, ptr %652, align 1, !tbaa !43
  %653 = getelementptr inbounds %struct.bTheme, ptr %629, i64 0, i32 18, i32 0, i64 3
  store i8 -1, ptr %653, align 1, !tbaa !43
  %654 = load ptr, ptr %629, align 8, !tbaa !46
  %655 = icmp eq ptr %654, null
  br i1 %655, label %656, label %628, !llvm.loop !129

656:                                              ; preds = %645, %623, %616, %614
  %657 = load i16, ptr %48, align 8, !tbaa !102
  %658 = icmp slt i16 %657, 250
  br i1 %658, label %665, label %659

659:                                              ; preds = %656
  %660 = icmp eq i16 %657, 250
  br i1 %660, label %661, label %677

661:                                              ; preds = %659
  %662 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 4
  %663 = load i16, ptr %662, align 2, !tbaa !119
  %664 = icmp slt i16 %663, 3
  br i1 %664, label %665, label %677

665:                                              ; preds = %661, %656
  %666 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 31), align 4, !tbaa !130
  %667 = icmp eq i32 %666, 0
  br i1 %667, label %668, label %669

668:                                              ; preds = %665
  store i32 2, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 31), align 4, !tbaa !130
  br label %669

669:                                              ; preds = %668, %665
  %670 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 30), align 8, !tbaa !131
  %671 = icmp eq i32 %670, 0
  br i1 %671, label %672, label %673

672:                                              ; preds = %669
  store i32 36, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 30), align 8, !tbaa !131
  br label %673

673:                                              ; preds = %672, %669
  %674 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 29), align 4, !tbaa !132
  %675 = icmp eq i32 %674, 0
  br i1 %675, label %676, label %677

676:                                              ; preds = %673
  store i32 44100, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 29), align 4, !tbaa !132
  br label %677

677:                                              ; preds = %673, %676, %661, %659
  br i1 %658, label %684, label %678

678:                                              ; preds = %677
  %679 = icmp eq i16 %657, 250
  br i1 %679, label %680, label %687

680:                                              ; preds = %678
  %681 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 4
  %682 = load i16, ptr %681, align 2, !tbaa !119
  %683 = icmp slt i16 %682, 5
  br i1 %683, label %684, label %687

684:                                              ; preds = %680, %677
  %685 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 20), align 8, !tbaa !133
  %686 = or i16 %685, 8
  store i16 %686, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 20), align 8, !tbaa !133
  br label %687

687:                                              ; preds = %684, %680, %678
  br i1 %658, label %697, label %688

688:                                              ; preds = %687
  %689 = icmp eq i16 %657, 250
  br i1 %689, label %690, label %775

690:                                              ; preds = %688
  %691 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 4
  %692 = load i16, ptr %691, align 2, !tbaa !119
  %693 = icmp sgt i16 %692, 7
  %694 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 42), align 8
  %695 = icmp eq ptr %694, null
  %696 = select i1 %693, i1 true, i1 %695
  br i1 %696, label %775, label %700

697:                                              ; preds = %687
  %698 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 42), align 8, !tbaa !46
  %699 = icmp eq ptr %698, null
  br i1 %699, label %775, label %700

700:                                              ; preds = %697, %690
  %701 = phi ptr [ %698, %697 ], [ %694, %690 ]
  br label %702

702:                                              ; preds = %700, %772
  %703 = phi ptr [ %773, %772 ], [ %701, %700 ]
  %704 = getelementptr inbounds %struct.wmKeyMap, ptr %703, i64 0, i32 4
  %705 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %704, ptr noundef nonnull dereferenceable(16) @.str.3) #17
  %706 = icmp eq i32 %705, 0
  br i1 %706, label %707, label %708

707:                                              ; preds = %702
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %704, ptr noundef nonnull align 1 dereferenceable(16) @.str.4, i64 16, i1 false) #16
  br label %772

708:                                              ; preds = %702
  %709 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %704, ptr noundef nonnull dereferenceable(7) @.str.5) #17
  %710 = icmp eq i32 %709, 0
  br i1 %710, label %711, label %712

711:                                              ; preds = %708
  store i64 33607025319494707, ptr %704, align 1
  br label %772

712:                                              ; preds = %708
  %713 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %704, ptr noundef nonnull dereferenceable(15) @.str.7) #17
  %714 = icmp eq i32 %713, 0
  br i1 %714, label %715, label %716

715:                                              ; preds = %712
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %704, ptr noundef nonnull align 1 dereferenceable(16) @.str.8, i64 16, i1 false) #16
  br label %772

716:                                              ; preds = %712
  %717 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %704, ptr noundef nonnull dereferenceable(9) @.str.9) #17
  %718 = icmp eq i32 %717, 0
  br i1 %718, label %719, label %720

719:                                              ; preds = %716
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %704, ptr noundef nonnull align 1 dereferenceable(5) @.str.10, i64 5, i1 false) #16
  br label %772

720:                                              ; preds = %716
  %721 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %704, ptr noundef nonnull dereferenceable(9) @.str.11) #17
  %722 = icmp eq i32 %721, 0
  br i1 %722, label %723, label %724

723:                                              ; preds = %720
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %704, ptr noundef nonnull align 1 dereferenceable(9) @.str.12, i64 9, i1 false) #16
  br label %772

724:                                              ; preds = %720
  %725 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %704, ptr noundef nonnull dereferenceable(7) @.str.13) #17
  %726 = icmp eq i32 %725, 0
  br i1 %726, label %727, label %728

727:                                              ; preds = %724
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %704, ptr noundef nonnull align 1 dereferenceable(10) @.str.14, i64 10, i1 false) #16
  br label %772

728:                                              ; preds = %724
  %729 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %704, ptr noundef nonnull dereferenceable(19) @.str.15) #17
  %730 = icmp eq i32 %729, 0
  br i1 %730, label %731, label %732

731:                                              ; preds = %728
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %704, ptr noundef nonnull align 1 dereferenceable(19) @.str.16, i64 19, i1 false) #16
  br label %772

732:                                              ; preds = %728
  %733 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %704, ptr noundef nonnull dereferenceable(15) @.str.17) #17
  %734 = icmp eq i32 %733, 0
  br i1 %734, label %735, label %736

735:                                              ; preds = %732
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %704, ptr noundef nonnull align 1 dereferenceable(13) @.str.18, i64 13, i1 false) #16
  br label %772

736:                                              ; preds = %732
  %737 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %704, ptr noundef nonnull dereferenceable(18) @.str.19) #17
  %738 = icmp eq i32 %737, 0
  br i1 %738, label %739, label %740

739:                                              ; preds = %736
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %704, ptr noundef nonnull align 1 dereferenceable(21) @.str.20, i64 21, i1 false) #16
  br label %772

740:                                              ; preds = %736
  %741 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %704, ptr noundef nonnull dereferenceable(12) @.str.21) #17
  %742 = icmp eq i32 %741, 0
  br i1 %742, label %743, label %744

743:                                              ; preds = %740
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %704, ptr noundef nonnull align 1 dereferenceable(10) @.str.22, i64 10, i1 false) #16
  br label %772

744:                                              ; preds = %740
  %745 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %704, ptr noundef nonnull dereferenceable(9) @.str.23) #17
  %746 = icmp eq i32 %745, 0
  br i1 %746, label %747, label %748

747:                                              ; preds = %744
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %704, ptr noundef nonnull align 1 dereferenceable(11) @.str.24, i64 11, i1 false) #16
  br label %772

748:                                              ; preds = %744
  %749 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %704, ptr noundef nonnull dereferenceable(13) @.str.25) #17
  %750 = icmp eq i32 %749, 0
  br i1 %750, label %751, label %752

751:                                              ; preds = %748
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %704, ptr noundef nonnull align 1 dereferenceable(12) @.str.26, i64 12, i1 false) #16
  br label %772

752:                                              ; preds = %748
  %753 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %704, ptr noundef nonnull dereferenceable(14) @.str.27) #17
  %754 = icmp eq i32 %753, 0
  br i1 %754, label %755, label %756

755:                                              ; preds = %752
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %704, ptr noundef nonnull align 1 dereferenceable(13) @.str.28, i64 13, i1 false) #16
  br label %772

756:                                              ; preds = %752
  %757 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %704, ptr noundef nonnull dereferenceable(5) @.str.29) #17
  %758 = icmp eq i32 %757, 0
  br i1 %758, label %759, label %760

759:                                              ; preds = %756
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %704, ptr noundef nonnull align 1 dereferenceable(13) @.str.30, i64 13, i1 false) #16
  br label %772

760:                                              ; preds = %756
  %761 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %704, ptr noundef nonnull dereferenceable(9) @.str.31) #17
  %762 = icmp eq i32 %761, 0
  br i1 %762, label %763, label %764

763:                                              ; preds = %760
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %704, ptr noundef nonnull align 1 dereferenceable(18) @.str.32, i64 18, i1 false) #16
  br label %772

764:                                              ; preds = %760
  %765 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %704, ptr noundef nonnull dereferenceable(12) @.str.33) #17
  %766 = icmp eq i32 %765, 0
  br i1 %766, label %767, label %768

767:                                              ; preds = %764
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %704, ptr noundef nonnull align 1 dereferenceable(21) @.str.34, i64 21, i1 false) #16
  br label %772

768:                                              ; preds = %764
  %769 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %704, ptr noundef nonnull dereferenceable(16) @.str.35) #17
  %770 = icmp eq i32 %769, 0
  br i1 %770, label %771, label %772

771:                                              ; preds = %768
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %704, ptr noundef nonnull align 1 dereferenceable(16) @.str.36, i64 16, i1 false) #16
  br label %772

772:                                              ; preds = %707, %715, %723, %731, %739, %747, %755, %763, %768, %771, %767, %759, %751, %743, %735, %727, %719, %711
  %773 = load ptr, ptr %703, align 8, !tbaa !46
  %774 = icmp eq ptr %773, null
  br i1 %774, label %775, label %702, !llvm.loop !134

775:                                              ; preds = %772, %697, %690, %688
  %776 = load i16, ptr %48, align 8, !tbaa !102
  %777 = icmp slt i16 %776, 250
  br i1 %777, label %787, label %778

778:                                              ; preds = %775
  %779 = icmp eq i16 %776, 250
  br i1 %779, label %780, label %791

780:                                              ; preds = %778
  %781 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 4
  %782 = load i16, ptr %781, align 2, !tbaa !119
  %783 = icmp slt i16 %782, 16
  %784 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 61), align 4
  %785 = icmp eq i16 %784, 0
  %786 = select i1 %783, i1 %785, i1 false
  br i1 %786, label %790, label %791

787:                                              ; preds = %775
  %788 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 61), align 4, !tbaa !135
  %789 = icmp eq i16 %788, 0
  br i1 %789, label %790, label %791

790:                                              ; preds = %780, %787
  store i16 3, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 61), align 4, !tbaa !135
  br label %791

791:                                              ; preds = %787, %790, %780, %778
  %792 = icmp slt i16 %776, 252
  br i1 %792, label %799, label %793

793:                                              ; preds = %791
  %794 = icmp eq i16 %776, 252
  br i1 %794, label %795, label %805

795:                                              ; preds = %793
  %796 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 4
  %797 = load i16, ptr %796, align 2, !tbaa !119
  %798 = icmp slt i16 %797, 3
  br i1 %798, label %799, label %805

799:                                              ; preds = %795, %791
  %800 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !101
  %801 = and i32 %800, 16384
  %802 = icmp eq i32 %801, 0
  br i1 %802, label %805, label %803

803:                                              ; preds = %799
  %804 = and i32 %800, -4097
  store i32 %804, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !101
  br label %805

805:                                              ; preds = %799, %803, %795, %793
  br i1 %792, label %812, label %806

806:                                              ; preds = %805
  %807 = icmp eq i16 %776, 252
  br i1 %807, label %808, label %911

808:                                              ; preds = %806
  %809 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 4
  %810 = load i16, ptr %809, align 2, !tbaa !119
  %811 = icmp slt i16 %810, 4
  br i1 %811, label %812, label %911

812:                                              ; preds = %808, %805
  store i8 1, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 76), align 1, !tbaa !136
  %813 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !46
  %814 = icmp eq ptr %813, null
  br i1 %814, label %911, label %815

815:                                              ; preds = %812, %815
  %816 = phi ptr [ %909, %815 ], [ %813, %812 ]
  %817 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 5, i32 71
  store i8 0, ptr %817, align 1, !tbaa !43
  %818 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 5, i32 71, i64 1
  store i8 0, ptr %818, align 1, !tbaa !43
  %819 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 5, i32 71, i64 2
  store i8 0, ptr %819, align 1, !tbaa !43
  %820 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 5, i32 71, i64 3
  store i8 -1, ptr %820, align 1, !tbaa !43
  %821 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 5, i32 72
  store i8 -112, ptr %821, align 1, !tbaa !43
  %822 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 5, i32 72, i64 1
  store i8 -112, ptr %822, align 1, !tbaa !43
  %823 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 5, i32 72, i64 2
  store i8 0, ptr %823, align 1, !tbaa !43
  %824 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 5, i32 72, i64 3
  store i8 -1, ptr %824, align 1, !tbaa !43
  %825 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 5, i32 73
  store i8 64, ptr %825, align 1, !tbaa !43
  %826 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 5, i32 73, i64 1
  store i8 -112, ptr %826, align 1, !tbaa !43
  %827 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 5, i32 73, i64 2
  store i8 48, ptr %827, align 1, !tbaa !43
  %828 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 5, i32 73, i64 3
  store i8 -1, ptr %828, align 1, !tbaa !43
  %829 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 5, i32 74
  store i8 -128, ptr %829, align 1, !tbaa !43
  %830 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 5, i32 74, i64 1
  store i8 48, ptr %830, align 1, !tbaa !43
  %831 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 5, i32 74, i64 2
  store i8 96, ptr %831, align 1, !tbaa !43
  %832 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 5, i32 74, i64 3
  store i8 -1, ptr %832, align 1, !tbaa !43
  %833 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 5, i32 76
  store i8 0, ptr %833, align 1, !tbaa !43
  %834 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 5, i32 76, i64 1
  store i8 0, ptr %834, align 1, !tbaa !43
  %835 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 5, i32 76, i64 2
  store i8 0, ptr %835, align 1, !tbaa !43
  %836 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 5, i32 76, i64 3
  store i8 -1, ptr %836, align 1, !tbaa !43
  %837 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 5, i32 77
  store i8 -16, ptr %837, align 1, !tbaa !43
  %838 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 5, i32 77, i64 1
  store i8 -1, ptr %838, align 1, !tbaa !43
  %839 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 5, i32 77, i64 2
  store i8 64, ptr %839, align 1, !tbaa !43
  %840 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 5, i32 77, i64 3
  store i8 -1, ptr %840, align 1, !tbaa !43
  %841 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 5, i32 78
  store i8 64, ptr %841, align 1, !tbaa !43
  %842 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 5, i32 78, i64 1
  store i8 -64, ptr %842, align 1, !tbaa !43
  %843 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 5, i32 78, i64 2
  store i8 48, ptr %843, align 1, !tbaa !43
  %844 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 5, i32 78, i64 3
  store i8 -1, ptr %844, align 1, !tbaa !43
  %845 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 5, i32 79
  store i8 -16, ptr %845, align 1, !tbaa !43
  %846 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 5, i32 79, i64 1
  store i8 -112, ptr %846, align 1, !tbaa !43
  %847 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 5, i32 79, i64 2
  store i8 -96, ptr %847, align 1, !tbaa !43
  %848 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 5, i32 79, i64 3
  store i8 -1, ptr %848, align 1, !tbaa !43
  %849 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 5, i32 129
  store i8 0, ptr %849, align 1, !tbaa !43
  %850 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 5, i32 129, i64 1
  store i8 0, ptr %850, align 1, !tbaa !43
  %851 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 5, i32 129, i64 2
  store i8 0, ptr %851, align 1, !tbaa !43
  %852 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 5, i32 129, i64 3
  store i8 -1, ptr %852, align 1, !tbaa !43
  %853 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 5, i32 130
  store i8 -1, ptr %853, align 1, !tbaa !43
  %854 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 5, i32 130, i64 1
  store i8 -1, ptr %854, align 1, !tbaa !43
  %855 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 5, i32 130, i64 2
  store i8 0, ptr %855, align 1, !tbaa !43
  %856 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 5, i32 130, i64 3
  store i8 -1, ptr %856, align 1, !tbaa !43
  %857 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 5, i32 67
  store i8 -37, ptr %857, align 1, !tbaa !43
  %858 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 5, i32 67, i64 1
  store i8 37, ptr %858, align 1, !tbaa !43
  %859 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 5, i32 67, i64 2
  store i8 18, ptr %859, align 1, !tbaa !43
  %860 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 5, i32 67, i64 3
  store i8 -1, ptr %860, align 1, !tbaa !43
  %861 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 7, i32 71
  store i8 0, ptr %861, align 1, !tbaa !43
  %862 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 7, i32 71, i64 1
  store i8 0, ptr %862, align 1, !tbaa !43
  %863 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 7, i32 71, i64 2
  store i8 0, ptr %863, align 1, !tbaa !43
  %864 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 7, i32 71, i64 3
  store i8 -1, ptr %864, align 1, !tbaa !43
  %865 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 7, i32 72
  store i8 -112, ptr %865, align 1, !tbaa !43
  %866 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 7, i32 72, i64 1
  store i8 -112, ptr %866, align 1, !tbaa !43
  %867 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 7, i32 72, i64 2
  store i8 0, ptr %867, align 1, !tbaa !43
  %868 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 7, i32 72, i64 3
  store i8 -1, ptr %868, align 1, !tbaa !43
  %869 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 7, i32 73
  store i8 64, ptr %869, align 1, !tbaa !43
  %870 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 7, i32 73, i64 1
  store i8 -112, ptr %870, align 1, !tbaa !43
  %871 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 7, i32 73, i64 2
  store i8 48, ptr %871, align 1, !tbaa !43
  %872 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 7, i32 73, i64 3
  store i8 -1, ptr %872, align 1, !tbaa !43
  %873 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 7, i32 74
  store i8 -128, ptr %873, align 1, !tbaa !43
  %874 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 7, i32 74, i64 1
  store i8 48, ptr %874, align 1, !tbaa !43
  %875 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 7, i32 74, i64 2
  store i8 96, ptr %875, align 1, !tbaa !43
  %876 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 7, i32 74, i64 3
  store i8 -1, ptr %876, align 1, !tbaa !43
  %877 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 7, i32 76
  store i8 0, ptr %877, align 1, !tbaa !43
  %878 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 7, i32 76, i64 1
  store i8 0, ptr %878, align 1, !tbaa !43
  %879 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 7, i32 76, i64 2
  store i8 0, ptr %879, align 1, !tbaa !43
  %880 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 7, i32 76, i64 3
  store i8 -1, ptr %880, align 1, !tbaa !43
  %881 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 7, i32 77
  store i8 -16, ptr %881, align 1, !tbaa !43
  %882 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 7, i32 77, i64 1
  store i8 -1, ptr %882, align 1, !tbaa !43
  %883 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 7, i32 77, i64 2
  store i8 64, ptr %883, align 1, !tbaa !43
  %884 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 7, i32 77, i64 3
  store i8 -1, ptr %884, align 1, !tbaa !43
  %885 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 7, i32 78
  store i8 64, ptr %885, align 1, !tbaa !43
  %886 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 7, i32 78, i64 1
  store i8 -64, ptr %886, align 1, !tbaa !43
  %887 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 7, i32 78, i64 2
  store i8 48, ptr %887, align 1, !tbaa !43
  %888 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 7, i32 78, i64 3
  store i8 -1, ptr %888, align 1, !tbaa !43
  %889 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 7, i32 79
  store i8 -16, ptr %889, align 1, !tbaa !43
  %890 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 7, i32 79, i64 1
  store i8 -112, ptr %890, align 1, !tbaa !43
  %891 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 7, i32 79, i64 2
  store i8 -96, ptr %891, align 1, !tbaa !43
  %892 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 7, i32 79, i64 3
  store i8 -1, ptr %892, align 1, !tbaa !43
  %893 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 7, i32 129
  store i8 0, ptr %893, align 1, !tbaa !43
  %894 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 7, i32 129, i64 1
  store i8 0, ptr %894, align 1, !tbaa !43
  %895 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 7, i32 129, i64 2
  store i8 0, ptr %895, align 1, !tbaa !43
  %896 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 7, i32 129, i64 3
  store i8 -1, ptr %896, align 1, !tbaa !43
  %897 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 7, i32 130
  store i8 -1, ptr %897, align 1, !tbaa !43
  %898 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 7, i32 130, i64 1
  store i8 -1, ptr %898, align 1, !tbaa !43
  %899 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 7, i32 130, i64 2
  store i8 0, ptr %899, align 1, !tbaa !43
  %900 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 7, i32 130, i64 3
  store i8 -1, ptr %900, align 1, !tbaa !43
  %901 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 7, i32 67
  store i8 -37, ptr %901, align 1, !tbaa !43
  %902 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 7, i32 67, i64 1
  store i8 37, ptr %902, align 1, !tbaa !43
  %903 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 7, i32 67, i64 2
  store i8 18, ptr %903, align 1, !tbaa !43
  %904 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 7, i32 67, i64 3
  store i8 -1, ptr %904, align 1, !tbaa !43
  %905 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 5, i32 46
  store i8 -52, ptr %905, align 1, !tbaa !43
  %906 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 5, i32 46, i64 1
  store i8 0, ptr %906, align 1, !tbaa !43
  %907 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 5, i32 46, i64 2
  store i8 -103, ptr %907, align 1, !tbaa !43
  %908 = getelementptr inbounds %struct.bTheme, ptr %816, i64 0, i32 5, i32 46, i64 3
  store i8 -1, ptr %908, align 1, !tbaa !43
  %909 = load ptr, ptr %816, align 8, !tbaa !46
  %910 = icmp eq ptr %909, null
  br i1 %910, label %911, label %815, !llvm.loop !137

911:                                              ; preds = %815, %812, %808, %806
  %912 = load i16, ptr %48, align 8, !tbaa !102
  %913 = icmp sgt i16 %912, 252
  %914 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %915 = icmp eq ptr %914, null
  %916 = select i1 %913, i1 true, i1 %915
  br i1 %916, label %927, label %917

917:                                              ; preds = %911, %924
  %918 = phi ptr [ %925, %924 ], [ %914, %911 ]
  %919 = getelementptr inbounds %struct.bTheme, ptr %918, i64 0, i32 5, i32 70, i64 3
  %920 = load i8, ptr %919, align 1, !tbaa !43
  %921 = icmp eq i8 %920, 0
  br i1 %921, label %922, label %924

922:                                              ; preds = %917
  %923 = getelementptr inbounds %struct.bTheme, ptr %918, i64 0, i32 5, i32 70
  store i32 -1, ptr %923, align 1
  br label %924

924:                                              ; preds = %917, %922
  %925 = load ptr, ptr %918, align 8, !tbaa !46
  %926 = icmp eq ptr %925, null
  br i1 %926, label %927, label %917, !llvm.loop !138

927:                                              ; preds = %924, %911
  %928 = load i16, ptr %48, align 8, !tbaa !102
  %929 = icmp slt i16 %928, 252
  br i1 %929, label %939, label %930

930:                                              ; preds = %927
  %931 = icmp eq i16 %928, 252
  br i1 %931, label %932, label %949

932:                                              ; preds = %930
  %933 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 4
  %934 = load i16, ptr %933, align 2, !tbaa !119
  %935 = icmp sgt i16 %934, 4
  %936 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %937 = icmp eq ptr %936, null
  %938 = select i1 %935, i1 true, i1 %937
  br i1 %938, label %949, label %942

939:                                              ; preds = %927
  %940 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !46
  %941 = icmp eq ptr %940, null
  br i1 %941, label %949, label %942

942:                                              ; preds = %939, %932
  %943 = phi ptr [ %940, %939 ], [ %936, %932 ]
  br label %944

944:                                              ; preds = %942, %944
  %945 = phi ptr [ %947, %944 ], [ %943, %942 ]
  %946 = getelementptr inbounds %struct.bTheme, ptr %945, i64 0, i32 3, i32 15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %946, ptr noundef nonnull align 2 dereferenceable(32) @__const.init_userdef_do_versions.wcol_progress, i64 32, i1 false), !tbaa.struct !139
  %947 = load ptr, ptr %945, align 8, !tbaa !46
  %948 = icmp eq ptr %947, null
  br i1 %948, label %949, label %944, !llvm.loop !140

949:                                              ; preds = %944, %939, %932, %930
  %950 = load i16, ptr %48, align 8, !tbaa !102
  %951 = icmp slt i16 %950, 255
  br i1 %951, label %961, label %952

952:                                              ; preds = %949
  %953 = icmp eq i16 %950, 255
  br i1 %953, label %954, label %982

954:                                              ; preds = %952
  %955 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 4
  %956 = load i16, ptr %955, align 2, !tbaa !119
  %957 = icmp sgt i16 %956, 1
  %958 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %959 = icmp eq ptr %958, null
  %960 = select i1 %957, i1 true, i1 %959
  br i1 %960, label %982, label %964

961:                                              ; preds = %949
  %962 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !46
  %963 = icmp eq ptr %962, null
  br i1 %963, label %982, label %964

964:                                              ; preds = %961, %954
  %965 = phi ptr [ %962, %961 ], [ %958, %954 ]
  br label %966

966:                                              ; preds = %964, %966
  %967 = phi ptr [ %980, %966 ], [ %965, %964 ]
  %968 = getelementptr inbounds %struct.bTheme, ptr %967, i64 0, i32 5, i32 50
  store i8 32, ptr %968, align 1, !tbaa !43
  %969 = getelementptr inbounds %struct.bTheme, ptr %967, i64 0, i32 5, i32 50, i64 1
  store i8 0, ptr %969, align 1, !tbaa !43
  %970 = getelementptr inbounds %struct.bTheme, ptr %967, i64 0, i32 5, i32 50, i64 2
  store i8 0, ptr %970, align 1, !tbaa !43
  %971 = getelementptr inbounds %struct.bTheme, ptr %967, i64 0, i32 5, i32 50, i64 3
  store i8 -1, ptr %971, align 1, !tbaa !43
  %972 = getelementptr inbounds %struct.bTheme, ptr %967, i64 0, i32 5, i32 52
  store i8 0, ptr %972, align 1, !tbaa !43
  %973 = getelementptr inbounds %struct.bTheme, ptr %967, i64 0, i32 5, i32 52, i64 1
  store i8 32, ptr %973, align 1, !tbaa !43
  %974 = getelementptr inbounds %struct.bTheme, ptr %967, i64 0, i32 5, i32 52, i64 2
  store i8 0, ptr %974, align 1, !tbaa !43
  %975 = getelementptr inbounds %struct.bTheme, ptr %967, i64 0, i32 5, i32 52, i64 3
  store i8 -1, ptr %975, align 1, !tbaa !43
  %976 = getelementptr inbounds %struct.bTheme, ptr %967, i64 0, i32 5, i32 53
  store i8 0, ptr %976, align 1, !tbaa !43
  %977 = getelementptr inbounds %struct.bTheme, ptr %967, i64 0, i32 5, i32 53, i64 1
  store i8 0, ptr %977, align 1, !tbaa !43
  %978 = getelementptr inbounds %struct.bTheme, ptr %967, i64 0, i32 5, i32 53, i64 2
  store i8 -128, ptr %978, align 1, !tbaa !43
  %979 = getelementptr inbounds %struct.bTheme, ptr %967, i64 0, i32 5, i32 53, i64 3
  store i8 -1, ptr %979, align 1, !tbaa !43
  %980 = load ptr, ptr %967, align 8, !tbaa !46
  %981 = icmp eq ptr %980, null
  br i1 %981, label %982, label %966, !llvm.loop !141

982:                                              ; preds = %966, %961, %954, %952
  %983 = load i16, ptr %48, align 8, !tbaa !102
  %984 = icmp slt i16 %983, 256
  br i1 %984, label %994, label %985

985:                                              ; preds = %982
  %986 = icmp eq i16 %983, 256
  br i1 %986, label %987, label %1008

987:                                              ; preds = %985
  %988 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 4
  %989 = load i16, ptr %988, align 2, !tbaa !119
  %990 = icmp sgt i16 %989, 3
  %991 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %992 = icmp eq ptr %991, null
  %993 = select i1 %990, i1 true, i1 %992
  br i1 %993, label %1008, label %997

994:                                              ; preds = %982
  %995 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !46
  %996 = icmp eq ptr %995, null
  br i1 %996, label %1008, label %997

997:                                              ; preds = %994, %987
  %998 = phi ptr [ %995, %994 ], [ %991, %987 ]
  br label %999

999:                                              ; preds = %997, %1005
  %1000 = phi ptr [ %1006, %1005 ], [ %998, %997 ]
  %1001 = getelementptr inbounds %struct.bTheme, ptr %1000, i64 0, i32 5, i32 100
  %1002 = load i8, ptr %1001, align 1, !tbaa !65
  %1003 = icmp eq i8 %1002, 0
  br i1 %1003, label %1004, label %1005

1004:                                             ; preds = %999
  store i8 1, ptr %1001, align 1, !tbaa !65
  br label %1005

1005:                                             ; preds = %999, %1004
  %1006 = load ptr, ptr %1000, align 8, !tbaa !46
  %1007 = icmp eq ptr %1006, null
  br i1 %1007, label %1008, label %999, !llvm.loop !142

1008:                                             ; preds = %1005, %994, %987, %985
  %1009 = icmp slt i16 %983, 257
  br i1 %1009, label %1010, label %1013

1010:                                             ; preds = %1008
  %1011 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 92), align 2, !tbaa !143
  %1012 = and i16 %1011, -65
  store i16 %1012, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 92), align 2, !tbaa !143
  br label %1013

1013:                                             ; preds = %1010, %1008
  %1014 = icmp slt i16 %983, 258
  br i1 %1014, label %1024, label %1015

1015:                                             ; preds = %1013
  %1016 = icmp eq i16 %983, 258
  br i1 %1016, label %1017, label %1034

1017:                                             ; preds = %1015
  %1018 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 4
  %1019 = load i16, ptr %1018, align 2, !tbaa !119
  %1020 = icmp sgt i16 %1019, 1
  %1021 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %1022 = icmp eq ptr %1021, null
  %1023 = select i1 %1020, i1 true, i1 %1022
  br i1 %1023, label %1034, label %1027

1024:                                             ; preds = %1013
  %1025 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !46
  %1026 = icmp eq ptr %1025, null
  br i1 %1026, label %1034, label %1027

1027:                                             ; preds = %1024, %1017
  %1028 = phi ptr [ %1025, %1024 ], [ %1021, %1017 ]
  br label %1029

1029:                                             ; preds = %1027, %1029
  %1030 = phi ptr [ %1032, %1029 ], [ %1028, %1027 ]
  %1031 = getelementptr inbounds %struct.bTheme, ptr %1030, i64 0, i32 16, i32 102
  store i8 5, ptr %1031, align 1, !tbaa !75
  %1032 = load ptr, ptr %1030, align 8, !tbaa !46
  %1033 = icmp eq ptr %1032, null
  br i1 %1033, label %1034, label %1029, !llvm.loop !144

1034:                                             ; preds = %1029, %1024, %1017, %1015
  %1035 = icmp slt i16 %983, 259
  br i1 %1035, label %1045, label %1036

1036:                                             ; preds = %1034
  %1037 = icmp eq i16 %983, 259
  br i1 %1037, label %1038, label %1055

1038:                                             ; preds = %1036
  %1039 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 4
  %1040 = load i16, ptr %1039, align 2, !tbaa !119
  %1041 = icmp sgt i16 %1040, 0
  %1042 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %1043 = icmp eq ptr %1042, null
  %1044 = select i1 %1041, i1 true, i1 %1043
  br i1 %1044, label %1055, label %1048

1045:                                             ; preds = %1034
  %1046 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !46
  %1047 = icmp eq ptr %1046, null
  br i1 %1047, label %1055, label %1048

1048:                                             ; preds = %1045, %1038
  %1049 = phi ptr [ %1046, %1045 ], [ %1042, %1038 ]
  br label %1050

1050:                                             ; preds = %1048, %1050
  %1051 = phi ptr [ %1053, %1050 ], [ %1049, %1048 ]
  %1052 = getelementptr inbounds %struct.bTheme, ptr %1051, i64 0, i32 5, i32 31, i64 3
  store i8 -1, ptr %1052, align 1, !tbaa !43
  %1053 = load ptr, ptr %1051, align 8, !tbaa !46
  %1054 = icmp eq ptr %1053, null
  br i1 %1054, label %1055, label %1050, !llvm.loop !145

1055:                                             ; preds = %1050, %1045, %1038, %1036
  %1056 = load i16, ptr %48, align 8, !tbaa !102
  %1057 = icmp slt i16 %1056, 260
  br i1 %1057, label %1064, label %1058

1058:                                             ; preds = %1055
  %1059 = icmp eq i16 %1056, 260
  br i1 %1059, label %1060, label %1165

1060:                                             ; preds = %1058
  %1061 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 4
  %1062 = load i16, ptr %1061, align 2, !tbaa !119
  %1063 = icmp slt i16 %1062, 3
  br i1 %1063, label %1064, label %1165

1064:                                             ; preds = %1060, %1055
  %1065 = load i8, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 76), align 1, !tbaa !136
  %1066 = icmp eq i8 %1065, 1
  br i1 %1066, label %1067, label %1068

1067:                                             ; preds = %1064
  store i8 4, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 76), align 1, !tbaa !136
  br label %1068

1068:                                             ; preds = %1067, %1064
  %1069 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !46
  %1070 = icmp eq ptr %1069, null
  br i1 %1070, label %1157, label %1071

1071:                                             ; preds = %1068, %1154
  %1072 = phi ptr [ %1155, %1154 ], [ %1069, %1068 ]
  %1073 = getelementptr inbounds %struct.bTheme, ptr %1072, i64 0, i32 5
  %1074 = getelementptr inbounds %struct.bTheme, ptr %1072, i64 0, i32 5, i32 139, i64 3
  %1075 = load i8, ptr %1074, align 1, !tbaa !43
  %1076 = icmp eq i8 %1075, 0
  br i1 %1076, label %1077, label %1081

1077:                                             ; preds = %1071
  %1078 = getelementptr inbounds %struct.bTheme, ptr %1072, i64 0, i32 5, i32 139
  store i8 -56, ptr %1078, align 1, !tbaa !43
  %1079 = getelementptr inbounds %struct.bTheme, ptr %1072, i64 0, i32 5, i32 139, i64 1
  store i8 -56, ptr %1079, align 1, !tbaa !43
  %1080 = getelementptr inbounds %struct.bTheme, ptr %1072, i64 0, i32 5, i32 139, i64 2
  store i8 -56, ptr %1080, align 1, !tbaa !43
  store i8 -1, ptr %1074, align 1, !tbaa !43
  br label %1081

1081:                                             ; preds = %1077, %1071
  %1082 = getelementptr inbounds %struct.bTheme, ptr %1072, i64 0, i32 5, i32 142, i64 3
  %1083 = load i8, ptr %1082, align 1, !tbaa !43
  %1084 = icmp eq i8 %1083, 0
  br i1 %1084, label %1085, label %1089

1085:                                             ; preds = %1081
  %1086 = getelementptr inbounds %struct.bTheme, ptr %1072, i64 0, i32 5, i32 142
  store i8 0, ptr %1086, align 1, !tbaa !43
  %1087 = getelementptr inbounds %struct.bTheme, ptr %1072, i64 0, i32 5, i32 142, i64 1
  store i8 0, ptr %1087, align 1, !tbaa !43
  %1088 = getelementptr inbounds %struct.bTheme, ptr %1072, i64 0, i32 5, i32 142, i64 2
  store i8 0, ptr %1088, align 1, !tbaa !43
  store i8 -1, ptr %1082, align 1, !tbaa !43
  br label %1089

1089:                                             ; preds = %1085, %1081
  %1090 = getelementptr inbounds %struct.bTheme, ptr %1072, i64 0, i32 20, i32 0, i64 3
  %1091 = load i8, ptr %1090, align 1, !tbaa !43
  %1092 = icmp eq i8 %1091, 0
  br i1 %1092, label %1093, label %1138

1093:                                             ; preds = %1089
  %1094 = getelementptr inbounds %struct.bTheme, ptr %1072, i64 0, i32 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(720) %1094, ptr noundef nonnull align 8 dereferenceable(720) %1073, i64 720, i1 false), !tbaa.struct !68
  %1095 = getelementptr inbounds %struct.bTheme, ptr %1072, i64 0, i32 20, i32 133
  store i8 0, ptr %1095, align 1, !tbaa !43
  %1096 = getelementptr inbounds %struct.bTheme, ptr %1072, i64 0, i32 20, i32 133, i64 1
  store i8 0, ptr %1096, align 1, !tbaa !43
  %1097 = getelementptr inbounds %struct.bTheme, ptr %1072, i64 0, i32 20, i32 133, i64 2
  store i8 0, ptr %1097, align 1, !tbaa !43
  %1098 = getelementptr inbounds %struct.bTheme, ptr %1072, i64 0, i32 20, i32 133, i64 3
  store i8 -1, ptr %1098, align 1, !tbaa !43
  %1099 = getelementptr inbounds %struct.bTheme, ptr %1072, i64 0, i32 20, i32 134
  store i8 127, ptr %1099, align 1, !tbaa !43
  %1100 = getelementptr inbounds %struct.bTheme, ptr %1072, i64 0, i32 20, i32 134, i64 1
  store i8 127, ptr %1100, align 1, !tbaa !43
  %1101 = getelementptr inbounds %struct.bTheme, ptr %1072, i64 0, i32 20, i32 134, i64 2
  store i8 0, ptr %1101, align 1, !tbaa !43
  %1102 = getelementptr inbounds %struct.bTheme, ptr %1072, i64 0, i32 20, i32 134, i64 3
  %1103 = getelementptr inbounds %struct.bTheme, ptr %1072, i64 0, i32 20, i32 136, i64 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %1102, i8 -1, i64 7, i1 false)
  store i8 0, ptr %1103, align 1, !tbaa !43
  %1104 = getelementptr inbounds %struct.bTheme, ptr %1072, i64 0, i32 20, i32 136, i64 3
  store i8 -1, ptr %1104, align 1, !tbaa !43
  %1105 = getelementptr inbounds %struct.bTheme, ptr %1072, i64 0, i32 20, i32 137
  store i8 127, ptr %1105, align 1, !tbaa !43
  %1106 = getelementptr inbounds %struct.bTheme, ptr %1072, i64 0, i32 20, i32 137, i64 1
  store i8 0, ptr %1106, align 1, !tbaa !43
  %1107 = getelementptr inbounds %struct.bTheme, ptr %1072, i64 0, i32 20, i32 137, i64 2
  store i8 0, ptr %1107, align 1, !tbaa !43
  %1108 = getelementptr inbounds %struct.bTheme, ptr %1072, i64 0, i32 20, i32 137, i64 3
  store i8 -1, ptr %1108, align 1, !tbaa !43
  %1109 = getelementptr inbounds %struct.bTheme, ptr %1072, i64 0, i32 20, i32 138
  store i8 127, ptr %1109, align 1, !tbaa !43
  %1110 = getelementptr inbounds %struct.bTheme, ptr %1072, i64 0, i32 20, i32 138, i64 1
  store i8 127, ptr %1110, align 1, !tbaa !43
  %1111 = getelementptr inbounds %struct.bTheme, ptr %1072, i64 0, i32 20, i32 138, i64 2
  store i8 127, ptr %1111, align 1, !tbaa !43
  %1112 = getelementptr inbounds %struct.bTheme, ptr %1072, i64 0, i32 20, i32 138, i64 3
  store i8 -1, ptr %1112, align 1, !tbaa !43
  %1113 = getelementptr inbounds %struct.bTheme, ptr %1072, i64 0, i32 20, i32 140
  store i8 -1, ptr %1113, align 1, !tbaa !43
  %1114 = getelementptr inbounds %struct.bTheme, ptr %1072, i64 0, i32 20, i32 140, i64 1
  store i8 0, ptr %1114, align 1, !tbaa !43
  %1115 = getelementptr inbounds %struct.bTheme, ptr %1072, i64 0, i32 20, i32 140, i64 2
  store i8 0, ptr %1115, align 1, !tbaa !43
  %1116 = getelementptr inbounds %struct.bTheme, ptr %1072, i64 0, i32 20, i32 140, i64 3
  store i8 -1, ptr %1116, align 1, !tbaa !43
  %1117 = getelementptr inbounds %struct.bTheme, ptr %1072, i64 0, i32 20, i32 141
  store i8 0, ptr %1117, align 1, !tbaa !43
  %1118 = getelementptr inbounds %struct.bTheme, ptr %1072, i64 0, i32 20, i32 141, i64 1
  store i8 0, ptr %1118, align 1, !tbaa !43
  %1119 = getelementptr inbounds %struct.bTheme, ptr %1072, i64 0, i32 20, i32 141, i64 2
  store i8 -1, ptr %1119, align 1, !tbaa !43
  %1120 = getelementptr inbounds %struct.bTheme, ptr %1072, i64 0, i32 20, i32 141, i64 3
  store i8 -1, ptr %1120, align 1, !tbaa !43
  %1121 = getelementptr inbounds %struct.bTheme, ptr %1072, i64 0, i32 20, i32 25
  store i8 94, ptr %1121, align 1, !tbaa !43
  %1122 = getelementptr inbounds %struct.bTheme, ptr %1072, i64 0, i32 20, i32 25, i64 1
  store i8 94, ptr %1122, align 1, !tbaa !43
  %1123 = getelementptr inbounds %struct.bTheme, ptr %1072, i64 0, i32 20, i32 25, i64 2
  store i8 94, ptr %1123, align 1, !tbaa !43
  %1124 = getelementptr inbounds %struct.bTheme, ptr %1072, i64 0, i32 20, i32 25, i64 3
  store i8 -1, ptr %1124, align 1, !tbaa !43
  %1125 = getelementptr inbounds %struct.bTheme, ptr %1072, i64 0, i32 20, i32 62
  store i8 96, ptr %1125, align 1, !tbaa !43
  %1126 = getelementptr inbounds %struct.bTheme, ptr %1072, i64 0, i32 20, i32 62, i64 1
  store i8 -64, ptr %1126, align 1, !tbaa !43
  %1127 = getelementptr inbounds %struct.bTheme, ptr %1072, i64 0, i32 20, i32 62, i64 2
  store i8 64, ptr %1127, align 1, !tbaa !43
  %1128 = getelementptr inbounds %struct.bTheme, ptr %1072, i64 0, i32 20, i32 62, i64 3
  store i8 -1, ptr %1128, align 1, !tbaa !43
  %1129 = getelementptr inbounds %struct.bTheme, ptr %1072, i64 0, i32 20, i32 129
  store i8 0, ptr %1129, align 1, !tbaa !43
  %1130 = getelementptr inbounds %struct.bTheme, ptr %1072, i64 0, i32 20, i32 129, i64 1
  store i8 0, ptr %1130, align 1, !tbaa !43
  %1131 = getelementptr inbounds %struct.bTheme, ptr %1072, i64 0, i32 20, i32 129, i64 2
  store i8 0, ptr %1131, align 1, !tbaa !43
  %1132 = getelementptr inbounds %struct.bTheme, ptr %1072, i64 0, i32 20, i32 129, i64 3
  store i8 -1, ptr %1132, align 1, !tbaa !43
  %1133 = getelementptr inbounds %struct.bTheme, ptr %1072, i64 0, i32 20, i32 130
  store i8 -1, ptr %1133, align 1, !tbaa !43
  %1134 = getelementptr inbounds %struct.bTheme, ptr %1072, i64 0, i32 20, i32 130, i64 1
  store i8 -1, ptr %1134, align 1, !tbaa !43
  %1135 = getelementptr inbounds %struct.bTheme, ptr %1072, i64 0, i32 20, i32 130, i64 2
  store i8 0, ptr %1135, align 1, !tbaa !43
  %1136 = getelementptr inbounds %struct.bTheme, ptr %1072, i64 0, i32 20, i32 130, i64 3
  store i8 -1, ptr %1136, align 1, !tbaa !43
  %1137 = getelementptr inbounds %struct.bTheme, ptr %1072, i64 0, i32 20, i32 132
  store i8 5, ptr %1137, align 4, !tbaa !76
  br label %1138

1138:                                             ; preds = %1093, %1089
  %1139 = getelementptr inbounds %struct.bTheme, ptr %1072, i64 0, i32 7, i32 75, i64 3
  %1140 = load i8, ptr %1139, align 1, !tbaa !43
  %1141 = icmp eq i8 %1140, 0
  br i1 %1141, label %1142, label %1146

1142:                                             ; preds = %1138
  %1143 = getelementptr inbounds %struct.bTheme, ptr %1072, i64 0, i32 7, i32 75
  store i8 -103, ptr %1143, align 1, !tbaa !43
  %1144 = getelementptr inbounds %struct.bTheme, ptr %1072, i64 0, i32 7, i32 75, i64 1
  store i8 64, ptr %1144, align 1, !tbaa !43
  %1145 = getelementptr inbounds %struct.bTheme, ptr %1072, i64 0, i32 7, i32 75, i64 2
  store i8 48, ptr %1145, align 1, !tbaa !43
  store i8 -1, ptr %1139, align 1, !tbaa !43
  br label %1146

1146:                                             ; preds = %1142, %1138
  %1147 = getelementptr inbounds %struct.bTheme, ptr %1072, i64 0, i32 7, i32 80, i64 3
  %1148 = load i8, ptr %1147, align 1, !tbaa !43
  %1149 = icmp eq i8 %1148, 0
  br i1 %1149, label %1150, label %1154

1150:                                             ; preds = %1146
  %1151 = getelementptr inbounds %struct.bTheme, ptr %1072, i64 0, i32 7, i32 80
  store i8 -16, ptr %1151, align 1, !tbaa !43
  %1152 = getelementptr inbounds %struct.bTheme, ptr %1072, i64 0, i32 7, i32 80, i64 1
  store i8 -81, ptr %1152, align 1, !tbaa !43
  %1153 = getelementptr inbounds %struct.bTheme, ptr %1072, i64 0, i32 7, i32 80, i64 2
  store i8 -112, ptr %1153, align 1, !tbaa !43
  store i8 -1, ptr %1147, align 1, !tbaa !43
  br label %1154

1154:                                             ; preds = %1146, %1150
  %1155 = load ptr, ptr %1072, align 8, !tbaa !46
  %1156 = icmp eq ptr %1155, null
  br i1 %1156, label %1157, label %1071, !llvm.loop !146

1157:                                             ; preds = %1154, %1068
  %1158 = tail call ptr @BLI_findstring(ptr noundef nonnull getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 43), ptr noundef nonnull @.str.37, i32 noundef 16) #16
  %1159 = icmp eq ptr %1158, null
  br i1 %1159, label %1160, label %1165

1160:                                             ; preds = %1157
  %1161 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %1162 = tail call ptr %1161(i64 noundef 88, ptr noundef nonnull @.str.38) #16
  %1163 = getelementptr inbounds %struct.bAddon, ptr %1162, i64 0, i32 2
  %1164 = tail call ptr @BLI_strncpy(ptr noundef nonnull %1163, ptr noundef nonnull @.str.37, i64 noundef 64) #16
  tail call void @BLI_addtail(ptr noundef nonnull getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 43), ptr noundef %1162) #16
  br label %1165

1165:                                             ; preds = %1157, %1160, %1060, %1058
  %1166 = load i16, ptr %48, align 8, !tbaa !102
  %1167 = icmp slt i16 %1166, 260
  br i1 %1167, label %1177, label %1168

1168:                                             ; preds = %1165
  %1169 = icmp eq i16 %1166, 260
  br i1 %1169, label %1170, label %1191

1170:                                             ; preds = %1168
  %1171 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 4
  %1172 = load i16, ptr %1171, align 2, !tbaa !119
  %1173 = icmp sgt i16 %1172, 4
  %1174 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %1175 = icmp eq ptr %1174, null
  %1176 = select i1 %1173, i1 true, i1 %1175
  br i1 %1176, label %1191, label %1180

1177:                                             ; preds = %1165
  %1178 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !46
  %1179 = icmp eq ptr %1178, null
  br i1 %1179, label %1191, label %1180

1180:                                             ; preds = %1177, %1170
  %1181 = phi ptr [ %1178, %1177 ], [ %1174, %1170 ]
  br label %1182

1182:                                             ; preds = %1180, %1182
  %1183 = phi ptr [ %1189, %1182 ], [ %1181, %1180 ]
  %1184 = getelementptr inbounds %struct.bTheme, ptr %1183, i64 0, i32 3, i32 19
  store i8 0, ptr %1184, align 1, !tbaa !43
  %1185 = getelementptr inbounds %struct.bTheme, ptr %1183, i64 0, i32 3, i32 19, i32 0, i64 1
  store i8 0, ptr %1185, align 1, !tbaa !43
  %1186 = getelementptr inbounds %struct.bTheme, ptr %1183, i64 0, i32 3, i32 19, i32 0, i64 2
  store i8 0, ptr %1186, align 1, !tbaa !43
  %1187 = getelementptr inbounds %struct.bTheme, ptr %1183, i64 0, i32 3, i32 19, i32 0, i64 3
  store i8 25, ptr %1187, align 1, !tbaa !43
  %1188 = getelementptr inbounds %struct.bTheme, ptr %1183, i64 0, i32 3, i32 25
  store float 1.000000e+00, ptr %1188, align 8, !tbaa !147
  %1189 = load ptr, ptr %1183, align 8, !tbaa !46
  %1190 = icmp eq ptr %1189, null
  br i1 %1190, label %1191, label %1182, !llvm.loop !148

1191:                                             ; preds = %1182, %1177, %1170, %1168
  %1192 = load i16, ptr %48, align 8, !tbaa !102
  %1193 = icmp slt i16 %1192, 261
  br i1 %1193, label %1200, label %1194

1194:                                             ; preds = %1191
  %1195 = icmp eq i16 %1192, 261
  br i1 %1195, label %1196, label %1240

1196:                                             ; preds = %1194
  %1197 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 4
  %1198 = load i16, ptr %1197, align 2, !tbaa !119
  %1199 = icmp slt i16 %1198, 4
  br i1 %1199, label %1200, label %1240

1200:                                             ; preds = %1196, %1191
  %1201 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !46
  %1202 = icmp eq ptr %1201, null
  br i1 %1202, label %1239, label %1203

1203:                                             ; preds = %1200, %1203
  %1204 = phi ptr [ %1237, %1203 ], [ %1201, %1200 ]
  %1205 = getelementptr inbounds %struct.bTheme, ptr %1204, i64 0, i32 12, i32 145
  store i8 18, ptr %1205, align 1, !tbaa !43
  %1206 = getelementptr inbounds %struct.bTheme, ptr %1204, i64 0, i32 12, i32 145, i64 1
  store i8 66, ptr %1206, align 1, !tbaa !43
  %1207 = getelementptr inbounds %struct.bTheme, ptr %1204, i64 0, i32 12, i32 145, i64 2
  store i8 -80, ptr %1207, align 1, !tbaa !43
  %1208 = getelementptr inbounds %struct.bTheme, ptr %1204, i64 0, i32 12, i32 145, i64 3
  store i8 38, ptr %1208, align 1, !tbaa !43
  %1209 = getelementptr inbounds %struct.bTheme, ptr %1204, i64 0, i32 12, i32 146
  store i8 -1, ptr %1209, align 1, !tbaa !43
  %1210 = getelementptr inbounds %struct.bTheme, ptr %1204, i64 0, i32 12, i32 146, i64 1
  store i8 -123, ptr %1210, align 1, !tbaa !43
  %1211 = getelementptr inbounds %struct.bTheme, ptr %1204, i64 0, i32 12, i32 146, i64 2
  store i8 0, ptr %1211, align 1, !tbaa !43
  %1212 = getelementptr inbounds %struct.bTheme, ptr %1204, i64 0, i32 12, i32 146, i64 3
  store i8 -78, ptr %1212, align 1, !tbaa !43
  %1213 = getelementptr inbounds %struct.bTheme, ptr %1204, i64 0, i32 12, i32 147
  store i8 -1, ptr %1213, align 1, !tbaa !43
  %1214 = getelementptr inbounds %struct.bTheme, ptr %1204, i64 0, i32 12, i32 147, i64 1
  store i8 -123, ptr %1214, align 1, !tbaa !43
  %1215 = getelementptr inbounds %struct.bTheme, ptr %1204, i64 0, i32 12, i32 147, i64 2
  store i8 0, ptr %1215, align 1, !tbaa !43
  %1216 = getelementptr inbounds %struct.bTheme, ptr %1204, i64 0, i32 12, i32 147, i64 3
  store i8 127, ptr %1216, align 1, !tbaa !43
  %1217 = getelementptr inbounds %struct.bTheme, ptr %1204, i64 0, i32 12, i32 148
  store i8 0, ptr %1217, align 1, !tbaa !43
  %1218 = getelementptr inbounds %struct.bTheme, ptr %1204, i64 0, i32 12, i32 148, i64 1
  store i8 -1, ptr %1218, align 1, !tbaa !43
  %1219 = getelementptr inbounds %struct.bTheme, ptr %1204, i64 0, i32 12, i32 148, i64 2
  store i8 0, ptr %1219, align 1, !tbaa !43
  %1220 = getelementptr inbounds %struct.bTheme, ptr %1204, i64 0, i32 12, i32 148, i64 3
  store i8 -1, ptr %1220, align 1, !tbaa !43
  %1221 = getelementptr inbounds %struct.bTheme, ptr %1204, i64 0, i32 12, i32 149
  store i8 -1, ptr %1221, align 1, !tbaa !43
  %1222 = getelementptr inbounds %struct.bTheme, ptr %1204, i64 0, i32 12, i32 149, i64 1
  store i8 0, ptr %1222, align 1, !tbaa !43
  %1223 = getelementptr inbounds %struct.bTheme, ptr %1204, i64 0, i32 12, i32 149, i64 2
  store i8 0, ptr %1223, align 1, !tbaa !43
  %1224 = getelementptr inbounds %struct.bTheme, ptr %1204, i64 0, i32 12, i32 149, i64 3
  store i8 -1, ptr %1224, align 1, !tbaa !43
  %1225 = getelementptr inbounds %struct.bTheme, ptr %1204, i64 0, i32 12, i32 150
  store i8 -31, ptr %1225, align 1, !tbaa !43
  %1226 = getelementptr inbounds %struct.bTheme, ptr %1204, i64 0, i32 12, i32 150, i64 1
  store i8 -46, ptr %1226, align 1, !tbaa !43
  %1227 = getelementptr inbounds %struct.bTheme, ptr %1204, i64 0, i32 12, i32 150, i64 2
  store i8 -61, ptr %1227, align 1, !tbaa !43
  %1228 = getelementptr inbounds %struct.bTheme, ptr %1204, i64 0, i32 12, i32 150, i64 3
  store i8 35, ptr %1228, align 1, !tbaa !43
  %1229 = getelementptr inbounds %struct.bTheme, ptr %1204, i64 0, i32 14, i32 153
  store i8 51, ptr %1229, align 1, !tbaa !43
  %1230 = getelementptr inbounds %struct.bTheme, ptr %1204, i64 0, i32 14, i32 153, i64 1
  store i8 127, ptr %1230, align 1, !tbaa !43
  %1231 = getelementptr inbounds %struct.bTheme, ptr %1204, i64 0, i32 14, i32 153, i64 2
  store i8 51, ptr %1231, align 1, !tbaa !43
  %1232 = getelementptr inbounds %struct.bTheme, ptr %1204, i64 0, i32 14, i32 153, i64 3
  store i8 76, ptr %1232, align 1, !tbaa !43
  %1233 = getelementptr inbounds %struct.bTheme, ptr %1204, i64 0, i32 14, i32 154
  store i8 -126, ptr %1233, align 1, !tbaa !43
  %1234 = getelementptr inbounds %struct.bTheme, ptr %1204, i64 0, i32 14, i32 154, i64 1
  store i8 -121, ptr %1234, align 1, !tbaa !43
  %1235 = getelementptr inbounds %struct.bTheme, ptr %1204, i64 0, i32 14, i32 154, i64 2
  store i8 -116, ptr %1235, align 1, !tbaa !43
  %1236 = getelementptr inbounds %struct.bTheme, ptr %1204, i64 0, i32 14, i32 154, i64 3
  store i8 76, ptr %1236, align 1, !tbaa !43
  %1237 = load ptr, ptr %1204, align 8, !tbaa !46
  %1238 = icmp eq ptr %1237, null
  br i1 %1238, label %1239, label %1203, !llvm.loop !149

1239:                                             ; preds = %1203, %1200
  store i16 1, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 83), align 8, !tbaa !150
  br label %1240

1240:                                             ; preds = %1239, %1196, %1194
  %1241 = load i16, ptr %48, align 8, !tbaa !102
  %1242 = icmp slt i16 %1241, 262
  br i1 %1242, label %1252, label %1243

1243:                                             ; preds = %1240
  %1244 = icmp eq i16 %1241, 262
  br i1 %1244, label %1245, label %1269

1245:                                             ; preds = %1243
  %1246 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 4
  %1247 = load i16, ptr %1246, align 2, !tbaa !119
  %1248 = icmp sgt i16 %1247, 1
  %1249 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %1250 = icmp eq ptr %1249, null
  %1251 = select i1 %1248, i1 true, i1 %1250
  br i1 %1251, label %1269, label %1255

1252:                                             ; preds = %1240
  %1253 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !46
  %1254 = icmp eq ptr %1253, null
  br i1 %1254, label %1269, label %1255

1255:                                             ; preds = %1252, %1245
  %1256 = phi ptr [ %1253, %1252 ], [ %1249, %1245 ]
  br label %1257

1257:                                             ; preds = %1255, %1266
  %1258 = phi ptr [ %1267, %1266 ], [ %1256, %1255 ]
  %1259 = getelementptr inbounds %struct.bTheme, ptr %1258, i64 0, i32 3, i32 11, i32 3, i64 3
  %1260 = load i8, ptr %1259, align 1, !tbaa !43
  %1261 = icmp eq i8 %1260, -1
  br i1 %1261, label %1262, label %1266

1262:                                             ; preds = %1257
  %1263 = getelementptr inbounds %struct.bTheme, ptr %1258, i64 0, i32 3, i32 11, i32 3
  store i8 -84, ptr %1263, align 1, !tbaa !43
  %1264 = getelementptr inbounds %struct.bTheme, ptr %1258, i64 0, i32 3, i32 11, i32 3, i64 1
  store i8 -84, ptr %1264, align 1, !tbaa !43
  %1265 = getelementptr inbounds %struct.bTheme, ptr %1258, i64 0, i32 3, i32 11, i32 3, i64 2
  store i8 -84, ptr %1265, align 1, !tbaa !43
  store i8 -128, ptr %1259, align 1, !tbaa !43
  br label %1266

1266:                                             ; preds = %1257, %1262
  %1267 = load ptr, ptr %1258, align 8, !tbaa !46
  %1268 = icmp eq ptr %1267, null
  br i1 %1268, label %1269, label %1257, !llvm.loop !151

1269:                                             ; preds = %1266, %1252, %1245, %1243
  %1270 = load i16, ptr %48, align 8, !tbaa !102
  %1271 = icmp slt i16 %1270, 262
  br i1 %1271, label %1281, label %1272

1272:                                             ; preds = %1269
  %1273 = icmp eq i16 %1270, 262
  br i1 %1273, label %1274, label %1302

1274:                                             ; preds = %1272
  %1275 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 4
  %1276 = load i16, ptr %1275, align 2, !tbaa !119
  %1277 = icmp sgt i16 %1276, 2
  %1278 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %1279 = icmp eq ptr %1278, null
  %1280 = select i1 %1277, i1 true, i1 %1279
  br i1 %1280, label %1302, label %1284

1281:                                             ; preds = %1269
  %1282 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !46
  %1283 = icmp eq ptr %1282, null
  br i1 %1283, label %1302, label %1284

1284:                                             ; preds = %1281, %1274
  %1285 = phi ptr [ %1282, %1281 ], [ %1278, %1274 ]
  br label %1286

1286:                                             ; preds = %1284, %1299
  %1287 = phi ptr [ %1300, %1299 ], [ %1285, %1284 ]
  %1288 = getelementptr inbounds %struct.bTheme, ptr %1287, i64 0, i32 3, i32 12, i32 1, i64 3
  %1289 = load i8, ptr %1288, align 1, !tbaa !43
  %1290 = icmp eq i8 %1289, 0
  br i1 %1290, label %1291, label %1294

1291:                                             ; preds = %1286
  %1292 = getelementptr inbounds %struct.bTheme, ptr %1287, i64 0, i32 3, i32 12
  %1293 = getelementptr inbounds %struct.bTheme, ptr %1287, i64 0, i32 3, i32 10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1292, ptr noundef nonnull align 8 dereferenceable(32) %1293, i64 32, i1 false), !tbaa.struct !139
  br label %1294

1294:                                             ; preds = %1291, %1286
  %1295 = getelementptr inbounds %struct.bTheme, ptr %1287, i64 0, i32 3, i32 12, i32 4
  %1296 = load i8, ptr %1295, align 8, !tbaa !43
  %1297 = icmp eq i8 %1296, -96
  br i1 %1297, label %1298, label %1299

1298:                                             ; preds = %1294
  store i32 -1, ptr %1295, align 1
  br label %1299

1299:                                             ; preds = %1294, %1298
  %1300 = load ptr, ptr %1287, align 8, !tbaa !46
  %1301 = icmp eq ptr %1300, null
  br i1 %1301, label %1302, label %1286, !llvm.loop !152

1302:                                             ; preds = %1299, %1281, %1274, %1272
  %1303 = load i16, ptr %48, align 8, !tbaa !102
  %1304 = icmp slt i16 %1303, 262
  br i1 %1304, label %1314, label %1305

1305:                                             ; preds = %1302
  %1306 = icmp eq i16 %1303, 262
  br i1 %1306, label %1307, label %1331

1307:                                             ; preds = %1305
  %1308 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 4
  %1309 = load i16, ptr %1308, align 2, !tbaa !119
  %1310 = icmp sgt i16 %1309, 3
  %1311 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %1312 = icmp eq ptr %1311, null
  %1313 = select i1 %1310, i1 true, i1 %1312
  br i1 %1313, label %1331, label %1317

1314:                                             ; preds = %1302
  %1315 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !46
  %1316 = icmp eq ptr %1315, null
  br i1 %1316, label %1331, label %1317

1317:                                             ; preds = %1314, %1307
  %1318 = phi ptr [ %1315, %1314 ], [ %1311, %1307 ]
  br label %1319

1319:                                             ; preds = %1317, %1328
  %1320 = phi ptr [ %1329, %1328 ], [ %1318, %1317 ]
  %1321 = getelementptr inbounds %struct.bTheme, ptr %1320, i64 0, i32 11, i32 120, i64 3
  %1322 = load i8, ptr %1321, align 1, !tbaa !43
  %1323 = icmp eq i8 %1322, 0
  br i1 %1323, label %1324, label %1328

1324:                                             ; preds = %1319
  %1325 = getelementptr inbounds %struct.bTheme, ptr %1320, i64 0, i32 11, i32 120
  store i8 32, ptr %1325, align 1, !tbaa !43
  %1326 = getelementptr inbounds %struct.bTheme, ptr %1320, i64 0, i32 11, i32 120, i64 1
  store i8 32, ptr %1326, align 1, !tbaa !43
  %1327 = getelementptr inbounds %struct.bTheme, ptr %1320, i64 0, i32 11, i32 120, i64 2
  store i8 -113, ptr %1327, align 1, !tbaa !43
  store i8 -1, ptr %1321, align 1, !tbaa !43
  br label %1328

1328:                                             ; preds = %1319, %1324
  %1329 = load ptr, ptr %1320, align 8, !tbaa !46
  %1330 = icmp eq ptr %1329, null
  br i1 %1330, label %1331, label %1319, !llvm.loop !153

1331:                                             ; preds = %1328, %1314, %1307, %1305
  %1332 = load i16, ptr %48, align 8, !tbaa !102
  %1333 = icmp slt i16 %1332, 263
  br i1 %1333, label %1343, label %1334

1334:                                             ; preds = %1331
  %1335 = icmp eq i16 %1332, 263
  br i1 %1335, label %1336, label %1368

1336:                                             ; preds = %1334
  %1337 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 4
  %1338 = load i16, ptr %1337, align 2, !tbaa !119
  %1339 = icmp sgt i16 %1338, 1
  %1340 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %1341 = icmp eq ptr %1340, null
  %1342 = select i1 %1339, i1 true, i1 %1341
  br i1 %1342, label %1368, label %1346

1343:                                             ; preds = %1331
  %1344 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !46
  %1345 = icmp eq ptr %1344, null
  br i1 %1345, label %1368, label %1346

1346:                                             ; preds = %1343, %1336
  %1347 = phi ptr [ %1344, %1343 ], [ %1340, %1336 ]
  br label %1348

1348:                                             ; preds = %1346, %1365
  %1349 = phi ptr [ %1366, %1365 ], [ %1347, %1346 ]
  %1350 = getelementptr inbounds %struct.bTheme, ptr %1349, i64 0, i32 20, i32 60
  %1351 = load i8, ptr %1350, align 8, !tbaa !43
  %1352 = icmp eq i8 %1351, 0
  br i1 %1352, label %1353, label %1365

1353:                                             ; preds = %1348
  %1354 = getelementptr inbounds %struct.bTheme, ptr %1349, i64 0, i32 20, i32 16
  store i8 102, ptr %1354, align 1, !tbaa !43
  %1355 = getelementptr inbounds %struct.bTheme, ptr %1349, i64 0, i32 20, i32 16, i64 1
  store i8 102, ptr %1355, align 1, !tbaa !43
  %1356 = getelementptr inbounds %struct.bTheme, ptr %1349, i64 0, i32 20, i32 16, i64 2
  store i8 102, ptr %1356, align 1, !tbaa !43
  %1357 = getelementptr inbounds %struct.bTheme, ptr %1349, i64 0, i32 20, i32 16, i64 3
  store i8 -1, ptr %1357, align 1, !tbaa !43
  store i8 12, ptr %1350, align 1, !tbaa !43
  %1358 = getelementptr inbounds %struct.bTheme, ptr %1349, i64 0, i32 20, i32 60, i64 1
  store i8 10, ptr %1358, align 1, !tbaa !43
  %1359 = getelementptr inbounds %struct.bTheme, ptr %1349, i64 0, i32 20, i32 60, i64 2
  store i8 10, ptr %1359, align 1, !tbaa !43
  %1360 = getelementptr inbounds %struct.bTheme, ptr %1349, i64 0, i32 20, i32 60, i64 3
  store i8 -128, ptr %1360, align 1, !tbaa !43
  %1361 = getelementptr inbounds %struct.bTheme, ptr %1349, i64 0, i32 20, i32 61
  store i8 -1, ptr %1361, align 1, !tbaa !43
  %1362 = getelementptr inbounds %struct.bTheme, ptr %1349, i64 0, i32 20, i32 61, i64 1
  store i8 -116, ptr %1362, align 1, !tbaa !43
  %1363 = getelementptr inbounds %struct.bTheme, ptr %1349, i64 0, i32 20, i32 61, i64 2
  store i8 0, ptr %1363, align 1, !tbaa !43
  %1364 = getelementptr inbounds %struct.bTheme, ptr %1349, i64 0, i32 20, i32 61, i64 3
  store i8 -1, ptr %1364, align 1, !tbaa !43
  br label %1365

1365:                                             ; preds = %1348, %1353
  %1366 = load ptr, ptr %1349, align 8, !tbaa !46
  %1367 = icmp eq ptr %1366, null
  br i1 %1367, label %1368, label %1348, !llvm.loop !154

1368:                                             ; preds = %1365, %1343, %1336, %1334
  %1369 = load i16, ptr %48, align 8, !tbaa !102
  %1370 = icmp slt i16 %1369, 263
  br i1 %1370, label %1380, label %1371

1371:                                             ; preds = %1368
  %1372 = icmp eq i16 %1369, 263
  br i1 %1372, label %1373, label %1393

1373:                                             ; preds = %1371
  %1374 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 4
  %1375 = load i16, ptr %1374, align 2, !tbaa !119
  %1376 = icmp sgt i16 %1375, 5
  %1377 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %1378 = icmp eq ptr %1377, null
  %1379 = select i1 %1376, i1 true, i1 %1378
  br i1 %1379, label %1393, label %1383

1380:                                             ; preds = %1368
  %1381 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !46
  %1382 = icmp eq ptr %1381, null
  br i1 %1382, label %1393, label %1383

1383:                                             ; preds = %1380, %1373
  %1384 = phi ptr [ %1381, %1380 ], [ %1377, %1373 ]
  br label %1385

1385:                                             ; preds = %1383, %1385
  %1386 = phi ptr [ %1391, %1385 ], [ %1384, %1383 ]
  %1387 = getelementptr inbounds %struct.bTheme, ptr %1386, i64 0, i32 5, i32 155
  store i8 -76, ptr %1387, align 1, !tbaa !43
  %1388 = getelementptr inbounds %struct.bTheme, ptr %1386, i64 0, i32 5, i32 155, i64 1
  store i8 77, ptr %1388, align 1, !tbaa !43
  %1389 = getelementptr inbounds %struct.bTheme, ptr %1386, i64 0, i32 5, i32 155, i64 2
  store i8 77, ptr %1389, align 1, !tbaa !43
  %1390 = getelementptr inbounds %struct.bTheme, ptr %1386, i64 0, i32 5, i32 155, i64 3
  store i8 -1, ptr %1390, align 1, !tbaa !43
  %1391 = load ptr, ptr %1386, align 8, !tbaa !46
  %1392 = icmp eq ptr %1391, null
  br i1 %1392, label %1393, label %1385, !llvm.loop !155

1393:                                             ; preds = %1385, %1380, %1373, %1371
  %1394 = load i16, ptr %48, align 8, !tbaa !102
  %1395 = icmp slt i16 %1394, 263
  br i1 %1395, label %1405, label %1396

1396:                                             ; preds = %1393
  %1397 = icmp eq i16 %1394, 263
  br i1 %1397, label %1398, label %1458

1398:                                             ; preds = %1396
  %1399 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 4
  %1400 = load i16, ptr %1399, align 2, !tbaa !119
  %1401 = icmp sgt i16 %1400, 6
  %1402 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %1403 = icmp eq ptr %1402, null
  %1404 = select i1 %1401, i1 true, i1 %1403
  br i1 %1404, label %1458, label %1408

1405:                                             ; preds = %1393
  %1406 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !46
  %1407 = icmp eq ptr %1406, null
  br i1 %1407, label %1458, label %1408

1408:                                             ; preds = %1405, %1398
  %1409 = phi ptr [ %1406, %1405 ], [ %1402, %1398 ]
  br label %1410

1410:                                             ; preds = %1408, %1410
  %1411 = phi ptr [ %1456, %1410 ], [ %1409, %1408 ]
  %1412 = getelementptr inbounds %struct.bTheme, ptr %1411, i64 0, i32 9, i32 156
  store i8 -52, ptr %1412, align 1, !tbaa !43
  %1413 = getelementptr inbounds %struct.bTheme, ptr %1411, i64 0, i32 9, i32 156, i64 1
  store i8 112, ptr %1413, align 1, !tbaa !43
  %1414 = getelementptr inbounds %struct.bTheme, ptr %1411, i64 0, i32 9, i32 156, i64 2
  store i8 26, ptr %1414, align 1, !tbaa !43
  %1415 = getelementptr inbounds %struct.bTheme, ptr %1411, i64 0, i32 9, i32 156, i64 3
  store i8 102, ptr %1415, align 1, !tbaa !43
  %1416 = getelementptr inbounds %struct.bTheme, ptr %1411, i64 0, i32 10, i32 156
  store i8 -52, ptr %1416, align 1, !tbaa !43
  %1417 = getelementptr inbounds %struct.bTheme, ptr %1411, i64 0, i32 10, i32 156, i64 1
  store i8 112, ptr %1417, align 1, !tbaa !43
  %1418 = getelementptr inbounds %struct.bTheme, ptr %1411, i64 0, i32 10, i32 156, i64 2
  store i8 26, ptr %1418, align 1, !tbaa !43
  %1419 = getelementptr inbounds %struct.bTheme, ptr %1411, i64 0, i32 10, i32 156, i64 3
  store i8 102, ptr %1419, align 1, !tbaa !43
  %1420 = getelementptr inbounds %struct.bTheme, ptr %1411, i64 0, i32 10, i32 157
  store i8 -103, ptr %1420, align 1, !tbaa !43
  %1421 = getelementptr inbounds %struct.bTheme, ptr %1411, i64 0, i32 10, i32 157, i64 1
  store i8 -121, ptr %1421, align 1, !tbaa !43
  %1422 = getelementptr inbounds %struct.bTheme, ptr %1411, i64 0, i32 10, i32 157, i64 2
  store i8 97, ptr %1422, align 1, !tbaa !43
  %1423 = getelementptr inbounds %struct.bTheme, ptr %1411, i64 0, i32 10, i32 157, i64 3
  store i8 77, ptr %1423, align 1, !tbaa !43
  %1424 = getelementptr inbounds %struct.bTheme, ptr %1411, i64 0, i32 10, i32 158
  store i8 77, ptr %1424, align 1, !tbaa !43
  %1425 = getelementptr inbounds %struct.bTheme, ptr %1411, i64 0, i32 10, i32 158, i64 1
  store i8 -13, ptr %1425, align 1, !tbaa !43
  %1426 = getelementptr inbounds %struct.bTheme, ptr %1411, i64 0, i32 10, i32 158, i64 2
  store i8 26, ptr %1426, align 1, !tbaa !43
  %1427 = getelementptr inbounds %struct.bTheme, ptr %1411, i64 0, i32 10, i32 158, i64 3
  store i8 77, ptr %1427, align 1, !tbaa !43
  %1428 = getelementptr inbounds %struct.bTheme, ptr %1411, i64 0, i32 10, i32 159
  store i8 -39, ptr %1428, align 1, !tbaa !43
  %1429 = getelementptr inbounds %struct.bTheme, ptr %1411, i64 0, i32 10, i32 159, i64 1
  store i8 0, ptr %1429, align 1, !tbaa !43
  %1430 = getelementptr inbounds %struct.bTheme, ptr %1411, i64 0, i32 10, i32 159, i64 2
  store i8 0, ptr %1430, align 1, !tbaa !43
  %1431 = getelementptr inbounds %struct.bTheme, ptr %1411, i64 0, i32 10, i32 159, i64 3
  store i8 -1, ptr %1431, align 1, !tbaa !43
  %1432 = getelementptr inbounds %struct.bTheme, ptr %1411, i64 0, i32 10, i32 160
  store i8 28, ptr %1432, align 1, !tbaa !43
  %1433 = getelementptr inbounds %struct.bTheme, ptr %1411, i64 0, i32 10, i32 160, i64 1
  store i8 38, ptr %1433, align 1, !tbaa !43
  %1434 = getelementptr inbounds %struct.bTheme, ptr %1411, i64 0, i32 10, i32 160, i64 2
  store i8 48, ptr %1434, align 1, !tbaa !43
  %1435 = getelementptr inbounds %struct.bTheme, ptr %1411, i64 0, i32 10, i32 160, i64 3
  store i8 -1, ptr %1435, align 1, !tbaa !43
  %1436 = getelementptr inbounds %struct.bTheme, ptr %1411, i64 0, i32 10, i32 161
  store i8 46, ptr %1436, align 1, !tbaa !43
  %1437 = getelementptr inbounds %struct.bTheme, ptr %1411, i64 0, i32 10, i32 161, i64 1
  store i8 117, ptr %1437, align 1, !tbaa !43
  %1438 = getelementptr inbounds %struct.bTheme, ptr %1411, i64 0, i32 10, i32 161, i64 2
  store i8 -37, ptr %1438, align 1, !tbaa !43
  %1439 = getelementptr inbounds %struct.bTheme, ptr %1411, i64 0, i32 10, i32 161, i64 3
  store i8 -1, ptr %1439, align 1, !tbaa !43
  %1440 = getelementptr inbounds %struct.bTheme, ptr %1411, i64 0, i32 10, i32 162
  store i8 51, ptr %1440, align 1, !tbaa !43
  %1441 = getelementptr inbounds %struct.bTheme, ptr %1411, i64 0, i32 10, i32 162, i64 1
  store i8 38, ptr %1441, align 1, !tbaa !43
  %1442 = getelementptr inbounds %struct.bTheme, ptr %1411, i64 0, i32 10, i32 162, i64 2
  store i8 66, ptr %1442, align 1, !tbaa !43
  %1443 = getelementptr inbounds %struct.bTheme, ptr %1411, i64 0, i32 10, i32 162, i64 3
  store i8 -1, ptr %1443, align 1, !tbaa !43
  %1444 = getelementptr inbounds %struct.bTheme, ptr %1411, i64 0, i32 10, i32 163
  store i8 105, ptr %1444, align 1, !tbaa !43
  %1445 = getelementptr inbounds %struct.bTheme, ptr %1411, i64 0, i32 10, i32 163, i64 1
  store i8 33, ptr %1445, align 1, !tbaa !43
  %1446 = getelementptr inbounds %struct.bTheme, ptr %1411, i64 0, i32 10, i32 163, i64 2
  store i8 -106, ptr %1446, align 1, !tbaa !43
  %1447 = getelementptr inbounds %struct.bTheme, ptr %1411, i64 0, i32 10, i32 163, i64 3
  store i8 -1, ptr %1447, align 1, !tbaa !43
  %1448 = getelementptr inbounds %struct.bTheme, ptr %1411, i64 0, i32 10, i32 164
  store i8 43, ptr %1448, align 1, !tbaa !43
  %1449 = getelementptr inbounds %struct.bTheme, ptr %1411, i64 0, i32 10, i32 164, i64 1
  store i8 61, ptr %1449, align 1, !tbaa !43
  %1450 = getelementptr inbounds %struct.bTheme, ptr %1411, i64 0, i32 10, i32 164, i64 2
  store i8 61, ptr %1450, align 1, !tbaa !43
  %1451 = getelementptr inbounds %struct.bTheme, ptr %1411, i64 0, i32 10, i32 164, i64 3
  store i8 -1, ptr %1451, align 1, !tbaa !43
  %1452 = getelementptr inbounds %struct.bTheme, ptr %1411, i64 0, i32 10, i32 165
  store i8 31, ptr %1452, align 1, !tbaa !43
  %1453 = getelementptr inbounds %struct.bTheme, ptr %1411, i64 0, i32 10, i32 165, i64 1
  store i8 122, ptr %1453, align 1, !tbaa !43
  %1454 = getelementptr inbounds %struct.bTheme, ptr %1411, i64 0, i32 10, i32 165, i64 2
  store i8 122, ptr %1454, align 1, !tbaa !43
  %1455 = getelementptr inbounds %struct.bTheme, ptr %1411, i64 0, i32 10, i32 165, i64 3
  store i8 -1, ptr %1455, align 1, !tbaa !43
  %1456 = load ptr, ptr %1411, align 8, !tbaa !46
  %1457 = icmp eq ptr %1456, null
  br i1 %1457, label %1458, label %1410, !llvm.loop !156

1458:                                             ; preds = %1410, %1405, %1398, %1396
  %1459 = load i16, ptr %48, align 8, !tbaa !102
  %1460 = icmp slt i16 %1459, 263
  br i1 %1460, label %1470, label %1461

1461:                                             ; preds = %1458
  %1462 = icmp eq i16 %1459, 263
  br i1 %1462, label %1463, label %1487

1463:                                             ; preds = %1461
  %1464 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 4
  %1465 = load i16, ptr %1464, align 2, !tbaa !119
  %1466 = icmp sgt i16 %1465, 10
  %1467 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %1468 = icmp eq ptr %1467, null
  %1469 = select i1 %1466, i1 true, i1 %1468
  br i1 %1469, label %1487, label %1473

1470:                                             ; preds = %1458
  %1471 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !46
  %1472 = icmp eq ptr %1471, null
  br i1 %1472, label %1487, label %1473

1473:                                             ; preds = %1470, %1463
  %1474 = phi ptr [ %1471, %1470 ], [ %1467, %1463 ]
  br label %1475

1475:                                             ; preds = %1473, %1484
  %1476 = phi ptr [ %1485, %1484 ], [ %1474, %1473 ]
  %1477 = getelementptr inbounds %struct.bTheme, ptr %1476, i64 0, i32 11, i32 121, i64 3
  %1478 = load i8, ptr %1477, align 1, !tbaa !43
  %1479 = icmp eq i8 %1478, 0
  br i1 %1479, label %1480, label %1484

1480:                                             ; preds = %1475
  %1481 = getelementptr inbounds %struct.bTheme, ptr %1476, i64 0, i32 11, i32 121
  store i8 -104, ptr %1481, align 1, !tbaa !43
  %1482 = getelementptr inbounds %struct.bTheme, ptr %1476, i64 0, i32 11, i32 121, i64 1
  store i8 78, ptr %1482, align 1, !tbaa !43
  %1483 = getelementptr inbounds %struct.bTheme, ptr %1476, i64 0, i32 11, i32 121, i64 2
  store i8 62, ptr %1483, align 1, !tbaa !43
  store i8 -1, ptr %1477, align 1, !tbaa !43
  br label %1484

1484:                                             ; preds = %1475, %1480
  %1485 = load ptr, ptr %1476, align 8, !tbaa !46
  %1486 = icmp eq ptr %1485, null
  br i1 %1486, label %1487, label %1475, !llvm.loop !157

1487:                                             ; preds = %1484, %1470, %1463, %1461
  %1488 = load i16, ptr %48, align 8, !tbaa !102
  %1489 = icmp slt i16 %1488, 263
  br i1 %1489, label %1499, label %1490

1490:                                             ; preds = %1487
  %1491 = icmp eq i16 %1488, 263
  br i1 %1491, label %1492, label %1512

1492:                                             ; preds = %1490
  %1493 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 4
  %1494 = load i16, ptr %1493, align 2, !tbaa !119
  %1495 = icmp sgt i16 %1494, 14
  %1496 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %1497 = icmp eq ptr %1496, null
  %1498 = select i1 %1495, i1 true, i1 %1497
  br i1 %1498, label %1512, label %1502

1499:                                             ; preds = %1487
  %1500 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !46
  %1501 = icmp eq ptr %1500, null
  br i1 %1501, label %1512, label %1502

1502:                                             ; preds = %1499, %1492
  %1503 = phi ptr [ %1500, %1499 ], [ %1496, %1492 ]
  br label %1504

1504:                                             ; preds = %1502, %1504
  %1505 = phi ptr [ %1510, %1504 ], [ %1503, %1502 ]
  %1506 = getelementptr inbounds %struct.bTheme, ptr %1505, i64 0, i32 5, i32 59
  store i8 -116, ptr %1506, align 1, !tbaa !43
  %1507 = getelementptr inbounds %struct.bTheme, ptr %1505, i64 0, i32 5, i32 59, i64 1
  store i8 -1, ptr %1507, align 1, !tbaa !43
  %1508 = getelementptr inbounds %struct.bTheme, ptr %1505, i64 0, i32 5, i32 59, i64 2
  store i8 -1, ptr %1508, align 1, !tbaa !43
  %1509 = getelementptr inbounds %struct.bTheme, ptr %1505, i64 0, i32 5, i32 59, i64 3
  store i8 80, ptr %1509, align 1, !tbaa !43
  %1510 = load ptr, ptr %1505, align 8, !tbaa !46
  %1511 = icmp eq ptr %1510, null
  br i1 %1511, label %1512, label %1504, !llvm.loop !158

1512:                                             ; preds = %1504, %1499, %1492, %1490
  %1513 = load i16, ptr %48, align 8, !tbaa !102
  %1514 = icmp slt i16 %1513, 263
  br i1 %1514, label %1524, label %1515

1515:                                             ; preds = %1512
  %1516 = icmp eq i16 %1513, 263
  br i1 %1516, label %1517, label %1549

1517:                                             ; preds = %1515
  %1518 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 4
  %1519 = load i16, ptr %1518, align 2, !tbaa !119
  %1520 = icmp sgt i16 %1519, 15
  %1521 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %1522 = icmp eq ptr %1521, null
  %1523 = select i1 %1520, i1 true, i1 %1522
  br i1 %1523, label %1549, label %1527

1524:                                             ; preds = %1512
  %1525 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !46
  %1526 = icmp eq ptr %1525, null
  br i1 %1526, label %1549, label %1527

1527:                                             ; preds = %1524, %1517
  %1528 = phi ptr [ %1525, %1524 ], [ %1521, %1517 ]
  br label %1529

1529:                                             ; preds = %1527, %1546
  %1530 = phi ptr [ %1547, %1546 ], [ %1528, %1527 ]
  %1531 = getelementptr inbounds %struct.bTheme, ptr %1530, i64 0, i32 9, i32 156, i64 3
  %1532 = load i8, ptr %1531, align 1, !tbaa !43
  %1533 = icmp eq i8 %1532, 0
  br i1 %1533, label %1534, label %1538

1534:                                             ; preds = %1529
  %1535 = getelementptr inbounds %struct.bTheme, ptr %1530, i64 0, i32 9, i32 156
  store i8 -52, ptr %1535, align 1, !tbaa !43
  %1536 = getelementptr inbounds %struct.bTheme, ptr %1530, i64 0, i32 9, i32 156, i64 1
  store i8 112, ptr %1536, align 1, !tbaa !43
  %1537 = getelementptr inbounds %struct.bTheme, ptr %1530, i64 0, i32 9, i32 156, i64 2
  store i8 26, ptr %1537, align 1, !tbaa !43
  store i8 102, ptr %1531, align 1, !tbaa !43
  br label %1538

1538:                                             ; preds = %1534, %1529
  %1539 = getelementptr inbounds %struct.bTheme, ptr %1530, i64 0, i32 10, i32 156, i64 3
  %1540 = load i8, ptr %1539, align 1, !tbaa !43
  %1541 = icmp eq i8 %1540, 0
  br i1 %1541, label %1542, label %1546

1542:                                             ; preds = %1538
  %1543 = getelementptr inbounds %struct.bTheme, ptr %1530, i64 0, i32 10, i32 156
  store i8 -52, ptr %1543, align 1, !tbaa !43
  %1544 = getelementptr inbounds %struct.bTheme, ptr %1530, i64 0, i32 10, i32 156, i64 1
  store i8 112, ptr %1544, align 1, !tbaa !43
  %1545 = getelementptr inbounds %struct.bTheme, ptr %1530, i64 0, i32 10, i32 156, i64 2
  store i8 26, ptr %1545, align 1, !tbaa !43
  store i8 102, ptr %1539, align 1, !tbaa !43
  br label %1546

1546:                                             ; preds = %1538, %1542
  %1547 = load ptr, ptr %1530, align 8, !tbaa !46
  %1548 = icmp eq ptr %1547, null
  br i1 %1548, label %1549, label %1529, !llvm.loop !159

1549:                                             ; preds = %1546, %1524, %1517, %1515
  %1550 = load i16, ptr %48, align 8, !tbaa !102
  %1551 = icmp slt i16 %1550, 263
  br i1 %1551, label %1561, label %1552

1552:                                             ; preds = %1549
  %1553 = icmp eq i16 %1550, 263
  br i1 %1553, label %1554, label %1584

1554:                                             ; preds = %1552
  %1555 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 4
  %1556 = load i16, ptr %1555, align 2, !tbaa !119
  %1557 = icmp sgt i16 %1556, 21
  %1558 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %1559 = icmp eq ptr %1558, null
  %1560 = select i1 %1557, i1 true, i1 %1559
  br i1 %1560, label %1584, label %1564

1561:                                             ; preds = %1549
  %1562 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !46
  %1563 = icmp eq ptr %1562, null
  br i1 %1563, label %1584, label %1564

1564:                                             ; preds = %1561, %1554
  %1565 = phi ptr [ %1562, %1561 ], [ %1558, %1554 ]
  br label %1566

1566:                                             ; preds = %1564, %1581
  %1567 = phi ptr [ %1582, %1581 ], [ %1565, %1564 ]
  %1568 = getelementptr inbounds %struct.bTheme, ptr %1567, i64 0, i32 7, i32 70, i64 3
  %1569 = load i8, ptr %1568, align 1, !tbaa !43
  %1570 = icmp eq i8 %1569, 0
  br i1 %1570, label %1571, label %1573

1571:                                             ; preds = %1566
  %1572 = getelementptr inbounds %struct.bTheme, ptr %1567, i64 0, i32 7, i32 70
  store i32 -1, ptr %1572, align 1
  br label %1573

1573:                                             ; preds = %1571, %1566
  %1574 = getelementptr inbounds %struct.bTheme, ptr %1567, i64 0, i32 5, i32 155, i64 3
  %1575 = load i8, ptr %1574, align 1, !tbaa !43
  %1576 = icmp eq i8 %1575, 0
  br i1 %1576, label %1577, label %1581

1577:                                             ; preds = %1573
  %1578 = getelementptr inbounds %struct.bTheme, ptr %1567, i64 0, i32 5, i32 155
  store i8 -76, ptr %1578, align 1, !tbaa !43
  %1579 = getelementptr inbounds %struct.bTheme, ptr %1567, i64 0, i32 5, i32 155, i64 1
  store i8 77, ptr %1579, align 1, !tbaa !43
  %1580 = getelementptr inbounds %struct.bTheme, ptr %1567, i64 0, i32 5, i32 155, i64 2
  store i8 77, ptr %1580, align 1, !tbaa !43
  store i8 -1, ptr %1574, align 1, !tbaa !43
  br label %1581

1581:                                             ; preds = %1573, %1577
  %1582 = load ptr, ptr %1567, align 8, !tbaa !46
  %1583 = icmp eq ptr %1582, null
  br i1 %1583, label %1584, label %1566, !llvm.loop !160

1584:                                             ; preds = %1581, %1561, %1554, %1552
  %1585 = load i16, ptr %48, align 8, !tbaa !102
  %1586 = icmp slt i16 %1585, 264
  br i1 %1586, label %1596, label %1587

1587:                                             ; preds = %1584
  %1588 = icmp eq i16 %1585, 264
  br i1 %1588, label %1589, label %1617

1589:                                             ; preds = %1587
  %1590 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 4
  %1591 = load i16, ptr %1590, align 2, !tbaa !119
  %1592 = icmp sgt i16 %1591, 8
  %1593 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %1594 = icmp eq ptr %1593, null
  %1595 = select i1 %1592, i1 true, i1 %1594
  br i1 %1595, label %1617, label %1599

1596:                                             ; preds = %1584
  %1597 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !46
  %1598 = icmp eq ptr %1597, null
  br i1 %1598, label %1617, label %1599

1599:                                             ; preds = %1596, %1589
  %1600 = phi ptr [ %1597, %1596 ], [ %1593, %1589 ]
  br label %1601

1601:                                             ; preds = %1599, %1601
  %1602 = phi ptr [ %1615, %1601 ], [ %1600, %1599 ]
  %1603 = getelementptr inbounds %struct.bTheme, ptr %1602, i64 0, i32 3, i32 26
  store i8 -36, ptr %1603, align 1, !tbaa !43
  %1604 = getelementptr inbounds %struct.bTheme, ptr %1602, i64 0, i32 3, i32 26, i64 1
  store i8 0, ptr %1604, align 1, !tbaa !43
  %1605 = getelementptr inbounds %struct.bTheme, ptr %1602, i64 0, i32 3, i32 26, i64 2
  store i8 0, ptr %1605, align 1, !tbaa !43
  %1606 = getelementptr inbounds %struct.bTheme, ptr %1602, i64 0, i32 3, i32 26, i64 3
  store i8 -1, ptr %1606, align 1, !tbaa !43
  %1607 = getelementptr inbounds %struct.bTheme, ptr %1602, i64 0, i32 3, i32 27
  store i8 0, ptr %1607, align 1, !tbaa !43
  %1608 = getelementptr inbounds %struct.bTheme, ptr %1602, i64 0, i32 3, i32 27, i64 1
  store i8 -36, ptr %1608, align 1, !tbaa !43
  %1609 = getelementptr inbounds %struct.bTheme, ptr %1602, i64 0, i32 3, i32 27, i64 2
  store i8 0, ptr %1609, align 1, !tbaa !43
  %1610 = getelementptr inbounds %struct.bTheme, ptr %1602, i64 0, i32 3, i32 27, i64 3
  store i8 -1, ptr %1610, align 1, !tbaa !43
  %1611 = getelementptr inbounds %struct.bTheme, ptr %1602, i64 0, i32 3, i32 28
  store i8 0, ptr %1611, align 1, !tbaa !43
  %1612 = getelementptr inbounds %struct.bTheme, ptr %1602, i64 0, i32 3, i32 28, i64 1
  store i8 0, ptr %1612, align 1, !tbaa !43
  %1613 = getelementptr inbounds %struct.bTheme, ptr %1602, i64 0, i32 3, i32 28, i64 2
  store i8 -36, ptr %1613, align 1, !tbaa !43
  %1614 = getelementptr inbounds %struct.bTheme, ptr %1602, i64 0, i32 3, i32 28, i64 3
  store i8 -1, ptr %1614, align 1, !tbaa !43
  %1615 = load ptr, ptr %1602, align 8, !tbaa !46
  %1616 = icmp eq ptr %1615, null
  br i1 %1616, label %1617, label %1601, !llvm.loop !161

1617:                                             ; preds = %1601, %1596, %1589, %1587
  %1618 = load i32, ptr @U, align 8, !tbaa !162
  %1619 = icmp slt i32 %1618, 267
  br i1 %1619, label %1620, label %1702

1620:                                             ; preds = %1617
  %1621 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !46
  %1622 = icmp eq ptr %1621, null
  br i1 %1622, label %1647, label %1623

1623:                                             ; preds = %1620, %1644
  %1624 = phi ptr [ %1645, %1644 ], [ %1621, %1620 ]
  %1625 = getelementptr inbounds %struct.bTheme, ptr %1624, i64 0, i32 5, i32 63, i64 3
  %1626 = load i8, ptr %1625, align 1, !tbaa !43
  %1627 = icmp eq i8 %1626, 0
  br i1 %1627, label %1628, label %1636

1628:                                             ; preds = %1623
  %1629 = getelementptr inbounds %struct.bTheme, ptr %1624, i64 0, i32 5, i32 63
  store i8 127, ptr %1629, align 1, !tbaa !43
  %1630 = getelementptr inbounds %struct.bTheme, ptr %1624, i64 0, i32 5, i32 63, i64 1
  store i8 -1, ptr %1630, align 1, !tbaa !43
  %1631 = getelementptr inbounds %struct.bTheme, ptr %1624, i64 0, i32 5, i32 63, i64 2
  store i8 127, ptr %1631, align 1, !tbaa !43
  store i8 -1, ptr %1625, align 1, !tbaa !43
  %1632 = getelementptr inbounds %struct.bTheme, ptr %1624, i64 0, i32 5, i32 64
  store i8 127, ptr %1632, align 1, !tbaa !43
  %1633 = getelementptr inbounds %struct.bTheme, ptr %1624, i64 0, i32 5, i32 64, i64 1
  store i8 -1, ptr %1633, align 1, !tbaa !43
  %1634 = getelementptr inbounds %struct.bTheme, ptr %1624, i64 0, i32 5, i32 64, i64 2
  store i8 127, ptr %1634, align 1, !tbaa !43
  %1635 = getelementptr inbounds %struct.bTheme, ptr %1624, i64 0, i32 5, i32 64, i64 3
  store i8 51, ptr %1635, align 1, !tbaa !43
  br label %1636

1636:                                             ; preds = %1628, %1623
  %1637 = getelementptr inbounds %struct.bTheme, ptr %1624, i64 0, i32 5, i32 28, i64 3
  %1638 = load i8, ptr %1637, align 1, !tbaa !43
  %1639 = icmp eq i8 %1638, 0
  br i1 %1639, label %1640, label %1644

1640:                                             ; preds = %1636
  %1641 = getelementptr inbounds %struct.bTheme, ptr %1624, i64 0, i32 5, i32 28
  store i8 0, ptr %1641, align 1, !tbaa !43
  %1642 = getelementptr inbounds %struct.bTheme, ptr %1624, i64 0, i32 5, i32 28, i64 1
  store i8 0, ptr %1642, align 1, !tbaa !43
  %1643 = getelementptr inbounds %struct.bTheme, ptr %1624, i64 0, i32 5, i32 28, i64 2
  store i8 0, ptr %1643, align 1, !tbaa !43
  store i8 -1, ptr %1637, align 1, !tbaa !43
  br label %1644

1644:                                             ; preds = %1636, %1640
  %1645 = load ptr, ptr %1624, align 8, !tbaa !46
  %1646 = icmp eq ptr %1645, null
  br i1 %1646, label %1647, label %1623, !llvm.loop !163

1647:                                             ; preds = %1644, %1620
  %1648 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 59), align 8, !tbaa !164
  %1649 = icmp eq i16 %1648, 0
  br i1 %1649, label %1650, label %1651

1650:                                             ; preds = %1647
  store i16 60, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 60), align 2, !tbaa !165
  store i16 120, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 59), align 8, !tbaa !164
  br label %1651

1651:                                             ; preds = %1650, %1647
  %1652 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 63), align 8, !tbaa !166
  %1653 = icmp slt i32 %1652, 1
  br i1 %1653, label %1654, label %1655

1654:                                             ; preds = %1651
  store i32 32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 63), align 8, !tbaa !166
  br label %1655

1655:                                             ; preds = %1654, %1651
  %1656 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 65), align 8, !tbaa !167
  %1657 = icmp eq i16 %1656, 0
  br i1 %1657, label %1658, label %1659

1658:                                             ; preds = %1655
  store i16 8080, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 65), align 8, !tbaa !167
  br label %1659

1659:                                             ; preds = %1658, %1655
  %1660 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 19), align 2, !tbaa !168
  %1661 = icmp eq i16 %1660, 0
  br i1 %1661, label %1662, label %1663

1662:                                             ; preds = %1659
  store i16 350, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 19), align 2, !tbaa !168
  br label %1663

1663:                                             ; preds = %1662, %1659
  %1664 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 79), align 8, !tbaa !169
  %1665 = icmp eq i16 %1664, 0
  br i1 %1665, label %1666, label %1667

1666:                                             ; preds = %1663
  store i16 10, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 79), align 8, !tbaa !169
  store i16 50, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 80), align 2, !tbaa !170
  br label %1667

1667:                                             ; preds = %1666, %1663
  %1668 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 16), align 8, !tbaa !171
  %1669 = icmp eq i16 %1668, 0
  br i1 %1669, label %1670, label %1671

1670:                                             ; preds = %1667
  store i16 35, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 16), align 8, !tbaa !171
  br label %1671

1671:                                             ; preds = %1670, %1667
  %1672 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 62), align 2, !tbaa !172
  %1673 = icmp eq i16 %1672, 0
  br i1 %1673, label %1674, label %1675

1674:                                             ; preds = %1671
  store i16 5, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 62), align 2, !tbaa !172
  br label %1675

1675:                                             ; preds = %1674, %1671
  %1676 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !173
  %1677 = icmp eq i16 %1676, 0
  br i1 %1677, label %1678, label %1679

1678:                                             ; preds = %1675
  store i16 20, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !173
  br label %1679

1679:                                             ; preds = %1678, %1675
  %1680 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 82), align 2, !tbaa !174
  %1681 = icmp slt i16 %1680, 1
  br i1 %1681, label %1682, label %1683

1682:                                             ; preds = %1679
  store i16 1, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 82), align 2, !tbaa !174
  br label %1683

1683:                                             ; preds = %1682, %1679
  %1684 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 85), align 4, !tbaa !175
  %1685 = fcmp oeq float %1684, 0.000000e+00
  br i1 %1685, label %1686, label %1687

1686:                                             ; preds = %1683
  store float 1.000000e+00, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 85), align 4, !tbaa !175
  store i32 60, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 87), align 4, !tbaa !176
  br label %1687

1687:                                             ; preds = %1686, %1683
  %1688 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 86), align 8, !tbaa !177
  %1689 = fcmp oeq float %1688, 0.000000e+00
  br i1 %1689, label %1690, label %1698

1690:                                             ; preds = %1687
  %1691 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 85), align 4, !tbaa !175
  store float %1691, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 86), align 8, !tbaa !177
  %1692 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !101
  %1693 = and i32 %1692, 32
  %1694 = icmp eq i32 %1693, 0
  br i1 %1694, label %1695, label %1698

1695:                                             ; preds = %1690
  %1696 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 87), align 4, !tbaa !176
  %1697 = or i32 %1696, 32768
  store i32 %1697, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 87), align 4, !tbaa !176
  br label %1698

1698:                                             ; preds = %1690, %1695, %1687
  %1699 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 98), align 4, !tbaa !178
  %1700 = icmp eq i16 %1699, 0
  br i1 %1700, label %1701, label %1702

1701:                                             ; preds = %1698
  store i16 10, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 98), align 4, !tbaa !178
  br label %1702

1702:                                             ; preds = %1698, %1701, %1617
  %1703 = load i16, ptr %48, align 8, !tbaa !102
  %1704 = icmp slt i16 %1703, 265
  br i1 %1704, label %1714, label %1705

1705:                                             ; preds = %1702
  %1706 = icmp eq i16 %1703, 265
  br i1 %1706, label %1707, label %1732

1707:                                             ; preds = %1705
  %1708 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 4
  %1709 = load i16, ptr %1708, align 2, !tbaa !119
  %1710 = icmp sgt i16 %1709, 0
  %1711 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %1712 = icmp eq ptr %1711, null
  %1713 = select i1 %1710, i1 true, i1 %1712
  br i1 %1713, label %1732, label %1717

1714:                                             ; preds = %1702
  %1715 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !46
  %1716 = icmp eq ptr %1715, null
  br i1 %1716, label %1732, label %1717

1717:                                             ; preds = %1714, %1707
  %1718 = phi ptr [ %1715, %1714 ], [ %1711, %1707 ]
  br label %1719

1719:                                             ; preds = %1717, %1729
  %1720 = phi ptr [ %1730, %1729 ], [ %1718, %1717 ]
  %1721 = getelementptr inbounds %struct.bTheme, ptr %1720, i64 0, i32 16, i32 12, i64 3
  %1722 = load i8, ptr %1721, align 1, !tbaa !43
  %1723 = icmp eq i8 %1722, -1
  br i1 %1723, label %1724, label %1729

1724:                                             ; preds = %1719
  %1725 = getelementptr inbounds %struct.bTheme, ptr %1720, i64 0, i32 5, i32 12, i64 3
  store i8 -128, ptr %1725, align 1, !tbaa !43
  store i8 -128, ptr %1721, align 1, !tbaa !43
  %1726 = getelementptr inbounds %struct.bTheme, ptr %1720, i64 0, i32 12, i32 12, i64 3
  store i8 -128, ptr %1726, align 1, !tbaa !43
  %1727 = getelementptr inbounds %struct.bTheme, ptr %1720, i64 0, i32 11, i32 12, i64 3
  store i8 -128, ptr %1727, align 1, !tbaa !43
  %1728 = getelementptr inbounds %struct.bTheme, ptr %1720, i64 0, i32 20, i32 12, i64 3
  store i8 -128, ptr %1728, align 1, !tbaa !43
  br label %1729

1729:                                             ; preds = %1719, %1724
  %1730 = load ptr, ptr %1720, align 8, !tbaa !46
  %1731 = icmp eq ptr %1730, null
  br i1 %1731, label %1732, label %1719, !llvm.loop !179

1732:                                             ; preds = %1729, %1714, %1707, %1705
  %1733 = load i16, ptr %48, align 8, !tbaa !102
  %1734 = icmp slt i16 %1733, 265
  br i1 %1734, label %1744, label %1735

1735:                                             ; preds = %1732
  %1736 = icmp eq i16 %1733, 265
  br i1 %1736, label %1737, label %1771

1737:                                             ; preds = %1735
  %1738 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 4
  %1739 = load i16, ptr %1738, align 2, !tbaa !119
  %1740 = icmp sgt i16 %1739, 1
  %1741 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %1742 = icmp eq ptr %1741, null
  %1743 = select i1 %1740, i1 true, i1 %1742
  br i1 %1743, label %1771, label %1747

1744:                                             ; preds = %1732
  %1745 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !46
  %1746 = icmp eq ptr %1745, null
  br i1 %1746, label %1771, label %1747

1747:                                             ; preds = %1744, %1737
  %1748 = phi ptr [ %1745, %1744 ], [ %1741, %1737 ]
  br label %1752

1749:                                             ; preds = %1766
  %1750 = load ptr, ptr %1753, align 8, !tbaa !46
  %1751 = icmp eq ptr %1750, null
  br i1 %1751, label %1771, label %1752, !llvm.loop !180

1752:                                             ; preds = %1747, %1749
  %1753 = phi ptr [ %1750, %1749 ], [ %1748, %1747 ]
  %1754 = getelementptr inbounds %struct.bTheme, ptr %1753, i64 0, i32 3, i32 19
  %1755 = getelementptr inbounds %struct.bTheme, ptr %1753, i64 0, i32 3, i32 19, i32 1
  %1756 = getelementptr inbounds %struct.bTheme, ptr %1753, i64 0, i32 4, i32 12
  %1757 = load i8, ptr %1756, align 1, !tbaa !43
  store i8 %1757, ptr %1755, align 1, !tbaa !43
  %1758 = getelementptr inbounds %struct.bTheme, ptr %1753, i64 0, i32 4, i32 12, i64 1
  %1759 = load i8, ptr %1758, align 1, !tbaa !43
  %1760 = getelementptr inbounds %struct.bTheme, ptr %1753, i64 0, i32 3, i32 19, i32 1, i64 1
  store i8 %1759, ptr %1760, align 1, !tbaa !43
  %1761 = getelementptr inbounds %struct.bTheme, ptr %1753, i64 0, i32 4, i32 12, i64 2
  %1762 = load i8, ptr %1761, align 1, !tbaa !43
  %1763 = getelementptr inbounds %struct.bTheme, ptr %1753, i64 0, i32 3, i32 19, i32 1, i64 2
  store i8 %1762, ptr %1763, align 1, !tbaa !43
  %1764 = getelementptr inbounds %struct.bTheme, ptr %1753, i64 0, i32 3, i32 19, i32 1, i64 3
  store i8 -128, ptr %1764, align 1, !tbaa !43
  %1765 = getelementptr inbounds %struct.ThemeSpace, ptr %1753, i64 0, i32 20
  br label %1766

1766:                                             ; preds = %1752, %1766
  %1767 = phi i64 [ 960, %1752 ], [ %1769, %1766 ]
  %1768 = getelementptr inbounds i8, ptr %1765, i64 %1767
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1768, ptr noundef nonnull align 8 dereferenceable(16) %1754, i64 16, i1 false), !tbaa.struct !181
  %1769 = add nuw nsw i64 %1767, 720
  %1770 = icmp eq i64 %1769, 13200
  br i1 %1770, label %1749, label %1766, !llvm.loop !182

1771:                                             ; preds = %1749, %1744, %1737, %1735
  %1772 = load i32, ptr @U, align 8, !tbaa !162
  %1773 = icmp sgt i32 %1772, 265
  %1774 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %1775 = icmp eq ptr %1774, null
  %1776 = select i1 %1773, i1 true, i1 %1775
  br i1 %1776, label %1787, label %1777

1777:                                             ; preds = %1771, %1784
  %1778 = phi ptr [ %1785, %1784 ], [ %1774, %1771 ]
  %1779 = getelementptr inbounds %struct.bTheme, ptr %1778, i64 0, i32 3, i32 21
  %1780 = load float, ptr %1779, align 4, !tbaa !60
  %1781 = fcmp oeq float %1780, 0.000000e+00
  br i1 %1781, label %1782, label %1784

1782:                                             ; preds = %1777
  store float 5.000000e-01, ptr %1779, align 4, !tbaa !60
  %1783 = getelementptr inbounds %struct.bTheme, ptr %1778, i64 0, i32 3, i32 22
  store i16 12, ptr %1783, align 8, !tbaa !61
  br label %1784

1784:                                             ; preds = %1777, %1782
  %1785 = load ptr, ptr %1778, align 8, !tbaa !46
  %1786 = icmp eq ptr %1785, null
  br i1 %1786, label %1787, label %1777, !llvm.loop !183

1787:                                             ; preds = %1784, %1771
  %1788 = icmp slt i32 %1772, 265
  br i1 %1788, label %1797, label %1789

1789:                                             ; preds = %1787
  %1790 = icmp ne i32 %1772, 265
  %1791 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 1), align 4
  %1792 = icmp sgt i32 %1791, 3
  %1793 = select i1 %1790, i1 true, i1 %1792
  %1794 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %1795 = icmp eq ptr %1794, null
  %1796 = select i1 %1793, i1 true, i1 %1795
  br i1 %1796, label %1818, label %1800

1797:                                             ; preds = %1787
  %1798 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !46
  %1799 = icmp eq ptr %1798, null
  br i1 %1799, label %1818, label %1800

1800:                                             ; preds = %1797, %1789
  %1801 = phi ptr [ %1798, %1797 ], [ %1794, %1789 ]
  br label %1802

1802:                                             ; preds = %1800, %1802
  %1803 = phi ptr [ %1816, %1802 ], [ %1801, %1800 ]
  %1804 = getelementptr inbounds %struct.bTheme, ptr %1803, i64 0, i32 13, i32 109
  store i8 50, ptr %1804, align 1, !tbaa !43
  %1805 = getelementptr inbounds %struct.bTheme, ptr %1803, i64 0, i32 13, i32 109, i64 1
  store i8 0, ptr %1805, align 1, !tbaa !43
  %1806 = getelementptr inbounds %struct.bTheme, ptr %1803, i64 0, i32 13, i32 109, i64 2
  store i8 -116, ptr %1806, align 1, !tbaa !43
  %1807 = getelementptr inbounds %struct.bTheme, ptr %1803, i64 0, i32 13, i32 109, i64 3
  store i8 -1, ptr %1807, align 1, !tbaa !43
  %1808 = getelementptr inbounds %struct.bTheme, ptr %1803, i64 0, i32 13, i32 110
  store i8 -116, ptr %1808, align 1, !tbaa !43
  %1809 = getelementptr inbounds %struct.bTheme, ptr %1803, i64 0, i32 13, i32 110, i64 1
  store i8 60, ptr %1809, align 1, !tbaa !43
  %1810 = getelementptr inbounds %struct.bTheme, ptr %1803, i64 0, i32 13, i32 110, i64 2
  store i8 0, ptr %1810, align 1, !tbaa !43
  %1811 = getelementptr inbounds %struct.bTheme, ptr %1803, i64 0, i32 13, i32 110, i64 3
  store i8 -1, ptr %1811, align 1, !tbaa !43
  %1812 = getelementptr inbounds %struct.bTheme, ptr %1803, i64 0, i32 13, i32 104
  store i8 76, ptr %1812, align 1, !tbaa !43
  %1813 = getelementptr inbounds %struct.bTheme, ptr %1803, i64 0, i32 13, i32 104, i64 1
  store i8 76, ptr %1813, align 1, !tbaa !43
  %1814 = getelementptr inbounds %struct.bTheme, ptr %1803, i64 0, i32 13, i32 104, i64 2
  store i8 76, ptr %1814, align 1, !tbaa !43
  %1815 = getelementptr inbounds %struct.bTheme, ptr %1803, i64 0, i32 13, i32 104, i64 3
  store i8 -1, ptr %1815, align 1, !tbaa !43
  %1816 = load ptr, ptr %1803, align 8, !tbaa !46
  %1817 = icmp eq ptr %1816, null
  br i1 %1817, label %1818, label %1802, !llvm.loop !184

1818:                                             ; preds = %1802, %1797, %1789
  br i1 %1788, label %1827, label %1819

1819:                                             ; preds = %1818
  %1820 = icmp ne i32 %1772, 265
  %1821 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 1), align 4
  %1822 = icmp sgt i32 %1821, 5
  %1823 = select i1 %1820, i1 true, i1 %1822
  %1824 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %1825 = icmp eq ptr %1824, null
  %1826 = select i1 %1823, i1 true, i1 %1825
  br i1 %1826, label %1848, label %1830

1827:                                             ; preds = %1818
  %1828 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !46
  %1829 = icmp eq ptr %1828, null
  br i1 %1829, label %1848, label %1830

1830:                                             ; preds = %1827, %1819
  %1831 = phi ptr [ %1828, %1827 ], [ %1824, %1819 ]
  br label %1832

1832:                                             ; preds = %1830, %1832
  %1833 = phi ptr [ %1846, %1832 ], [ %1831, %1830 ]
  %1834 = getelementptr inbounds %struct.bTheme, ptr %1833, i64 0, i32 5
  %1835 = getelementptr inbounds %struct.bTheme, ptr %1833, i64 0, i32 5, i32 21, i32 1
  %1836 = load i8, ptr %1834, align 1, !tbaa !43
  store i8 %1836, ptr %1835, align 1, !tbaa !43
  %1837 = getelementptr inbounds %struct.bTheme, ptr %1833, i64 0, i32 5, i32 0, i64 1
  %1838 = load i8, ptr %1837, align 1, !tbaa !43
  %1839 = getelementptr inbounds %struct.bTheme, ptr %1833, i64 0, i32 5, i32 21, i32 1, i64 1
  store i8 %1838, ptr %1839, align 1, !tbaa !43
  %1840 = getelementptr inbounds %struct.bTheme, ptr %1833, i64 0, i32 5, i32 0, i64 2
  %1841 = load i8, ptr %1840, align 1, !tbaa !43
  %1842 = getelementptr inbounds %struct.bTheme, ptr %1833, i64 0, i32 5, i32 21, i32 1, i64 2
  store i8 %1841, ptr %1842, align 1, !tbaa !43
  %1843 = getelementptr inbounds %struct.bTheme, ptr %1833, i64 0, i32 5, i32 0, i64 3
  %1844 = load i8, ptr %1843, align 1, !tbaa !43
  %1845 = getelementptr inbounds %struct.bTheme, ptr %1833, i64 0, i32 5, i32 21, i32 1, i64 3
  store i8 %1844, ptr %1845, align 1, !tbaa !43
  %1846 = load ptr, ptr %1833, align 8, !tbaa !46
  %1847 = icmp eq ptr %1846, null
  br i1 %1847, label %1848, label %1832, !llvm.loop !185

1848:                                             ; preds = %1832, %1827, %1819
  br i1 %1788, label %1857, label %1849

1849:                                             ; preds = %1848
  %1850 = icmp ne i32 %1772, 265
  %1851 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 1), align 4
  %1852 = icmp sgt i32 %1851, 8
  %1853 = select i1 %1850, i1 true, i1 %1852
  %1854 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %1855 = icmp eq ptr %1854, null
  %1856 = select i1 %1853, i1 true, i1 %1855
  br i1 %1856, label %1882, label %1860

1857:                                             ; preds = %1848
  %1858 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !46
  %1859 = icmp eq ptr %1858, null
  br i1 %1859, label %1882, label %1860

1860:                                             ; preds = %1857, %1849
  %1861 = phi ptr [ %1858, %1857 ], [ %1854, %1849 ]
  br label %1862

1862:                                             ; preds = %1860, %1879
  %1863 = phi ptr [ %1880, %1879 ], [ %1861, %1860 ]
  %1864 = getelementptr inbounds %struct.bTheme, ptr %1863, i64 0, i32 16, i32 104, i64 3
  %1865 = load i8, ptr %1864, align 1, !tbaa !43
  %1866 = icmp eq i8 %1865, 0
  br i1 %1866, label %1867, label %1871

1867:                                             ; preds = %1862
  %1868 = getelementptr inbounds %struct.bTheme, ptr %1863, i64 0, i32 16, i32 104
  store i8 -105, ptr %1868, align 1, !tbaa !43
  %1869 = getelementptr inbounds %struct.bTheme, ptr %1863, i64 0, i32 16, i32 104, i64 1
  store i8 116, ptr %1869, align 1, !tbaa !43
  %1870 = getelementptr inbounds %struct.bTheme, ptr %1863, i64 0, i32 16, i32 104, i64 2
  store i8 116, ptr %1870, align 1, !tbaa !43
  store i8 -1, ptr %1864, align 1, !tbaa !43
  br label %1871

1871:                                             ; preds = %1862, %1867
  %1872 = getelementptr inbounds %struct.bTheme, ptr %1863, i64 0, i32 16, i32 109, i64 3
  %1873 = load i8, ptr %1872, align 1, !tbaa !43
  %1874 = icmp eq i8 %1873, 0
  br i1 %1874, label %1875, label %1879

1875:                                             ; preds = %1871
  %1876 = getelementptr inbounds %struct.bTheme, ptr %1863, i64 0, i32 16, i32 109
  store i8 116, ptr %1876, align 1, !tbaa !43
  %1877 = getelementptr inbounds %struct.bTheme, ptr %1863, i64 0, i32 16, i32 109, i64 1
  store i8 -105, ptr %1877, align 1, !tbaa !43
  %1878 = getelementptr inbounds %struct.bTheme, ptr %1863, i64 0, i32 16, i32 109, i64 2
  store i8 -105, ptr %1878, align 1, !tbaa !43
  store i8 -1, ptr %1872, align 1, !tbaa !43
  br label %1879

1879:                                             ; preds = %1871, %1875
  %1880 = load ptr, ptr %1863, align 8, !tbaa !46
  %1881 = icmp eq ptr %1880, null
  br i1 %1881, label %1882, label %1862, !llvm.loop !186

1882:                                             ; preds = %1879, %1857, %1849
  br i1 %1788, label %1891, label %1883

1883:                                             ; preds = %1882
  %1884 = icmp ne i32 %1772, 265
  %1885 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 1), align 4
  %1886 = icmp sgt i32 %1885, 10
  %1887 = select i1 %1884, i1 true, i1 %1886
  %1888 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %1889 = icmp eq ptr %1888, null
  %1890 = select i1 %1887, i1 true, i1 %1889
  br i1 %1890, label %1908, label %1894

1891:                                             ; preds = %1882
  %1892 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !46
  %1893 = icmp eq ptr %1892, null
  br i1 %1893, label %1908, label %1894

1894:                                             ; preds = %1891, %1883
  %1895 = phi ptr [ %1892, %1891 ], [ %1888, %1883 ]
  br label %1896

1896:                                             ; preds = %1894, %1905
  %1897 = phi ptr [ %1906, %1905 ], [ %1895, %1894 ]
  %1898 = getelementptr inbounds %struct.bTheme, ptr %1897, i64 0, i32 19, i32 98, i64 3
  %1899 = load i8, ptr %1898, align 1, !tbaa !43
  %1900 = icmp eq i8 %1899, 0
  br i1 %1900, label %1901, label %1905

1901:                                             ; preds = %1896
  %1902 = getelementptr inbounds %struct.bTheme, ptr %1897, i64 0, i32 19, i32 98
  store i8 -1, ptr %1902, align 1, !tbaa !43
  %1903 = getelementptr inbounds %struct.bTheme, ptr %1897, i64 0, i32 19, i32 98, i64 1
  store i8 -1, ptr %1903, align 1, !tbaa !43
  %1904 = getelementptr inbounds %struct.bTheme, ptr %1897, i64 0, i32 19, i32 98, i64 2
  store i8 -1, ptr %1904, align 1, !tbaa !43
  store i8 48, ptr %1898, align 1, !tbaa !43
  br label %1905

1905:                                             ; preds = %1896, %1901
  %1906 = load ptr, ptr %1897, align 8, !tbaa !46
  %1907 = icmp eq ptr %1906, null
  br i1 %1907, label %1908, label %1896, !llvm.loop !187

1908:                                             ; preds = %1905, %1891, %1883
  br i1 %1773, label %1909, label %1917

1909:                                             ; preds = %1908
  %1910 = icmp ne i32 %1772, 266
  %1911 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 1), align 4
  %1912 = icmp sgt i32 %1911, 1
  %1913 = select i1 %1910, i1 true, i1 %1912
  %1914 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %1915 = icmp eq ptr %1914, null
  %1916 = select i1 %1913, i1 true, i1 %1915
  br i1 %1916, label %1934, label %1920

1917:                                             ; preds = %1908
  %1918 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !46
  %1919 = icmp eq ptr %1918, null
  br i1 %1919, label %1934, label %1920

1920:                                             ; preds = %1917, %1909
  %1921 = phi ptr [ %1918, %1917 ], [ %1914, %1909 ]
  br label %1922

1922:                                             ; preds = %1920, %1931
  %1923 = phi ptr [ %1932, %1931 ], [ %1921, %1920 ]
  %1924 = getelementptr inbounds %struct.bTheme, ptr %1923, i64 0, i32 16, i32 93, i64 3
  %1925 = load i8, ptr %1924, align 1, !tbaa !43
  %1926 = icmp eq i8 %1925, 0
  br i1 %1926, label %1927, label %1931

1927:                                             ; preds = %1922
  %1928 = getelementptr inbounds %struct.bTheme, ptr %1923, i64 0, i32 16, i32 93
  store i8 -33, ptr %1928, align 1, !tbaa !43
  %1929 = getelementptr inbounds %struct.bTheme, ptr %1923, i64 0, i32 16, i32 93, i64 1
  store i8 -54, ptr %1929, align 1, !tbaa !43
  %1930 = getelementptr inbounds %struct.bTheme, ptr %1923, i64 0, i32 16, i32 93, i64 2
  store i8 53, ptr %1930, align 1, !tbaa !43
  store i8 -1, ptr %1924, align 1, !tbaa !43
  br label %1931

1931:                                             ; preds = %1922, %1927
  %1932 = load ptr, ptr %1923, align 8, !tbaa !46
  %1933 = icmp eq ptr %1932, null
  br i1 %1933, label %1934, label %1922, !llvm.loop !188

1934:                                             ; preds = %1931, %1917, %1909
  %1935 = icmp slt i32 %1772, 268
  br i1 %1935, label %1944, label %1936

1936:                                             ; preds = %1934
  %1937 = icmp ne i32 %1772, 268
  %1938 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 1), align 4
  %1939 = icmp sgt i32 %1938, 2
  %1940 = select i1 %1937, i1 true, i1 %1939
  %1941 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %1942 = icmp eq ptr %1941, null
  %1943 = select i1 %1940, i1 true, i1 %1942
  br i1 %1943, label %1969, label %1947

1944:                                             ; preds = %1934
  %1945 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !46
  %1946 = icmp eq ptr %1945, null
  br i1 %1946, label %1969, label %1947

1947:                                             ; preds = %1944, %1936
  %1948 = phi ptr [ %1945, %1944 ], [ %1941, %1936 ]
  br label %1949

1949:                                             ; preds = %1947, %1966
  %1950 = phi ptr [ %1967, %1966 ], [ %1948, %1947 ]
  %1951 = getelementptr inbounds %struct.bTheme, ptr %1950, i64 0, i32 12, i32 152, i64 3
  %1952 = load i8, ptr %1951, align 1, !tbaa !43
  %1953 = icmp eq i8 %1952, 0
  br i1 %1953, label %1954, label %1958

1954:                                             ; preds = %1949
  %1955 = getelementptr inbounds %struct.bTheme, ptr %1950, i64 0, i32 12, i32 152
  store i8 96, ptr %1955, align 1, !tbaa !43
  %1956 = getelementptr inbounds %struct.bTheme, ptr %1950, i64 0, i32 12, i32 152, i64 1
  store i8 96, ptr %1956, align 1, !tbaa !43
  %1957 = getelementptr inbounds %struct.bTheme, ptr %1950, i64 0, i32 12, i32 152, i64 2
  store i8 96, ptr %1957, align 1, !tbaa !43
  store i8 -1, ptr %1951, align 1, !tbaa !43
  br label %1958

1958:                                             ; preds = %1949, %1954
  %1959 = getelementptr inbounds %struct.bTheme, ptr %1950, i64 0, i32 12, i32 151, i64 3
  %1960 = load i8, ptr %1959, align 1, !tbaa !43
  %1961 = icmp eq i8 %1960, 0
  br i1 %1961, label %1962, label %1966

1962:                                             ; preds = %1958
  %1963 = getelementptr inbounds %struct.bTheme, ptr %1950, i64 0, i32 12, i32 151
  store i8 112, ptr %1963, align 1, !tbaa !43
  %1964 = getelementptr inbounds %struct.bTheme, ptr %1950, i64 0, i32 12, i32 151, i64 1
  store i8 112, ptr %1964, align 1, !tbaa !43
  %1965 = getelementptr inbounds %struct.bTheme, ptr %1950, i64 0, i32 12, i32 151, i64 2
  store i8 112, ptr %1965, align 1, !tbaa !43
  store i8 -1, ptr %1959, align 1, !tbaa !43
  br label %1966

1966:                                             ; preds = %1958, %1962
  %1967 = load ptr, ptr %1950, align 8, !tbaa !46
  %1968 = icmp eq ptr %1967, null
  br i1 %1968, label %1969, label %1949, !llvm.loop !189

1969:                                             ; preds = %1966, %1944, %1936
  %1970 = icmp slt i32 %1772, 269
  br i1 %1970, label %1979, label %1971

1971:                                             ; preds = %1969
  %1972 = icmp ne i32 %1772, 269
  %1973 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 1), align 4
  %1974 = icmp sgt i32 %1973, 4
  %1975 = select i1 %1972, i1 true, i1 %1974
  %1976 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %1977 = icmp eq ptr %1976, null
  %1978 = select i1 %1975, i1 true, i1 %1977
  br i1 %1978, label %1996, label %1982

1979:                                             ; preds = %1969
  %1980 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !46
  %1981 = icmp eq ptr %1980, null
  br i1 %1981, label %1996, label %1982

1982:                                             ; preds = %1979, %1971
  %1983 = phi ptr [ %1980, %1979 ], [ %1976, %1971 ]
  br label %1984

1984:                                             ; preds = %1982, %1984
  %1985 = phi ptr [ %1994, %1984 ], [ %1983, %1982 ]
  %1986 = getelementptr inbounds %struct.bTheme, ptr %1985, i64 0, i32 12, i32 28
  store i8 -64, ptr %1986, align 1, !tbaa !43
  %1987 = getelementptr inbounds %struct.bTheme, ptr %1985, i64 0, i32 12, i32 28, i64 1
  store i8 -64, ptr %1987, align 1, !tbaa !43
  %1988 = getelementptr inbounds %struct.bTheme, ptr %1985, i64 0, i32 12, i32 28, i64 2
  store i8 -64, ptr %1988, align 1, !tbaa !43
  %1989 = getelementptr inbounds %struct.bTheme, ptr %1985, i64 0, i32 12, i32 28, i64 3
  store i8 -1, ptr %1989, align 1, !tbaa !43
  %1990 = getelementptr inbounds %struct.bTheme, ptr %1985, i64 0, i32 12, i32 42
  store i8 -1, ptr %1990, align 1, !tbaa !43
  %1991 = getelementptr inbounds %struct.bTheme, ptr %1985, i64 0, i32 12, i32 42, i64 1
  store i8 -123, ptr %1991, align 1, !tbaa !43
  %1992 = getelementptr inbounds %struct.bTheme, ptr %1985, i64 0, i32 12, i32 42, i64 2
  store i8 0, ptr %1992, align 1, !tbaa !43
  %1993 = getelementptr inbounds %struct.bTheme, ptr %1985, i64 0, i32 12, i32 42, i64 3
  store i8 -1, ptr %1993, align 1, !tbaa !43
  %1994 = load ptr, ptr %1985, align 8, !tbaa !46
  %1995 = icmp eq ptr %1994, null
  br i1 %1995, label %1996, label %1984, !llvm.loop !190

1996:                                             ; preds = %1984, %1979, %1971
  br i1 %1970, label %2005, label %1997

1997:                                             ; preds = %1996
  %1998 = icmp ne i32 %1772, 269
  %1999 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 1), align 4
  %2000 = icmp sgt i32 %1999, 5
  %2001 = select i1 %1998, i1 true, i1 %2000
  %2002 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %2003 = icmp eq ptr %2002, null
  %2004 = select i1 %2001, i1 true, i1 %2003
  br i1 %2004, label %2090, label %2008

2005:                                             ; preds = %1996
  %2006 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !46
  %2007 = icmp eq ptr %2006, null
  br i1 %2007, label %2090, label %2008

2008:                                             ; preds = %2005, %1997
  %2009 = phi ptr [ %2006, %2005 ], [ %2002, %1997 ]
  br label %2010

2010:                                             ; preds = %2008, %2087
  %2011 = phi ptr [ %2088, %2087 ], [ %2009, %2008 ]
  %2012 = getelementptr inbounds %struct.bTheme, ptr %2011, i64 0, i32 16, i32 111, i64 3
  %2013 = load i8, ptr %2012, align 1, !tbaa !43
  %2014 = icmp eq i8 %2013, 0
  br i1 %2014, label %2015, label %2025

2015:                                             ; preds = %2010
  %2016 = getelementptr inbounds %struct.bTheme, ptr %2011, i64 0, i32 16, i32 111
  %2017 = getelementptr inbounds %struct.bTheme, ptr %2011, i64 0, i32 16, i32 106, i64 2
  %2018 = load i8, ptr %2017, align 2, !tbaa !43
  %2019 = getelementptr inbounds %struct.bTheme, ptr %2011, i64 0, i32 16, i32 106, i64 1
  %2020 = load i8, ptr %2019, align 1, !tbaa !43
  %2021 = getelementptr inbounds %struct.bTheme, ptr %2011, i64 0, i32 16, i32 106
  %2022 = load i8, ptr %2021, align 4, !tbaa !43
  store i8 %2022, ptr %2016, align 1, !tbaa !43
  %2023 = getelementptr inbounds %struct.bTheme, ptr %2011, i64 0, i32 16, i32 111, i64 1
  store i8 %2020, ptr %2023, align 1, !tbaa !43
  %2024 = getelementptr inbounds %struct.bTheme, ptr %2011, i64 0, i32 16, i32 111, i64 2
  store i8 %2018, ptr %2024, align 1, !tbaa !43
  store i8 -1, ptr %2012, align 1, !tbaa !43
  br label %2025

2025:                                             ; preds = %2010, %2015
  %2026 = getelementptr inbounds %struct.bTheme, ptr %2011, i64 0, i32 16, i32 105
  %2027 = load i8, ptr %2026, align 8, !tbaa !43
  %2028 = getelementptr inbounds %struct.bTheme, ptr %2011, i64 0, i32 16, i32 105, i64 1
  %2029 = load i8, ptr %2028, align 1, !tbaa !43
  %2030 = getelementptr inbounds %struct.bTheme, ptr %2011, i64 0, i32 16, i32 105, i64 2
  %2031 = load i8, ptr %2030, align 2, !tbaa !43
  %2032 = getelementptr inbounds %struct.bTheme, ptr %2011, i64 0, i32 16, i32 112, i64 3
  %2033 = load i8, ptr %2032, align 1, !tbaa !43
  %2034 = icmp eq i8 %2033, 0
  br i1 %2034, label %2035, label %2039

2035:                                             ; preds = %2025
  %2036 = getelementptr inbounds %struct.bTheme, ptr %2011, i64 0, i32 16, i32 112
  store i8 %2027, ptr %2036, align 1, !tbaa !43
  %2037 = getelementptr inbounds %struct.bTheme, ptr %2011, i64 0, i32 16, i32 112, i64 1
  store i8 %2029, ptr %2037, align 1, !tbaa !43
  %2038 = getelementptr inbounds %struct.bTheme, ptr %2011, i64 0, i32 16, i32 112, i64 2
  store i8 %2031, ptr %2038, align 1, !tbaa !43
  store i8 -1, ptr %2032, align 1, !tbaa !43
  br label %2039

2039:                                             ; preds = %2025, %2035
  %2040 = getelementptr inbounds %struct.bTheme, ptr %2011, i64 0, i32 16, i32 113, i64 3
  %2041 = load i8, ptr %2040, align 1, !tbaa !43
  %2042 = icmp eq i8 %2041, 0
  br i1 %2042, label %2043, label %2047

2043:                                             ; preds = %2039
  %2044 = getelementptr inbounds %struct.bTheme, ptr %2011, i64 0, i32 16, i32 113
  store i8 %2027, ptr %2044, align 1, !tbaa !43
  %2045 = getelementptr inbounds %struct.bTheme, ptr %2011, i64 0, i32 16, i32 113, i64 1
  store i8 %2029, ptr %2045, align 1, !tbaa !43
  %2046 = getelementptr inbounds %struct.bTheme, ptr %2011, i64 0, i32 16, i32 113, i64 2
  store i8 %2031, ptr %2046, align 1, !tbaa !43
  store i8 -1, ptr %2040, align 1, !tbaa !43
  br label %2047

2047:                                             ; preds = %2039, %2043
  %2048 = getelementptr inbounds %struct.bTheme, ptr %2011, i64 0, i32 16, i32 114, i64 3
  %2049 = load i8, ptr %2048, align 1, !tbaa !43
  %2050 = icmp eq i8 %2049, 0
  br i1 %2050, label %2051, label %2055

2051:                                             ; preds = %2047
  %2052 = getelementptr inbounds %struct.bTheme, ptr %2011, i64 0, i32 16, i32 114
  store i8 %2027, ptr %2052, align 1, !tbaa !43
  %2053 = getelementptr inbounds %struct.bTheme, ptr %2011, i64 0, i32 16, i32 114, i64 1
  store i8 %2029, ptr %2053, align 1, !tbaa !43
  %2054 = getelementptr inbounds %struct.bTheme, ptr %2011, i64 0, i32 16, i32 114, i64 2
  store i8 %2031, ptr %2054, align 1, !tbaa !43
  store i8 -1, ptr %2048, align 1, !tbaa !43
  br label %2055

2055:                                             ; preds = %2047, %2051
  %2056 = getelementptr inbounds %struct.bTheme, ptr %2011, i64 0, i32 16, i32 115, i64 3
  %2057 = load i8, ptr %2056, align 1, !tbaa !43
  %2058 = icmp eq i8 %2057, 0
  br i1 %2058, label %2059, label %2063

2059:                                             ; preds = %2055
  %2060 = getelementptr inbounds %struct.bTheme, ptr %2011, i64 0, i32 16, i32 115
  store i8 %2027, ptr %2060, align 1, !tbaa !43
  %2061 = getelementptr inbounds %struct.bTheme, ptr %2011, i64 0, i32 16, i32 115, i64 1
  store i8 %2029, ptr %2061, align 1, !tbaa !43
  %2062 = getelementptr inbounds %struct.bTheme, ptr %2011, i64 0, i32 16, i32 115, i64 2
  store i8 %2031, ptr %2062, align 1, !tbaa !43
  store i8 -1, ptr %2056, align 1, !tbaa !43
  br label %2063

2063:                                             ; preds = %2055, %2059
  %2064 = getelementptr inbounds %struct.bTheme, ptr %2011, i64 0, i32 16, i32 116, i64 3
  %2065 = load i8, ptr %2064, align 1, !tbaa !43
  %2066 = icmp eq i8 %2065, 0
  br i1 %2066, label %2067, label %2071

2067:                                             ; preds = %2063
  %2068 = getelementptr inbounds %struct.bTheme, ptr %2011, i64 0, i32 16, i32 116
  store i8 %2027, ptr %2068, align 1, !tbaa !43
  %2069 = getelementptr inbounds %struct.bTheme, ptr %2011, i64 0, i32 16, i32 116, i64 1
  store i8 %2029, ptr %2069, align 1, !tbaa !43
  %2070 = getelementptr inbounds %struct.bTheme, ptr %2011, i64 0, i32 16, i32 116, i64 2
  store i8 %2031, ptr %2070, align 1, !tbaa !43
  store i8 -1, ptr %2064, align 1, !tbaa !43
  br label %2071

2071:                                             ; preds = %2063, %2067
  %2072 = getelementptr inbounds %struct.bTheme, ptr %2011, i64 0, i32 16, i32 117, i64 3
  %2073 = load i8, ptr %2072, align 1, !tbaa !43
  %2074 = icmp eq i8 %2073, 0
  br i1 %2074, label %2075, label %2079

2075:                                             ; preds = %2071
  %2076 = getelementptr inbounds %struct.bTheme, ptr %2011, i64 0, i32 16, i32 117
  store i8 %2027, ptr %2076, align 1, !tbaa !43
  %2077 = getelementptr inbounds %struct.bTheme, ptr %2011, i64 0, i32 16, i32 117, i64 1
  store i8 %2029, ptr %2077, align 1, !tbaa !43
  %2078 = getelementptr inbounds %struct.bTheme, ptr %2011, i64 0, i32 16, i32 117, i64 2
  store i8 %2031, ptr %2078, align 1, !tbaa !43
  store i8 -1, ptr %2072, align 1, !tbaa !43
  br label %2079

2079:                                             ; preds = %2071, %2075
  %2080 = getelementptr inbounds %struct.bTheme, ptr %2011, i64 0, i32 16, i32 118, i64 3
  %2081 = load i8, ptr %2080, align 1, !tbaa !43
  %2082 = icmp eq i8 %2081, 0
  br i1 %2082, label %2083, label %2087

2083:                                             ; preds = %2079
  %2084 = getelementptr inbounds %struct.bTheme, ptr %2011, i64 0, i32 16, i32 118
  store i8 %2027, ptr %2084, align 1, !tbaa !43
  %2085 = getelementptr inbounds %struct.bTheme, ptr %2011, i64 0, i32 16, i32 118, i64 1
  store i8 %2029, ptr %2085, align 1, !tbaa !43
  %2086 = getelementptr inbounds %struct.bTheme, ptr %2011, i64 0, i32 16, i32 118, i64 2
  store i8 %2031, ptr %2086, align 1, !tbaa !43
  store i8 -1, ptr %2080, align 1, !tbaa !43
  br label %2087

2087:                                             ; preds = %2079, %2083
  %2088 = load ptr, ptr %2011, align 8, !tbaa !46
  %2089 = icmp eq ptr %2088, null
  br i1 %2089, label %2090, label %2010, !llvm.loop !191

2090:                                             ; preds = %2087, %2005, %1997
  br i1 %1970, label %2099, label %2091

2091:                                             ; preds = %2090
  %2092 = icmp ne i32 %1772, 269
  %2093 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 1), align 4
  %2094 = icmp sgt i32 %2093, 7
  %2095 = select i1 %2092, i1 true, i1 %2094
  %2096 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %2097 = icmp eq ptr %2096, null
  %2098 = select i1 %2095, i1 true, i1 %2097
  br i1 %2098, label %2186, label %2102

2099:                                             ; preds = %2090
  %2100 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !46
  %2101 = icmp eq ptr %2100, null
  br i1 %2101, label %2186, label %2102

2102:                                             ; preds = %2099, %2091
  %2103 = phi ptr [ %2100, %2099 ], [ %2096, %2091 ]
  br label %2104

2104:                                             ; preds = %2102, %2183
  %2105 = phi ptr [ %2184, %2183 ], [ %2103, %2102 ]
  %2106 = getelementptr inbounds %struct.bTheme, ptr %2105, i64 0, i32 8, i32 166, i64 3
  %2107 = load i8, ptr %2106, align 1, !tbaa !43
  %2108 = icmp eq i8 %2107, 0
  br i1 %2108, label %2109, label %2113

2109:                                             ; preds = %2104
  %2110 = getelementptr inbounds %struct.bTheme, ptr %2105, i64 0, i32 8, i32 166
  store i8 96, ptr %2110, align 1, !tbaa !43
  %2111 = getelementptr inbounds %struct.bTheme, ptr %2105, i64 0, i32 8, i32 166, i64 1
  store i8 -128, ptr %2111, align 1, !tbaa !43
  %2112 = getelementptr inbounds %struct.bTheme, ptr %2105, i64 0, i32 8, i32 166, i64 2
  store i8 -1, ptr %2112, align 1, !tbaa !43
  store i8 -1, ptr %2106, align 1, !tbaa !43
  br label %2113

2113:                                             ; preds = %2104, %2109
  %2114 = getelementptr inbounds %struct.bTheme, ptr %2105, i64 0, i32 8, i32 167, i64 3
  %2115 = load i8, ptr %2114, align 1, !tbaa !43
  %2116 = icmp eq i8 %2115, 0
  br i1 %2116, label %2117, label %2119

2117:                                             ; preds = %2113
  %2118 = getelementptr inbounds %struct.bTheme, ptr %2105, i64 0, i32 8, i32 167
  store i32 -1, ptr %2118, align 1
  br label %2119

2119:                                             ; preds = %2113, %2117
  %2120 = getelementptr inbounds %struct.bTheme, ptr %2105, i64 0, i32 8, i32 168, i64 3
  %2121 = load i8, ptr %2120, align 1, !tbaa !43
  %2122 = icmp eq i8 %2121, 0
  br i1 %2122, label %2123, label %2127

2123:                                             ; preds = %2119
  %2124 = getelementptr inbounds %struct.bTheme, ptr %2105, i64 0, i32 8, i32 168
  store i8 -36, ptr %2124, align 1, !tbaa !43
  %2125 = getelementptr inbounds %struct.bTheme, ptr %2105, i64 0, i32 8, i32 168, i64 1
  store i8 0, ptr %2125, align 1, !tbaa !43
  %2126 = getelementptr inbounds %struct.bTheme, ptr %2105, i64 0, i32 8, i32 168, i64 2
  store i8 0, ptr %2126, align 1, !tbaa !43
  store i8 -1, ptr %2120, align 1, !tbaa !43
  br label %2127

2127:                                             ; preds = %2119, %2123
  %2128 = getelementptr inbounds %struct.bTheme, ptr %2105, i64 0, i32 8, i32 169, i64 3
  %2129 = load i8, ptr %2128, align 1, !tbaa !43
  %2130 = icmp eq i8 %2129, 0
  br i1 %2130, label %2131, label %2135

2131:                                             ; preds = %2127
  %2132 = getelementptr inbounds %struct.bTheme, ptr %2105, i64 0, i32 8, i32 169
  store i8 0, ptr %2132, align 1, !tbaa !43
  %2133 = getelementptr inbounds %struct.bTheme, ptr %2105, i64 0, i32 8, i32 169, i64 1
  store i8 0, ptr %2133, align 1, !tbaa !43
  %2134 = getelementptr inbounds %struct.bTheme, ptr %2105, i64 0, i32 8, i32 169, i64 2
  store i8 0, ptr %2134, align 1, !tbaa !43
  store i8 -1, ptr %2128, align 1, !tbaa !43
  br label %2135

2135:                                             ; preds = %2127, %2131
  %2136 = getelementptr inbounds %struct.bTheme, ptr %2105, i64 0, i32 8, i32 170, i64 3
  %2137 = load i8, ptr %2136, align 1, !tbaa !43
  %2138 = icmp eq i8 %2137, 0
  br i1 %2138, label %2139, label %2143

2139:                                             ; preds = %2135
  %2140 = getelementptr inbounds %struct.bTheme, ptr %2105, i64 0, i32 8, i32 170
  store i8 -36, ptr %2140, align 1, !tbaa !43
  %2141 = getelementptr inbounds %struct.bTheme, ptr %2105, i64 0, i32 8, i32 170, i64 1
  store i8 -128, ptr %2141, align 1, !tbaa !43
  %2142 = getelementptr inbounds %struct.bTheme, ptr %2105, i64 0, i32 8, i32 170, i64 2
  store i8 96, ptr %2142, align 1, !tbaa !43
  store i8 -1, ptr %2136, align 1, !tbaa !43
  br label %2143

2143:                                             ; preds = %2135, %2139
  %2144 = getelementptr inbounds %struct.bTheme, ptr %2105, i64 0, i32 8, i32 171, i64 3
  %2145 = load i8, ptr %2144, align 1, !tbaa !43
  %2146 = icmp eq i8 %2145, 0
  br i1 %2146, label %2147, label %2151

2147:                                             ; preds = %2143
  %2148 = getelementptr inbounds %struct.bTheme, ptr %2105, i64 0, i32 8, i32 171
  store i8 0, ptr %2148, align 1, !tbaa !43
  %2149 = getelementptr inbounds %struct.bTheme, ptr %2105, i64 0, i32 8, i32 171, i64 1
  store i8 0, ptr %2149, align 1, !tbaa !43
  %2150 = getelementptr inbounds %struct.bTheme, ptr %2105, i64 0, i32 8, i32 171, i64 2
  store i8 0, ptr %2150, align 1, !tbaa !43
  store i8 -1, ptr %2144, align 1, !tbaa !43
  br label %2151

2151:                                             ; preds = %2143, %2147
  %2152 = getelementptr inbounds %struct.bTheme, ptr %2105, i64 0, i32 8, i32 172, i64 3
  %2153 = load i8, ptr %2152, align 1, !tbaa !43
  %2154 = icmp eq i8 %2153, 0
  br i1 %2154, label %2155, label %2159

2155:                                             ; preds = %2151
  %2156 = getelementptr inbounds %struct.bTheme, ptr %2105, i64 0, i32 8, i32 172
  store i8 0, ptr %2156, align 1, !tbaa !43
  %2157 = getelementptr inbounds %struct.bTheme, ptr %2105, i64 0, i32 8, i32 172, i64 1
  store i8 -86, ptr %2157, align 1, !tbaa !43
  %2158 = getelementptr inbounds %struct.bTheme, ptr %2105, i64 0, i32 8, i32 172, i64 2
  store i8 0, ptr %2158, align 1, !tbaa !43
  store i8 -1, ptr %2152, align 1, !tbaa !43
  br label %2159

2159:                                             ; preds = %2151, %2155
  %2160 = getelementptr inbounds %struct.bTheme, ptr %2105, i64 0, i32 8, i32 173, i64 3
  %2161 = load i8, ptr %2160, align 1, !tbaa !43
  %2162 = icmp eq i8 %2161, 0
  br i1 %2162, label %2163, label %2167

2163:                                             ; preds = %2159
  %2164 = getelementptr inbounds %struct.bTheme, ptr %2105, i64 0, i32 8, i32 173
  store i8 0, ptr %2164, align 1, !tbaa !43
  %2165 = getelementptr inbounds %struct.bTheme, ptr %2105, i64 0, i32 8, i32 173, i64 1
  store i8 0, ptr %2165, align 1, !tbaa !43
  %2166 = getelementptr inbounds %struct.bTheme, ptr %2105, i64 0, i32 8, i32 173, i64 2
  store i8 0, ptr %2166, align 1, !tbaa !43
  store i8 -1, ptr %2160, align 1, !tbaa !43
  br label %2167

2167:                                             ; preds = %2159, %2163
  %2168 = getelementptr inbounds %struct.bTheme, ptr %2105, i64 0, i32 8, i32 174, i64 3
  %2169 = load i8, ptr %2168, align 1, !tbaa !43
  %2170 = icmp eq i8 %2169, 0
  br i1 %2170, label %2171, label %2175

2171:                                             ; preds = %2167
  %2172 = getelementptr inbounds %struct.bTheme, ptr %2105, i64 0, i32 8, i32 174
  store i8 -60, ptr %2172, align 1, !tbaa !43
  %2173 = getelementptr inbounds %struct.bTheme, ptr %2105, i64 0, i32 8, i32 174, i64 1
  store i8 -60, ptr %2173, align 1, !tbaa !43
  %2174 = getelementptr inbounds %struct.bTheme, ptr %2105, i64 0, i32 8, i32 174, i64 2
  store i8 -60, ptr %2174, align 1, !tbaa !43
  store i8 -1, ptr %2168, align 1, !tbaa !43
  br label %2175

2175:                                             ; preds = %2167, %2171
  %2176 = getelementptr inbounds %struct.bTheme, ptr %2105, i64 0, i32 8, i32 175, i64 3
  %2177 = load i8, ptr %2176, align 1, !tbaa !43
  %2178 = icmp eq i8 %2177, 0
  br i1 %2178, label %2179, label %2183

2179:                                             ; preds = %2175
  %2180 = getelementptr inbounds %struct.bTheme, ptr %2105, i64 0, i32 8, i32 175
  store i8 0, ptr %2180, align 1, !tbaa !43
  %2181 = getelementptr inbounds %struct.bTheme, ptr %2105, i64 0, i32 8, i32 175, i64 1
  store i8 0, ptr %2181, align 1, !tbaa !43
  %2182 = getelementptr inbounds %struct.bTheme, ptr %2105, i64 0, i32 8, i32 175, i64 2
  store i8 0, ptr %2182, align 1, !tbaa !43
  store i8 -1, ptr %2176, align 1, !tbaa !43
  br label %2183

2183:                                             ; preds = %2175, %2179
  %2184 = load ptr, ptr %2105, align 8, !tbaa !46
  %2185 = icmp eq ptr %2184, null
  br i1 %2185, label %2186, label %2104, !llvm.loop !192

2186:                                             ; preds = %2183, %2099, %2091
  %2187 = load i32, ptr @U, align 8, !tbaa !162
  %2188 = icmp slt i32 %2187, 269
  br i1 %2188, label %2194, label %2189

2189:                                             ; preds = %2186
  %2190 = icmp eq i32 %2187, 269
  %2191 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 1), align 4
  %2192 = icmp slt i32 %2191, 9
  %2193 = select i1 %2190, i1 %2192, i1 false
  br i1 %2193, label %2194, label %2257

2194:                                             ; preds = %2189, %2186
  %2195 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 58), align 2, !tbaa !97
  %2196 = mul i16 %2195, 5
  store i16 %2196, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 58), align 2, !tbaa !97
  %2197 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !46
  %2198 = icmp eq ptr %2197, null
  br i1 %2198, label %2253, label %2199

2199:                                             ; preds = %2194, %2199
  %2200 = phi ptr [ %2251, %2199 ], [ %2197, %2194 ]
  %2201 = getelementptr inbounds %struct.bTheme, ptr %2200, i64 0, i32 9, i32 83
  store i8 -24, ptr %2201, align 1, !tbaa !43
  %2202 = getelementptr inbounds %struct.bTheme, ptr %2200, i64 0, i32 9, i32 83, i64 1
  store i8 -24, ptr %2202, align 1, !tbaa !43
  %2203 = getelementptr inbounds %struct.bTheme, ptr %2200, i64 0, i32 9, i32 83, i64 2
  store i8 -24, ptr %2203, align 1, !tbaa !43
  %2204 = getelementptr inbounds %struct.bTheme, ptr %2200, i64 0, i32 9, i32 83, i64 3
  store i8 -1, ptr %2204, align 1, !tbaa !43
  %2205 = getelementptr inbounds %struct.bTheme, ptr %2200, i64 0, i32 9, i32 87
  store i8 -1, ptr %2205, align 1, !tbaa !43
  %2206 = getelementptr inbounds %struct.bTheme, ptr %2200, i64 0, i32 9, i32 87, i64 1
  store i8 -66, ptr %2206, align 1, !tbaa !43
  %2207 = getelementptr inbounds %struct.bTheme, ptr %2200, i64 0, i32 9, i32 87, i64 2
  store i8 50, ptr %2207, align 1, !tbaa !43
  %2208 = getelementptr inbounds %struct.bTheme, ptr %2200, i64 0, i32 9, i32 87, i64 3
  store i8 -1, ptr %2208, align 1, !tbaa !43
  %2209 = getelementptr inbounds %struct.bTheme, ptr %2200, i64 0, i32 9, i32 84
  store i8 -24, ptr %2209, align 1, !tbaa !43
  %2210 = getelementptr inbounds %struct.bTheme, ptr %2200, i64 0, i32 9, i32 84, i64 1
  store i8 -77, ptr %2210, align 1, !tbaa !43
  %2211 = getelementptr inbounds %struct.bTheme, ptr %2200, i64 0, i32 9, i32 84, i64 2
  store i8 -52, ptr %2211, align 1, !tbaa !43
  %2212 = getelementptr inbounds %struct.bTheme, ptr %2200, i64 0, i32 9, i32 84, i64 3
  store i8 -1, ptr %2212, align 1, !tbaa !43
  %2213 = getelementptr inbounds %struct.bTheme, ptr %2200, i64 0, i32 9, i32 88
  store i8 -14, ptr %2213, align 1, !tbaa !43
  %2214 = getelementptr inbounds %struct.bTheme, ptr %2200, i64 0, i32 9, i32 88, i64 1
  store i8 -128, ptr %2214, align 1, !tbaa !43
  %2215 = getelementptr inbounds %struct.bTheme, ptr %2200, i64 0, i32 9, i32 88, i64 2
  store i8 -128, ptr %2215, align 1, !tbaa !43
  %2216 = getelementptr inbounds %struct.bTheme, ptr %2200, i64 0, i32 9, i32 88, i64 3
  store i8 -1, ptr %2216, align 1, !tbaa !43
  %2217 = getelementptr inbounds %struct.bTheme, ptr %2200, i64 0, i32 9, i32 85
  store i8 -77, ptr %2217, align 1, !tbaa !43
  %2218 = getelementptr inbounds %struct.bTheme, ptr %2200, i64 0, i32 9, i32 85, i64 1
  store i8 -37, ptr %2218, align 1, !tbaa !43
  %2219 = getelementptr inbounds %struct.bTheme, ptr %2200, i64 0, i32 9, i32 85, i64 2
  store i8 -24, ptr %2219, align 1, !tbaa !43
  %2220 = getelementptr inbounds %struct.bTheme, ptr %2200, i64 0, i32 9, i32 85, i64 3
  store i8 -1, ptr %2220, align 1, !tbaa !43
  %2221 = getelementptr inbounds %struct.bTheme, ptr %2200, i64 0, i32 9, i32 89
  store i8 84, ptr %2221, align 1, !tbaa !43
  %2222 = getelementptr inbounds %struct.bTheme, ptr %2200, i64 0, i32 9, i32 89, i64 1
  store i8 -65, ptr %2222, align 1, !tbaa !43
  %2223 = getelementptr inbounds %struct.bTheme, ptr %2200, i64 0, i32 9, i32 89, i64 2
  store i8 -19, ptr %2223, align 1, !tbaa !43
  %2224 = getelementptr inbounds %struct.bTheme, ptr %2200, i64 0, i32 9, i32 89, i64 3
  store i8 -1, ptr %2224, align 1, !tbaa !43
  %2225 = getelementptr inbounds %struct.bTheme, ptr %2200, i64 0, i32 9, i32 86
  store i8 -108, ptr %2225, align 1, !tbaa !43
  %2226 = getelementptr inbounds %struct.bTheme, ptr %2200, i64 0, i32 9, i32 86, i64 1
  store i8 -27, ptr %2226, align 1, !tbaa !43
  %2227 = getelementptr inbounds %struct.bTheme, ptr %2200, i64 0, i32 9, i32 86, i64 2
  store i8 117, ptr %2227, align 1, !tbaa !43
  %2228 = getelementptr inbounds %struct.bTheme, ptr %2200, i64 0, i32 9, i32 86, i64 3
  store i8 -1, ptr %2228, align 1, !tbaa !43
  %2229 = getelementptr inbounds %struct.bTheme, ptr %2200, i64 0, i32 9, i32 90
  store i8 97, ptr %2229, align 1, !tbaa !43
  %2230 = getelementptr inbounds %struct.bTheme, ptr %2200, i64 0, i32 9, i32 90, i64 1
  store i8 -64, ptr %2230, align 1, !tbaa !43
  %2231 = getelementptr inbounds %struct.bTheme, ptr %2200, i64 0, i32 9, i32 90, i64 2
  store i8 66, ptr %2231, align 1, !tbaa !43
  %2232 = getelementptr inbounds %struct.bTheme, ptr %2200, i64 0, i32 9, i32 90, i64 3
  store i8 -1, ptr %2232, align 1, !tbaa !43
  %2233 = getelementptr inbounds %struct.bTheme, ptr %2200, i64 0, i32 9, i32 91
  store i8 0, ptr %2233, align 1, !tbaa !43
  %2234 = getelementptr inbounds %struct.bTheme, ptr %2200, i64 0, i32 9, i32 91, i64 1
  store i8 0, ptr %2234, align 1, !tbaa !43
  %2235 = getelementptr inbounds %struct.bTheme, ptr %2200, i64 0, i32 9, i32 91, i64 2
  store i8 0, ptr %2235, align 1, !tbaa !43
  %2236 = getelementptr inbounds %struct.bTheme, ptr %2200, i64 0, i32 9, i32 91, i64 3
  store i8 -1, ptr %2236, align 1, !tbaa !43
  %2237 = getelementptr inbounds %struct.bTheme, ptr %2200, i64 0, i32 9, i32 92
  store i8 0, ptr %2237, align 1, !tbaa !43
  %2238 = getelementptr inbounds %struct.bTheme, ptr %2200, i64 0, i32 9, i32 92, i64 1
  store i8 0, ptr %2238, align 1, !tbaa !43
  %2239 = getelementptr inbounds %struct.bTheme, ptr %2200, i64 0, i32 9, i32 92, i64 2
  store i8 0, ptr %2239, align 1, !tbaa !43
  %2240 = getelementptr inbounds %struct.bTheme, ptr %2200, i64 0, i32 9, i32 92, i64 3
  store i8 -1, ptr %2240, align 1, !tbaa !43
  %2241 = getelementptr inbounds %struct.bTheme, ptr %2200, i64 0, i32 10, i32 91
  store i8 0, ptr %2241, align 1, !tbaa !43
  %2242 = getelementptr inbounds %struct.bTheme, ptr %2200, i64 0, i32 10, i32 91, i64 1
  store i8 0, ptr %2242, align 1, !tbaa !43
  %2243 = getelementptr inbounds %struct.bTheme, ptr %2200, i64 0, i32 10, i32 91, i64 2
  store i8 0, ptr %2243, align 1, !tbaa !43
  %2244 = getelementptr inbounds %struct.bTheme, ptr %2200, i64 0, i32 10, i32 91, i64 3
  store i8 -1, ptr %2244, align 1, !tbaa !43
  %2245 = getelementptr inbounds %struct.bTheme, ptr %2200, i64 0, i32 10, i32 92
  store i8 0, ptr %2245, align 1, !tbaa !43
  %2246 = getelementptr inbounds %struct.bTheme, ptr %2200, i64 0, i32 10, i32 92, i64 1
  store i8 0, ptr %2246, align 1, !tbaa !43
  %2247 = getelementptr inbounds %struct.bTheme, ptr %2200, i64 0, i32 10, i32 92, i64 2
  store i8 0, ptr %2247, align 1, !tbaa !43
  %2248 = getelementptr inbounds %struct.bTheme, ptr %2200, i64 0, i32 10, i32 92, i64 3
  store i8 -1, ptr %2248, align 1, !tbaa !43
  %2249 = getelementptr inbounds %struct.bTheme, ptr %2200, i64 0, i32 7, i32 99
  store i8 6, ptr %2249, align 4, !tbaa !70
  %2250 = getelementptr inbounds %struct.bTheme, ptr %2200, i64 0, i32 7, i32 132
  store i8 5, ptr %2250, align 4, !tbaa !71
  %2251 = load ptr, ptr %2200, align 8, !tbaa !46
  %2252 = icmp eq ptr %2251, null
  br i1 %2252, label %2253, label %2199, !llvm.loop !193

2253:                                             ; preds = %2199, %2194
  %2254 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 97, i64 3), align 8, !tbaa !83
  %2255 = fcmp olt float %2254, 0x3FB99999A0000000
  br i1 %2255, label %2256, label %2257

2256:                                             ; preds = %2253
  store float 0x3FECCCCCC0000000, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 97, i64 3), align 8, !tbaa !83
  br label %2257

2257:                                             ; preds = %2253, %2256, %2189
  br i1 %2188, label %2266, label %2258

2258:                                             ; preds = %2257
  %2259 = icmp ne i32 %2187, 269
  %2260 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 1), align 4
  %2261 = icmp sgt i32 %2260, 9
  %2262 = select i1 %2259, i1 true, i1 %2261
  %2263 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %2264 = icmp eq ptr %2263, null
  %2265 = select i1 %2262, i1 true, i1 %2264
  br i1 %2265, label %2297, label %2269

2266:                                             ; preds = %2257
  %2267 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !46
  %2268 = icmp eq ptr %2267, null
  br i1 %2268, label %2297, label %2269

2269:                                             ; preds = %2266, %2258
  %2270 = phi ptr [ %2267, %2266 ], [ %2263, %2258 ]
  br label %2274

2271:                                             ; preds = %2276
  %2272 = load ptr, ptr %2275, align 8, !tbaa !46
  %2273 = icmp eq ptr %2272, null
  br i1 %2273, label %2297, label %2274, !llvm.loop !194

2274:                                             ; preds = %2269, %2271
  %2275 = phi ptr [ %2272, %2271 ], [ %2270, %2269 ]
  br label %2276

2276:                                             ; preds = %2274, %2276
  %2277 = phi i64 [ 960, %2274 ], [ %2295, %2276 ]
  %2278 = getelementptr inbounds i8, ptr %2275, i64 %2277
  %2279 = getelementptr inbounds %struct.ThemeSpace, ptr %2278, i64 0, i32 8
  store i8 114, ptr %2279, align 1, !tbaa !43
  %2280 = getelementptr inbounds %struct.ThemeSpace, ptr %2278, i64 0, i32 8, i64 1
  store i8 114, ptr %2280, align 1, !tbaa !43
  %2281 = getelementptr inbounds %struct.ThemeSpace, ptr %2278, i64 0, i32 8, i64 2
  store i8 114, ptr %2281, align 1, !tbaa !43
  %2282 = getelementptr inbounds %struct.ThemeSpace, ptr %2278, i64 0, i32 8, i64 3
  store i8 -1, ptr %2282, align 1, !tbaa !43
  %2283 = getelementptr inbounds %struct.ThemeSpace, ptr %2278, i64 0, i32 9
  store i8 83, ptr %2283, align 1, !tbaa !43
  %2284 = getelementptr inbounds %struct.ThemeSpace, ptr %2278, i64 0, i32 9, i64 1
  store i8 83, ptr %2284, align 1, !tbaa !43
  %2285 = getelementptr inbounds %struct.ThemeSpace, ptr %2278, i64 0, i32 9, i64 2
  store i8 83, ptr %2285, align 1, !tbaa !43
  %2286 = getelementptr inbounds %struct.ThemeSpace, ptr %2278, i64 0, i32 9, i64 3
  store i8 -1, ptr %2286, align 1, !tbaa !43
  %2287 = getelementptr inbounds %struct.ThemeSpace, ptr %2278, i64 0, i32 10
  store i8 64, ptr %2287, align 1, !tbaa !43
  %2288 = getelementptr inbounds %struct.ThemeSpace, ptr %2278, i64 0, i32 10, i64 1
  store i8 64, ptr %2288, align 1, !tbaa !43
  %2289 = getelementptr inbounds %struct.ThemeSpace, ptr %2278, i64 0, i32 10, i64 2
  store i8 64, ptr %2289, align 1, !tbaa !43
  %2290 = getelementptr inbounds %struct.ThemeSpace, ptr %2278, i64 0, i32 10, i64 3
  store i8 -1, ptr %2290, align 1, !tbaa !43
  %2291 = getelementptr inbounds %struct.ThemeSpace, ptr %2278, i64 0, i32 11
  store i8 60, ptr %2291, align 1, !tbaa !43
  %2292 = getelementptr inbounds %struct.ThemeSpace, ptr %2278, i64 0, i32 11, i64 1
  store i8 60, ptr %2292, align 1, !tbaa !43
  %2293 = getelementptr inbounds %struct.ThemeSpace, ptr %2278, i64 0, i32 11, i64 2
  store i8 60, ptr %2293, align 1, !tbaa !43
  %2294 = getelementptr inbounds %struct.ThemeSpace, ptr %2278, i64 0, i32 11, i64 3
  store i8 -1, ptr %2294, align 1, !tbaa !43
  %2295 = add nuw nsw i64 %2277, 720
  %2296 = icmp eq i64 %2295, 13200
  br i1 %2296, label %2271, label %2276, !llvm.loop !195

2297:                                             ; preds = %2271, %2266, %2258
  %2298 = load i32, ptr @U, align 8, !tbaa !162
  %2299 = icmp sgt i32 %2298, 270
  %2300 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %2301 = icmp eq ptr %2300, null
  %2302 = select i1 %2299, i1 true, i1 %2301
  br i1 %2302, label %2308, label %2303

2303:                                             ; preds = %2297, %2303
  %2304 = phi ptr [ %2306, %2303 ], [ %2300, %2297 ]
  %2305 = getelementptr inbounds %struct.bTheme, ptr %2304, i64 0, i32 3, i32 12, i32 4
  store i32 -1, ptr %2305, align 1
  %2306 = load ptr, ptr %2304, align 8, !tbaa !46
  %2307 = icmp eq ptr %2306, null
  br i1 %2307, label %2308, label %2303, !llvm.loop !196

2308:                                             ; preds = %2303, %2297
  %2309 = icmp slt i32 %2298, 272
  br i1 %2309, label %2318, label %2310

2310:                                             ; preds = %2308
  %2311 = icmp ne i32 %2298, 272
  %2312 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 1), align 4
  %2313 = icmp sgt i32 %2312, 1
  %2314 = select i1 %2311, i1 true, i1 %2313
  %2315 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %2316 = icmp eq ptr %2315, null
  %2317 = select i1 %2314, i1 true, i1 %2316
  br i1 %2317, label %2347, label %2321

2318:                                             ; preds = %2308
  %2319 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !46
  %2320 = icmp eq ptr %2319, null
  br i1 %2320, label %2347, label %2321

2321:                                             ; preds = %2318, %2310
  %2322 = phi ptr [ %2319, %2318 ], [ %2315, %2310 ]
  br label %2323

2323:                                             ; preds = %2321, %2323
  %2324 = phi ptr [ %2345, %2323 ], [ %2322, %2321 ]
  %2325 = getelementptr inbounds %struct.bTheme, ptr %2324, i64 0, i32 5, i32 177
  store i8 127, ptr %2325, align 1, !tbaa !43
  %2326 = getelementptr inbounds %struct.bTheme, ptr %2324, i64 0, i32 5, i32 177, i64 1
  store i8 -1, ptr %2326, align 1, !tbaa !43
  %2327 = getelementptr inbounds %struct.bTheme, ptr %2324, i64 0, i32 5, i32 177, i64 2
  store i8 127, ptr %2327, align 1, !tbaa !43
  %2328 = getelementptr inbounds %struct.bTheme, ptr %2324, i64 0, i32 5, i32 177, i64 3
  store i8 127, ptr %2328, align 1, !tbaa !43
  %2329 = getelementptr inbounds %struct.bTheme, ptr %2324, i64 0, i32 5, i32 176
  store i8 -1, ptr %2329, align 1, !tbaa !43
  %2330 = getelementptr inbounds %struct.bTheme, ptr %2324, i64 0, i32 5, i32 176, i64 1
  store i8 127, ptr %2330, align 1, !tbaa !43
  %2331 = getelementptr inbounds %struct.bTheme, ptr %2324, i64 0, i32 5, i32 176, i64 2
  store i8 127, ptr %2331, align 1, !tbaa !43
  %2332 = getelementptr inbounds %struct.bTheme, ptr %2324, i64 0, i32 5, i32 176, i64 3
  store i8 127, ptr %2332, align 1, !tbaa !43
  %2333 = getelementptr inbounds %struct.bTheme, ptr %2324, i64 0, i32 12, i32 177
  store i8 127, ptr %2333, align 1, !tbaa !43
  %2334 = getelementptr inbounds %struct.bTheme, ptr %2324, i64 0, i32 12, i32 177, i64 1
  store i8 -1, ptr %2334, align 1, !tbaa !43
  %2335 = getelementptr inbounds %struct.bTheme, ptr %2324, i64 0, i32 12, i32 177, i64 2
  store i8 127, ptr %2335, align 1, !tbaa !43
  %2336 = getelementptr inbounds %struct.bTheme, ptr %2324, i64 0, i32 12, i32 177, i64 3
  store i8 127, ptr %2336, align 1, !tbaa !43
  %2337 = getelementptr inbounds %struct.bTheme, ptr %2324, i64 0, i32 12, i32 176
  store i8 -1, ptr %2337, align 1, !tbaa !43
  %2338 = getelementptr inbounds %struct.bTheme, ptr %2324, i64 0, i32 12, i32 176, i64 1
  store i8 127, ptr %2338, align 1, !tbaa !43
  %2339 = getelementptr inbounds %struct.bTheme, ptr %2324, i64 0, i32 12, i32 176, i64 2
  store i8 127, ptr %2339, align 1, !tbaa !43
  %2340 = getelementptr inbounds %struct.bTheme, ptr %2324, i64 0, i32 12, i32 176, i64 3
  store i8 127, ptr %2340, align 1, !tbaa !43
  %2341 = getelementptr inbounds %struct.bTheme, ptr %2324, i64 0, i32 16, i32 110
  store i8 115, ptr %2341, align 1, !tbaa !43
  %2342 = getelementptr inbounds %struct.bTheme, ptr %2324, i64 0, i32 16, i32 110, i64 1
  store i8 115, ptr %2342, align 1, !tbaa !43
  %2343 = getelementptr inbounds %struct.bTheme, ptr %2324, i64 0, i32 16, i32 110, i64 2
  store i8 115, ptr %2343, align 1, !tbaa !43
  %2344 = getelementptr inbounds %struct.bTheme, ptr %2324, i64 0, i32 16, i32 110, i64 3
  store i8 -1, ptr %2344, align 1, !tbaa !43
  %2345 = load ptr, ptr %2324, align 8, !tbaa !46
  %2346 = icmp eq ptr %2345, null
  br i1 %2346, label %2347, label %2323, !llvm.loop !197

2347:                                             ; preds = %2323, %2318, %2310
  br i1 %2299, label %2348, label %2353

2348:                                             ; preds = %2347
  %2349 = icmp eq i32 %2298, 271
  %2350 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 1), align 4
  %2351 = icmp slt i32 %2350, 5
  %2352 = select i1 %2349, i1 %2351, i1 false
  br i1 %2352, label %2353, label %2451

2353:                                             ; preds = %2348, %2347
  store i16 100, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 112), align 4, !tbaa !198
  store i16 12, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 113), align 2, !tbaa !199
  store i16 6, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 110), align 8, !tbaa !200
  %2354 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !46
  %2355 = icmp eq ptr %2354, null
  br i1 %2355, label %2451, label %2356

2356:                                             ; preds = %2353, %2356
  %2357 = phi ptr [ %2449, %2356 ], [ %2354, %2353 ]
  %2358 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 3, i32 17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2358, ptr noundef nonnull align 2 dereferenceable(32) @__const.init_userdef_do_versions.wcol_pie_menu, i64 32, i1 false), !tbaa.struct !139
  %2359 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 20, i32 71
  store i8 0, ptr %2359, align 1, !tbaa !43
  %2360 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 20, i32 71, i64 1
  store i8 0, ptr %2360, align 1, !tbaa !43
  %2361 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 20, i32 71, i64 2
  store i8 0, ptr %2361, align 1, !tbaa !43
  %2362 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 20, i32 71, i64 3
  store i8 -1, ptr %2362, align 1, !tbaa !43
  %2363 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 20, i32 72
  store i8 -112, ptr %2363, align 1, !tbaa !43
  %2364 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 20, i32 72, i64 1
  store i8 -112, ptr %2364, align 1, !tbaa !43
  %2365 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 20, i32 72, i64 2
  store i8 0, ptr %2365, align 1, !tbaa !43
  %2366 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 20, i32 72, i64 3
  store i8 -1, ptr %2366, align 1, !tbaa !43
  %2367 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 20, i32 73
  store i8 64, ptr %2367, align 1, !tbaa !43
  %2368 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 20, i32 73, i64 1
  store i8 -112, ptr %2368, align 1, !tbaa !43
  %2369 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 20, i32 73, i64 2
  store i8 48, ptr %2369, align 1, !tbaa !43
  %2370 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 20, i32 73, i64 3
  store i8 -1, ptr %2370, align 1, !tbaa !43
  %2371 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 20, i32 74
  store i8 -128, ptr %2371, align 1, !tbaa !43
  %2372 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 20, i32 74, i64 1
  store i8 48, ptr %2372, align 1, !tbaa !43
  %2373 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 20, i32 74, i64 2
  store i8 96, ptr %2373, align 1, !tbaa !43
  %2374 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 20, i32 74, i64 3
  store i8 -1, ptr %2374, align 1, !tbaa !43
  %2375 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 20, i32 76
  store i8 0, ptr %2375, align 1, !tbaa !43
  %2376 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 20, i32 76, i64 1
  store i8 0, ptr %2376, align 1, !tbaa !43
  %2377 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 20, i32 76, i64 2
  store i8 0, ptr %2377, align 1, !tbaa !43
  %2378 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 20, i32 76, i64 3
  store i8 -1, ptr %2378, align 1, !tbaa !43
  %2379 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 20, i32 77
  store i8 -16, ptr %2379, align 1, !tbaa !43
  %2380 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 20, i32 77, i64 1
  store i8 -1, ptr %2380, align 1, !tbaa !43
  %2381 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 20, i32 77, i64 2
  store i8 64, ptr %2381, align 1, !tbaa !43
  %2382 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 20, i32 77, i64 3
  store i8 -1, ptr %2382, align 1, !tbaa !43
  %2383 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 20, i32 78
  store i8 64, ptr %2383, align 1, !tbaa !43
  %2384 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 20, i32 78, i64 1
  store i8 -64, ptr %2384, align 1, !tbaa !43
  %2385 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 20, i32 78, i64 2
  store i8 48, ptr %2385, align 1, !tbaa !43
  %2386 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 20, i32 78, i64 3
  store i8 -1, ptr %2386, align 1, !tbaa !43
  %2387 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 20, i32 79
  store i8 -16, ptr %2387, align 1, !tbaa !43
  %2388 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 20, i32 79, i64 1
  store i8 -112, ptr %2388, align 1, !tbaa !43
  %2389 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 20, i32 79, i64 2
  store i8 -96, ptr %2389, align 1, !tbaa !43
  %2390 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 20, i32 79, i64 3
  store i8 -1, ptr %2390, align 1, !tbaa !43
  %2391 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 20, i32 129
  store i8 0, ptr %2391, align 1, !tbaa !43
  %2392 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 20, i32 129, i64 1
  store i8 0, ptr %2392, align 1, !tbaa !43
  %2393 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 20, i32 129, i64 2
  store i8 0, ptr %2393, align 1, !tbaa !43
  %2394 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 20, i32 129, i64 3
  store i8 -1, ptr %2394, align 1, !tbaa !43
  %2395 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 20, i32 130
  store i8 -1, ptr %2395, align 1, !tbaa !43
  %2396 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 20, i32 130, i64 1
  store i8 -1, ptr %2396, align 1, !tbaa !43
  %2397 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 20, i32 130, i64 2
  store i8 0, ptr %2397, align 1, !tbaa !43
  %2398 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 20, i32 130, i64 3
  store i8 -1, ptr %2398, align 1, !tbaa !43
  %2399 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 20, i32 67
  store i8 -37, ptr %2399, align 1, !tbaa !43
  %2400 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 20, i32 67, i64 1
  store i8 37, ptr %2400, align 1, !tbaa !43
  %2401 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 20, i32 67, i64 2
  store i8 18, ptr %2401, align 1, !tbaa !43
  %2402 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 20, i32 67, i64 3
  store i8 -1, ptr %2402, align 1, !tbaa !43
  %2403 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 12, i32 71
  store i8 0, ptr %2403, align 1, !tbaa !43
  %2404 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 12, i32 71, i64 1
  store i8 0, ptr %2404, align 1, !tbaa !43
  %2405 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 12, i32 71, i64 2
  store i8 0, ptr %2405, align 1, !tbaa !43
  %2406 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 12, i32 71, i64 3
  store i8 -1, ptr %2406, align 1, !tbaa !43
  %2407 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 12, i32 72
  store i8 -112, ptr %2407, align 1, !tbaa !43
  %2408 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 12, i32 72, i64 1
  store i8 -112, ptr %2408, align 1, !tbaa !43
  %2409 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 12, i32 72, i64 2
  store i8 0, ptr %2409, align 1, !tbaa !43
  %2410 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 12, i32 72, i64 3
  store i8 -1, ptr %2410, align 1, !tbaa !43
  %2411 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 12, i32 73
  store i8 64, ptr %2411, align 1, !tbaa !43
  %2412 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 12, i32 73, i64 1
  store i8 -112, ptr %2412, align 1, !tbaa !43
  %2413 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 12, i32 73, i64 2
  store i8 48, ptr %2413, align 1, !tbaa !43
  %2414 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 12, i32 73, i64 3
  store i8 -1, ptr %2414, align 1, !tbaa !43
  %2415 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 12, i32 74
  store i8 -128, ptr %2415, align 1, !tbaa !43
  %2416 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 12, i32 74, i64 1
  store i8 48, ptr %2416, align 1, !tbaa !43
  %2417 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 12, i32 74, i64 2
  store i8 96, ptr %2417, align 1, !tbaa !43
  %2418 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 12, i32 74, i64 3
  store i8 -1, ptr %2418, align 1, !tbaa !43
  %2419 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 12, i32 76
  store i8 0, ptr %2419, align 1, !tbaa !43
  %2420 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 12, i32 76, i64 1
  store i8 0, ptr %2420, align 1, !tbaa !43
  %2421 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 12, i32 76, i64 2
  store i8 0, ptr %2421, align 1, !tbaa !43
  %2422 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 12, i32 76, i64 3
  store i8 -1, ptr %2422, align 1, !tbaa !43
  %2423 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 12, i32 77
  store i8 -16, ptr %2423, align 1, !tbaa !43
  %2424 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 12, i32 77, i64 1
  store i8 -1, ptr %2424, align 1, !tbaa !43
  %2425 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 12, i32 77, i64 2
  store i8 64, ptr %2425, align 1, !tbaa !43
  %2426 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 12, i32 77, i64 3
  store i8 -1, ptr %2426, align 1, !tbaa !43
  %2427 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 12, i32 78
  store i8 64, ptr %2427, align 1, !tbaa !43
  %2428 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 12, i32 78, i64 1
  store i8 -64, ptr %2428, align 1, !tbaa !43
  %2429 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 12, i32 78, i64 2
  store i8 48, ptr %2429, align 1, !tbaa !43
  %2430 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 12, i32 78, i64 3
  store i8 -1, ptr %2430, align 1, !tbaa !43
  %2431 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 12, i32 79
  store i8 -16, ptr %2431, align 1, !tbaa !43
  %2432 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 12, i32 79, i64 1
  store i8 -112, ptr %2432, align 1, !tbaa !43
  %2433 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 12, i32 79, i64 2
  store i8 -96, ptr %2433, align 1, !tbaa !43
  %2434 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 12, i32 79, i64 3
  store i8 -1, ptr %2434, align 1, !tbaa !43
  %2435 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 12, i32 129
  store i8 0, ptr %2435, align 1, !tbaa !43
  %2436 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 12, i32 129, i64 1
  store i8 0, ptr %2436, align 1, !tbaa !43
  %2437 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 12, i32 129, i64 2
  store i8 0, ptr %2437, align 1, !tbaa !43
  %2438 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 12, i32 129, i64 3
  store i8 -1, ptr %2438, align 1, !tbaa !43
  %2439 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 12, i32 130
  store i8 -1, ptr %2439, align 1, !tbaa !43
  %2440 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 12, i32 130, i64 1
  store i8 -1, ptr %2440, align 1, !tbaa !43
  %2441 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 12, i32 130, i64 2
  store i8 0, ptr %2441, align 1, !tbaa !43
  %2442 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 12, i32 130, i64 3
  store i8 -1, ptr %2442, align 1, !tbaa !43
  %2443 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 12, i32 67
  store i8 -37, ptr %2443, align 1, !tbaa !43
  %2444 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 12, i32 67, i64 1
  store i8 37, ptr %2444, align 1, !tbaa !43
  %2445 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 12, i32 67, i64 2
  store i8 18, ptr %2445, align 1, !tbaa !43
  %2446 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 12, i32 67, i64 3
  store i8 -1, ptr %2446, align 1, !tbaa !43
  %2447 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 12, i32 132
  store i8 5, ptr %2447, align 4, !tbaa !74
  %2448 = getelementptr inbounds %struct.bTheme, ptr %2357, i64 0, i32 20, i32 132
  store i8 5, ptr %2448, align 4, !tbaa !76
  %2449 = load ptr, ptr %2357, align 8, !tbaa !46
  %2450 = icmp eq ptr %2449, null
  br i1 %2450, label %2451, label %2356, !llvm.loop !201

2451:                                             ; preds = %2356, %2353, %2348
  %2452 = load i32, ptr @U, align 8, !tbaa !162
  %2453 = icmp slt i32 %2452, 271
  br i1 %2453, label %2462, label %2454

2454:                                             ; preds = %2451
  %2455 = icmp ne i32 %2452, 271
  %2456 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 1), align 4
  %2457 = icmp sgt i32 %2456, 5
  %2458 = select i1 %2455, i1 true, i1 %2457
  %2459 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %2460 = icmp eq ptr %2459, null
  %2461 = select i1 %2458, i1 true, i1 %2460
  br i1 %2461, label %2479, label %2465

2462:                                             ; preds = %2451
  %2463 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !46
  %2464 = icmp eq ptr %2463, null
  br i1 %2464, label %2479, label %2465

2465:                                             ; preds = %2462, %2454
  %2466 = phi ptr [ %2463, %2462 ], [ %2459, %2454 ]
  br label %2467

2467:                                             ; preds = %2465, %2476
  %2468 = phi ptr [ %2477, %2476 ], [ %2466, %2465 ]
  %2469 = getelementptr inbounds %struct.bTheme, ptr %2468, i64 0, i32 5, i32 56, i64 3
  %2470 = load i8, ptr %2469, align 1, !tbaa !43
  %2471 = icmp eq i8 %2470, 0
  br i1 %2471, label %2472, label %2476

2472:                                             ; preds = %2467
  %2473 = getelementptr inbounds %struct.bTheme, ptr %2468, i64 0, i32 5, i32 56
  store i8 -35, ptr %2473, align 1, !tbaa !43
  %2474 = getelementptr inbounds %struct.bTheme, ptr %2468, i64 0, i32 5, i32 56, i64 1
  store i8 35, ptr %2474, align 1, !tbaa !43
  %2475 = getelementptr inbounds %struct.bTheme, ptr %2468, i64 0, i32 5, i32 56, i64 2
  store i8 -35, ptr %2475, align 1, !tbaa !43
  store i8 -1, ptr %2469, align 1, !tbaa !43
  br label %2476

2476:                                             ; preds = %2467, %2472
  %2477 = load ptr, ptr %2468, align 8, !tbaa !46
  %2478 = icmp eq ptr %2477, null
  br i1 %2478, label %2479, label %2467, !llvm.loop !202

2479:                                             ; preds = %2476, %2462, %2454
  %2480 = icmp slt i32 %2452, 272
  br i1 %2480, label %2489, label %2481

2481:                                             ; preds = %2479
  %2482 = icmp ne i32 %2452, 272
  %2483 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 1), align 4
  %2484 = icmp sgt i32 %2483, 1
  %2485 = select i1 %2482, i1 true, i1 %2484
  %2486 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %2487 = icmp eq ptr %2486, null
  %2488 = select i1 %2485, i1 true, i1 %2487
  br i1 %2488, label %2502, label %2492

2489:                                             ; preds = %2479
  %2490 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !46
  %2491 = icmp eq ptr %2490, null
  br i1 %2491, label %2502, label %2492

2492:                                             ; preds = %2489, %2481
  %2493 = phi ptr [ %2490, %2489 ], [ %2486, %2481 ]
  br label %2494

2494:                                             ; preds = %2492, %2494
  %2495 = phi ptr [ %2500, %2494 ], [ %2493, %2492 ]
  %2496 = getelementptr inbounds %struct.bTheme, ptr %2495, i64 0, i32 3, i32 20
  store i8 -1, ptr %2496, align 1, !tbaa !43
  %2497 = getelementptr inbounds %struct.bTheme, ptr %2495, i64 0, i32 3, i32 20, i64 1
  store i8 -1, ptr %2497, align 1, !tbaa !43
  %2498 = getelementptr inbounds %struct.bTheme, ptr %2495, i64 0, i32 3, i32 20, i64 2
  store i8 -1, ptr %2498, align 1, !tbaa !43
  %2499 = getelementptr inbounds %struct.bTheme, ptr %2495, i64 0, i32 3, i32 20, i64 3
  store i8 5, ptr %2499, align 1, !tbaa !43
  %2500 = load ptr, ptr %2495, align 8, !tbaa !46
  %2501 = icmp eq ptr %2500, null
  br i1 %2501, label %2502, label %2494, !llvm.loop !203

2502:                                             ; preds = %2494, %2489, %2481
  %2503 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !84
  %2504 = fcmp oeq float %2503, 0.000000e+00
  br i1 %2504, label %2505, label %2506

2505:                                             ; preds = %2502
  store float 1.000000e+00, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !84
  br label %2506

2506:                                             ; preds = %2505, %2502
  %2507 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 89), align 2, !tbaa !204
  %2508 = icmp eq i16 %2507, 0
  br i1 %2508, label %2509, label %2510

2509:                                             ; preds = %2506
  store i16 2, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 89), align 2, !tbaa !204
  br label %2510

2510:                                             ; preds = %2509, %2506
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #13

declare void @BLI_system_temporary_dir(ptr noundef) local_unnamed_addr #1

declare void @vDM_ColorBand_store(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @init_colorband(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.usub.sat.i8(i8, i8) #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { nounwind }
attributes #17 = { nounwind willreturn memory(read) }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"int", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !35, i64 104}
!39 = !{!"ThemeSpace", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !36, i64 64, !36, i64 68, !36, i64 72, !36, i64 76, !40, i64 80, !42, i64 96, !36, i64 112, !36, i64 116, !36, i64 120, !36, i64 124, !36, i64 128, !36, i64 132, !36, i64 136, !36, i64 140, !36, i64 144, !36, i64 148, !36, i64 152, !36, i64 156, !36, i64 160, !36, i64 164, !36, i64 168, !36, i64 172, !36, i64 176, !36, i64 180, !36, i64 184, !36, i64 188, !36, i64 192, !36, i64 196, !36, i64 200, !36, i64 204, !36, i64 208, !36, i64 212, !36, i64 216, !36, i64 220, !36, i64 224, !36, i64 228, !36, i64 232, !36, i64 236, !36, i64 240, !36, i64 244, !36, i64 248, !36, i64 252, !36, i64 256, !36, i64 260, !36, i64 264, !36, i64 268, !36, i64 272, !36, i64 276, !36, i64 280, !36, i64 284, !36, i64 288, !36, i64 292, !36, i64 296, !36, i64 300, !36, i64 304, !36, i64 308, !36, i64 312, !36, i64 316, !36, i64 320, !36, i64 324, !36, i64 328, !36, i64 332, !36, i64 336, !36, i64 340, !36, i64 344, !36, i64 348, !36, i64 352, !36, i64 356, !36, i64 360, !36, i64 364, !36, i64 368, !36, i64 372, !36, i64 376, !36, i64 380, !36, i64 384, !36, i64 388, !36, i64 392, !36, i64 396, !36, i64 400, !36, i64 404, !36, i64 408, !36, i64 412, !36, i64 416, !36, i64 420, !36, i64 421, !36, i64 422, !36, i64 423, !36, i64 424, !36, i64 428, !36, i64 432, !36, i64 436, !36, i64 440, !36, i64 444, !36, i64 448, !36, i64 452, !36, i64 456, !36, i64 460, !36, i64 464, !36, i64 468, !36, i64 472, !36, i64 476, !36, i64 480, !36, i64 484, !36, i64 488, !36, i64 492, !36, i64 496, !36, i64 500, !36, i64 504, !36, i64 508, !36, i64 512, !36, i64 516, !36, i64 520, !36, i64 524, !36, i64 528, !36, i64 532, !36, i64 536, !36, i64 540, !36, i64 541, !36, i64 545, !36, i64 549, !36, i64 553, !36, i64 557, !36, i64 561, !36, i64 565, !36, i64 569, !36, i64 573, !36, i64 577, !36, i64 581, !36, i64 584, !36, i64 588, !36, i64 592, !36, i64 596, !36, i64 600, !36, i64 604, !36, i64 608, !36, i64 612, !36, i64 616, !36, i64 620, !36, i64 624, !36, i64 628, !36, i64 632, !36, i64 636, !36, i64 640, !36, i64 644, !36, i64 648, !36, i64 652, !36, i64 656, !36, i64 660, !36, i64 664, !36, i64 668, !36, i64 672, !36, i64 676, !36, i64 680, !36, i64 684, !36, i64 688, !36, i64 692, !36, i64 696, !36, i64 700, !36, i64 704, !36, i64 708, !36, i64 712, !36, i64 716}
!40 = !{!"uiPanelColors", !36, i64 0, !36, i64 4, !41, i64 8, !41, i64 10, !35, i64 12}
!41 = !{!"short", !36, i64 0}
!42 = !{!"uiGradientColors", !36, i64 0, !36, i64 4, !35, i64 8, !35, i64 12}
!43 = !{!36, !36, i64 0}
!44 = !{!39, !41, i64 88}
!45 = !{!39, !41, i64 90}
!46 = !{!47, !47, i64 0}
!47 = !{!"any pointer", !36, i64 0}
!48 = !{!49, !47, i64 8536}
!49 = !{!"UserDef", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !35, i64 8468, !41, i64 8472, !41, i64 8474, !41, i64 8476, !41, i64 8478, !41, i64 8480, !41, i64 8482, !35, i64 8484, !35, i64 8488, !35, i64 8492, !41, i64 8496, !41, i64 8498, !35, i64 8500, !35, i64 8504, !35, i64 8508, !35, i64 8512, !35, i64 8516, !35, i64 8520, !35, i64 8524, !41, i64 8528, !41, i64 8530, !41, i64 8532, !41, i64 8534, !50, i64 8536, !50, i64 8552, !50, i64 8568, !50, i64 8584, !50, i64 8600, !50, i64 8616, !50, i64 8632, !36, i64 8648, !41, i64 8712, !41, i64 8714, !41, i64 8716, !41, i64 8718, !41, i64 8720, !41, i64 8722, !41, i64 8724, !41, i64 8726, !36, i64 8728, !41, i64 8896, !41, i64 8898, !41, i64 8900, !41, i64 8902, !41, i64 8904, !41, i64 8906, !41, i64 8908, !41, i64 8910, !35, i64 8912, !35, i64 8916, !41, i64 8920, !41, i64 8922, !41, i64 8924, !41, i64 8926, !41, i64 8928, !41, i64 8930, !41, i64 8932, !41, i64 8934, !41, i64 8936, !41, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !41, i64 8944, !41, i64 8946, !41, i64 8948, !41, i64 8950, !41, i64 8952, !41, i64 8954, !51, i64 8956, !51, i64 8960, !35, i64 8964, !41, i64 8968, !41, i64 8970, !51, i64 8972, !41, i64 8976, !41, i64 8978, !41, i64 8980, !41, i64 8982, !52, i64 8984, !36, i64 9760, !36, i64 9772, !41, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !35, i64 10896, !35, i64 10900, !51, i64 10904, !51, i64 10908, !35, i64 10912, !41, i64 10916, !41, i64 10918, !41, i64 10920, !41, i64 10922, !41, i64 10924, !41, i64 10926, !53, i64 10928}
!50 = !{!"ListBase", !47, i64 0, !47, i64 8}
!51 = !{!"float", !36, i64 0}
!52 = !{!"ColorBand", !41, i64 0, !41, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!53 = !{!"WalkNavigation", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12, !51, i64 16, !51, i64 20, !41, i64 24, !36, i64 26}
!54 = !{!55, !41, i64 666}
!55 = !{!"bTheme", !47, i64 0, !47, i64 8, !36, i64 16, !56, i64 48, !39, i64 960, !39, i64 1680, !39, i64 2400, !39, i64 3120, !39, i64 3840, !39, i64 4560, !39, i64 5280, !39, i64 6000, !39, i64 6720, !39, i64 7440, !39, i64 8160, !39, i64 8880, !39, i64 9600, !39, i64 10320, !39, i64 11040, !39, i64 11760, !39, i64 12480, !36, i64 13200, !35, i64 13520, !35, i64 13524}
!56 = !{!"ThemeUI", !57, i64 0, !57, i64 32, !57, i64 64, !57, i64 96, !57, i64 128, !57, i64 160, !57, i64 192, !57, i64 224, !57, i64 256, !57, i64 288, !57, i64 320, !57, i64 352, !57, i64 384, !57, i64 416, !57, i64 448, !57, i64 480, !57, i64 512, !57, i64 544, !58, i64 576, !40, i64 608, !36, i64 624, !51, i64 628, !41, i64 632, !36, i64 634, !36, i64 640, !51, i64 896, !36, i64 900, !36, i64 904, !36, i64 908}
!57 = !{!"uiWidgetColors", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30}
!58 = !{!"uiWidgetStateColors", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !51, i64 24, !51, i64 28}
!59 = !{!55, !41, i64 664}
!60 = !{!55, !51, i64 676}
!61 = !{!55, !41, i64 680}
!62 = !{!55, !41, i64 1770}
!63 = !{!55, !41, i64 1768}
!64 = !{!55, !36, i64 2100}
!65 = !{!55, !36, i64 2101}
!66 = !{!55, !36, i64 2102}
!67 = !{!55, !35, i64 1784}
!68 = !{i64 0, i64 4, !43, i64 4, i64 4, !43, i64 8, i64 4, !43, i64 12, i64 4, !43, i64 16, i64 4, !43, i64 20, i64 4, !43, i64 24, i64 4, !43, i64 28, i64 4, !43, i64 32, i64 4, !43, i64 36, i64 4, !43, i64 40, i64 4, !43, i64 44, i64 4, !43, i64 48, i64 4, !43, i64 52, i64 4, !43, i64 56, i64 4, !43, i64 60, i64 4, !43, i64 64, i64 4, !43, i64 68, i64 4, !43, i64 72, i64 4, !43, i64 76, i64 4, !43, i64 80, i64 4, !43, i64 84, i64 4, !43, i64 88, i64 2, !69, i64 90, i64 2, !69, i64 92, i64 4, !34, i64 96, i64 4, !43, i64 100, i64 4, !43, i64 104, i64 4, !34, i64 108, i64 4, !34, i64 112, i64 4, !43, i64 116, i64 4, !43, i64 120, i64 4, !43, i64 124, i64 4, !43, i64 128, i64 4, !43, i64 132, i64 4, !43, i64 136, i64 4, !43, i64 140, i64 4, !43, i64 144, i64 4, !43, i64 148, i64 4, !43, i64 152, i64 4, !43, i64 156, i64 4, !43, i64 160, i64 4, !43, i64 164, i64 4, !43, i64 168, i64 4, !43, i64 172, i64 4, !43, i64 176, i64 4, !43, i64 180, i64 4, !43, i64 184, i64 4, !43, i64 188, i64 4, !43, i64 192, i64 4, !43, i64 196, i64 4, !43, i64 200, i64 4, !43, i64 204, i64 4, !43, i64 208, i64 4, !43, i64 212, i64 4, !43, i64 216, i64 4, !43, i64 220, i64 4, !43, i64 224, i64 4, !43, i64 228, i64 4, !43, i64 232, i64 4, !43, i64 236, i64 4, !43, i64 240, i64 4, !43, i64 244, i64 4, !43, i64 248, i64 4, !43, i64 252, i64 4, !43, i64 256, i64 4, !43, i64 260, i64 4, !43, i64 264, i64 4, !43, i64 268, i64 4, !43, i64 272, i64 4, !43, i64 276, i64 4, !43, i64 280, i64 4, !43, i64 284, i64 4, !43, i64 288, i64 4, !43, i64 292, i64 4, !43, i64 296, i64 4, !43, i64 300, i64 4, !43, i64 304, i64 4, !43, i64 308, i64 4, !43, i64 312, i64 4, !43, i64 316, i64 4, !43, i64 320, i64 4, !43, i64 324, i64 4, !43, i64 328, i64 4, !43, i64 332, i64 4, !43, i64 336, i64 4, !43, i64 340, i64 4, !43, i64 344, i64 4, !43, i64 348, i64 4, !43, i64 352, i64 4, !43, i64 356, i64 4, !43, i64 360, i64 4, !43, i64 364, i64 4, !43, i64 368, i64 4, !43, i64 372, i64 4, !43, i64 376, i64 4, !43, i64 380, i64 4, !43, i64 384, i64 4, !43, i64 388, i64 4, !43, i64 392, i64 4, !43, i64 396, i64 4, !43, i64 400, i64 4, !43, i64 404, i64 4, !43, i64 408, i64 4, !43, i64 412, i64 4, !43, i64 416, i64 4, !43, i64 420, i64 1, !43, i64 421, i64 1, !43, i64 422, i64 1, !43, i64 423, i64 1, !43, i64 424, i64 4, !43, i64 428, i64 4, !43, i64 432, i64 4, !43, i64 436, i64 4, !43, i64 440, i64 4, !43, i64 444, i64 4, !43, i64 448, i64 4, !43, i64 452, i64 4, !43, i64 456, i64 4, !43, i64 460, i64 4, !43, i64 464, i64 4, !43, i64 468, i64 4, !43, i64 472, i64 4, !43, i64 476, i64 4, !43, i64 480, i64 4, !43, i64 484, i64 4, !43, i64 488, i64 4, !43, i64 492, i64 4, !43, i64 496, i64 4, !43, i64 500, i64 4, !43, i64 504, i64 4, !43, i64 508, i64 4, !43, i64 512, i64 4, !43, i64 516, i64 4, !43, i64 520, i64 4, !43, i64 524, i64 4, !43, i64 528, i64 4, !43, i64 532, i64 4, !43, i64 536, i64 4, !43, i64 540, i64 1, !43, i64 541, i64 4, !43, i64 545, i64 4, !43, i64 549, i64 4, !43, i64 553, i64 4, !43, i64 557, i64 4, !43, i64 561, i64 4, !43, i64 565, i64 4, !43, i64 569, i64 4, !43, i64 573, i64 4, !43, i64 577, i64 4, !43, i64 581, i64 3, !43, i64 584, i64 4, !43, i64 588, i64 4, !43, i64 592, i64 4, !43, i64 596, i64 4, !43, i64 600, i64 4, !43, i64 604, i64 4, !43, i64 608, i64 4, !43, i64 612, i64 4, !43, i64 616, i64 4, !43, i64 620, i64 4, !43, i64 624, i64 4, !43, i64 628, i64 4, !43, i64 632, i64 4, !43, i64 636, i64 4, !43, i64 640, i64 4, !43, i64 644, i64 4, !43, i64 648, i64 4, !43, i64 652, i64 4, !43, i64 656, i64 4, !43, i64 660, i64 4, !43, i64 664, i64 4, !43, i64 668, i64 4, !43, i64 672, i64 4, !43, i64 676, i64 4, !43, i64 680, i64 4, !43, i64 684, i64 4, !43, i64 688, i64 4, !43, i64 692, i64 4, !43, i64 696, i64 4, !43, i64 700, i64 4, !43, i64 704, i64 4, !43, i64 708, i64 4, !43, i64 712, i64 4, !43, i64 716, i64 4, !43}
!69 = !{!41, !41, i64 0}
!70 = !{!55, !36, i64 3540}
!71 = !{!55, !36, i64 3660}
!72 = !{!55, !36, i64 7140}
!73 = !{!55, !36, i64 7142}
!74 = !{!55, !36, i64 7260}
!75 = !{!55, !36, i64 10023}
!76 = !{!55, !36, i64 13020}
!77 = !{!78, !41, i64 12}
!78 = !{!"ThemeWireColor", !36, i64 0, !36, i64 4, !36, i64 8, !41, i64 12, !41, i64 14}
!79 = distinct !{!79, !80, !81}
!80 = !{!"llvm.loop.mustprogress"}
!81 = !{!"llvm.loop.unroll.disable"}
!82 = distinct !{!82, !80, !81}
!83 = !{!51, !51, i64 0}
!84 = !{!49, !51, i64 10908}
!85 = !{!49, !35, i64 8524}
!86 = !{!87, !47, i64 0}
!87 = !{!"Global", !47, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !50, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !36, i64 2090, !41, i64 2092, !35, i64 2096, !35, i64 2100, !36, i64 2104, !35, i64 2108, !35, i64 2112, !36, i64 2116}
!88 = !{!49, !41, i64 8482}
!89 = !{!49, !41, i64 8532}
!90 = !{!49, !41, i64 8534}
!91 = !{!49, !41, i64 8724}
!92 = !{!49, !41, i64 8726}
!93 = !{!49, !35, i64 8500}
!94 = !{!49, !41, i64 8976}
!95 = !{!49, !35, i64 16}
!96 = !{!49, !41, i64 8896}
!97 = !{!49, !41, i64 8902}
!98 = !{!49, !41, i64 8900}
!99 = !{!49, !41, i64 8922}
!100 = !{!49, !51, i64 10904}
!101 = !{!49, !35, i64 8}
!102 = !{!103, !41, i64 1040}
!103 = !{!"Main", !47, i64 0, !47, i64 8, !36, i64 16, !41, i64 1040, !41, i64 1042, !41, i64 1044, !41, i64 1046, !104, i64 1048, !36, i64 1056, !41, i64 1072, !47, i64 1080, !50, i64 1088, !50, i64 1104, !50, i64 1120, !50, i64 1136, !50, i64 1152, !50, i64 1168, !50, i64 1184, !50, i64 1200, !50, i64 1216, !50, i64 1232, !50, i64 1248, !50, i64 1264, !50, i64 1280, !50, i64 1296, !50, i64 1312, !50, i64 1328, !50, i64 1344, !50, i64 1360, !50, i64 1376, !50, i64 1392, !50, i64 1408, !50, i64 1424, !50, i64 1440, !50, i64 1456, !50, i64 1472, !50, i64 1488, !50, i64 1504, !50, i64 1520, !50, i64 1536, !50, i64 1552, !50, i64 1568, !50, i64 1584, !50, i64 1600, !50, i64 1616, !36, i64 1632, !47, i64 1888, !47, i64 1896}
!104 = !{!"long", !36, i64 0}
!105 = !{!49, !35, i64 12}
!106 = !{!49, !35, i64 8484}
!107 = !{!49, !41, i64 8712}
!108 = distinct !{!108, !80, !81}
!109 = distinct !{!109, !80, !81}
!110 = distinct !{!110, !80, !81}
!111 = distinct !{!111, !80, !81}
!112 = distinct !{!112, !80, !81}
!113 = !{!49, !41, i64 8924}
!114 = distinct !{!114, !80, !81}
!115 = !{!49, !41, i64 8926}
!116 = !{!49, !41, i64 8928}
!117 = distinct !{!117, !80, !81}
!118 = !{!49, !41, i64 8930}
!119 = !{!103, !41, i64 1042}
!120 = distinct !{!120, !80, !81}
!121 = !{!49, !41, i64 8984}
!122 = distinct !{!122, !80, !81}
!123 = distinct !{!123, !80, !81}
!124 = distinct !{!124, !80, !81}
!125 = distinct !{!125, !80, !81}
!126 = !{!49, !41, i64 8716}
!127 = !{!49, !41, i64 8718}
!128 = !{!49, !36, i64 8940}
!129 = distinct !{!129, !80, !81}
!130 = !{!49, !35, i64 8516}
!131 = !{!49, !35, i64 8512}
!132 = !{!49, !35, i64 8508}
!133 = !{!49, !41, i64 8480}
!134 = distinct !{!134, !80, !81}
!135 = !{!49, !41, i64 8908}
!136 = !{!49, !36, i64 8941}
!137 = distinct !{!137, !80, !81}
!138 = distinct !{!138, !80, !81}
!139 = !{i64 0, i64 4, !43, i64 4, i64 4, !43, i64 8, i64 4, !43, i64 12, i64 4, !43, i64 16, i64 4, !43, i64 20, i64 4, !43, i64 24, i64 2, !69, i64 26, i64 2, !69, i64 28, i64 2, !69, i64 30, i64 2, !69}
!140 = distinct !{!140, !80, !81}
!141 = distinct !{!141, !80, !81}
!142 = distinct !{!142, !80, !81}
!143 = !{!49, !41, i64 8978}
!144 = distinct !{!144, !80, !81}
!145 = distinct !{!145, !80, !81}
!146 = distinct !{!146, !80, !81}
!147 = !{!55, !51, i64 944}
!148 = distinct !{!148, !80, !81}
!149 = distinct !{!149, !80, !81}
!150 = !{!49, !41, i64 8952}
!151 = distinct !{!151, !80, !81}
!152 = distinct !{!152, !80, !81}
!153 = distinct !{!153, !80, !81}
!154 = distinct !{!154, !80, !81}
!155 = distinct !{!155, !80, !81}
!156 = distinct !{!156, !80, !81}
!157 = distinct !{!157, !80, !81}
!158 = distinct !{!158, !80, !81}
!159 = distinct !{!159, !80, !81}
!160 = distinct !{!160, !80, !81}
!161 = distinct !{!161, !80, !81}
!162 = !{!49, !35, i64 0}
!163 = distinct !{!163, !80, !81}
!164 = !{!49, !41, i64 8904}
!165 = !{!49, !41, i64 8906}
!166 = !{!49, !35, i64 8912}
!167 = !{!49, !41, i64 8920}
!168 = !{!49, !41, i64 8478}
!169 = !{!49, !41, i64 8944}
!170 = !{!49, !41, i64 8946}
!171 = !{!49, !41, i64 8472}
!172 = !{!49, !41, i64 8910}
!173 = !{!49, !41, i64 8948}
!174 = !{!49, !41, i64 8950}
!175 = !{!49, !51, i64 8956}
!176 = !{!49, !35, i64 8964}
!177 = !{!49, !51, i64 8960}
!178 = !{!49, !41, i64 9788}
!179 = distinct !{!179, !80, !81}
!180 = distinct !{!180, !80, !81}
!181 = !{i64 0, i64 4, !43, i64 4, i64 4, !43, i64 8, i64 2, !69, i64 10, i64 2, !69, i64 12, i64 4, !34}
!182 = distinct !{!182, !80, !81}
!183 = distinct !{!183, !80, !81}
!184 = distinct !{!184, !80, !81}
!185 = distinct !{!185, !80, !81}
!186 = distinct !{!186, !80, !81}
!187 = distinct !{!187, !80, !81}
!188 = distinct !{!188, !80, !81}
!189 = distinct !{!189, !80, !81}
!190 = distinct !{!190, !80, !81}
!191 = distinct !{!191, !80, !81}
!192 = distinct !{!192, !80, !81}
!193 = distinct !{!193, !80, !81}
!194 = distinct !{!194, !80, !81}
!195 = distinct !{!195, !80, !81}
!196 = distinct !{!196, !80, !81}
!197 = distinct !{!197, !80, !81}
!198 = !{!49, !41, i64 10924}
!199 = !{!49, !41, i64 10926}
!200 = !{!49, !41, i64 10920}
!201 = distinct !{!201, !80, !81}
!202 = distinct !{!202, !80, !81}
!203 = distinct !{!203, !80, !81}
!204 = !{!49, !41, i64 8970}
