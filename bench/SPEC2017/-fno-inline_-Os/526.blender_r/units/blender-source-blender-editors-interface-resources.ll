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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_resources_init() local_unnamed_addr #0 {
  tail call void @UI_icons_init(i32 noundef 846) #15
  ret void
}

; Function Attrs: optsize
declare void @UI_icons_init(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_resources_free() local_unnamed_addr #0 {
  tail call void @UI_icons_free() #15
  ret void
}

; Function Attrs: optsize
declare void @UI_icons_free() local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_theme_init_default() local_unnamed_addr #0 {
  %1 = tail call ptr @BLI_findstring(ptr noundef nonnull getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), ptr noundef nonnull @.str, i32 noundef 16) #15
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %5 = tail call ptr %4(i64 noundef 13528, ptr noundef nonnull @.str.1) #15
  tail call void @BLI_addtail(ptr noundef nonnull getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), ptr noundef %5) #15
  %6 = getelementptr inbounds %struct.bTheme, ptr %5, i64 0, i32 2
  store i64 32770348699510084, ptr %6, align 1
  br label %7

7:                                                ; preds = %3, %0
  %8 = phi ptr [ %5, %3 ], [ %1, %0 ]
  tail call void @UI_SetTheme(i32 noundef 0, i32 noundef 0) #16
  %9 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 3
  tail call void @ui_widget_color_init(ptr noundef nonnull %9) #15
  %10 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 3, i32 24
  store i8 0, ptr %10, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 3, i32 19
  %12 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 3, i32 19, i32 3
  store i16 0, ptr %12, align 2, !tbaa !48
  %13 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 3, i32 19, i32 2
  store i16 0, ptr %13, align 8, !tbaa !54
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %11, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 25) #16
  %14 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 3, i32 20
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %14, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext 5) #16
  %15 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 3, i32 26
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %15, i8 noundef zeroext -36, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %16 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 3, i32 27
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %16, i8 noundef zeroext 0, i8 noundef zeroext -36, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %17 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 3, i32 28
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %17, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -36, i8 noundef zeroext -1) #16
  %18 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 3, i32 21
  store float 5.000000e-01, ptr %18, align 4, !tbaa !55
  %19 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 3, i32 22
  store i16 12, ptr %19, align 8, !tbaa !56
  tail call fastcc void @ui_theme_init_boneColorSets(ptr noundef nonnull %8) #16
  tail call fastcc void @ui_theme_init_new(ptr noundef nonnull %8) #16
  %20 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5
  %21 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 20
  %22 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 20, i32 3
  store i16 0, ptr %22, align 2, !tbaa !57
  %23 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 20, i32 2
  store i16 0, ptr %23, align 8, !tbaa !58
  %24 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 20, i32 1
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %24, i8 noundef zeroext 114, i8 noundef zeroext 114, i8 noundef zeroext 114, i8 noundef zeroext 127) #16
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %21, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 2) #16
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %20, i8 noundef zeroext 57, i8 noundef zeroext 57, i8 noundef zeroext 57, i8 noundef zeroext -1) #16
  %25 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 2
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %25, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %26 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 3
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %26, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #16
  %27 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 4
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %27, i8 noundef zeroext 114, i8 noundef zeroext 114, i8 noundef zeroext 114, i8 noundef zeroext -1) #16
  %28 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 12
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %28, i8 noundef zeroext 114, i8 noundef zeroext 114, i8 noundef zeroext 114, i8 noundef zeroext 127) #16
  %29 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 22
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %29, i8 noundef zeroext -96, i8 noundef zeroext -96, i8 noundef zeroext -96, i8 noundef zeroext 100) #16
  %30 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 23
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %30, i8 noundef zeroext 127, i8 noundef zeroext 112, i8 noundef zeroext 112, i8 noundef zeroext 100) #16
  %31 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 25
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %31, i8 noundef zeroext 64, i8 noundef zeroext 64, i8 noundef zeroext 64, i8 noundef zeroext -1) #16
  %32 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 26
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %32, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %33 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 27
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %33, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %34 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 28
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %34, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %35 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 30
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %35, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 40) #16
  %36 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 31
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %36, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %37 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 33
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %37, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %38 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 32
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %38, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %39 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 29
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %39, i8 noundef zeroext -15, i8 noundef zeroext 88, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %40 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 34
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %40, i8 noundef zeroext -1, i8 noundef zeroext -86, i8 noundef zeroext 64, i8 noundef zeroext -1) #16
  %41 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 35
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %41, i8 noundef zeroext 8, i8 noundef zeroext 48, i8 noundef zeroext 8, i8 noundef zeroext -1) #16
  %42 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 36
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %42, i8 noundef zeroext 85, i8 noundef zeroext -69, i8 noundef zeroext 85, i8 noundef zeroext -1) #16
  %43 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 37
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %43, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #16
  %44 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 38
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %44, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %45 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 39
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %45, i8 noundef zeroext -1, i8 noundef zeroext -123, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %46 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 40
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %46, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %47 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 99
  store i8 3, ptr %47, align 4, !tbaa !59
  %48 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 100
  store i8 1, ptr %48, align 1, !tbaa !60
  %49 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 41
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %49, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %50 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 42
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %50, i8 noundef zeroext -1, i8 noundef zeroext -96, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %51 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 43
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %51, i8 noundef zeroext -37, i8 noundef zeroext 37, i8 noundef zeroext 18, i8 noundef zeroext -1) #16
  %52 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 45
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %52, i8 noundef zeroext 75, i8 noundef zeroext 75, i8 noundef zeroext 75, i8 noundef zeroext -1) #16
  %53 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 47
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %53, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 18) #16
  %54 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 48
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %54, i8 noundef zeroext -1, i8 noundef zeroext -123, i8 noundef zeroext 0, i8 noundef zeroext 60) #16
  %55 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 54
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %55, i8 noundef zeroext 34, i8 noundef zeroext -35, i8 noundef zeroext -35, i8 noundef zeroext -1) #16
  %56 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 55
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %56, i8 noundef zeroext 35, i8 noundef zeroext 97, i8 noundef zeroext -35, i8 noundef zeroext -1) #16
  %57 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 56
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %57, i8 noundef zeroext -35, i8 noundef zeroext 35, i8 noundef zeroext -35, i8 noundef zeroext -1) #16
  %58 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 49
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %58, i8 noundef zeroext -1, i8 noundef zeroext -123, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %59 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 128
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %59, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -128) #16
  %60 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 46
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %60, i8 noundef zeroext -52, i8 noundef zeroext 0, i8 noundef zeroext -103, i8 noundef zeroext -1) #16
  %61 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 44
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %61, i8 noundef zeroext 0, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #16
  %62 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 6
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %62, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %63 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 7
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %63, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #16
  %64 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 14
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %64, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %65 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 15
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %65, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #16
  %66 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 13
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %66, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %67 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 1
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %67, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %68 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 63
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %68, i8 noundef zeroext 127, i8 noundef zeroext -1, i8 noundef zeroext 127, i8 noundef zeroext -1) #16
  %69 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 64
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %69, i8 noundef zeroext 127, i8 noundef zeroext -1, i8 noundef zeroext 127, i8 noundef zeroext 51) #16
  %70 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 177
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %70, i8 noundef zeroext 127, i8 noundef zeroext -1, i8 noundef zeroext 127, i8 noundef zeroext 127) #16
  %71 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 176
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %71, i8 noundef zeroext -1, i8 noundef zeroext 127, i8 noundef zeroext 127, i8 noundef zeroext 127) #16
  %72 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 101
  store i8 4, ptr %72, align 2, !tbaa !61
  %73 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 50
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %73, i8 noundef zeroext 32, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %74 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 51
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %74, i8 noundef zeroext 32, i8 noundef zeroext 32, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %75 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 53
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %75, i8 noundef zeroext 0, i8 noundef zeroext 32, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %76 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 52
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %76, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -128, i8 noundef zeroext -1) #16
  %77 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 62
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %77, i8 noundef zeroext 96, i8 noundef zeroext -64, i8 noundef zeroext 64, i8 noundef zeroext -1) #16
  %78 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 65
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %78, i8 noundef zeroext -112, i8 noundef zeroext -112, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %79 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 66
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %79, i8 noundef zeroext -128, i8 noundef zeroext 48, i8 noundef zeroext 96, i8 noundef zeroext -1) #16
  %80 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 68
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %80, i8 noundef zeroext -16, i8 noundef zeroext -1, i8 noundef zeroext 64, i8 noundef zeroext -1) #16
  %81 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 69
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %81, i8 noundef zeroext -16, i8 noundef zeroext -112, i8 noundef zeroext -96, i8 noundef zeroext -1) #16
  tail call fastcc void @ui_theme_space_init_handles_color(ptr noundef nonnull %20) #16
  %82 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 67
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %82, i8 noundef zeroext -37, i8 noundef zeroext 37, i8 noundef zeroext 18, i8 noundef zeroext -1) #16
  %83 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 70
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %83, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #16
  %84 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 57
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %84, i8 noundef zeroext -56, i8 noundef zeroext -56, i8 noundef zeroext -56, i8 noundef zeroext -1) #16
  %85 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 58
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %85, i8 noundef zeroext 80, i8 noundef zeroext -56, i8 noundef zeroext -1, i8 noundef zeroext 80) #16
  %86 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 59
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %86, i8 noundef zeroext -116, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext 80) #16
  %87 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 139
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %87, i8 noundef zeroext -56, i8 noundef zeroext -56, i8 noundef zeroext -56, i8 noundef zeroext -1) #16
  %88 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 142
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %88, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %89 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 155
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %89, i8 noundef zeroext -76, i8 noundef zeroext 77, i8 noundef zeroext 77, i8 noundef zeroext -1) #16
  %90 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 21
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %90, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %91 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 21, i32 1
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %91, i8 noundef zeroext 58, i8 noundef zeroext 58, i8 noundef zeroext 58, i8 noundef zeroext -1) #16
  %92 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 5, i32 21, i32 2
  store i32 0, ptr %92, align 8, !tbaa !62
  %93 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(720) %93, ptr noundef nonnull align 8 dereferenceable(720) %20, i64 720, i1 false), !tbaa.struct !63
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %93, i8 noundef zeroext 114, i8 noundef zeroext 114, i8 noundef zeroext 114, i8 noundef zeroext -1) #16
  %94 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(720) %94, ptr noundef nonnull align 8 dereferenceable(720) %20, i64 720, i1 false), !tbaa.struct !63
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %94, i8 noundef zeroext 107, i8 noundef zeroext 107, i8 noundef zeroext 107, i8 noundef zeroext -1) #16
  %95 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 16
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %95, i8 noundef zeroext 102, i8 noundef zeroext 102, i8 noundef zeroext 102, i8 noundef zeroext -1) #16
  %96 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 25
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %96, i8 noundef zeroext 94, i8 noundef zeroext 94, i8 noundef zeroext 94, i8 noundef zeroext -1) #16
  %97 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 22
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %97, i8 noundef zeroext -106, i8 noundef zeroext -106, i8 noundef zeroext -106, i8 noundef zeroext 100) #16
  %98 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 23
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %98, i8 noundef zeroext 112, i8 noundef zeroext 112, i8 noundef zeroext 112, i8 noundef zeroext 100) #16
  %99 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 38
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %99, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %100 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 39
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %100, i8 noundef zeroext -1, i8 noundef zeroext -123, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %101 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 24
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %101, i8 noundef zeroext 96, i8 noundef zeroext -64, i8 noundef zeroext 64, i8 noundef zeroext -1) #16
  %102 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 99
  store i8 6, ptr %102, align 4, !tbaa !65
  %103 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 129
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %103, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %104 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 130
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %104, i8 noundef zeroext -1, i8 noundef zeroext -123, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %105 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 75
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %105, i8 noundef zeroext -103, i8 noundef zeroext 64, i8 noundef zeroext 48, i8 noundef zeroext -1) #16
  %106 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 80
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %106, i8 noundef zeroext -16, i8 noundef zeroext -81, i8 noundef zeroext -112, i8 noundef zeroext -1) #16
  %107 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 132
  store i8 5, ptr %107, align 4, !tbaa !66
  %108 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 81
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %108, i8 noundef zeroext 82, i8 noundef zeroext 96, i8 noundef zeroext 110, i8 noundef zeroext -1) #16
  %109 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 82
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %109, i8 noundef zeroext 124, i8 noundef zeroext -119, i8 noundef zeroext -106, i8 noundef zeroext -1) #16
  %110 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 35
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %110, i8 noundef zeroext 79, i8 noundef zeroext 101, i8 noundef zeroext 73, i8 noundef zeroext -1) #16
  %111 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 7, i32 36
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %111, i8 noundef zeroext -121, i8 noundef zeroext -79, i8 noundef zeroext 125, i8 noundef zeroext -1) #16
  %112 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(720) %112, ptr noundef nonnull align 8 dereferenceable(720) %94, i64 720, i1 false), !tbaa.struct !63
  %113 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9, i32 60
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %113, i8 noundef zeroext 12, i8 noundef zeroext 10, i8 noundef zeroext 10, i8 noundef zeroext -128) #16
  %114 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9, i32 61
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %114, i8 noundef zeroext -1, i8 noundef zeroext -116, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %115 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9, i32 156
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %115, i8 noundef zeroext -52, i8 noundef zeroext 112, i8 noundef zeroext 26, i8 noundef zeroext 102) #16
  %116 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9, i32 83
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %116, i8 noundef zeroext -24, i8 noundef zeroext -24, i8 noundef zeroext -24, i8 noundef zeroext -1) #16
  %117 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9, i32 87
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %117, i8 noundef zeroext -1, i8 noundef zeroext -66, i8 noundef zeroext 50, i8 noundef zeroext -1) #16
  %118 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9, i32 84
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %118, i8 noundef zeroext -24, i8 noundef zeroext -77, i8 noundef zeroext -52, i8 noundef zeroext -1) #16
  %119 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9, i32 88
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %119, i8 noundef zeroext -14, i8 noundef zeroext -128, i8 noundef zeroext -128, i8 noundef zeroext -1) #16
  %120 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9, i32 85
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %120, i8 noundef zeroext -77, i8 noundef zeroext -37, i8 noundef zeroext -24, i8 noundef zeroext -1) #16
  %121 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9, i32 89
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %121, i8 noundef zeroext 84, i8 noundef zeroext -65, i8 noundef zeroext -19, i8 noundef zeroext -1) #16
  %122 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9, i32 86
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %122, i8 noundef zeroext -108, i8 noundef zeroext -27, i8 noundef zeroext 117, i8 noundef zeroext -1) #16
  %123 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9, i32 90
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %123, i8 noundef zeroext 97, i8 noundef zeroext -64, i8 noundef zeroext 66, i8 noundef zeroext -1) #16
  %124 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9, i32 91
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %124, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %125 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 9, i32 92
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %125, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %126 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(720) %126, ptr noundef nonnull align 8 dereferenceable(720) %112, i64 720, i1 false), !tbaa.struct !63
  %127 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 10, i32 156
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %127, i8 noundef zeroext -52, i8 noundef zeroext 112, i8 noundef zeroext 26, i8 noundef zeroext 102) #16
  %128 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 10, i32 157
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %128, i8 noundef zeroext -103, i8 noundef zeroext -121, i8 noundef zeroext 97, i8 noundef zeroext 77) #16
  %129 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 10, i32 158
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %129, i8 noundef zeroext 77, i8 noundef zeroext -13, i8 noundef zeroext 26, i8 noundef zeroext 77) #16
  %130 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 10, i32 159
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %130, i8 noundef zeroext -39, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %131 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 10, i32 160
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %131, i8 noundef zeroext 28, i8 noundef zeroext 38, i8 noundef zeroext 48, i8 noundef zeroext -1) #16
  %132 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 10, i32 161
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %132, i8 noundef zeroext 46, i8 noundef zeroext 117, i8 noundef zeroext -37, i8 noundef zeroext -1) #16
  %133 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 10, i32 162
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %133, i8 noundef zeroext 51, i8 noundef zeroext 38, i8 noundef zeroext 66, i8 noundef zeroext -1) #16
  %134 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 10, i32 163
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %134, i8 noundef zeroext 105, i8 noundef zeroext 33, i8 noundef zeroext -106, i8 noundef zeroext -1) #16
  %135 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 10, i32 164
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %135, i8 noundef zeroext 43, i8 noundef zeroext 61, i8 noundef zeroext 61, i8 noundef zeroext -1) #16
  %136 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 10, i32 165
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %136, i8 noundef zeroext 31, i8 noundef zeroext 122, i8 noundef zeroext 122, i8 noundef zeroext -1) #16
  %137 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 10, i32 91
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %137, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %138 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 10, i32 92
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %138, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %139 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(720) %139, ptr noundef nonnull align 8 dereferenceable(720) %20, i64 720, i1 false), !tbaa.struct !63
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %139, i8 noundef zeroext 76, i8 noundef zeroext 76, i8 noundef zeroext 76, i8 noundef zeroext -1) #16
  %140 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 6, i32 16
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %140, i8 noundef zeroext 102, i8 noundef zeroext 102, i8 noundef zeroext 102, i8 noundef zeroext -1) #16
  %141 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 6, i32 2
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %141, i8 noundef zeroext -6, i8 noundef zeroext -6, i8 noundef zeroext -6, i8 noundef zeroext -1) #16
  %142 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 6, i32 3
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %142, i8 noundef zeroext 15, i8 noundef zeroext 15, i8 noundef zeroext 15, i8 noundef zeroext -1) #16
  %143 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 6, i32 34
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %143, i8 noundef zeroext -126, i8 noundef zeroext -126, i8 noundef zeroext -126, i8 noundef zeroext -1) #16
  %144 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 6, i32 24
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %144, i8 noundef zeroext -1, i8 noundef zeroext -116, i8 noundef zeroext 25, i8 noundef zeroext -1) #16
  %145 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 6, i32 25
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %145, i8 noundef zeroext -6, i8 noundef zeroext -6, i8 noundef zeroext -6, i8 noundef zeroext -1) #16
  %146 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 6, i32 122
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %146, i8 noundef zeroext -6, i8 noundef zeroext -6, i8 noundef zeroext -6, i8 noundef zeroext -1) #16
  %147 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 6, i32 119
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %147, i8 noundef zeroext -6, i8 noundef zeroext -6, i8 noundef zeroext -6, i8 noundef zeroext -1) #16
  %148 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 6, i32 123
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %148, i8 noundef zeroext -6, i8 noundef zeroext -6, i8 noundef zeroext -6, i8 noundef zeroext -1) #16
  %149 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(720) %149, ptr noundef nonnull align 8 dereferenceable(720) %20, i64 720, i1 false), !tbaa.struct !63
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %149, i8 noundef zeroext 116, i8 noundef zeroext 116, i8 noundef zeroext 116, i8 noundef zeroext -1) #16
  %150 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 11, i32 119
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %150, i8 noundef zeroext 81, i8 noundef zeroext 105, i8 noundef zeroext -121, i8 noundef zeroext -1) #16
  %151 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 11, i32 120
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %151, i8 noundef zeroext 32, i8 noundef zeroext 32, i8 noundef zeroext -113, i8 noundef zeroext -1) #16
  %152 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 11, i32 121
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %152, i8 noundef zeroext -104, i8 noundef zeroext 78, i8 noundef zeroext 62, i8 noundef zeroext -1) #16
  %153 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 11, i32 122
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %153, i8 noundef zeroext 109, i8 noundef zeroext 88, i8 noundef zeroext -127, i8 noundef zeroext -1) #16
  %154 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 11, i32 123
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %154, i8 noundef zeroext 78, i8 noundef zeroext -104, i8 noundef zeroext 62, i8 noundef zeroext -1) #16
  %155 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 11, i32 124
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %155, i8 noundef zeroext 46, i8 noundef zeroext -113, i8 noundef zeroext -113, i8 noundef zeroext -1) #16
  %156 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 11, i32 125
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %156, i8 noundef zeroext -87, i8 noundef zeroext 84, i8 noundef zeroext 124, i8 noundef zeroext -1) #16
  %157 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 11, i32 126
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %157, i8 noundef zeroext -94, i8 noundef zeroext 95, i8 noundef zeroext 111, i8 noundef zeroext -1) #16
  %158 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 11, i32 127
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %158, i8 noundef zeroext 109, i8 noundef zeroext -111, i8 noundef zeroext -125, i8 noundef zeroext -1) #16
  %159 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 11, i32 144
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %159, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %160 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 11, i32 25
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %160, i8 noundef zeroext 64, i8 noundef zeroext 64, i8 noundef zeroext 64, i8 noundef zeroext -1) #16
  %161 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(720) %161, ptr noundef nonnull align 8 dereferenceable(720) %20, i64 720, i1 false), !tbaa.struct !63
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %161, i8 noundef zeroext 53, i8 noundef zeroext 53, i8 noundef zeroext 53, i8 noundef zeroext -1) #16
  %162 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 38
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %162, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %163 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 39
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %163, i8 noundef zeroext -1, i8 noundef zeroext -123, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %164 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 28
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %164, i8 noundef zeroext -64, i8 noundef zeroext -64, i8 noundef zeroext -64, i8 noundef zeroext -1) #16
  %165 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 42
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %165, i8 noundef zeroext -1, i8 noundef zeroext -123, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %166 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 99
  store i8 3, ptr %166, align 4, !tbaa !67
  %167 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 101
  store i8 3, ptr %167, align 2, !tbaa !68
  %168 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 47
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %168, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext 10) #16
  %169 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 48
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %169, i8 noundef zeroext -1, i8 noundef zeroext -123, i8 noundef zeroext 0, i8 noundef zeroext 60) #16
  %170 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 128
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %170, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -128) #16
  %171 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 144
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %171, i8 noundef zeroext 114, i8 noundef zeroext 114, i8 noundef zeroext 114, i8 noundef zeroext -1) #16
  %172 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 145
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %172, i8 noundef zeroext 127, i8 noundef zeroext 127, i8 noundef zeroext 0, i8 noundef zeroext 51) #16
  %173 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 146
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %173, i8 noundef zeroext -1, i8 noundef zeroext 0, i8 noundef zeroext -1, i8 noundef zeroext 51) #16
  %174 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 147
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %174, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1, i8 noundef zeroext 51) #16
  %175 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 148
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %175, i8 noundef zeroext 0, i8 noundef zeroext -1, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %176 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 149
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %176, i8 noundef zeroext -1, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %177 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 150
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %177, i8 noundef zeroext -31, i8 noundef zeroext -46, i8 noundef zeroext -61, i8 noundef zeroext 35) #16
  %178 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 152
  tail call fastcc void @rgba_char_args_test_set(ptr noundef nonnull %178, i8 noundef zeroext 96, i8 noundef zeroext 96, i8 noundef zeroext 96, i8 noundef zeroext -1) #16
  %179 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 151
  tail call fastcc void @rgba_char_args_test_set(ptr noundef nonnull %179, i8 noundef zeroext 112, i8 noundef zeroext 112, i8 noundef zeroext 112, i8 noundef zeroext -1) #16
  tail call fastcc void @ui_theme_space_init_handles_color(ptr noundef nonnull %161) #16
  %180 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 12, i32 132
  store i8 5, ptr %180, align 4, !tbaa !69
  %181 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(720) %181, ptr noundef nonnull align 8 dereferenceable(720) %20, i64 720, i1 false), !tbaa.struct !63
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %181, i8 noundef zeroext -103, i8 noundef zeroext -103, i8 noundef zeroext -103, i8 noundef zeroext -1) #16
  %182 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 13, i32 22
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %182, i8 noundef zeroext -113, i8 noundef zeroext -113, i8 noundef zeroext -113, i8 noundef zeroext -1) #16
  %183 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 13, i32 23
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %183, i8 noundef zeroext -58, i8 noundef zeroext 119, i8 noundef zeroext 119, i8 noundef zeroext -1) #16
  %184 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 13, i32 24
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %184, i8 noundef zeroext -1, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %185 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 13, i32 106
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %185, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -56, i8 noundef zeroext -1) #16
  %186 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 13, i32 103
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %186, i8 noundef zeroext 100, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %187 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 13, i32 108
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %187, i8 noundef zeroext 0, i8 noundef zeroext 100, i8 noundef zeroext 50, i8 noundef zeroext -1) #16
  %188 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 13, i32 107
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %188, i8 noundef zeroext 95, i8 noundef zeroext 95, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %189 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 13, i32 109
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %189, i8 noundef zeroext 50, i8 noundef zeroext 0, i8 noundef zeroext -116, i8 noundef zeroext -1) #16
  %190 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 13, i32 110
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %190, i8 noundef zeroext -116, i8 noundef zeroext 60, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %191 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 13, i32 105
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %191, i8 noundef zeroext -128, i8 noundef zeroext 0, i8 noundef zeroext 80, i8 noundef zeroext -1) #16
  %192 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 13, i32 104
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %192, i8 noundef zeroext 76, i8 noundef zeroext 76, i8 noundef zeroext 76, i8 noundef zeroext -1) #16
  %193 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(720) %193, ptr noundef nonnull align 8 dereferenceable(720) %20, i64 720, i1 false), !tbaa.struct !63
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %193, i8 noundef zeroext 114, i8 noundef zeroext 114, i8 noundef zeroext 114, i8 noundef zeroext -1) #16
  %194 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 14, i32 153
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %194, i8 noundef zeroext 51, i8 noundef zeroext 127, i8 noundef zeroext 51, i8 noundef zeroext 76) #16
  %195 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 14, i32 154
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %195, i8 noundef zeroext -126, i8 noundef zeroext -121, i8 noundef zeroext -116, i8 noundef zeroext 76) #16
  %196 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(720) %196, ptr noundef nonnull align 8 dereferenceable(720) %20, i64 720, i1 false), !tbaa.struct !63
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %196, i8 noundef zeroext 114, i8 noundef zeroext 114, i8 noundef zeroext 114, i8 noundef zeroext -1) #16
  %197 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 8, i32 166
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %197, i8 noundef zeroext 96, i8 noundef zeroext -128, i8 noundef zeroext -1, i8 noundef zeroext -1) #16
  %198 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 8, i32 167
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %198, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #16
  %199 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 8, i32 168
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %199, i8 noundef zeroext -36, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %200 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 8, i32 169
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %200, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %201 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 8, i32 170
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %201, i8 noundef zeroext -36, i8 noundef zeroext -128, i8 noundef zeroext 96, i8 noundef zeroext -1) #16
  %202 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 8, i32 171
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %202, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %203 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 8, i32 172
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %203, i8 noundef zeroext 0, i8 noundef zeroext -86, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %204 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 8, i32 173
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %204, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %205 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 8, i32 174
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %205, i8 noundef zeroext -60, i8 noundef zeroext -60, i8 noundef zeroext -60, i8 noundef zeroext -1) #16
  %206 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 8, i32 175
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %206, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %207 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(720) %207, ptr noundef nonnull align 8 dereferenceable(720) %20, i64 720, i1 false), !tbaa.struct !63
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %207, i8 noundef zeroext 114, i8 noundef zeroext 114, i8 noundef zeroext 114, i8 noundef zeroext -1) #16
  %208 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(720) %208, ptr noundef nonnull align 8 dereferenceable(720) %20, i64 720, i1 false), !tbaa.struct !63
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %208, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %209 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 19, i32 93
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %209, i8 noundef zeroext 96, i8 noundef zeroext -128, i8 noundef zeroext -1, i8 noundef zeroext -1) #16
  %210 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 19, i32 94
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %210, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #16
  %211 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 19, i32 95
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %211, i8 noundef zeroext 0, i8 noundef zeroext -86, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %212 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 19, i32 96
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %212, i8 noundef zeroext -36, i8 noundef zeroext 96, i8 noundef zeroext 96, i8 noundef zeroext -1) #16
  %213 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 19, i32 97
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %213, i8 noundef zeroext -36, i8 noundef zeroext 96, i8 noundef zeroext 96, i8 noundef zeroext -1) #16
  %214 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 19, i32 98
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %214, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext 48) #16
  %215 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(720) %215, ptr noundef nonnull align 8 dereferenceable(720) %20, i64 720, i1 false), !tbaa.struct !63
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %215, i8 noundef zeroext 114, i8 noundef zeroext 114, i8 noundef zeroext 114, i8 noundef zeroext -1) #16
  %216 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 15, i32 25
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %216, i8 noundef zeroext 91, i8 noundef zeroext 91, i8 noundef zeroext 91, i8 noundef zeroext -1) #16
  %217 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 15, i32 22
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %217, i8 noundef zeroext -83, i8 noundef zeroext -83, i8 noundef zeroext -83, i8 noundef zeroext -1) #16
  %218 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(720) %218, ptr noundef nonnull align 8 dereferenceable(720) %20, i64 720, i1 false), !tbaa.struct !63
  %219 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 110
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %219, i8 noundef zeroext 115, i8 noundef zeroext 115, i8 noundef zeroext 115, i8 noundef zeroext -1) #16
  %220 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 42
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %220, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #16
  %221 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 103
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %221, i8 noundef zeroext -101, i8 noundef zeroext -101, i8 noundef zeroext -101, i8 noundef zeroext -96) #16
  %222 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 106
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %222, i8 noundef zeroext 100, i8 noundef zeroext 100, i8 noundef zeroext 100, i8 noundef zeroext -1) #16
  %223 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 111
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %223, i8 noundef zeroext 100, i8 noundef zeroext 100, i8 noundef zeroext 100, i8 noundef zeroext -1) #16
  %224 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 105
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %224, i8 noundef zeroext 108, i8 noundef zeroext 105, i8 noundef zeroext 111, i8 noundef zeroext -1) #16
  %225 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 107
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %225, i8 noundef zeroext 104, i8 noundef zeroext 106, i8 noundef zeroext 117, i8 noundef zeroext -1) #16
  %226 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 108
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %226, i8 noundef zeroext 105, i8 noundef zeroext 117, i8 noundef zeroext 110, i8 noundef zeroext -1) #16
  %227 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 114
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %227, i8 noundef zeroext 108, i8 noundef zeroext 105, i8 noundef zeroext 111, i8 noundef zeroext -1) #16
  %228 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 115
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %228, i8 noundef zeroext 108, i8 noundef zeroext 105, i8 noundef zeroext 111, i8 noundef zeroext -1) #16
  %229 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 112
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %229, i8 noundef zeroext 108, i8 noundef zeroext 105, i8 noundef zeroext 111, i8 noundef zeroext -1) #16
  %230 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 116
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %230, i8 noundef zeroext 108, i8 noundef zeroext 105, i8 noundef zeroext 111, i8 noundef zeroext -1) #16
  %231 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 117
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %231, i8 noundef zeroext 108, i8 noundef zeroext 105, i8 noundef zeroext 111, i8 noundef zeroext -1) #16
  %232 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 113
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %232, i8 noundef zeroext 108, i8 noundef zeroext 105, i8 noundef zeroext 111, i8 noundef zeroext -1) #16
  %233 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 118
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %233, i8 noundef zeroext 108, i8 noundef zeroext 105, i8 noundef zeroext 111, i8 noundef zeroext -1) #16
  %234 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 119
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %234, i8 noundef zeroext -101, i8 noundef zeroext -101, i8 noundef zeroext -101, i8 noundef zeroext -96) #16
  %235 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 104
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %235, i8 noundef zeroext -105, i8 noundef zeroext 116, i8 noundef zeroext 116, i8 noundef zeroext -1) #16
  %236 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 109
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %236, i8 noundef zeroext 116, i8 noundef zeroext -105, i8 noundef zeroext -105, i8 noundef zeroext -1) #16
  %237 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 93
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %237, i8 noundef zeroext -33, i8 noundef zeroext -54, i8 noundef zeroext 53, i8 noundef zeroext -1) #16
  %238 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 16, i32 102
  store i8 5, ptr %238, align 1, !tbaa !70
  %239 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(720) %239, ptr noundef nonnull align 8 dereferenceable(720) %20, i64 720, i1 false), !tbaa.struct !63
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %239, i8 noundef zeroext 100, i8 noundef zeroext 100, i8 noundef zeroext 100, i8 noundef zeroext -1) #16
  %240 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(720) %240, ptr noundef nonnull align 8 dereferenceable(720) %20, i64 720, i1 false), !tbaa.struct !63
  %241 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 133
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %241, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %242 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 134
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %242, i8 noundef zeroext 127, i8 noundef zeroext 127, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %243 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 135
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %243, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #16
  %244 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 136
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %244, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %245 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 137
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %245, i8 noundef zeroext 127, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %246 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 138
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %246, i8 noundef zeroext 127, i8 noundef zeroext 127, i8 noundef zeroext 127, i8 noundef zeroext -1) #16
  %247 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 140
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %247, i8 noundef zeroext -1, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %248 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 141
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %248, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1, i8 noundef zeroext -1) #16
  %249 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 25
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %249, i8 noundef zeroext 94, i8 noundef zeroext 94, i8 noundef zeroext 94, i8 noundef zeroext -1) #16
  %250 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 62
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %250, i8 noundef zeroext 96, i8 noundef zeroext -64, i8 noundef zeroext 64, i8 noundef zeroext -1) #16
  %251 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 16
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %251, i8 noundef zeroext 102, i8 noundef zeroext 102, i8 noundef zeroext 102, i8 noundef zeroext -1) #16
  %252 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 60
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %252, i8 noundef zeroext 12, i8 noundef zeroext 10, i8 noundef zeroext 10, i8 noundef zeroext -128) #16
  %253 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 61
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %253, i8 noundef zeroext -1, i8 noundef zeroext -116, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %254 = getelementptr inbounds %struct.bTheme, ptr %8, i64 0, i32 20, i32 132
  store i8 5, ptr %254, align 4, !tbaa !71
  tail call fastcc void @ui_theme_space_init_handles_color(ptr noundef nonnull %240) #16
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @UI_SetTheme(i32 noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !72
  store ptr %5, ptr @theme_active, align 8, !tbaa !46
  br label %10

6:                                                ; preds = %2
  %7 = icmp eq i32 %1, 0
  %8 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !72
  store ptr %8, ptr @theme_active, align 8, !tbaa !46
  %9 = select i1 %7, i32 1, i32 4
  br label %10

10:                                               ; preds = %6, %4
  %11 = phi i32 [ %0, %4 ], [ %9, %6 ]
  store i32 %11, ptr @theme_spacetype, align 4, !tbaa !34
  store i32 %1, ptr @theme_regionid, align 4, !tbaa !34
  ret void
}

