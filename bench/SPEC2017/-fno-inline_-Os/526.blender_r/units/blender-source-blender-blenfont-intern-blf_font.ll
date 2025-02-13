; ModuleID = 'blender/source/blender/blenfont/intern/blf_font.c'
source_filename = "blender/source/blender/blenfont/intern/blf_font.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.FontBLF = type { ptr, ptr, [3 x float], [3 x float], float, i32, i32, i32, i32, [4 x float], [4 x float], [16 x double], %struct.rctf, i32, i32, i32, i32, i32, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.FontBufInfoBLF }
%struct.rctf = type { float, float, float, float }
%struct.ListBase = type { ptr, ptr }
%struct.FontBufInfoBLF = type { ptr, ptr, i32, i32, i32, ptr, [4 x float] }
%struct.FT_Vector_ = type { i64, i64 }
%struct.GlyphCacheBLF = type { ptr, ptr, i32, i32, [257 x %struct.ListBase], [256 x ptr], ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float }
%struct.FT_FaceRec_ = type { i64, i64, i64, i64, i64, ptr, ptr, i32, ptr, i32, ptr, %struct.FT_Generic_, %struct.FT_BBox_, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, %struct.FT_ListRec_, %struct.FT_Generic_, ptr, ptr }
%struct.FT_BBox_ = type { i64, i64, i64, i64 }
%struct.FT_ListRec_ = type { ptr, ptr }
%struct.FT_Generic_ = type { ptr, ptr }
%struct.GlyphBLF = type { ptr, ptr, i32, i32, %struct.rctf, float, i32, i32, i32, i32, ptr, i32, i32, i32, [2 x [2 x float]], float, float, i16 }
%struct.FT_Open_Args_ = type { i32, ptr, i64, ptr, ptr, ptr, i32, ptr }

@ft_lib_mutex = internal global i32 0, align 4
@ft_lib = internal global ptr null, align 8
@.str = private unnamed_addr constant [57 x i8] c"The current font don't support the size, %u and dpi, %u\0A\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.blf_font_width_to_rstrlen = private unnamed_addr constant [26 x i8] c"blf_font_width_to_rstrlen\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"blf_font_new\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [50 x i8] c"FT_Attach_File failed to load '%s' with error %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"blf_font_new_from_mem\00", align 1
@str.5 = private unnamed_addr constant [37 x i8] c"Can't set the unicode character map!\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @blf_font_init() local_unnamed_addr #0 {
  tail call void @BLI_spin_init(ptr noundef nonnull @ft_lib_mutex) #12
  %1 = tail call i32 @FT_Init_FreeType(ptr noundef nonnull @ft_lib) #12
  ret i32 %1
}

; Function Attrs: optsize
declare void @BLI_spin_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @FT_Init_FreeType(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @blf_font_exit() local_unnamed_addr #0 {
  %1 = load ptr, ptr @ft_lib, align 8, !tbaa !34
  %2 = tail call i32 @FT_Done_FreeType(ptr noundef %1) #12
  tail call void @BLI_spin_end(ptr noundef nonnull @ft_lib_mutex) #12
  ret void
}

