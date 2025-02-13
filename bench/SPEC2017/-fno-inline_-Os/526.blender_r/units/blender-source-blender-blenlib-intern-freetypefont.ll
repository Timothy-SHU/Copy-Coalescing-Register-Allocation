; ModuleID = 'blender/source/blender/blenlib/intern/freetypefont.c'
source_filename = "blender/source/blender/blenlib/intern/freetypefont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.PackedFile = type { i32, i32, ptr }
%struct.FT_FaceRec_ = type { i64, i64, i64, i64, i64, ptr, ptr, i32, ptr, i32, ptr, %struct.FT_Generic_, %struct.FT_BBox_, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, %struct.FT_ListRec_, %struct.FT_Generic_, ptr, ptr }
%struct.FT_BBox_ = type { i64, i64, i64, i64 }
%struct.FT_ListRec_ = type { ptr, ptr }
%struct.FT_Generic_ = type { ptr, ptr }
%struct.FT_GlyphSlotRec_ = type { ptr, ptr, ptr, i32, %struct.FT_Generic_, %struct.FT_Glyph_Metrics_, i64, i64, %struct.FT_Vector_, i32, %struct.FT_Bitmap_, i32, i32, %struct.FT_Outline_, i32, ptr, ptr, i64, i64, i64, ptr, ptr }
%struct.FT_Glyph_Metrics_ = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.FT_Vector_ = type { i64, i64 }
%struct.FT_Bitmap_ = type { i32, i32, i32, ptr, i16, i8, i8, ptr }
%struct.FT_Outline_ = type { i16, i16, ptr, ptr, ptr, i32 }
%struct.VFontData = type { ptr, [128 x i8], float }
%struct.FT_CharMapRec_ = type { ptr, i32, i16, i16 }
%struct.VFont = type { %struct.ID, [1024 x i8], ptr, ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.VChar = type { %struct.ListBase, i32, float }
%struct.ListBase = type { ptr, ptr }
%struct.Nurb = type { ptr, ptr, i16, i16, i16, i16, i32, i32, [2 x i16], i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, i16, i16, i32 }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }

