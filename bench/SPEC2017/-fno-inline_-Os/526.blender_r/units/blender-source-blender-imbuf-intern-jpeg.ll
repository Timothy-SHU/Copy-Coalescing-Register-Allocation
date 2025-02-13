; ModuleID = 'blender/source/blender/imbuf/intern/jpeg.c'
source_filename = "blender/source/blender/imbuf/intern/jpeg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i8, i8, i32, i32, i32, i8, i32, ptr, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.my_error_mgr = type { %struct.jpeg_error_mgr, [1 x %struct.__jmp_buf_tag] }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.jpeg_source_mgr = type { ptr, i64, ptr, ptr, ptr, ptr, ptr }
%struct.my_source_mgr = type { %struct.jpeg_source_mgr, ptr, i32, [2 x i8] }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64 }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.jpeg_marker_struct = type { ptr, i8, i32, i32, ptr }
%struct.jpeg_compress_struct = type { ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.ImMetaData = type { ptr, ptr, ptr, ptr, i32 }

@ibuf_ftype = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Blender\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"NeoGeo\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@jpeg_default_quality = internal unnamed_addr global i32 0, align 4
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"stamp info read\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Blender:%s:%s\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"jpeg row_pointer\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"%s.jf0\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"%s.jf1\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @imb_is_a_jpeg(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1, !tbaa !34
  %3 = icmp eq i8 %2, -1
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = getelementptr inbounds i8, ptr %0, i64 1
  %6 = load i8, ptr %5, align 1, !tbaa !34
  %7 = icmp eq i8 %6, -40
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %1
  br label %9

9:                                                ; preds = %4, %8
  %10 = phi i32 [ 0, %8 ], [ 1, %4 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @imb_load_jpeg(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #1 {
  %5 = alloca %struct.jpeg_decompress_struct, align 8
  %6 = alloca %struct.my_error_mgr, align 8
  call void @llvm.lifetime.start.p0(i64 632, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 368, ptr nonnull %6) #15
  %7 = call i32 @imb_is_a_jpeg(ptr noundef %0) #16, !range !37
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %4
  call void @colorspace_set_default_role(ptr noundef %3, i32 noundef 64, i32 noundef 4) #17
  %10 = call ptr (ptr, ...) @jpeg_std_error(ptr noundef nonnull %6) #17
  store ptr %10, ptr %5, align 8, !tbaa !38
  store ptr @jpeg_error, ptr %6, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct.my_error_mgr, ptr %6, i64 0, i32 1
  %12 = call i32 @_setjmp(ptr noundef nonnull %11) #18
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  call void (ptr, ...) @jpeg_destroy_decompress(ptr noundef nonnull %5) #17
  br label %17

15:                                               ; preds = %9
  call void (ptr, i32, i64, ...) @jpeg_CreateDecompress(ptr noundef nonnull %5, i32 noundef 62, i64 noundef 632) #17
  call fastcc void @memory_source(ptr noundef nonnull %5, ptr noundef %0, i64 noundef %1) #16
  %16 = call fastcc ptr @ibJpegImageFromCinfo(ptr noundef nonnull %5, i32 noundef %2) #16
  br label %17

17:                                               ; preds = %4, %15, %14
  %18 = phi ptr [ null, %14 ], [ %16, %15 ], [ null, %4 ]
  call void @llvm.lifetime.end.p0(i64 368, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 632, ptr nonnull %5) #15
  ret ptr %18
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare void @colorspace_set_default_role(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @jpeg_std_error(...) local_unnamed_addr #3

; Function Attrs: noinline noreturn nounwind optsize uwtable
define internal void @jpeg_error(ptr noundef %0) #4 !PGOFuncName !47 {
  %2 = load ptr, ptr %0, align 8, !tbaa !48
  %3 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  tail call void (ptr, ...) %4(ptr noundef nonnull %0) #17
  tail call void (ptr, ...) @jpeg_destroy(ptr noundef nonnull %0) #17
  %5 = getelementptr inbounds %struct.my_error_mgr, ptr %2, i64 0, i32 1
  tail call void @longjmp(ptr noundef nonnull %5, i32 noundef 1) #19
  unreachable
}

; Function Attrs: nounwind optsize returns_twice
declare i32 @_setjmp(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @jpeg_destroy_decompress(...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @jpeg_CreateDecompress(...) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @memory_source(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #1 !PGOFuncName !51 {
  %4 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !53
  %10 = load ptr, ptr %9, align 8, !tbaa !54
  %11 = tail call ptr (ptr, i32, i64, ...) %10(ptr noundef nonnull %0, i32 noundef 0, i64 noundef 72) #17
  store ptr %11, ptr %4, align 8, !tbaa !52
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi ptr [ %11, %7 ], [ %5, %3 ]
  %14 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %13, i64 0, i32 2
  store ptr @init_source, ptr %14, align 8, !tbaa !56
  %15 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %13, i64 0, i32 3
  store ptr @fill_input_buffer, ptr %15, align 8, !tbaa !59
  %16 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %13, i64 0, i32 4
  store ptr @skip_input_data, ptr %16, align 8, !tbaa !60
  %17 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %13, i64 0, i32 5
  store ptr @jpeg_resync_to_restart, ptr %17, align 8, !tbaa !61
  %18 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %13, i64 0, i32 6
  store ptr @term_source, ptr %18, align 8, !tbaa !62
  %19 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %13, i64 0, i32 1
  store i64 %2, ptr %19, align 8, !tbaa !63
  store ptr %1, ptr %13, align 8, !tbaa !64
  %20 = getelementptr inbounds %struct.my_source_mgr, ptr %13, i64 0, i32 1
  store ptr %1, ptr %20, align 8, !tbaa !65
  %21 = trunc i64 %2 to i32
  %22 = getelementptr inbounds %struct.my_source_mgr, ptr %13, i64 0, i32 2
  store i32 %21, ptr %22, align 8, !tbaa !66
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ibJpegImageFromCinfo(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !PGOFuncName !67 {
  store i32 0, ptr @ibuf_ftype, align 4, !tbaa !68
  tail call void (ptr, i32, ptr, ...) @jpeg_set_marker_processor(ptr noundef %0, i32 noundef 225, ptr noundef nonnull @handle_app1) #17
  %3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 17
  store i32 2, ptr %3, align 8, !tbaa !69
  tail call void (ptr, i32, i32, ...) @jpeg_save_markers(ptr noundef %0, i32 noundef 254, i32 noundef 65535) #17
  %4 = tail call i32 (ptr, i32, ...) @jpeg_read_header(ptr noundef %0, i32 noundef 0) #17
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %187

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !70
  %9 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 8
  %10 = load i32, ptr %9, align 4, !tbaa !71
  %11 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !72
  %13 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 10
  %14 = load i32, ptr %13, align 4, !tbaa !73
  %15 = icmp eq i32 %14, 5
  br i1 %15, label %16, label %18

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 11
  store i32 4, ptr %17, align 8, !tbaa !74
  br label %18

18:                                               ; preds = %16, %6
  %19 = tail call i32 (ptr, ...) @jpeg_start_decompress(ptr noundef nonnull %0) #17
  %20 = load i32, ptr @ibuf_ftype, align 4, !tbaa !68
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  store i32 134217728, ptr @ibuf_ftype, align 4, !tbaa !68
  %23 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 62
  %24 = load i32, ptr %23, align 4, !tbaa !75
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 61
  %28 = load i32, ptr %27, align 8, !tbaa !76
  %29 = icmp eq i32 %28, 1
  %30 = select i1 %29, i32 134218496, i32 134217984
  store i32 %30, ptr @ibuf_ftype, align 4, !tbaa !68
  br label %31

31:                                               ; preds = %26, %22, %18
  %32 = and i32 %1, 2
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  tail call void (ptr, ...) @jpeg_abort_decompress(ptr noundef nonnull %0) #17
  %35 = trunc i32 %12 to i8
  %36 = shl i8 %35, 3
  %37 = tail call ptr @IMB_allocImBuf(i32 noundef %8, i32 noundef %10, i8 noundef zeroext %36, i32 noundef 0) #17
  br label %181

38:                                               ; preds = %31
  %39 = trunc i32 %12 to i8
  %40 = shl i8 %39, 3
  %41 = tail call ptr @IMB_allocImBuf(i32 noundef %8, i32 noundef %10, i8 noundef zeroext %40, i32 noundef 1) #17
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  tail call void (ptr, ...) @jpeg_abort_decompress(ptr noundef nonnull %0) #17
  tail call void (ptr, ...) @jpeg_destroy(ptr noundef nonnull %0) #17
  br label %187

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 27
  %46 = load i32, ptr %45, align 8, !tbaa !77
  %47 = mul i32 %46, %12
  %48 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !53
  %50 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %49, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !78
  %52 = tail call ptr (ptr, i32, i32, i32, ...) %51(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %47, i32 noundef 1) #17
  %53 = getelementptr inbounds %struct.ImBuf, ptr %41, i64 0, i32 3
  %54 = load i32, ptr %53, align 4, !tbaa !79
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %139

56:                                               ; preds = %44
  %57 = getelementptr inbounds %struct.ImBuf, ptr %41, i64 0, i32 8
  %58 = getelementptr inbounds %struct.ImBuf, ptr %41, i64 0, i32 2
  br label %59

59:                                               ; preds = %56, %137
  %60 = phi i32 [ %54, %56 ], [ %61, %137 ]
  %61 = add nsw i32 %60, -1
  %62 = tail call i32 (ptr, ptr, i32, ...) @jpeg_read_scanlines(ptr noundef %0, ptr noundef %52, i32 noundef 1) #17
  %63 = load ptr, ptr %57, align 8, !tbaa !84
  %64 = load i32, ptr %58, align 8, !tbaa !85
  %65 = mul nsw i32 %64, %61
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, ptr %63, i64 %66
  %68 = load ptr, ptr %52, align 8, !tbaa !86
  switch i32 %12, label %137 [
    i32 1, label %73
    i32 3, label %71
    i32 4, label %69
  ]

69:                                               ; preds = %59
  %70 = icmp sgt i32 %64, 0
  br i1 %70, label %103, label %137

71:                                               ; preds = %59
  %72 = icmp sgt i32 %64, 0
  br i1 %72, label %87, label %137

73:                                               ; preds = %59
  %74 = icmp sgt i32 %64, 0
  br i1 %74, label %75, label %137

75:                                               ; preds = %73, %75
  %76 = phi ptr [ %80, %75 ], [ %68, %73 ]
  %77 = phi ptr [ %84, %75 ], [ %67, %73 ]
  %78 = phi i32 [ %85, %75 ], [ %64, %73 ]
  %79 = getelementptr inbounds i8, ptr %77, i64 3
  store i8 -1, ptr %79, align 1, !tbaa !34
  %80 = getelementptr inbounds i8, ptr %76, i64 1
  %81 = load i8, ptr %76, align 1, !tbaa !34
  %82 = getelementptr inbounds i8, ptr %77, i64 2
  store i8 %81, ptr %82, align 1, !tbaa !34
  %83 = getelementptr inbounds i8, ptr %77, i64 1
  store i8 %81, ptr %83, align 1, !tbaa !34
  store i8 %81, ptr %77, align 1, !tbaa !34
  %84 = getelementptr inbounds i8, ptr %77, i64 4
  %85 = add nsw i32 %78, -1
  %86 = icmp ugt i32 %78, 1
  br i1 %86, label %75, label %137, !llvm.loop !87

87:                                               ; preds = %71, %87
  %88 = phi ptr [ %97, %87 ], [ %68, %71 ]
  %89 = phi ptr [ %100, %87 ], [ %67, %71 ]
  %90 = phi i32 [ %101, %87 ], [ %64, %71 ]
  %91 = getelementptr inbounds i8, ptr %89, i64 3
  store i8 -1, ptr %91, align 1, !tbaa !34
  %92 = getelementptr inbounds i8, ptr %88, i64 1
  %93 = load i8, ptr %88, align 1, !tbaa !34
  store i8 %93, ptr %89, align 1, !tbaa !34
  %94 = getelementptr inbounds i8, ptr %88, i64 2
  %95 = load i8, ptr %92, align 1, !tbaa !34
  %96 = getelementptr inbounds i8, ptr %89, i64 1
  store i8 %95, ptr %96, align 1, !tbaa !34
  %97 = getelementptr inbounds i8, ptr %88, i64 3
  %98 = load i8, ptr %94, align 1, !tbaa !34
  %99 = getelementptr inbounds i8, ptr %89, i64 2
  store i8 %98, ptr %99, align 1, !tbaa !34
  %100 = getelementptr inbounds i8, ptr %89, i64 4
  %101 = add nsw i32 %90, -1
  %102 = icmp ugt i32 %90, 1
  br i1 %102, label %87, label %137, !llvm.loop !89

103:                                              ; preds = %69, %103
  %104 = phi ptr [ %116, %103 ], [ %68, %69 ]
  %105 = phi ptr [ %134, %103 ], [ %67, %69 ]
  %106 = phi i32 [ %135, %103 ], [ %64, %69 ]
  %107 = getelementptr inbounds i8, ptr %104, i64 1
  %108 = load i8, ptr %104, align 1, !tbaa !34
  %109 = zext i8 %108 to i32
  %110 = getelementptr inbounds i8, ptr %104, i64 2
  %111 = load i8, ptr %107, align 1, !tbaa !34
  %112 = zext i8 %111 to i32
  %113 = getelementptr inbounds i8, ptr %104, i64 3
  %114 = load i8, ptr %110, align 1, !tbaa !34
  %115 = zext i8 %114 to i32
  %116 = getelementptr inbounds i8, ptr %104, i64 4
  %117 = load i8, ptr %113, align 1, !tbaa !34
  %118 = zext i8 %117 to i32
  %119 = mul nuw nsw i32 %118, %109
  %120 = trunc i32 %119 to i16
  %121 = udiv i16 %120, 255
  %122 = mul nuw nsw i32 %118, %112
  %123 = trunc i32 %122 to i16
  %124 = udiv i16 %123, 255
  %125 = mul nuw nsw i32 %118, %115
  %126 = trunc i32 %125 to i16
  %127 = udiv i16 %126, 255
  %128 = getelementptr inbounds i8, ptr %105, i64 3
  store i8 -1, ptr %128, align 1, !tbaa !34
  %129 = trunc i16 %127 to i8
  %130 = getelementptr inbounds i8, ptr %105, i64 2
  store i8 %129, ptr %130, align 1, !tbaa !34
  %131 = trunc i16 %124 to i8
  %132 = getelementptr inbounds i8, ptr %105, i64 1
  store i8 %131, ptr %132, align 1, !tbaa !34
  %133 = trunc i16 %121 to i8
  store i8 %133, ptr %105, align 1, !tbaa !34
  %134 = getelementptr inbounds i8, ptr %105, i64 4
  %135 = add nsw i32 %106, -1
  %136 = icmp ugt i32 %106, 1
  br i1 %136, label %103, label %137, !llvm.loop !90

137:                                              ; preds = %103, %87, %75, %69, %71, %73, %59
  %138 = icmp sgt i32 %60, 1
  br i1 %138, label %59, label %139, !llvm.loop !91

139:                                              ; preds = %137, %44
  %140 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 60
  %141 = load ptr, ptr %140, align 8, !tbaa !86
  %142 = icmp eq ptr %141, null
  br i1 %142, label %179, label %143

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.ImBuf, ptr %41, i64 0, i32 6
  br label %145

145:                                              ; preds = %143, %176
  %146 = phi ptr [ %141, %143 ], [ %177, %176 ]
  %147 = getelementptr inbounds %struct.jpeg_marker_struct, ptr %146, i64 0, i32 1
  %148 = load i8, ptr %147, align 8, !tbaa !92
  %149 = icmp eq i8 %148, -2
  br i1 %149, label %150, label %176

150:                                              ; preds = %145
  %151 = getelementptr inbounds %struct.jpeg_marker_struct, ptr %146, i64 0, i32 4
  %152 = load ptr, ptr %151, align 8, !tbaa !94
  %153 = getelementptr inbounds %struct.jpeg_marker_struct, ptr %146, i64 0, i32 3
  %154 = load i32, ptr %153, align 8, !tbaa !95
  %155 = zext i32 %154 to i64
  %156 = tail call ptr @BLI_strdupn(ptr noundef %152, i64 noundef %155) #17
  %157 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %156, ptr noundef nonnull dereferenceable(8) @.str, i64 noundef 7) #20
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %161, label %159

159:                                              ; preds = %150
  %160 = tail call zeroext i8 @IMB_metadata_add_field(ptr noundef nonnull %41, ptr noundef nonnull @.str.1, ptr noundef %156) #17
  br label %171

161:                                              ; preds = %150
  %162 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %156, i32 noundef 58) #20
  %163 = icmp eq ptr %162, null
  br i1 %163, label %174, label %164

164:                                              ; preds = %161
  %165 = getelementptr inbounds i8, ptr %162, i64 1
  %166 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %165, i32 noundef 58) #20
  %167 = icmp eq ptr %166, null
  br i1 %167, label %174, label %168

168:                                              ; preds = %164
  store i8 0, ptr %166, align 1, !tbaa !34
  %169 = getelementptr inbounds i8, ptr %166, i64 1
  %170 = tail call zeroext i8 @IMB_metadata_add_field(ptr noundef nonnull %41, ptr noundef nonnull %165, ptr noundef nonnull %169) #17
  br label %171

171:                                              ; preds = %168, %159
  %172 = load i32, ptr %144, align 8, !tbaa !96
  %173 = or i32 %172, 256
  store i32 %173, ptr %144, align 8, !tbaa !96
  br label %174

174:                                              ; preds = %171, %164, %161
  %175 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  tail call void %175(ptr noundef %156) #17
  br label %176

176:                                              ; preds = %174, %145
  %177 = load ptr, ptr %146, align 8, !tbaa !86
  %178 = icmp eq ptr %177, null
  br i1 %178, label %179, label %145, !llvm.loop !97

179:                                              ; preds = %176, %139
  %180 = tail call i32 (ptr, ...) @jpeg_finish_decompress(ptr noundef %0) #17
  br label %181

181:                                              ; preds = %179, %34
  %182 = phi ptr [ %37, %34 ], [ %41, %179 ]
  tail call void (ptr, ...) @jpeg_destroy(ptr noundef %0) #17
  %183 = icmp eq ptr %182, null
  br i1 %183, label %187, label %184

184:                                              ; preds = %181
  %185 = load i32, ptr @ibuf_ftype, align 4, !tbaa !68
  %186 = getelementptr inbounds %struct.ImBuf, ptr %182, i64 0, i32 26
  store i32 %185, ptr %186, align 8, !tbaa !98
  br label %187

187:                                              ; preds = %43, %181, %184, %2
  %188 = phi ptr [ %182, %184 ], [ null, %181 ], [ null, %2 ], [ null, %43 ]
  ret ptr %188
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @imb_savejpeg(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 6
  store i32 %2, ptr %4, align 8, !tbaa !96
  %5 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 26
  %6 = load i32, ptr %5, align 8, !tbaa !98
  %7 = and i32 %6, -256
  switch i32 %7, label %14 [
    i32 134217728, label %8
    i32 134218240, label %10
    i32 134218496, label %12
  ]

8:                                                ; preds = %3
  %9 = tail call fastcc i32 @save_stdjpeg(ptr noundef %1, ptr noundef nonnull %0) #16, !range !37
  br label %16

10:                                               ; preds = %3
  %11 = tail call fastcc i32 @save_jstjpeg(ptr noundef %1, ptr noundef nonnull %0) #16, !range !37
  br label %16

12:                                               ; preds = %3
  %13 = tail call fastcc i32 @save_maxjpeg(ptr noundef %1, ptr noundef nonnull %0) #16, !range !37
  br label %16

14:                                               ; preds = %3
  %15 = tail call fastcc i32 @save_vidjpeg(ptr noundef %1, ptr noundef nonnull %0) #16, !range !37
  br label %16

16:                                               ; preds = %14, %12, %10, %8
  %17 = phi i32 [ %9, %8 ], [ %11, %10 ], [ %13, %12 ], [ %15, %14 ]
  ret i32 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @save_stdjpeg(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !PGOFuncName !99 {
  %3 = alloca %struct.jpeg_compress_struct, align 8
  %4 = alloca %struct.my_error_mgr, align 8
  call void @llvm.lifetime.start.p0(i64 528, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 368, ptr nonnull %4) #15
  %5 = call ptr @BLI_fopen(ptr noundef %0, ptr noundef nonnull @.str.3) #17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %2
  store i32 75, ptr @jpeg_default_quality, align 4, !tbaa !68
  %8 = call ptr (ptr, ...) @jpeg_std_error(ptr noundef nonnull %4) #17
  store ptr %8, ptr %3, align 8, !tbaa !100
  store ptr @jpeg_error, ptr %4, align 8, !tbaa !43
  %9 = getelementptr inbounds %struct.my_error_mgr, ptr %4, i64 0, i32 1
  %10 = call i32 @_setjmp(ptr noundef nonnull %9) #18
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  call void (ptr, ...) @jpeg_destroy_compress(ptr noundef nonnull %3) #17
  %13 = call i32 @fclose(ptr noundef nonnull %5) #16
  %14 = call i32 @remove(ptr noundef %0) #17
  br label %17

15:                                               ; preds = %7
  call fastcc void @init_jpeg(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef %1) #16
  call fastcc void @write_jpeg(ptr noundef nonnull %3, ptr noundef %1) #16
  %16 = call i32 @fclose(ptr noundef nonnull %5) #16
  call void (ptr, ...) @jpeg_destroy_compress(ptr noundef nonnull %3) #17
  br label %17

17:                                               ; preds = %2, %15, %12
  %18 = phi i32 [ 0, %12 ], [ 1, %15 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 368, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 528, ptr nonnull %3) #15
  ret i32 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @save_jstjpeg(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !PGOFuncName !102 {
  %3 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #15
  %4 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !85
  %6 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !79
  %8 = sdiv i32 %7, 2
  %9 = tail call ptr @IMB_allocImBuf(i32 noundef %5, i32 noundef %8, i8 noundef zeroext 24, i32 noundef 1) #17
  %10 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 26
  %11 = load i32, ptr %10, align 8, !tbaa !98
  %12 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 26
  store i32 %11, ptr %12, align 8, !tbaa !98
  %13 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 6
  %14 = load i32, ptr %13, align 8, !tbaa !96
  %15 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 6
  store i32 %14, ptr %15, align 8, !tbaa !96
  %16 = load i32, ptr %6, align 4, !tbaa !79
  %17 = load i32, ptr %4, align 8, !tbaa !85
  %18 = shl nsw i32 %17, 1
  store i32 %18, ptr %4, align 8, !tbaa !85
  %19 = sdiv i32 %16, 2
  store i32 %19, ptr %6, align 4, !tbaa !79
  tail call void @IMB_rectcpy(ptr noundef %9, ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %18, i32 noundef %19) #17
  %20 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef %0) #17
  %21 = call fastcc i32 @save_vidjpeg(ptr noundef nonnull %3, ptr noundef %9) #16, !range !37
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !85
  %26 = load i32, ptr %4, align 8, !tbaa !85
  %27 = load i32, ptr %6, align 4, !tbaa !79
  call void @IMB_rectcpy(ptr noundef nonnull %9, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 0, i32 noundef %25, i32 noundef 0, i32 noundef %26, i32 noundef %27) #17
  %28 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef %0) #17
  %29 = call fastcc i32 @save_vidjpeg(ptr noundef nonnull %3, ptr noundef nonnull %9) #16, !range !37
  br label %30

30:                                               ; preds = %23, %2
  %31 = phi i32 [ %29, %23 ], [ 0, %2 ]
  store i32 %16, ptr %6, align 4, !tbaa !79
  %32 = load i32, ptr %4, align 8, !tbaa !85
  %33 = sdiv i32 %32, 2
  store i32 %33, ptr %4, align 8, !tbaa !85
  call void @IMB_freeImBuf(ptr noundef nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #15
  ret i32 %31
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @save_maxjpeg(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !PGOFuncName !103 {
  %3 = alloca %struct.jpeg_compress_struct, align 8
  %4 = alloca %struct.my_error_mgr, align 8
  call void @llvm.lifetime.start.p0(i64 528, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 368, ptr nonnull %4) #15
  %5 = call ptr @BLI_fopen(ptr noundef %0, ptr noundef nonnull @.str.3) #17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %26, label %7

7:                                                ; preds = %2
  store i32 100, ptr @jpeg_default_quality, align 4, !tbaa !68
  %8 = call ptr (ptr, ...) @jpeg_std_error(ptr noundef nonnull %4) #17
  store ptr %8, ptr %3, align 8, !tbaa !100
  store ptr @jpeg_error, ptr %4, align 8, !tbaa !43
  %9 = getelementptr inbounds %struct.my_error_mgr, ptr %4, i64 0, i32 1
  %10 = call i32 @_setjmp(ptr noundef nonnull %9) #18
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  call void (ptr, ...) @jpeg_destroy_compress(ptr noundef nonnull %3) #17
  %13 = call i32 @fclose(ptr noundef nonnull %5) #16
  %14 = call i32 @remove(ptr noundef %0) #17
  br label %26

15:                                               ; preds = %7
  call fastcc void @init_jpeg(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef %1) #16
  %16 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %3, i64 0, i32 10
  %17 = load i32, ptr %16, align 4, !tbaa !104
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %3, i64 0, i32 15
  %21 = load ptr, ptr %20, align 8, !tbaa !105
  %22 = getelementptr inbounds %struct.jpeg_component_info, ptr %21, i64 0, i32 2
  store i32 1, ptr %22, align 8, !tbaa !106
  %23 = getelementptr inbounds %struct.jpeg_component_info, ptr %21, i64 0, i32 3
  store i32 1, ptr %23, align 4, !tbaa !108
  br label %24

24:                                               ; preds = %19, %15
  call fastcc void @write_jpeg(ptr noundef nonnull %3, ptr noundef %1) #16
  %25 = call i32 @fclose(ptr noundef nonnull %5) #16
  call void (ptr, ...) @jpeg_destroy_compress(ptr noundef nonnull %3) #17
  br label %26

26:                                               ; preds = %2, %24, %12
  %27 = phi i32 [ 0, %12 ], [ 1, %24 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 368, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 528, ptr nonnull %3) #15
  ret i32 %27
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @save_vidjpeg(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !PGOFuncName !109 {
  %3 = alloca %struct.jpeg_compress_struct, align 8
  %4 = alloca %struct.my_error_mgr, align 8
  call void @llvm.lifetime.start.p0(i64 528, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 368, ptr nonnull %4) #15
  %5 = call ptr @BLI_fopen(ptr noundef %0, ptr noundef nonnull @.str.3) #17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %26, label %7

7:                                                ; preds = %2
  store i32 90, ptr @jpeg_default_quality, align 4, !tbaa !68
  %8 = call ptr (ptr, ...) @jpeg_std_error(ptr noundef nonnull %4) #17
  store ptr %8, ptr %3, align 8, !tbaa !100
  store ptr @jpeg_error, ptr %4, align 8, !tbaa !43
  %9 = getelementptr inbounds %struct.my_error_mgr, ptr %4, i64 0, i32 1
  %10 = call i32 @_setjmp(ptr noundef nonnull %9) #18
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  call void (ptr, ...) @jpeg_destroy_compress(ptr noundef nonnull %3) #17
  %13 = call i32 @fclose(ptr noundef nonnull %5) #16
  %14 = call i32 @remove(ptr noundef %0) #17
  br label %26

15:                                               ; preds = %7
  call fastcc void @init_jpeg(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef %1) #16
  %16 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %3, i64 0, i32 10
  %17 = load i32, ptr %16, align 4, !tbaa !104
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %3, i64 0, i32 15
  %21 = load ptr, ptr %20, align 8, !tbaa !105
  %22 = getelementptr inbounds %struct.jpeg_component_info, ptr %21, i64 0, i32 2
  store i32 2, ptr %22, align 8, !tbaa !106
  %23 = getelementptr inbounds %struct.jpeg_component_info, ptr %21, i64 0, i32 3
  store i32 1, ptr %23, align 4, !tbaa !108
  br label %24

24:                                               ; preds = %19, %15
  call fastcc void @write_jpeg(ptr noundef nonnull %3, ptr noundef %1) #16
  %25 = call i32 @fclose(ptr noundef nonnull %5) #16
  call void (ptr, ...) @jpeg_destroy_compress(ptr noundef nonnull %3) #17
  br label %26

26:                                               ; preds = %2, %24, %12
  %27 = phi i32 [ 0, %12 ], [ 1, %24 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 368, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 528, ptr nonnull %3) #15
  ret i32 %27
}

; Function Attrs: optsize
declare void @jpeg_destroy(...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind optsize
declare void @longjmp(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @init_source(ptr nocapture readnone %0) #7 !PGOFuncName !110 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @fill_input_buffer(ptr nocapture noundef readonly %0) #8 !PGOFuncName !111 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !52
  %4 = getelementptr inbounds %struct.my_source_mgr, ptr %3, i64 0, i32 3
  store ptr %4, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %3, i64 0, i32 1
  store i64 2, ptr %5, align 8, !tbaa !63
  store i8 -1, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds %struct.my_source_mgr, ptr %3, i64 0, i32 3, i64 1
  store i8 -39, ptr %6, align 1, !tbaa !34
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @skip_input_data(ptr nocapture noundef readonly %0, i64 noundef %1) #9 !PGOFuncName !112 {
  %3 = icmp sgt i64 %1, 0
  br i1 %3, label %4, label %13

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %6, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !63
  %9 = tail call i64 @llvm.umin.i64(i64 %8, i64 %1)
  %10 = load ptr, ptr %6, align 8, !tbaa !64
  %11 = getelementptr inbounds i8, ptr %10, i64 %9
  store ptr %11, ptr %6, align 8, !tbaa !64
  %12 = sub i64 %8, %9
  store i64 %12, ptr %7, align 8, !tbaa !63
  br label %13

13:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: optsize
declare i32 @jpeg_resync_to_restart(...) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @term_source(ptr nocapture readnone %0) #7 !PGOFuncName !113 {
  ret void
}

; Function Attrs: optsize
declare void @jpeg_set_marker_processor(...) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @handle_app1(ptr noundef %0) #1 !PGOFuncName !114 {
  %2 = alloca [128 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #15
  %3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !52
  %5 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %4, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !115
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %4, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !116
  %11 = tail call i32 (ptr, ...) %10(ptr noundef nonnull %0) #17
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %81, label %13

13:                                               ; preds = %8
  %14 = load i64, ptr %5, align 8, !tbaa !115
  br label %15

15:                                               ; preds = %13, %1
  %16 = phi i64 [ %14, %13 ], [ %6, %1 ]
  %17 = load ptr, ptr %4, align 8, !tbaa !117
  %18 = add i64 %16, -1
  %19 = getelementptr inbounds i8, ptr %17, i64 1
  %20 = load i8, ptr %17, align 1, !tbaa !34
  %21 = zext i8 %20 to i64
  %22 = shl nuw nsw i64 %21, 8
  %23 = icmp eq i64 %18, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %4, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !116
  %27 = tail call i32 (ptr, ...) %26(ptr noundef nonnull %0) #17
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %81, label %29

29:                                               ; preds = %24
  %30 = load ptr, ptr %4, align 8, !tbaa !117
  %31 = load i64, ptr %5, align 8, !tbaa !115
  br label %32

32:                                               ; preds = %29, %15
  %33 = phi ptr [ %30, %29 ], [ %19, %15 ]
  %34 = phi i64 [ %31, %29 ], [ %18, %15 ]
  %35 = add i64 %34, -1
  %36 = getelementptr inbounds i8, ptr %33, i64 1
  %37 = load i8, ptr %33, align 1, !tbaa !34
  %38 = zext i8 %37 to i64
  %39 = or disjoint i64 %22, %38
  %40 = add nsw i64 %39, -2
  %41 = icmp ult i64 %39, 18
  br i1 %41, label %42, label %77

42:                                               ; preds = %32
  %43 = icmp ugt i64 %39, 2
  br i1 %43, label %44, label %67

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %4, i64 0, i32 3
  br label %46

46:                                               ; preds = %44, %58
  %47 = phi i64 [ %35, %44 ], [ %61, %58 ]
  %48 = phi ptr [ %36, %44 ], [ %62, %58 ]
  %49 = phi i64 [ 0, %44 ], [ %65, %58 ]
  %50 = icmp eq i64 %47, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load ptr, ptr %45, align 8, !tbaa !116
  %53 = tail call i32 (ptr, ...) %52(ptr noundef %0) #17
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %81, label %55

55:                                               ; preds = %51
  %56 = load ptr, ptr %4, align 8, !tbaa !117
  %57 = load i64, ptr %5, align 8, !tbaa !115
  br label %58

58:                                               ; preds = %55, %46
  %59 = phi ptr [ %56, %55 ], [ %48, %46 ]
  %60 = phi i64 [ %57, %55 ], [ %47, %46 ]
  %61 = add i64 %60, -1
  %62 = getelementptr inbounds i8, ptr %59, i64 1
  %63 = load i8, ptr %59, align 1, !tbaa !34
  %64 = getelementptr inbounds [128 x i8], ptr %2, i64 0, i64 %49
  store i8 %63, ptr %64, align 1, !tbaa !34
  %65 = add nuw nsw i64 %49, 1
  %66 = icmp eq i64 %65, %40
  br i1 %66, label %67, label %46, !llvm.loop !118

67:                                               ; preds = %58, %42
  %68 = phi ptr [ %36, %42 ], [ %62, %58 ]
  %69 = phi i64 [ %35, %42 ], [ %61, %58 ]
  %70 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.2, i64 6)
  %71 = icmp eq i32 %70, 0
  %72 = load i32, ptr @ibuf_ftype, align 4
  %73 = getelementptr inbounds i8, ptr %2, i64 6
  %74 = load i32, ptr %73, align 2
  %75 = select i1 %71, i32 %74, i32 %72
  %76 = tail call i32 @llvm.bswap.i32(i32 %75)
  store i32 %76, ptr @ibuf_ftype, align 4, !tbaa !68
  store ptr %68, ptr %4, align 8, !tbaa !117
  store i64 %69, ptr %5, align 8, !tbaa !115
  br label %81

77:                                               ; preds = %32
  store ptr %36, ptr %4, align 8, !tbaa !117
  store i64 %35, ptr %5, align 8, !tbaa !115
  %78 = load ptr, ptr %3, align 8, !tbaa !52
  %79 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %78, i64 0, i32 4
  %80 = load ptr, ptr %79, align 8, !tbaa !119
  tail call void (ptr, i64, ...) %80(ptr noundef nonnull %0, i64 noundef %40) #17
  br label %81

81:                                               ; preds = %51, %67, %77, %24, %8
  %82 = phi i32 [ 0, %8 ], [ 0, %24 ], [ 1, %77 ], [ 1, %67 ], [ 0, %51 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #15
  ret i32 %82
}

; Function Attrs: optsize
declare void @jpeg_save_markers(...) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @jpeg_read_header(...) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @jpeg_start_decompress(...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @jpeg_abort_decompress(...) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @IMB_allocImBuf(i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @jpeg_read_scanlines(...) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_strdupn(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare zeroext i8 @IMB_metadata_add_field(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare i32 @jpeg_finish_decompress(...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: optsize
declare ptr @BLI_fopen(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @jpeg_destroy_compress(...) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind optsize
declare noundef i32 @remove(ptr nocapture noundef readonly) local_unnamed_addr #12

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_jpeg(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #1 !PGOFuncName !120 {
  %4 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 26
  %5 = load i32, ptr %4, align 8, !tbaa !98
  %6 = load i32, ptr @jpeg_default_quality, align 4
  tail call void (ptr, i32, i64, ...) @jpeg_CreateCompress(ptr noundef %1, i32 noundef 62, i64 noundef 528) #17
  tail call void (ptr, ptr, ...) @jpeg_stdio_dest(ptr noundef %1, ptr noundef %0) #17
  %7 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 2
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %1, i64 0, i32 7
  %9 = load <2 x i32>, ptr %7, align 8, !tbaa !68
  store <2 x i32> %9, ptr %8, align 8, !tbaa !68
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %1, i64 0, i32 10
  %11 = getelementptr inbounds %struct.ImBuf, ptr %2, i64 0, i32 4
  %12 = load i8, ptr %11, align 8, !tbaa !121
  %13 = icmp eq i8 %12, 8
  %14 = select i1 %13, i32 1, i32 2
  store i32 %14, ptr %10, align 4
  %15 = select i1 %13, i32 1, i32 3
  %16 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %1, i64 0, i32 9
  store i32 %15, ptr %16, align 8
  %17 = and i32 %5, 255
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 %6, i32 %17
  %20 = tail call i32 @llvm.smin.i32(i32 %19, i32 100)
  tail call void (ptr, ...) @jpeg_set_defaults(ptr noundef nonnull %1) #17
  %21 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %1, i64 0, i32 29
  store i32 2, ptr %21, align 4, !tbaa !122
  tail call void (ptr, i32, i32, ...) @jpeg_set_quality(ptr noundef nonnull %1, i32 noundef %20, i32 noundef 1) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_jpeg(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !PGOFuncName !123 {
  %3 = alloca [1 x ptr], align 8
  %4 = alloca [128 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #15
  tail call void (ptr, i32, ...) @jpeg_start_compress(ptr noundef %0, i32 noundef 1) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(7) %4, ptr noundef nonnull align 1 dereferenceable(7) @.str.2, i64 7, i1 false) #17
  %5 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 26
  %6 = load i32, ptr %5, align 8, !tbaa !98
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  store i32 %7, ptr @ibuf_ftype, align 4, !tbaa !68
  %8 = getelementptr inbounds i8, ptr %4, i64 6
  store i32 %7, ptr %8, align 2
  call void (ptr, i32, ptr, i32, ...) @jpeg_write_marker(ptr noundef %0, i32 noundef 225, ptr noundef nonnull %4, i32 noundef 10) #17
  %9 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 24
  %10 = load ptr, ptr %9, align 8, !tbaa !124
  %11 = icmp eq ptr %10, null
  br i1 %11, label %35, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !86
  %14 = call ptr %13(i64 noundef 530, ptr noundef nonnull @.str.4) #17
  %15 = load ptr, ptr %9, align 8, !tbaa !86
  %16 = icmp eq ptr %15, null
  br i1 %16, label %33, label %17

17:                                               ; preds = %12, %27
  %18 = phi ptr [ %31, %27 ], [ %15, %12 ]
  %19 = getelementptr inbounds %struct.ImMetaData, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !125
  %21 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(5) @.str.1) #20
  %22 = icmp eq i32 %21, 0
  %23 = getelementptr inbounds %struct.ImMetaData, ptr %18, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !127
  br i1 %22, label %27, label %25

25:                                               ; preds = %17
  %26 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef %20, ptr noundef %24) #17
  br label %27

27:                                               ; preds = %17, %25
  %28 = phi ptr [ %14, %25 ], [ %24, %17 ]
  %29 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %28) #20
  %30 = add i64 %29, 1
  call void (ptr, i32, ptr, i64, ...) @jpeg_write_marker(ptr noundef %0, i32 noundef 254, ptr noundef %28, i64 noundef %30) #17
  %31 = load ptr, ptr %18, align 8, !tbaa !86
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %17, !llvm.loop !128

33:                                               ; preds = %27, %12
  %34 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  call void %34(ptr noundef %14) #17
  br label %35

35:                                               ; preds = %33, %2
  %36 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !86
  %37 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 9
  %38 = load i32, ptr %37, align 8, !tbaa !129
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 7
  %41 = load i32, ptr %40, align 8, !tbaa !130
  %42 = zext i32 %41 to i64
  %43 = mul nsw i64 %42, %39
  %44 = call ptr %36(i64 noundef %43, ptr noundef nonnull @.str.6) #17
  store ptr %44, ptr %3, align 8, !tbaa !86
  %45 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 3
  %46 = load i32, ptr %45, align 4, !tbaa !79
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %98

48:                                               ; preds = %35
  %49 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 8
  %50 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %51 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 10
  br label %52

52:                                               ; preds = %48, %95
  %53 = phi i32 [ %46, %48 ], [ %54, %95 ]
  %54 = add nsw i32 %53, -1
  %55 = load ptr, ptr %49, align 8, !tbaa !84
  %56 = load i32, ptr %50, align 8, !tbaa !85
  %57 = mul nsw i32 %56, %54
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, ptr %55, i64 %58
  %60 = load ptr, ptr %3, align 8, !tbaa !86
  %61 = load i32, ptr %51, align 4, !tbaa !104
  switch i32 %61, label %95 [
    i32 2, label %64
    i32 1, label %62
    i32 0, label %92
  ]

62:                                               ; preds = %52
  %63 = icmp sgt i32 %56, 0
  br i1 %63, label %82, label %95

64:                                               ; preds = %52
  %65 = icmp sgt i32 %56, 0
  br i1 %65, label %66, label %95

66:                                               ; preds = %64, %66
  %67 = phi ptr [ %77, %66 ], [ %60, %64 ]
  %68 = phi i32 [ %79, %66 ], [ 0, %64 ]
  %69 = phi ptr [ %78, %66 ], [ %59, %64 ]
  %70 = load i8, ptr %69, align 1, !tbaa !34
  %71 = getelementptr inbounds i8, ptr %67, i64 1
  store i8 %70, ptr %67, align 1, !tbaa !34
  %72 = getelementptr inbounds i8, ptr %69, i64 1
  %73 = load i8, ptr %72, align 1, !tbaa !34
  %74 = getelementptr inbounds i8, ptr %67, i64 2
  store i8 %73, ptr %71, align 1, !tbaa !34
  %75 = getelementptr inbounds i8, ptr %69, i64 2
  %76 = load i8, ptr %75, align 1, !tbaa !34
  %77 = getelementptr inbounds i8, ptr %67, i64 3
  store i8 %76, ptr %74, align 1, !tbaa !34
  %78 = getelementptr inbounds i8, ptr %69, i64 4
  %79 = add nuw nsw i32 %68, 1
  %80 = load i32, ptr %50, align 8, !tbaa !85
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %66, label %95, !llvm.loop !131

82:                                               ; preds = %62, %82
  %83 = phi ptr [ %87, %82 ], [ %60, %62 ]
  %84 = phi i32 [ %89, %82 ], [ 0, %62 ]
  %85 = phi ptr [ %88, %82 ], [ %59, %62 ]
  %86 = load i8, ptr %85, align 1, !tbaa !34
  %87 = getelementptr inbounds i8, ptr %83, i64 1
  store i8 %86, ptr %83, align 1, !tbaa !34
  %88 = getelementptr inbounds i8, ptr %85, i64 4
  %89 = add nuw nsw i32 %84, 1
  %90 = load i32, ptr %50, align 8, !tbaa !85
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %82, label %95, !llvm.loop !132

92:                                               ; preds = %52
  %93 = shl nsw i32 %56, 2
  %94 = sext i32 %93 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %60, ptr align 1 %59, i64 %94, i1 false)
  br label %95

95:                                               ; preds = %82, %66, %62, %64, %52, %92
  %96 = call i32 (ptr, ptr, i32, ...) @jpeg_write_scanlines(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 1) #17
  %97 = icmp sgt i32 %53, 1
  br i1 %97, label %52, label %98, !llvm.loop !133

98:                                               ; preds = %95, %35
  call void (ptr, ...) @jpeg_finish_compress(ptr noundef %0) #17
  %99 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  %100 = load ptr, ptr %3, align 8, !tbaa !86
  call void %99(ptr noundef %100) #17
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret void
}

; Function Attrs: optsize
declare void @jpeg_CreateCompress(...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @jpeg_stdio_dest(...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @jpeg_set_defaults(...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @jpeg_set_quality(...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @jpeg_start_compress(...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @jpeg_write_marker(...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: optsize
declare i32 @jpeg_write_scanlines(...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @jpeg_finish_compress(...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @IMB_rectcpy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind willreturn memory(argmem: read) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { optsize }
attributes #17 = { nounwind optsize }
attributes #18 = { nounwind optsize returns_twice }
attributes #19 = { noreturn nounwind optsize }
attributes #20 = { nounwind optsize willreturn memory(read) }

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
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = !{i32 0, i32 2}
!38 = !{!39, !40, i64 0}
!39 = !{!"jpeg_decompress_struct", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !41, i64 32, !41, i64 36, !40, i64 40, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !41, i64 64, !41, i64 68, !41, i64 72, !42, i64 80, !41, i64 88, !41, i64 92, !41, i64 96, !41, i64 100, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !41, i64 128, !41, i64 132, !41, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !41, i64 152, !41, i64 156, !40, i64 160, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180, !41, i64 184, !40, i64 192, !35, i64 200, !35, i64 232, !35, i64 264, !41, i64 296, !40, i64 304, !41, i64 312, !41, i64 316, !35, i64 320, !35, i64 336, !35, i64 352, !41, i64 368, !41, i64 372, !35, i64 376, !35, i64 377, !35, i64 378, !41, i64 380, !41, i64 384, !41, i64 388, !35, i64 392, !41, i64 396, !40, i64 400, !41, i64 408, !41, i64 412, !41, i64 416, !41, i64 420, !40, i64 424, !41, i64 432, !35, i64 440, !41, i64 472, !41, i64 476, !41, i64 480, !35, i64 484, !41, i64 524, !41, i64 528, !41, i64 532, !41, i64 536, !41, i64 540, !40, i64 544, !40, i64 552, !40, i64 560, !40, i64 568, !40, i64 576, !40, i64 584, !40, i64 592, !40, i64 600, !40, i64 608, !40, i64 616, !40, i64 624}
!40 = !{!"any pointer", !35, i64 0}
!41 = !{!"int", !35, i64 0}
!42 = !{!"double", !35, i64 0}
!43 = !{!44, !40, i64 0}
!44 = !{!"my_error_mgr", !45, i64 0, !35, i64 168}
!45 = !{!"jpeg_error_mgr", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !41, i64 40, !35, i64 44, !41, i64 124, !46, i64 128, !40, i64 136, !41, i64 144, !40, i64 152, !41, i64 160, !41, i64 164}
!46 = !{!"long", !35, i64 0}
!47 = !{!"jpeg.c:jpeg_error"}
!48 = !{!49, !40, i64 0}
!49 = !{!"jpeg_common_struct", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !41, i64 32, !41, i64 36}
!50 = !{!45, !40, i64 16}
!51 = !{!"jpeg.c:memory_source"}
!52 = !{!39, !40, i64 40}
!53 = !{!39, !40, i64 8}
!54 = !{!55, !40, i64 0}
!55 = !{!"jpeg_memory_mgr", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !40, i64 80, !46, i64 88, !46, i64 96}
!56 = !{!57, !40, i64 16}
!57 = !{!"", !58, i64 0, !40, i64 56, !41, i64 64, !35, i64 68}
!58 = !{!"jpeg_source_mgr", !40, i64 0, !46, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48}
!59 = !{!57, !40, i64 24}
!60 = !{!57, !40, i64 32}
!61 = !{!57, !40, i64 40}
!62 = !{!57, !40, i64 48}
!63 = !{!57, !46, i64 8}
!64 = !{!57, !40, i64 0}
!65 = !{!57, !40, i64 56}
!66 = !{!57, !41, i64 64}
!67 = !{!"jpeg.c:ibJpegImageFromCinfo"}
!68 = !{!41, !41, i64 0}
!69 = !{!39, !41, i64 96}
!70 = !{!39, !41, i64 48}
!71 = !{!39, !41, i64 52}
!72 = !{!39, !41, i64 56}
!73 = !{!39, !41, i64 60}
!74 = !{!39, !41, i64 64}
!75 = !{!39, !41, i64 412}
!76 = !{!39, !41, i64 408}
!77 = !{!39, !41, i64 136}
!78 = !{!55, !40, i64 16}
!79 = !{!80, !41, i64 20}
!80 = !{!"ImBuf", !40, i64 0, !40, i64 8, !41, i64 16, !41, i64 20, !35, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !40, i64 40, !40, i64 48, !35, i64 56, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84, !40, i64 88, !40, i64 96, !40, i64 104, !81, i64 112, !35, i64 120, !41, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !40, i64 296, !40, i64 304, !41, i64 312, !35, i64 316, !35, i64 1340, !40, i64 2368, !41, i64 2376, !40, i64 2384, !41, i64 2392, !41, i64 2396, !40, i64 2400, !40, i64 2408, !40, i64 2416, !40, i64 2424, !41, i64 2432, !82, i64 2436, !83, i64 2456}
!81 = !{!"float", !35, i64 0}
!82 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!83 = !{!"DDSData", !41, i64 0, !41, i64 4, !40, i64 8, !41, i64 16}
!84 = !{!80, !40, i64 40}
!85 = !{!80, !41, i64 16}
!86 = !{!40, !40, i64 0}
!87 = distinct !{!87, !88}
!88 = !{!"llvm.loop.mustprogress"}
!89 = distinct !{!89, !88}
!90 = distinct !{!90, !88}
!91 = distinct !{!91, !88}
!92 = !{!93, !35, i64 8}
!93 = !{!"jpeg_marker_struct", !40, i64 0, !35, i64 8, !41, i64 12, !41, i64 16, !40, i64 24}
!94 = !{!93, !40, i64 24}
!95 = !{!93, !41, i64 16}
!96 = !{!80, !41, i64 32}
!97 = distinct !{!97, !88}
!98 = !{!80, !41, i64 312}
!99 = !{!"jpeg.c:save_stdjpeg"}
!100 = !{!101, !40, i64 0}
!101 = !{!"jpeg_compress_struct", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !41, i64 32, !41, i64 36, !40, i64 40, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !42, i64 64, !41, i64 72, !41, i64 76, !41, i64 80, !40, i64 88, !35, i64 96, !35, i64 128, !35, i64 160, !35, i64 192, !35, i64 208, !35, i64 224, !41, i64 240, !40, i64 248, !41, i64 256, !41, i64 260, !41, i64 264, !41, i64 268, !41, i64 272, !41, i64 276, !41, i64 280, !41, i64 284, !41, i64 288, !35, i64 292, !35, i64 293, !35, i64 294, !41, i64 296, !41, i64 300, !41, i64 304, !41, i64 308, !41, i64 312, !41, i64 316, !41, i64 320, !41, i64 324, !41, i64 328, !35, i64 336, !41, i64 368, !41, i64 372, !41, i64 376, !35, i64 380, !41, i64 420, !41, i64 424, !41, i64 428, !41, i64 432, !40, i64 440, !40, i64 448, !40, i64 456, !40, i64 464, !40, i64 472, !40, i64 480, !40, i64 488, !40, i64 496, !40, i64 504, !40, i64 512, !41, i64 520}
!102 = !{!"jpeg.c:save_jstjpeg"}
!103 = !{!"jpeg.c:save_maxjpeg"}
!104 = !{!101, !41, i64 60}
!105 = !{!101, !40, i64 88}
!106 = !{!107, !41, i64 8}
!107 = !{!"", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !41, i64 64, !41, i64 68, !41, i64 72, !40, i64 80, !40, i64 88}
!108 = !{!107, !41, i64 12}
!109 = !{!"jpeg.c:save_vidjpeg"}
!110 = !{!"jpeg.c:init_source"}
!111 = !{!"jpeg.c:fill_input_buffer"}
!112 = !{!"jpeg.c:skip_input_data"}
!113 = !{!"jpeg.c:term_source"}
!114 = !{!"jpeg.c:handle_app1"}
!115 = !{!58, !46, i64 8}
!116 = !{!58, !40, i64 24}
!117 = !{!58, !40, i64 0}
!118 = distinct !{!118, !88}
!119 = !{!58, !40, i64 32}
!120 = !{!"jpeg.c:init_jpeg"}
!121 = !{!80, !35, i64 24}
!122 = !{!101, !41, i64 276}
!123 = !{!"jpeg.c:write_jpeg"}
!124 = !{!80, !40, i64 296}
!125 = !{!126, !40, i64 16}
!126 = !{!"ImMetaData", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !41, i64 32}
!127 = !{!126, !40, i64 24}
!128 = distinct !{!128, !88}
!129 = !{!101, !41, i64 56}
!130 = !{!101, !41, i64 48}
!131 = distinct !{!131, !88}
!132 = distinct !{!132, !88}
!133 = distinct !{!133, !88}