; Function Attrs: optsize
declare void @ui_widget_color_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @rgba_char_args_set(ptr nocapture noundef writeonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #5 !PGOFuncName !77 {
  store i8 %1, ptr %0, align 1, !tbaa !43
  %6 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %2, ptr %6, align 1, !tbaa !43
  %7 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %3, ptr %7, align 1, !tbaa !43
  %8 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %4, ptr %8, align 1, !tbaa !43
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: write) uwtable
define internal fastcc void @ui_theme_init_boneColorSets(ptr nocapture noundef writeonly %0) unnamed_addr #6 !PGOFuncName !78 {
  %2 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %2, i8 noundef zeroext -102, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %3 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 0, i32 1
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %3, i8 noundef zeroext -67, i8 noundef zeroext 17, i8 noundef zeroext 17, i8 noundef zeroext -1) #16
  %4 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 0, i32 2
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %4, i8 noundef zeroext -9, i8 noundef zeroext 10, i8 noundef zeroext 10, i8 noundef zeroext -1) #16
  %5 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 1
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %5, i8 noundef zeroext -9, i8 noundef zeroext 64, i8 noundef zeroext 24, i8 noundef zeroext -1) #16
  %6 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 1, i32 1
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %6, i8 noundef zeroext -10, i8 noundef zeroext 105, i8 noundef zeroext 19, i8 noundef zeroext -1) #16
  %7 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 1, i32 2
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %7, i8 noundef zeroext -6, i8 noundef zeroext -103, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %8 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 2
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %8, i8 noundef zeroext 30, i8 noundef zeroext -111, i8 noundef zeroext 9, i8 noundef zeroext -1) #16
  %9 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 2, i32 1
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %9, i8 noundef zeroext 89, i8 noundef zeroext -73, i8 noundef zeroext 11, i8 noundef zeroext -1) #16
  %10 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 2, i32 2
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %10, i8 noundef zeroext -125, i8 noundef zeroext -17, i8 noundef zeroext 29, i8 noundef zeroext -1) #16
  %11 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 3
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %11, i8 noundef zeroext 10, i8 noundef zeroext 54, i8 noundef zeroext -108, i8 noundef zeroext -1) #16
  %12 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 3, i32 1
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %12, i8 noundef zeroext 54, i8 noundef zeroext 103, i8 noundef zeroext -33, i8 noundef zeroext -1) #16
  %13 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 3, i32 2
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %13, i8 noundef zeroext 94, i8 noundef zeroext -63, i8 noundef zeroext -17, i8 noundef zeroext -1) #16
  %14 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 4
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %14, i8 noundef zeroext -87, i8 noundef zeroext 41, i8 noundef zeroext 78, i8 noundef zeroext -1) #16
  %15 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 4, i32 1
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %15, i8 noundef zeroext -63, i8 noundef zeroext 65, i8 noundef zeroext 106, i8 noundef zeroext -1) #16
  %16 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 4, i32 2
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %16, i8 noundef zeroext -16, i8 noundef zeroext 93, i8 noundef zeroext -111, i8 noundef zeroext -1) #16
  %17 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 5
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %17, i8 noundef zeroext 67, i8 noundef zeroext 12, i8 noundef zeroext 120, i8 noundef zeroext -1) #16
  %18 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 5, i32 1
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %18, i8 noundef zeroext 84, i8 noundef zeroext 58, i8 noundef zeroext -93, i8 noundef zeroext -1) #16
  %19 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 5, i32 2
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %19, i8 noundef zeroext -121, i8 noundef zeroext 100, i8 noundef zeroext -43, i8 noundef zeroext -1) #16
  %20 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 6
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %20, i8 noundef zeroext 36, i8 noundef zeroext 120, i8 noundef zeroext 90, i8 noundef zeroext -1) #16
  %21 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 6, i32 1
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %21, i8 noundef zeroext 60, i8 noundef zeroext -107, i8 noundef zeroext 121, i8 noundef zeroext -1) #16
  %22 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 6, i32 2
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %22, i8 noundef zeroext 111, i8 noundef zeroext -74, i8 noundef zeroext -85, i8 noundef zeroext -1) #16
  %23 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 7
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %23, i8 noundef zeroext 75, i8 noundef zeroext 112, i8 noundef zeroext 124, i8 noundef zeroext -1) #16
  %24 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 7, i32 1
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %24, i8 noundef zeroext 106, i8 noundef zeroext -122, i8 noundef zeroext -111, i8 noundef zeroext -1) #16
  %25 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 7, i32 2
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %25, i8 noundef zeroext -101, i8 noundef zeroext -62, i8 noundef zeroext -51, i8 noundef zeroext -1) #16
  %26 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 8
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %26, i8 noundef zeroext -12, i8 noundef zeroext -55, i8 noundef zeroext 12, i8 noundef zeroext -1) #16
  %27 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 8, i32 1
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %27, i8 noundef zeroext -18, i8 noundef zeroext -62, i8 noundef zeroext 54, i8 noundef zeroext -1) #16
  %28 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 8, i32 2
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %28, i8 noundef zeroext -13, i8 noundef zeroext -1, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %29 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 9
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %29, i8 noundef zeroext 30, i8 noundef zeroext 32, i8 noundef zeroext 36, i8 noundef zeroext -1) #16
  %30 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 9, i32 1
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %30, i8 noundef zeroext 72, i8 noundef zeroext 76, i8 noundef zeroext 86, i8 noundef zeroext -1) #16
  %31 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 9, i32 2
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %31, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #16
  %32 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 10
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %32, i8 noundef zeroext 111, i8 noundef zeroext 47, i8 noundef zeroext 106, i8 noundef zeroext -1) #16
  %33 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 10, i32 1
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %33, i8 noundef zeroext -104, i8 noundef zeroext 69, i8 noundef zeroext -66, i8 noundef zeroext -1) #16
  %34 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 10, i32 2
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %34, i8 noundef zeroext -45, i8 noundef zeroext 48, i8 noundef zeroext -42, i8 noundef zeroext -1) #16
  %35 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 11
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %35, i8 noundef zeroext 108, i8 noundef zeroext -114, i8 noundef zeroext 34, i8 noundef zeroext -1) #16
  %36 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 11, i32 1
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %36, i8 noundef zeroext 127, i8 noundef zeroext -80, i8 noundef zeroext 34, i8 noundef zeroext -1) #16
  %37 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 11, i32 2
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %37, i8 noundef zeroext -69, i8 noundef zeroext -17, i8 noundef zeroext 91, i8 noundef zeroext -1) #16
  %38 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 12
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %38, i8 noundef zeroext -115, i8 noundef zeroext -115, i8 noundef zeroext -115, i8 noundef zeroext -1) #16
  %39 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 12, i32 1
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %39, i8 noundef zeroext -80, i8 noundef zeroext -80, i8 noundef zeroext -80, i8 noundef zeroext -1) #16
  %40 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 12, i32 2
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %40, i8 noundef zeroext -34, i8 noundef zeroext -34, i8 noundef zeroext -34, i8 noundef zeroext -1) #16
  %41 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 13
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %41, i8 noundef zeroext -125, i8 noundef zeroext 67, i8 noundef zeroext 38, i8 noundef zeroext -1) #16
  %42 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 13, i32 1
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %42, i8 noundef zeroext -117, i8 noundef zeroext 88, i8 noundef zeroext 17, i8 noundef zeroext -1) #16
  %43 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 13, i32 2
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %43, i8 noundef zeroext -67, i8 noundef zeroext 106, i8 noundef zeroext 17, i8 noundef zeroext -1) #16
  %44 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 14
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %44, i8 noundef zeroext 8, i8 noundef zeroext 49, i8 noundef zeroext 14, i8 noundef zeroext -1) #16
  %45 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 14, i32 1
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %45, i8 noundef zeroext 28, i8 noundef zeroext 67, i8 noundef zeroext 11, i8 noundef zeroext -1) #16
  %46 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 14, i32 2
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %46, i8 noundef zeroext 52, i8 noundef zeroext 98, i8 noundef zeroext 43, i8 noundef zeroext -1) #16
  br label %47

47:                                               ; preds = %69, %1
  %48 = phi i64 [ 0, %1 ], [ %70, %69 ]
  %49 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %1 ], [ %71, %69 ]
  %50 = icmp ult <4 x i64> %49, <i64 20, i64 20, i64 20, i64 20>
  %51 = extractelement <4 x i1> %50, i64 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 %48, i32 3
  store i16 0, ptr %53, align 4, !tbaa !79
  br label %54

54:                                               ; preds = %52, %47
  %55 = extractelement <4 x i1> %50, i64 1
  br i1 %55, label %56, label %59

56:                                               ; preds = %54
  %57 = or disjoint i64 %48, 1
  %58 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 %57, i32 3
  store i16 0, ptr %58, align 4, !tbaa !79
  br label %59

59:                                               ; preds = %56, %54
  %60 = extractelement <4 x i1> %50, i64 2
  br i1 %60, label %61, label %64

61:                                               ; preds = %59
  %62 = or disjoint i64 %48, 2
  %63 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 %62, i32 3
  store i16 0, ptr %63, align 4, !tbaa !79
  br label %64

64:                                               ; preds = %61, %59
  %65 = extractelement <4 x i1> %50, i64 3
  br i1 %65, label %66, label %69

66:                                               ; preds = %64
  %67 = or disjoint i64 %48, 3
  %68 = getelementptr inbounds %struct.bTheme, ptr %0, i64 0, i32 21, i64 %67, i32 3
  store i16 0, ptr %68, align 4, !tbaa !79
  br label %69

69:                                               ; preds = %66, %64
  %70 = add i64 %48, 4
  %71 = add <4 x i64> %49, <i64 4, i64 4, i64 4, i64 4>
  %72 = icmp eq i64 %70, 20
  br i1 %72, label %73, label %47, !llvm.loop !81

73:                                               ; preds = %69
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: write) uwtable
define internal fastcc void @ui_theme_init_new(ptr nocapture noundef writeonly %0) unnamed_addr #6 !PGOFuncName !85 {
  br label %2

2:                                                ; preds = %1, %2
  %3 = phi i64 [ 960, %1 ], [ %5, %2 ]
  %4 = getelementptr inbounds i8, ptr %0, i64 %3
  tail call fastcc void @ui_theme_init_new_do(ptr noundef nonnull %4) #16
  %5 = add nuw nsw i64 %3, 720
  %6 = icmp eq i64 %5, 13200
  br i1 %6, label %7, label %2, !llvm.loop !86

7:                                                ; preds = %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @ui_theme_space_init_handles_color(ptr nocapture noundef writeonly %0) unnamed_addr #5 !PGOFuncName !87 {
  %2 = getelementptr inbounds %struct.ThemeSpace, ptr %0, i64 0, i32 71
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %2, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %3 = getelementptr inbounds %struct.ThemeSpace, ptr %0, i64 0, i32 72
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %3, i8 noundef zeroext -112, i8 noundef zeroext -112, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %4 = getelementptr inbounds %struct.ThemeSpace, ptr %0, i64 0, i32 73
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %4, i8 noundef zeroext 64, i8 noundef zeroext -112, i8 noundef zeroext 48, i8 noundef zeroext -1) #16
  %5 = getelementptr inbounds %struct.ThemeSpace, ptr %0, i64 0, i32 74
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %5, i8 noundef zeroext -128, i8 noundef zeroext 48, i8 noundef zeroext 96, i8 noundef zeroext -1) #16
  %6 = getelementptr inbounds %struct.ThemeSpace, ptr %0, i64 0, i32 76
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %6, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %7 = getelementptr inbounds %struct.ThemeSpace, ptr %0, i64 0, i32 77
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %7, i8 noundef zeroext -16, i8 noundef zeroext -1, i8 noundef zeroext 64, i8 noundef zeroext -1) #16
  %8 = getelementptr inbounds %struct.ThemeSpace, ptr %0, i64 0, i32 78
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %8, i8 noundef zeroext 64, i8 noundef zeroext -64, i8 noundef zeroext 48, i8 noundef zeroext -1) #16
  %9 = getelementptr inbounds %struct.ThemeSpace, ptr %0, i64 0, i32 79
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %9, i8 noundef zeroext -16, i8 noundef zeroext -112, i8 noundef zeroext -96, i8 noundef zeroext -1) #16
  %10 = getelementptr inbounds %struct.ThemeSpace, ptr %0, i64 0, i32 129
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %10, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %11 = getelementptr inbounds %struct.ThemeSpace, ptr %0, i64 0, i32 130
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %11, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %12 = getelementptr inbounds %struct.ThemeSpace, ptr %0, i64 0, i32 67
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %12, i8 noundef zeroext -37, i8 noundef zeroext 37, i8 noundef zeroext 18, i8 noundef zeroext -1) #16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @rgba_char_args_test_set(ptr nocapture noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #8 !PGOFuncName !88 {
  %6 = getelementptr inbounds i8, ptr %0, i64 3
  %7 = load i8, ptr %6, align 1, !tbaa !43
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  store i8 %1, ptr %0, align 1, !tbaa !43
  %10 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %2, ptr %10, align 1, !tbaa !43
  %11 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %3, ptr %11, align 1, !tbaa !43
  store i8 %4, ptr %6, align 1, !tbaa !43
  br label %12

12:                                               ; preds = %9, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ui_style_init_default() local_unnamed_addr #0 {
  tail call void @BLI_freelistN(ptr noundef nonnull getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 40)) #15
  tail call void @uiStyleInit() #15
  ret void
}

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @uiStyleInit() local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @UI_GetTheme() local_unnamed_addr #9 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !72
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UI_ThemeColor(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @theme_active, align 8, !tbaa !46
  %3 = load i32, ptr @theme_spacetype, align 4, !tbaa !34
  %4 = tail call ptr @UI_ThemeGetColorPtr(ptr noundef %2, i32 noundef %3, i32 noundef %0) #16
  tail call void @glColor3ubv(ptr noundef nonnull %4) #15
  ret void
}

; Function Attrs: optsize
declare void @glColor3ubv(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UI_ThemeColor4(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @theme_active, align 8, !tbaa !46
  %3 = load i32, ptr @theme_spacetype, align 4, !tbaa !34
  %4 = tail call ptr @UI_ThemeGetColorPtr(ptr noundef %2, i32 noundef %3, i32 noundef %0) #16
  tail call void @glColor4ubv(ptr noundef nonnull %4) #15
  ret void
}

; Function Attrs: optsize
declare void @glColor4ubv(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UI_ThemeColorShade(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @theme_active, align 8, !tbaa !46
  %4 = load i32, ptr @theme_spacetype, align 4, !tbaa !34
  %5 = tail call ptr @UI_ThemeGetColorPtr(ptr noundef %3, i32 noundef %4, i32 noundef %0) #16
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
  tail call void @glColor4ub(i8 noundef zeroext %11, i8 noundef zeroext %18, i8 noundef zeroext %25, i8 noundef zeroext %27) #15
  ret void
}

; Function Attrs: optsize
declare void @glColor4ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UI_ThemeColorShadeAlpha(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @theme_active, align 8, !tbaa !46
  %5 = load i32, ptr @theme_spacetype, align 4, !tbaa !34
  %6 = tail call ptr @UI_ThemeGetColorPtr(ptr noundef %4, i32 noundef %5, i32 noundef %0) #16
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
  tail call void @glColor4ub(i8 noundef zeroext %12, i8 noundef zeroext %19, i8 noundef zeroext %26, i8 noundef zeroext %33) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @UI_GetThemeColorBlend3ubv(i32 noundef %0, i32 noundef %1, float noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #10 {
  %5 = load ptr, ptr @theme_active, align 8, !tbaa !46
  %6 = load i32, ptr @theme_spacetype, align 4, !tbaa !34
  %7 = tail call ptr @UI_ThemeGetColorPtr(ptr noundef %5, i32 noundef %6, i32 noundef %0) #16
  %8 = tail call ptr @UI_ThemeGetColorPtr(ptr noundef %5, i32 noundef %6, i32 noundef %1) #16
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
declare float @llvm.fmuladd.f32(float, float, float) #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #11

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UI_ThemeColorBlend(i32 noundef %0, i32 noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = alloca [3 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #17
  call void @UI_GetThemeColorBlend3ubv(i32 noundef %0, i32 noundef %1, float noundef %2, ptr noundef nonnull %4) #16
  call void @glColor3ubv(ptr noundef nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UI_ThemeColorBlendShade(i32 noundef %0, i32 noundef %1, float noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @theme_active, align 8, !tbaa !46
  %6 = load i32, ptr @theme_spacetype, align 4, !tbaa !34
  %7 = tail call ptr @UI_ThemeGetColorPtr(ptr noundef %5, i32 noundef %6, i32 noundef %0) #16
  %8 = tail call ptr @UI_ThemeGetColorPtr(ptr noundef %5, i32 noundef %6, i32 noundef %1) #16
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
  tail call void @glColor3ub(i8 noundef zeroext %50, i8 noundef zeroext %53, i8 noundef zeroext %56) #15
  ret void
}

; Function Attrs: optsize
declare void @glColor3ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UI_ThemeColorBlendShadeAlpha(i32 noundef %0, i32 noundef %1, float noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr @theme_active, align 8, !tbaa !46
  %7 = load i32, ptr @theme_spacetype, align 4, !tbaa !34
  %8 = tail call ptr @UI_ThemeGetColorPtr(ptr noundef %6, i32 noundef %7, i32 noundef %0) #16
  %9 = tail call ptr @UI_ThemeGetColorPtr(ptr noundef %6, i32 noundef %7, i32 noundef %1) #16
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
  tail call void @glColor4ub(i8 noundef zeroext %63, i8 noundef zeroext %66, i8 noundef zeroext %69, i8 noundef zeroext %72) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local float @UI_GetThemeValuef(i32 noundef %0) local_unnamed_addr #10 {
  %2 = load ptr, ptr @theme_active, align 8, !tbaa !46
  %3 = load i32, ptr @theme_spacetype, align 4, !tbaa !34
  %4 = tail call ptr @UI_ThemeGetColorPtr(ptr noundef %2, i32 noundef %3, i32 noundef %0) #16
  %5 = load i8, ptr %4, align 1, !tbaa !43
  %6 = uitofp i8 %5 to float
  ret float %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @UI_GetThemeValue(i32 noundef %0) local_unnamed_addr #10 {
  %2 = load ptr, ptr @theme_active, align 8, !tbaa !46
  %3 = load i32, ptr @theme_spacetype, align 4, !tbaa !34
  %4 = tail call ptr @UI_ThemeGetColorPtr(ptr noundef %2, i32 noundef %3, i32 noundef %0) #16
  %5 = load i8, ptr %4, align 1, !tbaa !43
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @UI_GetThemeColor3fv(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #10 {
  %3 = load ptr, ptr @theme_active, align 8, !tbaa !46
  %4 = load i32, ptr @theme_spacetype, align 4, !tbaa !34
  %5 = tail call ptr @UI_ThemeGetColorPtr(ptr noundef %3, i32 noundef %4, i32 noundef %0) #16
  %6 = load i8, ptr %5, align 1, !tbaa !43
  %7 = uitofp i8 %6 to float
  %8 = fdiv float %7, 2.550000e+02
  store float %8, ptr %1, align 4, !tbaa !89
  %9 = getelementptr inbounds i8, ptr %5, i64 1
  %10 = load i8, ptr %9, align 1, !tbaa !43
  %11 = uitofp i8 %10 to float
  %12 = fdiv float %11, 2.550000e+02
  %13 = getelementptr inbounds float, ptr %1, i64 1
  store float %12, ptr %13, align 4, !tbaa !89
  %14 = getelementptr inbounds i8, ptr %5, i64 2
  %15 = load i8, ptr %14, align 1, !tbaa !43
  %16 = uitofp i8 %15 to float
  %17 = fdiv float %16, 2.550000e+02
  %18 = getelementptr inbounds float, ptr %1, i64 2
  store float %17, ptr %18, align 4, !tbaa !89
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @UI_GetThemeColor4fv(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #10 {
  %3 = load ptr, ptr @theme_active, align 8, !tbaa !46
  %4 = load i32, ptr @theme_spacetype, align 4, !tbaa !34
  %5 = tail call ptr @UI_ThemeGetColorPtr(ptr noundef %3, i32 noundef %4, i32 noundef %0) #16
  %6 = load i8, ptr %5, align 1, !tbaa !43
  %7 = uitofp i8 %6 to float
  %8 = fdiv float %7, 2.550000e+02
  store float %8, ptr %1, align 4, !tbaa !89
  %9 = getelementptr inbounds i8, ptr %5, i64 1
  %10 = load i8, ptr %9, align 1, !tbaa !43
  %11 = uitofp i8 %10 to float
  %12 = fdiv float %11, 2.550000e+02
  %13 = getelementptr inbounds float, ptr %1, i64 1
  store float %12, ptr %13, align 4, !tbaa !89
  %14 = getelementptr inbounds i8, ptr %5, i64 2
  %15 = load i8, ptr %14, align 1, !tbaa !43
  %16 = uitofp i8 %15 to float
  %17 = fdiv float %16, 2.550000e+02
  %18 = getelementptr inbounds float, ptr %1, i64 2
  store float %17, ptr %18, align 4, !tbaa !89
  %19 = getelementptr inbounds i8, ptr %5, i64 3
  %20 = load i8, ptr %19, align 1, !tbaa !43
  %21 = uitofp i8 %20 to float
  %22 = fdiv float %21, 2.550000e+02
  %23 = getelementptr inbounds float, ptr %1, i64 3
  store float %22, ptr %23, align 4, !tbaa !89
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @UI_GetThemeColorShade3fv(i32 noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #10 {
  %4 = load ptr, ptr @theme_active, align 8, !tbaa !46
  %5 = load i32, ptr @theme_spacetype, align 4, !tbaa !34
  %6 = tail call ptr @UI_ThemeGetColorPtr(ptr noundef %4, i32 noundef %5, i32 noundef %0) #16
  %7 = getelementptr inbounds i8, ptr %6, i64 2
  %8 = load i8, ptr %7, align 1, !tbaa !43
  %9 = zext i8 %8 to i32
  %10 = add nsw i32 %9, %1
  %11 = tail call i32 @llvm.smin.i32(i32 %10, i32 255)
  %12 = tail call i32 @llvm.smax.i32(i32 %11, i32 0)
  %13 = sitofp i32 %12 to float
  %14 = load <2 x i8>, ptr %6, align 1, !tbaa !43
  %15 = zext <2 x i8> %14 to <2 x i32>
  %16 = insertelement <2 x i32> poison, i32 %1, i64 0
  %17 = shufflevector <2 x i32> %16, <2 x i32> poison, <2 x i32> zeroinitializer
  %18 = add nsw <2 x i32> %17, %15
  %19 = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %18, <2 x i32> <i32 255, i32 255>)
  %20 = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %19, <2 x i32> zeroinitializer)
  %21 = sitofp <2 x i32> %20 to <2 x float>
  %22 = fdiv <2 x float> %21, <float 2.550000e+02, float 2.550000e+02>
  store <2 x float> %22, ptr %2, align 4, !tbaa !89
  %23 = fdiv float %13, 2.550000e+02
  %24 = getelementptr inbounds float, ptr %2, i64 2
  store float %23, ptr %24, align 4, !tbaa !89
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @UI_GetThemeColorShade3ubv(i32 noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #10 {
  %4 = load ptr, ptr @theme_active, align 8, !tbaa !46
  %5 = load i32, ptr @theme_spacetype, align 4, !tbaa !34
  %6 = tail call ptr @UI_ThemeGetColorPtr(ptr noundef %4, i32 noundef %5, i32 noundef %0) #16
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @UI_GetThemeColor3ubv(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #10 {
  %3 = load ptr, ptr @theme_active, align 8, !tbaa !46
  %4 = load i32, ptr @theme_spacetype, align 4, !tbaa !34
  %5 = tail call ptr @UI_ThemeGetColorPtr(ptr noundef %3, i32 noundef %4, i32 noundef %0) #16
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @UI_GetThemeColor4ubv(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #10 {
  %3 = load ptr, ptr @theme_active, align 8, !tbaa !46
  %4 = load i32, ptr @theme_spacetype, align 4, !tbaa !34
  %5 = tail call ptr @UI_ThemeGetColorPtr(ptr noundef %3, i32 noundef %4, i32 noundef %0) #16
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @UI_GetThemeColorType4ubv(i32 noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #10 {
  %4 = load ptr, ptr @theme_active, align 8, !tbaa !46
  %5 = tail call ptr @UI_ThemeGetColorPtr(ptr noundef %4, i32 noundef %1, i32 noundef %0) #16
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

; Function Attrs: noinline nounwind optsize uwtable
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
  tail call void @glColor3ub(i8 noundef zeroext %50, i8 noundef zeroext %51, i8 noundef zeroext %52) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @UI_GetColorPtrShade3ubv(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #8 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @UI_GetColorPtrBlendShade3ubv(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, float noundef %3, i32 noundef %4) local_unnamed_addr #8 {
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UI_ThemeClearColor(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #17
  call void @UI_GetThemeColor3fv(i32 noundef %0, ptr noundef nonnull %2) #16
  %3 = load float, ptr %2, align 4, !tbaa !89
  %4 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !89
  %6 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !89
  tail call void @glClearColor(float noundef %3, float noundef %5, float noundef %7, float noundef 0.000000e+00) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #17
  ret void
}

; Function Attrs: optsize
declare void @glClearColor(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @UI_ThemeMenuShadowWidth() local_unnamed_addr #12 {
  %1 = tail call ptr @UI_GetTheme() #16
  %2 = getelementptr inbounds %struct.bTheme, ptr %1, i64 0, i32 3, i32 22
  %3 = load i16, ptr %2, align 8, !tbaa !56
  %4 = sitofp i16 %3 to float
  %5 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !90
  %6 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !91
  %7 = sitofp i32 %6 to float
  %8 = fmul float %5, %7
  %9 = fdiv float %8, 7.200000e+01
  %10 = fmul float %9, %4
  %11 = fptosi float %10 to i32
  ret i32 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @UI_make_axis_color(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i8 noundef zeroext %2) local_unnamed_addr #10 {
  %4 = alloca [3 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #17
  %5 = add i8 %2, -88
  %6 = icmp ult i8 %5, 3
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = or disjoint i8 %5, -80
  %9 = zext i8 %8 to i32
  call void @UI_GetThemeColor3ubv(i32 noundef %9, ptr noundef nonnull %4) #16
  call void @UI_GetColorPtrBlendShade3ubv(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %1, float noundef 5.000000e-01, i32 noundef -10) #16
  br label %10

10:                                               ; preds = %3, %7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_userdef_do_versions() local_unnamed_addr #0 {
  %1 = load ptr, ptr @G, align 8, !tbaa !92
  %2 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 21), align 2, !tbaa !94
  %3 = icmp eq i16 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store i16 3, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 21), align 2, !tbaa !94
  br label %5

5:                                                ; preds = %4, %0
  %6 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 36), align 4, !tbaa !95
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  store i16 5, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 36), align 4, !tbaa !95
  store i16 2, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 37), align 2, !tbaa !96
  br label %9

9:                                                ; preds = %8, %5
  %10 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 52), align 4, !tbaa !97
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i16 5, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 52), align 4, !tbaa !97
  store i16 5, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 53), align 2, !tbaa !98
  br label %13

13:                                               ; preds = %12, %9
  %14 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 27), align 4, !tbaa !99
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 2048, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 27), align 4, !tbaa !99
  br label %17

17:                                               ; preds = %16, %13
  %18 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 5), align 4
  %19 = icmp eq i16 %18, 47
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  tail call void @BLI_system_temporary_dir(ptr noundef nonnull getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 5)) #15
  br label %21

21:                                               ; preds = %20, %17
  %22 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 91), align 8, !tbaa !100
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i16 2, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 91), align 8, !tbaa !100
  br label %25

25:                                               ; preds = %24, %21
  %26 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 4), align 8, !tbaa !101
  %27 = icmp slt i32 %26, 1
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 1, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 4), align 8, !tbaa !101
  br label %29