@library = internal global ptr null, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [12 x i8] c"FTVFontData\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__func__.objfnt_to_ftvfontdata = private unnamed_addr constant [22 x i8] c"objfnt_to_ftvfontdata\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"objfnt_char\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"onpoints\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"objfnt_nurb\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"objfnt_bezt\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BLI_vfontdata_from_freetypefont(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i32 @FT_Init_FreeType(ptr noundef nonnull @library) #8
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %13

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @check_freetypefont(ptr noundef %0) #9, !range !34
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc ptr @objfnt_to_ftvfontdata(ptr noundef %0) #9
  br label %9

9:                                                ; preds = %7, %4
  %10 = phi ptr [ %8, %7 ], [ null, %4 ]
  %11 = load ptr, ptr @library, align 8, !tbaa !35
  %12 = tail call i32 @FT_Done_FreeType(ptr noundef %11) #8
  br label %13

13:                                               ; preds = %1, %9
  %14 = phi ptr [ %10, %9 ], [ null, %1 ]
  ret ptr %14
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @FT_Init_FreeType(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @check_freetypefont(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !39 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  %3 = load ptr, ptr @library, align 8, !tbaa !35
  %4 = getelementptr inbounds %struct.PackedFile, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = load i32, ptr %0, align 8, !tbaa !43
  %7 = sext i32 %6 to i64
  %8 = call i32 @FT_New_Memory_Face(ptr noundef %3, ptr noundef %5, i64 noundef %7, i64 noundef 0, ptr noundef nonnull %2) #8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %1
  %11 = load ptr, ptr %2, align 8, !tbaa !35
  %12 = call i32 @FT_Get_Char_Index(ptr noundef %11, i64 noundef 65) #8
  %13 = load ptr, ptr %2, align 8, !tbaa !35
  %14 = call i32 @FT_Load_Glyph(ptr noundef %13, i32 noundef %12, i32 noundef 9) #8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %10
  %17 = load ptr, ptr %2, align 8, !tbaa !35
  %18 = getelementptr inbounds %struct.FT_FaceRec_, ptr %17, i64 0, i32 21
  %19 = load ptr, ptr %18, align 8, !tbaa !44
  %20 = getelementptr inbounds %struct.FT_GlyphSlotRec_, ptr %19, i64 0, i32 9
  %21 = load i32, ptr %20, align 8, !tbaa !51
  %22 = icmp eq i32 %21, 1869968492
  %23 = zext i1 %22 to i32
  br label %24

24:                                               ; preds = %16, %10, %1
  %25 = phi i32 [ 0, %1 ], [ 0, %10 ], [ %23, %16 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  ret i32 %25
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @objfnt_to_ftvfontdata(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !57 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  %4 = load ptr, ptr @library, align 8, !tbaa !35
  %5 = getelementptr inbounds %struct.PackedFile, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  %7 = load i32, ptr %0, align 8, !tbaa !43
  %8 = sext i32 %7 to i64
  %9 = call i32 @FT_New_Memory_Face(ptr noundef %4, ptr noundef %6, i64 noundef %8, i64 noundef 0, ptr noundef nonnull %2) #8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %74

11:                                               ; preds = %1
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %13 = call ptr %12(i64 noundef 144, ptr noundef nonnull @.str) #8
  %14 = load ptr, ptr %2, align 8, !tbaa !35
  %15 = call ptr @FT_Get_Postscript_Name(ptr noundef %14) #8
  %16 = getelementptr inbounds %struct.VFontData, ptr %13, i64 0, i32 1
  %17 = icmp eq ptr %15, null
  %18 = select i1 %17, ptr @.str.1, ptr %15
  %19 = call ptr @BLI_strncpy(ptr noundef nonnull %16, ptr noundef nonnull %18, i64 noundef 128) #8
  %20 = load ptr, ptr %2, align 8, !tbaa !35
  %21 = call i64 @FT_Get_First_Char(ptr noundef %20, ptr noundef nonnull %3) #8
  %22 = load i32, ptr %3, align 4, !tbaa !58
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %50

24:                                               ; preds = %11
  %25 = load ptr, ptr %2, align 8, !tbaa !35
  %26 = getelementptr inbounds %struct.FT_FaceRec_, ptr %25, i64 0, i32 9
  %27 = load i32, ptr %26, align 8, !tbaa !59
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.FT_FaceRec_, ptr %25, i64 0, i32 10
  %31 = load ptr, ptr %30, align 8, !tbaa !60
  %32 = zext nneg i32 %27 to i64
  br label %36

33:                                               ; preds = %36
  %34 = add nuw nsw i64 %37, 1
  %35 = icmp eq i64 %34, %32
  br i1 %35, label %43, label %36, !llvm.loop !61

36:                                               ; preds = %29, %33
  %37 = phi i64 [ 0, %29 ], [ %34, %33 ]
  %38 = getelementptr inbounds ptr, ptr %31, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !35
  %40 = getelementptr inbounds %struct.FT_CharMapRec_, ptr %39, i64 0, i32 1
  %41 = load i32, ptr %40, align 8, !tbaa !63
  %42 = icmp eq i32 %41, 1634889070
  br i1 %42, label %43, label %33

43:                                               ; preds = %33, %36, %24
  %44 = phi ptr [ null, %24 ], [ %39, %36 ], [ null, %33 ]
  %45 = call i32 @FT_Set_Charmap(ptr noundef nonnull %25, ptr noundef %44) #8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %74

47:                                               ; preds = %43
  %48 = load ptr, ptr %2, align 8, !tbaa !35
  %49 = call i64 @FT_Get_First_Char(ptr noundef %48, ptr noundef nonnull %3) #8
  br label %50

50:                                               ; preds = %47, %11
  %51 = phi i64 [ %21, %11 ], [ %49, %47 ]
  %52 = load ptr, ptr %2, align 8, !tbaa !35
  %53 = getelementptr inbounds %struct.FT_FaceRec_, ptr %52, i64 0, i32 12, i32 3
  %54 = load i64, ptr %53, align 8, !tbaa !65
  %55 = getelementptr inbounds %struct.FT_FaceRec_, ptr %52, i64 0, i32 12, i32 1
  %56 = load i64, ptr %55, align 8, !tbaa !66
  %57 = icmp eq i64 %54, %56
  %58 = sub nsw i64 %54, %56
  %59 = sitofp i64 %58 to double
  %60 = fdiv double 1.000000e+00, %59
  %61 = fptrunc double %60 to float
  %62 = select i1 %57, float 0x3F50624DE0000000, float %61
  %63 = getelementptr inbounds %struct.VFontData, ptr %13, i64 0, i32 2
  store float %62, ptr %63, align 8
  %64 = call ptr @BLI_ghash_int_new_ex(ptr noundef nonnull @__func__.objfnt_to_ftvfontdata, i32 noundef 256) #8
  store ptr %64, ptr %13, align 8, !tbaa !67
  br label %65

65:                                               ; preds = %68, %50
  %66 = phi i64 [ %51, %50 ], [ %72, %68 ]
  %67 = icmp ult i64 %66, 256
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load ptr, ptr %2, align 8, !tbaa !35
  %70 = call fastcc ptr @freetypechar_to_vchar(ptr noundef %69, i64 noundef %66, ptr noundef nonnull %13) #9
  %71 = load ptr, ptr %2, align 8, !tbaa !35
  %72 = call i64 @FT_Get_Next_Char(ptr noundef %71, i64 noundef %66, ptr noundef nonnull %3) #8
  %73 = icmp ugt i64 %72, %66
  br i1 %73, label %65, label %74, !llvm.loop !70

74:                                               ; preds = %65, %68, %43, %1
  %75 = phi ptr [ null, %1 ], [ null, %43 ], [ %13, %68 ], [ %13, %65 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  ret ptr %75
}

; Function Attrs: optsize
declare i32 @FT_Done_FreeType(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BLI_vfontchar_from_freetypefont(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %2
  %5 = tail call i32 @FT_Init_FreeType(ptr noundef nonnull @library) #8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  %8 = tail call fastcc ptr @objchr_to_ftvfontdata(ptr noundef nonnull %0, i64 noundef %1) #9
  %9 = load ptr, ptr @library, align 8, !tbaa !35
  %10 = tail call i32 @FT_Done_FreeType(ptr noundef %9) #8
  br label %11

11:                                               ; preds = %4, %2, %7
  %12 = phi ptr [ %8, %7 ], [ null, %2 ], [ null, %4 ]
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @objchr_to_ftvfontdata(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #0 !PGOFuncName !71 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  %4 = getelementptr inbounds %struct.VFont, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !72
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr @library, align 8, !tbaa !35
  %9 = getelementptr inbounds %struct.PackedFile, ptr %5, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !40
  %11 = load i32, ptr %5, align 8, !tbaa !43
  %12 = sext i32 %11 to i64
  %13 = call i32 @FT_New_Memory_Face(ptr noundef %8, ptr noundef %10, i64 noundef %12, i64 noundef 0, ptr noundef nonnull %3) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %7
  %16 = load ptr, ptr %3, align 8, !tbaa !35
  %17 = getelementptr inbounds %struct.VFont, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !75
  %19 = call fastcc ptr @freetypechar_to_vchar(ptr noundef %16, i64 noundef %1, ptr noundef %18) #9
  br label %20

20:                                               ; preds = %2, %7, %15
  %21 = phi ptr [ %19, %15 ], [ null, %7 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  ret ptr %21
}

; Function Attrs: optsize
declare i32 @FT_New_Memory_Face(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @FT_Get_Char_Index(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @FT_Load_Glyph(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @FT_Get_Postscript_Name(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @FT_Get_First_Char(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @FT_Set_Charmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_ghash_int_new_ex(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @freetypechar_to_vchar(ptr noundef %0, i64 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !76 {
  %4 = getelementptr inbounds %struct.VFontData, ptr %2, i64 0, i32 2
  %5 = load float, ptr %4, align 8, !tbaa !77
  %6 = tail call i32 @FT_Get_Char_Index(ptr noundef %0, i64 noundef %1) #8
  %7 = tail call i32 @FT_Load_Glyph(ptr noundef %0, i32 noundef %6, i32 noundef 9) #8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %321

9:                                                ; preds = %3
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %11 = tail call ptr %10(i64 noundef 24, ptr noundef nonnull @.str.2) #8
  %12 = getelementptr inbounds %struct.FT_FaceRec_, ptr %0, i64 0, i32 21
  %13 = load ptr, ptr %12, align 8, !tbaa !44
  %14 = getelementptr inbounds %struct.FT_GlyphSlotRec_, ptr %13, i64 0, i32 13
  %15 = load i16, ptr %14, align 8, !tbaa.struct !78
  %16 = getelementptr inbounds %struct.FT_GlyphSlotRec_, ptr %13, i64 0, i32 13, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa.struct !80
  %18 = getelementptr inbounds %struct.FT_GlyphSlotRec_, ptr %13, i64 0, i32 13, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa.struct !81
  %20 = getelementptr inbounds %struct.FT_GlyphSlotRec_, ptr %13, i64 0, i32 13, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa.struct !82
  %22 = trunc i64 %1 to i32
  %23 = getelementptr inbounds %struct.VChar, ptr %11, i64 0, i32 1
  store i32 %22, ptr %23, align 8, !tbaa !83
  %24 = getelementptr inbounds %struct.FT_GlyphSlotRec_, ptr %13, i64 0, i32 8
  %25 = load i64, ptr %24, align 8, !tbaa !86
  %26 = sitofp i64 %25 to float
  %27 = fmul float %5, %26
  %28 = getelementptr inbounds %struct.VChar, ptr %11, i64 0, i32 2
  store float %27, ptr %28, align 4, !tbaa !87
  %29 = load ptr, ptr %2, align 8, !tbaa !67
  %30 = and i64 %1, 4294967295
  %31 = inttoptr i64 %30 to ptr
  tail call void @BLI_ghash_insert(ptr noundef %29, ptr noundef %31, ptr noundef %11) #8
  %32 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %33 = sext i16 %15 to i64
  %34 = shl nsw i64 %33, 2
  %35 = tail call ptr %32(i64 noundef %34, ptr noundef nonnull @.str.3) #8
  %36 = sext i16 %15 to i32
  %37 = icmp sgt i16 %15, 0
  br i1 %37, label %38, label %319

38:                                               ; preds = %9
  %39 = zext nneg i32 %36 to i64
  br label %45

40:                                               ; preds = %96
  br i1 %37, label %41, label %319

41:                                               ; preds = %40
  %42 = zext nneg i32 %36 to i64
  %43 = insertelement <2 x float> poison, float %5, i64 0
  %44 = shufflevector <2 x float> %43, <2 x float> poison, <2 x i32> zeroinitializer
  br label %100

45:                                               ; preds = %38, %96
  %46 = phi i64 [ 0, %38 ], [ %98, %96 ]
  %47 = phi i32 [ 0, %38 ], [ %97, %96 ]
  %48 = phi i32 [ -1, %38 ], [ %51, %96 ]
  %49 = getelementptr inbounds i16, ptr %21, i64 %46
  %50 = load i16, ptr %49, align 2, !tbaa !79
  %51 = sext i16 %50 to i32
  %52 = sub nsw i32 %51, %48
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %96

54:                                               ; preds = %45
  %55 = icmp eq i64 %46, 0
  %56 = getelementptr i16, ptr %49, i64 -1
  %57 = getelementptr inbounds i32, ptr %35, i64 %46
  %58 = add nsw i32 %52, -1
  br label %59

59:                                               ; preds = %54, %93
  %60 = phi i32 [ 0, %54 ], [ %94, %93 ]
  %61 = phi i32 [ %47, %54 ], [ %70, %93 ]
  br i1 %55, label %67, label %62

62:                                               ; preds = %59
  %63 = load i16, ptr %56, align 2, !tbaa !79
  %64 = sext i16 %63 to i32
  %65 = add nuw nsw i32 %60, 1
  %66 = add i32 %65, %64
  br label %67

67:                                               ; preds = %59, %62
  %68 = phi i32 [ %66, %62 ], [ %60, %59 ]
  %69 = icmp eq i32 %60, 0
  %70 = select i1 %69, i32 %68, i32 %61
  %71 = sext i32 %68 to i64
  %72 = getelementptr inbounds i8, ptr %19, i64 %71
  %73 = load i8, ptr %72, align 1, !tbaa !88
  %74 = icmp eq i8 %73, 1
  br i1 %74, label %75, label %79

75:                                               ; preds = %67
  %76 = load i32, ptr %57, align 4, !tbaa !58
  %77 = add nsw i32 %76, 1
  store i32 %77, ptr %57, align 4, !tbaa !58
  %78 = load i8, ptr %72, align 1, !tbaa !88
  br label %79

79:                                               ; preds = %75, %67
  %80 = phi i8 [ %78, %75 ], [ %73, %67 ]
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %79
  %83 = icmp slt i32 %60, %58
  %84 = add nsw i32 %68, 1
  %85 = select i1 %83, i32 %84, i32 %70
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, ptr %19, i64 %86
  %88 = load i8, ptr %87, align 1, !tbaa !88
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %82
  %91 = load i32, ptr %57, align 4, !tbaa !58
  %92 = add nsw i32 %91, 1
  store i32 %92, ptr %57, align 4, !tbaa !58
  br label %93

93:                                               ; preds = %90, %82, %79
  %94 = add nuw nsw i32 %60, 1
  %95 = icmp eq i32 %94, %52
  br i1 %95, label %96, label %59, !llvm.loop !89

96:                                               ; preds = %93, %45
  %97 = phi i32 [ %47, %45 ], [ %70, %93 ]
  %98 = add nuw nsw i64 %46, 1
  %99 = icmp eq i64 %98, %39
  br i1 %99, label %40, label %45, !llvm.loop !90

100:                                              ; preds = %41, %315
  %101 = phi i64 [ 0, %41 ], [ %317, %315 ]
  %102 = phi i32 [ %97, %41 ], [ %316, %315 ]
  %103 = phi i32 [ -1, %41 ], [ %106, %315 ]
  %104 = getelementptr inbounds i16, ptr %21, i64 %101
  %105 = load i16, ptr %104, align 2, !tbaa !79
  %106 = sext i16 %105 to i32
  %107 = sub nsw i32 %106, %103
  %108 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %109 = tail call ptr %108(i64 noundef 88, ptr noundef nonnull @.str.4) #8
  %110 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %111 = getelementptr inbounds i32, ptr %35, i64 %101
  %112 = load i32, ptr %111, align 4, !tbaa !58
  %113 = sext i32 %112 to i64
  %114 = mul nsw i64 %113, 72
  %115 = tail call ptr %110(i64 noundef %114, ptr noundef nonnull @.str.5) #8
  tail call void @BLI_addtail(ptr noundef %11, ptr noundef %109) #8
  %116 = getelementptr inbounds %struct.Nurb, ptr %109, i64 0, i32 2
  store i16 1, ptr %116, align 8, !tbaa !91
  %117 = load i32, ptr %111, align 4, !tbaa !58
  %118 = getelementptr inbounds %struct.Nurb, ptr %109, i64 0, i32 6
  store i32 %117, ptr %118, align 8, !tbaa !93
  %119 = getelementptr inbounds %struct.Nurb, ptr %109, i64 0, i32 9
  store i16 8, ptr %119, align 4, !tbaa !94
  %120 = getelementptr inbounds %struct.Nurb, ptr %109, i64 0, i32 5
  store i16 8, ptr %120, align 2, !tbaa !95
  %121 = getelementptr inbounds %struct.Nurb, ptr %109, i64 0, i32 13
  store i16 1, ptr %121, align 4, !tbaa !96
  %122 = getelementptr inbounds %struct.Nurb, ptr %109, i64 0, i32 18
  store ptr %115, ptr %122, align 8, !tbaa !97
  %123 = icmp sgt i32 %107, 0
  br i1 %123, label %124, label %315

124:                                              ; preds = %100
  %125 = icmp eq i64 %101, 0
  %126 = getelementptr i16, ptr %104, i64 -1
  %127 = add nsw i32 %107, -1
  br label %128

128:                                              ; preds = %124, %311
  %129 = phi ptr [ %115, %124 ], [ %312, %311 ]
  %130 = phi i32 [ 0, %124 ], [ %313, %311 ]
  %131 = phi i32 [ %102, %124 ], [ %140, %311 ]
  br i1 %125, label %137, label %132

132:                                              ; preds = %128
  %133 = load i16, ptr %126, align 2, !tbaa !79
  %134 = sext i16 %133 to i32
  %135 = add nuw nsw i32 %130, 1
  %136 = add i32 %135, %134
  br label %137

137:                                              ; preds = %128, %132
  %138 = phi i32 [ %136, %132 ], [ %130, %128 ]
  %139 = icmp eq i32 %130, 0
  %140 = select i1 %139, i32 %138, i32 %131
  %141 = icmp slt i32 %130, %127
  %142 = add nsw i32 %138, 1
  %143 = select i1 %141, i32 %142, i32 %140
  %144 = sext i32 %138 to i64
  %145 = getelementptr inbounds i8, ptr %19, i64 %144
  %146 = load i8, ptr %145, align 1, !tbaa !88
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %148, label %177

148:                                              ; preds = %137
  %149 = sext i32 %143 to i64
  %150 = getelementptr inbounds i8, ptr %19, i64 %149
  %151 = load i8, ptr %150, align 1, !tbaa !88
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %153, label %311

153:                                              ; preds = %148
  %154 = getelementptr inbounds %struct.FT_Vector_, ptr %17, i64 %144
  %155 = getelementptr inbounds %struct.FT_Vector_, ptr %17, i64 %149
  %156 = load <2 x i64>, ptr %154, align 8, !tbaa !98
  %157 = load <2 x i64>, ptr %155, align 8, !tbaa !98
  %158 = add nsw <2 x i64> %157, %156
  %159 = sitofp <2 x i64> %158 to <2 x float>
  %160 = fmul <2 x float> %44, %159
  %161 = fmul <2 x float> %160, <float 5.000000e-01, float 5.000000e-01>
  %162 = shl nsw <2 x i64> %156, <i64 1, i64 1>
  %163 = sitofp <2 x i64> %162 to <2 x float>
  %164 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %163, <2 x float> %44, <2 x float> %161)
  %165 = fdiv <2 x float> %164, <float 3.000000e+00, float 3.000000e+00>
  store <2 x float> %165, ptr %129, align 4, !tbaa !99
  %166 = getelementptr inbounds [3 x [3 x float]], ptr %129, i64 0, i64 1
  store <2 x float> %161, ptr %166, align 4, !tbaa !99
  %167 = getelementptr inbounds [3 x [3 x float]], ptr %129, i64 0, i64 2
  %168 = shl nsw <2 x i64> %157, <i64 1, i64 1>
  %169 = sitofp <2 x i64> %168 to <2 x float>
  %170 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %169, <2 x float> %44, <2 x float> %161)
  %171 = fdiv <2 x float> %170, <float 3.000000e+00, float 3.000000e+00>
  store <2 x float> %171, ptr %167, align 4, !tbaa !99
  %172 = getelementptr inbounds %struct.BezTriple, ptr %129, i64 0, i32 6
  store i8 3, ptr %172, align 2, !tbaa !100
  %173 = getelementptr inbounds %struct.BezTriple, ptr %129, i64 0, i32 5
  store i8 3, ptr %173, align 1, !tbaa !102
  %174 = getelementptr inbounds %struct.BezTriple, ptr %129, i64 0, i32 3
  store float 1.000000e+00, ptr %174, align 4, !tbaa !103
  %175 = getelementptr inbounds %struct.BezTriple, ptr %129, i64 1
  %176 = load i8, ptr %145, align 1, !tbaa !88
  br label %177

177:                                              ; preds = %153, %137
  %178 = phi i8 [ %146, %137 ], [ %176, %153 ]
  %179 = phi ptr [ %129, %137 ], [ %175, %153 ]
  %180 = icmp eq i8 %178, 1
  br i1 %180, label %181, label %311

181:                                              ; preds = %177
  br i1 %139, label %184, label %182

182:                                              ; preds = %181
  %183 = add nsw i32 %138, -1
  br label %187

184:                                              ; preds = %181
  %185 = load i16, ptr %104, align 2, !tbaa !79
  %186 = sext i16 %185 to i32
  br label %187

187:                                              ; preds = %184, %182
  %188 = phi i32 [ %183, %182 ], [ %186, %184 ]
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8, ptr %19, i64 %189
  %191 = load i8, ptr %190, align 1, !tbaa !88
  switch i8 %191, label %215 [
    i8 2, label %192
    i8 0, label %202
  ]

192:                                              ; preds = %187
  %193 = getelementptr inbounds %struct.FT_Vector_, ptr %17, i64 %189
  %194 = load <2 x i64>, ptr %193, align 8, !tbaa !98
  %195 = sitofp <2 x i64> %194 to <2 x float>
  %196 = fmul <2 x float> %44, %195
  store <2 x float> %196, ptr %179, align 4, !tbaa !99
  %197 = getelementptr inbounds %struct.BezTriple, ptr %179, i64 0, i32 5
  store i8 0, ptr %197, align 1, !tbaa !102
  %198 = getelementptr inbounds %struct.FT_Vector_, ptr %17, i64 %144
  %199 = load i64, ptr %198, align 8, !tbaa !104
  %200 = getelementptr inbounds %struct.FT_Vector_, ptr %17, i64 %144, i32 1
  %201 = load i64, ptr %200, align 8, !tbaa !105
  br label %229

202:                                              ; preds = %187
  %203 = getelementptr inbounds %struct.FT_Vector_, ptr %17, i64 %144
  %204 = getelementptr inbounds %struct.FT_Vector_, ptr %17, i64 %189
  %205 = load <2 x i64>, ptr %203, align 8, !tbaa !98
  %206 = load <2 x i64>, ptr %204, align 8, !tbaa !98
  %207 = shl nsw <2 x i64> %206, <i64 1, i64 1>
  %208 = add nsw <2 x i64> %207, %205
  %209 = sitofp <2 x i64> %208 to <2 x float>
  %210 = fmul <2 x float> %44, %209
  %211 = fdiv <2 x float> %210, <float 3.000000e+00, float 3.000000e+00>
  store <2 x float> %211, ptr %179, align 4, !tbaa !99
  %212 = getelementptr inbounds %struct.BezTriple, ptr %179, i64 0, i32 5
  store i8 0, ptr %212, align 1, !tbaa !102
  %213 = extractelement <2 x i64> %205, i64 0
  %214 = extractelement <2 x i64> %205, i64 1
  br label %229

215:                                              ; preds = %187
  %216 = getelementptr inbounds %struct.FT_Vector_, ptr %17, i64 %144
  %217 = getelementptr inbounds %struct.FT_Vector_, ptr %17, i64 %189
  %218 = load <2 x i64>, ptr %216, align 8, !tbaa !98
  %219 = sitofp <2 x i64> %218 to <2 x float>
  %220 = load <2 x i64>, ptr %217, align 8, !tbaa !98
  %221 = sub nsw <2 x i64> %218, %220
  %222 = sitofp <2 x i64> %221 to <2 x float>
  %223 = fmul <2 x float> %44, %222
  %224 = fdiv <2 x float> %223, <float -3.000000e+00, float -3.000000e+00>
  %225 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %219, <2 x float> %44, <2 x float> %224)
  store <2 x float> %225, ptr %179, align 4, !tbaa !99
  %226 = getelementptr inbounds %struct.BezTriple, ptr %179, i64 0, i32 5
  store i8 2, ptr %226, align 1, !tbaa !102
  %227 = extractelement <2 x i64> %218, i64 0
  %228 = extractelement <2 x i64> %218, i64 1
  br label %229

229:                                              ; preds = %202, %215, %192
  %230 = phi i1 [ false, %202 ], [ true, %215 ], [ false, %192 ]
  %231 = phi i64 [ %214, %202 ], [ %228, %215 ], [ %201, %192 ]
  %232 = phi i64 [ %213, %202 ], [ %227, %215 ], [ %199, %192 ]
  %233 = sitofp i64 %232 to float
  %234 = fmul float %5, %233
  %235 = getelementptr inbounds [3 x [3 x float]], ptr %179, i64 0, i64 1
  store float %234, ptr %235, align 4, !tbaa !99
  %236 = sitofp i64 %231 to float
  %237 = fmul float %5, %236
  %238 = getelementptr inbounds [3 x [3 x float]], ptr %179, i64 0, i64 1, i64 1
  store float %237, ptr %238, align 4, !tbaa !99
  %239 = sext i32 %143 to i64
  %240 = getelementptr inbounds i8, ptr %19, i64 %239
  %241 = load i8, ptr %240, align 1, !tbaa !88
  %242 = getelementptr inbounds %struct.FT_Vector_, ptr %17, i64 %239
  %243 = load i64, ptr %242, align 8, !tbaa !104
  switch i8 %241, label %271 [
    i8 2, label %244
    i8 0, label %252
  ]

244:                                              ; preds = %229
  %245 = sitofp i64 %243 to float
  %246 = fmul float %5, %245
  %247 = getelementptr inbounds [3 x [3 x float]], ptr %179, i64 0, i64 2
  store float %246, ptr %247, align 4, !tbaa !99
  %248 = getelementptr inbounds %struct.FT_Vector_, ptr %17, i64 %239, i32 1
  %249 = load i64, ptr %248, align 8, !tbaa !105
  %250 = sitofp i64 %249 to float
  %251 = fmul float %5, %250
  br label %266

252:                                              ; preds = %229
  %253 = shl nsw i64 %243, 1
  %254 = add nsw i64 %253, %232
  %255 = sitofp i64 %254 to float
  %256 = fmul float %5, %255
  %257 = fdiv float %256, 3.000000e+00
  %258 = getelementptr inbounds [3 x [3 x float]], ptr %179, i64 0, i64 2
  store float %257, ptr %258, align 4, !tbaa !99
  %259 = getelementptr inbounds %struct.FT_Vector_, ptr %17, i64 %239, i32 1
  %260 = load i64, ptr %259, align 8, !tbaa !105
  %261 = shl nsw i64 %260, 1
  %262 = add nsw i64 %261, %231
  %263 = sitofp i64 %262 to float
  %264 = fmul float %5, %263
  %265 = fdiv float %264, 3.000000e+00
  br label %266

266:                                              ; preds = %252, %244
  %267 = phi float [ %265, %252 ], [ %251, %244 ]
  %268 = getelementptr inbounds [3 x [3 x float]], ptr %179, i64 0, i64 2, i64 1
  store float %267, ptr %268, align 4, !tbaa !99
  %269 = getelementptr inbounds %struct.BezTriple, ptr %179, i64 0, i32 6
  store i8 0, ptr %269, align 2, !tbaa !100
  %270 = getelementptr inbounds %struct.BezTriple, ptr %179, i64 0, i32 5
  br i1 %230, label %308, label %287

271:                                              ; preds = %229
  %272 = sub nsw i64 %232, %243
  %273 = sitofp i64 %272 to float
  %274 = fmul float %5, %273
  %275 = fdiv float %274, -3.000000e+00
  %276 = tail call float @llvm.fmuladd.f32(float %233, float %5, float %275)
  %277 = getelementptr inbounds [3 x [3 x float]], ptr %179, i64 0, i64 2
  store float %276, ptr %277, align 4, !tbaa !99
  %278 = getelementptr inbounds %struct.FT_Vector_, ptr %17, i64 %239, i32 1
  %279 = load i64, ptr %278, align 8, !tbaa !105
  %280 = sub nsw i64 %231, %279
  %281 = sitofp i64 %280 to float
  %282 = fmul float %5, %281
  %283 = fdiv float %282, -3.000000e+00
  %284 = tail call float @llvm.fmuladd.f32(float %236, float %5, float %283)
  %285 = getelementptr inbounds [3 x [3 x float]], ptr %179, i64 0, i64 2, i64 1
  store float %284, ptr %285, align 4, !tbaa !99
  %286 = getelementptr inbounds %struct.BezTriple, ptr %179, i64 0, i32 6
  store i8 2, ptr %286, align 2, !tbaa !100
  br label %308

287:                                              ; preds = %266
  %288 = getelementptr inbounds %struct.BezTriple, ptr %179, i64 0, i32 6
  %289 = getelementptr inbounds [3 x [3 x float]], ptr %179, i64 0, i64 2
  %290 = tail call float @dist_squared_to_line_v2(ptr noundef nonnull %179, ptr noundef nonnull %235, ptr noundef nonnull %289) #8
  %291 = fcmp olt float %290, 0x3EB0C6F7C0000000
  br i1 %291, label %292, label %308

292:                                              ; preds = %287
  %293 = tail call fastcc float @len_squared_v2v2(ptr noundef nonnull %179, ptr noundef nonnull %235) #9
  %294 = fcmp ogt float %293, 0x3E45798EC0000000
  br i1 %294, label %295, label %308

295:                                              ; preds = %292
  %296 = tail call fastcc float @len_squared_v2v2(ptr noundef nonnull %235, ptr noundef nonnull %289) #9
  %297 = fcmp ogt float %296, 0x3E45798EC0000000
  br i1 %297, label %298, label %308

298:                                              ; preds = %295
  %299 = tail call fastcc float @len_squared_v2v2(ptr noundef nonnull %179, ptr noundef nonnull %289) #9
  %300 = fcmp ogt float %299, 0x3E45798EC0000000
  br i1 %300, label %301, label %308

301:                                              ; preds = %298
  %302 = tail call fastcc float @len_squared_v2v2(ptr noundef nonnull %179, ptr noundef nonnull %289) #9
  %303 = tail call fastcc float @len_squared_v2v2(ptr noundef nonnull %179, ptr noundef nonnull %235) #9
  %304 = tail call fastcc float @len_squared_v2v2(ptr noundef nonnull %235, ptr noundef nonnull %289) #9
  %305 = tail call fastcc float @max_ff(float noundef %303, float noundef %304) #9
  %306 = fcmp ogt float %302, %305
  br i1 %306, label %307, label %308

307:                                              ; preds = %301
  store i8 3, ptr %288, align 2, !tbaa !100
  store i8 3, ptr %270, align 1, !tbaa !102
  br label %308

308:                                              ; preds = %271, %307, %301, %298, %295, %292, %287, %266
  %309 = getelementptr inbounds %struct.BezTriple, ptr %179, i64 0, i32 3
  store float 1.000000e+00, ptr %309, align 4, !tbaa !103
  %310 = getelementptr inbounds %struct.BezTriple, ptr %179, i64 1
  br label %311

311:                                              ; preds = %148, %177, %308
  %312 = phi ptr [ %310, %308 ], [ %179, %177 ], [ %129, %148 ]
  %313 = add nuw nsw i32 %130, 1
  %314 = icmp eq i32 %313, %107
  br i1 %314, label %315, label %128, !llvm.loop !106

315:                                              ; preds = %311, %100
  %316 = phi i32 [ %102, %100 ], [ %140, %311 ]
  %317 = add nuw nsw i64 %101, 1
  %318 = icmp eq i64 %317, %42
  br i1 %318, label %319, label %100, !llvm.loop !107

319:                                              ; preds = %315, %9, %40
  %320 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  tail call void %320(ptr noundef %35) #8
  br label %321

321:                                              ; preds = %3, %319
  %322 = phi ptr [ %11, %319 ], [ null, %3 ]
  ret ptr %322
}

; Function Attrs: optsize
declare i64 @FT_Get_Next_Char(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: optsize
declare float @dist_squared_to_line_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_squared_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !108 {
  %3 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #9
  %4 = call fastcc float @dot_v2v2(ptr noundef nonnull %3, ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #5 !PGOFuncName !109 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 !PGOFuncName !110 {
  %4 = load float, ptr %1, align 4, !tbaa !99
  %5 = load float, ptr %2, align 4, !tbaa !99
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !99
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !99
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !99
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !99
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !111 {
  %3 = load float, ptr %0, align 4, !tbaa !99
  %4 = load float, ptr %1, align 4, !tbaa !99
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !99
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !99
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  ret float %10
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #7

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }
attributes #10 = { nounwind }

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
!34 = !{i32 0, i32 2}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"freetypefont.c:check_freetypefont"}
!40 = !{!41, !36, i64 8}
!41 = !{!"PackedFile", !42, i64 0, !42, i64 4, !36, i64 8}
!42 = !{!"int", !37, i64 0}
!43 = !{!41, !42, i64 0}
!44 = !{!45, !36, i64 152}
!45 = !{!"FT_FaceRec_", !46, i64 0, !46, i64 8, !46, i64 16, !46, i64 24, !46, i64 32, !36, i64 40, !36, i64 48, !42, i64 56, !36, i64 64, !42, i64 72, !36, i64 80, !47, i64 88, !48, i64 104, !49, i64 136, !49, i64 138, !49, i64 140, !49, i64 142, !49, i64 144, !49, i64 146, !49, i64 148, !49, i64 150, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !50, i64 200, !47, i64 216, !36, i64 232, !36, i64 240}
!46 = !{!"long", !37, i64 0}
!47 = !{!"FT_Generic_", !36, i64 0, !36, i64 8}
!48 = !{!"FT_BBox_", !46, i64 0, !46, i64 8, !46, i64 16, !46, i64 24}
!49 = !{!"short", !37, i64 0}
!50 = !{!"FT_ListRec_", !36, i64 0, !36, i64 8}
!51 = !{!52, !42, i64 144}
!52 = !{!"FT_GlyphSlotRec_", !36, i64 0, !36, i64 8, !36, i64 16, !42, i64 24, !47, i64 32, !53, i64 48, !46, i64 112, !46, i64 120, !54, i64 128, !42, i64 144, !55, i64 152, !42, i64 192, !42, i64 196, !56, i64 200, !42, i64 240, !36, i64 248, !36, i64 256, !46, i64 264, !46, i64 272, !46, i64 280, !36, i64 288, !36, i64 296}
!53 = !{!"FT_Glyph_Metrics_", !46, i64 0, !46, i64 8, !46, i64 16, !46, i64 24, !46, i64 32, !46, i64 40, !46, i64 48, !46, i64 56}
!54 = !{!"FT_Vector_", !46, i64 0, !46, i64 8}
!55 = !{!"FT_Bitmap_", !42, i64 0, !42, i64 4, !42, i64 8, !36, i64 16, !49, i64 24, !37, i64 26, !37, i64 27, !36, i64 32}
!56 = !{!"FT_Outline_", !49, i64 0, !49, i64 2, !36, i64 8, !36, i64 16, !36, i64 24, !42, i64 32}
!57 = !{!"freetypefont.c:objfnt_to_ftvfontdata"}
!58 = !{!42, !42, i64 0}
!59 = !{!45, !42, i64 72}
!60 = !{!45, !36, i64 80}
!61 = distinct !{!61, !62}
!62 = !{!"llvm.loop.mustprogress"}
!63 = !{!64, !42, i64 8}
!64 = !{!"FT_CharMapRec_", !36, i64 0, !42, i64 8, !49, i64 12, !49, i64 14}
!65 = !{!45, !46, i64 128}
!66 = !{!45, !46, i64 112}
!67 = !{!68, !36, i64 0}
!68 = !{!"VFontData", !36, i64 0, !37, i64 8, !69, i64 136}
!69 = !{!"float", !37, i64 0}
!70 = distinct !{!70, !62}
!71 = !{!"freetypefont.c:objchr_to_ftvfontdata"}
!72 = !{!73, !36, i64 1160}
!73 = !{!"VFont", !74, i64 0, !37, i64 120, !36, i64 1144, !36, i64 1152, !36, i64 1160}
!74 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !49, i64 98, !42, i64 100, !42, i64 104, !42, i64 108, !36, i64 112}
!75 = !{!73, !36, i64 1144}
!76 = !{!"freetypefont.c:freetypechar_to_vchar"}
!77 = !{!68, !69, i64 136}
!78 = !{i64 0, i64 2, !79, i64 2, i64 2, !79, i64 8, i64 8, !35, i64 16, i64 8, !35, i64 24, i64 8, !35, i64 32, i64 4, !58}
!79 = !{!49, !49, i64 0}
!80 = !{i64 0, i64 8, !35, i64 8, i64 8, !35, i64 16, i64 8, !35, i64 24, i64 4, !58}
!81 = !{i64 0, i64 8, !35, i64 8, i64 8, !35, i64 16, i64 4, !58}
!82 = !{i64 0, i64 8, !35, i64 8, i64 4, !58}
!83 = !{!84, !42, i64 16}
!84 = !{!"VChar", !85, i64 0, !42, i64 16, !69, i64 20}
!85 = !{!"ListBase", !36, i64 0, !36, i64 8}
!86 = !{!52, !46, i64 128}
!87 = !{!84, !69, i64 20}
!88 = !{!37, !37, i64 0}
!89 = distinct !{!89, !62}
!90 = distinct !{!90, !62}
!91 = !{!92, !49, i64 16}
!92 = !{!"Nurb", !36, i64 0, !36, i64 8, !49, i64 16, !49, i64 18, !49, i64 20, !49, i64 22, !42, i64 24, !42, i64 28, !37, i64 32, !49, i64 36, !49, i64 38, !49, i64 40, !49, i64 42, !49, i64 44, !49, i64 46, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !49, i64 80, !49, i64 82, !42, i64 84}
!93 = !{!92, !42, i64 24}
!94 = !{!92, !49, i64 36}
!95 = !{!92, !49, i64 22}
!96 = !{!92, !49, i64 44}
!97 = !{!92, !36, i64 72}
!98 = !{!46, !46, i64 0}
!99 = !{!69, !69, i64 0}
!100 = !{!101, !37, i64 50}
!101 = !{!"BezTriple", !37, i64 0, !69, i64 36, !69, i64 40, !69, i64 44, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !37, i64 52, !37, i64 53, !37, i64 54, !37, i64 55, !69, i64 56, !69, i64 60, !69, i64 64, !37, i64 68}
!102 = !{!101, !37, i64 49}
!103 = !{!101, !69, i64 44}
!104 = !{!54, !46, i64 0}
!105 = !{!54, !46, i64 8}
!106 = distinct !{!106, !62}
!107 = distinct !{!107, !62}
!108 = !{!"freetypefont.c:len_squared_v2v2"}
!109 = !{!"freetypefont.c:max_ff"}
!110 = !{!"freetypefont.c:sub_v2_v2v2"}
!111 = !{!"freetypefont.c:dot_v2v2"}