; Function Attrs: optsize
declare i32 @FT_Done_FreeType(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_spin_end(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @blf_font_size(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 22
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = shl i32 %1, 6
  %7 = zext i32 %6 to i64
  %8 = tail call i32 @FT_Set_Char_Size(ptr noundef %5, i64 noundef 0, i64 noundef %7, i32 noundef %2, i32 noundef %2) #12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %1, i32 noundef %2) #13
  br label %25

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 14
  store i32 %1, ptr %13, align 4, !tbaa !45
  %14 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 13
  store i32 %2, ptr %14, align 8, !tbaa !46
  %15 = tail call ptr @blf_glyph_cache_find(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2) #12
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 19
  store ptr %15, ptr %18, align 8, !tbaa !47
  br label %25

19:                                               ; preds = %12
  %20 = tail call ptr @blf_glyph_cache_new(ptr noundef nonnull %0) #12
  %21 = icmp eq ptr %20, null
  %22 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 19
  br i1 %21, label %24, label %23

23:                                               ; preds = %19
  store ptr %20, ptr %22, align 8, !tbaa !47
  br label %25

24:                                               ; preds = %19
  store ptr null, ptr %22, align 8, !tbaa !47
  br label %25

25:                                               ; preds = %17, %24, %23, %10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare i32 @FT_Set_Char_Size(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @blf_glyph_cache_find(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @blf_glyph_cache_new(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @blf_font_draw(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.FT_Vector_, align 8
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  store i64 0, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %7, i64 0, i32 5
  %9 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 22
  %10 = load ptr, ptr %9, align 8, !tbaa !38
  %11 = getelementptr inbounds %struct.FT_FaceRec_, ptr %10, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !50
  %13 = trunc i64 %12 to i8
  %14 = and i8 %13, 64
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 17
  %18 = load i32, ptr %17, align 8, !tbaa !56
  %19 = lshr i32 %18, 3
  %20 = and i32 %19, 1
  %21 = xor i32 %20, 1
  br label %22

22:                                               ; preds = %3, %16
  %23 = phi i32 [ %21, %16 ], [ 0, %3 ]
  tail call fastcc void @blf_font_ensure_ascii_table(ptr noundef nonnull %0) #13
  %24 = icmp ne i8 %14, 0
  br label %25

25:                                               ; preds = %74, %22
  %26 = phi i32 [ %79, %74 ], [ 0, %22 ]
  %27 = phi ptr [ %58, %74 ], [ null, %22 ]
  br label %28

28:                                               ; preds = %25, %54
  %29 = load i64, ptr %5, align 8, !tbaa !48
  %30 = icmp ult i64 %29, %2
  br i1 %30, label %31, label %80

31:                                               ; preds = %28
  %32 = getelementptr inbounds i8, ptr %1, i64 %29
  %33 = load i8, ptr %32, align 1, !tbaa !57
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %80, label %35

35:                                               ; preds = %31
  %36 = icmp sgt i8 %33, -1
  br i1 %36, label %37, label %42

37:                                               ; preds = %35
  %38 = zext nneg i8 %33 to i64
  %39 = getelementptr inbounds ptr, ptr %8, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !34
  %41 = add nuw i64 %29, 1
  store i64 %41, ptr %5, align 8, !tbaa !48
  br label %54

42:                                               ; preds = %35
  %43 = call i32 @BLI_str_utf8_as_unicode_step(ptr noundef nonnull %1, ptr noundef nonnull %5) #12
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %80, label %45

45:                                               ; preds = %42
  %46 = load ptr, ptr %6, align 8, !tbaa !47
  %47 = call ptr @blf_glyph_search(ptr noundef %46, i32 noundef %43) #12
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = load ptr, ptr %9, align 8, !tbaa !38
  %51 = zext i32 %43 to i64
  %52 = call i32 @FT_Get_Char_Index(ptr noundef %50, i64 noundef %51) #12
  %53 = call ptr @blf_glyph_add(ptr noundef nonnull %0, i32 noundef %52, i32 noundef %43) #12
  br label %54

54:                                               ; preds = %37, %49
  %55 = phi ptr [ %53, %49 ], [ %40, %37 ]
  %56 = icmp eq ptr %55, null
  br i1 %56, label %28, label %57, !llvm.loop !58

57:                                               ; preds = %45, %54
  %58 = phi ptr [ %55, %54 ], [ %47, %45 ]
  %59 = icmp ne ptr %27, null
  %60 = and i1 %24, %59
  br i1 %60, label %61, label %74

61:                                               ; preds = %57
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %62 = load ptr, ptr %9, align 8, !tbaa !38
  %63 = getelementptr inbounds %struct.GlyphBLF, ptr %27, i64 0, i32 3
  %64 = load i32, ptr %63, align 4, !tbaa !60
  %65 = getelementptr inbounds %struct.GlyphBLF, ptr %58, i64 0, i32 3
  %66 = load i32, ptr %65, align 4, !tbaa !60
  %67 = call i32 @FT_Get_Kerning(ptr noundef %62, i32 noundef %64, i32 noundef %66, i32 noundef %23, ptr noundef nonnull %4) #12
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %61
  %70 = load i64, ptr %4, align 8, !tbaa !62
  %71 = trunc i64 %70 to i32
  %72 = ashr i32 %71, 6
  %73 = add nsw i32 %72, %26
  br label %74

74:                                               ; preds = %69, %61, %57
  %75 = phi i32 [ %73, %69 ], [ %26, %61 ], [ %26, %57 ]
  %76 = sitofp i32 %75 to float
  call void @blf_glyph_render(ptr noundef %0, ptr noundef nonnull %58, float noundef %76, float noundef 0.000000e+00) #12
  %77 = getelementptr inbounds %struct.GlyphBLF, ptr %58, i64 0, i32 6
  %78 = load i32, ptr %77, align 4, !tbaa !64
  %79 = add nsw i32 %78, %75
  br label %25, !llvm.loop !58

80:                                               ; preds = %42, %28, %31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @blf_font_ensure_ascii_table(ptr noundef %0) unnamed_addr #0 !PGOFuncName !65 {
  %2 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %3, i64 0, i32 5
  %5 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %3, i64 0, i32 5, i64 48
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %25

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 22
  br label %10

10:                                               ; preds = %8, %20
  %11 = phi i64 [ 0, %8 ], [ %23, %20 ]
  %12 = load ptr, ptr %2, align 8, !tbaa !47
  %13 = trunc i64 %11 to i32
  %14 = tail call ptr @blf_glyph_search(ptr noundef %12, i32 noundef %13) #12
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = load ptr, ptr %9, align 8, !tbaa !38
  %18 = tail call i32 @FT_Get_Char_Index(ptr noundef %17, i64 noundef %11) #12
  %19 = tail call ptr @blf_glyph_add(ptr noundef nonnull %0, i32 noundef %18, i32 noundef %13) #12
  br label %20

20:                                               ; preds = %16, %10
  %21 = phi ptr [ %14, %10 ], [ %19, %16 ]
  %22 = getelementptr inbounds ptr, ptr %4, i64 %11
  store ptr %21, ptr %22, align 8, !tbaa !34
  %23 = add nuw nsw i64 %11, 1
  %24 = icmp eq i64 %23, 256
  br i1 %24, label %25, label %10, !llvm.loop !66

25:                                               ; preds = %20, %1
  ret void
}

; Function Attrs: optsize
declare i32 @BLI_str_utf8_as_unicode_step(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @blf_glyph_search(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @blf_glyph_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @FT_Get_Char_Index(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @FT_Get_Kerning(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @blf_glyph_render(ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @blf_font_draw_ascii(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.FT_Vector_, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #14
  %5 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %6, i64 0, i32 5
  %8 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 22
  %9 = load ptr, ptr %8, align 8, !tbaa !38
  %10 = getelementptr inbounds %struct.FT_FaceRec_, ptr %9, i64 0, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !50
  %12 = trunc i64 %11 to i8
  %13 = and i8 %12, 64
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 17
  %17 = load i32, ptr %16, align 8, !tbaa !56
  %18 = lshr i32 %17, 3
  %19 = and i32 %18, 1
  %20 = xor i32 %19, 1
  br label %21

21:                                               ; preds = %3, %15
  %22 = phi i32 [ %20, %15 ], [ 0, %3 ]
  tail call fastcc void @blf_font_ensure_ascii_table(ptr noundef nonnull %0) #13
  %23 = icmp ne i8 %13, 0
  br label %24

24:                                               ; preds = %59, %21
  %25 = phi i32 [ %64, %59 ], [ 0, %21 ]
  %26 = phi ptr [ %41, %59 ], [ null, %21 ]
  %27 = phi i64 [ %38, %59 ], [ %2, %21 ]
  %28 = phi ptr [ %37, %59 ], [ %1, %21 ]
  br label %29

29:                                               ; preds = %24, %36
  %30 = phi i64 [ %38, %36 ], [ %27, %24 ]
  %31 = phi ptr [ %37, %36 ], [ %28, %24 ]
  %32 = load i8, ptr %31, align 1, !tbaa !57
  %33 = icmp eq i8 %32, 0
  %34 = icmp eq i64 %30, 0
  %35 = select i1 %33, i1 true, i1 %34
  br i1 %35, label %65, label %36

36:                                               ; preds = %29
  %37 = getelementptr inbounds i8, ptr %31, i64 1
  %38 = add i64 %30, -1
  %39 = zext i8 %32 to i64
  %40 = getelementptr inbounds ptr, ptr %7, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !34
  %42 = icmp eq ptr %41, null
  br i1 %42, label %29, label %43, !llvm.loop !67

43:                                               ; preds = %36
  %44 = icmp ne ptr %26, null
  %45 = and i1 %23, %44
  br i1 %45, label %46, label %59

46:                                               ; preds = %43
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %47 = load ptr, ptr %8, align 8, !tbaa !38
  %48 = getelementptr inbounds %struct.GlyphBLF, ptr %26, i64 0, i32 3
  %49 = load i32, ptr %48, align 4, !tbaa !60
  %50 = getelementptr inbounds %struct.GlyphBLF, ptr %41, i64 0, i32 3
  %51 = load i32, ptr %50, align 4, !tbaa !60
  %52 = call i32 @FT_Get_Kerning(ptr noundef %47, i32 noundef %49, i32 noundef %51, i32 noundef %22, ptr noundef nonnull %4) #12
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %46
  %55 = load i64, ptr %4, align 8, !tbaa !62
  %56 = trunc i64 %55 to i32
  %57 = ashr i32 %56, 6
  %58 = add nsw i32 %57, %25
  br label %59

59:                                               ; preds = %54, %46, %43
  %60 = phi i32 [ %58, %54 ], [ %25, %46 ], [ %25, %43 ]
  %61 = sitofp i32 %60 to float
  call void @blf_glyph_render(ptr noundef %0, ptr noundef nonnull %41, float noundef %61, float noundef 0.000000e+00) #12
  %62 = getelementptr inbounds %struct.GlyphBLF, ptr %41, i64 0, i32 6
  %63 = load i32, ptr %62, align 4, !tbaa !64
  %64 = add nsw i32 %63, %60
  br label %24, !llvm.loop !67

65:                                               ; preds = %29
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @blf_font_draw_mono(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  store i64 0, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %7, i64 0, i32 5
  tail call fastcc void @blf_font_ensure_ascii_table(ptr noundef %0) #13
  %9 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 22
  br label %10

10:                                               ; preds = %44, %4
  %11 = phi i32 [ %51, %44 ], [ 0, %4 ]
  %12 = phi i32 [ %53, %44 ], [ 0, %4 ]
  br label %13

13:                                               ; preds = %10, %40
  %14 = load i64, ptr %5, align 8, !tbaa !48
  %15 = icmp ult i64 %14, %2
  br i1 %15, label %16, label %54

16:                                               ; preds = %13
  %17 = getelementptr inbounds i8, ptr %1, i64 %14
  %18 = load i8, ptr %17, align 1, !tbaa !57
  %19 = zext i8 %18 to i32
  %20 = icmp eq i8 %18, 0
  br i1 %20, label %54, label %21

21:                                               ; preds = %16
  %22 = icmp sgt i8 %18, -1
  br i1 %22, label %23, label %28

23:                                               ; preds = %21
  %24 = zext nneg i8 %18 to i64
  %25 = getelementptr inbounds ptr, ptr %8, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !34
  %27 = add nuw i64 %14, 1
  store i64 %27, ptr %5, align 8, !tbaa !48
  br label %40

28:                                               ; preds = %21
  %29 = call i32 @BLI_str_utf8_as_unicode_step(ptr noundef nonnull %1, ptr noundef nonnull %5) #12
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %54, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr %6, align 8, !tbaa !47
  %33 = call ptr @blf_glyph_search(ptr noundef %32, i32 noundef %29) #12
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = load ptr, ptr %9, align 8, !tbaa !38
  %37 = zext i32 %29 to i64
  %38 = call i32 @FT_Get_Char_Index(ptr noundef %36, i64 noundef %37) #12
  %39 = call ptr @blf_glyph_add(ptr noundef nonnull %0, i32 noundef %38, i32 noundef %29) #12
  br label %40

40:                                               ; preds = %23, %35
  %41 = phi ptr [ %39, %35 ], [ %26, %23 ]
  %42 = phi i32 [ %29, %35 ], [ %19, %23 ]
  %43 = icmp eq ptr %41, null
  br i1 %43, label %13, label %44, !llvm.loop !68

44:                                               ; preds = %31, %40
  %45 = phi i32 [ %42, %40 ], [ %29, %31 ]
  %46 = phi ptr [ %41, %40 ], [ %33, %31 ]
  %47 = sitofp i32 %12 to float
  call void @blf_glyph_render(ptr noundef %0, ptr noundef nonnull %46, float noundef %47, float noundef 0.000000e+00) #12
  %48 = call i32 @BLI_wcwidth(i32 noundef %45) #12
  %49 = icmp slt i32 %48, 0
  %50 = select i1 %49, i32 1, i32 %48
  %51 = add nsw i32 %50, %11
  %52 = mul nsw i32 %50, %3
  %53 = add nsw i32 %52, %12
  br label %10, !llvm.loop !68

54:                                               ; preds = %28, %13, %16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  ret i32 %11
}

; Function Attrs: optsize
declare i32 @BLI_wcwidth(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @blf_font_buffer(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.FT_Vector_, align 8
  %4 = alloca i64, align 8
  %5 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #14
  %6 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 3
  %7 = load float, ptr %6, align 4, !tbaa !69
  %8 = fptosi float %7 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  store i64 0, ptr %4, align 8, !tbaa !48
  %9 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !47
  %11 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %10, i64 0, i32 5
  %12 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #14
  %13 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 23, i32 6
  %14 = load float, ptr %13, align 8, !tbaa !69
  %15 = fmul float %14, 2.550000e+02
  %16 = fptoui float %15 to i8
  %17 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 23, i32 6, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !69
  %19 = fmul float %18, 2.550000e+02
  %20 = fptoui float %19 to i8
  %21 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 23, i32 6, i64 2
  %22 = load float, ptr %21, align 8, !tbaa !69
  %23 = fmul float %22, 2.550000e+02
  %24 = fptoui float %23 to i8
  %25 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 23, i32 6, i64 3
  %26 = load float, ptr %25, align 4, !tbaa !69
  %27 = fmul float %26, 2.550000e+02
  %28 = fptoui float %27 to i8
  %29 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 22
  %30 = load ptr, ptr %29, align 8, !tbaa !38
  %31 = getelementptr inbounds %struct.FT_FaceRec_, ptr %30, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !50
  %33 = trunc i64 %32 to i8
  %34 = and i8 %33, 64
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %2
  %37 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 17
  %38 = load i32, ptr %37, align 8, !tbaa !56
  %39 = lshr i32 %38, 3
  %40 = and i32 %39, 1
  %41 = xor i32 %40, 1
  br label %42

42:                                               ; preds = %2, %36
  %43 = phi i32 [ %41, %36 ], [ 0, %2 ]
  tail call fastcc void @blf_font_ensure_ascii_table(ptr noundef nonnull %0) #13
  %44 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 23, i32 5
  %45 = load ptr, ptr %44, align 8, !tbaa !70
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  call fastcc void @copy_v4_v4(ptr noundef nonnull %5, ptr noundef nonnull %13) #13
  call void @IMB_colormanagement_display_to_scene_linear_v3(ptr noundef nonnull %5, ptr noundef nonnull %45) #12
  br label %49

48:                                               ; preds = %42
  call fastcc void @srgb_to_linearrgb_v4(ptr noundef nonnull %5, ptr noundef nonnull %13) #13
  br label %49

49:                                               ; preds = %48, %47
  %50 = icmp ne i8 %34, 0
  %51 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 3, i64 1
  %52 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 23, i32 2
  %53 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 23, i32 3
  %54 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 23, i32 4
  %55 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 1
  %56 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 2
  %57 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 3
  %58 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 23, i32 1
  %59 = zext i8 %28 to i32
  %60 = uitofp i8 %16 to float
  %61 = uitofp i8 %20 to float
  %62 = uitofp i8 %24 to float
  br label %63

63:                                               ; preds = %340, %49
  %64 = phi i32 [ %343, %340 ], [ %8, %49 ]
  %65 = phi ptr [ %94, %340 ], [ null, %49 ]
  br label %66

66:                                               ; preds = %63, %90
  %67 = load i64, ptr %4, align 8, !tbaa !48
  %68 = getelementptr inbounds i8, ptr %1, i64 %67
  %69 = load i8, ptr %68, align 1, !tbaa !57
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %344, label %71

71:                                               ; preds = %66
  %72 = icmp sgt i8 %69, -1
  br i1 %72, label %73, label %78

73:                                               ; preds = %71
  %74 = zext nneg i8 %69 to i64
  %75 = getelementptr inbounds ptr, ptr %11, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !34
  %77 = add i64 %67, 1
  store i64 %77, ptr %4, align 8, !tbaa !48
  br label %90

78:                                               ; preds = %71
  %79 = call i32 @BLI_str_utf8_as_unicode_step(ptr noundef nonnull %1, ptr noundef nonnull %4) #12
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %344, label %81

81:                                               ; preds = %78
  %82 = load ptr, ptr %9, align 8, !tbaa !47
  %83 = call ptr @blf_glyph_search(ptr noundef %82, i32 noundef %79) #12
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %93

85:                                               ; preds = %81
  %86 = load ptr, ptr %29, align 8, !tbaa !38
  %87 = zext i32 %79 to i64
  %88 = call i32 @FT_Get_Char_Index(ptr noundef %86, i64 noundef %87) #12
  %89 = call ptr @blf_glyph_add(ptr noundef nonnull %0, i32 noundef %88, i32 noundef %79) #12
  br label %90

90:                                               ; preds = %73, %85
  %91 = phi ptr [ %89, %85 ], [ %76, %73 ]
  %92 = icmp eq ptr %91, null
  br i1 %92, label %66, label %93, !llvm.loop !71

93:                                               ; preds = %81, %90
  %94 = phi ptr [ %91, %90 ], [ %83, %81 ]
  %95 = icmp ne ptr %65, null
  %96 = and i1 %50, %95
  br i1 %96, label %97, label %110

97:                                               ; preds = %93
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %98 = load ptr, ptr %29, align 8, !tbaa !38
  %99 = getelementptr inbounds %struct.GlyphBLF, ptr %65, i64 0, i32 3
  %100 = load i32, ptr %99, align 4, !tbaa !60
  %101 = getelementptr inbounds %struct.GlyphBLF, ptr %94, i64 0, i32 3
  %102 = load i32, ptr %101, align 4, !tbaa !60
  %103 = call i32 @FT_Get_Kerning(ptr noundef %98, i32 noundef %100, i32 noundef %102, i32 noundef %43, ptr noundef nonnull %3) #12
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %97
  %106 = load i64, ptr %3, align 8, !tbaa !62
  %107 = trunc i64 %106 to i32
  %108 = ashr i32 %107, 6
  %109 = add nsw i32 %108, %64
  br label %110

110:                                              ; preds = %105, %97, %93
  %111 = phi i32 [ %109, %105 ], [ %64, %97 ], [ %64, %93 ]
  %112 = getelementptr inbounds %struct.GlyphBLF, ptr %94, i64 0, i32 15
  %113 = load float, ptr %112, align 4, !tbaa !72
  %114 = fptosi float %113 to i32
  %115 = add nsw i32 %111, %114
  %116 = load float, ptr %51, align 4, !tbaa !69
  %117 = fptosi float %116 to i32
  %118 = getelementptr inbounds %struct.GlyphBLF, ptr %94, i64 0, i32 12
  %119 = load i32, ptr %118, align 4, !tbaa !73
  %120 = add nsw i32 %119, %117
  %121 = getelementptr inbounds %struct.GlyphBLF, ptr %94, i64 0, i32 13
  %122 = load i32, ptr %121, align 8, !tbaa !74
  %123 = icmp slt i32 %122, 0
  %124 = getelementptr inbounds %struct.GlyphBLF, ptr %94, i64 0, i32 16
  %125 = load float, ptr %124, align 8, !tbaa !75
  %126 = fptosi float %125 to i32
  %127 = sub nsw i32 %119, %126
  %128 = sub i32 %126, %119
  %129 = select i1 %123, i32 %127, i32 %128
  %130 = add i32 %129, %117
  %131 = getelementptr inbounds %struct.GlyphBLF, ptr %94, i64 0, i32 11
  %132 = load i32, ptr %131, align 8, !tbaa !76
  %133 = add nsw i32 %132, %115
  %134 = icmp sgt i32 %133, -1
  br i1 %134, label %135, label %340

135:                                              ; preds = %110
  %136 = load i32, ptr %52, align 8, !tbaa !77
  %137 = icmp slt i32 %115, %136
  br i1 %137, label %138, label %340

138:                                              ; preds = %135
  %139 = add nsw i32 %130, %119
  %140 = icmp sgt i32 %139, -1
  br i1 %140, label %141, label %340

141:                                              ; preds = %138
  %142 = load i32, ptr %53, align 4, !tbaa !78
  %143 = icmp slt i32 %130, %142
  br i1 %143, label %144, label %340

144:                                              ; preds = %141
  %145 = add nsw i32 %119, -1
  %146 = select i1 %123, i32 0, i32 %145
  %147 = icmp sgt i32 %133, %136
  %148 = sub i32 %136, %133
  %149 = select i1 %147, i32 %148, i32 0
  %150 = add i32 %149, %132
  %151 = icmp sgt i32 %139, %142
  %152 = sub i32 %142, %139
  %153 = select i1 %151, i32 %152, i32 0
  %154 = icmp slt i32 %130, 0
  %155 = sub nsw i32 0, %130
  %156 = select i1 %123, i32 %155, i32 %130
  %157 = call i32 @llvm.smax.i32(i32 %130, i32 0)
  %158 = call i32 @llvm.smin.i32(i32 %130, i32 0)
  %159 = add i32 %158, %119
  %160 = add i32 %159, %153
  %161 = select i1 %154, i32 %156, i32 0
  %162 = add i32 %161, %146
  %163 = load ptr, ptr %12, align 8, !tbaa !79
  %164 = icmp eq ptr %163, null
  br i1 %164, label %247, label %165

165:                                              ; preds = %144
  %166 = sub nsw i32 0, %120
  %167 = icmp slt i32 %120, 0
  %168 = select i1 %167, i32 %166, i32 0
  %169 = icmp slt i32 %168, %160
  br i1 %169, label %170, label %247

170:                                              ; preds = %165
  %171 = sub nsw i32 0, %115
  %172 = icmp slt i32 %115, 0
  %173 = select i1 %172, i32 %171, i32 0
  %174 = icmp slt i32 %173, %150
  %175 = getelementptr inbounds %struct.GlyphBLF, ptr %94, i64 0, i32 10
  %176 = select i1 %123, i64 1, i64 -1
  %177 = sext i32 %173 to i64
  %178 = sext i32 %150 to i64
  %179 = sext i32 %162 to i64
  %180 = sext i32 %122 to i64
  br label %181

181:                                              ; preds = %170, %243
  %182 = phi i64 [ %179, %170 ], [ %244, %243 ]
  %183 = phi i32 [ %168, %170 ], [ %245, %243 ]
  br i1 %174, label %184, label %243

184:                                              ; preds = %181
  %185 = load ptr, ptr %175, align 8, !tbaa !80
  %186 = mul nsw i64 %182, %180
  %187 = getelementptr i8, ptr %185, i64 %186
  %188 = add nsw i32 %183, %157
  %189 = mul nsw i32 %188, %136
  %190 = add i32 %189, %115
  br label %191

191:                                              ; preds = %184, %240
  %192 = phi i64 [ %177, %184 ], [ %241, %240 ]
  %193 = getelementptr i8, ptr %187, i64 %192
  %194 = load i8, ptr %193, align 1, !tbaa !57
  %195 = uitofp i8 %194 to float
  %196 = fdiv float %195, 2.550000e+02
  %197 = fcmp ogt float %196, 0.000000e+00
  br i1 %197, label %198, label %240

198:                                              ; preds = %191
  %199 = load i32, ptr %54, align 8, !tbaa !81
  %200 = trunc i64 %192 to i32
  %201 = add i32 %190, %200
  %202 = mul nsw i32 %199, %201
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds float, ptr %163, i64 %203
  %205 = fcmp ult float %196, 1.000000e+00
  %206 = load float, ptr %5, align 16, !tbaa !69
  br i1 %205, label %216, label %207

207:                                              ; preds = %198
  store float %206, ptr %204, align 4, !tbaa !69
  %208 = load float, ptr %55, align 4, !tbaa !69
  %209 = getelementptr inbounds float, ptr %204, i64 1
  store float %208, ptr %209, align 4, !tbaa !69
  %210 = load float, ptr %56, align 8, !tbaa !69
  %211 = getelementptr inbounds float, ptr %204, i64 2
  store float %210, ptr %211, align 4, !tbaa !69
  %212 = getelementptr inbounds float, ptr %204, i64 3
  %213 = load float, ptr %212, align 4, !tbaa !69
  %214 = load float, ptr %57, align 4, !tbaa !69
  %215 = fadd float %213, %214
  br label %235

216:                                              ; preds = %198
  %217 = load float, ptr %204, align 4, !tbaa !69
  %218 = fsub float 1.000000e+00, %196
  %219 = fmul float %218, %217
  %220 = call float @llvm.fmuladd.f32(float %206, float %196, float %219)
  store float %220, ptr %204, align 4, !tbaa !69
  %221 = load float, ptr %55, align 4, !tbaa !69
  %222 = getelementptr inbounds float, ptr %204, i64 1
  %223 = load float, ptr %222, align 4, !tbaa !69
  %224 = fmul float %218, %223
  %225 = call float @llvm.fmuladd.f32(float %221, float %196, float %224)
  store float %225, ptr %222, align 4, !tbaa !69
  %226 = load float, ptr %56, align 8, !tbaa !69
  %227 = getelementptr inbounds float, ptr %204, i64 2
  %228 = load float, ptr %227, align 4, !tbaa !69
  %229 = fmul float %218, %228
  %230 = call float @llvm.fmuladd.f32(float %226, float %196, float %229)
  store float %230, ptr %227, align 4, !tbaa !69
  %231 = getelementptr inbounds float, ptr %204, i64 3
  %232 = load float, ptr %231, align 4, !tbaa !69
  %233 = load float, ptr %57, align 4, !tbaa !69
  %234 = call float @llvm.fmuladd.f32(float %233, float %196, float %232)
  br label %235

235:                                              ; preds = %216, %207
  %236 = phi float [ %215, %207 ], [ %234, %216 ]
  %237 = phi ptr [ %212, %207 ], [ %231, %216 ]
  %238 = fcmp olt float %236, 1.000000e+00
  %239 = select i1 %238, float %236, float 1.000000e+00
  store float %239, ptr %237, align 4, !tbaa !69
  br label %240

240:                                              ; preds = %235, %191
  %241 = add nsw i64 %192, 1
  %242 = icmp slt i64 %241, %178
  br i1 %242, label %191, label %243, !llvm.loop !82

243:                                              ; preds = %240, %181
  %244 = add i64 %182, %176
  %245 = add nsw i32 %183, 1
  %246 = icmp slt i32 %245, %160
  br i1 %246, label %181, label %247, !llvm.loop !83

247:                                              ; preds = %243, %165, %144
  %248 = load ptr, ptr %58, align 8, !tbaa !84
  %249 = icmp ne ptr %248, null
  %250 = icmp sgt i32 %160, 0
  %251 = select i1 %249, i1 %250, i1 false
  br i1 %251, label %252, label %340

252:                                              ; preds = %247
  %253 = icmp sgt i32 %150, 0
  %254 = getelementptr inbounds %struct.GlyphBLF, ptr %94, i64 0, i32 10
  %255 = sext i32 %150 to i64
  br label %256

256:                                              ; preds = %252, %333
  %257 = phi i32 [ %122, %252 ], [ %334, %333 ]
  %258 = phi i32 [ %162, %252 ], [ %337, %333 ]
  %259 = phi i32 [ 0, %252 ], [ %338, %333 ]
  br i1 %253, label %260, label %333

260:                                              ; preds = %256
  %261 = add nuw nsw i32 %259, %157
  br label %262

262:                                              ; preds = %260, %328
  %263 = phi i64 [ 0, %260 ], [ %329, %328 ]
  %264 = load ptr, ptr %254, align 8, !tbaa !80
  %265 = getelementptr inbounds i8, ptr %264, i64 %263
  %266 = load i32, ptr %121, align 8, !tbaa !74
  %267 = mul nsw i32 %266, %258
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i8, ptr %265, i64 %268
  %270 = load i8, ptr %269, align 1, !tbaa !57
  %271 = uitofp i8 %270 to float
  %272 = fdiv float %271, 2.550000e+02
  %273 = fcmp ogt float %272, 0.000000e+00
  br i1 %273, label %274, label %328

274:                                              ; preds = %262
  %275 = load ptr, ptr %58, align 8, !tbaa !84
  %276 = load i32, ptr %54, align 8, !tbaa !81
  %277 = load i32, ptr %52, align 8, !tbaa !77
  %278 = mul nsw i32 %277, %261
  %279 = trunc i64 %263 to i32
  %280 = add i32 %115, %279
  %281 = add nsw i32 %280, %278
  %282 = mul nsw i32 %281, %276
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i8, ptr %275, i64 %283
  %285 = fcmp ult float %272, 1.000000e+00
  br i1 %285, label %297, label %286

286:                                              ; preds = %274
  store i8 %16, ptr %284, align 1, !tbaa !57
  %287 = getelementptr inbounds i8, ptr %284, i64 1
  store i8 %20, ptr %287, align 1, !tbaa !57
  %288 = getelementptr inbounds i8, ptr %284, i64 2
  store i8 %24, ptr %288, align 1, !tbaa !57
  %289 = getelementptr inbounds i8, ptr %284, i64 3
  %290 = load i8, ptr %289, align 1, !tbaa !57
  %291 = zext i8 %290 to i32
  %292 = add nuw nsw i32 %291, %59
  %293 = icmp ult i32 %292, 255
  br i1 %293, label %294, label %296

294:                                              ; preds = %286
  %295 = trunc i32 %292 to i8
  store i8 %295, ptr %289, align 1, !tbaa !57
  br label %328

296:                                              ; preds = %286
  store i8 -1, ptr %289, align 1, !tbaa !57
  br label %328

297:                                              ; preds = %274
  %298 = load i8, ptr %284, align 1, !tbaa !57
  %299 = uitofp i8 %298 to float
  %300 = fsub float 1.000000e+00, %272
  %301 = fmul float %300, %299
  %302 = call float @llvm.fmuladd.f32(float %60, float %272, float %301)
  %303 = fptoui float %302 to i8
  store i8 %303, ptr %284, align 1, !tbaa !57
  %304 = getelementptr inbounds i8, ptr %284, i64 1
  %305 = load i8, ptr %304, align 1, !tbaa !57
  %306 = uitofp i8 %305 to float
  %307 = fmul float %300, %306
  %308 = call float @llvm.fmuladd.f32(float %61, float %272, float %307)
  %309 = fptoui float %308 to i8
  store i8 %309, ptr %304, align 1, !tbaa !57
  %310 = getelementptr inbounds i8, ptr %284, i64 2
  %311 = load i8, ptr %310, align 1, !tbaa !57
  %312 = uitofp i8 %311 to float
  %313 = fmul float %300, %312
  %314 = call float @llvm.fmuladd.f32(float %62, float %272, float %313)
  %315 = fptoui float %314 to i8
  store i8 %315, ptr %310, align 1, !tbaa !57
  %316 = getelementptr inbounds i8, ptr %284, i64 3
  %317 = load i8, ptr %316, align 1, !tbaa !57
  %318 = zext i8 %317 to i32
  %319 = load float, ptr %57, align 4, !tbaa !69
  %320 = fmul float %272, %319
  %321 = fmul float %320, 2.550000e+02
  %322 = fptosi float %321 to i32
  %323 = add nsw i32 %322, %318
  %324 = icmp slt i32 %323, 255
  br i1 %324, label %325, label %327

325:                                              ; preds = %297
  %326 = trunc i32 %323 to i8
  store i8 %326, ptr %316, align 1, !tbaa !57
  br label %328

327:                                              ; preds = %297
  store i8 -1, ptr %316, align 1, !tbaa !57
  br label %328

328:                                              ; preds = %296, %294, %327, %325, %262
  %329 = add nuw nsw i64 %263, 1
  %330 = icmp slt i64 %329, %255
  br i1 %330, label %262, label %331, !llvm.loop !85

331:                                              ; preds = %328
  %332 = load i32, ptr %121, align 8, !tbaa !74
  br label %333

333:                                              ; preds = %331, %256
  %334 = phi i32 [ %332, %331 ], [ %257, %256 ]
  %335 = icmp sgt i32 %334, -1
  %336 = select i1 %335, i32 -1, i32 1
  %337 = add nsw i32 %336, %258
  %338 = add nuw nsw i32 %259, 1
  %339 = icmp slt i32 %338, %160
  br i1 %339, label %256, label %340, !llvm.loop !86

340:                                              ; preds = %333, %247, %141, %138, %135, %110
  %341 = getelementptr inbounds %struct.GlyphBLF, ptr %94, i64 0, i32 6
  %342 = load i32, ptr %341, align 4, !tbaa !64
  %343 = add nsw i32 %342, %111
  br label %63, !llvm.loop !71

344:                                              ; preds = %78, %66
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v4_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !87 {
  %3 = load float, ptr %1, align 4, !tbaa !69
  store float %3, ptr %0, align 4, !tbaa !69
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !69
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !69
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !69
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !69
  %10 = getelementptr inbounds float, ptr %1, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !69
  %12 = getelementptr inbounds float, ptr %0, i64 3
  store float %11, ptr %12, align 4, !tbaa !69
  ret void
}

; Function Attrs: optsize
declare void @IMB_colormanagement_display_to_scene_linear_v3(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @srgb_to_linearrgb_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !88 {
  tail call fastcc void @srgb_to_linearrgb_v3_v3(ptr noundef %0, ptr noundef %1) #13
  %3 = getelementptr inbounds float, ptr %1, i64 3
  %4 = load float, ptr %3, align 4, !tbaa !69
  %5 = getelementptr inbounds float, ptr %0, i64 3
  store float %4, ptr %5, align 4, !tbaa !69
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @blf_font_width_to_strlen(ptr noundef %0, ptr noundef %1, i64 noundef %2, float noundef %3, ptr noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca %struct.FT_Vector_, align 8
  %7 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #14
  store i64 0, ptr %7, align 8, !tbaa !48
  %8 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %9, i64 0, i32 5
  %11 = fptosi float %3 to i32
  %12 = add nsw i32 %11, 1
  %13 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 22
  %14 = load ptr, ptr %13, align 8, !tbaa !38
  %15 = getelementptr inbounds %struct.FT_FaceRec_, ptr %14, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !50
  %17 = trunc i64 %16 to i8
  %18 = and i8 %17, 64
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %5
  %21 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 17
  %22 = load i32, ptr %21, align 8, !tbaa !56
  %23 = lshr i32 %22, 3
  %24 = and i32 %23, 1
  %25 = xor i32 %24, 1
  br label %26

26:                                               ; preds = %5, %20
  %27 = phi i32 [ %25, %20 ], [ 0, %5 ]
  tail call fastcc void @blf_font_ensure_ascii_table(ptr noundef nonnull %0) #13
  %28 = icmp ne i8 %18, 0
  br label %29

29:                                               ; preds = %78, %26
  %30 = phi i32 [ %82, %78 ], [ 0, %26 ]
  %31 = phi ptr [ %62, %78 ], [ null, %26 ]
  br label %32

32:                                               ; preds = %29, %58
  %33 = load i64, ptr %7, align 8, !tbaa !48
  %34 = icmp ult i64 %33, %2
  br i1 %34, label %35, label %84

35:                                               ; preds = %32
  %36 = getelementptr inbounds i8, ptr %1, i64 %33
  %37 = load i8, ptr %36, align 1, !tbaa !57
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %84, label %39

39:                                               ; preds = %35
  %40 = icmp sgt i8 %37, -1
  br i1 %40, label %41, label %46

41:                                               ; preds = %39
  %42 = zext nneg i8 %37 to i64
  %43 = getelementptr inbounds ptr, ptr %10, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !34
  %45 = add nuw i64 %33, 1
  store i64 %45, ptr %7, align 8, !tbaa !48
  br label %58

46:                                               ; preds = %39
  %47 = call i32 @BLI_str_utf8_as_unicode_step(ptr noundef nonnull %1, ptr noundef nonnull %7) #12
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %84, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr %8, align 8, !tbaa !47
  %51 = call ptr @blf_glyph_search(ptr noundef %50, i32 noundef %47) #12
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %61

53:                                               ; preds = %49
  %54 = load ptr, ptr %13, align 8, !tbaa !38
  %55 = zext i32 %47 to i64
  %56 = call i32 @FT_Get_Char_Index(ptr noundef %54, i64 noundef %55) #12
  %57 = call ptr @blf_glyph_add(ptr noundef nonnull %0, i32 noundef %56, i32 noundef %47) #12
  br label %58

58:                                               ; preds = %41, %53
  %59 = phi ptr [ %57, %53 ], [ %44, %41 ]
  %60 = icmp eq ptr %59, null
  br i1 %60, label %32, label %61, !llvm.loop !89

61:                                               ; preds = %49, %58
  %62 = phi ptr [ %59, %58 ], [ %51, %49 ]
  %63 = icmp ne ptr %31, null
  %64 = and i1 %28, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %66 = load ptr, ptr %13, align 8, !tbaa !38
  %67 = getelementptr inbounds %struct.GlyphBLF, ptr %31, i64 0, i32 3
  %68 = load i32, ptr %67, align 4, !tbaa !60
  %69 = getelementptr inbounds %struct.GlyphBLF, ptr %62, i64 0, i32 3
  %70 = load i32, ptr %69, align 4, !tbaa !60
  %71 = call i32 @FT_Get_Kerning(ptr noundef %66, i32 noundef %68, i32 noundef %70, i32 noundef %27, ptr noundef nonnull %6) #12
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %65
  %74 = load i64, ptr %6, align 8, !tbaa !62
  %75 = trunc i64 %74 to i32
  %76 = ashr i32 %75, 6
  %77 = add nsw i32 %76, %30
  br label %78

78:                                               ; preds = %73, %65, %61
  %79 = phi i32 [ %77, %73 ], [ %30, %65 ], [ %30, %61 ]
  %80 = getelementptr inbounds %struct.GlyphBLF, ptr %62, i64 0, i32 6
  %81 = load i32, ptr %80, align 4, !tbaa !64
  %82 = add nsw i32 %81, %79
  %83 = icmp slt i32 %12, %82
  br i1 %83, label %84, label %29, !llvm.loop !89

84:                                               ; preds = %78, %46, %32, %35
  %85 = icmp eq ptr %4, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %84
  %87 = sitofp i32 %30 to float
  store float %87, ptr %4, align 4, !tbaa !69
  br label %88

88:                                               ; preds = %86, %84
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #14
  ret i64 %33
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @blf_font_width_to_rstrlen(ptr noundef %0, ptr noundef %1, i64 noundef %2, float noundef %3, ptr noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca %struct.FT_Vector_, align 8
  %7 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #14
  store i64 0, ptr %7, align 8, !tbaa !48
  %8 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %9, i64 0, i32 5
  %11 = fptosi float %3 to i32
  %12 = add nsw i32 %11, 1
  %13 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 22
  %14 = load ptr, ptr %13, align 8, !tbaa !38
  %15 = getelementptr inbounds %struct.FT_FaceRec_, ptr %14, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !50
  %17 = trunc i64 %16 to i8
  %18 = and i8 %17, 64
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %5
  %21 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 17
  %22 = load i32, ptr %21, align 8, !tbaa !56
  %23 = lshr i32 %22, 3
  %24 = and i32 %23, 1
  %25 = xor i32 %24, 1
  br label %26

26:                                               ; preds = %5, %20
  %27 = phi i32 [ %25, %20 ], [ 0, %5 ]
  %28 = tail call i64 @BLI_strnlen(ptr noundef %1, i64 noundef %2) #12
  %29 = icmp slt i32 %11, 1
  %30 = icmp eq i64 %28, 0
  %31 = select i1 %29, i1 true, i1 %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = icmp eq ptr %4, null
  br i1 %33, label %143, label %140

34:                                               ; preds = %26
  %35 = icmp ult i64 %28, 2048
  br i1 %35, label %36, label %39

36:                                               ; preds = %34
  %37 = shl nuw nsw i64 %28, 3
  %38 = alloca i8, i64 %37, align 16
  br label %43

39:                                               ; preds = %34
  %40 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %41 = shl i64 %28, 3
  %42 = tail call ptr %40(i64 noundef %41, ptr noundef nonnull @__func__.blf_font_width_to_rstrlen) #12
  br label %43

43:                                               ; preds = %39, %36
  %44 = phi ptr [ %38, %36 ], [ %42, %39 ]
  tail call fastcc void @blf_font_ensure_ascii_table(ptr noundef nonnull %0) #13
  %45 = icmp ne i8 %18, 0
  br label %46

46:                                               ; preds = %96, %43
  %47 = phi i64 [ %105, %96 ], [ 0, %43 ]
  %48 = phi i32 [ %100, %96 ], [ 0, %43 ]
  %49 = phi ptr [ %80, %96 ], [ null, %43 ]
  br label %50

50:                                               ; preds = %46, %76
  %51 = load i64, ptr %7, align 8, !tbaa !48
  %52 = icmp ult i64 %51, %28
  br i1 %52, label %53, label %106

53:                                               ; preds = %50
  %54 = getelementptr inbounds i8, ptr %1, i64 %51
  %55 = load i8, ptr %54, align 1, !tbaa !57
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %106, label %57

57:                                               ; preds = %53
  %58 = icmp sgt i8 %55, -1
  br i1 %58, label %59, label %64

59:                                               ; preds = %57
  %60 = zext nneg i8 %55 to i64
  %61 = getelementptr inbounds ptr, ptr %10, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !34
  %63 = add nuw i64 %51, 1
  store i64 %63, ptr %7, align 8, !tbaa !48
  br label %76

64:                                               ; preds = %57
  %65 = call i32 @BLI_str_utf8_as_unicode_step(ptr noundef nonnull %1, ptr noundef nonnull %7) #12
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %106, label %67

67:                                               ; preds = %64
  %68 = load ptr, ptr %8, align 8, !tbaa !47
  %69 = call ptr @blf_glyph_search(ptr noundef %68, i32 noundef %65) #12
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %79

71:                                               ; preds = %67
  %72 = load ptr, ptr %13, align 8, !tbaa !38
  %73 = zext i32 %65 to i64
  %74 = call i32 @FT_Get_Char_Index(ptr noundef %72, i64 noundef %73) #12
  %75 = call ptr @blf_glyph_add(ptr noundef nonnull %0, i32 noundef %74, i32 noundef %65) #12
  br label %76

76:                                               ; preds = %59, %71
  %77 = phi ptr [ %75, %71 ], [ %62, %59 ]
  %78 = icmp eq ptr %77, null
  br i1 %78, label %50, label %79, !llvm.loop !90

79:                                               ; preds = %67, %76
  %80 = phi ptr [ %77, %76 ], [ %69, %67 ]
  %81 = icmp ne ptr %49, null
  %82 = and i1 %45, %81
  br i1 %82, label %83, label %96

83:                                               ; preds = %79
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %84 = load ptr, ptr %13, align 8, !tbaa !38
  %85 = getelementptr inbounds %struct.GlyphBLF, ptr %49, i64 0, i32 3
  %86 = load i32, ptr %85, align 4, !tbaa !60
  %87 = getelementptr inbounds %struct.GlyphBLF, ptr %80, i64 0, i32 3
  %88 = load i32, ptr %87, align 4, !tbaa !60
  %89 = call i32 @FT_Get_Kerning(ptr noundef %84, i32 noundef %86, i32 noundef %88, i32 noundef %27, ptr noundef nonnull %6) #12
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %83
  %92 = load i64, ptr %6, align 8, !tbaa !62
  %93 = trunc i64 %92 to i32
  %94 = ashr i32 %93, 6
  %95 = add nsw i32 %94, %48
  br label %96

96:                                               ; preds = %91, %83, %79
  %97 = phi i32 [ %95, %91 ], [ %48, %83 ], [ %48, %79 ]
  %98 = getelementptr inbounds %struct.GlyphBLF, ptr %80, i64 0, i32 6
  %99 = load i32, ptr %98, align 4, !tbaa !64
  %100 = add nsw i32 %99, %97
  %101 = load i64, ptr %7, align 8, !tbaa !48
  %102 = trunc i64 %101 to i32
  %103 = getelementptr inbounds [2 x i32], ptr %44, i64 %47
  store i32 %102, ptr %103, align 4, !tbaa !91
  %104 = getelementptr inbounds [2 x i32], ptr %44, i64 %47, i64 1
  store i32 %100, ptr %104, align 4, !tbaa !91
  %105 = add nuw i64 %47, 1
  br label %46, !llvm.loop !90

106:                                              ; preds = %64, %50, %53
  %107 = icmp sgt i32 %48, %12
  %108 = and i64 %47, 4294967295
  %109 = icmp ne i64 %108, 0
  %110 = select i1 %107, i1 %109, i1 false
  br i1 %110, label %111, label %131

111:                                              ; preds = %106
  %112 = sub nsw i32 %48, %12
  br label %113

113:                                              ; preds = %116, %111
  %114 = phi i64 [ %117, %116 ], [ %47, %111 ]
  %115 = icmp sgt i64 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %113
  %117 = add nsw i64 %114, -1
  %118 = getelementptr inbounds [2 x i32], ptr %44, i64 %117, i64 1
  %119 = load i32, ptr %118, align 4, !tbaa !91
  %120 = icmp sgt i32 %112, %119
  br i1 %120, label %121, label %113, !llvm.loop !92

121:                                              ; preds = %116, %113
  %122 = phi i64 [ %114, %116 ], [ 0, %113 ]
  %123 = shl i64 %122, 32
  %124 = ashr exact i64 %123, 32
  %125 = getelementptr inbounds [2 x i32], ptr %44, i64 %124
  %126 = getelementptr inbounds [2 x i32], ptr %44, i64 %124, i64 1
  %127 = load i32, ptr %126, align 4, !tbaa !91
  %128 = sub nsw i32 %48, %127
  %129 = load i32, ptr %125, align 4, !tbaa !91
  %130 = sext i32 %129 to i64
  br label %131

131:                                              ; preds = %106, %121
  %132 = phi i64 [ %130, %121 ], [ 0, %106 ]
  %133 = phi i32 [ %128, %121 ], [ %48, %106 ]
  br i1 %35, label %136, label %134

134:                                              ; preds = %131
  %135 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %135(ptr noundef %44) #12
  br label %136

136:                                              ; preds = %134, %131
  %137 = icmp eq ptr %4, null
  br i1 %137, label %143, label %138

138:                                              ; preds = %136
  %139 = sitofp i32 %133 to float
  br label %140

140:                                              ; preds = %32, %138
  %141 = phi float [ %139, %138 ], [ 0.000000e+00, %32 ]
  %142 = phi i64 [ %132, %138 ], [ %28, %32 ]
  store float %141, ptr %4, align 4, !tbaa !69
  br label %143

143:                                              ; preds = %140, %136, %32
  %144 = phi i64 [ %28, %32 ], [ %132, %136 ], [ %142, %140 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #14
  ret i64 %144
}

; Function Attrs: optsize
declare i64 @BLI_strnlen(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @blf_font_boundbox(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.FT_Vector_, align 8
  %6 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  store i64 0, ptr %6, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.GlyphCacheBLF, ptr %8, i64 0, i32 5
  %10 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 22
  %11 = load ptr, ptr %10, align 8, !tbaa !38
  %12 = getelementptr inbounds %struct.FT_FaceRec_, ptr %11, i64 0, i32 2
  %13 = load i64, ptr %12, align 8, !tbaa !50
  %14 = trunc i64 %13 to i8
  %15 = and i8 %14, 64
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 17
  %19 = load i32, ptr %18, align 8, !tbaa !56
  %20 = lshr i32 %19, 3
  %21 = and i32 %20, 1
  %22 = xor i32 %21, 1
  br label %23

23:                                               ; preds = %4, %17
  %24 = phi i32 [ %22, %17 ], [ 0, %4 ]
  %25 = getelementptr inbounds %struct.rctf, ptr %3, i64 0, i32 1
  %26 = getelementptr inbounds %struct.rctf, ptr %3, i64 0, i32 2
  %27 = getelementptr inbounds %struct.rctf, ptr %3, i64 0, i32 3
  store <4 x float> <float 3.200000e+04, float -3.200000e+04, float 3.200000e+04, float -3.200000e+04>, ptr %3, align 4, !tbaa !69
  tail call fastcc void @blf_font_ensure_ascii_table(ptr noundef nonnull %0) #13
  %28 = icmp ne i8 %15, 0
  br label %29

29:                                               ; preds = %105, %23
  %30 = phi i32 [ %108, %105 ], [ 0, %23 ]
  %31 = phi ptr [ %62, %105 ], [ null, %23 ]
  br label %32

32:                                               ; preds = %29, %58
  %33 = load i64, ptr %6, align 8, !tbaa !48
  %34 = icmp ult i64 %33, %2
  br i1 %34, label %35, label %109

35:                                               ; preds = %32
  %36 = getelementptr inbounds i8, ptr %1, i64 %33
  %37 = load i8, ptr %36, align 1, !tbaa !57
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %109, label %39

39:                                               ; preds = %35
  %40 = icmp sgt i8 %37, -1
  br i1 %40, label %41, label %46

41:                                               ; preds = %39
  %42 = zext nneg i8 %37 to i64
  %43 = getelementptr inbounds ptr, ptr %9, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !34
  %45 = add nuw i64 %33, 1
  store i64 %45, ptr %6, align 8, !tbaa !48
  br label %58

46:                                               ; preds = %39
  %47 = call i32 @BLI_str_utf8_as_unicode_step(ptr noundef nonnull %1, ptr noundef nonnull %6) #12
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %109, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr %7, align 8, !tbaa !47
  %51 = call ptr @blf_glyph_search(ptr noundef %50, i32 noundef %47) #12
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %61

53:                                               ; preds = %49
  %54 = load ptr, ptr %10, align 8, !tbaa !38
  %55 = zext i32 %47 to i64
  %56 = call i32 @FT_Get_Char_Index(ptr noundef %54, i64 noundef %55) #12
  %57 = call ptr @blf_glyph_add(ptr noundef nonnull %0, i32 noundef %56, i32 noundef %47) #12
  br label %58

58:                                               ; preds = %41, %53
  %59 = phi ptr [ %57, %53 ], [ %44, %41 ]
  %60 = icmp eq ptr %59, null
  br i1 %60, label %32, label %61, !llvm.loop !93

61:                                               ; preds = %49, %58
  %62 = phi ptr [ %59, %58 ], [ %51, %49 ]
  %63 = icmp ne ptr %31, null
  %64 = and i1 %28, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %66 = load ptr, ptr %10, align 8, !tbaa !38
  %67 = getelementptr inbounds %struct.GlyphBLF, ptr %31, i64 0, i32 3
  %68 = load i32, ptr %67, align 4, !tbaa !60
  %69 = getelementptr inbounds %struct.GlyphBLF, ptr %62, i64 0, i32 3
  %70 = load i32, ptr %69, align 4, !tbaa !60
  %71 = call i32 @FT_Get_Kerning(ptr noundef %66, i32 noundef %68, i32 noundef %70, i32 noundef %24, ptr noundef nonnull %5) #12
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %65
  %74 = load i64, ptr %5, align 8, !tbaa !62
  %75 = trunc i64 %74 to i32
  %76 = ashr i32 %75, 6
  %77 = add nsw i32 %76, %30
  br label %78

78:                                               ; preds = %73, %65, %61
  %79 = phi i32 [ %77, %73 ], [ %30, %65 ], [ %30, %61 ]
  %80 = sitofp i32 %79 to float
  %81 = getelementptr inbounds %struct.GlyphBLF, ptr %62, i64 0, i32 5
  %82 = load float, ptr %81, align 8, !tbaa !94
  %83 = fadd float %82, %80
  %84 = getelementptr inbounds %struct.GlyphBLF, ptr %62, i64 0, i32 4, i32 2
  %85 = load float, ptr %84, align 8, !tbaa !95
  %86 = fadd float %85, 0.000000e+00
  %87 = getelementptr inbounds %struct.GlyphBLF, ptr %62, i64 0, i32 4, i32 3
  %88 = load float, ptr %87, align 4, !tbaa !96
  %89 = fadd float %88, 0.000000e+00
  %90 = load float, ptr %3, align 4, !tbaa !97
  %91 = fcmp ogt float %90, %80
  br i1 %91, label %92, label %93

92:                                               ; preds = %78
  store float %80, ptr %3, align 4, !tbaa !97
  br label %93

93:                                               ; preds = %92, %78
  %94 = load float, ptr %26, align 4, !tbaa !98
  %95 = fcmp olt float %86, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  store float %86, ptr %26, align 4, !tbaa !98
  br label %97

97:                                               ; preds = %96, %93
  %98 = load float, ptr %25, align 4, !tbaa !99
  %99 = fcmp ogt float %83, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  store float %83, ptr %25, align 4, !tbaa !99
  br label %101

101:                                              ; preds = %100, %97
  %102 = load float, ptr %27, align 4, !tbaa !100
  %103 = fcmp ogt float %89, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  store float %89, ptr %27, align 4, !tbaa !100
  br label %105

105:                                              ; preds = %104, %101
  %106 = getelementptr inbounds %struct.GlyphBLF, ptr %62, i64 0, i32 6
  %107 = load i32, ptr %106, align 4, !tbaa !64
  %108 = add nsw i32 %107, %79
  br label %29, !llvm.loop !93

109:                                              ; preds = %46, %32, %35
  %110 = load float, ptr %3, align 4, !tbaa !97
  %111 = load float, ptr %25, align 4, !tbaa !99
  %112 = fcmp ogt float %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  br label %114

114:                                              ; preds = %113, %109
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @blf_font_width_and_height(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca %struct.rctf, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #14
  %7 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 17
  %8 = load i32, ptr %7, align 8, !tbaa !56
  %9 = and i32 %8, 32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 2
  %13 = load float, ptr %12, align 8, !tbaa !69
  %14 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 2, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !69
  br label %16

16:                                               ; preds = %5, %11
  %17 = phi float [ %13, %11 ], [ 1.000000e+00, %5 ]
  %18 = phi float [ %15, %11 ], [ 1.000000e+00, %5 ]
  call void @blf_font_boundbox(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %6) #13
  %19 = call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %6) #13
  %20 = fmul float %17, %19
  store float %20, ptr %3, align 4, !tbaa !69
  %21 = call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %6) #13
  %22 = fmul float %18, %21
  store float %22, ptr %4, align 4, !tbaa !69
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_x(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !101 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 4, !tbaa !99
  %4 = load float, ptr %0, align 4, !tbaa !97
  %5 = fsub float %3, %4
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_y(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !102 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %3 = load float, ptr %2, align 4, !tbaa !100
  %4 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !98
  %6 = fsub float %3, %5
  ret float %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @blf_font_width(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.rctf, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #14
  %5 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 17
  %6 = load i32, ptr %5, align 8, !tbaa !56
  %7 = and i32 %6, 32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 2
  %11 = load float, ptr %10, align 8, !tbaa !69
  br label %12

12:                                               ; preds = %3, %9
  %13 = phi float [ %11, %9 ], [ 1.000000e+00, %3 ]
  call void @blf_font_boundbox(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4) #13
  %14 = call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %4) #13
  %15 = fmul float %13, %14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  ret float %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @blf_font_height(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.rctf, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #14
  %5 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 17
  %6 = load i32, ptr %5, align 8, !tbaa !56
  %7 = and i32 %6, 32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !69
  br label %12

12:                                               ; preds = %3, %9
  %13 = phi float [ %11, %9 ], [ 1.000000e+00, %3 ]
  call void @blf_font_boundbox(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4) #13
  %14 = call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %4) #13
  %15 = fmul float %13, %14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  ret float %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @blf_font_fixed_width(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = tail call ptr @blf_glyph_search(ptr noundef %3, i32 noundef 32) #12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 22
  %8 = load ptr, ptr %7, align 8, !tbaa !38
  %9 = tail call i32 @FT_Get_Char_Index(ptr noundef %8, i64 noundef 32) #12
  %10 = tail call ptr @blf_glyph_add(ptr noundef nonnull %0, i32 noundef %9, i32 noundef 32) #12
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %6, %1
  %13 = phi ptr [ %4, %1 ], [ %10, %6 ]
  %14 = getelementptr inbounds %struct.GlyphBLF, ptr %13, i64 0, i32 5
  %15 = load float, ptr %14, align 8, !tbaa !94
  br label %16

16:                                               ; preds = %6, %12
  %17 = phi float [ %15, %12 ], [ 0.000000e+00, %6 ]
  ret float %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @blf_font_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 19
  store ptr null, ptr %2, align 8, !tbaa !47
  %3 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 18
  %4 = tail call ptr @BLI_pophead(ptr noundef nonnull %3) #12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %1, %6
  %7 = phi ptr [ %8, %6 ], [ %4, %1 ]
  tail call void @blf_glyph_cache_free(ptr noundef nonnull %7) #12
  %8 = tail call ptr @BLI_pophead(ptr noundef nonnull %3) #12
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %6, !llvm.loop !103

10:                                               ; preds = %6, %1
  %11 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 22
  %12 = load ptr, ptr %11, align 8, !tbaa !38
  %13 = tail call i32 @FT_Done_Face(ptr noundef %12) #12
  %14 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !104
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %18(ptr noundef nonnull %15) #12
  br label %19

19:                                               ; preds = %17, %10
  %20 = load ptr, ptr %0, align 8, !tbaa !105
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %23(ptr noundef nonnull %20) #12
  br label %24

24:                                               ; preds = %22, %19
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %25(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_pophead(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @blf_glyph_cache_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @FT_Done_Face(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @blf_font_new(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 368, ptr noundef nonnull @.str.1) #12
  %5 = load ptr, ptr @ft_lib, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.FontBLF, ptr %4, i64 0, i32 22
  %7 = tail call i32 @FT_New_Face(ptr noundef %5, ptr noundef %1, i64 noundef 0, ptr noundef nonnull %6) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %10(ptr noundef %4) #12
  br label %36

11:                                               ; preds = %2
  %12 = load ptr, ptr %6, align 8, !tbaa !38
  %13 = tail call i32 @FT_Select_Charmap(ptr noundef %12, i32 noundef 1970170211) #12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.5)
  %17 = load ptr, ptr %6, align 8, !tbaa !38
  %18 = tail call i32 @FT_Done_Face(ptr noundef %17) #12
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %19(ptr noundef nonnull %4) #12
  br label %36

20:                                               ; preds = %11
  %21 = tail call ptr @blf_dir_metrics_search(ptr noundef %1) #12
  %22 = icmp eq ptr %21, null
  br i1 %22, label %32, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %6, align 8, !tbaa !38
  %25 = tail call i32 @FT_Attach_File(ptr noundef %24, ptr noundef nonnull %21) #12
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !tbaa !34
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef nonnull @.str.3, ptr noundef %1, i32 noundef %25) #15
  br label %30

30:                                               ; preds = %27, %23
  %31 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %31(ptr noundef nonnull %21) #12
  br label %32

32:                                               ; preds = %30, %20
  %33 = tail call ptr @BLI_strdup(ptr noundef %0) #12
  store ptr %33, ptr %4, align 8, !tbaa !105
  %34 = tail call ptr @BLI_strdup(ptr noundef %1) #12
  %35 = getelementptr inbounds %struct.FontBLF, ptr %4, i64 0, i32 1
  store ptr %34, ptr %35, align 8, !tbaa !104
  tail call fastcc void @blf_font_fill(ptr noundef nonnull %4) #13
  br label %36

36:                                               ; preds = %32, %15, %9
  %37 = phi ptr [ null, %9 ], [ null, %15 ], [ %4, %32 ]
  ret ptr %37
}

; Function Attrs: optsize
declare i32 @FT_New_Face(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @FT_Select_Charmap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @blf_dir_metrics_search(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @FT_Attach_File(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_strdup(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable
define internal fastcc void @blf_font_fill(ptr nocapture noundef writeonly %0) unnamed_addr #7 !PGOFuncName !106 {
  %2 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 2
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %2, align 8, !tbaa !69
  %3 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 3, i64 1
  store float 0.000000e+00, ptr %3, align 4, !tbaa !69
  %4 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 4
  store float 0.000000e+00, ptr %4, align 8, !tbaa !107
  %5 = getelementptr i8, ptr %0, i64 96
  %6 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 17
  store i32 0, ptr %6, align 8, !tbaa !56
  %7 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %5, i8 0, i64 152, i1 false)
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %7) #13
  %8 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 19
  store ptr null, ptr %8, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 5
  store i32 0, ptr %9, align 4, !tbaa !108
  %10 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 15
  store i32 -1, ptr %10, align 8, !tbaa !109
  %11 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 23
  %12 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 23, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %11, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  %13 = load ptr, ptr @ft_lib, align 8, !tbaa !34
  %14 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 20
  store ptr %13, ptr %14, align 8, !tbaa !110
  %15 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 21
  store ptr @ft_lib_mutex, ptr %15, align 8, !tbaa !111
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @blf_font_attach_from_mem(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.FT_Open_Args_, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #14
  store i32 1, ptr %4, align 8, !tbaa !112
  %5 = getelementptr inbounds %struct.FT_Open_Args_, ptr %4, i64 0, i32 1
  store ptr %1, ptr %5, align 8, !tbaa !114
  %6 = sext i32 %2 to i64
  %7 = getelementptr inbounds %struct.FT_Open_Args_, ptr %4, i64 0, i32 2
  store i64 %6, ptr %7, align 8, !tbaa !115
  %8 = getelementptr inbounds %struct.FontBLF, ptr %0, i64 0, i32 22
  %9 = load ptr, ptr %8, align 8, !tbaa !38
  %10 = call i32 @FT_Attach_Stream(ptr noundef %9, ptr noundef nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #14
  ret void
}

; Function Attrs: optsize
declare i32 @FT_Attach_Stream(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @blf_font_new_from_mem(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %5 = tail call ptr %4(i64 noundef 368, ptr noundef nonnull @.str.4) #12
  %6 = load ptr, ptr @ft_lib, align 8, !tbaa !34
  %7 = sext i32 %2 to i64
  %8 = getelementptr inbounds %struct.FontBLF, ptr %5, i64 0, i32 22
  %9 = tail call i32 @FT_New_Memory_Face(ptr noundef %6, ptr noundef %1, i64 noundef %7, i64 noundef 0, ptr noundef nonnull %8) #12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %12(ptr noundef %5) #12
  br label %25

13:                                               ; preds = %3
  %14 = load ptr, ptr %8, align 8, !tbaa !38
  %15 = tail call i32 @FT_Select_Charmap(ptr noundef %14, i32 noundef 1970170211) #12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.5)
  %19 = load ptr, ptr %8, align 8, !tbaa !38
  %20 = tail call i32 @FT_Done_Face(ptr noundef %19) #12
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %21(ptr noundef nonnull %5) #12
  br label %25

22:                                               ; preds = %13
  %23 = tail call ptr @BLI_strdup(ptr noundef %0) #12
  store ptr %23, ptr %5, align 8, !tbaa !105
  %24 = getelementptr inbounds %struct.FontBLF, ptr %5, i64 0, i32 1
  store ptr null, ptr %24, align 8, !tbaa !104
  tail call fastcc void @blf_font_fill(ptr noundef nonnull %5) #13
  br label %25

25:                                               ; preds = %22, %17, %11
  %26 = phi ptr [ null, %11 ], [ null, %17 ], [ %5, %22 ]
  ret ptr %26
}

; Function Attrs: optsize
declare i32 @FT_New_Memory_Face(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @srgb_to_linearrgb_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !116 {
  %3 = load float, ptr %1, align 4, !tbaa !69
  %4 = tail call float @srgb_to_linearrgb(float noundef %3) #12
  store float %4, ptr %0, align 4, !tbaa !69
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !69
  %7 = tail call float @srgb_to_linearrgb(float noundef %6) #12
  %8 = getelementptr inbounds float, ptr %0, i64 1
  store float %7, ptr %8, align 4, !tbaa !69
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !69
  %11 = tail call float @srgb_to_linearrgb(float noundef %10) #12
  %12 = getelementptr inbounds float, ptr %0, i64 2
  store float %11, ptr %12, align 4, !tbaa !69
  ret void
}

; Function Attrs: optsize
declare float @srgb_to_linearrgb(float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #8 !PGOFuncName !117 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind optsize }
attributes #13 = { optsize }
attributes #14 = { nounwind }
attributes #15 = { cold optsize }

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
!38 = !{!39, !35, i64 304}
!39 = !{!"FontBLF", !35, i64 0, !35, i64 8, !36, i64 16, !36, i64 28, !40, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !36, i64 60, !36, i64 76, !36, i64 96, !42, i64 224, !41, i64 240, !41, i64 244, !41, i64 248, !41, i64 252, !41, i64 256, !43, i64 264, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !44, i64 312}
!40 = !{!"float", !36, i64 0}
!41 = !{!"int", !36, i64 0}
!42 = !{!"rctf", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!43 = !{!"ListBase", !35, i64 0, !35, i64 8}
!44 = !{!"FontBufInfoBLF", !35, i64 0, !35, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !35, i64 32, !36, i64 40}
!45 = !{!39, !41, i64 244}
!46 = !{!39, !41, i64 240}
!47 = !{!39, !35, i64 280}
!48 = !{!49, !49, i64 0}
!49 = !{!"long", !36, i64 0}
!50 = !{!51, !49, i64 16}
!51 = !{!"FT_FaceRec_", !49, i64 0, !49, i64 8, !49, i64 16, !49, i64 24, !49, i64 32, !35, i64 40, !35, i64 48, !41, i64 56, !35, i64 64, !41, i64 72, !35, i64 80, !52, i64 88, !53, i64 104, !54, i64 136, !54, i64 138, !54, i64 140, !54, i64 142, !54, i64 144, !54, i64 146, !54, i64 148, !54, i64 150, !35, i64 152, !35, i64 160, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192, !55, i64 200, !52, i64 216, !35, i64 232, !35, i64 240}
!52 = !{!"FT_Generic_", !35, i64 0, !35, i64 8}
!53 = !{!"FT_BBox_", !49, i64 0, !49, i64 8, !49, i64 16, !49, i64 24}
!54 = !{!"short", !36, i64 0}
!55 = !{!"FT_ListRec_", !35, i64 0, !35, i64 8}
!56 = !{!39, !41, i64 256}
!57 = !{!36, !36, i64 0}
!58 = distinct !{!58, !59}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!61, !41, i64 20}
!61 = !{!"GlyphBLF", !35, i64 0, !35, i64 8, !41, i64 16, !41, i64 20, !42, i64 24, !40, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !35, i64 64, !41, i64 72, !41, i64 76, !41, i64 80, !36, i64 84, !40, i64 100, !40, i64 104, !54, i64 108}
!62 = !{!63, !49, i64 0}
!63 = !{!"FT_Vector_", !49, i64 0, !49, i64 8}
!64 = !{!61, !41, i64 44}
!65 = !{!"blf_font.c:blf_font_ensure_ascii_table"}
!66 = distinct !{!66, !59}
!67 = distinct !{!67, !59}
!68 = distinct !{!68, !59}
!69 = !{!40, !40, i64 0}
!70 = !{!44, !35, i64 32}
!71 = distinct !{!71, !59}
!72 = !{!61, !40, i64 100}
!73 = !{!61, !41, i64 76}
!74 = !{!61, !41, i64 80}
!75 = !{!61, !40, i64 104}
!76 = !{!61, !41, i64 72}
!77 = !{!44, !41, i64 16}
!78 = !{!44, !41, i64 20}
!79 = !{!44, !35, i64 0}
!80 = !{!61, !35, i64 64}
!81 = !{!44, !41, i64 24}
!82 = distinct !{!82, !59}
!83 = distinct !{!83, !59}
!84 = !{!44, !35, i64 8}
!85 = distinct !{!85, !59}
!86 = distinct !{!86, !59}
!87 = !{!"blf_font.c:copy_v4_v4"}
!88 = !{!"blf_font.c:srgb_to_linearrgb_v4"}
!89 = distinct !{!89, !59}
!90 = distinct !{!90, !59}
!91 = !{!41, !41, i64 0}
!92 = distinct !{!92, !59}
!93 = distinct !{!93, !59}
!94 = !{!61, !40, i64 40}
!95 = !{!61, !40, i64 32}
!96 = !{!61, !40, i64 36}
!97 = !{!42, !40, i64 0}
!98 = !{!42, !40, i64 8}
!99 = !{!42, !40, i64 4}
!100 = !{!42, !40, i64 12}
!101 = !{!"blf_font.c:BLI_rctf_size_x"}
!102 = !{!"blf_font.c:BLI_rctf_size_y"}
!103 = distinct !{!103, !59}
!104 = !{!39, !35, i64 8}
!105 = !{!39, !35, i64 0}
!106 = !{!"blf_font.c:blf_font_fill"}
!107 = !{!39, !40, i64 40}
!108 = !{!39, !41, i64 44}
!109 = !{!39, !41, i64 248}
!110 = !{!39, !35, i64 288}
!111 = !{!39, !35, i64 296}
!112 = !{!113, !41, i64 0}
!113 = !{!"FT_Open_Args_", !41, i64 0, !35, i64 8, !49, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !41, i64 48, !35, i64 56}
!114 = !{!113, !35, i64 8}
!115 = !{!113, !49, i64 16}
!116 = !{!"blf_font.c:srgb_to_linearrgb_v3_v3"}
!117 = !{!"blf_font.c:BLI_listbase_clear"}