29:                                               ; preds = %28, %25
  %30 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 55), align 8, !tbaa !102
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i16 14, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 55), align 8, !tbaa !102
  store i16 25, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 58), align 2, !tbaa !103
  store i16 16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 57), align 4, !tbaa !104
  br label %33

33:                                               ; preds = %32, %29
  %34 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 66), align 2, !tbaa !105
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i16 15, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 66), align 2, !tbaa !105
  br label %37

37:                                               ; preds = %36, %33
  %38 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 105), align 8, !tbaa !106
  %39 = fcmp oeq float %38, 0.000000e+00
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store float 2.500000e-01, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 105), align 8, !tbaa !106
  br label %41

41:                                               ; preds = %40, %37
  %42 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !107
  %43 = and i32 %42, 131072
  %44 = icmp eq i32 %43, 0
  %45 = select i1 %44, ptr null, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 95)
  %46 = tail call ptr @UI_GetTheme() #16
  %47 = getelementptr inbounds %struct.bTheme, ptr %46, i64 0, i32 5, i32 40
  tail call void @vDM_ColorBand_store(ptr noundef %45, ptr noundef nonnull %47) #15
  %48 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 3
  %49 = load i16, ptr %48, align 8, !tbaa !108
  %50 = icmp slt i16 %49, 192
  br i1 %50, label %51, label %53

51:                                               ; preds = %41
  store i16 47, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 11), align 4
  %52 = load i16, ptr %48, align 8, !tbaa !108
  br label %53

53:                                               ; preds = %51, %41
  %54 = phi i16 [ %52, %51 ], [ %49, %41 ]
  %55 = icmp slt i16 %54, 220
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 3), align 4, !tbaa !111
  %58 = or i32 %57, 512
  store i32 %58, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 3), align 4, !tbaa !111
  br label %61

59:                                               ; preds = %53
  %60 = icmp ult i16 %54, 235
  br i1 %60, label %61, label %101

61:                                               ; preds = %56, %59
  %62 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !112
  %63 = or i32 %62, 8192
  store i32 %63, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !112
  %64 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 46), align 8, !tbaa !113
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store i16 32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 46), align 8, !tbaa !113
  br label %67

67:                                               ; preds = %66, %61
  %68 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !46
  %69 = icmp eq ptr %68, null
  br i1 %69, label %104, label %70

70:                                               ; preds = %67, %96
  %71 = phi ptr [ %97, %96 ], [ %68, %67 ]
  %72 = getelementptr inbounds %struct.bTheme, ptr %71, i64 0, i32 5, i32 43, i64 3
  %73 = load i8, ptr %72, align 1, !tbaa !43
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.bTheme, ptr %71, i64 0, i32 5, i32 43
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %76, i8 noundef zeroext -26, i8 noundef zeroext -106, i8 noundef zeroext 50, i8 noundef zeroext -1) #16
  br label %77

77:                                               ; preds = %75, %70
  %78 = getelementptr inbounds %struct.bTheme, ptr %71, i64 0, i32 5, i32 54, i64 3
  %79 = load i8, ptr %78, align 1, !tbaa !43
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.bTheme, ptr %71, i64 0, i32 5, i32 54
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %82, i8 noundef zeroext 34, i8 noundef zeroext -35, i8 noundef zeroext -35, i8 noundef zeroext -1) #16
  br label %83

83:                                               ; preds = %81, %77
  %84 = getelementptr inbounds %struct.bTheme, ptr %71, i64 0, i32 5, i32 55, i64 3
  %85 = load i8, ptr %84, align 1, !tbaa !43
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.bTheme, ptr %71, i64 0, i32 5, i32 55
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %88, i8 noundef zeroext 35, i8 noundef zeroext 97, i8 noundef zeroext -35, i8 noundef zeroext -1) #16
  br label %89

89:                                               ; preds = %87, %83
  %90 = getelementptr inbounds %struct.bTheme, ptr %71, i64 0, i32 5, i32 49, i64 3
  %91 = load i8, ptr %90, align 1, !tbaa !43
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.bTheme, ptr %71, i64 0, i32 5, i32 49
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %94, i8 noundef zeroext -1, i8 noundef zeroext -118, i8 noundef zeroext 48, i8 noundef zeroext -1) #16
  %95 = getelementptr inbounds %struct.bTheme, ptr %71, i64 0, i32 5, i32 101
  store i8 4, ptr %95, align 2, !tbaa !61
  br label %96

96:                                               ; preds = %89, %93
  %97 = load ptr, ptr %71, align 8, !tbaa !46
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %70, !llvm.loop !114

99:                                               ; preds = %96
  %100 = load i16, ptr %48, align 8, !tbaa !108
  br label %101

101:                                              ; preds = %99, %59
  %102 = phi i16 [ %100, %99 ], [ %54, %59 ]
  %103 = icmp slt i16 %102, 236
  br i1 %103, label %104, label %111

104:                                              ; preds = %67, %101
  %105 = phi i16 [ %102, %101 ], [ %54, %67 ]
  %106 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !107
  %107 = and i32 %106, 16384
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %104
  %110 = and i32 %106, -4097
  store i32 %110, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !107
  br label %111

111:                                              ; preds = %104, %109, %101
  %112 = phi i16 [ %105, %104 ], [ %105, %109 ], [ %102, %101 ]
  %113 = icmp sgt i16 %112, 236
  %114 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %115 = icmp eq ptr %114, null
  %116 = select i1 %113, i1 true, i1 %115
  br i1 %116, label %143, label %117

117:                                              ; preds = %111, %137
  %118 = phi ptr [ %138, %137 ], [ %114, %111 ]
  %119 = getelementptr inbounds %struct.bTheme, ptr %118, i64 0, i32 15, i32 0, i64 3
  %120 = load i8, ptr %119, align 1, !tbaa !43
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct.bTheme, ptr %118, i64 0, i32 15
  %124 = getelementptr inbounds %struct.bTheme, ptr %118, i64 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(720) %123, ptr noundef nonnull align 8 dereferenceable(720) %124, i64 720, i1 false), !tbaa.struct !63
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %123, i8 noundef zeroext 114, i8 noundef zeroext 114, i8 noundef zeroext 114, i8 noundef zeroext -1) #16
  %125 = getelementptr inbounds %struct.bTheme, ptr %118, i64 0, i32 15, i32 25
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %125, i8 noundef zeroext 91, i8 noundef zeroext 91, i8 noundef zeroext 91, i8 noundef zeroext -1) #16
  %126 = getelementptr inbounds %struct.bTheme, ptr %118, i64 0, i32 15, i32 22
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %126, i8 noundef zeroext -83, i8 noundef zeroext -83, i8 noundef zeroext -83, i8 noundef zeroext -1) #16
  br label %127

127:                                              ; preds = %122, %117
  %128 = getelementptr inbounds %struct.bTheme, ptr %118, i64 0, i32 13, i32 106, i64 3
  %129 = load i8, ptr %128, align 1, !tbaa !43
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.bTheme, ptr %118, i64 0, i32 13, i32 106
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %132, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -56, i8 noundef zeroext -1) #16
  %133 = getelementptr inbounds %struct.bTheme, ptr %118, i64 0, i32 13, i32 103
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %133, i8 noundef zeroext 100, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %134 = getelementptr inbounds %struct.bTheme, ptr %118, i64 0, i32 13, i32 108
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %134, i8 noundef zeroext 0, i8 noundef zeroext 100, i8 noundef zeroext 50, i8 noundef zeroext -1) #16
  %135 = getelementptr inbounds %struct.bTheme, ptr %118, i64 0, i32 13, i32 107
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %135, i8 noundef zeroext 95, i8 noundef zeroext 95, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %136 = getelementptr inbounds %struct.bTheme, ptr %118, i64 0, i32 13, i32 105
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %136, i8 noundef zeroext -128, i8 noundef zeroext 0, i8 noundef zeroext 80, i8 noundef zeroext -1) #16
  br label %137

137:                                              ; preds = %127, %131
  %138 = load ptr, ptr %118, align 8, !tbaa !46
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %117, !llvm.loop !115

140:                                              ; preds = %137
  %141 = load i16, ptr %48, align 8, !tbaa !108
  %142 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  br label %143

143:                                              ; preds = %140, %111
  %144 = phi ptr [ %142, %140 ], [ %114, %111 ]
  %145 = phi i16 [ %141, %140 ], [ %112, %111 ]
  %146 = icmp slt i16 %145, 238
  br i1 %146, label %147, label %163

147:                                              ; preds = %143
  %148 = icmp eq ptr %144, null
  br i1 %148, label %185, label %149

149:                                              ; preds = %147, %157
  %150 = phi ptr [ %158, %157 ], [ %144, %147 ]
  %151 = getelementptr inbounds %struct.bTheme, ptr %150, i64 0, i32 5, i32 57, i64 3
  %152 = load i8, ptr %151, align 1, !tbaa !43
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %149
  %155 = getelementptr inbounds %struct.bTheme, ptr %150, i64 0, i32 5, i32 57
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %155, i8 noundef zeroext -56, i8 noundef zeroext -56, i8 noundef zeroext -56, i8 noundef zeroext -1) #16
  %156 = getelementptr inbounds %struct.bTheme, ptr %150, i64 0, i32 5, i32 58
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %156, i8 noundef zeroext 80, i8 noundef zeroext -56, i8 noundef zeroext -1, i8 noundef zeroext 80) #16
  br label %157

157:                                              ; preds = %149, %154
  %158 = load ptr, ptr %150, align 8, !tbaa !46
  %159 = icmp eq ptr %158, null
  br i1 %159, label %160, label %149, !llvm.loop !116

160:                                              ; preds = %157
  %161 = load i16, ptr %48, align 8, !tbaa !108
  %162 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  br label %163

163:                                              ; preds = %160, %143
  %164 = phi ptr [ %144, %143 ], [ %162, %160 ]
  %165 = phi i16 [ %145, %143 ], [ %161, %160 ]
  %166 = icmp sgt i16 %165, 238
  %167 = icmp eq ptr %164, null
  %168 = select i1 %166, i1 true, i1 %167
  br i1 %168, label %182, label %169

169:                                              ; preds = %163, %177
  %170 = phi ptr [ %178, %177 ], [ %164, %163 ]
  %171 = getelementptr inbounds %struct.bTheme, ptr %170, i64 0, i32 10, i32 60, i64 3
  %172 = load i8, ptr %171, align 1, !tbaa !43
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %169
  %175 = getelementptr inbounds %struct.bTheme, ptr %170, i64 0, i32 10, i32 60
  %176 = getelementptr inbounds %struct.bTheme, ptr %170, i64 0, i32 10, i32 61
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %176, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -86, i8 noundef zeroext -1) #16
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %175, i8 noundef zeroext -28, i8 noundef zeroext -100, i8 noundef zeroext -58, i8 noundef zeroext -1) #16
  br label %177

177:                                              ; preds = %169, %174
  %178 = load ptr, ptr %170, align 8, !tbaa !46
  %179 = icmp eq ptr %178, null
  br i1 %179, label %180, label %169, !llvm.loop !117

180:                                              ; preds = %177
  %181 = load i16, ptr %48, align 8, !tbaa !108
  br label %182

182:                                              ; preds = %180, %163
  %183 = phi i16 [ %181, %180 ], [ %165, %163 ]
  %184 = icmp slt i16 %183, 240
  br i1 %184, label %185, label %206

185:                                              ; preds = %147, %182
  %186 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %187 = icmp eq ptr %186, null
  br i1 %187, label %200, label %188

188:                                              ; preds = %185, %197
  %189 = phi ptr [ %198, %197 ], [ %186, %185 ]
  %190 = getelementptr inbounds %struct.bTheme, ptr %189, i64 0, i32 5, i32 30, i64 3
  %191 = load i8, ptr %190, align 1, !tbaa !43
  %192 = icmp eq i8 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %188
  %194 = getelementptr inbounds %struct.bTheme, ptr %189, i64 0, i32 5, i32 30
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %194, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 40) #16
  %195 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !112
  %196 = or i32 %195, 32
  store i32 %196, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !112
  br label %197

197:                                              ; preds = %188, %193
  %198 = load ptr, ptr %189, align 8, !tbaa !46
  %199 = icmp eq ptr %198, null
  br i1 %199, label %200, label %188, !llvm.loop !118

200:                                              ; preds = %197, %185
  %201 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 67), align 4, !tbaa !119
  %202 = icmp eq i16 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %200
  store i16 6, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 67), align 4, !tbaa !119
  br label %204

204:                                              ; preds = %203, %200
  %205 = load i16, ptr %48, align 8, !tbaa !108
  br label %206

206:                                              ; preds = %204, %182
  %207 = phi i16 [ %205, %204 ], [ %183, %182 ]
  %208 = icmp slt i16 %207, 242
  br i1 %208, label %209, label %254

209:                                              ; preds = %206
  %210 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %211 = icmp eq ptr %210, null
  br i1 %211, label %248, label %212

212:                                              ; preds = %209, %245
  %213 = phi ptr [ %246, %245 ], [ %210, %209 ]
  %214 = getelementptr inbounds %struct.bTheme, ptr %213, i64 0, i32 16, i32 106, i64 3
  %215 = load i8, ptr %214, align 1, !tbaa !43
  %216 = icmp eq i8 %215, 0
  br i1 %216, label %217, label %226

217:                                              ; preds = %212
  %218 = getelementptr inbounds %struct.bTheme, ptr %213, i64 0, i32 16, i32 106
  %219 = getelementptr inbounds %struct.bTheme, ptr %213, i64 0, i32 16
  %220 = getelementptr inbounds %struct.bTheme, ptr %213, i64 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(720) %219, ptr noundef nonnull align 8 dereferenceable(720) %220, i64 720, i1 false), !tbaa.struct !63
  %221 = getelementptr inbounds %struct.bTheme, ptr %213, i64 0, i32 16, i32 42
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %221, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #16
  %222 = getelementptr inbounds %struct.bTheme, ptr %213, i64 0, i32 16, i32 103
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %222, i8 noundef zeroext -106, i8 noundef zeroext -106, i8 noundef zeroext -106, i8 noundef zeroext -1) #16
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %218, i8 noundef zeroext -127, i8 noundef zeroext -125, i8 noundef zeroext -112, i8 noundef zeroext -1) #16
  %223 = getelementptr inbounds %struct.bTheme, ptr %213, i64 0, i32 16, i32 105
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %223, i8 noundef zeroext 127, i8 noundef zeroext 127, i8 noundef zeroext 127, i8 noundef zeroext -1) #16
  %224 = getelementptr inbounds %struct.bTheme, ptr %213, i64 0, i32 16, i32 107
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %224, i8 noundef zeroext -114, i8 noundef zeroext -118, i8 noundef zeroext -111, i8 noundef zeroext -1) #16
  %225 = getelementptr inbounds %struct.bTheme, ptr %213, i64 0, i32 16, i32 108
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %225, i8 noundef zeroext 120, i8 noundef zeroext -111, i8 noundef zeroext 120, i8 noundef zeroext -1) #16
  br label %226

226:                                              ; preds = %217, %212
  %227 = getelementptr inbounds %struct.bTheme, ptr %213, i64 0, i32 5, i32 35, i64 3
  %228 = load i8, ptr %227, align 1, !tbaa !43
  %229 = icmp eq i8 %228, 0
  br i1 %229, label %230, label %233

230:                                              ; preds = %226
  %231 = getelementptr inbounds %struct.bTheme, ptr %213, i64 0, i32 5, i32 35
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %231, i8 noundef zeroext 12, i8 noundef zeroext 48, i8 noundef zeroext 12, i8 noundef zeroext -1) #16
  %232 = getelementptr inbounds %struct.bTheme, ptr %213, i64 0, i32 5, i32 36
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %232, i8 noundef zeroext 102, i8 noundef zeroext -1, i8 noundef zeroext 102, i8 noundef zeroext -1) #16
  br label %233

233:                                              ; preds = %230, %226
  %234 = getelementptr inbounds %struct.bTheme, ptr %213, i64 0, i32 11, i32 119, i64 3
  %235 = load i8, ptr %234, align 1, !tbaa !43
  %236 = icmp eq i8 %235, 0
  br i1 %236, label %237, label %245

237:                                              ; preds = %233
  %238 = getelementptr inbounds %struct.bTheme, ptr %213, i64 0, i32 11, i32 119
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %238, i8 noundef zeroext 81, i8 noundef zeroext 105, i8 noundef zeroext -121, i8 noundef zeroext -1) #16
  %239 = getelementptr inbounds %struct.bTheme, ptr %213, i64 0, i32 11, i32 122
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %239, i8 noundef zeroext 109, i8 noundef zeroext 88, i8 noundef zeroext -127, i8 noundef zeroext -1) #16
  %240 = getelementptr inbounds %struct.bTheme, ptr %213, i64 0, i32 11, i32 123
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %240, i8 noundef zeroext 78, i8 noundef zeroext -104, i8 noundef zeroext 62, i8 noundef zeroext -1) #16
  %241 = getelementptr inbounds %struct.bTheme, ptr %213, i64 0, i32 11, i32 124
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %241, i8 noundef zeroext 46, i8 noundef zeroext -113, i8 noundef zeroext -113, i8 noundef zeroext -1) #16
  %242 = getelementptr inbounds %struct.bTheme, ptr %213, i64 0, i32 11, i32 125
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %242, i8 noundef zeroext -87, i8 noundef zeroext 84, i8 noundef zeroext 124, i8 noundef zeroext -1) #16
  %243 = getelementptr inbounds %struct.bTheme, ptr %213, i64 0, i32 11, i32 126
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %243, i8 noundef zeroext -94, i8 noundef zeroext 95, i8 noundef zeroext 111, i8 noundef zeroext -1) #16
  %244 = getelementptr inbounds %struct.bTheme, ptr %213, i64 0, i32 11, i32 127
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %244, i8 noundef zeroext 109, i8 noundef zeroext -111, i8 noundef zeroext -125, i8 noundef zeroext -1) #16
  br label %245

245:                                              ; preds = %233, %237
  %246 = load ptr, ptr %213, align 8, !tbaa !46
  %247 = icmp eq ptr %246, null
  br i1 %247, label %248, label %212, !llvm.loop !120

248:                                              ; preds = %245, %209
  %249 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 68), align 2, !tbaa !121
  %250 = icmp eq i16 %249, 0
  br i1 %250, label %251, label %254

251:                                              ; preds = %248
  store i16 15, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 68), align 2, !tbaa !121
  store i16 8, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 69), align 8, !tbaa !122
  %252 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !112
  %253 = or i32 %252, 131072
  store i32 %253, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !112
  br label %254

254:                                              ; preds = %248, %251, %206
  %255 = load i16, ptr %48, align 8, !tbaa !108
  %256 = icmp sgt i16 %255, 242
  %257 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %258 = icmp eq ptr %257, null
  %259 = select i1 %256, i1 true, i1 %258
  br i1 %259, label %279, label %260

260:                                              ; preds = %254, %274
  %261 = phi ptr [ %275, %274 ], [ %257, %254 ]
  %262 = getelementptr inbounds %struct.bTheme, ptr %261, i64 0, i32 9, i32 60, i64 3
  %263 = load i8, ptr %262, align 1, !tbaa !43
  %264 = icmp eq i8 %263, 0
  br i1 %264, label %265, label %269

265:                                              ; preds = %260
  %266 = getelementptr inbounds %struct.bTheme, ptr %261, i64 0, i32 9, i32 60
  %267 = getelementptr inbounds %struct.bTheme, ptr %261, i64 0, i32 5, i32 44
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %267, i8 noundef zeroext -1, i8 noundef zeroext 32, i8 noundef zeroext 32, i8 noundef zeroext -1) #16
  %268 = getelementptr inbounds %struct.bTheme, ptr %261, i64 0, i32 9, i32 61
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %268, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -86, i8 noundef zeroext -52) #16
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %266, i8 noundef zeroext -28, i8 noundef zeroext -100, i8 noundef zeroext -58, i8 noundef zeroext -52) #16
  br label %269

269:                                              ; preds = %265, %260
  %270 = getelementptr inbounds %struct.bTheme, ptr %261, i64 0, i32 7, i32 99
  %271 = load i8, ptr %270, align 4, !tbaa !65
  %272 = icmp eq i8 %271, 0
  br i1 %272, label %273, label %274

273:                                              ; preds = %269
  store i8 3, ptr %270, align 4, !tbaa !65
  br label %274

274:                                              ; preds = %269, %273
  %275 = load ptr, ptr %261, align 8, !tbaa !46
  %276 = icmp eq ptr %275, null
  br i1 %276, label %277, label %260, !llvm.loop !123

277:                                              ; preds = %274
  %278 = load i16, ptr %48, align 8, !tbaa !108
  br label %279

279:                                              ; preds = %277, %254
  %280 = phi i16 [ %255, %254 ], [ %278, %277 ]
  %281 = icmp slt i16 %280, 244
  %282 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 70), align 2
  %283 = icmp eq i16 %282, 0
  %284 = select i1 %281, i1 %283, i1 false
  br i1 %284, label %285, label %286

285:                                              ; preds = %279
  store i16 10, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 70), align 2, !tbaa !124
  br label %294

286:                                              ; preds = %279
  %287 = icmp slt i16 %280, 245
  br i1 %287, label %294, label %288

288:                                              ; preds = %286
  %289 = icmp eq i16 %280, 245
  br i1 %289, label %290, label %306

290:                                              ; preds = %288
  %291 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 4
  %292 = load i16, ptr %291, align 2, !tbaa !125
  %293 = icmp slt i16 %292, 3
  br i1 %293, label %294, label %306

294:                                              ; preds = %285, %290, %286
  %295 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %296 = icmp eq ptr %295, null
  br i1 %296, label %302, label %297

297:                                              ; preds = %294, %297
  %298 = phi ptr [ %300, %297 ], [ %295, %294 ]
  %299 = getelementptr inbounds %struct.bTheme, ptr %298, i64 0, i32 5, i32 128
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %299, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -128) #16
  %300 = load ptr, ptr %298, align 8, !tbaa !46
  %301 = icmp eq ptr %300, null
  br i1 %301, label %302, label %297, !llvm.loop !126

302:                                              ; preds = %297, %294
  %303 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 95), align 8, !tbaa !127
  %304 = icmp eq i16 %303, 0
  br i1 %304, label %305, label %306

305:                                              ; preds = %302
  tail call void @init_colorband(ptr noundef nonnull getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 95), i8 noundef zeroext 1) #15
  br label %306

306:                                              ; preds = %302, %305, %290, %288
  %307 = load i16, ptr %48, align 8, !tbaa !108
  %308 = icmp slt i16 %307, 245
  br i1 %308, label %318, label %309

309:                                              ; preds = %306
  %310 = icmp eq i16 %307, 245
  br i1 %310, label %311, label %374

311:                                              ; preds = %309
  %312 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 4
  %313 = load i16, ptr %312, align 2, !tbaa !125
  %314 = icmp sgt i16 %313, 10
  %315 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %316 = icmp eq ptr %315, null
  %317 = select i1 %314, i1 true, i1 %316
  br i1 %317, label %338, label %321

318:                                              ; preds = %306
  %319 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %320 = icmp eq ptr %319, null
  br i1 %320, label %370, label %321

321:                                              ; preds = %318, %311
  %322 = phi ptr [ %319, %318 ], [ %315, %311 ]
  br label %323

323:                                              ; preds = %321, %323
  %324 = phi ptr [ %331, %323 ], [ %322, %321 ]
  %325 = getelementptr inbounds %struct.bTheme, ptr %324, i64 0, i32 5, i32 62
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %325, i8 noundef zeroext 96, i8 noundef zeroext -64, i8 noundef zeroext 64, i8 noundef zeroext -1) #16
  %326 = getelementptr inbounds %struct.bTheme, ptr %324, i64 0, i32 7, i32 62
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %326, i8 noundef zeroext 96, i8 noundef zeroext -64, i8 noundef zeroext 64, i8 noundef zeroext -1) #16
  %327 = getelementptr inbounds %struct.bTheme, ptr %324, i64 0, i32 9, i32 62
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %327, i8 noundef zeroext 96, i8 noundef zeroext -64, i8 noundef zeroext 64, i8 noundef zeroext -1) #16
  %328 = getelementptr inbounds %struct.bTheme, ptr %324, i64 0, i32 10, i32 62
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %328, i8 noundef zeroext 96, i8 noundef zeroext -64, i8 noundef zeroext 64, i8 noundef zeroext -1) #16
  %329 = getelementptr inbounds %struct.bTheme, ptr %324, i64 0, i32 11, i32 62
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %329, i8 noundef zeroext 96, i8 noundef zeroext -64, i8 noundef zeroext 64, i8 noundef zeroext -1) #16
  %330 = getelementptr inbounds %struct.bTheme, ptr %324, i64 0, i32 15, i32 62
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %330, i8 noundef zeroext 96, i8 noundef zeroext -64, i8 noundef zeroext 64, i8 noundef zeroext -1) #16
  %331 = load ptr, ptr %324, align 8, !tbaa !46
  %332 = icmp eq ptr %331, null
  br i1 %332, label %333, label %323, !llvm.loop !128

333:                                              ; preds = %323
  %334 = load i16, ptr %48, align 8, !tbaa !108
  %335 = icmp slt i16 %334, 245
  br i1 %335, label %345, label %336

336:                                              ; preds = %333
  %337 = icmp eq i16 %334, 245
  br i1 %337, label %338, label %374

338:                                              ; preds = %311, %336
  %339 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 4
  %340 = load i16, ptr %339, align 2, !tbaa !125
  %341 = icmp sgt i16 %340, 12
  %342 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %343 = icmp eq ptr %342, null
  %344 = select i1 %341, i1 true, i1 %343
  br i1 %344, label %366, label %348

345:                                              ; preds = %333
  %346 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %347 = icmp eq ptr %346, null
  br i1 %347, label %370, label %348

348:                                              ; preds = %345, %338
  %349 = phi ptr [ %346, %345 ], [ %342, %338 ]
  br label %350

350:                                              ; preds = %348, %358
  %351 = phi ptr [ %359, %358 ], [ %349, %348 ]
  %352 = getelementptr inbounds %struct.bTheme, ptr %351, i64 0, i32 9, i32 35
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %352, i8 noundef zeroext 57, i8 noundef zeroext 125, i8 noundef zeroext 27, i8 noundef zeroext -1) #16
  %353 = getelementptr inbounds %struct.bTheme, ptr %351, i64 0, i32 9, i32 36
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %353, i8 noundef zeroext 125, i8 noundef zeroext -23, i8 noundef zeroext 96, i8 noundef zeroext -1) #16
  %354 = getelementptr inbounds %struct.bTheme, ptr %351, i64 0, i32 21, i64 0, i32 0, i64 3
  %355 = load i8, ptr %354, align 1, !tbaa !43
  %356 = icmp eq i8 %355, 0
  br i1 %356, label %357, label %358

357:                                              ; preds = %350
  tail call fastcc void @ui_theme_init_boneColorSets(ptr noundef nonnull %351) #16
  br label %358

358:                                              ; preds = %350, %357
  %359 = load ptr, ptr %351, align 8, !tbaa !46
  %360 = icmp eq ptr %359, null
  br i1 %360, label %361, label %350, !llvm.loop !129

361:                                              ; preds = %358
  %362 = load i16, ptr %48, align 8, !tbaa !108
  %363 = icmp slt i16 %362, 245
  br i1 %363, label %370, label %364

364:                                              ; preds = %361
  %365 = icmp eq i16 %362, 245
  br i1 %365, label %366, label %374

366:                                              ; preds = %338, %364
  %367 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 4
  %368 = load i16, ptr %367, align 2, !tbaa !125
  %369 = icmp slt i16 %368, 16
  br i1 %369, label %370, label %386

