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

; Function Attrs: nounwind uwtable
define dso_local ptr @BLI_vfontdata_from_freetypefont(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = tail call i32 @FT_Init_FreeType(ptr noundef nonnull @library) #4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %107

7:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #4
  %8 = load ptr, ptr @library, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.PackedFile, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !38
  %11 = load i32, ptr %0, align 8, !tbaa !41
  %12 = sext i32 %11 to i64
  %13 = call i32 @FT_New_Memory_Face(ptr noundef %8, ptr noundef %10, i64 noundef %12, i64 noundef 0, ptr noundef nonnull %4) #4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %102

15:                                               ; preds = %7
  %16 = load ptr, ptr %4, align 8, !tbaa !34
  %17 = call i32 @FT_Get_Char_Index(ptr noundef %16, i64 noundef 65) #4
  %18 = load ptr, ptr %4, align 8, !tbaa !34
  %19 = call i32 @FT_Load_Glyph(ptr noundef %18, i32 noundef %17, i32 noundef 9) #4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %102

21:                                               ; preds = %15
  %22 = load ptr, ptr %4, align 8, !tbaa !34
  %23 = getelementptr inbounds %struct.FT_FaceRec_, ptr %22, i64 0, i32 21
  %24 = load ptr, ptr %23, align 8, !tbaa !42
  %25 = getelementptr inbounds %struct.FT_GlyphSlotRec_, ptr %24, i64 0, i32 9
  %26 = load i32, ptr %25, align 8, !tbaa !49
  %27 = icmp eq i32 %26, 1869968492
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #4
  br i1 %27, label %28, label %103

28:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #4
  %29 = load ptr, ptr @library, align 8, !tbaa !34
  %30 = load ptr, ptr %9, align 8, !tbaa !38
  %31 = load i32, ptr %0, align 8, !tbaa !41
  %32 = sext i32 %31 to i64
  %33 = call i32 @FT_New_Memory_Face(ptr noundef %29, ptr noundef %30, i64 noundef %32, i64 noundef 0, ptr noundef nonnull %2) #4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %100

35:                                               ; preds = %28
  %36 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %37 = call ptr %36(i64 noundef 144, ptr noundef nonnull @.str) #4
  %38 = load ptr, ptr %2, align 8, !tbaa !34
  %39 = call ptr @FT_Get_Postscript_Name(ptr noundef %38) #4
  %40 = getelementptr inbounds %struct.VFontData, ptr %37, i64 0, i32 1
  %41 = icmp eq ptr %39, null
  %42 = select i1 %41, ptr @.str.1, ptr %39
  %43 = call ptr @BLI_strncpy(ptr noundef nonnull %40, ptr noundef nonnull %42, i64 noundef 128) #4
  %44 = load ptr, ptr %2, align 8, !tbaa !34
  %45 = call i64 @FT_Get_First_Char(ptr noundef %44, ptr noundef nonnull %3) #4
  %46 = load i32, ptr %3, align 4, !tbaa !55
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %76

48:                                               ; preds = %35
  %49 = load ptr, ptr %2, align 8, !tbaa !34
  %50 = getelementptr inbounds %struct.FT_FaceRec_, ptr %49, i64 0, i32 9
  %51 = load i32, ptr %50, align 8, !tbaa !56
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.FT_FaceRec_, ptr %49, i64 0, i32 10
  %55 = load ptr, ptr %54, align 8, !tbaa !57
  %56 = zext nneg i32 %51 to i64
  br label %60

57:                                               ; preds = %60
  %58 = add nuw nsw i64 %61, 1
  %59 = icmp eq i64 %58, %56
  br i1 %59, label %67, label %60, !llvm.loop !58

60:                                               ; preds = %53, %57
  %61 = phi i64 [ 0, %53 ], [ %58, %57 ]
  %62 = getelementptr inbounds ptr, ptr %55, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !34
  %64 = getelementptr inbounds %struct.FT_CharMapRec_, ptr %63, i64 0, i32 1
  %65 = load i32, ptr %64, align 8, !tbaa !61
  %66 = icmp eq i32 %65, 1634889070
  br i1 %66, label %67, label %57

67:                                               ; preds = %57, %60, %48
  %68 = phi ptr [ null, %48 ], [ null, %57 ], [ %63, %60 ]
  %69 = call i32 @FT_Set_Charmap(ptr noundef %49, ptr noundef %68) #4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load ptr, ptr %2, align 8, !tbaa !34
  %73 = call i64 @FT_Get_First_Char(ptr noundef %72, ptr noundef nonnull %3) #4
  br label %74

74:                                               ; preds = %71, %67
  %75 = phi i64 [ %73, %71 ], [ %45, %67 ]
  br i1 %70, label %76, label %100

76:                                               ; preds = %74, %35
  %77 = phi i64 [ %75, %74 ], [ %45, %35 ]
  %78 = load ptr, ptr %2, align 8, !tbaa !34
  %79 = getelementptr inbounds %struct.FT_FaceRec_, ptr %78, i64 0, i32 12, i32 3
  %80 = load i64, ptr %79, align 8, !tbaa !63
  %81 = getelementptr inbounds %struct.FT_FaceRec_, ptr %78, i64 0, i32 12, i32 1
  %82 = load i64, ptr %81, align 8, !tbaa !64
  %83 = icmp eq i64 %80, %82
  %84 = sub nsw i64 %80, %82
  %85 = sitofp i64 %84 to double
  %86 = fdiv double 1.000000e+00, %85
  %87 = fptrunc double %86 to float
  %88 = select i1 %83, float 0x3F50624DE0000000, float %87
  %89 = getelementptr inbounds %struct.VFontData, ptr %37, i64 0, i32 2
  store float %88, ptr %89, align 8, !tbaa !65
  %90 = call ptr @BLI_ghash_int_new_ex(ptr noundef nonnull @__func__.objfnt_to_ftvfontdata, i32 noundef 256) #4
  store ptr %90, ptr %37, align 8, !tbaa !68
  br label %91

91:                                               ; preds = %94, %76
  %92 = phi i64 [ %77, %76 ], [ %98, %94 ]
  %93 = icmp ult i64 %92, 256
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = load ptr, ptr %2, align 8, !tbaa !34
  %96 = call fastcc ptr @freetypechar_to_vchar(ptr noundef %95, i64 noundef %92, ptr noundef nonnull %37)
  %97 = load ptr, ptr %2, align 8, !tbaa !34
  %98 = call i64 @FT_Get_Next_Char(ptr noundef %97, i64 noundef %92, ptr noundef nonnull %3) #4
  %99 = icmp ugt i64 %98, %92
  br i1 %99, label %91, label %100, !llvm.loop !69

100:                                              ; preds = %91, %94, %28, %74
  %101 = phi ptr [ null, %74 ], [ null, %28 ], [ %37, %94 ], [ %37, %91 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #4
  br label %103

102:                                              ; preds = %15, %7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #4
  br label %103

103:                                              ; preds = %102, %100, %21
  %104 = phi ptr [ %101, %100 ], [ null, %21 ], [ null, %102 ]
  %105 = load ptr, ptr @library, align 8, !tbaa !34
  %106 = call i32 @FT_Done_FreeType(ptr noundef %105) #4
  br label %107

107:                                              ; preds = %1, %103
  %108 = phi ptr [ %104, %103 ], [ null, %1 ]
  ret ptr %108
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @FT_Init_FreeType(ptr noundef) local_unnamed_addr #2

declare i32 @FT_Done_FreeType(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BLI_vfontchar_from_freetypefont(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = icmp eq ptr %0, null
  br i1 %4, label %29, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @FT_Init_FreeType(ptr noundef nonnull @library) #4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %29

8:                                                ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #4
  %9 = getelementptr inbounds %struct.VFont, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !70
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr @library, align 8, !tbaa !34
  %14 = getelementptr inbounds %struct.PackedFile, ptr %10, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !38
  %16 = load i32, ptr %10, align 8, !tbaa !41
  %17 = sext i32 %16 to i64
  %18 = call i32 @FT_New_Memory_Face(ptr noundef %13, ptr noundef %15, i64 noundef %17, i64 noundef 0, ptr noundef nonnull %3) #4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %12
  %21 = load ptr, ptr %3, align 8, !tbaa !34
  %22 = getelementptr inbounds %struct.VFont, ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !73
  %24 = call fastcc ptr @freetypechar_to_vchar(ptr noundef %21, i64 noundef %1, ptr noundef %23)
  br label %25

25:                                               ; preds = %8, %12, %20
  %26 = phi ptr [ %24, %20 ], [ null, %12 ], [ null, %8 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #4
  %27 = load ptr, ptr @library, align 8, !tbaa !34
  %28 = call i32 @FT_Done_FreeType(ptr noundef %27) #4
  br label %29

29:                                               ; preds = %5, %2, %25
  %30 = phi ptr [ %26, %25 ], [ null, %2 ], [ null, %5 ]
  ret ptr %30
}

declare i32 @FT_New_Memory_Face(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @FT_Get_Char_Index(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @FT_Load_Glyph(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @FT_Get_Postscript_Name(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @FT_Get_First_Char(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @FT_Set_Charmap(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_ghash_int_new_ex(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @freetypechar_to_vchar(ptr noundef %0, i64 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.VFontData, ptr %2, i64 0, i32 2
  %5 = load float, ptr %4, align 8, !tbaa !65
  %6 = tail call i32 @FT_Get_Char_Index(ptr noundef %0, i64 noundef %1) #4
  %7 = tail call i32 @FT_Load_Glyph(ptr noundef %0, i32 noundef %6, i32 noundef 9) #4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %375

9:                                                ; preds = %3
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %11 = tail call ptr %10(i64 noundef 24, ptr noundef nonnull @.str.2) #4
  %12 = getelementptr inbounds %struct.FT_FaceRec_, ptr %0, i64 0, i32 21
  %13 = load ptr, ptr %12, align 8, !tbaa !42
  %14 = getelementptr inbounds %struct.FT_GlyphSlotRec_, ptr %13, i64 0, i32 13
  %15 = load i16, ptr %14, align 8, !tbaa.struct !74
  %16 = getelementptr inbounds %struct.FT_GlyphSlotRec_, ptr %13, i64 0, i32 13, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa.struct !76
  %18 = getelementptr inbounds %struct.FT_GlyphSlotRec_, ptr %13, i64 0, i32 13, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa.struct !77
  %20 = getelementptr inbounds %struct.FT_GlyphSlotRec_, ptr %13, i64 0, i32 13, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa.struct !78
  %22 = trunc i64 %1 to i32
  %23 = getelementptr inbounds %struct.VChar, ptr %11, i64 0, i32 1
  store i32 %22, ptr %23, align 8, !tbaa !79
  %24 = getelementptr inbounds %struct.FT_GlyphSlotRec_, ptr %13, i64 0, i32 8
  %25 = load i64, ptr %24, align 8, !tbaa !82
  %26 = sitofp i64 %25 to float
  %27 = fmul float %5, %26
  %28 = getelementptr inbounds %struct.VChar, ptr %11, i64 0, i32 2
  store float %27, ptr %28, align 4, !tbaa !83
  %29 = load ptr, ptr %2, align 8, !tbaa !68
  %30 = and i64 %1, 4294967295
  %31 = inttoptr i64 %30 to ptr
  tail call void @BLI_ghash_insert(ptr noundef %29, ptr noundef %31, ptr noundef %11) #4
  %32 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %33 = sext i16 %15 to i64
  %34 = shl nsw i64 %33, 2
  %35 = tail call ptr %32(i64 noundef %34, ptr noundef nonnull @.str.3) #4
  %36 = sext i16 %15 to i32
  %37 = icmp sgt i16 %15, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %9
  %39 = zext nneg i32 %36 to i64
  br label %45

40:                                               ; preds = %96, %9
  %41 = phi i32 [ 0, %9 ], [ %97, %96 ]
  %42 = icmp sgt i16 %15, 0
  br i1 %42, label %43, label %373

43:                                               ; preds = %40
  %44 = zext nneg i32 %36 to i64
  br label %100

45:                                               ; preds = %38, %96
  %46 = phi i64 [ 0, %38 ], [ %98, %96 ]
  %47 = phi i32 [ 0, %38 ], [ %97, %96 ]
  %48 = phi i32 [ -1, %38 ], [ %51, %96 ]
  %49 = getelementptr inbounds i16, ptr %21, i64 %46
  %50 = load i16, ptr %49, align 2, !tbaa !75
  %51 = sext i16 %50 to i32
  %52 = sub nsw i32 %51, %48
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %96

54:                                               ; preds = %45
  %55 = icmp eq i64 %46, 0
  %56 = getelementptr i16, ptr %49, i64 -1
  %57 = getelementptr inbounds i32, ptr %35, i64 %46
  %58 = add nsw i32 %52, -1
  %59 = getelementptr inbounds i32, ptr %35, i64 %46
  br label %60

60:                                               ; preds = %54, %93
  %61 = phi i32 [ 0, %54 ], [ %94, %93 ]
  %62 = phi i32 [ %47, %54 ], [ %71, %93 ]
  br i1 %55, label %68, label %63

63:                                               ; preds = %60
  %64 = load i16, ptr %56, align 2, !tbaa !75
  %65 = sext i16 %64 to i32
  %66 = add nuw nsw i32 %61, 1
  %67 = add i32 %66, %65
  br label %68

68:                                               ; preds = %60, %63
  %69 = phi i32 [ %67, %63 ], [ %61, %60 ]
  %70 = icmp eq i32 %61, 0
  %71 = select i1 %70, i32 %69, i32 %62
  %72 = sext i32 %69 to i64
  %73 = getelementptr inbounds i8, ptr %19, i64 %72
  %74 = load i8, ptr %73, align 1, !tbaa !84
  %75 = icmp eq i8 %74, 1
  br i1 %75, label %76, label %79

76:                                               ; preds = %68
  %77 = load i32, ptr %57, align 4, !tbaa !55
  %78 = add nsw i32 %77, 1
  store i32 %78, ptr %57, align 4, !tbaa !55
  br label %79

79:                                               ; preds = %76, %68
  %80 = load i8, ptr %73, align 1, !tbaa !84
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %79
  %83 = icmp slt i32 %61, %58
  %84 = add nsw i32 %69, 1
  %85 = select i1 %83, i32 %84, i32 %71
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, ptr %19, i64 %86
  %88 = load i8, ptr %87, align 1, !tbaa !84
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %82
  %91 = load i32, ptr %59, align 4, !tbaa !55
  %92 = add nsw i32 %91, 1
  store i32 %92, ptr %59, align 4, !tbaa !55
  br label %93

93:                                               ; preds = %90, %82, %79
  %94 = add nuw nsw i32 %61, 1
  %95 = icmp eq i32 %94, %52
  br i1 %95, label %96, label %60, !llvm.loop !85

96:                                               ; preds = %93, %45
  %97 = phi i32 [ %47, %45 ], [ %71, %93 ]
  %98 = add nuw nsw i64 %46, 1
  %99 = icmp eq i64 %98, %39
  br i1 %99, label %40, label %45, !llvm.loop !86

100:                                              ; preds = %43, %369
  %101 = phi i64 [ 0, %43 ], [ %371, %369 ]
  %102 = phi i32 [ %41, %43 ], [ %370, %369 ]
  %103 = phi i32 [ -1, %43 ], [ %106, %369 ]
  %104 = getelementptr inbounds i16, ptr %21, i64 %101
  %105 = load i16, ptr %104, align 2, !tbaa !75
  %106 = sext i16 %105 to i32
  %107 = sub nsw i32 %106, %103
  %108 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %109 = tail call ptr %108(i64 noundef 88, ptr noundef nonnull @.str.4) #4
  %110 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %111 = getelementptr inbounds i32, ptr %35, i64 %101
  %112 = load i32, ptr %111, align 4, !tbaa !55
  %113 = sext i32 %112 to i64
  %114 = mul nsw i64 %113, 72
  %115 = tail call ptr %110(i64 noundef %114, ptr noundef nonnull @.str.5) #4
  tail call void @BLI_addtail(ptr noundef %11, ptr noundef %109) #4
  %116 = getelementptr inbounds %struct.Nurb, ptr %109, i64 0, i32 2
  store i16 1, ptr %116, align 8, !tbaa !87
  %117 = load i32, ptr %111, align 4, !tbaa !55
  %118 = getelementptr inbounds %struct.Nurb, ptr %109, i64 0, i32 6
  store i32 %117, ptr %118, align 8, !tbaa !89
  %119 = getelementptr inbounds %struct.Nurb, ptr %109, i64 0, i32 9
  store i16 8, ptr %119, align 4, !tbaa !90
  %120 = getelementptr inbounds %struct.Nurb, ptr %109, i64 0, i32 5
  store i16 8, ptr %120, align 2, !tbaa !91
  %121 = getelementptr inbounds %struct.Nurb, ptr %109, i64 0, i32 13
  store i16 1, ptr %121, align 4, !tbaa !92
  %122 = getelementptr inbounds %struct.Nurb, ptr %109, i64 0, i32 18
  store ptr %115, ptr %122, align 8, !tbaa !93
  %123 = icmp sgt i32 %107, 0
  br i1 %123, label %124, label %369

124:                                              ; preds = %100
  %125 = icmp eq i64 %101, 0
  %126 = getelementptr i16, ptr %104, i64 -1
  %127 = add nsw i32 %107, -1
  br label %128

128:                                              ; preds = %124, %365
  %129 = phi ptr [ %115, %124 ], [ %366, %365 ]
  %130 = phi i32 [ 0, %124 ], [ %367, %365 ]
  %131 = phi i32 [ %102, %124 ], [ %140, %365 ]
  br i1 %125, label %137, label %132

132:                                              ; preds = %128
  %133 = load i16, ptr %126, align 2, !tbaa !75
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
  %146 = load i8, ptr %145, align 1, !tbaa !84
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %148, label %195

148:                                              ; preds = %137
  %149 = sext i32 %143 to i64
  %150 = getelementptr inbounds i8, ptr %19, i64 %149
  %151 = load i8, ptr %150, align 1, !tbaa !84
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %153, label %195

153:                                              ; preds = %148
  %154 = getelementptr inbounds %struct.FT_Vector_, ptr %17, i64 %144
  %155 = load i64, ptr %154, align 8, !tbaa !94
  %156 = getelementptr inbounds %struct.FT_Vector_, ptr %17, i64 %149
  %157 = load i64, ptr %156, align 8, !tbaa !94
  %158 = add nsw i64 %157, %155
  %159 = sitofp i64 %158 to float
  %160 = fmul float %5, %159
  %161 = fmul float %160, 5.000000e-01
  %162 = getelementptr inbounds %struct.FT_Vector_, ptr %17, i64 %144, i32 1
  %163 = load i64, ptr %162, align 8, !tbaa !95
  %164 = getelementptr inbounds %struct.FT_Vector_, ptr %17, i64 %149, i32 1
  %165 = load i64, ptr %164, align 8, !tbaa !95
  %166 = add nsw i64 %165, %163
  %167 = sitofp i64 %166 to float
  %168 = fmul float %5, %167
  %169 = fmul float %168, 5.000000e-01
  %170 = shl nsw i64 %155, 1
  %171 = sitofp i64 %170 to float
  %172 = tail call float @llvm.fmuladd.f32(float %171, float %5, float %161)
  %173 = fdiv float %172, 3.000000e+00
  store float %173, ptr %129, align 4, !tbaa !96
  %174 = shl nsw i64 %163, 1
  %175 = sitofp i64 %174 to float
  %176 = tail call float @llvm.fmuladd.f32(float %175, float %5, float %169)
  %177 = fdiv float %176, 3.000000e+00
  %178 = getelementptr inbounds [3 x float], ptr %129, i64 0, i64 1
  store float %177, ptr %178, align 4, !tbaa !96
  %179 = getelementptr inbounds [3 x [3 x float]], ptr %129, i64 0, i64 1
  store float %161, ptr %179, align 4, !tbaa !96
  %180 = getelementptr inbounds [3 x [3 x float]], ptr %129, i64 0, i64 1, i64 1
  store float %169, ptr %180, align 4, !tbaa !96
  %181 = shl nsw i64 %157, 1
  %182 = sitofp i64 %181 to float
  %183 = tail call float @llvm.fmuladd.f32(float %182, float %5, float %161)
  %184 = fdiv float %183, 3.000000e+00
  %185 = getelementptr inbounds [3 x [3 x float]], ptr %129, i64 0, i64 2
  store float %184, ptr %185, align 4, !tbaa !96
  %186 = shl nsw i64 %165, 1
  %187 = sitofp i64 %186 to float
  %188 = tail call float @llvm.fmuladd.f32(float %187, float %5, float %169)
  %189 = fdiv float %188, 3.000000e+00
  %190 = getelementptr inbounds [3 x [3 x float]], ptr %129, i64 0, i64 2, i64 1
  store float %189, ptr %190, align 4, !tbaa !96
  %191 = getelementptr inbounds %struct.BezTriple, ptr %129, i64 0, i32 6
  store i8 3, ptr %191, align 2, !tbaa !97
  %192 = getelementptr inbounds %struct.BezTriple, ptr %129, i64 0, i32 5
  store i8 3, ptr %192, align 1, !tbaa !99
  %193 = getelementptr inbounds %struct.BezTriple, ptr %129, i64 0, i32 3
  store float 1.000000e+00, ptr %193, align 4, !tbaa !100
  %194 = getelementptr inbounds %struct.BezTriple, ptr %129, i64 1
  br label %195

195:                                              ; preds = %153, %148, %137
  %196 = phi ptr [ %194, %153 ], [ %129, %148 ], [ %129, %137 ]
  %197 = load i8, ptr %145, align 1, !tbaa !84
  %198 = icmp eq i8 %197, 1
  br i1 %198, label %199, label %365

199:                                              ; preds = %195
  br i1 %139, label %202, label %200

200:                                              ; preds = %199
  %201 = add nsw i32 %138, -1
  br label %205

202:                                              ; preds = %199
  %203 = load i16, ptr %104, align 2, !tbaa !75
  %204 = sext i16 %203 to i32
  br label %205

205:                                              ; preds = %202, %200
  %206 = phi i32 [ %201, %200 ], [ %204, %202 ]
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8, ptr %19, i64 %207
  %209 = load i8, ptr %208, align 1, !tbaa !84
  switch i8 %209, label %238 [
    i8 2, label %210
    i8 0, label %219
  ]

210:                                              ; preds = %205
  %211 = getelementptr inbounds %struct.FT_Vector_, ptr %17, i64 %207
  %212 = load i64, ptr %211, align 8, !tbaa !94
  %213 = sitofp i64 %212 to float
  %214 = fmul float %5, %213
  store float %214, ptr %196, align 4, !tbaa !96
  %215 = getelementptr inbounds %struct.FT_Vector_, ptr %17, i64 %207, i32 1
  %216 = load i64, ptr %215, align 8, !tbaa !95
  %217 = sitofp i64 %216 to float
  %218 = fmul float %5, %217
  br label %259

219:                                              ; preds = %205
  %220 = getelementptr inbounds %struct.FT_Vector_, ptr %17, i64 %144
  %221 = load i64, ptr %220, align 8, !tbaa !94
  %222 = getelementptr inbounds %struct.FT_Vector_, ptr %17, i64 %207
  %223 = load i64, ptr %222, align 8, !tbaa !94
  %224 = shl nsw i64 %223, 1
  %225 = add nsw i64 %224, %221
  %226 = sitofp i64 %225 to float
  %227 = fmul float %5, %226
  %228 = fdiv float %227, 3.000000e+00
  store float %228, ptr %196, align 4, !tbaa !96
  %229 = getelementptr inbounds %struct.FT_Vector_, ptr %17, i64 %144, i32 1
  %230 = load i64, ptr %229, align 8, !tbaa !95
  %231 = getelementptr inbounds %struct.FT_Vector_, ptr %17, i64 %207, i32 1
  %232 = load i64, ptr %231, align 8, !tbaa !95
  %233 = shl nsw i64 %232, 1
  %234 = add nsw i64 %233, %230
  %235 = sitofp i64 %234 to float
  %236 = fmul float %5, %235
  %237 = fdiv float %236, 3.000000e+00
  br label %259

238:                                              ; preds = %205
  %239 = getelementptr inbounds %struct.FT_Vector_, ptr %17, i64 %144
  %240 = load i64, ptr %239, align 8, !tbaa !94
  %241 = sitofp i64 %240 to float
  %242 = getelementptr inbounds %struct.FT_Vector_, ptr %17, i64 %207
  %243 = load i64, ptr %242, align 8, !tbaa !94
  %244 = sub nsw i64 %240, %243
  %245 = sitofp i64 %244 to float
  %246 = fmul float %5, %245
  %247 = fdiv float %246, -3.000000e+00
  %248 = tail call float @llvm.fmuladd.f32(float %241, float %5, float %247)
  store float %248, ptr %196, align 4, !tbaa !96
  %249 = getelementptr inbounds %struct.FT_Vector_, ptr %17, i64 %144, i32 1
  %250 = load i64, ptr %249, align 8, !tbaa !95
  %251 = sitofp i64 %250 to float
  %252 = getelementptr inbounds %struct.FT_Vector_, ptr %17, i64 %207, i32 1
  %253 = load i64, ptr %252, align 8, !tbaa !95
  %254 = sub nsw i64 %250, %253
  %255 = sitofp i64 %254 to float
  %256 = fmul float %5, %255
  %257 = fdiv float %256, -3.000000e+00
  %258 = tail call float @llvm.fmuladd.f32(float %251, float %5, float %257)
  br label %259

259:                                              ; preds = %219, %238, %210
  %260 = phi float [ %237, %219 ], [ %258, %238 ], [ %218, %210 ]
  %261 = phi i8 [ 0, %219 ], [ 2, %238 ], [ 0, %210 ]
  %262 = getelementptr inbounds [3 x float], ptr %196, i64 0, i64 1
  store float %260, ptr %262, align 4, !tbaa !96
  %263 = getelementptr inbounds %struct.BezTriple, ptr %196, i64 0, i32 5
  store i8 %261, ptr %263, align 1, !tbaa !99
  %264 = getelementptr inbounds %struct.FT_Vector_, ptr %17, i64 %144
  %265 = load i64, ptr %264, align 8, !tbaa !94
  %266 = sitofp i64 %265 to float
  %267 = fmul float %5, %266
  %268 = getelementptr inbounds [3 x [3 x float]], ptr %196, i64 0, i64 1
  store float %267, ptr %268, align 4, !tbaa !96
  %269 = getelementptr inbounds %struct.FT_Vector_, ptr %17, i64 %144, i32 1
  %270 = load i64, ptr %269, align 8, !tbaa !95
  %271 = sitofp i64 %270 to float
  %272 = fmul float %5, %271
  %273 = getelementptr inbounds [3 x [3 x float]], ptr %196, i64 0, i64 1, i64 1
  store float %272, ptr %273, align 4, !tbaa !96
  %274 = sext i32 %143 to i64
  %275 = getelementptr inbounds i8, ptr %19, i64 %274
  %276 = load i8, ptr %275, align 1, !tbaa !84
  %277 = getelementptr inbounds %struct.FT_Vector_, ptr %17, i64 %274
  %278 = load i64, ptr %277, align 8, !tbaa !94
  switch i8 %276, label %301 [
    i8 2, label %279
    i8 0, label %287
  ]

279:                                              ; preds = %259
  %280 = sitofp i64 %278 to float
  %281 = fmul float %5, %280
  %282 = getelementptr inbounds [3 x [3 x float]], ptr %196, i64 0, i64 2
  store float %281, ptr %282, align 4, !tbaa !96
  %283 = getelementptr inbounds %struct.FT_Vector_, ptr %17, i64 %274, i32 1
  %284 = load i64, ptr %283, align 8, !tbaa !95
  %285 = sitofp i64 %284 to float
  %286 = fmul float %5, %285
  br label %315

287:                                              ; preds = %259
  %288 = shl nsw i64 %278, 1
  %289 = add nsw i64 %288, %265
  %290 = sitofp i64 %289 to float
  %291 = fmul float %5, %290
  %292 = fdiv float %291, 3.000000e+00
  %293 = getelementptr inbounds [3 x [3 x float]], ptr %196, i64 0, i64 2
  store float %292, ptr %293, align 4, !tbaa !96
  %294 = getelementptr inbounds %struct.FT_Vector_, ptr %17, i64 %274, i32 1
  %295 = load i64, ptr %294, align 8, !tbaa !95
  %296 = shl nsw i64 %295, 1
  %297 = add nsw i64 %296, %270
  %298 = sitofp i64 %297 to float
  %299 = fmul float %5, %298
  %300 = fdiv float %299, 3.000000e+00
  br label %315

301:                                              ; preds = %259
  %302 = sub nsw i64 %265, %278
  %303 = sitofp i64 %302 to float
  %304 = fmul float %5, %303
  %305 = fdiv float %304, -3.000000e+00
  %306 = tail call float @llvm.fmuladd.f32(float %266, float %5, float %305)
  %307 = getelementptr inbounds [3 x [3 x float]], ptr %196, i64 0, i64 2
  store float %306, ptr %307, align 4, !tbaa !96
  %308 = getelementptr inbounds %struct.FT_Vector_, ptr %17, i64 %274, i32 1
  %309 = load i64, ptr %308, align 8, !tbaa !95
  %310 = sub nsw i64 %270, %309
  %311 = sitofp i64 %310 to float
  %312 = fmul float %5, %311
  %313 = fdiv float %312, -3.000000e+00
  %314 = tail call float @llvm.fmuladd.f32(float %271, float %5, float %313)
  br label %315

315:                                              ; preds = %287, %301, %279
  %316 = phi float [ %300, %287 ], [ %314, %301 ], [ %286, %279 ]
  %317 = phi i8 [ 0, %287 ], [ 2, %301 ], [ 0, %279 ]
  %318 = getelementptr inbounds [3 x [3 x float]], ptr %196, i64 0, i64 2, i64 1
  store float %316, ptr %318, align 4, !tbaa !96
  %319 = getelementptr inbounds %struct.BezTriple, ptr %196, i64 0, i32 6
  store i8 %317, ptr %319, align 2, !tbaa !97
  %320 = getelementptr inbounds %struct.BezTriple, ptr %196, i64 0, i32 5
  %321 = load i8, ptr %320, align 1, !tbaa !99
  %322 = icmp eq i8 %321, 2
  br i1 %322, label %362, label %323

323:                                              ; preds = %315
  %324 = getelementptr inbounds %struct.BezTriple, ptr %196, i64 0, i32 6
  %325 = load i8, ptr %324, align 2, !tbaa !97
  %326 = icmp eq i8 %325, 2
  br i1 %326, label %362, label %327

327:                                              ; preds = %323
  %328 = getelementptr inbounds [3 x [3 x float]], ptr %196, i64 0, i64 2
  %329 = tail call float @dist_squared_to_line_v2(ptr noundef %196, ptr noundef nonnull %268, ptr noundef nonnull %328) #4
  %330 = fcmp olt float %329, 0x3EB0C6F7C0000000
  br i1 %330, label %331, label %362

331:                                              ; preds = %327
  %332 = load float, ptr %268, align 4, !tbaa !96
  %333 = load float, ptr %196, align 4, !tbaa !96
  %334 = fsub float %332, %333
  %335 = load float, ptr %273, align 4, !tbaa !96
  %336 = getelementptr inbounds float, ptr %196, i64 1
  %337 = load float, ptr %336, align 4, !tbaa !96
  %338 = fsub float %335, %337
  %339 = fmul float %338, %338
  %340 = tail call float @llvm.fmuladd.f32(float %334, float %334, float %339)
  %341 = fcmp ogt float %340, 0x3E45798EC0000000
  br i1 %341, label %342, label %362

342:                                              ; preds = %331
  %343 = load float, ptr %328, align 4, !tbaa !96
  %344 = fsub float %343, %332
  %345 = getelementptr inbounds [3 x [3 x float]], ptr %196, i64 0, i64 2, i64 1
  %346 = load float, ptr %345, align 4, !tbaa !96
  %347 = fsub float %346, %335
  %348 = fmul float %347, %347
  %349 = tail call float @llvm.fmuladd.f32(float %344, float %344, float %348)
  %350 = fcmp ogt float %349, 0x3E45798EC0000000
  br i1 %350, label %351, label %362

351:                                              ; preds = %342
  %352 = fsub float %343, %333
  %353 = fsub float %346, %337
  %354 = fmul float %353, %353
  %355 = tail call float @llvm.fmuladd.f32(float %352, float %352, float %354)
  %356 = fcmp ogt float %355, 0x3E45798EC0000000
  br i1 %356, label %357, label %362

357:                                              ; preds = %351
  %358 = fcmp ogt float %340, %349
  %359 = select i1 %358, float %340, float %349
  %360 = fcmp ogt float %355, %359
  br i1 %360, label %361, label %362

361:                                              ; preds = %357
  store i8 3, ptr %324, align 2, !tbaa !97
  store i8 3, ptr %320, align 1, !tbaa !99
  br label %362

362:                                              ; preds = %361, %357, %351, %342, %331, %327, %323, %315
  %363 = getelementptr inbounds %struct.BezTriple, ptr %196, i64 0, i32 3
  store float 1.000000e+00, ptr %363, align 4, !tbaa !100
  %364 = getelementptr inbounds %struct.BezTriple, ptr %196, i64 1
  br label %365

365:                                              ; preds = %195, %362
  %366 = phi ptr [ %364, %362 ], [ %196, %195 ]
  %367 = add nuw nsw i32 %130, 1
  %368 = icmp eq i32 %367, %107
  br i1 %368, label %369, label %128, !llvm.loop !101

369:                                              ; preds = %365, %100
  %370 = phi i32 [ %102, %100 ], [ %140, %365 ]
  %371 = add nuw nsw i64 %101, 1
  %372 = icmp eq i64 %371, %44
  br i1 %372, label %373, label %100, !llvm.loop !102

373:                                              ; preds = %369, %40
  %374 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %374(ptr noundef %35) #4
  br label %375

375:                                              ; preds = %3, %373
  %376 = phi ptr [ %11, %373 ], [ null, %3 ]
  ret ptr %376
}

declare i64 @FT_Get_Next_Char(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

declare float @dist_squared_to_line_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

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
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !35, i64 8}
!39 = !{!"PackedFile", !40, i64 0, !40, i64 4, !35, i64 8}
!40 = !{!"int", !36, i64 0}
!41 = !{!39, !40, i64 0}
!42 = !{!43, !35, i64 152}
!43 = !{!"FT_FaceRec_", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !44, i64 32, !35, i64 40, !35, i64 48, !40, i64 56, !35, i64 64, !40, i64 72, !35, i64 80, !45, i64 88, !46, i64 104, !47, i64 136, !47, i64 138, !47, i64 140, !47, i64 142, !47, i64 144, !47, i64 146, !47, i64 148, !47, i64 150, !35, i64 152, !35, i64 160, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192, !48, i64 200, !45, i64 216, !35, i64 232, !35, i64 240}
!44 = !{!"long", !36, i64 0}
!45 = !{!"FT_Generic_", !35, i64 0, !35, i64 8}
!46 = !{!"FT_BBox_", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24}
!47 = !{!"short", !36, i64 0}
!48 = !{!"FT_ListRec_", !35, i64 0, !35, i64 8}
!49 = !{!50, !40, i64 144}
!50 = !{!"FT_GlyphSlotRec_", !35, i64 0, !35, i64 8, !35, i64 16, !40, i64 24, !45, i64 32, !51, i64 48, !44, i64 112, !44, i64 120, !52, i64 128, !40, i64 144, !53, i64 152, !40, i64 192, !40, i64 196, !54, i64 200, !40, i64 240, !35, i64 248, !35, i64 256, !44, i64 264, !44, i64 272, !44, i64 280, !35, i64 288, !35, i64 296}
!51 = !{!"FT_Glyph_Metrics_", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !44, i64 32, !44, i64 40, !44, i64 48, !44, i64 56}
!52 = !{!"FT_Vector_", !44, i64 0, !44, i64 8}
!53 = !{!"FT_Bitmap_", !40, i64 0, !40, i64 4, !40, i64 8, !35, i64 16, !47, i64 24, !36, i64 26, !36, i64 27, !35, i64 32}
!54 = !{!"FT_Outline_", !47, i64 0, !47, i64 2, !35, i64 8, !35, i64 16, !35, i64 24, !40, i64 32}
!55 = !{!40, !40, i64 0}
!56 = !{!43, !40, i64 72}
!57 = !{!43, !35, i64 80}
!58 = distinct !{!58, !59, !60}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!"llvm.loop.unroll.disable"}
!61 = !{!62, !40, i64 8}
!62 = !{!"FT_CharMapRec_", !35, i64 0, !40, i64 8, !47, i64 12, !47, i64 14}
!63 = !{!43, !44, i64 128}
!64 = !{!43, !44, i64 112}
!65 = !{!66, !67, i64 136}
!66 = !{!"VFontData", !35, i64 0, !36, i64 8, !67, i64 136}
!67 = !{!"float", !36, i64 0}
!68 = !{!66, !35, i64 0}
!69 = distinct !{!69, !59, !60}
!70 = !{!71, !35, i64 1160}
!71 = !{!"VFont", !72, i64 0, !36, i64 120, !35, i64 1144, !35, i64 1152, !35, i64 1160}
!72 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !47, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !35, i64 112}
!73 = !{!71, !35, i64 1144}
!74 = !{i64 0, i64 2, !75, i64 2, i64 2, !75, i64 8, i64 8, !34, i64 16, i64 8, !34, i64 24, i64 8, !34, i64 32, i64 4, !55}
!75 = !{!47, !47, i64 0}
!76 = !{i64 0, i64 8, !34, i64 8, i64 8, !34, i64 16, i64 8, !34, i64 24, i64 4, !55}
!77 = !{i64 0, i64 8, !34, i64 8, i64 8, !34, i64 16, i64 4, !55}
!78 = !{i64 0, i64 8, !34, i64 8, i64 4, !55}
!79 = !{!80, !40, i64 16}
!80 = !{!"VChar", !81, i64 0, !40, i64 16, !67, i64 20}
!81 = !{!"ListBase", !35, i64 0, !35, i64 8}
!82 = !{!50, !44, i64 128}
!83 = !{!80, !67, i64 20}
!84 = !{!36, !36, i64 0}
!85 = distinct !{!85, !59, !60}
!86 = distinct !{!86, !59, !60}
!87 = !{!88, !47, i64 16}
!88 = !{!"Nurb", !35, i64 0, !35, i64 8, !47, i64 16, !47, i64 18, !47, i64 20, !47, i64 22, !40, i64 24, !40, i64 28, !36, i64 32, !47, i64 36, !47, i64 38, !47, i64 40, !47, i64 42, !47, i64 44, !47, i64 46, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !47, i64 80, !47, i64 82, !40, i64 84}
!89 = !{!88, !40, i64 24}
!90 = !{!88, !47, i64 36}
!91 = !{!88, !47, i64 22}
!92 = !{!88, !47, i64 44}
!93 = !{!88, !35, i64 72}
!94 = !{!52, !44, i64 0}
!95 = !{!52, !44, i64 8}
!96 = !{!67, !67, i64 0}
!97 = !{!98, !36, i64 50}
!98 = !{!"BezTriple", !36, i64 0, !67, i64 36, !67, i64 40, !67, i64 44, !36, i64 48, !36, i64 49, !36, i64 50, !36, i64 51, !36, i64 52, !36, i64 53, !36, i64 54, !36, i64 55, !67, i64 56, !67, i64 60, !67, i64 64, !36, i64 68}
!99 = !{!98, !36, i64 49}
!100 = !{!98, !67, i64 44}
!101 = distinct !{!101, !59, !60}
!102 = distinct !{!102, !59, !60}