370:                                              ; preds = %318, %345, %366, %361
  %371 = phi i16 [ 245, %366 ], [ %362, %361 ], [ %334, %345 ], [ %307, %318 ]
  %372 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !107
  %373 = or i32 %372, 786432
  store i32 %373, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !107
  br label %386

374:                                              ; preds = %336, %309, %364
  %375 = phi i16 [ %362, %364 ], [ %307, %309 ], [ %334, %336 ]
  %376 = icmp ult i16 %375, 247
  br i1 %376, label %386, label %377

377:                                              ; preds = %374
  %378 = icmp eq i16 %375, 247
  br i1 %378, label %379, label %433

379:                                              ; preds = %377
  %380 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 4
  %381 = load i16, ptr %380, align 2, !tbaa !125
  %382 = icmp sgt i16 %381, 2
  %383 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %384 = icmp eq ptr %383, null
  %385 = select i1 %382, i1 true, i1 %384
  br i1 %385, label %438, label %390

386:                                              ; preds = %366, %370, %374
  %387 = phi i16 [ 245, %366 ], [ %371, %370 ], [ 246, %374 ]
  %388 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %389 = icmp eq ptr %388, null
  br i1 %389, label %442, label %390

390:                                              ; preds = %386, %379
  %391 = phi ptr [ %388, %386 ], [ %383, %379 ]
  br label %392

392:                                              ; preds = %390, %392
  %393 = phi ptr [ %429, %392 ], [ %391, %390 ]
  %394 = getelementptr inbounds %struct.bTheme, ptr %393, i64 0, i32 7, i32 38
  %395 = getelementptr inbounds %struct.bTheme, ptr %393, i64 0, i32 7, i32 129
  %396 = load i8, ptr %394, align 1, !tbaa !43
  %397 = getelementptr inbounds %struct.bTheme, ptr %393, i64 0, i32 7, i32 38, i64 1
  %398 = load i8, ptr %397, align 1, !tbaa !43
  %399 = getelementptr inbounds %struct.bTheme, ptr %393, i64 0, i32 7, i32 38, i64 2
  %400 = load i8, ptr %399, align 1, !tbaa !43
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %395, i8 noundef zeroext %396, i8 noundef zeroext %398, i8 noundef zeroext %400, i8 noundef zeroext -1) #16
  %401 = getelementptr inbounds %struct.bTheme, ptr %393, i64 0, i32 7, i32 39
  %402 = getelementptr inbounds %struct.bTheme, ptr %393, i64 0, i32 7, i32 130
  %403 = load i8, ptr %401, align 1, !tbaa !43
  %404 = getelementptr inbounds %struct.bTheme, ptr %393, i64 0, i32 7, i32 39, i64 1
  %405 = load i8, ptr %404, align 1, !tbaa !43
  %406 = getelementptr inbounds %struct.bTheme, ptr %393, i64 0, i32 7, i32 39, i64 2
  %407 = load i8, ptr %406, align 1, !tbaa !43
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %402, i8 noundef zeroext %403, i8 noundef zeroext %405, i8 noundef zeroext %407, i8 noundef zeroext -1) #16
  %408 = getelementptr inbounds %struct.bTheme, ptr %393, i64 0, i32 7, i32 99
  %409 = load i8, ptr %408, align 4, !tbaa !65
  %410 = getelementptr inbounds %struct.bTheme, ptr %393, i64 0, i32 7, i32 132
  store i8 %409, ptr %410, align 4, !tbaa !66
  %411 = getelementptr inbounds %struct.bTheme, ptr %393, i64 0, i32 5, i32 58
  %412 = getelementptr inbounds %struct.bTheme, ptr %393, i64 0, i32 11, i32 58
  %413 = load i8, ptr %411, align 1, !tbaa !43
  %414 = getelementptr inbounds %struct.bTheme, ptr %393, i64 0, i32 5, i32 58, i64 1
  %415 = load i8, ptr %414, align 1, !tbaa !43
  %416 = getelementptr inbounds %struct.bTheme, ptr %393, i64 0, i32 5, i32 58, i64 2
  %417 = load i8, ptr %416, align 1, !tbaa !43
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %412, i8 noundef zeroext %413, i8 noundef zeroext %415, i8 noundef zeroext %417, i8 noundef zeroext -1) #16
  %418 = getelementptr inbounds %struct.bTheme, ptr %393, i64 0, i32 12, i32 58
  %419 = load i8, ptr %411, align 1, !tbaa !43
  %420 = load i8, ptr %414, align 1, !tbaa !43
  %421 = load i8, ptr %416, align 1, !tbaa !43
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %418, i8 noundef zeroext %419, i8 noundef zeroext %420, i8 noundef zeroext %421, i8 noundef zeroext -1) #16
  %422 = getelementptr inbounds %struct.bTheme, ptr %393, i64 0, i32 5, i32 39
  %423 = getelementptr inbounds %struct.bTheme, ptr %393, i64 0, i32 11, i32 39
  %424 = load i8, ptr %422, align 1, !tbaa !43
  %425 = getelementptr inbounds %struct.bTheme, ptr %393, i64 0, i32 5, i32 39, i64 1
  %426 = load i8, ptr %425, align 1, !tbaa !43
  %427 = getelementptr inbounds %struct.bTheme, ptr %393, i64 0, i32 5, i32 39, i64 2
  %428 = load i8, ptr %427, align 1, !tbaa !43
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %423, i8 noundef zeroext %424, i8 noundef zeroext %426, i8 noundef zeroext %428, i8 noundef zeroext -1) #16
  %429 = load ptr, ptr %393, align 8, !tbaa !46
  %430 = icmp eq ptr %429, null
  br i1 %430, label %431, label %392, !llvm.loop !130

431:                                              ; preds = %392
  %432 = load i16, ptr %48, align 8, !tbaa !108
  br label %433

433:                                              ; preds = %431, %377
  %434 = phi i16 [ %432, %431 ], [ %375, %377 ]
  %435 = icmp slt i16 %434, 250
  br i1 %435, label %436, label %471

436:                                              ; preds = %433
  %437 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  br label %438

438:                                              ; preds = %436, %379
  %439 = phi ptr [ %437, %436 ], [ %383, %379 ]
  %440 = phi i16 [ %434, %436 ], [ 247, %379 ]
  %441 = icmp eq ptr %439, null
  br i1 %441, label %442, label %444

442:                                              ; preds = %386, %438
  %443 = phi i16 [ %440, %438 ], [ %387, %386 ]
  store i16 1, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 48), align 4, !tbaa !131
  store i16 2, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 49), align 2, !tbaa !132
  store i8 2, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 75), align 4, !tbaa !133
  br label %481

444:                                              ; preds = %438, %453
  %445 = phi ptr [ %466, %453 ], [ %439, %438 ]
  %446 = getelementptr inbounds %struct.bTheme, ptr %445, i64 0, i32 12, i32 49, i64 3
  %447 = load i8, ptr %446, align 1, !tbaa !43
  %448 = icmp eq i8 %447, 0
  br i1 %448, label %449, label %453

449:                                              ; preds = %444
  %450 = getelementptr inbounds %struct.bTheme, ptr %445, i64 0, i32 12, i32 49
  %451 = getelementptr inbounds %struct.bTheme, ptr %445, i64 0, i32 12, i32 128
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %451, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -128) #16
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %450, i8 noundef zeroext -1, i8 noundef zeroext -123, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %452 = getelementptr inbounds %struct.bTheme, ptr %445, i64 0, i32 12, i32 101
  store i8 2, ptr %452, align 2, !tbaa !68
  br label %453

453:                                              ; preds = %449, %444
  %454 = getelementptr inbounds %struct.bTheme, ptr %445, i64 0, i32 9, i32 81
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %454, i8 noundef zeroext 82, i8 noundef zeroext 96, i8 noundef zeroext 110, i8 noundef zeroext -1) #16
  %455 = getelementptr inbounds %struct.bTheme, ptr %445, i64 0, i32 9, i32 82
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %455, i8 noundef zeroext 124, i8 noundef zeroext -119, i8 noundef zeroext -106, i8 noundef zeroext -1) #16
  %456 = getelementptr inbounds %struct.bTheme, ptr %445, i64 0, i32 9, i32 35
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %456, i8 noundef zeroext 79, i8 noundef zeroext 101, i8 noundef zeroext 73, i8 noundef zeroext -1) #16
  %457 = getelementptr inbounds %struct.bTheme, ptr %445, i64 0, i32 9, i32 36
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %457, i8 noundef zeroext -121, i8 noundef zeroext -79, i8 noundef zeroext 125, i8 noundef zeroext -1) #16
  %458 = getelementptr inbounds %struct.bTheme, ptr %445, i64 0, i32 7, i32 81
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %458, i8 noundef zeroext 82, i8 noundef zeroext 96, i8 noundef zeroext 110, i8 noundef zeroext -1) #16
  %459 = getelementptr inbounds %struct.bTheme, ptr %445, i64 0, i32 7, i32 82
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %459, i8 noundef zeroext 124, i8 noundef zeroext -119, i8 noundef zeroext -106, i8 noundef zeroext -1) #16
  %460 = getelementptr inbounds %struct.bTheme, ptr %445, i64 0, i32 7, i32 35
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %460, i8 noundef zeroext 79, i8 noundef zeroext 101, i8 noundef zeroext 73, i8 noundef zeroext -1) #16
  %461 = getelementptr inbounds %struct.bTheme, ptr %445, i64 0, i32 7, i32 36
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %461, i8 noundef zeroext -121, i8 noundef zeroext -79, i8 noundef zeroext 125, i8 noundef zeroext -1) #16
  %462 = getelementptr inbounds %struct.bTheme, ptr %445, i64 0, i32 10, i32 81
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %462, i8 noundef zeroext 82, i8 noundef zeroext 96, i8 noundef zeroext 110, i8 noundef zeroext -1) #16
  %463 = getelementptr inbounds %struct.bTheme, ptr %445, i64 0, i32 10, i32 82
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %463, i8 noundef zeroext 124, i8 noundef zeroext -119, i8 noundef zeroext -106, i8 noundef zeroext -1) #16
  %464 = getelementptr inbounds %struct.bTheme, ptr %445, i64 0, i32 10, i32 60
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %464, i8 noundef zeroext 12, i8 noundef zeroext 10, i8 noundef zeroext 10, i8 noundef zeroext -128) #16
  %465 = getelementptr inbounds %struct.bTheme, ptr %445, i64 0, i32 10, i32 61
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %465, i8 noundef zeroext -1, i8 noundef zeroext -116, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %466 = load ptr, ptr %445, align 8, !tbaa !46
  %467 = icmp eq ptr %466, null
  br i1 %467, label %468, label %444, !llvm.loop !134

468:                                              ; preds = %453
  %469 = load i16, ptr %48, align 8, !tbaa !108
  store i16 1, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 48), align 4, !tbaa !131
  store i16 2, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 49), align 2, !tbaa !132
  store i8 2, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 75), align 4, !tbaa !133
  %470 = icmp slt i16 %469, 250
  br i1 %470, label %481, label %471

471:                                              ; preds = %433, %468
  %472 = phi i16 [ %469, %468 ], [ %434, %433 ]
  %473 = icmp eq i16 %472, 250
  br i1 %473, label %474, label %509

474:                                              ; preds = %471
  %475 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 4
  %476 = load i16, ptr %475, align 2, !tbaa !125
  %477 = icmp sgt i16 %476, 0
  %478 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %479 = icmp eq ptr %478, null
  %480 = select i1 %477, i1 true, i1 %479
  br i1 %480, label %509, label %485

481:                                              ; preds = %442, %468
  %482 = phi i16 [ %443, %442 ], [ %469, %468 ]
  %483 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %484 = icmp eq ptr %483, null
  br i1 %484, label %516, label %485

485:                                              ; preds = %481, %474
  %486 = phi ptr [ %483, %481 ], [ %478, %474 ]
  br label %487

487:                                              ; preds = %485, %501
  %488 = phi ptr [ %504, %501 ], [ %486, %485 ]
  tail call fastcc void @ui_theme_init_new(ptr noundef nonnull %488) #16
  %489 = getelementptr inbounds %struct.bTheme, ptr %488, i64 0, i32 3, i32 6, i32 0, i64 3
  %490 = load i8, ptr %489, align 1, !tbaa !43
  %491 = icmp eq i8 %490, 0
  br i1 %491, label %492, label %494

492:                                              ; preds = %487
  %493 = getelementptr inbounds %struct.bTheme, ptr %488, i64 0, i32 3
  tail call void @ui_widget_color_init(ptr noundef nonnull %493) #15
  br label %494

494:                                              ; preds = %492, %487
  %495 = getelementptr inbounds %struct.bTheme, ptr %488, i64 0, i32 17, i32 106, i64 3
  %496 = load i8, ptr %495, align 1, !tbaa !43
  %497 = icmp eq i8 %496, 0
  br i1 %497, label %498, label %501

498:                                              ; preds = %494
  %499 = getelementptr inbounds %struct.bTheme, ptr %488, i64 0, i32 17
  %500 = getelementptr inbounds %struct.bTheme, ptr %488, i64 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(720) %499, ptr noundef nonnull align 8 dereferenceable(720) %500, i64 720, i1 false), !tbaa.struct !63
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %499, i8 noundef zeroext 100, i8 noundef zeroext 100, i8 noundef zeroext 100, i8 noundef zeroext -1) #16
  br label %501

501:                                              ; preds = %498, %494
  %502 = getelementptr inbounds %struct.bTheme, ptr %488, i64 0, i32 8
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %502, i8 noundef zeroext 114, i8 noundef zeroext 114, i8 noundef zeroext 114, i8 noundef zeroext -1) #16
  %503 = getelementptr inbounds %struct.bTheme, ptr %488, i64 0, i32 18
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %503, i8 noundef zeroext 114, i8 noundef zeroext 114, i8 noundef zeroext 114, i8 noundef zeroext -1) #16
  %504 = load ptr, ptr %488, align 8, !tbaa !46
  %505 = icmp eq ptr %504, null
  br i1 %505, label %506, label %487, !llvm.loop !135

506:                                              ; preds = %501
  %507 = load i16, ptr %48, align 8, !tbaa !108
  %508 = icmp slt i16 %507, 250
  br i1 %508, label %516, label %509

509:                                              ; preds = %471, %474, %506
  %510 = phi i16 [ %507, %506 ], [ %472, %474 ], [ %472, %471 ]
  %511 = icmp eq i16 %510, 250
  br i1 %511, label %512, label %644

512:                                              ; preds = %509
  %513 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 4
  %514 = load i16, ptr %513, align 2, !tbaa !125
  %515 = icmp slt i16 %514, 3
  br i1 %515, label %516, label %539

516:                                              ; preds = %481, %512, %506
  %517 = phi i1 [ false, %512 ], [ true, %506 ], [ true, %481 ]
  %518 = phi i16 [ 250, %512 ], [ %507, %506 ], [ %482, %481 ]
  %519 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 31), align 4, !tbaa !136
  %520 = icmp eq i32 %519, 0
  br i1 %520, label %521, label %522

521:                                              ; preds = %516
  store i32 2, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 31), align 4, !tbaa !136
  br label %522

522:                                              ; preds = %521, %516
  %523 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 30), align 8, !tbaa !137
  %524 = icmp eq i32 %523, 0
  br i1 %524, label %525, label %526

525:                                              ; preds = %522
  store i32 36, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 30), align 8, !tbaa !137
  br label %526

526:                                              ; preds = %525, %522
  %527 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 29), align 4, !tbaa !138
  %528 = icmp eq i32 %527, 0
  br i1 %528, label %529, label %530

529:                                              ; preds = %526
  store i32 44100, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 29), align 4, !tbaa !138
  br label %530

530:                                              ; preds = %526, %529
  br i1 %517, label %534, label %531

531:                                              ; preds = %530
  %532 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 4
  %533 = load i16, ptr %532, align 2, !tbaa !125
  br label %539

534:                                              ; preds = %530
  %535 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 20), align 8, !tbaa !139
  %536 = or i16 %535, 8
  store i16 %536, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 20), align 8, !tbaa !139
  %537 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 42), align 8, !tbaa !46
  %538 = icmp eq ptr %537, null
  br i1 %538, label %628, label %551

539:                                              ; preds = %531, %512
  %540 = phi i16 [ %518, %531 ], [ 250, %512 ]
  %541 = phi i16 [ %533, %531 ], [ %514, %512 ]
  %542 = icmp slt i16 %541, 5
  br i1 %542, label %543, label %546

543:                                              ; preds = %539
  %544 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 20), align 8, !tbaa !139
  %545 = or i16 %544, 8
  store i16 %545, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 20), align 8, !tbaa !139
  br label %546

546:                                              ; preds = %539, %543
  %547 = icmp sgt i16 %541, 7
  %548 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 42), align 8
  %549 = icmp eq ptr %548, null
  %550 = select i1 %547, i1 true, i1 %549
  br i1 %550, label %628, label %551

551:                                              ; preds = %534, %546
  %552 = phi ptr [ %537, %534 ], [ %548, %546 ]
  br label %553

553:                                              ; preds = %551, %623
  %554 = phi ptr [ %624, %623 ], [ %552, %551 ]
  %555 = getelementptr inbounds %struct.wmKeyMap, ptr %554, i64 0, i32 4
  %556 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %555, ptr noundef nonnull dereferenceable(16) @.str.3) #18
  %557 = icmp eq i32 %556, 0
  br i1 %557, label %558, label %559

558:                                              ; preds = %553
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %555, ptr noundef nonnull align 1 dereferenceable(16) @.str.4, i64 16, i1 false) #15
  br label %623

559:                                              ; preds = %553
  %560 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %555, ptr noundef nonnull dereferenceable(7) @.str.5) #18
  %561 = icmp eq i32 %560, 0
  br i1 %561, label %562, label %563

562:                                              ; preds = %559
  store i64 33607025319494707, ptr %555, align 1
  br label %623

563:                                              ; preds = %559
  %564 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %555, ptr noundef nonnull dereferenceable(15) @.str.7) #18
  %565 = icmp eq i32 %564, 0
  br i1 %565, label %566, label %567

566:                                              ; preds = %563
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %555, ptr noundef nonnull align 1 dereferenceable(16) @.str.8, i64 16, i1 false) #15
  br label %623

567:                                              ; preds = %563
  %568 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %555, ptr noundef nonnull dereferenceable(9) @.str.9) #18
  %569 = icmp eq i32 %568, 0
  br i1 %569, label %570, label %571

570:                                              ; preds = %567
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %555, ptr noundef nonnull align 1 dereferenceable(5) @.str.10, i64 5, i1 false) #15
  br label %623

571:                                              ; preds = %567
  %572 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %555, ptr noundef nonnull dereferenceable(9) @.str.11) #18
  %573 = icmp eq i32 %572, 0
  br i1 %573, label %574, label %575

574:                                              ; preds = %571
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %555, ptr noundef nonnull align 1 dereferenceable(9) @.str.12, i64 9, i1 false) #15
  br label %623

575:                                              ; preds = %571
  %576 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %555, ptr noundef nonnull dereferenceable(7) @.str.13) #18
  %577 = icmp eq i32 %576, 0
  br i1 %577, label %578, label %579

578:                                              ; preds = %575
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %555, ptr noundef nonnull align 1 dereferenceable(10) @.str.14, i64 10, i1 false) #15
  br label %623

579:                                              ; preds = %575
  %580 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %555, ptr noundef nonnull dereferenceable(19) @.str.15) #18
  %581 = icmp eq i32 %580, 0
  br i1 %581, label %582, label %583

582:                                              ; preds = %579
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %555, ptr noundef nonnull align 1 dereferenceable(19) @.str.16, i64 19, i1 false) #15
  br label %623

583:                                              ; preds = %579
  %584 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %555, ptr noundef nonnull dereferenceable(15) @.str.17) #18
  %585 = icmp eq i32 %584, 0
  br i1 %585, label %586, label %587

586:                                              ; preds = %583
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %555, ptr noundef nonnull align 1 dereferenceable(13) @.str.18, i64 13, i1 false) #15
  br label %623

587:                                              ; preds = %583
  %588 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %555, ptr noundef nonnull dereferenceable(18) @.str.19) #18
  %589 = icmp eq i32 %588, 0
  br i1 %589, label %590, label %591

590:                                              ; preds = %587
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %555, ptr noundef nonnull align 1 dereferenceable(21) @.str.20, i64 21, i1 false) #15
  br label %623

591:                                              ; preds = %587
  %592 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %555, ptr noundef nonnull dereferenceable(12) @.str.21) #18
  %593 = icmp eq i32 %592, 0
  br i1 %593, label %594, label %595

594:                                              ; preds = %591
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %555, ptr noundef nonnull align 1 dereferenceable(10) @.str.22, i64 10, i1 false) #15
  br label %623

595:                                              ; preds = %591
  %596 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %555, ptr noundef nonnull dereferenceable(9) @.str.23) #18
  %597 = icmp eq i32 %596, 0
  br i1 %597, label %598, label %599

598:                                              ; preds = %595
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %555, ptr noundef nonnull align 1 dereferenceable(11) @.str.24, i64 11, i1 false) #15
  br label %623

599:                                              ; preds = %595
  %600 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %555, ptr noundef nonnull dereferenceable(13) @.str.25) #18
  %601 = icmp eq i32 %600, 0
  br i1 %601, label %602, label %603

602:                                              ; preds = %599
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %555, ptr noundef nonnull align 1 dereferenceable(12) @.str.26, i64 12, i1 false) #15
  br label %623

603:                                              ; preds = %599
  %604 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %555, ptr noundef nonnull dereferenceable(14) @.str.27) #18
  %605 = icmp eq i32 %604, 0
  br i1 %605, label %606, label %607

606:                                              ; preds = %603
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %555, ptr noundef nonnull align 1 dereferenceable(13) @.str.28, i64 13, i1 false) #15
  br label %623

607:                                              ; preds = %603
  %608 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %555, ptr noundef nonnull dereferenceable(5) @.str.29) #18
  %609 = icmp eq i32 %608, 0
  br i1 %609, label %610, label %611

610:                                              ; preds = %607
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %555, ptr noundef nonnull align 1 dereferenceable(13) @.str.30, i64 13, i1 false) #15
  br label %623

611:                                              ; preds = %607
  %612 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %555, ptr noundef nonnull dereferenceable(9) @.str.31) #18
  %613 = icmp eq i32 %612, 0
  br i1 %613, label %614, label %615

614:                                              ; preds = %611
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %555, ptr noundef nonnull align 1 dereferenceable(18) @.str.32, i64 18, i1 false) #15
  br label %623

615:                                              ; preds = %611
  %616 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %555, ptr noundef nonnull dereferenceable(12) @.str.33) #18
  %617 = icmp eq i32 %616, 0
  br i1 %617, label %618, label %619

618:                                              ; preds = %615
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %555, ptr noundef nonnull align 1 dereferenceable(21) @.str.34, i64 21, i1 false) #15
  br label %623

619:                                              ; preds = %615
  %620 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %555, ptr noundef nonnull dereferenceable(16) @.str.35) #18
  %621 = icmp eq i32 %620, 0
  br i1 %621, label %622, label %623

622:                                              ; preds = %619
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %555, ptr noundef nonnull align 1 dereferenceable(16) @.str.36, i64 16, i1 false) #15
  br label %623

623:                                              ; preds = %558, %566, %574, %582, %590, %598, %606, %614, %619, %622, %618, %610, %602, %594, %586, %578, %570, %562
  %624 = load ptr, ptr %554, align 8, !tbaa !46
  %625 = icmp eq ptr %624, null
  br i1 %625, label %626, label %553, !llvm.loop !140

626:                                              ; preds = %623
  %627 = load i16, ptr %48, align 8, !tbaa !108
  br label %628

628:                                              ; preds = %626, %534, %546
  %629 = phi i16 [ %627, %626 ], [ %518, %534 ], [ %540, %546 ]
  %630 = icmp slt i16 %629, 250
  br i1 %630, label %640, label %631

631:                                              ; preds = %628
  %632 = icmp eq i16 %629, 250
  br i1 %632, label %633, label %644

633:                                              ; preds = %631
  %634 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 4
  %635 = load i16, ptr %634, align 2, !tbaa !125
  %636 = icmp slt i16 %635, 16
  %637 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 61), align 4
  %638 = icmp eq i16 %637, 0
  %639 = select i1 %636, i1 %638, i1 false
  br i1 %639, label %643, label %653

640:                                              ; preds = %628
  %641 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 61), align 4, !tbaa !141
  %642 = icmp eq i16 %641, 0
  br i1 %642, label %643, label %653

643:                                              ; preds = %633, %640
  store i16 3, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 61), align 4, !tbaa !141
  br label %653

644:                                              ; preds = %509, %631
  %645 = phi i16 [ %629, %631 ], [ %510, %509 ]
  %646 = icmp ult i16 %645, 252
  br i1 %646, label %653, label %647

647:                                              ; preds = %644
  %648 = icmp eq i16 %645, 252
  br i1 %648, label %649, label %726

649:                                              ; preds = %647
  %650 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 4
  %651 = load i16, ptr %650, align 2, !tbaa !125
  %652 = icmp slt i16 %651, 3
  br i1 %652, label %658, label %669

653:                                              ; preds = %633, %643, %640, %644
  %654 = phi i16 [ 251, %644 ], [ %629, %640 ], [ %629, %643 ], [ 250, %633 ]
  %655 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !107
  %656 = and i32 %655, 16384
  %657 = icmp eq i32 %656, 0
  br i1 %657, label %672, label %664

658:                                              ; preds = %649
  %659 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !107
  %660 = and i32 %659, 16384
  %661 = icmp eq i32 %660, 0
  br i1 %661, label %666, label %662

662:                                              ; preds = %658
  %663 = and i32 %659, -4097
  store i32 %663, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !107
  br label %666

664:                                              ; preds = %653
  %665 = and i32 %655, -4097
  store i32 %665, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !107
  br label %672

666:                                              ; preds = %662, %658
  %667 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 4
  %668 = load i16, ptr %667, align 2, !tbaa !125
  br label %669

669:                                              ; preds = %666, %649
  %670 = phi i16 [ %668, %666 ], [ %651, %649 ]
  %671 = icmp slt i16 %670, 4
  br i1 %671, label %672, label %686

672:                                              ; preds = %653, %664, %669
  %673 = phi i16 [ %654, %664 ], [ 252, %669 ], [ %654, %653 ]
  store i8 1, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 76), align 1, !tbaa !142
  %674 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %675 = icmp eq ptr %674, null
  br i1 %675, label %702, label %676

676:                                              ; preds = %672, %676
  %677 = phi ptr [ %681, %676 ], [ %674, %672 ]
  %678 = getelementptr inbounds %struct.bTheme, ptr %677, i64 0, i32 5
  tail call fastcc void @ui_theme_space_init_handles_color(ptr noundef nonnull %678) #16
  %679 = getelementptr inbounds %struct.bTheme, ptr %677, i64 0, i32 7
  tail call fastcc void @ui_theme_space_init_handles_color(ptr noundef nonnull %679) #16
  %680 = getelementptr inbounds %struct.bTheme, ptr %677, i64 0, i32 5, i32 46
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %680, i8 noundef zeroext -52, i8 noundef zeroext 0, i8 noundef zeroext -103, i8 noundef zeroext -1) #16
  %681 = load ptr, ptr %677, align 8, !tbaa !46
  %682 = icmp eq ptr %681, null
  br i1 %682, label %683, label %676, !llvm.loop !143

683:                                              ; preds = %676
  %684 = load i16, ptr %48, align 8, !tbaa !108
  %685 = icmp slt i16 %684, 253
  br i1 %685, label %686, label %726

686:                                              ; preds = %669, %683
  %687 = phi i16 [ 252, %669 ], [ %684, %683 ]
  %688 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %689 = icmp eq ptr %688, null
  br i1 %689, label %702, label %690

690:                                              ; preds = %686, %697
  %691 = phi ptr [ %698, %697 ], [ %688, %686 ]
  %692 = getelementptr inbounds %struct.bTheme, ptr %691, i64 0, i32 5, i32 70, i64 3
  %693 = load i8, ptr %692, align 1, !tbaa !43
  %694 = icmp eq i8 %693, 0
  br i1 %694, label %695, label %697

695:                                              ; preds = %690
  %696 = getelementptr inbounds %struct.bTheme, ptr %691, i64 0, i32 5, i32 70
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %696, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #16
  br label %697

697:                                              ; preds = %690, %695
  %698 = load ptr, ptr %691, align 8, !tbaa !46
  %699 = icmp eq ptr %698, null
  br i1 %699, label %700, label %690, !llvm.loop !144

700:                                              ; preds = %697
  %701 = load i16, ptr %48, align 8, !tbaa !108
  br label %702

702:                                              ; preds = %672, %700, %686
  %703 = phi i16 [ %701, %700 ], [ %687, %686 ], [ %673, %672 ]
  %704 = icmp slt i16 %703, 252
  br i1 %704, label %714, label %705

705:                                              ; preds = %702
  %706 = icmp eq i16 %703, 252
  br i1 %706, label %707, label %726

707:                                              ; preds = %705
  %708 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 4
  %709 = load i16, ptr %708, align 2, !tbaa !125
  %710 = icmp sgt i16 %709, 4
  %711 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %712 = icmp eq ptr %711, null
  %713 = select i1 %710, i1 true, i1 %712
  br i1 %713, label %740, label %717

714:                                              ; preds = %702
  %715 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %716 = icmp eq ptr %715, null
  br i1 %716, label %781, label %717

717:                                              ; preds = %714, %707
  %718 = phi ptr [ %715, %714 ], [ %711, %707 ]
  br label %719

719:                                              ; preds = %717, %719
  %720 = phi ptr [ %722, %719 ], [ %718, %717 ]
  %721 = getelementptr inbounds %struct.bTheme, ptr %720, i64 0, i32 3, i32 15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %721, ptr noundef nonnull align 2 dereferenceable(32) @__const.init_userdef_do_versions.wcol_progress, i64 32, i1 false), !tbaa.struct !145
  %722 = load ptr, ptr %720, align 8, !tbaa !46
  %723 = icmp eq ptr %722, null
  br i1 %723, label %724, label %719, !llvm.loop !146

724:                                              ; preds = %719
  %725 = load i16, ptr %48, align 8, !tbaa !108
  br label %726

726:                                              ; preds = %647, %724, %683, %705
  %727 = phi i16 [ %703, %705 ], [ %684, %683 ], [ %725, %724 ], [ %645, %647 ]
  %728 = icmp slt i16 %727, 255
  br i1 %728, label %738, label %729

729:                                              ; preds = %726
  %730 = icmp eq i16 %727, 255
  br i1 %730, label %731, label %756

731:                                              ; preds = %729
  %732 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 4
  %733 = load i16, ptr %732, align 2, !tbaa !125
  %734 = icmp sgt i16 %733, 1
  %735 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %736 = icmp eq ptr %735, null
  %737 = select i1 %734, i1 true, i1 %736
  br i1 %737, label %766, label %744

738:                                              ; preds = %726
  %739 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  br label %740

740:                                              ; preds = %738, %707
  %741 = phi ptr [ %739, %738 ], [ %711, %707 ]
  %742 = phi i16 [ %727, %738 ], [ 252, %707 ]
  %743 = icmp eq ptr %741, null
  br i1 %743, label %763, label %744

744:                                              ; preds = %740, %731
  %745 = phi ptr [ %741, %740 ], [ %735, %731 ]
  br label %746

746:                                              ; preds = %744, %746
  %747 = phi ptr [ %751, %746 ], [ %745, %744 ]
  %748 = getelementptr inbounds %struct.bTheme, ptr %747, i64 0, i32 5, i32 50
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %748, i8 noundef zeroext 32, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %749 = getelementptr inbounds %struct.bTheme, ptr %747, i64 0, i32 5, i32 52
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %749, i8 noundef zeroext 0, i8 noundef zeroext 32, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %750 = getelementptr inbounds %struct.bTheme, ptr %747, i64 0, i32 5, i32 53
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %750, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -128, i8 noundef zeroext -1) #16
  %751 = load ptr, ptr %747, align 8, !tbaa !46
  %752 = icmp eq ptr %751, null
  br i1 %752, label %753, label %746, !llvm.loop !147

753:                                              ; preds = %746
  %754 = load i16, ptr %48, align 8, !tbaa !108
  %755 = icmp slt i16 %754, 256
  br i1 %755, label %763, label %756

756:                                              ; preds = %729, %753
  %757 = phi i16 [ %754, %753 ], [ %727, %729 ]
  %758 = icmp eq i16 %757, 256
  br i1 %758, label %759, label %785

759:                                              ; preds = %756
  %760 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 4
  %761 = load i16, ptr %760, align 2, !tbaa !125
  %762 = icmp slt i16 %761, 4
  br i1 %762, label %763, label %781

763:                                              ; preds = %753, %759, %740
  %764 = phi i16 [ %742, %740 ], [ %754, %753 ], [ 256, %759 ]
  %765 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  br label %766

766:                                              ; preds = %763, %731
  %767 = phi ptr [ %765, %763 ], [ %735, %731 ]
  %768 = phi i16 [ %764, %763 ], [ 255, %731 ]
  %769 = icmp eq ptr %767, null
  br i1 %769, label %781, label %770

770:                                              ; preds = %766, %776
  %771 = phi ptr [ %777, %776 ], [ %767, %766 ]
  %772 = getelementptr inbounds %struct.bTheme, ptr %771, i64 0, i32 5, i32 100
  %773 = load i8, ptr %772, align 1, !tbaa !60
  %774 = icmp eq i8 %773, 0
  br i1 %774, label %775, label %776

775:                                              ; preds = %770
  store i8 1, ptr %772, align 1, !tbaa !60
  br label %776

776:                                              ; preds = %770, %775
  %777 = load ptr, ptr %771, align 8, !tbaa !46
  %778 = icmp eq ptr %777, null
  br i1 %778, label %779, label %770, !llvm.loop !148

779:                                              ; preds = %776
  %780 = icmp slt i16 %768, 257
  br i1 %780, label %781, label %785

781:                                              ; preds = %714, %766, %779, %759
  %782 = phi i16 [ %768, %779 ], [ 256, %759 ], [ %768, %766 ], [ %703, %714 ]
  %783 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 92), align 2, !tbaa !149
  %784 = and i16 %783, -65
  store i16 %784, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 92), align 2, !tbaa !149
  br label %797

785:                                              ; preds = %756, %779
  %786 = phi i16 [ %757, %756 ], [ %768, %779 ]
  %787 = icmp ult i16 %786, 258
  br i1 %787, label %797, label %788

788:                                              ; preds = %785
  switch i16 %786, label %830 [
    i16 258, label %791
    i16 259, label %789
  ]

789:                                              ; preds = %788
  %790 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  br label %810

791:                                              ; preds = %788
  %792 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 4
  %793 = load i16, ptr %792, align 2, !tbaa !125
  %794 = icmp slt i16 %793, 2
  br i1 %794, label %797, label %795

795:                                              ; preds = %791
  %796 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !46
  br label %817

797:                                              ; preds = %781, %791, %785
  %798 = phi i16 [ %782, %781 ], [ 258, %791 ], [ 257, %785 ]
  %799 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %800 = icmp eq ptr %799, null
  br i1 %800, label %837, label %801

801:                                              ; preds = %797, %801
  %802 = phi ptr [ %804, %801 ], [ %799, %797 ]
  %803 = getelementptr inbounds %struct.bTheme, ptr %802, i64 0, i32 16, i32 102
  store i8 5, ptr %803, align 1, !tbaa !70
  %804 = load ptr, ptr %802, align 8, !tbaa !46
  %805 = icmp eq ptr %804, null
  br i1 %805, label %806, label %801, !llvm.loop !150

806:                                              ; preds = %801
  %807 = icmp slt i16 %798, 259
  br i1 %807, label %817, label %808

808:                                              ; preds = %806
  %809 = icmp eq i16 %798, 259
  br i1 %809, label %810, label %830

810:                                              ; preds = %789, %808
  %811 = phi ptr [ %790, %789 ], [ %799, %808 ]
  %812 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 4
  %813 = load i16, ptr %812, align 2, !tbaa !125
  %814 = icmp sgt i16 %813, 0
  %815 = icmp eq ptr %811, null
  %816 = select i1 %814, i1 true, i1 %815
  br i1 %816, label %837, label %820

817:                                              ; preds = %795, %806
  %818 = phi ptr [ %796, %795 ], [ %799, %806 ]
  %819 = icmp eq ptr %818, null
  br i1 %819, label %837, label %820

820:                                              ; preds = %817, %810
  %821 = phi ptr [ %818, %817 ], [ %811, %810 ]
  br label %822

822:                                              ; preds = %820, %822
  %823 = phi ptr [ %825, %822 ], [ %821, %820 ]
  %824 = getelementptr inbounds %struct.bTheme, ptr %823, i64 0, i32 5, i32 31, i64 3
  store i8 -1, ptr %824, align 1, !tbaa !43
  %825 = load ptr, ptr %823, align 8, !tbaa !46
  %826 = icmp eq ptr %825, null
  br i1 %826, label %827, label %822, !llvm.loop !151

827:                                              ; preds = %822
  %828 = load i16, ptr %48, align 8, !tbaa !108
  %829 = icmp slt i16 %828, 260
  br i1 %829, label %837, label %830

830:                                              ; preds = %808, %788, %827
  %831 = phi i16 [ %828, %827 ], [ %798, %808 ], [ %786, %788 ]
  %832 = icmp eq i16 %831, 260
  br i1 %832, label %833, label %926

833:                                              ; preds = %830
  %834 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 4
  %835 = load i16, ptr %834, align 2, !tbaa !125
  %836 = icmp slt i16 %835, 3
  br i1 %836, label %837, label %900

837:                                              ; preds = %797, %810, %817, %833, %827
  %838 = load i8, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 76), align 1, !tbaa !142
  %839 = icmp eq i8 %838, 1
  br i1 %839, label %840, label %841

840:                                              ; preds = %837
  store i8 4, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 76), align 1, !tbaa !142
  br label %841

841:                                              ; preds = %840, %837
  %842 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !46
  %843 = icmp eq ptr %842, null
  br i1 %843, label %892, label %844

844:                                              ; preds = %841, %889
  %845 = phi ptr [ %890, %889 ], [ %842, %841 ]
  %846 = getelementptr inbounds %struct.bTheme, ptr %845, i64 0, i32 5
  %847 = getelementptr inbounds %struct.bTheme, ptr %845, i64 0, i32 5, i32 139, i64 3
  %848 = load i8, ptr %847, align 1, !tbaa !43
  %849 = icmp eq i8 %848, 0
  br i1 %849, label %850, label %852

850:                                              ; preds = %844
  %851 = getelementptr inbounds %struct.bTheme, ptr %845, i64 0, i32 5, i32 139
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %851, i8 noundef zeroext -56, i8 noundef zeroext -56, i8 noundef zeroext -56, i8 noundef zeroext -1) #16
  br label %852

852:                                              ; preds = %850, %844
  %853 = getelementptr inbounds %struct.bTheme, ptr %845, i64 0, i32 5, i32 142, i64 3
  %854 = load i8, ptr %853, align 1, !tbaa !43
  %855 = icmp eq i8 %854, 0
  br i1 %855, label %856, label %858

856:                                              ; preds = %852
  %857 = getelementptr inbounds %struct.bTheme, ptr %845, i64 0, i32 5, i32 142
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %857, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  br label %858

858:                                              ; preds = %856, %852
  %859 = getelementptr inbounds %struct.bTheme, ptr %845, i64 0, i32 20, i32 0, i64 3
  %860 = load i8, ptr %859, align 1, !tbaa !43
  %861 = icmp eq i8 %860, 0
  br i1 %861, label %862, label %877

862:                                              ; preds = %858
  %863 = getelementptr inbounds %struct.bTheme, ptr %845, i64 0, i32 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(720) %863, ptr noundef nonnull align 8 dereferenceable(720) %846, i64 720, i1 false), !tbaa.struct !63
  %864 = getelementptr inbounds %struct.bTheme, ptr %845, i64 0, i32 20, i32 133
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %864, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %865 = getelementptr inbounds %struct.bTheme, ptr %845, i64 0, i32 20, i32 134
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %865, i8 noundef zeroext 127, i8 noundef zeroext 127, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %866 = getelementptr inbounds %struct.bTheme, ptr %845, i64 0, i32 20, i32 135
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %866, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #16
  %867 = getelementptr inbounds %struct.bTheme, ptr %845, i64 0, i32 20, i32 136
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %867, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %868 = getelementptr inbounds %struct.bTheme, ptr %845, i64 0, i32 20, i32 137
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %868, i8 noundef zeroext 127, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %869 = getelementptr inbounds %struct.bTheme, ptr %845, i64 0, i32 20, i32 138
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %869, i8 noundef zeroext 127, i8 noundef zeroext 127, i8 noundef zeroext 127, i8 noundef zeroext -1) #16
  %870 = getelementptr inbounds %struct.bTheme, ptr %845, i64 0, i32 20, i32 140
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %870, i8 noundef zeroext -1, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %871 = getelementptr inbounds %struct.bTheme, ptr %845, i64 0, i32 20, i32 141
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %871, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1, i8 noundef zeroext -1) #16
  %872 = getelementptr inbounds %struct.bTheme, ptr %845, i64 0, i32 20, i32 25
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %872, i8 noundef zeroext 94, i8 noundef zeroext 94, i8 noundef zeroext 94, i8 noundef zeroext -1) #16
  %873 = getelementptr inbounds %struct.bTheme, ptr %845, i64 0, i32 20, i32 62
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %873, i8 noundef zeroext 96, i8 noundef zeroext -64, i8 noundef zeroext 64, i8 noundef zeroext -1) #16
  %874 = getelementptr inbounds %struct.bTheme, ptr %845, i64 0, i32 20, i32 129
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %874, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %875 = getelementptr inbounds %struct.bTheme, ptr %845, i64 0, i32 20, i32 130
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %875, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %876 = getelementptr inbounds %struct.bTheme, ptr %845, i64 0, i32 20, i32 132
  store i8 5, ptr %876, align 4, !tbaa !71
  br label %877

877:                                              ; preds = %862, %858
  %878 = getelementptr inbounds %struct.bTheme, ptr %845, i64 0, i32 7, i32 75, i64 3
  %879 = load i8, ptr %878, align 1, !tbaa !43
  %880 = icmp eq i8 %879, 0
  br i1 %880, label %881, label %883

881:                                              ; preds = %877
  %882 = getelementptr inbounds %struct.bTheme, ptr %845, i64 0, i32 7, i32 75
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %882, i8 noundef zeroext -103, i8 noundef zeroext 64, i8 noundef zeroext 48, i8 noundef zeroext -1) #16
  br label %883

883:                                              ; preds = %881, %877
  %884 = getelementptr inbounds %struct.bTheme, ptr %845, i64 0, i32 7, i32 80, i64 3
  %885 = load i8, ptr %884, align 1, !tbaa !43
  %886 = icmp eq i8 %885, 0
  br i1 %886, label %887, label %889

887:                                              ; preds = %883
  %888 = getelementptr inbounds %struct.bTheme, ptr %845, i64 0, i32 7, i32 80
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %888, i8 noundef zeroext -16, i8 noundef zeroext -81, i8 noundef zeroext -112, i8 noundef zeroext -1) #16
  br label %889

889:                                              ; preds = %883, %887
  %890 = load ptr, ptr %845, align 8, !tbaa !46
  %891 = icmp eq ptr %890, null
  br i1 %891, label %892, label %844, !llvm.loop !152

892:                                              ; preds = %889, %841
  %893 = tail call ptr @BLI_findstring(ptr noundef nonnull getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 43), ptr noundef nonnull @.str.37, i32 noundef 16) #15
  %894 = icmp eq ptr %893, null
  br i1 %894, label %895, label %900

895:                                              ; preds = %892
  %896 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %897 = tail call ptr %896(i64 noundef 88, ptr noundef nonnull @.str.38) #15
  %898 = getelementptr inbounds %struct.bAddon, ptr %897, i64 0, i32 2
  %899 = tail call ptr @BLI_strncpy(ptr noundef nonnull %898, ptr noundef nonnull @.str.37, i64 noundef 64) #15
  tail call void @BLI_addtail(ptr noundef nonnull getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 43), ptr noundef %897) #15
  br label %900

900:                                              ; preds = %892, %895, %833
  %901 = load i16, ptr %48, align 8, !tbaa !108
  %902 = icmp slt i16 %901, 260
  br i1 %902, label %912, label %903

903:                                              ; preds = %900
  %904 = icmp eq i16 %901, 260
  br i1 %904, label %905, label %926

905:                                              ; preds = %903
  %906 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 4
  %907 = load i16, ptr %906, align 2, !tbaa !125
  %908 = icmp sgt i16 %907, 4
  %909 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %910 = icmp eq ptr %909, null
  %911 = select i1 %908, i1 true, i1 %910
  br i1 %911, label %935, label %915

912:                                              ; preds = %900
  %913 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %914 = icmp eq ptr %913, null
  br i1 %914, label %938, label %915

915:                                              ; preds = %912, %905
  %916 = phi ptr [ %913, %912 ], [ %909, %905 ]
  br label %917

917:                                              ; preds = %915, %917
  %918 = phi ptr [ %921, %917 ], [ %916, %915 ]
  %919 = getelementptr inbounds %struct.bTheme, ptr %918, i64 0, i32 3, i32 19
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %919, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 25) #16
  %920 = getelementptr inbounds %struct.bTheme, ptr %918, i64 0, i32 3, i32 25
  store float 1.000000e+00, ptr %920, align 8, !tbaa !153
  %921 = load ptr, ptr %918, align 8, !tbaa !46
  %922 = icmp eq ptr %921, null
  br i1 %922, label %923, label %917, !llvm.loop !154

923:                                              ; preds = %917
  %924 = load i16, ptr %48, align 8, !tbaa !108
  %925 = icmp slt i16 %924, 261
  br i1 %925, label %933, label %926

926:                                              ; preds = %830, %903, %923
  %927 = phi i16 [ %924, %923 ], [ %831, %830 ], [ %901, %903 ]
  %928 = icmp eq i16 %927, 261
  br i1 %928, label %929, label %954

929:                                              ; preds = %926
  %930 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 4
  %931 = load i16, ptr %930, align 2, !tbaa !125
  %932 = icmp slt i16 %931, 4
  br i1 %932, label %933, label %964

933:                                              ; preds = %923, %929
  %934 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  br label %935

935:                                              ; preds = %933, %905
  %936 = phi ptr [ %934, %933 ], [ %909, %905 ]
  %937 = icmp eq ptr %936, null
  br i1 %937, label %938, label %939

938:                                              ; preds = %912, %935
  store i16 1, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 83), align 8, !tbaa !155
  br label %991

939:                                              ; preds = %935, %939
  %940 = phi ptr [ %949, %939 ], [ %936, %935 ]
  %941 = getelementptr inbounds %struct.bTheme, ptr %940, i64 0, i32 12, i32 145
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %941, i8 noundef zeroext 18, i8 noundef zeroext 66, i8 noundef zeroext -80, i8 noundef zeroext 38) #16
  %942 = getelementptr inbounds %struct.bTheme, ptr %940, i64 0, i32 12, i32 146
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %942, i8 noundef zeroext -1, i8 noundef zeroext -123, i8 noundef zeroext 0, i8 noundef zeroext -78) #16
  %943 = getelementptr inbounds %struct.bTheme, ptr %940, i64 0, i32 12, i32 147
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %943, i8 noundef zeroext -1, i8 noundef zeroext -123, i8 noundef zeroext 0, i8 noundef zeroext 127) #16
  %944 = getelementptr inbounds %struct.bTheme, ptr %940, i64 0, i32 12, i32 148
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %944, i8 noundef zeroext 0, i8 noundef zeroext -1, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %945 = getelementptr inbounds %struct.bTheme, ptr %940, i64 0, i32 12, i32 149
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %945, i8 noundef zeroext -1, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %946 = getelementptr inbounds %struct.bTheme, ptr %940, i64 0, i32 12, i32 150
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %946, i8 noundef zeroext -31, i8 noundef zeroext -46, i8 noundef zeroext -61, i8 noundef zeroext 35) #16
  %947 = getelementptr inbounds %struct.bTheme, ptr %940, i64 0, i32 14, i32 153
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %947, i8 noundef zeroext 51, i8 noundef zeroext 127, i8 noundef zeroext 51, i8 noundef zeroext 76) #16
  %948 = getelementptr inbounds %struct.bTheme, ptr %940, i64 0, i32 14, i32 154
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %948, i8 noundef zeroext -126, i8 noundef zeroext -121, i8 noundef zeroext -116, i8 noundef zeroext 76) #16
  %949 = load ptr, ptr %940, align 8, !tbaa !46
  %950 = icmp eq ptr %949, null
  br i1 %950, label %951, label %939, !llvm.loop !156

951:                                              ; preds = %939
  %952 = load i16, ptr %48, align 8, !tbaa !108
  store i16 1, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 83), align 8, !tbaa !155
  %953 = icmp slt i16 %952, 262
  br i1 %953, label %964, label %954

954:                                              ; preds = %926, %951
  %955 = phi i16 [ %952, %951 ], [ %927, %926 ]
  %956 = icmp eq i16 %955, 262
  br i1 %956, label %957, label %1042

957:                                              ; preds = %954
  %958 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 4
  %959 = load i16, ptr %958, align 2, !tbaa !125
  %960 = icmp sgt i16 %959, 1
  %961 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %962 = icmp eq ptr %961, null
  %963 = select i1 %960, i1 true, i1 %962
  br i1 %963, label %984, label %967

964:                                              ; preds = %929, %951
  %965 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %966 = icmp eq ptr %965, null
  br i1 %966, label %1266, label %967

967:                                              ; preds = %964, %957
  %968 = phi ptr [ %965, %964 ], [ %961, %957 ]
  br label %969

969:                                              ; preds = %967, %976
  %970 = phi ptr [ %977, %976 ], [ %968, %967 ]
  %971 = getelementptr inbounds %struct.bTheme, ptr %970, i64 0, i32 3, i32 11, i32 3, i64 3
  %972 = load i8, ptr %971, align 1, !tbaa !43
  %973 = icmp eq i8 %972, -1
  br i1 %973, label %974, label %976

974:                                              ; preds = %969
  %975 = getelementptr inbounds %struct.bTheme, ptr %970, i64 0, i32 3, i32 11, i32 3
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %975, i8 noundef zeroext -84, i8 noundef zeroext -84, i8 noundef zeroext -84, i8 noundef zeroext -128) #16
  br label %976

976:                                              ; preds = %969, %974
  %977 = load ptr, ptr %970, align 8, !tbaa !46
  %978 = icmp eq ptr %977, null
  br i1 %978, label %979, label %969, !llvm.loop !157

979:                                              ; preds = %976
  %980 = load i16, ptr %48, align 8, !tbaa !108
  %981 = icmp slt i16 %980, 262
  br i1 %981, label %991, label %982

982:                                              ; preds = %979
  %983 = icmp eq i16 %980, 262
  br i1 %983, label %984, label %1042

984:                                              ; preds = %957, %982
  %985 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 4
  %986 = load i16, ptr %985, align 2, !tbaa !125
  %987 = icmp sgt i16 %986, 2
  %988 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %989 = icmp eq ptr %988, null
  %990 = select i1 %987, i1 true, i1 %989
  br i1 %990, label %1017, label %994

991:                                              ; preds = %938, %979
  %992 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %993 = icmp eq ptr %992, null
  br i1 %993, label %1266, label %994

994:                                              ; preds = %991, %984
  %995 = phi ptr [ %992, %991 ], [ %988, %984 ]
  br label %996

996:                                              ; preds = %994, %1009
  %997 = phi ptr [ %1010, %1009 ], [ %995, %994 ]
  %998 = getelementptr inbounds %struct.bTheme, ptr %997, i64 0, i32 3, i32 12, i32 1, i64 3
  %999 = load i8, ptr %998, align 1, !tbaa !43
  %1000 = icmp eq i8 %999, 0
  br i1 %1000, label %1001, label %1004

1001:                                             ; preds = %996
  %1002 = getelementptr inbounds %struct.bTheme, ptr %997, i64 0, i32 3, i32 12
  %1003 = getelementptr inbounds %struct.bTheme, ptr %997, i64 0, i32 3, i32 10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1002, ptr noundef nonnull align 8 dereferenceable(32) %1003, i64 32, i1 false), !tbaa.struct !145
  br label %1004

1004:                                             ; preds = %1001, %996
  %1005 = getelementptr inbounds %struct.bTheme, ptr %997, i64 0, i32 3, i32 12, i32 4
  %1006 = load i8, ptr %1005, align 8, !tbaa !43
  %1007 = icmp eq i8 %1006, -96
  br i1 %1007, label %1008, label %1009

1008:                                             ; preds = %1004
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %1005, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #16
  br label %1009

1009:                                             ; preds = %1004, %1008
  %1010 = load ptr, ptr %997, align 8, !tbaa !46
  %1011 = icmp eq ptr %1010, null
  br i1 %1011, label %1012, label %996, !llvm.loop !158

1012:                                             ; preds = %1009
  %1013 = load i16, ptr %48, align 8, !tbaa !108
  %1014 = icmp slt i16 %1013, 262
  br i1 %1014, label %1024, label %1015

1015:                                             ; preds = %1012
  %1016 = icmp eq i16 %1013, 262
  br i1 %1016, label %1017, label %1042

1017:                                             ; preds = %984, %1015
  %1018 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 4
  %1019 = load i16, ptr %1018, align 2, !tbaa !125
  %1020 = icmp sgt i16 %1019, 3
  %1021 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %1022 = icmp eq ptr %1021, null
  %1023 = select i1 %1020, i1 true, i1 %1022
  br i1 %1023, label %1054, label %1027

1024:                                             ; preds = %1012
  %1025 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %1026 = icmp eq ptr %1025, null
  br i1 %1026, label %1266, label %1027

1027:                                             ; preds = %1024, %1017
  %1028 = phi ptr [ %1025, %1024 ], [ %1021, %1017 ]
  br label %1029

1029:                                             ; preds = %1027, %1036
  %1030 = phi ptr [ %1037, %1036 ], [ %1028, %1027 ]
  %1031 = getelementptr inbounds %struct.bTheme, ptr %1030, i64 0, i32 11, i32 120, i64 3
  %1032 = load i8, ptr %1031, align 1, !tbaa !43
  %1033 = icmp eq i8 %1032, 0
  br i1 %1033, label %1034, label %1036

1034:                                             ; preds = %1029
  %1035 = getelementptr inbounds %struct.bTheme, ptr %1030, i64 0, i32 11, i32 120
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %1035, i8 noundef zeroext 32, i8 noundef zeroext 32, i8 noundef zeroext -113, i8 noundef zeroext -1) #16
  br label %1036

1036:                                             ; preds = %1029, %1034
  %1037 = load ptr, ptr %1030, align 8, !tbaa !46
  %1038 = icmp eq ptr %1037, null
  br i1 %1038, label %1039, label %1029, !llvm.loop !159

1039:                                             ; preds = %1036
  %1040 = load i16, ptr %48, align 8, !tbaa !108
  %1041 = icmp slt i16 %1040, 263
  br i1 %1041, label %1052, label %1042

1042:                                             ; preds = %982, %1015, %954, %1039
  %1043 = phi i16 [ %1040, %1039 ], [ %955, %954 ], [ %1013, %1015 ], [ %980, %982 ]
  %1044 = icmp eq i16 %1043, 263
  br i1 %1044, label %1045, label %1242

1045:                                             ; preds = %1042
  %1046 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 4
  %1047 = load i16, ptr %1046, align 2, !tbaa !125
  %1048 = icmp sgt i16 %1047, 1
  %1049 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %1050 = icmp eq ptr %1049, null
  %1051 = select i1 %1048, i1 true, i1 %1050
  br i1 %1051, label %1075, label %1057

1052:                                             ; preds = %1039
  %1053 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  br label %1054

1054:                                             ; preds = %1052, %1017
  %1055 = phi ptr [ %1053, %1052 ], [ %1021, %1017 ]
  %1056 = icmp eq ptr %1055, null
  br i1 %1056, label %1104, label %1057

1057:                                             ; preds = %1054, %1045
  %1058 = phi ptr [ %1055, %1054 ], [ %1049, %1045 ]
  br label %1059

1059:                                             ; preds = %1057, %1067
  %1060 = phi ptr [ %1068, %1067 ], [ %1058, %1057 ]
  %1061 = getelementptr inbounds %struct.bTheme, ptr %1060, i64 0, i32 20, i32 60
  %1062 = load i8, ptr %1061, align 8, !tbaa !43
  %1063 = icmp eq i8 %1062, 0
  br i1 %1063, label %1064, label %1067

1064:                                             ; preds = %1059
  %1065 = getelementptr inbounds %struct.bTheme, ptr %1060, i64 0, i32 20, i32 16
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %1065, i8 noundef zeroext 102, i8 noundef zeroext 102, i8 noundef zeroext 102, i8 noundef zeroext -1) #16
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %1061, i8 noundef zeroext 12, i8 noundef zeroext 10, i8 noundef zeroext 10, i8 noundef zeroext -128) #16
  %1066 = getelementptr inbounds %struct.bTheme, ptr %1060, i64 0, i32 20, i32 61
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %1066, i8 noundef zeroext -1, i8 noundef zeroext -116, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  br label %1067

1067:                                             ; preds = %1059, %1064
  %1068 = load ptr, ptr %1060, align 8, !tbaa !46
  %1069 = icmp eq ptr %1068, null
  br i1 %1069, label %1070, label %1059, !llvm.loop !160

1070:                                             ; preds = %1067
  %1071 = load i16, ptr %48, align 8, !tbaa !108
  %1072 = icmp slt i16 %1071, 263
  br i1 %1072, label %1082, label %1073

1073:                                             ; preds = %1070
  %1074 = icmp eq i16 %1071, 263
  br i1 %1074, label %1075, label %1242

1075:                                             ; preds = %1045, %1073
  %1076 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 4
  %1077 = load i16, ptr %1076, align 2, !tbaa !125
  %1078 = icmp sgt i16 %1077, 5
  %1079 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %1080 = icmp eq ptr %1079, null
  %1081 = select i1 %1078, i1 true, i1 %1080
  br i1 %1081, label %1097, label %1085

1082:                                             ; preds = %1070
  %1083 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %1084 = icmp eq ptr %1083, null
  br i1 %1084, label %1266, label %1085

1085:                                             ; preds = %1082, %1075
  %1086 = phi ptr [ %1083, %1082 ], [ %1079, %1075 ]
  br label %1087

1087:                                             ; preds = %1085, %1087
  %1088 = phi ptr [ %1090, %1087 ], [ %1086, %1085 ]
  %1089 = getelementptr inbounds %struct.bTheme, ptr %1088, i64 0, i32 5, i32 155
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %1089, i8 noundef zeroext -76, i8 noundef zeroext 77, i8 noundef zeroext 77, i8 noundef zeroext -1) #16
  %1090 = load ptr, ptr %1088, align 8, !tbaa !46
  %1091 = icmp eq ptr %1090, null
  br i1 %1091, label %1092, label %1087, !llvm.loop !161

1092:                                             ; preds = %1087
  %1093 = load i16, ptr %48, align 8, !tbaa !108
  %1094 = icmp slt i16 %1093, 263
  br i1 %1094, label %1104, label %1095

1095:                                             ; preds = %1092
  %1096 = icmp eq i16 %1093, 263
  br i1 %1096, label %1097, label %1242

1097:                                             ; preds = %1075, %1095
  %1098 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 4
  %1099 = load i16, ptr %1098, align 2, !tbaa !125
  %1100 = icmp sgt i16 %1099, 6
  %1101 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %1102 = icmp eq ptr %1101, null
  %1103 = select i1 %1100, i1 true, i1 %1102
  br i1 %1103, label %1129, label %1107

1104:                                             ; preds = %1054, %1092
  %1105 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %1106 = icmp eq ptr %1105, null
  br i1 %1106, label %1266, label %1107

1107:                                             ; preds = %1104, %1097
  %1108 = phi ptr [ %1105, %1104 ], [ %1101, %1097 ]
  br label %1109

1109:                                             ; preds = %1107, %1109
  %1110 = phi ptr [ %1122, %1109 ], [ %1108, %1107 ]
  %1111 = getelementptr inbounds %struct.bTheme, ptr %1110, i64 0, i32 9, i32 156
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %1111, i8 noundef zeroext -52, i8 noundef zeroext 112, i8 noundef zeroext 26, i8 noundef zeroext 102) #16
  %1112 = getelementptr inbounds %struct.bTheme, ptr %1110, i64 0, i32 10, i32 156
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %1112, i8 noundef zeroext -52, i8 noundef zeroext 112, i8 noundef zeroext 26, i8 noundef zeroext 102) #16
  %1113 = getelementptr inbounds %struct.bTheme, ptr %1110, i64 0, i32 10, i32 157
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %1113, i8 noundef zeroext -103, i8 noundef zeroext -121, i8 noundef zeroext 97, i8 noundef zeroext 77) #16
  %1114 = getelementptr inbounds %struct.bTheme, ptr %1110, i64 0, i32 10, i32 158
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %1114, i8 noundef zeroext 77, i8 noundef zeroext -13, i8 noundef zeroext 26, i8 noundef zeroext 77) #16
  %1115 = getelementptr inbounds %struct.bTheme, ptr %1110, i64 0, i32 10, i32 159
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %1115, i8 noundef zeroext -39, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %1116 = getelementptr inbounds %struct.bTheme, ptr %1110, i64 0, i32 10, i32 160
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %1116, i8 noundef zeroext 28, i8 noundef zeroext 38, i8 noundef zeroext 48, i8 noundef zeroext -1) #16
  %1117 = getelementptr inbounds %struct.bTheme, ptr %1110, i64 0, i32 10, i32 161
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %1117, i8 noundef zeroext 46, i8 noundef zeroext 117, i8 noundef zeroext -37, i8 noundef zeroext -1) #16
  %1118 = getelementptr inbounds %struct.bTheme, ptr %1110, i64 0, i32 10, i32 162
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %1118, i8 noundef zeroext 51, i8 noundef zeroext 38, i8 noundef zeroext 66, i8 noundef zeroext -1) #16
  %1119 = getelementptr inbounds %struct.bTheme, ptr %1110, i64 0, i32 10, i32 163
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %1119, i8 noundef zeroext 105, i8 noundef zeroext 33, i8 noundef zeroext -106, i8 noundef zeroext -1) #16
  %1120 = getelementptr inbounds %struct.bTheme, ptr %1110, i64 0, i32 10, i32 164
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %1120, i8 noundef zeroext 43, i8 noundef zeroext 61, i8 noundef zeroext 61, i8 noundef zeroext -1) #16
  %1121 = getelementptr inbounds %struct.bTheme, ptr %1110, i64 0, i32 10, i32 165
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %1121, i8 noundef zeroext 31, i8 noundef zeroext 122, i8 noundef zeroext 122, i8 noundef zeroext -1) #16
  %1122 = load ptr, ptr %1110, align 8, !tbaa !46
  %1123 = icmp eq ptr %1122, null
  br i1 %1123, label %1124, label %1109, !llvm.loop !162

1124:                                             ; preds = %1109
  %1125 = load i16, ptr %48, align 8, !tbaa !108
  %1126 = icmp slt i16 %1125, 263
  br i1 %1126, label %1136, label %1127

1127:                                             ; preds = %1124
  %1128 = icmp eq i16 %1125, 263
  br i1 %1128, label %1129, label %1242

1129:                                             ; preds = %1097, %1127
  %1130 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 4
  %1131 = load i16, ptr %1130, align 2, !tbaa !125
  %1132 = icmp sgt i16 %1131, 10
  %1133 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %1134 = icmp eq ptr %1133, null
  %1135 = select i1 %1132, i1 true, i1 %1134
  br i1 %1135, label %1156, label %1139

1136:                                             ; preds = %1124
  %1137 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %1138 = icmp eq ptr %1137, null
  br i1 %1138, label %1266, label %1139

1139:                                             ; preds = %1136, %1129
  %1140 = phi ptr [ %1137, %1136 ], [ %1133, %1129 ]
  br label %1141

1141:                                             ; preds = %1139, %1148
  %1142 = phi ptr [ %1149, %1148 ], [ %1140, %1139 ]
  %1143 = getelementptr inbounds %struct.bTheme, ptr %1142, i64 0, i32 11, i32 121, i64 3
  %1144 = load i8, ptr %1143, align 1, !tbaa !43
  %1145 = icmp eq i8 %1144, 0
  br i1 %1145, label %1146, label %1148

1146:                                             ; preds = %1141
  %1147 = getelementptr inbounds %struct.bTheme, ptr %1142, i64 0, i32 11, i32 121
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %1147, i8 noundef zeroext -104, i8 noundef zeroext 78, i8 noundef zeroext 62, i8 noundef zeroext -1) #16
  br label %1148

1148:                                             ; preds = %1141, %1146
  %1149 = load ptr, ptr %1142, align 8, !tbaa !46
  %1150 = icmp eq ptr %1149, null
  br i1 %1150, label %1151, label %1141, !llvm.loop !163

1151:                                             ; preds = %1148
  %1152 = load i16, ptr %48, align 8, !tbaa !108
  %1153 = icmp slt i16 %1152, 263
  br i1 %1153, label %1163, label %1154

1154:                                             ; preds = %1151
  %1155 = icmp eq i16 %1152, 263
  br i1 %1155, label %1156, label %1242

1156:                                             ; preds = %1129, %1154
  %1157 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 4
  %1158 = load i16, ptr %1157, align 2, !tbaa !125
  %1159 = icmp sgt i16 %1158, 14
  %1160 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %1161 = icmp eq ptr %1160, null
  %1162 = select i1 %1159, i1 true, i1 %1161
  br i1 %1162, label %1178, label %1166

1163:                                             ; preds = %1151
  %1164 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %1165 = icmp eq ptr %1164, null
  br i1 %1165, label %1252, label %1166

1166:                                             ; preds = %1163, %1156
  %1167 = phi ptr [ %1164, %1163 ], [ %1160, %1156 ]
  br label %1168

1168:                                             ; preds = %1166, %1168
  %1169 = phi ptr [ %1171, %1168 ], [ %1167, %1166 ]
  %1170 = getelementptr inbounds %struct.bTheme, ptr %1169, i64 0, i32 5, i32 59
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %1170, i8 noundef zeroext -116, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext 80) #16
  %1171 = load ptr, ptr %1169, align 8, !tbaa !46
  %1172 = icmp eq ptr %1171, null
  br i1 %1172, label %1173, label %1168, !llvm.loop !164

1173:                                             ; preds = %1168
  %1174 = load i16, ptr %48, align 8, !tbaa !108
  %1175 = icmp slt i16 %1174, 263
  br i1 %1175, label %1185, label %1176

1176:                                             ; preds = %1173
  %1177 = icmp eq i16 %1174, 263
  br i1 %1177, label %1178, label %1242

1178:                                             ; preds = %1156, %1176
  %1179 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 4
  %1180 = load i16, ptr %1179, align 2, !tbaa !125
  %1181 = icmp sgt i16 %1180, 15
  %1182 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %1183 = icmp eq ptr %1182, null
  %1184 = select i1 %1181, i1 true, i1 %1183
  br i1 %1184, label %1211, label %1188

1185:                                             ; preds = %1173
  %1186 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %1187 = icmp eq ptr %1186, null
  br i1 %1187, label %1252, label %1188

1188:                                             ; preds = %1185, %1178
  %1189 = phi ptr [ %1186, %1185 ], [ %1182, %1178 ]
  br label %1190

1190:                                             ; preds = %1188, %1203
  %1191 = phi ptr [ %1204, %1203 ], [ %1189, %1188 ]
  %1192 = getelementptr inbounds %struct.bTheme, ptr %1191, i64 0, i32 9, i32 156, i64 3
  %1193 = load i8, ptr %1192, align 1, !tbaa !43
  %1194 = icmp eq i8 %1193, 0
  br i1 %1194, label %1195, label %1197

1195:                                             ; preds = %1190
  %1196 = getelementptr inbounds %struct.bTheme, ptr %1191, i64 0, i32 9, i32 156
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %1196, i8 noundef zeroext -52, i8 noundef zeroext 112, i8 noundef zeroext 26, i8 noundef zeroext 102) #16
  br label %1197

1197:                                             ; preds = %1195, %1190
  %1198 = getelementptr inbounds %struct.bTheme, ptr %1191, i64 0, i32 10, i32 156, i64 3
  %1199 = load i8, ptr %1198, align 1, !tbaa !43
  %1200 = icmp eq i8 %1199, 0
  br i1 %1200, label %1201, label %1203

1201:                                             ; preds = %1197
  %1202 = getelementptr inbounds %struct.bTheme, ptr %1191, i64 0, i32 10, i32 156
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %1202, i8 noundef zeroext -52, i8 noundef zeroext 112, i8 noundef zeroext 26, i8 noundef zeroext 102) #16
  br label %1203

1203:                                             ; preds = %1197, %1201
  %1204 = load ptr, ptr %1191, align 8, !tbaa !46
  %1205 = icmp eq ptr %1204, null
  br i1 %1205, label %1206, label %1190, !llvm.loop !165

1206:                                             ; preds = %1203
  %1207 = load i16, ptr %48, align 8, !tbaa !108
  %1208 = icmp slt i16 %1207, 263
  br i1 %1208, label %1218, label %1209

1209:                                             ; preds = %1206
  %1210 = icmp eq i16 %1207, 263
  br i1 %1210, label %1211, label %1242

1211:                                             ; preds = %1178, %1209
  %1212 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 4
  %1213 = load i16, ptr %1212, align 2, !tbaa !125
  %1214 = icmp sgt i16 %1213, 21
  %1215 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %1216 = icmp eq ptr %1215, null
  %1217 = select i1 %1214, i1 true, i1 %1216
  br i1 %1217, label %1254, label %1221

1218:                                             ; preds = %1206
  %1219 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %1220 = icmp eq ptr %1219, null
  br i1 %1220, label %1266, label %1221

1221:                                             ; preds = %1218, %1211
  %1222 = phi ptr [ %1219, %1218 ], [ %1215, %1211 ]
  br label %1223

1223:                                             ; preds = %1221, %1236
  %1224 = phi ptr [ %1237, %1236 ], [ %1222, %1221 ]
  %1225 = getelementptr inbounds %struct.bTheme, ptr %1224, i64 0, i32 7, i32 70, i64 3
  %1226 = load i8, ptr %1225, align 1, !tbaa !43
  %1227 = icmp eq i8 %1226, 0
  br i1 %1227, label %1228, label %1230

1228:                                             ; preds = %1223
  %1229 = getelementptr inbounds %struct.bTheme, ptr %1224, i64 0, i32 7, i32 70
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %1229, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #16
  br label %1230

1230:                                             ; preds = %1228, %1223
  %1231 = getelementptr inbounds %struct.bTheme, ptr %1224, i64 0, i32 5, i32 155, i64 3
  %1232 = load i8, ptr %1231, align 1, !tbaa !43
  %1233 = icmp eq i8 %1232, 0
  br i1 %1233, label %1234, label %1236

1234:                                             ; preds = %1230
  %1235 = getelementptr inbounds %struct.bTheme, ptr %1224, i64 0, i32 5, i32 155
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %1235, i8 noundef zeroext -76, i8 noundef zeroext 77, i8 noundef zeroext 77, i8 noundef zeroext -1) #16
  br label %1236

1236:                                             ; preds = %1230, %1234
  %1237 = load ptr, ptr %1224, align 8, !tbaa !46
  %1238 = icmp eq ptr %1237, null
  br i1 %1238, label %1239, label %1223, !llvm.loop !166

1239:                                             ; preds = %1236
  %1240 = load i16, ptr %48, align 8, !tbaa !108
  %1241 = icmp slt i16 %1240, 264
  br i1 %1241, label %1252, label %1242

1242:                                             ; preds = %1154, %1176, %1073, %1042, %1095, %1127, %1209, %1239
  %1243 = phi i16 [ %1240, %1239 ], [ %1207, %1209 ], [ %1125, %1127 ], [ %1071, %1073 ], [ %1043, %1042 ], [ %1093, %1095 ], [ %1152, %1154 ], [ %1174, %1176 ]
  %1244 = icmp eq i16 %1243, 264
  br i1 %1244, label %1245, label %1266

1245:                                             ; preds = %1242
  %1246 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 4
  %1247 = load i16, ptr %1246, align 2, !tbaa !125
  %1248 = icmp sgt i16 %1247, 8
  %1249 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %1250 = icmp eq ptr %1249, null
  %1251 = select i1 %1248, i1 true, i1 %1250
  br i1 %1251, label %1266, label %1257

1252:                                             ; preds = %1185, %1163, %1239
  %1253 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  br label %1254

1254:                                             ; preds = %1252, %1211
  %1255 = phi ptr [ %1253, %1252 ], [ %1215, %1211 ]
  %1256 = icmp eq ptr %1255, null
  br i1 %1256, label %1266, label %1257

1257:                                             ; preds = %1254, %1245
  %1258 = phi ptr [ %1255, %1254 ], [ %1249, %1245 ]
  br label %1259

1259:                                             ; preds = %1257, %1259
  %1260 = phi ptr [ %1264, %1259 ], [ %1258, %1257 ]
  %1261 = getelementptr inbounds %struct.bTheme, ptr %1260, i64 0, i32 3, i32 26
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %1261, i8 noundef zeroext -36, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %1262 = getelementptr inbounds %struct.bTheme, ptr %1260, i64 0, i32 3, i32 27
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %1262, i8 noundef zeroext 0, i8 noundef zeroext -36, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %1263 = getelementptr inbounds %struct.bTheme, ptr %1260, i64 0, i32 3, i32 28
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %1263, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -36, i8 noundef zeroext -1) #16
  %1264 = load ptr, ptr %1260, align 8, !tbaa !46
  %1265 = icmp eq ptr %1264, null
  br i1 %1265, label %1266, label %1259, !llvm.loop !167

1266:                                             ; preds = %1259, %964, %1024, %991, %1104, %1136, %1082, %1218, %1254, %1245, %1242
  %1267 = load i32, ptr @U, align 8, !tbaa !168
  %1268 = icmp slt i32 %1267, 267
  br i1 %1268, label %1269, label %1344

1269:                                             ; preds = %1266
  %1270 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !46
  %1271 = icmp eq ptr %1270, null
  br i1 %1271, label %1289, label %1272

1272:                                             ; preds = %1269, %1286
  %1273 = phi ptr [ %1287, %1286 ], [ %1270, %1269 ]
  %1274 = getelementptr inbounds %struct.bTheme, ptr %1273, i64 0, i32 5, i32 63, i64 3
  %1275 = load i8, ptr %1274, align 1, !tbaa !43
  %1276 = icmp eq i8 %1275, 0
  br i1 %1276, label %1277, label %1280

1277:                                             ; preds = %1272
  %1278 = getelementptr inbounds %struct.bTheme, ptr %1273, i64 0, i32 5, i32 63
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %1278, i8 noundef zeroext 127, i8 noundef zeroext -1, i8 noundef zeroext 127, i8 noundef zeroext -1) #16
  %1279 = getelementptr inbounds %struct.bTheme, ptr %1273, i64 0, i32 5, i32 64
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %1279, i8 noundef zeroext 127, i8 noundef zeroext -1, i8 noundef zeroext 127, i8 noundef zeroext 51) #16
  br label %1280

1280:                                             ; preds = %1277, %1272
  %1281 = getelementptr inbounds %struct.bTheme, ptr %1273, i64 0, i32 5, i32 28, i64 3
  %1282 = load i8, ptr %1281, align 1, !tbaa !43
  %1283 = icmp eq i8 %1282, 0
  br i1 %1283, label %1284, label %1286

1284:                                             ; preds = %1280
  %1285 = getelementptr inbounds %struct.bTheme, ptr %1273, i64 0, i32 5, i32 28
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %1285, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  br label %1286

1286:                                             ; preds = %1280, %1284
  %1287 = load ptr, ptr %1273, align 8, !tbaa !46
  %1288 = icmp eq ptr %1287, null
  br i1 %1288, label %1289, label %1272, !llvm.loop !169

1289:                                             ; preds = %1286, %1269
  %1290 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 59), align 8, !tbaa !170
  %1291 = icmp eq i16 %1290, 0
  br i1 %1291, label %1292, label %1293

1292:                                             ; preds = %1289
  store i16 60, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 60), align 2, !tbaa !171
  store i16 120, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 59), align 8, !tbaa !170
  br label %1293

1293:                                             ; preds = %1292, %1289
  %1294 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 63), align 8, !tbaa !172
  %1295 = icmp slt i32 %1294, 1
  br i1 %1295, label %1296, label %1297

1296:                                             ; preds = %1293
  store i32 32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 63), align 8, !tbaa !172
  br label %1297

1297:                                             ; preds = %1296, %1293
  %1298 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 65), align 8, !tbaa !173
  %1299 = icmp eq i16 %1298, 0
  br i1 %1299, label %1300, label %1301

1300:                                             ; preds = %1297
  store i16 8080, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 65), align 8, !tbaa !173
  br label %1301

1301:                                             ; preds = %1300, %1297
  %1302 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 19), align 2, !tbaa !174
  %1303 = icmp eq i16 %1302, 0
  br i1 %1303, label %1304, label %1305

1304:                                             ; preds = %1301
  store i16 350, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 19), align 2, !tbaa !174
  br label %1305

1305:                                             ; preds = %1304, %1301
  %1306 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 79), align 8, !tbaa !175
  %1307 = icmp eq i16 %1306, 0
  br i1 %1307, label %1308, label %1309

1308:                                             ; preds = %1305
  store i16 10, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 79), align 8, !tbaa !175
  store i16 50, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 80), align 2, !tbaa !176
  br label %1309

1309:                                             ; preds = %1308, %1305
  %1310 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 16), align 8, !tbaa !177
  %1311 = icmp eq i16 %1310, 0
  br i1 %1311, label %1312, label %1313

1312:                                             ; preds = %1309
  store i16 35, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 16), align 8, !tbaa !177
  br label %1313

1313:                                             ; preds = %1312, %1309
  %1314 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 62), align 2, !tbaa !178
  %1315 = icmp eq i16 %1314, 0
  br i1 %1315, label %1316, label %1317

1316:                                             ; preds = %1313
  store i16 5, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 62), align 2, !tbaa !178
  br label %1317

1317:                                             ; preds = %1316, %1313
  %1318 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !179
  %1319 = icmp eq i16 %1318, 0
  br i1 %1319, label %1320, label %1321

1320:                                             ; preds = %1317
  store i16 20, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !179
  br label %1321

1321:                                             ; preds = %1320, %1317
  %1322 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 82), align 2, !tbaa !180
  %1323 = icmp slt i16 %1322, 1
  br i1 %1323, label %1324, label %1325

1324:                                             ; preds = %1321
  store i16 1, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 82), align 2, !tbaa !180
  br label %1325

1325:                                             ; preds = %1324, %1321
  %1326 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 85), align 4, !tbaa !181
  %1327 = fcmp oeq float %1326, 0.000000e+00
  br i1 %1327, label %1328, label %1329

1328:                                             ; preds = %1325
  store float 1.000000e+00, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 85), align 4, !tbaa !181
  store i32 60, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 87), align 4, !tbaa !182
  br label %1329

1329:                                             ; preds = %1328, %1325
  %1330 = phi float [ 1.000000e+00, %1328 ], [ %1326, %1325 ]
  %1331 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 86), align 8, !tbaa !183
  %1332 = fcmp oeq float %1331, 0.000000e+00
  br i1 %1332, label %1333, label %1340

1333:                                             ; preds = %1329
  store float %1330, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 86), align 8, !tbaa !183
  %1334 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !107
  %1335 = and i32 %1334, 32
  %1336 = icmp eq i32 %1335, 0
  br i1 %1336, label %1337, label %1340

1337:                                             ; preds = %1333
  %1338 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 87), align 4, !tbaa !182
  %1339 = or i32 %1338, 32768
  store i32 %1339, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 87), align 4, !tbaa !182
  br label %1340

1340:                                             ; preds = %1333, %1337, %1329
  %1341 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 98), align 4, !tbaa !184
  %1342 = icmp eq i16 %1341, 0
  br i1 %1342, label %1343, label %1344

1343:                                             ; preds = %1340
  store i16 10, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 98), align 4, !tbaa !184
  br label %1344

1344:                                             ; preds = %1340, %1343, %1266
  %1345 = load i16, ptr %48, align 8, !tbaa !108
  %1346 = icmp slt i16 %1345, 265
  br i1 %1346, label %1358, label %1347

1347:                                             ; preds = %1344
  %1348 = icmp eq i16 %1345, 265
  %1349 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  br i1 %1348, label %1350, label %1411

1350:                                             ; preds = %1347
  %1351 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 4
  %1352 = load i16, ptr %1351, align 2, !tbaa !125
  %1353 = icmp sgt i16 %1352, 0
  %1354 = icmp eq ptr %1349, null
  %1355 = select i1 %1353, i1 true, i1 %1354
  br i1 %1355, label %1356, label %1361

1356:                                             ; preds = %1350
  %1357 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  br label %1382

1358:                                             ; preds = %1344
  %1359 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %1360 = icmp eq ptr %1359, null
  br i1 %1360, label %1411, label %1361

1361:                                             ; preds = %1358, %1350
  %1362 = phi ptr [ %1359, %1358 ], [ %1349, %1350 ]
  br label %1363

1363:                                             ; preds = %1361, %1373
  %1364 = phi ptr [ %1374, %1373 ], [ %1362, %1361 ]
  %1365 = getelementptr inbounds %struct.bTheme, ptr %1364, i64 0, i32 16, i32 12, i64 3
  %1366 = load i8, ptr %1365, align 1, !tbaa !43
  %1367 = icmp eq i8 %1366, -1
  br i1 %1367, label %1368, label %1373

1368:                                             ; preds = %1363
  %1369 = getelementptr inbounds %struct.bTheme, ptr %1364, i64 0, i32 5, i32 12, i64 3
  store i8 -128, ptr %1369, align 1, !tbaa !43
  store i8 -128, ptr %1365, align 1, !tbaa !43
  %1370 = getelementptr inbounds %struct.bTheme, ptr %1364, i64 0, i32 12, i32 12, i64 3
  store i8 -128, ptr %1370, align 1, !tbaa !43
  %1371 = getelementptr inbounds %struct.bTheme, ptr %1364, i64 0, i32 11, i32 12, i64 3
  store i8 -128, ptr %1371, align 1, !tbaa !43
  %1372 = getelementptr inbounds %struct.bTheme, ptr %1364, i64 0, i32 20, i32 12, i64 3
  store i8 -128, ptr %1372, align 1, !tbaa !43
  br label %1373

1373:                                             ; preds = %1363, %1368
  %1374 = load ptr, ptr %1364, align 8, !tbaa !46
  %1375 = icmp eq ptr %1374, null
  br i1 %1375, label %1376, label %1363, !llvm.loop !185

1376:                                             ; preds = %1373
  %1377 = load i16, ptr %48, align 8, !tbaa !108
  %1378 = icmp slt i16 %1377, 265
  br i1 %1378, label %1389, label %1379

1379:                                             ; preds = %1376
  %1380 = icmp eq i16 %1377, 265
  %1381 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  br i1 %1380, label %1382, label %1411

1382:                                             ; preds = %1356, %1379
  %1383 = phi ptr [ %1357, %1356 ], [ %1381, %1379 ]
  %1384 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 4
  %1385 = load i16, ptr %1384, align 2, !tbaa !125
  %1386 = icmp sgt i16 %1385, 1
  %1387 = icmp eq ptr %1383, null
  %1388 = select i1 %1386, i1 true, i1 %1387
  br i1 %1388, label %1411, label %1392

1389:                                             ; preds = %1376
  %1390 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %1391 = icmp eq ptr %1390, null
  br i1 %1391, label %1411, label %1392

1392:                                             ; preds = %1389, %1382
  %1393 = phi ptr [ %1390, %1389 ], [ %1383, %1382 ]
  br label %1397

1394:                                             ; preds = %1404
  %1395 = load ptr, ptr %1398, align 8, !tbaa !46
  %1396 = icmp eq ptr %1395, null
  br i1 %1396, label %1409, label %1397, !llvm.loop !186

1397:                                             ; preds = %1392, %1394
  %1398 = phi ptr [ %1395, %1394 ], [ %1393, %1392 ]
  %1399 = getelementptr inbounds %struct.bTheme, ptr %1398, i64 0, i32 3, i32 19
  %1400 = getelementptr inbounds %struct.bTheme, ptr %1398, i64 0, i32 3, i32 19, i32 1
  %1401 = getelementptr inbounds %struct.bTheme, ptr %1398, i64 0, i32 4, i32 12
  tail call fastcc void @copy_v3_v3_char(ptr noundef nonnull %1400, ptr noundef nonnull %1401) #16
  %1402 = getelementptr inbounds %struct.bTheme, ptr %1398, i64 0, i32 3, i32 19, i32 1, i64 3
  store i8 -128, ptr %1402, align 1, !tbaa !43
  %1403 = getelementptr inbounds %struct.ThemeSpace, ptr %1398, i64 0, i32 20
  br label %1404

1404:                                             ; preds = %1397, %1404
  %1405 = phi i64 [ 960, %1397 ], [ %1407, %1404 ]
  %1406 = getelementptr inbounds i8, ptr %1403, i64 %1405
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1406, ptr noundef nonnull align 8 dereferenceable(16) %1399, i64 16, i1 false), !tbaa.struct !187
  %1407 = add nuw nsw i64 %1405, 720
  %1408 = icmp eq i64 %1407, 13200
  br i1 %1408, label %1394, label %1404, !llvm.loop !188

1409:                                             ; preds = %1394
  %1410 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  br label %1411

1411:                                             ; preds = %1358, %1409, %1389, %1347, %1382, %1379
  %1412 = phi ptr [ %1410, %1409 ], [ null, %1389 ], [ %1349, %1347 ], [ %1383, %1382 ], [ %1381, %1379 ], [ null, %1358 ]
  %1413 = load i32, ptr @U, align 8, !tbaa !168
  %1414 = icmp slt i32 %1413, 266
  br i1 %1414, label %1415, label %1518

1415:                                             ; preds = %1411
  %1416 = icmp eq ptr %1412, null
  br i1 %1416, label %1444, label %1417

1417:                                             ; preds = %1415, %1424
  %1418 = phi ptr [ %1425, %1424 ], [ %1412, %1415 ]
  %1419 = getelementptr inbounds %struct.bTheme, ptr %1418, i64 0, i32 3, i32 21
  %1420 = load float, ptr %1419, align 4, !tbaa !55
  %1421 = fcmp oeq float %1420, 0.000000e+00
  br i1 %1421, label %1422, label %1424

1422:                                             ; preds = %1417
  store float 5.000000e-01, ptr %1419, align 4, !tbaa !55
  %1423 = getelementptr inbounds %struct.bTheme, ptr %1418, i64 0, i32 3, i32 22
  store i16 12, ptr %1423, align 8, !tbaa !56
  br label %1424

1424:                                             ; preds = %1417, %1422
  %1425 = load ptr, ptr %1418, align 8, !tbaa !46
  %1426 = icmp eq ptr %1425, null
  br i1 %1426, label %1427, label %1417, !llvm.loop !189

1427:                                             ; preds = %1424
  %1428 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %1429 = icmp eq i32 %1413, 265
  %1430 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 1), align 4
  %1431 = icmp sgt i32 %1430, 3
  %1432 = select i1 %1429, i1 %1431, i1 false
  %1433 = icmp eq ptr %1428, null
  %1434 = select i1 %1432, i1 true, i1 %1433
  br i1 %1434, label %1444, label %1435

1435:                                             ; preds = %1427, %1435
  %1436 = phi ptr [ %1440, %1435 ], [ %1428, %1427 ]
  %1437 = getelementptr inbounds %struct.bTheme, ptr %1436, i64 0, i32 13, i32 109
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %1437, i8 noundef zeroext 50, i8 noundef zeroext 0, i8 noundef zeroext -116, i8 noundef zeroext -1) #16
  %1438 = getelementptr inbounds %struct.bTheme, ptr %1436, i64 0, i32 13, i32 110
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %1438, i8 noundef zeroext -116, i8 noundef zeroext 60, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %1439 = getelementptr inbounds %struct.bTheme, ptr %1436, i64 0, i32 13, i32 104
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %1439, i8 noundef zeroext 76, i8 noundef zeroext 76, i8 noundef zeroext 76, i8 noundef zeroext -1) #16
  %1440 = load ptr, ptr %1436, align 8, !tbaa !46
  %1441 = icmp eq ptr %1440, null
  br i1 %1441, label %1442, label %1435, !llvm.loop !190

1442:                                             ; preds = %1435
  %1443 = load i32, ptr @U, align 8, !tbaa !168
  br label %1444

1444:                                             ; preds = %1415, %1442, %1427
  %1445 = phi i32 [ %1443, %1442 ], [ %1413, %1427 ], [ %1413, %1415 ]
  %1446 = icmp slt i32 %1445, 265
  br i1 %1446, label %1455, label %1447

1447:                                             ; preds = %1444
  %1448 = icmp ne i32 %1445, 265
  %1449 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 1), align 4
  %1450 = icmp sgt i32 %1449, 5
  %1451 = select i1 %1448, i1 true, i1 %1450
  %1452 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %1453 = icmp eq ptr %1452, null
  %1454 = select i1 %1451, i1 true, i1 %1453
  br i1 %1454, label %1469, label %1458

1455:                                             ; preds = %1444
  %1456 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %1457 = icmp eq ptr %1456, null
  br i1 %1457, label %1688, label %1458

1458:                                             ; preds = %1455, %1447
  %1459 = phi ptr [ %1456, %1455 ], [ %1452, %1447 ]
  br label %1460

1460:                                             ; preds = %1458, %1460
  %1461 = phi ptr [ %1464, %1460 ], [ %1459, %1458 ]
  %1462 = getelementptr inbounds %struct.bTheme, ptr %1461, i64 0, i32 5
  %1463 = getelementptr inbounds %struct.bTheme, ptr %1461, i64 0, i32 5, i32 21, i32 1
  tail call fastcc void @copy_v4_v4_char(ptr noundef nonnull %1463, ptr noundef nonnull %1462) #16
  %1464 = load ptr, ptr %1461, align 8, !tbaa !46
  %1465 = icmp eq ptr %1464, null
  br i1 %1465, label %1466, label %1460, !llvm.loop !191

1466:                                             ; preds = %1460
  %1467 = load i32, ptr @U, align 8, !tbaa !168
  %1468 = icmp slt i32 %1467, 265
  br i1 %1468, label %1478, label %1469

1469:                                             ; preds = %1447, %1466
  %1470 = phi i32 [ %1467, %1466 ], [ %1445, %1447 ]
  %1471 = icmp ne i32 %1470, 265
  %1472 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 1), align 4
  %1473 = icmp sgt i32 %1472, 8
  %1474 = select i1 %1471, i1 true, i1 %1473
  %1475 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %1476 = icmp eq ptr %1475, null
  %1477 = select i1 %1474, i1 true, i1 %1476
  br i1 %1477, label %1492, label %1481

1478:                                             ; preds = %1466
  %1479 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %1480 = icmp eq ptr %1479, null
  br i1 %1480, label %1688, label %1481

1481:                                             ; preds = %1478, %1469
  %1482 = phi ptr [ %1479, %1478 ], [ %1475, %1469 ]
  br label %1483

1483:                                             ; preds = %1481, %1483
  %1484 = phi ptr [ %1487, %1483 ], [ %1482, %1481 ]
  %1485 = getelementptr inbounds %struct.bTheme, ptr %1484, i64 0, i32 16, i32 104
  tail call fastcc void @rgba_char_args_test_set(ptr noundef nonnull %1485, i8 noundef zeroext -105, i8 noundef zeroext 116, i8 noundef zeroext 116, i8 noundef zeroext -1) #16
  %1486 = getelementptr inbounds %struct.bTheme, ptr %1484, i64 0, i32 16, i32 109
  tail call fastcc void @rgba_char_args_test_set(ptr noundef nonnull %1486, i8 noundef zeroext 116, i8 noundef zeroext -105, i8 noundef zeroext -105, i8 noundef zeroext -1) #16
  %1487 = load ptr, ptr %1484, align 8, !tbaa !46
  %1488 = icmp eq ptr %1487, null
  br i1 %1488, label %1489, label %1483, !llvm.loop !192

1489:                                             ; preds = %1483
  %1490 = load i32, ptr @U, align 8, !tbaa !168
  %1491 = icmp slt i32 %1490, 265
  br i1 %1491, label %1501, label %1492

1492:                                             ; preds = %1469, %1489
  %1493 = phi i32 [ %1490, %1489 ], [ %1470, %1469 ]
  %1494 = icmp ne i32 %1493, 265
  %1495 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 1), align 4
  %1496 = icmp sgt i32 %1495, 10
  %1497 = select i1 %1494, i1 true, i1 %1496
  %1498 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %1499 = icmp eq ptr %1498, null
  %1500 = select i1 %1497, i1 true, i1 %1499
  br i1 %1500, label %1514, label %1504

1501:                                             ; preds = %1489
  %1502 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %1503 = icmp eq ptr %1502, null
  br i1 %1503, label %1688, label %1504

1504:                                             ; preds = %1501, %1492
  %1505 = phi ptr [ %1502, %1501 ], [ %1498, %1492 ]
  br label %1506

1506:                                             ; preds = %1504, %1506
  %1507 = phi ptr [ %1509, %1506 ], [ %1505, %1504 ]
  %1508 = getelementptr inbounds %struct.bTheme, ptr %1507, i64 0, i32 19, i32 98
  tail call fastcc void @rgba_char_args_test_set(ptr noundef nonnull %1508, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext 48) #16
  %1509 = load ptr, ptr %1507, align 8, !tbaa !46
  %1510 = icmp eq ptr %1509, null
  br i1 %1510, label %1511, label %1506, !llvm.loop !193

1511:                                             ; preds = %1506
  %1512 = load i32, ptr @U, align 8, !tbaa !168
  %1513 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  br label %1514

1514:                                             ; preds = %1511, %1492
  %1515 = phi ptr [ %1513, %1511 ], [ %1498, %1492 ]
  %1516 = phi i32 [ %1512, %1511 ], [ %1493, %1492 ]
  %1517 = icmp slt i32 %1516, 266
  br i1 %1517, label %1527, label %1518

1518:                                             ; preds = %1411, %1514
  %1519 = phi ptr [ %1515, %1514 ], [ %1412, %1411 ]
  %1520 = phi i32 [ %1516, %1514 ], [ %1413, %1411 ]
  %1521 = icmp ne i32 %1520, 266
  %1522 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 1), align 4
  %1523 = icmp sgt i32 %1522, 1
  %1524 = select i1 %1521, i1 true, i1 %1523
  %1525 = icmp eq ptr %1519, null
  %1526 = select i1 %1524, i1 true, i1 %1525
  br i1 %1526, label %1538, label %1529

1527:                                             ; preds = %1514
  %1528 = icmp eq ptr %1515, null
  br i1 %1528, label %1549, label %1529

1529:                                             ; preds = %1527, %1518
  %1530 = phi ptr [ %1515, %1527 ], [ %1519, %1518 ]
  br label %1531

1531:                                             ; preds = %1529, %1531
  %1532 = phi ptr [ %1534, %1531 ], [ %1530, %1529 ]
  %1533 = getelementptr inbounds %struct.bTheme, ptr %1532, i64 0, i32 16, i32 93
  tail call fastcc void @rgba_char_args_test_set(ptr noundef nonnull %1533, i8 noundef zeroext -33, i8 noundef zeroext -54, i8 noundef zeroext 53, i8 noundef zeroext -1) #16
  %1534 = load ptr, ptr %1532, align 8, !tbaa !46
  %1535 = icmp eq ptr %1534, null
  br i1 %1535, label %1536, label %1531, !llvm.loop !194

1536:                                             ; preds = %1531
  %1537 = load i32, ptr @U, align 8, !tbaa !168
  br label %1538

1538:                                             ; preds = %1536, %1518
  %1539 = phi i32 [ %1537, %1536 ], [ %1520, %1518 ]
  %1540 = icmp slt i32 %1539, 268
  br i1 %1540, label %1549, label %1541

1541:                                             ; preds = %1538
  %1542 = icmp ne i32 %1539, 268
  %1543 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 1), align 4
  %1544 = icmp sgt i32 %1543, 2
  %1545 = select i1 %1542, i1 true, i1 %1544
  %1546 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %1547 = icmp eq ptr %1546, null
  %1548 = select i1 %1545, i1 true, i1 %1547
  br i1 %1548, label %1562, label %1552

1549:                                             ; preds = %1527, %1538
  %1550 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !46
  %1551 = icmp eq ptr %1550, null
  br i1 %1551, label %1688, label %1552

1552:                                             ; preds = %1549, %1541
  %1553 = phi ptr [ %1550, %1549 ], [ %1546, %1541 ]
  br label %1554

1554:                                             ; preds = %1552, %1554
  %1555 = phi ptr [ %1558, %1554 ], [ %1553, %1552 ]
  %1556 = getelementptr inbounds %struct.bTheme, ptr %1555, i64 0, i32 12, i32 152
  tail call fastcc void @rgba_char_args_test_set(ptr noundef nonnull %1556, i8 noundef zeroext 96, i8 noundef zeroext 96, i8 noundef zeroext 96, i8 noundef zeroext -1) #16
  %1557 = getelementptr inbounds %struct.bTheme, ptr %1555, i64 0, i32 12, i32 151
  tail call fastcc void @rgba_char_args_test_set(ptr noundef nonnull %1557, i8 noundef zeroext 112, i8 noundef zeroext 112, i8 noundef zeroext 112, i8 noundef zeroext -1) #16
  %1558 = load ptr, ptr %1555, align 8, !tbaa !46
  %1559 = icmp eq ptr %1558, null
  br i1 %1559, label %1560, label %1554, !llvm.loop !195

1560:                                             ; preds = %1554
  %1561 = load i32, ptr @U, align 8, !tbaa !168
  br label %1562

1562:                                             ; preds = %1560, %1541
  %1563 = phi i32 [ %1561, %1560 ], [ %1539, %1541 ]
  %1564 = icmp slt i32 %1563, 269
  br i1 %1564, label %1573, label %1565

1565:                                             ; preds = %1562
  %1566 = icmp ne i32 %1563, 269
  %1567 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 1), align 4
  %1568 = icmp sgt i32 %1567, 4
  %1569 = select i1 %1566, i1 true, i1 %1568
  %1570 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %1571 = icmp eq ptr %1570, null
  %1572 = select i1 %1569, i1 true, i1 %1571
  br i1 %1572, label %1587, label %1576

1573:                                             ; preds = %1562
  %1574 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !46
  %1575 = icmp eq ptr %1574, null
  br i1 %1575, label %1688, label %1576

1576:                                             ; preds = %1573, %1565
  %1577 = phi ptr [ %1574, %1573 ], [ %1570, %1565 ]
  br label %1578

1578:                                             ; preds = %1576, %1578
  %1579 = phi ptr [ %1582, %1578 ], [ %1577, %1576 ]
  %1580 = getelementptr inbounds %struct.bTheme, ptr %1579, i64 0, i32 12, i32 28
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %1580, i8 noundef zeroext -64, i8 noundef zeroext -64, i8 noundef zeroext -64, i8 noundef zeroext -1) #16
  %1581 = getelementptr inbounds %struct.bTheme, ptr %1579, i64 0, i32 12, i32 42
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %1581, i8 noundef zeroext -1, i8 noundef zeroext -123, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %1582 = load ptr, ptr %1579, align 8, !tbaa !46
  %1583 = icmp eq ptr %1582, null
  br i1 %1583, label %1584, label %1578, !llvm.loop !196

1584:                                             ; preds = %1578
  %1585 = load i32, ptr @U, align 8, !tbaa !168
  %1586 = icmp slt i32 %1585, 269
  br i1 %1586, label %1596, label %1587

1587:                                             ; preds = %1565, %1584
  %1588 = phi i32 [ %1585, %1584 ], [ %1563, %1565 ]
  %1589 = icmp ne i32 %1588, 269
  %1590 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 1), align 4
  %1591 = icmp sgt i32 %1590, 5
  %1592 = select i1 %1589, i1 true, i1 %1591
  %1593 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %1594 = icmp eq ptr %1593, null
  %1595 = select i1 %1592, i1 true, i1 %1594
  br i1 %1595, label %1628, label %1599

1596:                                             ; preds = %1584
  %1597 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !46
  %1598 = icmp eq ptr %1597, null
  br i1 %1598, label %1688, label %1599

1599:                                             ; preds = %1596, %1587
  %1600 = phi ptr [ %1597, %1596 ], [ %1593, %1587 ]
  br label %1601

1601:                                             ; preds = %1599, %1601
  %1602 = phi ptr [ %1623, %1601 ], [ %1600, %1599 ]
  %1603 = getelementptr inbounds %struct.bTheme, ptr %1602, i64 0, i32 16, i32 106
  %1604 = load i8, ptr %1603, align 4, !tbaa !43
  %1605 = getelementptr inbounds %struct.bTheme, ptr %1602, i64 0, i32 16, i32 106, i64 1
  %1606 = load i8, ptr %1605, align 1, !tbaa !43
  %1607 = getelementptr inbounds %struct.bTheme, ptr %1602, i64 0, i32 16, i32 106, i64 2
  %1608 = load i8, ptr %1607, align 2, !tbaa !43
  %1609 = getelementptr inbounds %struct.bTheme, ptr %1602, i64 0, i32 16, i32 111
  tail call fastcc void @rgba_char_args_test_set(ptr noundef nonnull %1609, i8 noundef zeroext %1604, i8 noundef zeroext %1606, i8 noundef zeroext %1608, i8 noundef zeroext -1) #16
  %1610 = getelementptr inbounds %struct.bTheme, ptr %1602, i64 0, i32 16, i32 105
  %1611 = load i8, ptr %1610, align 8, !tbaa !43
  %1612 = getelementptr inbounds %struct.bTheme, ptr %1602, i64 0, i32 16, i32 105, i64 1
  %1613 = load i8, ptr %1612, align 1, !tbaa !43
  %1614 = getelementptr inbounds %struct.bTheme, ptr %1602, i64 0, i32 16, i32 105, i64 2
  %1615 = load i8, ptr %1614, align 2, !tbaa !43
  %1616 = getelementptr inbounds %struct.bTheme, ptr %1602, i64 0, i32 16, i32 112
  tail call fastcc void @rgba_char_args_test_set(ptr noundef nonnull %1616, i8 noundef zeroext %1611, i8 noundef zeroext %1613, i8 noundef zeroext %1615, i8 noundef zeroext -1) #16
  %1617 = getelementptr inbounds %struct.bTheme, ptr %1602, i64 0, i32 16, i32 113
  tail call fastcc void @rgba_char_args_test_set(ptr noundef nonnull %1617, i8 noundef zeroext %1611, i8 noundef zeroext %1613, i8 noundef zeroext %1615, i8 noundef zeroext -1) #16
  %1618 = getelementptr inbounds %struct.bTheme, ptr %1602, i64 0, i32 16, i32 114
  tail call fastcc void @rgba_char_args_test_set(ptr noundef nonnull %1618, i8 noundef zeroext %1611, i8 noundef zeroext %1613, i8 noundef zeroext %1615, i8 noundef zeroext -1) #16
  %1619 = getelementptr inbounds %struct.bTheme, ptr %1602, i64 0, i32 16, i32 115
  tail call fastcc void @rgba_char_args_test_set(ptr noundef nonnull %1619, i8 noundef zeroext %1611, i8 noundef zeroext %1613, i8 noundef zeroext %1615, i8 noundef zeroext -1) #16
  %1620 = getelementptr inbounds %struct.bTheme, ptr %1602, i64 0, i32 16, i32 116
  tail call fastcc void @rgba_char_args_test_set(ptr noundef nonnull %1620, i8 noundef zeroext %1611, i8 noundef zeroext %1613, i8 noundef zeroext %1615, i8 noundef zeroext -1) #16
  %1621 = getelementptr inbounds %struct.bTheme, ptr %1602, i64 0, i32 16, i32 117
  tail call fastcc void @rgba_char_args_test_set(ptr noundef nonnull %1621, i8 noundef zeroext %1611, i8 noundef zeroext %1613, i8 noundef zeroext %1615, i8 noundef zeroext -1) #16
  %1622 = getelementptr inbounds %struct.bTheme, ptr %1602, i64 0, i32 16, i32 118
  tail call fastcc void @rgba_char_args_test_set(ptr noundef nonnull %1622, i8 noundef zeroext %1611, i8 noundef zeroext %1613, i8 noundef zeroext %1615, i8 noundef zeroext -1) #16
  %1623 = load ptr, ptr %1602, align 8, !tbaa !46
  %1624 = icmp eq ptr %1623, null
  br i1 %1624, label %1625, label %1601, !llvm.loop !197

1625:                                             ; preds = %1601
  %1626 = load i32, ptr @U, align 8, !tbaa !168
  %1627 = icmp slt i32 %1626, 269
  br i1 %1627, label %1637, label %1628

1628:                                             ; preds = %1587, %1625
  %1629 = phi i32 [ %1626, %1625 ], [ %1588, %1587 ]
  %1630 = icmp ne i32 %1629, 269
  %1631 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 1), align 4
  %1632 = icmp sgt i32 %1631, 7
  %1633 = select i1 %1630, i1 true, i1 %1632
  %1634 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %1635 = icmp eq ptr %1634, null
  %1636 = select i1 %1633, i1 true, i1 %1635
  br i1 %1636, label %1659, label %1640

1637:                                             ; preds = %1625
  %1638 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !46
  %1639 = icmp eq ptr %1638, null
  br i1 %1639, label %1688, label %1640

1640:                                             ; preds = %1637, %1628
  %1641 = phi ptr [ %1638, %1637 ], [ %1634, %1628 ]
  br label %1642

1642:                                             ; preds = %1640, %1642
  %1643 = phi ptr [ %1654, %1642 ], [ %1641, %1640 ]
  %1644 = getelementptr inbounds %struct.bTheme, ptr %1643, i64 0, i32 8, i32 166
  tail call fastcc void @rgba_char_args_test_set(ptr noundef nonnull %1644, i8 noundef zeroext 96, i8 noundef zeroext -128, i8 noundef zeroext -1, i8 noundef zeroext -1) #16
  %1645 = getelementptr inbounds %struct.bTheme, ptr %1643, i64 0, i32 8, i32 167
  tail call fastcc void @rgba_char_args_test_set(ptr noundef nonnull %1645, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #16
  %1646 = getelementptr inbounds %struct.bTheme, ptr %1643, i64 0, i32 8, i32 168
  tail call fastcc void @rgba_char_args_test_set(ptr noundef nonnull %1646, i8 noundef zeroext -36, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %1647 = getelementptr inbounds %struct.bTheme, ptr %1643, i64 0, i32 8, i32 169
  tail call fastcc void @rgba_char_args_test_set(ptr noundef nonnull %1647, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %1648 = getelementptr inbounds %struct.bTheme, ptr %1643, i64 0, i32 8, i32 170
  tail call fastcc void @rgba_char_args_test_set(ptr noundef nonnull %1648, i8 noundef zeroext -36, i8 noundef zeroext -128, i8 noundef zeroext 96, i8 noundef zeroext -1) #16
  %1649 = getelementptr inbounds %struct.bTheme, ptr %1643, i64 0, i32 8, i32 171
  tail call fastcc void @rgba_char_args_test_set(ptr noundef nonnull %1649, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %1650 = getelementptr inbounds %struct.bTheme, ptr %1643, i64 0, i32 8, i32 172
  tail call fastcc void @rgba_char_args_test_set(ptr noundef nonnull %1650, i8 noundef zeroext 0, i8 noundef zeroext -86, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %1651 = getelementptr inbounds %struct.bTheme, ptr %1643, i64 0, i32 8, i32 173
  tail call fastcc void @rgba_char_args_test_set(ptr noundef nonnull %1651, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %1652 = getelementptr inbounds %struct.bTheme, ptr %1643, i64 0, i32 8, i32 174
  tail call fastcc void @rgba_char_args_test_set(ptr noundef nonnull %1652, i8 noundef zeroext -60, i8 noundef zeroext -60, i8 noundef zeroext -60, i8 noundef zeroext -1) #16
  %1653 = getelementptr inbounds %struct.bTheme, ptr %1643, i64 0, i32 8, i32 175
  tail call fastcc void @rgba_char_args_test_set(ptr noundef nonnull %1653, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %1654 = load ptr, ptr %1643, align 8, !tbaa !46
  %1655 = icmp eq ptr %1654, null
  br i1 %1655, label %1656, label %1642, !llvm.loop !198

1656:                                             ; preds = %1642
  %1657 = load i32, ptr @U, align 8, !tbaa !168
  %1658 = icmp slt i32 %1657, 269
  br i1 %1658, label %1665, label %1659

1659:                                             ; preds = %1628, %1656
  %1660 = phi i32 [ %1657, %1656 ], [ %1629, %1628 ]
  %1661 = icmp eq i32 %1660, 269
  %1662 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 1), align 4
  %1663 = icmp slt i32 %1662, 9
  %1664 = select i1 %1661, i1 %1663, i1 false
  br i1 %1664, label %1665, label %1695

1665:                                             ; preds = %1659, %1656
  %1666 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !46
  %1667 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 58), align 2, !tbaa !103
  %1668 = mul i16 %1667, 5
  store i16 %1668, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 58), align 2, !tbaa !103
  %1669 = icmp eq ptr %1666, null
  br i1 %1669, label %1691, label %1670

1670:                                             ; preds = %1665, %1670
  %1671 = phi ptr [ %1686, %1670 ], [ %1666, %1665 ]
  %1672 = getelementptr inbounds %struct.bTheme, ptr %1671, i64 0, i32 9, i32 83
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %1672, i8 noundef zeroext -24, i8 noundef zeroext -24, i8 noundef zeroext -24, i8 noundef zeroext -1) #16
  %1673 = getelementptr inbounds %struct.bTheme, ptr %1671, i64 0, i32 9, i32 87
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %1673, i8 noundef zeroext -1, i8 noundef zeroext -66, i8 noundef zeroext 50, i8 noundef zeroext -1) #16
  %1674 = getelementptr inbounds %struct.bTheme, ptr %1671, i64 0, i32 9, i32 84
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %1674, i8 noundef zeroext -24, i8 noundef zeroext -77, i8 noundef zeroext -52, i8 noundef zeroext -1) #16
  %1675 = getelementptr inbounds %struct.bTheme, ptr %1671, i64 0, i32 9, i32 88
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %1675, i8 noundef zeroext -14, i8 noundef zeroext -128, i8 noundef zeroext -128, i8 noundef zeroext -1) #16
  %1676 = getelementptr inbounds %struct.bTheme, ptr %1671, i64 0, i32 9, i32 85
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %1676, i8 noundef zeroext -77, i8 noundef zeroext -37, i8 noundef zeroext -24, i8 noundef zeroext -1) #16
  %1677 = getelementptr inbounds %struct.bTheme, ptr %1671, i64 0, i32 9, i32 89
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %1677, i8 noundef zeroext 84, i8 noundef zeroext -65, i8 noundef zeroext -19, i8 noundef zeroext -1) #16
  %1678 = getelementptr inbounds %struct.bTheme, ptr %1671, i64 0, i32 9, i32 86
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %1678, i8 noundef zeroext -108, i8 noundef zeroext -27, i8 noundef zeroext 117, i8 noundef zeroext -1) #16
  %1679 = getelementptr inbounds %struct.bTheme, ptr %1671, i64 0, i32 9, i32 90
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %1679, i8 noundef zeroext 97, i8 noundef zeroext -64, i8 noundef zeroext 66, i8 noundef zeroext -1) #16
  %1680 = getelementptr inbounds %struct.bTheme, ptr %1671, i64 0, i32 9, i32 91
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %1680, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %1681 = getelementptr inbounds %struct.bTheme, ptr %1671, i64 0, i32 9, i32 92
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %1681, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %1682 = getelementptr inbounds %struct.bTheme, ptr %1671, i64 0, i32 10, i32 91
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %1682, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %1683 = getelementptr inbounds %struct.bTheme, ptr %1671, i64 0, i32 10, i32 92
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %1683, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %1684 = getelementptr inbounds %struct.bTheme, ptr %1671, i64 0, i32 7, i32 99
  store i8 6, ptr %1684, align 4, !tbaa !65
  %1685 = getelementptr inbounds %struct.bTheme, ptr %1671, i64 0, i32 7, i32 132
  store i8 5, ptr %1685, align 4, !tbaa !66
  %1686 = load ptr, ptr %1671, align 8, !tbaa !46
  %1687 = icmp eq ptr %1686, null
  br i1 %1687, label %1691, label %1670, !llvm.loop !199

1688:                                             ; preds = %1478, %1455, %1549, %1573, %1501, %1637, %1596
  %1689 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 58), align 2, !tbaa !103
  %1690 = mul i16 %1689, 5
  store i16 %1690, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 58), align 2, !tbaa !103
  br label %1691

1691:                                             ; preds = %1670, %1688, %1665
  %1692 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 97, i64 3), align 8, !tbaa !89
  %1693 = fcmp olt float %1692, 0x3FB99999A0000000
  br i1 %1693, label %1694, label %1695

1694:                                             ; preds = %1691
  store float 0x3FECCCCCC0000000, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 97, i64 3), align 8, !tbaa !89
  br label %1695

1695:                                             ; preds = %1691, %1694, %1659
  %1696 = load i32, ptr @U, align 8, !tbaa !168
  %1697 = icmp slt i32 %1696, 269
  br i1 %1697, label %1706, label %1698

1698:                                             ; preds = %1695
  %1699 = icmp ne i32 %1696, 269
  %1700 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 1), align 4
  %1701 = icmp sgt i32 %1700, 9
  %1702 = select i1 %1699, i1 true, i1 %1701
  %1703 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %1704 = icmp eq ptr %1703, null
  %1705 = select i1 %1702, i1 true, i1 %1704
  br i1 %1705, label %1727, label %1709

1706:                                             ; preds = %1695
  %1707 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !46
  %1708 = icmp eq ptr %1707, null
  br i1 %1708, label %1775, label %1709

1709:                                             ; preds = %1706, %1698
  %1710 = phi ptr [ %1707, %1706 ], [ %1703, %1698 ]
  br label %1714

1711:                                             ; preds = %1716
  %1712 = load ptr, ptr %1715, align 8, !tbaa !46
  %1713 = icmp eq ptr %1712, null
  br i1 %1713, label %1725, label %1714, !llvm.loop !200

1714:                                             ; preds = %1709, %1711
  %1715 = phi ptr [ %1712, %1711 ], [ %1710, %1709 ]
  br label %1716

1716:                                             ; preds = %1714, %1716
  %1717 = phi i64 [ 960, %1714 ], [ %1723, %1716 ]
  %1718 = getelementptr inbounds i8, ptr %1715, i64 %1717
  %1719 = getelementptr inbounds %struct.ThemeSpace, ptr %1718, i64 0, i32 8
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %1719, i8 noundef zeroext 114, i8 noundef zeroext 114, i8 noundef zeroext 114, i8 noundef zeroext -1) #16
  %1720 = getelementptr inbounds %struct.ThemeSpace, ptr %1718, i64 0, i32 9
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %1720, i8 noundef zeroext 83, i8 noundef zeroext 83, i8 noundef zeroext 83, i8 noundef zeroext -1) #16
  %1721 = getelementptr inbounds %struct.ThemeSpace, ptr %1718, i64 0, i32 10
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %1721, i8 noundef zeroext 64, i8 noundef zeroext 64, i8 noundef zeroext 64, i8 noundef zeroext -1) #16
  %1722 = getelementptr inbounds %struct.ThemeSpace, ptr %1718, i64 0, i32 11
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %1722, i8 noundef zeroext 60, i8 noundef zeroext 60, i8 noundef zeroext 60, i8 noundef zeroext -1) #16
  %1723 = add nuw nsw i64 %1717, 720
  %1724 = icmp eq i64 %1723, 13200
  br i1 %1724, label %1711, label %1716, !llvm.loop !201

1725:                                             ; preds = %1711
  %1726 = load i32, ptr @U, align 8, !tbaa !168
  br label %1727

1727:                                             ; preds = %1725, %1698
  %1728 = phi i32 [ %1726, %1725 ], [ %1696, %1698 ]
  %1729 = icmp slt i32 %1728, 271
  br i1 %1729, label %1730, label %1740

1730:                                             ; preds = %1727
  %1731 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !46
  %1732 = icmp eq ptr %1731, null
  br i1 %1732, label %1775, label %1733

1733:                                             ; preds = %1730, %1733
  %1734 = phi ptr [ %1736, %1733 ], [ %1731, %1730 ]
  %1735 = getelementptr inbounds %struct.bTheme, ptr %1734, i64 0, i32 3, i32 12, i32 4
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %1735, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #16
  %1736 = load ptr, ptr %1734, align 8, !tbaa !46
  %1737 = icmp eq ptr %1736, null
  br i1 %1737, label %1738, label %1733, !llvm.loop !202

1738:                                             ; preds = %1733
  %1739 = load i32, ptr @U, align 8, !tbaa !168
  br label %1740

1740:                                             ; preds = %1738, %1727
  %1741 = phi i32 [ %1728, %1727 ], [ %1739, %1738 ]
  %1742 = icmp slt i32 %1741, 272
  br i1 %1742, label %1751, label %1743

1743:                                             ; preds = %1740
  %1744 = icmp ne i32 %1741, 272
  %1745 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 1), align 4
  %1746 = icmp sgt i32 %1745, 1
  %1747 = select i1 %1744, i1 true, i1 %1746
  %1748 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %1749 = icmp eq ptr %1748, null
  %1750 = select i1 %1747, i1 true, i1 %1749
  br i1 %1750, label %1794, label %1754

1751:                                             ; preds = %1740
  %1752 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !46
  %1753 = icmp eq ptr %1752, null
  br i1 %1753, label %1767, label %1754

1754:                                             ; preds = %1751, %1743
  %1755 = phi ptr [ %1752, %1751 ], [ %1748, %1743 ]
  br label %1756

1756:                                             ; preds = %1754, %1756
  %1757 = phi ptr [ %1763, %1756 ], [ %1755, %1754 ]
  %1758 = getelementptr inbounds %struct.bTheme, ptr %1757, i64 0, i32 5, i32 177
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %1758, i8 noundef zeroext 127, i8 noundef zeroext -1, i8 noundef zeroext 127, i8 noundef zeroext 127) #16
  %1759 = getelementptr inbounds %struct.bTheme, ptr %1757, i64 0, i32 5, i32 176
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %1759, i8 noundef zeroext -1, i8 noundef zeroext 127, i8 noundef zeroext 127, i8 noundef zeroext 127) #16
  %1760 = getelementptr inbounds %struct.bTheme, ptr %1757, i64 0, i32 12, i32 177
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %1760, i8 noundef zeroext 127, i8 noundef zeroext -1, i8 noundef zeroext 127, i8 noundef zeroext 127) #16
  %1761 = getelementptr inbounds %struct.bTheme, ptr %1757, i64 0, i32 12, i32 176
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %1761, i8 noundef zeroext -1, i8 noundef zeroext 127, i8 noundef zeroext 127, i8 noundef zeroext 127) #16
  %1762 = getelementptr inbounds %struct.bTheme, ptr %1757, i64 0, i32 16, i32 110
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %1762, i8 noundef zeroext 115, i8 noundef zeroext 115, i8 noundef zeroext 115, i8 noundef zeroext -1) #16
  %1763 = load ptr, ptr %1757, align 8, !tbaa !46
  %1764 = icmp eq ptr %1763, null
  br i1 %1764, label %1765, label %1756, !llvm.loop !203

1765:                                             ; preds = %1756
  %1766 = load i32, ptr @U, align 8, !tbaa !168
  br label %1767

1767:                                             ; preds = %1765, %1751
  %1768 = phi i32 [ %1766, %1765 ], [ %1741, %1751 ]
  %1769 = icmp slt i32 %1768, 271
  br i1 %1769, label %1776, label %1770

1770:                                             ; preds = %1767
  %1771 = icmp eq i32 %1768, 271
  %1772 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 1), align 4
  %1773 = icmp slt i32 %1772, 5
  %1774 = select i1 %1771, i1 %1773, i1 false
  br i1 %1774, label %1776, label %1794

1775:                                             ; preds = %1730, %1706
  store i16 100, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 112), align 4, !tbaa !204
  store i16 12, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 113), align 2, !tbaa !205
  store i16 6, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 110), align 8, !tbaa !206
  br label %1803

1776:                                             ; preds = %1770, %1767
  %1777 = phi i32 [ %1768, %1767 ], [ 271, %1770 ]
  %1778 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !46
  store i16 100, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 112), align 4, !tbaa !204
  store i16 12, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 113), align 2, !tbaa !205
  store i16 6, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 110), align 8, !tbaa !206
  %1779 = icmp eq ptr %1778, null
  br i1 %1779, label %1791, label %1780

1780:                                             ; preds = %1776, %1780
  %1781 = phi ptr [ %1787, %1780 ], [ %1778, %1776 ]
  %1782 = getelementptr inbounds %struct.bTheme, ptr %1781, i64 0, i32 3, i32 17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1782, ptr noundef nonnull align 2 dereferenceable(32) @__const.init_userdef_do_versions.wcol_pie_menu, i64 32, i1 false), !tbaa.struct !145
  %1783 = getelementptr inbounds %struct.bTheme, ptr %1781, i64 0, i32 20
  tail call fastcc void @ui_theme_space_init_handles_color(ptr noundef nonnull %1783) #16
  %1784 = getelementptr inbounds %struct.bTheme, ptr %1781, i64 0, i32 12
  tail call fastcc void @ui_theme_space_init_handles_color(ptr noundef nonnull %1784) #16
  %1785 = getelementptr inbounds %struct.bTheme, ptr %1781, i64 0, i32 12, i32 132
  store i8 5, ptr %1785, align 4, !tbaa !69
  %1786 = getelementptr inbounds %struct.bTheme, ptr %1781, i64 0, i32 20, i32 132
  store i8 5, ptr %1786, align 4, !tbaa !71
  %1787 = load ptr, ptr %1781, align 8, !tbaa !46
  %1788 = icmp eq ptr %1787, null
  br i1 %1788, label %1789, label %1780, !llvm.loop !207

1789:                                             ; preds = %1780
  %1790 = load i32, ptr @U, align 8, !tbaa !168
  br label %1791

1791:                                             ; preds = %1789, %1776
  %1792 = phi i32 [ %1790, %1789 ], [ %1777, %1776 ]
  %1793 = icmp slt i32 %1792, 271
  br i1 %1793, label %1803, label %1794

1794:                                             ; preds = %1743, %1770, %1791
  %1795 = phi i32 [ %1792, %1791 ], [ %1768, %1770 ], [ %1741, %1743 ]
  %1796 = icmp ne i32 %1795, 271
  %1797 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 1), align 4
  %1798 = icmp sgt i32 %1797, 5
  %1799 = select i1 %1796, i1 true, i1 %1798
  %1800 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %1801 = icmp eq ptr %1800, null
  %1802 = select i1 %1799, i1 true, i1 %1801
  br i1 %1802, label %1820, label %1806

1803:                                             ; preds = %1775, %1791
  %1804 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !46
  %1805 = icmp eq ptr %1804, null
  br i1 %1805, label %1841, label %1806

1806:                                             ; preds = %1803, %1794
  %1807 = phi ptr [ %1804, %1803 ], [ %1800, %1794 ]
  br label %1808

1808:                                             ; preds = %1806, %1815
  %1809 = phi ptr [ %1816, %1815 ], [ %1807, %1806 ]
  %1810 = getelementptr inbounds %struct.bTheme, ptr %1809, i64 0, i32 5, i32 56, i64 3
  %1811 = load i8, ptr %1810, align 1, !tbaa !43
  %1812 = icmp eq i8 %1811, 0
  br i1 %1812, label %1813, label %1815

1813:                                             ; preds = %1808
  %1814 = getelementptr inbounds %struct.bTheme, ptr %1809, i64 0, i32 5, i32 56
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %1814, i8 noundef zeroext -35, i8 noundef zeroext 35, i8 noundef zeroext -35, i8 noundef zeroext -1) #16
  br label %1815

1815:                                             ; preds = %1808, %1813
  %1816 = load ptr, ptr %1809, align 8, !tbaa !46
  %1817 = icmp eq ptr %1816, null
  br i1 %1817, label %1818, label %1808, !llvm.loop !208

1818:                                             ; preds = %1815
  %1819 = load i32, ptr @U, align 8, !tbaa !168
  br label %1820

1820:                                             ; preds = %1818, %1794
  %1821 = phi i32 [ %1819, %1818 ], [ %1795, %1794 ]
  %1822 = icmp slt i32 %1821, 272
  br i1 %1822, label %1831, label %1823

1823:                                             ; preds = %1820
  %1824 = icmp ne i32 %1821, 272
  %1825 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 1), align 4
  %1826 = icmp sgt i32 %1825, 1
  %1827 = select i1 %1824, i1 true, i1 %1826
  %1828 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8
  %1829 = icmp eq ptr %1828, null
  %1830 = select i1 %1827, i1 true, i1 %1829
  br i1 %1830, label %1841, label %1834

1831:                                             ; preds = %1820
  %1832 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !46
  %1833 = icmp eq ptr %1832, null
  br i1 %1833, label %1841, label %1834

1834:                                             ; preds = %1831, %1823
  %1835 = phi ptr [ %1832, %1831 ], [ %1828, %1823 ]
  br label %1836

1836:                                             ; preds = %1834, %1836
  %1837 = phi ptr [ %1839, %1836 ], [ %1835, %1834 ]
  %1838 = getelementptr inbounds %struct.bTheme, ptr %1837, i64 0, i32 3, i32 20
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %1838, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext 5) #16
  %1839 = load ptr, ptr %1837, align 8, !tbaa !46
  %1840 = icmp eq ptr %1839, null
  br i1 %1840, label %1841, label %1836, !llvm.loop !209

1841:                                             ; preds = %1836, %1803, %1831, %1823
  %1842 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !90
  %1843 = fcmp oeq float %1842, 0.000000e+00
  br i1 %1843, label %1844, label %1845

1844:                                             ; preds = %1841
  store float 1.000000e+00, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !90
  br label %1845

1845:                                             ; preds = %1844, %1841
  %1846 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 89), align 2, !tbaa !210
  %1847 = icmp eq i16 %1846, 0
  br i1 %1847, label %1848, label %1849

1848:                                             ; preds = %1845
  store i16 2, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 89), align 2, !tbaa !210
  br label %1849

1849:                                             ; preds = %1848, %1845
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: optsize
declare void @BLI_system_temporary_dir(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @vDM_ColorBand_store(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @init_colorband(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3_char(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !211 {
  %3 = load i8, ptr %1, align 1, !tbaa !43
  store i8 %3, ptr %0, align 1, !tbaa !43
  %4 = getelementptr inbounds i8, ptr %1, i64 1
  %5 = load i8, ptr %4, align 1, !tbaa !43
  %6 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %5, ptr %6, align 1, !tbaa !43
  %7 = getelementptr inbounds i8, ptr %1, i64 2
  %8 = load i8, ptr %7, align 1, !tbaa !43
  %9 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %8, ptr %9, align 1, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v4_v4_char(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !212 {
  %3 = load i8, ptr %1, align 1, !tbaa !43
  store i8 %3, ptr %0, align 1, !tbaa !43
  %4 = getelementptr inbounds i8, ptr %1, i64 1
  %5 = load i8, ptr %4, align 1, !tbaa !43
  %6 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %5, ptr %6, align 1, !tbaa !43
  %7 = getelementptr inbounds i8, ptr %1, i64 2
  %8 = load i8, ptr %7, align 1, !tbaa !43
  %9 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %8, ptr %9, align 1, !tbaa !43
  %10 = getelementptr inbounds i8, ptr %1, i64 3
  %11 = load i8, ptr %10, align 1, !tbaa !43
  %12 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %11, ptr %12, align 1, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @ui_theme_init_new_do(ptr nocapture noundef writeonly %0) unnamed_addr #5 !PGOFuncName !213 {
  %2 = getelementptr inbounds %struct.ThemeSpace, ptr %0, i64 0, i32 6
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %2, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %3 = getelementptr inbounds %struct.ThemeSpace, ptr %0, i64 0, i32 5
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %3, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %4 = getelementptr inbounds %struct.ThemeSpace, ptr %0, i64 0, i32 7
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %4, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #16
  %5 = getelementptr inbounds %struct.ThemeSpace, ptr %0, i64 0, i32 12
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %5, i8 noundef zeroext -111, i8 noundef zeroext -111, i8 noundef zeroext -111, i8 noundef zeroext -11) #16
  %6 = getelementptr inbounds %struct.ThemeSpace, ptr %0, i64 0, i32 13
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %6, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %7 = getelementptr inbounds %struct.ThemeSpace, ptr %0, i64 0, i32 14
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %7, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %8 = getelementptr inbounds %struct.ThemeSpace, ptr %0, i64 0, i32 15
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %8, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #16
  %9 = getelementptr inbounds %struct.ThemeSpace, ptr %0, i64 0, i32 16
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %9, i8 noundef zeroext -91, i8 noundef zeroext -91, i8 noundef zeroext -91, i8 noundef zeroext -1) #16
  %10 = getelementptr inbounds %struct.ThemeSpace, ptr %0, i64 0, i32 17
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %10, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %11 = getelementptr inbounds %struct.ThemeSpace, ptr %0, i64 0, i32 18
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %11, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) #16
  %12 = getelementptr inbounds %struct.ThemeSpace, ptr %0, i64 0, i32 19
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %12, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #16
  %13 = getelementptr inbounds %struct.ThemeSpace, ptr %0, i64 0, i32 8
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %13, i8 noundef zeroext 114, i8 noundef zeroext 114, i8 noundef zeroext 114, i8 noundef zeroext -1) #16
  %14 = getelementptr inbounds %struct.ThemeSpace, ptr %0, i64 0, i32 9
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %14, i8 noundef zeroext 83, i8 noundef zeroext 83, i8 noundef zeroext 83, i8 noundef zeroext -1) #16
  %15 = getelementptr inbounds %struct.ThemeSpace, ptr %0, i64 0, i32 10
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %15, i8 noundef zeroext 64, i8 noundef zeroext 64, i8 noundef zeroext 64, i8 noundef zeroext -1) #16
  %16 = getelementptr inbounds %struct.ThemeSpace, ptr %0, i64 0, i32 11
  tail call fastcc void @rgba_char_args_set(ptr noundef nonnull %16, i8 noundef zeroext 60, i8 noundef zeroext 60, i8 noundef zeroext 60, i8 noundef zeroext -1) #16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.usub.sat.i8(i8, i8) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #14

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind optsize }
attributes #16 = { optsize }
attributes #17 = { nounwind }
attributes #18 = { nounwind optsize willreturn memory(read) }

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
!48 = !{!49, !41, i64 666}
!49 = !{!"bTheme", !47, i64 0, !47, i64 8, !36, i64 16, !50, i64 48, !39, i64 960, !39, i64 1680, !39, i64 2400, !39, i64 3120, !39, i64 3840, !39, i64 4560, !39, i64 5280, !39, i64 6000, !39, i64 6720, !39, i64 7440, !39, i64 8160, !39, i64 8880, !39, i64 9600, !39, i64 10320, !39, i64 11040, !39, i64 11760, !39, i64 12480, !36, i64 13200, !35, i64 13520, !35, i64 13524}
!50 = !{!"ThemeUI", !51, i64 0, !51, i64 32, !51, i64 64, !51, i64 96, !51, i64 128, !51, i64 160, !51, i64 192, !51, i64 224, !51, i64 256, !51, i64 288, !51, i64 320, !51, i64 352, !51, i64 384, !51, i64 416, !51, i64 448, !51, i64 480, !51, i64 512, !51, i64 544, !52, i64 576, !40, i64 608, !36, i64 624, !53, i64 628, !41, i64 632, !36, i64 634, !36, i64 640, !53, i64 896, !36, i64 900, !36, i64 904, !36, i64 908}
!51 = !{!"uiWidgetColors", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30}
!52 = !{!"uiWidgetStateColors", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !53, i64 24, !53, i64 28}
!53 = !{!"float", !36, i64 0}
!54 = !{!49, !41, i64 664}
!55 = !{!49, !53, i64 676}
!56 = !{!49, !41, i64 680}
!57 = !{!49, !41, i64 1770}
!58 = !{!49, !41, i64 1768}
!59 = !{!49, !36, i64 2100}
!60 = !{!49, !36, i64 2101}
!61 = !{!49, !36, i64 2102}
!62 = !{!49, !35, i64 1784}
!63 = !{i64 0, i64 4, !43, i64 4, i64 4, !43, i64 8, i64 4, !43, i64 12, i64 4, !43, i64 16, i64 4, !43, i64 20, i64 4, !43, i64 24, i64 4, !43, i64 28, i64 4, !43, i64 32, i64 4, !43, i64 36, i64 4, !43, i64 40, i64 4, !43, i64 44, i64 4, !43, i64 48, i64 4, !43, i64 52, i64 4, !43, i64 56, i64 4, !43, i64 60, i64 4, !43, i64 64, i64 4, !43, i64 68, i64 4, !43, i64 72, i64 4, !43, i64 76, i64 4, !43, i64 80, i64 4, !43, i64 84, i64 4, !43, i64 88, i64 2, !64, i64 90, i64 2, !64, i64 92, i64 4, !34, i64 96, i64 4, !43, i64 100, i64 4, !43, i64 104, i64 4, !34, i64 108, i64 4, !34, i64 112, i64 4, !43, i64 116, i64 4, !43, i64 120, i64 4, !43, i64 124, i64 4, !43, i64 128, i64 4, !43, i64 132, i64 4, !43, i64 136, i64 4, !43, i64 140, i64 4, !43, i64 144, i64 4, !43, i64 148, i64 4, !43, i64 152, i64 4, !43, i64 156, i64 4, !43, i64 160, i64 4, !43, i64 164, i64 4, !43, i64 168, i64 4, !43, i64 172, i64 4, !43, i64 176, i64 4, !43, i64 180, i64 4, !43, i64 184, i64 4, !43, i64 188, i64 4, !43, i64 192, i64 4, !43, i64 196, i64 4, !43, i64 200, i64 4, !43, i64 204, i64 4, !43, i64 208, i64 4, !43, i64 212, i64 4, !43, i64 216, i64 4, !43, i64 220, i64 4, !43, i64 224, i64 4, !43, i64 228, i64 4, !43, i64 232, i64 4, !43, i64 236, i64 4, !43, i64 240, i64 4, !43, i64 244, i64 4, !43, i64 248, i64 4, !43, i64 252, i64 4, !43, i64 256, i64 4, !43, i64 260, i64 4, !43, i64 264, i64 4, !43, i64 268, i64 4, !43, i64 272, i64 4, !43, i64 276, i64 4, !43, i64 280, i64 4, !43, i64 284, i64 4, !43, i64 288, i64 4, !43, i64 292, i64 4, !43, i64 296, i64 4, !43, i64 300, i64 4, !43, i64 304, i64 4, !43, i64 308, i64 4, !43, i64 312, i64 4, !43, i64 316, i64 4, !43, i64 320, i64 4, !43, i64 324, i64 4, !43, i64 328, i64 4, !43, i64 332, i64 4, !43, i64 336, i64 4, !43, i64 340, i64 4, !43, i64 344, i64 4, !43, i64 348, i64 4, !43, i64 352, i64 4, !43, i64 356, i64 4, !43, i64 360, i64 4, !43, i64 364, i64 4, !43, i64 368, i64 4, !43, i64 372, i64 4, !43, i64 376, i64 4, !43, i64 380, i64 4, !43, i64 384, i64 4, !43, i64 388, i64 4, !43, i64 392, i64 4, !43, i64 396, i64 4, !43, i64 400, i64 4, !43, i64 404, i64 4, !43, i64 408, i64 4, !43, i64 412, i64 4, !43, i64 416, i64 4, !43, i64 420, i64 1, !43, i64 421, i64 1, !43, i64 422, i64 1, !43, i64 423, i64 1, !43, i64 424, i64 4, !43, i64 428, i64 4, !43, i64 432, i64 4, !43, i64 436, i64 4, !43, i64 440, i64 4, !43, i64 444, i64 4, !43, i64 448, i64 4, !43, i64 452, i64 4, !43, i64 456, i64 4, !43, i64 460, i64 4, !43, i64 464, i64 4, !43, i64 468, i64 4, !43, i64 472, i64 4, !43, i64 476, i64 4, !43, i64 480, i64 4, !43, i64 484, i64 4, !43, i64 488, i64 4, !43, i64 492, i64 4, !43, i64 496, i64 4, !43, i64 500, i64 4, !43, i64 504, i64 4, !43, i64 508, i64 4, !43, i64 512, i64 4, !43, i64 516, i64 4, !43, i64 520, i64 4, !43, i64 524, i64 4, !43, i64 528, i64 4, !43, i64 532, i64 4, !43, i64 536, i64 4, !43, i64 540, i64 1, !43, i64 541, i64 4, !43, i64 545, i64 4, !43, i64 549, i64 4, !43, i64 553, i64 4, !43, i64 557, i64 4, !43, i64 561, i64 4, !43, i64 565, i64 4, !43, i64 569, i64 4, !43, i64 573, i64 4, !43, i64 577, i64 4, !43, i64 581, i64 3, !43, i64 584, i64 4, !43, i64 588, i64 4, !43, i64 592, i64 4, !43, i64 596, i64 4, !43, i64 600, i64 4, !43, i64 604, i64 4, !43, i64 608, i64 4, !43, i64 612, i64 4, !43, i64 616, i64 4, !43, i64 620, i64 4, !43, i64 624, i64 4, !43, i64 628, i64 4, !43, i64 632, i64 4, !43, i64 636, i64 4, !43, i64 640, i64 4, !43, i64 644, i64 4, !43, i64 648, i64 4, !43, i64 652, i64 4, !43, i64 656, i64 4, !43, i64 660, i64 4, !43, i64 664, i64 4, !43, i64 668, i64 4, !43, i64 672, i64 4, !43, i64 676, i64 4, !43, i64 680, i64 4, !43, i64 684, i64 4, !43, i64 688, i64 4, !43, i64 692, i64 4, !43, i64 696, i64 4, !43, i64 700, i64 4, !43, i64 704, i64 4, !43, i64 708, i64 4, !43, i64 712, i64 4, !43, i64 716, i64 4, !43}
!64 = !{!41, !41, i64 0}
!65 = !{!49, !36, i64 3540}
!66 = !{!49, !36, i64 3660}
!67 = !{!49, !36, i64 7140}
!68 = !{!49, !36, i64 7142}
!69 = !{!49, !36, i64 7260}
!70 = !{!49, !36, i64 10023}
!71 = !{!49, !36, i64 13020}
!72 = !{!73, !47, i64 8536}
!73 = !{!"UserDef", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !35, i64 8468, !41, i64 8472, !41, i64 8474, !41, i64 8476, !41, i64 8478, !41, i64 8480, !41, i64 8482, !35, i64 8484, !35, i64 8488, !35, i64 8492, !41, i64 8496, !41, i64 8498, !35, i64 8500, !35, i64 8504, !35, i64 8508, !35, i64 8512, !35, i64 8516, !35, i64 8520, !35, i64 8524, !41, i64 8528, !41, i64 8530, !41, i64 8532, !41, i64 8534, !74, i64 8536, !74, i64 8552, !74, i64 8568, !74, i64 8584, !74, i64 8600, !74, i64 8616, !74, i64 8632, !36, i64 8648, !41, i64 8712, !41, i64 8714, !41, i64 8716, !41, i64 8718, !41, i64 8720, !41, i64 8722, !41, i64 8724, !41, i64 8726, !36, i64 8728, !41, i64 8896, !41, i64 8898, !41, i64 8900, !41, i64 8902, !41, i64 8904, !41, i64 8906, !41, i64 8908, !41, i64 8910, !35, i64 8912, !35, i64 8916, !41, i64 8920, !41, i64 8922, !41, i64 8924, !41, i64 8926, !41, i64 8928, !41, i64 8930, !41, i64 8932, !41, i64 8934, !41, i64 8936, !41, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !41, i64 8944, !41, i64 8946, !41, i64 8948, !41, i64 8950, !41, i64 8952, !41, i64 8954, !53, i64 8956, !53, i64 8960, !35, i64 8964, !41, i64 8968, !41, i64 8970, !53, i64 8972, !41, i64 8976, !41, i64 8978, !41, i64 8980, !41, i64 8982, !75, i64 8984, !36, i64 9760, !36, i64 9772, !41, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !35, i64 10896, !35, i64 10900, !53, i64 10904, !53, i64 10908, !35, i64 10912, !41, i64 10916, !41, i64 10918, !41, i64 10920, !41, i64 10922, !41, i64 10924, !41, i64 10926, !76, i64 10928}
!74 = !{!"ListBase", !47, i64 0, !47, i64 8}
!75 = !{!"ColorBand", !41, i64 0, !41, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!76 = !{!"WalkNavigation", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !41, i64 24, !36, i64 26}
!77 = !{!"resources.c:rgba_char_args_set"}
!78 = !{!"resources.c:ui_theme_init_boneColorSets"}
!79 = !{!80, !41, i64 12}
!80 = !{!"ThemeWireColor", !36, i64 0, !36, i64 4, !36, i64 8, !41, i64 12, !41, i64 14}
!81 = distinct !{!81, !82, !83, !84}
!82 = !{!"llvm.loop.mustprogress"}
!83 = !{!"llvm.loop.isvectorized", i32 1}
!84 = !{!"llvm.loop.unroll.runtime.disable"}
!85 = !{!"resources.c:ui_theme_init_new"}
!86 = distinct !{!86, !82}
!87 = !{!"resources.c:ui_theme_space_init_handles_color"}
!88 = !{!"resources.c:rgba_char_args_test_set"}
!89 = !{!53, !53, i64 0}
!90 = !{!73, !53, i64 10908}
!91 = !{!73, !35, i64 8524}
!92 = !{!93, !47, i64 0}
!93 = !{!"Global", !47, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !74, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !36, i64 2090, !41, i64 2092, !35, i64 2096, !35, i64 2100, !36, i64 2104, !35, i64 2108, !35, i64 2112, !36, i64 2116}
!94 = !{!73, !41, i64 8482}
!95 = !{!73, !41, i64 8532}
!96 = !{!73, !41, i64 8534}
!97 = !{!73, !41, i64 8724}
!98 = !{!73, !41, i64 8726}
!99 = !{!73, !35, i64 8500}
!100 = !{!73, !41, i64 8976}
!101 = !{!73, !35, i64 16}
!102 = !{!73, !41, i64 8896}
!103 = !{!73, !41, i64 8902}
!104 = !{!73, !41, i64 8900}
!105 = !{!73, !41, i64 8922}
!106 = !{!73, !53, i64 10904}
!107 = !{!73, !35, i64 8}
!108 = !{!109, !41, i64 1040}
!109 = !{!"Main", !47, i64 0, !47, i64 8, !36, i64 16, !41, i64 1040, !41, i64 1042, !41, i64 1044, !41, i64 1046, !110, i64 1048, !36, i64 1056, !41, i64 1072, !47, i64 1080, !74, i64 1088, !74, i64 1104, !74, i64 1120, !74, i64 1136, !74, i64 1152, !74, i64 1168, !74, i64 1184, !74, i64 1200, !74, i64 1216, !74, i64 1232, !74, i64 1248, !74, i64 1264, !74, i64 1280, !74, i64 1296, !74, i64 1312, !74, i64 1328, !74, i64 1344, !74, i64 1360, !74, i64 1376, !74, i64 1392, !74, i64 1408, !74, i64 1424, !74, i64 1440, !74, i64 1456, !74, i64 1472, !74, i64 1488, !74, i64 1504, !74, i64 1520, !74, i64 1536, !74, i64 1552, !74, i64 1568, !74, i64 1584, !74, i64 1600, !74, i64 1616, !36, i64 1632, !47, i64 1888, !47, i64 1896}
!110 = !{!"long", !36, i64 0}
!111 = !{!73, !35, i64 12}
!112 = !{!73, !35, i64 8484}
!113 = !{!73, !41, i64 8712}
!114 = distinct !{!114, !82}
!115 = distinct !{!115, !82}
!116 = distinct !{!116, !82}
!117 = distinct !{!117, !82}
!118 = distinct !{!118, !82}
!119 = !{!73, !41, i64 8924}
!120 = distinct !{!120, !82}
!121 = !{!73, !41, i64 8926}
!122 = !{!73, !41, i64 8928}
!123 = distinct !{!123, !82}
!124 = !{!73, !41, i64 8930}
!125 = !{!109, !41, i64 1042}
!126 = distinct !{!126, !82}
!127 = !{!73, !41, i64 8984}
!128 = distinct !{!128, !82}
!129 = distinct !{!129, !82}
!130 = distinct !{!130, !82}
!131 = !{!73, !41, i64 8716}
!132 = !{!73, !41, i64 8718}
!133 = !{!73, !36, i64 8940}
!134 = distinct !{!134, !82}
!135 = distinct !{!135, !82}
!136 = !{!73, !35, i64 8516}
!137 = !{!73, !35, i64 8512}
!138 = !{!73, !35, i64 8508}
!139 = !{!73, !41, i64 8480}
!140 = distinct !{!140, !82}
!141 = !{!73, !41, i64 8908}
!142 = !{!73, !36, i64 8941}
!143 = distinct !{!143, !82}
!144 = distinct !{!144, !82}
!145 = !{i64 0, i64 4, !43, i64 4, i64 4, !43, i64 8, i64 4, !43, i64 12, i64 4, !43, i64 16, i64 4, !43, i64 20, i64 4, !43, i64 24, i64 2, !64, i64 26, i64 2, !64, i64 28, i64 2, !64, i64 30, i64 2, !64}
!146 = distinct !{!146, !82}
!147 = distinct !{!147, !82}
!148 = distinct !{!148, !82}
!149 = !{!73, !41, i64 8978}
!150 = distinct !{!150, !82}
!151 = distinct !{!151, !82}
!152 = distinct !{!152, !82}
!153 = !{!49, !53, i64 944}
!154 = distinct !{!154, !82}
!155 = !{!73, !41, i64 8952}
!156 = distinct !{!156, !82}
!157 = distinct !{!157, !82}
!158 = distinct !{!158, !82}
!159 = distinct !{!159, !82}
!160 = distinct !{!160, !82}
!161 = distinct !{!161, !82}
!162 = distinct !{!162, !82}
!163 = distinct !{!163, !82}
!164 = distinct !{!164, !82}
!165 = distinct !{!165, !82}
!166 = distinct !{!166, !82}
!167 = distinct !{!167, !82}
!168 = !{!73, !35, i64 0}
!169 = distinct !{!169, !82}
!170 = !{!73, !41, i64 8904}
!171 = !{!73, !41, i64 8906}
!172 = !{!73, !35, i64 8912}
!173 = !{!73, !41, i64 8920}
!174 = !{!73, !41, i64 8478}
!175 = !{!73, !41, i64 8944}
!176 = !{!73, !41, i64 8946}
!177 = !{!73, !41, i64 8472}
!178 = !{!73, !41, i64 8910}
!179 = !{!73, !41, i64 8948}
!180 = !{!73, !41, i64 8950}
!181 = !{!73, !53, i64 8956}
!182 = !{!73, !35, i64 8964}
!183 = !{!73, !53, i64 8960}
!184 = !{!73, !41, i64 9788}
!185 = distinct !{!185, !82}
!186 = distinct !{!186, !82}
!187 = !{i64 0, i64 4, !43, i64 4, i64 4, !43, i64 8, i64 2, !64, i64 10, i64 2, !64, i64 12, i64 4, !34}
!188 = distinct !{!188, !82}
!189 = distinct !{!189, !82}
!190 = distinct !{!190, !82}
!191 = distinct !{!191, !82}
!192 = distinct !{!192, !82}
!193 = distinct !{!193, !82}
!194 = distinct !{!194, !82}
!195 = distinct !{!195, !82}
!196 = distinct !{!196, !82}
!197 = distinct !{!197, !82}
!198 = distinct !{!198, !82}
!199 = distinct !{!199, !82}
!200 = distinct !{!200, !82}
!201 = distinct !{!201, !82}
!202 = distinct !{!202, !82}
!203 = distinct !{!203, !82}
!204 = !{!73, !41, i64 10924}
!205 = !{!73, !41, i64 10926}
!206 = !{!73, !41, i64 10920}
!207 = distinct !{!207, !82}
!208 = distinct !{!208, !82}
!209 = distinct !{!209, !82}
!210 = !{!73, !41, i64 8970}
!211 = !{!"resources.c:copy_v3_v3_char"}
!212 = !{!"resources.c:copy_v4_v4_char"}
!213 = !{!"resources.c:ui_theme_init_new_do"}
