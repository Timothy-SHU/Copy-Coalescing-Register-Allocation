; ModuleID = 'libpng/pngwrite.c'
source_filename = "libpng/pngwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.png_struct_def = type { [1 x %struct.__jmp_buf_tag], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i32, i32, i32, %struct.z_stream_s, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i32, ptr, i16, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [5 x i8], i16, i8, i32, %struct.png_color_16_struct, %struct.png_color_16_struct, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.png_color_8_struct, %struct.png_color_8_struct, ptr, %struct.png_color_16_struct, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i64, i32, i32, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, [29 x i8], i32, ptr, ptr, i32, ptr, i8, i8, i8, i16, i16, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i64, %struct.png_unknown_chunk_t, i64, ptr, i32, ptr, [4 x ptr] }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.png_color_8_struct = type { i8, i8, i8, i8, i8 }
%struct.png_color_16_struct = type { i8, i16, i16, i16, i16 }
%struct.png_unknown_chunk_t = type { [5 x i8], ptr, i64, i8 }
%struct.png_info_def = type { i32, i32, i32, i64, ptr, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i32, i8, i32, i32, ptr, %struct.png_time_struct, %struct.png_color_8_struct, ptr, %struct.png_color_16_struct, %struct.png_color_16_struct, i32, i32, i8, i32, i32, i8, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, i32, ptr, ptr, i32, i8, ptr, i32, i8, ptr, ptr, ptr }
%struct.png_time_struct = type { i16, i8, i8, i8, i8, i8 }
%struct.png_sPLT_struct = type { ptr, i8, ptr, i32 }
%struct.png_text_struct = type { i32, ptr, ptr, i64, i64, ptr, ptr }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }
%struct.png_row_info_struct = type { i32, i64, i8, i8, i8, i8 }

@.str = private unnamed_addr constant [49 x i8] c"MNG features are not allowed in a PNG datastream\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Writing zero-length unknown chunk\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Valid palette required for paletted images\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"No IDATs written into file\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Wrote palette index exceeding num_palette\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"png_write_info was never called before png_write_row\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"internal write transform logic error\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"zlib error\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"Unknown row filter for method 0\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"Can't add Up filter after starting\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"Can't add Average filter after starting\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"Can't add Paeth filter after starting\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"Unknown custom filter method\00", align 1
@.str.13 = private unnamed_addr constant [49 x i8] c"Only compression windows <= 32k supported by PNG\00", align 1
@.str.14 = private unnamed_addr constant [49 x i8] c"Only compression windows >= 256 supported by PNG\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"Compression window is being reset to 512\00", align 1
@.str.16 = private unnamed_addr constant [46 x i8] c"Only compression method 8 is supported by PNG\00", align 1
@.str.17 = private unnamed_addr constant [46 x i8] c"Text compression window is being reset to 512\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"Unknown filter heuristic method\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_write_info_before_PLTE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %150, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %8 = load i32, ptr %7, align 4, !tbaa !34
  %9 = and i32 %8, 1024
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %150

11:                                               ; preds = %6
  tail call void @png_write_sig(ptr noundef nonnull %0) #13
  %12 = load i32, ptr %7, align 4, !tbaa !34
  %13 = and i32 %12, 4096
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 125
  %17 = load i32, ptr %16, align 8, !tbaa !46
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str) #13
  store i32 0, ptr %16, align 8, !tbaa !46
  br label %20

20:                                               ; preds = %19, %15, %11
  %21 = load i32, ptr %1, align 8, !tbaa !47
  %22 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !50
  %24 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 7
  %25 = load i8, ptr %24, align 4, !tbaa !51
  %26 = zext i8 %25 to i32
  %27 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 8
  %28 = load i8, ptr %27, align 1, !tbaa !52
  %29 = zext i8 %28 to i32
  %30 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 9
  %31 = load i8, ptr %30, align 2, !tbaa !53
  %32 = zext i8 %31 to i32
  %33 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 10
  %34 = load i8, ptr %33, align 1, !tbaa !54
  %35 = zext i8 %34 to i32
  %36 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 11
  %37 = load i8, ptr %36, align 8, !tbaa !55
  %38 = zext i8 %37 to i32
  tail call void @png_write_IHDR(ptr noundef nonnull %0, i32 noundef %21, i32 noundef %23, i32 noundef %26, i32 noundef %29, i32 noundef %32, i32 noundef %35, i32 noundef %38) #13
  %39 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %40 = load i32, ptr %39, align 8, !tbaa !56
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %20
  %44 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 16
  %45 = load i32, ptr %44, align 4, !tbaa !57
  tail call void @png_write_gAMA_fixed(ptr noundef nonnull %0, i32 noundef %45) #13
  %46 = load i32, ptr %39, align 8, !tbaa !56
  br label %47

47:                                               ; preds = %43, %20
  %48 = phi i32 [ %46, %43 ], [ %40, %20 ]
  %49 = and i32 %48, 2048
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 17
  %53 = load i8, ptr %52, align 8, !tbaa !58
  %54 = zext i8 %53 to i32
  tail call void @png_write_sRGB(ptr noundef nonnull %0, i32 noundef %54) #13
  %55 = load i32, ptr %39, align 8, !tbaa !56
  br label %56

56:                                               ; preds = %51, %47
  %57 = phi i32 [ %55, %51 ], [ %48, %47 ]
  %58 = and i32 %57, 4096
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 51
  %62 = load ptr, ptr %61, align 8, !tbaa !59
  %63 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 52
  %64 = load ptr, ptr %63, align 8, !tbaa !60
  %65 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 53
  %66 = load i32, ptr %65, align 8, !tbaa !61
  tail call void @png_write_iCCP(ptr noundef nonnull %0, ptr noundef %62, i32 noundef 0, ptr noundef %64, i32 noundef %66) #13
  %67 = load i32, ptr %39, align 8, !tbaa !56
  br label %68

68:                                               ; preds = %60, %56
  %69 = phi i32 [ %67, %60 ], [ %57, %56 ]
  %70 = and i32 %69, 2
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 22
  %74 = load i8, ptr %27, align 1, !tbaa !52
  %75 = zext i8 %74 to i32
  tail call void @png_write_sBIT(ptr noundef nonnull %0, ptr noundef nonnull %73, i32 noundef %75) #13
  %76 = load i32, ptr %39, align 8, !tbaa !56
  br label %77

77:                                               ; preds = %72, %68
  %78 = phi i32 [ %76, %72 ], [ %69, %68 ]
  %79 = and i32 %78, 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %98, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 33
  %83 = load i32, ptr %82, align 8, !tbaa !62
  %84 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 34
  %85 = load i32, ptr %84, align 4, !tbaa !63
  %86 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 35
  %87 = load i32, ptr %86, align 8, !tbaa !64
  %88 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 36
  %89 = load i32, ptr %88, align 4, !tbaa !65
  %90 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 37
  %91 = load i32, ptr %90, align 8, !tbaa !66
  %92 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 38
  %93 = load i32, ptr %92, align 4, !tbaa !67
  %94 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 39
  %95 = load i32, ptr %94, align 8, !tbaa !68
  %96 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 40
  %97 = load i32, ptr %96, align 4, !tbaa !69
  tail call void @png_write_cHRM_fixed(ptr noundef nonnull %0, i32 noundef %83, i32 noundef %85, i32 noundef %87, i32 noundef %89, i32 noundef %91, i32 noundef %93, i32 noundef %95, i32 noundef %97) #13
  br label %98

98:                                               ; preds = %81, %77
  %99 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 50
  %100 = load i32, ptr %99, align 8, !tbaa !70
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %147, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 49
  %104 = icmp sgt i32 %100, 0
  br i1 %104, label %105, label %147

105:                                              ; preds = %102
  %106 = load ptr, ptr %103, align 8, !tbaa !71
  %107 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  br label %108

108:                                              ; preds = %105, %140
  %109 = phi ptr [ %106, %105 ], [ %141, %140 ]
  %110 = tail call i32 @png_handle_as_unknown(ptr noundef %0, ptr noundef %109) #13
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %140, label %112

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.png_unknown_chunk_t, ptr %109, i64 0, i32 3
  %114 = load i8, ptr %113, align 8, !tbaa !72
  %115 = icmp ne i8 %114, 0
  %116 = and i8 %114, 14
  %117 = icmp eq i8 %116, 0
  %118 = and i1 %115, %117
  br i1 %118, label %119, label %140

119:                                              ; preds = %112
  %120 = getelementptr inbounds [5 x i8], ptr %109, i64 0, i64 3
  %121 = load i8, ptr %120, align 1, !tbaa !73
  %122 = and i8 %121, 32
  %123 = icmp ne i8 %122, 0
  %124 = icmp eq i32 %110, 3
  %125 = or i1 %124, %123
  br i1 %125, label %130, label %126

126:                                              ; preds = %119
  %127 = load i32, ptr %107, align 8, !tbaa !74
  %128 = and i32 %127, 65536
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %140, label %130

130:                                              ; preds = %126, %119
  %131 = getelementptr inbounds %struct.png_unknown_chunk_t, ptr %109, i64 0, i32 2
  %132 = load i64, ptr %131, align 8, !tbaa !75
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.1) #13
  %135 = load i64, ptr %131, align 8, !tbaa !75
  br label %136

136:                                              ; preds = %134, %130
  %137 = phi i64 [ %135, %134 ], [ %132, %130 ]
  %138 = getelementptr inbounds %struct.png_unknown_chunk_t, ptr %109, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !76
  tail call void @png_write_chunk(ptr noundef %0, ptr noundef nonnull %109, ptr noundef %139, i64 noundef %137) #13
  br label %140

140:                                              ; preds = %136, %126, %112, %108
  %141 = getelementptr inbounds %struct.png_unknown_chunk_t, ptr %109, i64 1
  %142 = load ptr, ptr %103, align 8, !tbaa !71
  %143 = load i32, ptr %99, align 8, !tbaa !70
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.png_unknown_chunk_t, ptr %142, i64 %144
  %146 = icmp ult ptr %141, %145
  br i1 %146, label %108, label %147, !llvm.loop !77

147:                                              ; preds = %140, %102, %98
  %148 = load i32, ptr %7, align 4, !tbaa !34
  %149 = or i32 %148, 1024
  store i32 %149, ptr %7, align 4, !tbaa !34
  br label %150

150:                                              ; preds = %2, %147, %6
  ret void
}

; Function Attrs: optsize
declare void @png_write_sig(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @png_warning(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @png_write_IHDR(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @png_write_gAMA_fixed(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @png_write_sRGB(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @png_write_iCCP(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @png_write_sBIT(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @png_write_cHRM_fixed(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare i32 @png_handle_as_unknown(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @png_write_chunk(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_write_info(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %258, label %6

6:                                                ; preds = %2
  tail call void @png_write_info_before_PLTE(ptr noundef nonnull %0, ptr noundef nonnull %1) #14
  %7 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !56
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !79
  %14 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 5
  %15 = load i16, ptr %14, align 8, !tbaa !80
  %16 = zext i16 %15 to i32
  tail call void @png_write_PLTE(ptr noundef nonnull %0, ptr noundef %13, i32 noundef %16) #13
  %17 = load i32, ptr %7, align 8, !tbaa !56
  br label %23

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 8
  %20 = load i8, ptr %19, align 1, !tbaa !52
  %21 = icmp eq i8 %20, 3
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.2) #15
  unreachable

23:                                               ; preds = %18, %11
  %24 = phi i32 [ %8, %18 ], [ %17, %11 ]
  %25 = and i32 %24, 16
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %63, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %29 = load i32, ptr %28, align 4, !tbaa !81
  %30 = and i32 %29, 524288
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %52, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 8
  %34 = load i8, ptr %33, align 1, !tbaa !52
  %35 = icmp eq i8 %34, 3
  br i1 %35, label %36, label %52

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 6
  %38 = load i16, ptr %37, align 2, !tbaa !82
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %52, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 23
  br label %42

42:                                               ; preds = %40, %42
  %43 = phi i64 [ 0, %40 ], [ %48, %42 ]
  %44 = load ptr, ptr %41, align 8, !tbaa !83
  %45 = getelementptr inbounds i8, ptr %44, i64 %43
  %46 = load i8, ptr %45, align 1, !tbaa !73
  %47 = xor i8 %46, -1
  store i8 %47, ptr %45, align 1, !tbaa !73
  %48 = add nuw nsw i64 %43, 1
  %49 = load i16, ptr %37, align 2, !tbaa !82
  %50 = zext i16 %49 to i64
  %51 = icmp ult i64 %48, %50
  br i1 %51, label %42, label %52, !llvm.loop !84

52:                                               ; preds = %42, %36, %32, %27
  %53 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 23
  %54 = load ptr, ptr %53, align 8, !tbaa !83
  %55 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 24
  %56 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 6
  %57 = load i16, ptr %56, align 2, !tbaa !82
  %58 = zext i16 %57 to i32
  %59 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 8
  %60 = load i8, ptr %59, align 1, !tbaa !52
  %61 = zext i8 %60 to i32
  tail call void @png_write_tRNS(ptr noundef %0, ptr noundef %54, ptr noundef nonnull %55, i32 noundef %58, i32 noundef %61) #13
  %62 = load i32, ptr %7, align 8, !tbaa !56
  br label %63

63:                                               ; preds = %52, %23
  %64 = phi i32 [ %62, %52 ], [ %24, %23 ]
  %65 = and i32 %64, 32
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 25
  %69 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 8
  %70 = load i8, ptr %69, align 1, !tbaa !52
  %71 = zext i8 %70 to i32
  tail call void @png_write_bKGD(ptr noundef %0, ptr noundef nonnull %68, i32 noundef %71) #13
  %72 = load i32, ptr %7, align 8, !tbaa !56
  br label %73

73:                                               ; preds = %67, %63
  %74 = phi i32 [ %72, %67 ], [ %64, %63 ]
  %75 = and i32 %74, 64
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 32
  %79 = load ptr, ptr %78, align 8, !tbaa !85
  %80 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 5
  %81 = load i16, ptr %80, align 8, !tbaa !80
  %82 = zext i16 %81 to i32
  tail call void @png_write_hIST(ptr noundef %0, ptr noundef %79, i32 noundef %82) #13
  %83 = load i32, ptr %7, align 8, !tbaa !56
  br label %84

84:                                               ; preds = %77, %73
  %85 = phi i32 [ %83, %77 ], [ %74, %73 ]
  %86 = and i32 %85, 256
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %97, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 26
  %90 = load i32, ptr %89, align 4, !tbaa !86
  %91 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 27
  %92 = load i32, ptr %91, align 8, !tbaa !87
  %93 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 28
  %94 = load i8, ptr %93, align 4, !tbaa !88
  %95 = zext i8 %94 to i32
  tail call void @png_write_oFFs(ptr noundef %0, i32 noundef %90, i32 noundef %92, i32 noundef %95) #13
  %96 = load i32, ptr %7, align 8, !tbaa !56
  br label %97

97:                                               ; preds = %88, %84
  %98 = phi i32 [ %96, %88 ], [ %85, %84 ]
  %99 = and i32 %98, 1024
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %119, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 41
  %103 = load ptr, ptr %102, align 8, !tbaa !89
  %104 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 42
  %105 = load i32, ptr %104, align 8, !tbaa !90
  %106 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 43
  %107 = load i32, ptr %106, align 4, !tbaa !91
  %108 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 46
  %109 = load i8, ptr %108, align 8, !tbaa !92
  %110 = zext i8 %109 to i32
  %111 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 47
  %112 = load i8, ptr %111, align 1, !tbaa !93
  %113 = zext i8 %112 to i32
  %114 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 44
  %115 = load ptr, ptr %114, align 8, !tbaa !94
  %116 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 45
  %117 = load ptr, ptr %116, align 8, !tbaa !95
  tail call void @png_write_pCAL(ptr noundef %0, ptr noundef %103, i32 noundef %105, i32 noundef %107, i32 noundef %110, i32 noundef %113, ptr noundef %115, ptr noundef %117) #13
  %118 = load i32, ptr %7, align 8, !tbaa !56
  br label %119

119:                                              ; preds = %101, %97
  %120 = phi i32 [ %118, %101 ], [ %98, %97 ]
  %121 = and i32 %120, 16384
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %132, label %123

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 57
  %125 = load i8, ptr %124, align 4, !tbaa !96
  %126 = zext i8 %125 to i32
  %127 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 58
  %128 = load ptr, ptr %127, align 8, !tbaa !97
  %129 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 59
  %130 = load ptr, ptr %129, align 8, !tbaa !98
  tail call void @png_write_sCAL_s(ptr noundef %0, i32 noundef %126, ptr noundef %128, ptr noundef %130) #13
  %131 = load i32, ptr %7, align 8, !tbaa !56
  br label %132

132:                                              ; preds = %123, %119
  %133 = phi i32 [ %131, %123 ], [ %120, %119 ]
  %134 = and i32 %133, 128
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %145, label %136

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 29
  %138 = load i32, ptr %137, align 8, !tbaa !99
  %139 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 30
  %140 = load i32, ptr %139, align 4, !tbaa !100
  %141 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 31
  %142 = load i8, ptr %141, align 8, !tbaa !101
  %143 = zext i8 %142 to i32
  tail call void @png_write_pHYs(ptr noundef %0, i32 noundef %138, i32 noundef %140, i32 noundef %143) #13
  %144 = load i32, ptr %7, align 8, !tbaa !56
  br label %145

145:                                              ; preds = %136, %132
  %146 = phi i32 [ %144, %136 ], [ %133, %132 ]
  %147 = and i32 %146, 512
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %155, label %149

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 21
  tail call void @png_write_tIME(ptr noundef %0, ptr noundef nonnull %150) #13
  %151 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %152 = load i32, ptr %151, align 4, !tbaa !34
  %153 = or i32 %152, 512
  store i32 %153, ptr %151, align 4, !tbaa !34
  %154 = load i32, ptr %7, align 8, !tbaa !56
  br label %155

155:                                              ; preds = %149, %145
  %156 = phi i32 [ %154, %149 ], [ %146, %145 ]
  %157 = and i32 %156, 8192
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %173, label %159

159:                                              ; preds = %155
  %160 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 56
  %161 = load i32, ptr %160, align 8, !tbaa !102
  %162 = icmp sgt i32 %161, 0
  br i1 %162, label %163, label %173

163:                                              ; preds = %159
  %164 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 55
  br label %165

165:                                              ; preds = %163, %165
  %166 = phi i64 [ 0, %163 ], [ %169, %165 ]
  %167 = load ptr, ptr %164, align 8, !tbaa !103
  %168 = getelementptr inbounds %struct.png_sPLT_struct, ptr %167, i64 %166
  tail call void @png_write_sPLT(ptr noundef %0, ptr noundef %168) #13
  %169 = add nuw nsw i64 %166, 1
  %170 = load i32, ptr %160, align 8, !tbaa !102
  %171 = sext i32 %170 to i64
  %172 = icmp slt i64 %169, %171
  br i1 %172, label %165, label %173, !llvm.loop !104

173:                                              ; preds = %165, %159, %155
  %174 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 18
  %175 = load i32, ptr %174, align 4, !tbaa !105
  %176 = icmp sgt i32 %175, 0
  br i1 %176, label %177, label %216

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 20
  %179 = load ptr, ptr %178, align 8, !tbaa !106
  br label %180

180:                                              ; preds = %177, %210
  %181 = phi ptr [ %179, %177 ], [ %211, %210 ]
  %182 = phi i64 [ 0, %177 ], [ %212, %210 ]
  %183 = getelementptr inbounds %struct.png_text_struct, ptr %181, i64 %182
  %184 = load i32, ptr %183, align 8, !tbaa !107
  %185 = icmp sgt i32 %184, 0
  br i1 %185, label %186, label %195

186:                                              ; preds = %180
  %187 = getelementptr inbounds %struct.png_text_struct, ptr %181, i64 %182, i32 1
  %188 = load ptr, ptr %187, align 8, !tbaa !109
  %189 = getelementptr inbounds %struct.png_text_struct, ptr %181, i64 %182, i32 5
  %190 = load ptr, ptr %189, align 8, !tbaa !110
  %191 = getelementptr inbounds %struct.png_text_struct, ptr %181, i64 %182, i32 6
  %192 = load ptr, ptr %191, align 8, !tbaa !111
  %193 = getelementptr inbounds %struct.png_text_struct, ptr %181, i64 %182, i32 2
  %194 = load ptr, ptr %193, align 8, !tbaa !112
  tail call void @png_write_iTXt(ptr noundef %0, i32 noundef %184, ptr noundef %188, ptr noundef %190, ptr noundef %192, ptr noundef %194) #13
  br label %206

195:                                              ; preds = %180
  switch i32 %184, label %210 [
    i32 0, label %196
    i32 -1, label %201
  ]

196:                                              ; preds = %195
  %197 = getelementptr inbounds %struct.png_text_struct, ptr %181, i64 %182, i32 1
  %198 = load ptr, ptr %197, align 8, !tbaa !109
  %199 = getelementptr inbounds %struct.png_text_struct, ptr %181, i64 %182, i32 2
  %200 = load ptr, ptr %199, align 8, !tbaa !112
  tail call void @png_write_zTXt(ptr noundef %0, ptr noundef %198, ptr noundef %200, i64 noundef 0, i32 noundef 0) #13
  br label %206

201:                                              ; preds = %195
  %202 = getelementptr inbounds %struct.png_text_struct, ptr %181, i64 %182, i32 1
  %203 = load ptr, ptr %202, align 8, !tbaa !109
  %204 = getelementptr inbounds %struct.png_text_struct, ptr %181, i64 %182, i32 2
  %205 = load ptr, ptr %204, align 8, !tbaa !112
  tail call void @png_write_tEXt(ptr noundef %0, ptr noundef %203, ptr noundef %205, i64 noundef 0) #13
  br label %206

206:                                              ; preds = %196, %201, %186
  %207 = phi i32 [ -3, %186 ], [ -3, %201 ], [ -2, %196 ]
  %208 = load ptr, ptr %178, align 8, !tbaa !106
  %209 = getelementptr inbounds %struct.png_text_struct, ptr %208, i64 %182
  store i32 %207, ptr %209, align 8, !tbaa !107
  br label %210

210:                                              ; preds = %206, %195
  %211 = phi ptr [ %181, %195 ], [ %208, %206 ]
  %212 = add nuw nsw i64 %182, 1
  %213 = load i32, ptr %174, align 4, !tbaa !105
  %214 = sext i32 %213 to i64
  %215 = icmp slt i64 %212, %214
  br i1 %215, label %180, label %216, !llvm.loop !113

216:                                              ; preds = %210, %173
  %217 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 50
  %218 = load i32, ptr %217, align 8, !tbaa !70
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %258, label %220

220:                                              ; preds = %216
  %221 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 49
  %222 = icmp sgt i32 %218, 0
  br i1 %222, label %223, label %258

223:                                              ; preds = %220
  %224 = load ptr, ptr %221, align 8, !tbaa !71
  %225 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  br label %226

226:                                              ; preds = %223, %251
  %227 = phi ptr [ %224, %223 ], [ %252, %251 ]
  %228 = tail call i32 @png_handle_as_unknown(ptr noundef %0, ptr noundef %227) #13
  %229 = icmp eq i32 %228, 1
  br i1 %229, label %251, label %230

230:                                              ; preds = %226
  %231 = getelementptr inbounds %struct.png_unknown_chunk_t, ptr %227, i64 0, i32 3
  %232 = load i8, ptr %231, align 8, !tbaa !72
  %233 = and i8 %232, 14
  %234 = icmp eq i8 %233, 2
  br i1 %234, label %235, label %251

235:                                              ; preds = %230
  %236 = getelementptr inbounds [5 x i8], ptr %227, i64 0, i64 3
  %237 = load i8, ptr %236, align 1, !tbaa !73
  %238 = and i8 %237, 32
  %239 = icmp ne i8 %238, 0
  %240 = icmp eq i32 %228, 3
  %241 = or i1 %240, %239
  br i1 %241, label %246, label %242

242:                                              ; preds = %235
  %243 = load i32, ptr %225, align 8, !tbaa !74
  %244 = and i32 %243, 65536
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %251, label %246

246:                                              ; preds = %242, %235
  %247 = getelementptr inbounds %struct.png_unknown_chunk_t, ptr %227, i64 0, i32 1
  %248 = load ptr, ptr %247, align 8, !tbaa !76
  %249 = getelementptr inbounds %struct.png_unknown_chunk_t, ptr %227, i64 0, i32 2
  %250 = load i64, ptr %249, align 8, !tbaa !75
  tail call void @png_write_chunk(ptr noundef %0, ptr noundef nonnull %227, ptr noundef %248, i64 noundef %250) #13
  br label %251

251:                                              ; preds = %246, %242, %230, %226
  %252 = getelementptr inbounds %struct.png_unknown_chunk_t, ptr %227, i64 1
  %253 = load ptr, ptr %221, align 8, !tbaa !71
  %254 = load i32, ptr %217, align 8, !tbaa !70
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.png_unknown_chunk_t, ptr %253, i64 %255
  %257 = icmp ult ptr %252, %256
  br i1 %257, label %226, label %258, !llvm.loop !114

258:                                              ; preds = %251, %220, %216, %2
  ret void
}

; Function Attrs: optsize
declare void @png_write_PLTE(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noreturn optsize
declare void @png_error(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @png_write_tRNS(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @png_write_bKGD(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @png_write_hIST(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @png_write_oFFs(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @png_write_pCAL(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @png_write_sCAL_s(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @png_write_pHYs(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @png_write_tIME(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @png_write_sPLT(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @png_write_iTXt(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @png_write_zTXt(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @png_write_tEXt(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_write_end(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %122, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %6 = load i32, ptr %5, align 4, !tbaa !34
  %7 = and i32 %6, 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.3) #15
  unreachable

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 49
  %12 = load i32, ptr %11, align 4, !tbaa !115
  %13 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 48
  %14 = load i16, ptr %13, align 8, !tbaa !116
  %15 = zext i16 %14 to i32
  %16 = icmp sgt i32 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  tail call void @png_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.4) #13
  br label %18

18:                                               ; preds = %17, %10
  %19 = icmp eq ptr %1, null
  br i1 %19, label %119, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !56
  %23 = and i32 %22, 512
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %20
  %26 = load i32, ptr %5, align 4, !tbaa !34
  %27 = and i32 %26, 512
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 21
  tail call void @png_write_tIME(ptr noundef nonnull %0, ptr noundef nonnull %30) #13
  br label %31

31:                                               ; preds = %29, %25, %20
  %32 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 18
  %33 = load i32, ptr %32, align 4, !tbaa !105
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %77

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 20
  %37 = load ptr, ptr %36, align 8, !tbaa !106
  br label %38

38:                                               ; preds = %35, %71
  %39 = phi ptr [ %37, %35 ], [ %72, %71 ]
  %40 = phi i64 [ 0, %35 ], [ %73, %71 ]
  %41 = getelementptr inbounds %struct.png_text_struct, ptr %39, i64 %40
  %42 = load i32, ptr %41, align 8, !tbaa !107
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.png_text_struct, ptr %39, i64 %40, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !109
  %47 = getelementptr inbounds %struct.png_text_struct, ptr %39, i64 %40, i32 5
  %48 = load ptr, ptr %47, align 8, !tbaa !110
  %49 = getelementptr inbounds %struct.png_text_struct, ptr %39, i64 %40, i32 6
  %50 = load ptr, ptr %49, align 8, !tbaa !111
  %51 = getelementptr inbounds %struct.png_text_struct, ptr %39, i64 %40, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !112
  tail call void @png_write_iTXt(ptr noundef nonnull %0, i32 noundef %42, ptr noundef %46, ptr noundef %48, ptr noundef %50, ptr noundef %52) #13
  br label %67

53:                                               ; preds = %38
  %54 = icmp sgt i32 %42, -1
  br i1 %54, label %55, label %60

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.png_text_struct, ptr %39, i64 %40, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !109
  %58 = getelementptr inbounds %struct.png_text_struct, ptr %39, i64 %40, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !112
  tail call void @png_write_zTXt(ptr noundef nonnull %0, ptr noundef %57, ptr noundef %59, i64 noundef 0, i32 noundef 0) #13
  br label %67

60:                                               ; preds = %53
  %61 = icmp eq i32 %42, -1
  br i1 %61, label %62, label %71

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.png_text_struct, ptr %39, i64 %40, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !109
  %65 = getelementptr inbounds %struct.png_text_struct, ptr %39, i64 %40, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !112
  tail call void @png_write_tEXt(ptr noundef nonnull %0, ptr noundef %64, ptr noundef %66, i64 noundef 0) #13
  br label %67

67:                                               ; preds = %55, %62, %44
  %68 = phi i32 [ -3, %44 ], [ -3, %62 ], [ -2, %55 ]
  %69 = load ptr, ptr %36, align 8, !tbaa !106
  %70 = getelementptr inbounds %struct.png_text_struct, ptr %69, i64 %40
  store i32 %68, ptr %70, align 8, !tbaa !107
  br label %71

71:                                               ; preds = %67, %60
  %72 = phi ptr [ %39, %60 ], [ %69, %67 ]
  %73 = add nuw nsw i64 %40, 1
  %74 = load i32, ptr %32, align 4, !tbaa !105
  %75 = sext i32 %74 to i64
  %76 = icmp slt i64 %73, %75
  br i1 %76, label %38, label %77, !llvm.loop !117

77:                                               ; preds = %71, %31
  %78 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 50
  %79 = load i32, ptr %78, align 8, !tbaa !70
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %119, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 49
  %83 = icmp sgt i32 %79, 0
  br i1 %83, label %84, label %119

84:                                               ; preds = %81
  %85 = load ptr, ptr %82, align 8, !tbaa !71
  %86 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  br label %87

87:                                               ; preds = %84, %112
  %88 = phi ptr [ %85, %84 ], [ %113, %112 ]
  %89 = tail call i32 @png_handle_as_unknown(ptr noundef nonnull %0, ptr noundef %88) #13
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %112, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.png_unknown_chunk_t, ptr %88, i64 0, i32 3
  %93 = load i8, ptr %92, align 8, !tbaa !72
  %94 = and i8 %93, 8
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %112, label %96

96:                                               ; preds = %91
  %97 = getelementptr inbounds [5 x i8], ptr %88, i64 0, i64 3
  %98 = load i8, ptr %97, align 1, !tbaa !73
  %99 = and i8 %98, 32
  %100 = icmp ne i8 %99, 0
  %101 = icmp eq i32 %89, 3
  %102 = or i1 %101, %100
  br i1 %102, label %107, label %103

103:                                              ; preds = %96
  %104 = load i32, ptr %86, align 8, !tbaa !74
  %105 = and i32 %104, 65536
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %103, %96
  %108 = getelementptr inbounds %struct.png_unknown_chunk_t, ptr %88, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !76
  %110 = getelementptr inbounds %struct.png_unknown_chunk_t, ptr %88, i64 0, i32 2
  %111 = load i64, ptr %110, align 8, !tbaa !75
  tail call void @png_write_chunk(ptr noundef nonnull %0, ptr noundef nonnull %88, ptr noundef %109, i64 noundef %111) #13
  br label %112

112:                                              ; preds = %107, %103, %91, %87
  %113 = getelementptr inbounds %struct.png_unknown_chunk_t, ptr %88, i64 1
  %114 = load ptr, ptr %82, align 8, !tbaa !71
  %115 = load i32, ptr %78, align 8, !tbaa !70
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.png_unknown_chunk_t, ptr %114, i64 %116
  %118 = icmp ult ptr %113, %117
  br i1 %118, label %87, label %119, !llvm.loop !118

119:                                              ; preds = %112, %81, %77, %18
  %120 = load i32, ptr %5, align 4, !tbaa !34
  %121 = or i32 %120, 8
  store i32 %121, ptr %5, align 4, !tbaa !34
  tail call void @png_write_IEND(ptr noundef nonnull %0) #13
  br label %122

122:                                              ; preds = %2, %119
  ret void
}

; Function Attrs: optsize
declare void @png_benign_error(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @png_write_IEND(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @png_convert_from_struct_tm(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.tm, ptr %1, i64 0, i32 5
  %4 = load i32, ptr %3, align 4, !tbaa !119
  %5 = trunc i32 %4 to i16
  %6 = add i16 %5, 1900
  store i16 %6, ptr %0, align 2, !tbaa !121
  %7 = getelementptr inbounds %struct.tm, ptr %1, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !122
  %9 = trunc i32 %8 to i8
  %10 = add i8 %9, 1
  %11 = getelementptr inbounds %struct.png_time_struct, ptr %0, i64 0, i32 1
  store i8 %10, ptr %11, align 2, !tbaa !123
  %12 = getelementptr inbounds %struct.tm, ptr %1, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !124
  %14 = trunc i32 %13 to i8
  %15 = getelementptr inbounds %struct.png_time_struct, ptr %0, i64 0, i32 2
  store i8 %14, ptr %15, align 1, !tbaa !125
  %16 = getelementptr inbounds %struct.tm, ptr %1, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !126
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.png_time_struct, ptr %0, i64 0, i32 3
  store i8 %18, ptr %19, align 2, !tbaa !127
  %20 = getelementptr inbounds %struct.tm, ptr %1, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !128
  %22 = trunc i32 %21 to i8
  %23 = getelementptr inbounds %struct.png_time_struct, ptr %0, i64 0, i32 4
  store i8 %22, ptr %23, align 1, !tbaa !129
  %24 = load i32, ptr %1, align 8, !tbaa !130
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds %struct.png_time_struct, ptr %0, i64 0, i32 5
  store i8 %25, ptr %26, align 2, !tbaa !131
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_convert_from_time_t(ptr nocapture noundef writeonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  store i64 %1, ptr %3, align 8, !tbaa !132
  %4 = call ptr @gmtime(ptr noundef nonnull %3) #13
  call void @png_convert_from_struct_tm(ptr noundef %0, ptr noundef %4) #14
  ret void
}

; Function Attrs: nounwind optsize
declare ptr @gmtime(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias ptr @png_create_write_struct(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call noalias ptr @png_create_write_struct_2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef null, ptr noundef null, ptr noundef null) #14
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias ptr @png_create_write_struct_2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8)
  store volatile i32 0, ptr %8, align 4, !tbaa !133
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9)
  %10 = call noalias ptr @png_create_struct_2(i32 noundef 1, ptr noundef %5, ptr noundef %4) #13
  store volatile ptr %10, ptr %9, align 8, !tbaa !134
  %11 = load volatile ptr, ptr %9, align 8, !tbaa !134
  %12 = icmp eq ptr %11, null
  br i1 %12, label %63, label %13

13:                                               ; preds = %7
  %14 = load volatile ptr, ptr %9, align 8, !tbaa !134
  %15 = getelementptr inbounds %struct.png_struct_def, ptr %14, i64 0, i32 135
  store i32 2147483647, ptr %15, align 4, !tbaa !135
  %16 = load volatile ptr, ptr %9, align 8, !tbaa !134
  %17 = getelementptr inbounds %struct.png_struct_def, ptr %16, i64 0, i32 136
  store i32 2147483647, ptr %17, align 8, !tbaa !136
  %18 = load volatile ptr, ptr %9, align 8, !tbaa !134
  %19 = call ptr @png_set_longjmp_fn(ptr noundef %18, ptr noundef nonnull @longjmp, i64 noundef 200) #13
  %20 = call i32 @_setjmp(ptr noundef %19) #16
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %13
  call void @abort() #15
  unreachable

23:                                               ; preds = %13
  %24 = load volatile ptr, ptr %9, align 8, !tbaa !134
  call void @png_set_mem_fn(ptr noundef %24, ptr noundef %4, ptr noundef %5, ptr noundef %6) #13
  %25 = load volatile ptr, ptr %9, align 8, !tbaa !134
  call void @png_set_error_fn(ptr noundef %25, ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  %26 = load volatile ptr, ptr %9, align 8, !tbaa !134
  %27 = call i32 @png_user_version_check(ptr noundef %26, ptr noundef %0) #13
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store volatile i32 1, ptr %8, align 4, !tbaa !133
  br label %30

30:                                               ; preds = %29, %23
  %31 = load volatile ptr, ptr %9, align 8, !tbaa !134
  %32 = getelementptr inbounds %struct.png_struct_def, ptr %31, i64 0, i32 18
  store i32 8192, ptr %32, align 8, !tbaa !137
  %33 = load volatile i32, ptr %8, align 4, !tbaa !133
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %30
  %36 = load volatile ptr, ptr %9, align 8, !tbaa !134
  %37 = load volatile ptr, ptr %9, align 8, !tbaa !134
  %38 = getelementptr inbounds %struct.png_struct_def, ptr %37, i64 0, i32 18
  %39 = load i32, ptr %38, align 8, !tbaa !137
  %40 = zext i32 %39 to i64
  %41 = call noalias ptr @png_malloc_warn(ptr noundef %36, i64 noundef %40) #13
  %42 = load volatile ptr, ptr %9, align 8, !tbaa !134
  %43 = getelementptr inbounds %struct.png_struct_def, ptr %42, i64 0, i32 17
  store ptr %41, ptr %43, align 8, !tbaa !138
  %44 = load volatile ptr, ptr %9, align 8, !tbaa !134
  %45 = getelementptr inbounds %struct.png_struct_def, ptr %44, i64 0, i32 17
  %46 = load ptr, ptr %45, align 8, !tbaa !138
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %35
  store volatile i32 1, ptr %8, align 4, !tbaa !133
  br label %49

49:                                               ; preds = %35, %48, %30
  %50 = load volatile i32, ptr %8, align 4, !tbaa !133
  %51 = icmp eq i32 %50, 0
  %52 = load volatile ptr, ptr %9, align 8, !tbaa !134
  br i1 %51, label %60, label %53

53:                                               ; preds = %49
  %54 = load volatile ptr, ptr %9, align 8, !tbaa !134
  %55 = getelementptr inbounds %struct.png_struct_def, ptr %54, i64 0, i32 17
  %56 = load ptr, ptr %55, align 8, !tbaa !138
  call void @png_free(ptr noundef %52, ptr noundef %56) #13
  %57 = load volatile ptr, ptr %9, align 8, !tbaa !134
  %58 = getelementptr inbounds %struct.png_struct_def, ptr %57, i64 0, i32 17
  store ptr null, ptr %58, align 8, !tbaa !138
  %59 = load volatile ptr, ptr %9, align 8, !tbaa !134
  call void @png_destroy_struct_2(ptr noundef %59, ptr noundef %6, ptr noundef %4) #13
  br label %63

60:                                               ; preds = %49
  call void @png_set_write_fn(ptr noundef %52, ptr noundef null, ptr noundef null, ptr noundef null) #13
  %61 = load volatile ptr, ptr %9, align 8, !tbaa !134
  call fastcc void @png_reset_filter_heuristics(ptr noundef %61) #14
  %62 = load volatile ptr, ptr %9, align 8, !tbaa !134
  br label %63

63:                                               ; preds = %7, %60, %53
  %64 = phi ptr [ null, %53 ], [ %62, %60 ], [ null, %7 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8)
  ret ptr %64
}

; Function Attrs: optsize
declare noalias ptr @png_create_struct_2(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind optsize returns_twice
declare i32 @_setjmp(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @png_set_longjmp_fn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind optsize
declare void @longjmp(ptr noundef, i32 noundef) #7

; Function Attrs: noreturn nounwind optsize
declare void @abort() local_unnamed_addr #7

; Function Attrs: optsize
declare void @png_set_mem_fn(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @png_set_error_fn(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @png_user_version_check(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noalias ptr @png_malloc_warn(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @png_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @png_destroy_struct_2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @png_set_write_fn(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @png_reset_filter_heuristics(ptr noundef %0) unnamed_addr #0 !PGOFuncName !139 {
  %2 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 108
  store i8 0, ptr %2, align 1, !tbaa !140
  %3 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 107
  store i8 1, ptr %3, align 8, !tbaa !141
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 109
  %5 = load ptr, ptr %4, align 8, !tbaa !142
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store ptr null, ptr %4, align 8, !tbaa !142
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef nonnull %5) #13
  br label %8

8:                                                ; preds = %7, %1
  %9 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 110
  %10 = load ptr, ptr %9, align 8, !tbaa !143
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  store ptr null, ptr %9, align 8, !tbaa !143
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef nonnull %10) #13
  br label %13

13:                                               ; preds = %12, %8
  %14 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 111
  %15 = load ptr, ptr %14, align 8, !tbaa !144
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  store ptr null, ptr %14, align 8, !tbaa !144
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef nonnull %15) #13
  br label %18

18:                                               ; preds = %17, %13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_write_rows(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne i32 %2, 0
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %14

7:                                                ; preds = %3, %7
  %8 = phi ptr [ %12, %7 ], [ %1, %3 ]
  %9 = phi i32 [ %11, %7 ], [ 0, %3 ]
  %10 = load ptr, ptr %8, align 8, !tbaa !134
  tail call void @png_write_row(ptr noundef nonnull %0, ptr noundef %10) #14
  %11 = add nuw i32 %9, 1
  %12 = getelementptr inbounds ptr, ptr %8, i64 1
  %13 = icmp eq i32 %11, %2
  br i1 %13, label %14, label %7, !llvm.loop !145

14:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_write_row(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.png_row_info_struct, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  %4 = icmp eq ptr %0, null
  br i1 %4, label %168, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 36
  %7 = load i32, ptr %6, align 4, !tbaa !146
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 54
  %11 = load i8, ptr %10, align 1, !tbaa !147
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %15 = load i32, ptr %14, align 4, !tbaa !34
  %16 = and i32 %15, 1024
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.5) #15
  unreachable

19:                                               ; preds = %13
  tail call void @png_write_start_row(ptr noundef nonnull %0) #13
  br label %20

20:                                               ; preds = %19, %9, %5
  %21 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 53
  %22 = load i8, ptr %21, align 4, !tbaa !148
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %79, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %26 = load i32, ptr %25, align 4, !tbaa !81
  %27 = and i32 %26, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %79, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 54
  %31 = load i8, ptr %30, align 1, !tbaa !147
  switch i8 %31, label %79 [
    i8 0, label %32
    i8 1, label %37
    i8 2, label %46
    i8 3, label %51
    i8 4, label %60
    i8 5, label %65
    i8 6, label %74
  ]

32:                                               ; preds = %29
  %33 = load i32, ptr %6, align 4, !tbaa !146
  %34 = and i32 %33, 7
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %79, label %36

36:                                               ; preds = %32
  tail call void @png_write_finish_row(ptr noundef nonnull %0) #13
  br label %168

37:                                               ; preds = %29
  %38 = load i32, ptr %6, align 4, !tbaa !146
  %39 = and i32 %38, 7
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 30
  %43 = load i32, ptr %42, align 8, !tbaa !149
  %44 = icmp ult i32 %43, 5
  br i1 %44, label %45, label %79

45:                                               ; preds = %41, %37
  tail call void @png_write_finish_row(ptr noundef nonnull %0) #13
  br label %168

46:                                               ; preds = %29
  %47 = load i32, ptr %6, align 4, !tbaa !146
  %48 = and i32 %47, 7
  %49 = icmp eq i32 %48, 4
  br i1 %49, label %79, label %50

50:                                               ; preds = %46
  tail call void @png_write_finish_row(ptr noundef nonnull %0) #13
  br label %168

51:                                               ; preds = %29
  %52 = load i32, ptr %6, align 4, !tbaa !146
  %53 = and i32 %52, 3
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 30
  %57 = load i32, ptr %56, align 8, !tbaa !149
  %58 = icmp ult i32 %57, 3
  br i1 %58, label %59, label %79

59:                                               ; preds = %55, %51
  tail call void @png_write_finish_row(ptr noundef nonnull %0) #13
  br label %168

60:                                               ; preds = %29
  %61 = load i32, ptr %6, align 4, !tbaa !146
  %62 = and i32 %61, 3
  %63 = icmp eq i32 %62, 2
  br i1 %63, label %79, label %64

64:                                               ; preds = %60
  tail call void @png_write_finish_row(ptr noundef nonnull %0) #13
  br label %168

65:                                               ; preds = %29
  %66 = load i32, ptr %6, align 4, !tbaa !146
  %67 = and i32 %66, 1
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 30
  %71 = load i32, ptr %70, align 8, !tbaa !149
  %72 = icmp ult i32 %71, 2
  br i1 %72, label %73, label %79

73:                                               ; preds = %69, %65
  tail call void @png_write_finish_row(ptr noundef nonnull %0) #13
  br label %168

74:                                               ; preds = %29
  %75 = load i32, ptr %6, align 4, !tbaa !146
  %76 = and i32 %75, 1
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  tail call void @png_write_finish_row(ptr noundef nonnull %0) #13
  br label %168

79:                                               ; preds = %32, %41, %46, %55, %60, %69, %74, %29, %24, %20
  %80 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 56
  %81 = load i8, ptr %80, align 1, !tbaa !150
  %82 = getelementptr inbounds %struct.png_row_info_struct, ptr %3, i64 0, i32 2
  store i8 %81, ptr %82, align 8, !tbaa !151
  %83 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 33
  %84 = load i32, ptr %83, align 4, !tbaa !153
  store i32 %84, ptr %3, align 8, !tbaa !154
  %85 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 61
  %86 = load i8, ptr %85, align 4, !tbaa !155
  %87 = getelementptr inbounds %struct.png_row_info_struct, ptr %3, i64 0, i32 4
  store i8 %86, ptr %87, align 2, !tbaa !156
  %88 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 58
  %89 = load i8, ptr %88, align 1, !tbaa !157
  %90 = getelementptr inbounds %struct.png_row_info_struct, ptr %3, i64 0, i32 3
  store i8 %89, ptr %90, align 1, !tbaa !158
  %91 = mul i8 %89, %86
  %92 = getelementptr inbounds %struct.png_row_info_struct, ptr %3, i64 0, i32 5
  store i8 %91, ptr %92, align 1, !tbaa !159
  %93 = icmp ugt i8 %91, 7
  %94 = zext i32 %84 to i64
  br i1 %93, label %95, label %99

95:                                               ; preds = %79
  %96 = lshr i8 %91, 3
  %97 = zext nneg i8 %96 to i64
  %98 = mul nuw nsw i64 %97, %94
  br label %104

99:                                               ; preds = %79
  %100 = zext nneg i8 %91 to i64
  %101 = mul nuw nsw i64 %100, %94
  %102 = add nuw nsw i64 %101, 7
  %103 = lshr i64 %102, 3
  br label %104

104:                                              ; preds = %99, %95
  %105 = phi i64 [ %98, %95 ], [ %103, %99 ]
  %106 = getelementptr inbounds %struct.png_row_info_struct, ptr %3, i64 0, i32 1
  store i64 %105, ptr %106, align 8, !tbaa !160
  %107 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 39
  %108 = load ptr, ptr %107, align 8, !tbaa !161
  %109 = getelementptr inbounds i8, ptr %108, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %109, ptr align 1 %1, i64 %105, i1 false)
  %110 = load i8, ptr %21, align 4, !tbaa !148
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %128, label %112

112:                                              ; preds = %104
  %113 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 54
  %114 = load i8, ptr %113, align 1, !tbaa !147
  %115 = zext i8 %114 to i32
  %116 = icmp ult i8 %114, 6
  br i1 %116, label %117, label %128

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %119 = load i32, ptr %118, align 4, !tbaa !81
  %120 = and i32 %119, 2
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %128, label %122

122:                                              ; preds = %117
  %123 = load ptr, ptr %107, align 8, !tbaa !161
  %124 = getelementptr inbounds i8, ptr %123, i64 1
  call void @png_do_write_interlace(ptr noundef nonnull %3, ptr noundef nonnull %124, i32 noundef %115) #13
  %125 = load i32, ptr %3, align 8, !tbaa !154
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %122
  call void @png_write_finish_row(ptr noundef nonnull %0) #13
  br label %168

128:                                              ; preds = %122, %117, %112, %104
  %129 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %130 = load i32, ptr %129, align 4, !tbaa !81
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %128
  call void @png_do_write_transformations(ptr noundef nonnull %0, ptr noundef nonnull %3) #13
  br label %133

133:                                              ; preds = %132, %128
  %134 = load i8, ptr %92, align 1, !tbaa !159
  %135 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 59
  %136 = load i8, ptr %135, align 2, !tbaa !162
  %137 = icmp eq i8 %134, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 64
  %140 = load i8, ptr %139, align 1, !tbaa !163
  %141 = icmp eq i8 %134, %140
  br i1 %141, label %143, label %142

142:                                              ; preds = %138, %133
  call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.6) #15
  unreachable

143:                                              ; preds = %138
  %144 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 125
  %145 = load i32, ptr %144, align 8, !tbaa !46
  %146 = and i32 %145, 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %155, label %148

148:                                              ; preds = %143
  %149 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 126
  %150 = load i8, ptr %149, align 4, !tbaa !164
  %151 = icmp eq i8 %150, 64
  br i1 %151, label %152, label %155

152:                                              ; preds = %148
  %153 = load ptr, ptr %107, align 8, !tbaa !161
  %154 = getelementptr inbounds i8, ptr %153, i64 1
  call void @png_do_write_intrapixel(ptr noundef nonnull %3, ptr noundef nonnull %154) #13
  br label %155

155:                                              ; preds = %152, %148, %143
  %156 = load i8, ptr %82, align 8, !tbaa !151
  %157 = icmp eq i8 %156, 3
  br i1 %157, label %158, label %159

158:                                              ; preds = %155
  call void @png_do_check_palette_indexes(ptr noundef nonnull %0, ptr noundef nonnull %3) #13
  br label %159

159:                                              ; preds = %158, %155
  call void @png_write_find_filter(ptr noundef nonnull %0, ptr noundef nonnull %3) #13
  %160 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 88
  %161 = load ptr, ptr %160, align 8, !tbaa !165
  %162 = icmp eq ptr %161, null
  br i1 %162, label %168, label %163

163:                                              ; preds = %159
  %164 = load i32, ptr %6, align 4, !tbaa !146
  %165 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 54
  %166 = load i8, ptr %165, align 1, !tbaa !147
  %167 = zext i8 %166 to i32
  call void %161(ptr noundef nonnull %0, i32 noundef %164, i32 noundef %167) #13
  br label %168

168:                                              ; preds = %159, %163, %2, %127, %78, %73, %64, %59, %50, %45, %36
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_write_image(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %26, label %4

4:                                                ; preds = %2
  %5 = tail call i32 @png_set_interlace_handling(ptr noundef nonnull %0) #13
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %26

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 31
  %9 = load i32, ptr %8, align 4, !tbaa !166
  br label %10

10:                                               ; preds = %7, %22
  %11 = phi i32 [ %9, %7 ], [ %23, %22 ]
  %12 = phi i32 [ 0, %7 ], [ %24, %22 ]
  %13 = icmp eq i32 %11, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %10, %14
  %15 = phi ptr [ %19, %14 ], [ %1, %10 ]
  %16 = phi i32 [ %18, %14 ], [ 0, %10 ]
  %17 = load ptr, ptr %15, align 8, !tbaa !134
  tail call void @png_write_row(ptr noundef nonnull %0, ptr noundef %17) #14
  %18 = add nuw i32 %16, 1
  %19 = getelementptr inbounds ptr, ptr %15, i64 1
  %20 = load i32, ptr %8, align 4, !tbaa !166
  %21 = icmp ult i32 %18, %20
  br i1 %21, label %14, label %22, !llvm.loop !167

22:                                               ; preds = %14, %10
  %23 = phi i32 [ 0, %10 ], [ %20, %14 ]
  %24 = add nuw nsw i32 %12, 1
  %25 = icmp eq i32 %24, %5
  br i1 %25, label %26, label %10, !llvm.loop !168

26:                                               ; preds = %22, %4, %2
  ret void
}

; Function Attrs: optsize
declare i32 @png_set_interlace_handling(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @png_write_start_row(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @png_write_finish_row(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: optsize
declare void @png_do_write_interlace(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @png_do_write_transformations(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @png_do_write_intrapixel(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @png_do_check_palette_indexes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @png_write_find_filter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @png_set_flush(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %6 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 72
  store i32 %5, ptr %6, align 8, !tbaa !169
  br label %7

7:                                                ; preds = %2, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_write_flush(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %41, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 36
  %5 = load i32, ptr %4, align 4, !tbaa !146
  %6 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 32
  %7 = load i32, ptr %6, align 8, !tbaa !170
  %8 = icmp ult i32 %5, %7
  br i1 %8, label %9, label %41

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16
  %11 = tail call i32 @deflate(ptr noundef nonnull %10, i32 noundef 2) #13
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 4
  %15 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 17
  %16 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 18
  br label %23

17:                                               ; preds = %26, %9
  %18 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !171
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull %19) #15
  unreachable

22:                                               ; preds = %17
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.7) #15
  unreachable

23:                                               ; preds = %13, %26
  %24 = load i32, ptr %14, align 8, !tbaa !172
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load ptr, ptr %15, align 8, !tbaa !138
  %28 = load i32, ptr %16, align 8, !tbaa !137
  %29 = zext i32 %28 to i64
  tail call void @png_write_IDAT(ptr noundef nonnull %0, ptr noundef %27, i64 noundef %29) #13
  %30 = tail call i32 @deflate(ptr noundef nonnull %10, i32 noundef 2) #13
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %23, label %17, !llvm.loop !173

32:                                               ; preds = %23
  %33 = load i32, ptr %16, align 8, !tbaa !137
  %34 = icmp eq i32 %33, %24
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %15, align 8, !tbaa !138
  %37 = sub i32 %33, %24
  %38 = zext i32 %37 to i64
  tail call void @png_write_IDAT(ptr noundef nonnull %0, ptr noundef %36, i64 noundef %38) #13
  br label %39

39:                                               ; preds = %35, %32
  %40 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 73
  store i32 0, ptr %40, align 4, !tbaa !174
  tail call void @png_flush(ptr noundef nonnull %0) #13
  br label %41

41:                                               ; preds = %3, %1, %39
  ret void
}

; Function Attrs: optsize
declare i32 @deflate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @png_write_IDAT(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @png_flush(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_destroy_write_struct(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !134
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.png_struct_def, ptr %5, i64 0, i32 129
  %9 = load ptr, ptr %8, align 8, !tbaa !175
  %10 = getelementptr inbounds %struct.png_struct_def, ptr %5, i64 0, i32 127
  %11 = load ptr, ptr %10, align 8, !tbaa !176
  br label %12

12:                                               ; preds = %2, %7, %4
  %13 = phi i1 [ false, %7 ], [ true, %4 ], [ true, %2 ]
  %14 = phi ptr [ %5, %7 ], [ null, %4 ], [ null, %2 ]
  %15 = phi ptr [ %9, %7 ], [ null, %4 ], [ null, %2 ]
  %16 = phi ptr [ %11, %7 ], [ null, %4 ], [ null, %2 ]
  %17 = icmp eq ptr %1, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %12
  %19 = load ptr, ptr %1, align 8, !tbaa !134
  %20 = icmp eq ptr %19, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %18
  br i1 %13, label %29, label %22

22:                                               ; preds = %21
  tail call void @png_free_data(ptr noundef nonnull %14, ptr noundef nonnull %19, i32 noundef 32767, i32 noundef -1) #13
  %23 = getelementptr inbounds %struct.png_struct_def, ptr %14, i64 0, i32 118
  %24 = load i32, ptr %23, align 8, !tbaa !177
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.png_struct_def, ptr %14, i64 0, i32 119
  %28 = load ptr, ptr %27, align 8, !tbaa !178
  tail call void @png_free(ptr noundef nonnull %14, ptr noundef %28) #13
  store i32 0, ptr %23, align 8, !tbaa !177
  br label %29

29:                                               ; preds = %22, %26, %21
  tail call void @png_destroy_struct_2(ptr noundef nonnull %19, ptr noundef %15, ptr noundef %16) #13
  store ptr null, ptr %1, align 8, !tbaa !134
  br label %30

30:                                               ; preds = %12, %29, %18
  br i1 %13, label %32, label %31

31:                                               ; preds = %30
  tail call void @png_write_destroy(ptr noundef nonnull %14) #14
  tail call void @png_destroy_struct_2(ptr noundef nonnull %14, ptr noundef %15, ptr noundef %16) #13
  store ptr null, ptr %0, align 8, !tbaa !134
  br label %32

32:                                               ; preds = %31, %30
  ret void
}

; Function Attrs: optsize
declare void @png_free_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_write_destroy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.__jmp_buf_tag, align 16
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %2)
  %3 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 19
  %4 = load i32, ptr %3, align 4, !tbaa !179
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 16
  %8 = tail call i32 @deflateEnd(ptr noundef nonnull %7) #13
  br label %9

9:                                                ; preds = %6, %1
  %10 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 17
  %11 = load ptr, ptr %10, align 8, !tbaa !138
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %11) #13
  %12 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 39
  %13 = load ptr, ptr %12, align 8, !tbaa !161
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %13) #13
  %14 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 38
  %15 = load ptr, ptr %14, align 8, !tbaa !180
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %15) #13
  %16 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 40
  %17 = load ptr, ptr %16, align 8, !tbaa !181
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %17) #13
  %18 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 41
  %19 = load ptr, ptr %18, align 8, !tbaa !182
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %19) #13
  %20 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 42
  %21 = load ptr, ptr %20, align 8, !tbaa !183
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %21) #13
  %22 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 43
  %23 = load ptr, ptr %22, align 8, !tbaa !184
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %23) #13
  tail call fastcc void @png_reset_filter_heuristics(ptr noundef nonnull %0) #14
  %24 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 112
  %25 = load ptr, ptr %24, align 8, !tbaa !185
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %25) #13
  %26 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 113
  %27 = load ptr, ptr %26, align 8, !tbaa !186
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %27) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(200) %2, ptr noundef nonnull align 8 dereferenceable(200) %0, i64 200, i1 false)
  %28 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 2
  %29 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !187
  %31 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 129
  %32 = load ptr, ptr %31, align 8, !tbaa !175
  %33 = getelementptr inbounds i8, ptr %0, i64 200
  %34 = load <2 x ptr>, ptr %28, align 8, !tbaa !134
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1216) %33, i8 0, i64 1016, i1 false)
  store <2 x ptr> %34, ptr %28, align 8, !tbaa !134
  store ptr %30, ptr %29, align 8, !tbaa !187
  store ptr %32, ptr %31, align 8, !tbaa !175
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 16 dereferenceable(200) %2, i64 200, i1 false)
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %2)
  ret void
}

; Function Attrs: optsize
declare i32 @deflateEnd(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_set_filter(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %109, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 125
  %7 = load i32, ptr %6, align 8, !tbaa !46
  %8 = and i32 %7, 4
  %9 = icmp ne i32 %8, 0
  %10 = icmp eq i32 %1, 64
  %11 = and i1 %10, %9
  %12 = icmp eq i32 %1, 0
  %13 = or i1 %12, %11
  br i1 %13, label %14, label %108

14:                                               ; preds = %5
  %15 = trunc i32 %2 to i8
  switch i8 %15, label %21 [
    i8 5, label %16
    i8 6, label %16
    i8 7, label %16
    i8 0, label %22
    i8 1, label %17
    i8 2, label %18
    i8 3, label %19
    i8 4, label %20
  ]

16:                                               ; preds = %14, %14, %14
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.8) #13
  br label %22

17:                                               ; preds = %14
  br label %22

18:                                               ; preds = %14
  br label %22

19:                                               ; preds = %14
  br label %22

20:                                               ; preds = %14
  br label %22

21:                                               ; preds = %14
  br label %22

22:                                               ; preds = %16, %14, %21, %20, %19, %18, %17
  %23 = phi i8 [ %15, %21 ], [ -128, %20 ], [ 64, %19 ], [ 32, %18 ], [ 16, %17 ], [ 8, %14 ], [ 8, %16 ]
  %24 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 55
  store i8 %23, ptr %24, align 2, !tbaa !188
  %25 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 39
  %26 = load ptr, ptr %25, align 8, !tbaa !161
  %27 = icmp eq ptr %26, null
  br i1 %27, label %109, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 55
  %30 = and i8 %23, 16
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 40
  %34 = load ptr, ptr %33, align 8, !tbaa !181
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 34
  %38 = load i64, ptr %37, align 8, !tbaa !189
  %39 = add i64 %38, 1
  %40 = tail call noalias ptr @png_malloc(ptr noundef nonnull %0, i64 noundef %39) #13
  store ptr %40, ptr %33, align 8, !tbaa !181
  store i8 1, ptr %40, align 1, !tbaa !73
  %41 = load i8, ptr %29, align 2, !tbaa !188
  br label %42

42:                                               ; preds = %36, %32, %28
  %43 = phi i8 [ %41, %36 ], [ %23, %32 ], [ %23, %28 ]
  %44 = and i8 %43, 32
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %63, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 41
  %48 = load ptr, ptr %47, align 8, !tbaa !182
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %63

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 38
  %52 = load ptr, ptr %51, align 8, !tbaa !180
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.9) #13
  %55 = load i8, ptr %29, align 2, !tbaa !188
  %56 = and i8 %55, -33
  store i8 %56, ptr %29, align 2, !tbaa !188
  br label %63

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 34
  %59 = load i64, ptr %58, align 8, !tbaa !189
  %60 = add i64 %59, 1
  %61 = tail call noalias ptr @png_malloc(ptr noundef nonnull %0, i64 noundef %60) #13
  store ptr %61, ptr %47, align 8, !tbaa !182
  store i8 2, ptr %61, align 1, !tbaa !73
  %62 = load i8, ptr %29, align 2, !tbaa !188
  br label %63

63:                                               ; preds = %54, %57, %46, %42
  %64 = phi i8 [ %56, %54 ], [ %62, %57 ], [ %43, %46 ], [ %43, %42 ]
  %65 = and i8 %64, 64
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %84, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 42
  %69 = load ptr, ptr %68, align 8, !tbaa !183
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %84

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 38
  %73 = load ptr, ptr %72, align 8, !tbaa !180
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.10) #13
  %76 = load i8, ptr %29, align 2, !tbaa !188
  %77 = and i8 %76, -65
  store i8 %77, ptr %29, align 2, !tbaa !188
  br label %84

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 34
  %80 = load i64, ptr %79, align 8, !tbaa !189
  %81 = add i64 %80, 1
  %82 = tail call noalias ptr @png_malloc(ptr noundef nonnull %0, i64 noundef %81) #13
  store ptr %82, ptr %68, align 8, !tbaa !183
  store i8 3, ptr %82, align 1, !tbaa !73
  %83 = load i8, ptr %29, align 2, !tbaa !188
  br label %84

84:                                               ; preds = %78, %67, %75, %63
  %85 = phi i8 [ %77, %75 ], [ %64, %63 ], [ %64, %67 ], [ %83, %78 ]
  %86 = icmp sgt i8 %85, -1
  br i1 %86, label %104, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 43
  %89 = load ptr, ptr %88, align 8, !tbaa !184
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %109

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 38
  %93 = load ptr, ptr %92, align 8, !tbaa !180
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.11) #13
  %96 = load i8, ptr %29, align 2, !tbaa !188
  %97 = and i8 %96, 127
  store i8 %97, ptr %29, align 2, !tbaa !188
  br label %104

98:                                               ; preds = %91
  %99 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 34
  %100 = load i64, ptr %99, align 8, !tbaa !189
  %101 = add i64 %100, 1
  %102 = tail call noalias ptr @png_malloc(ptr noundef nonnull %0, i64 noundef %101) #13
  store ptr %102, ptr %88, align 8, !tbaa !184
  store i8 4, ptr %102, align 1, !tbaa !73
  %103 = load i8, ptr %29, align 2, !tbaa !188
  br label %104

104:                                              ; preds = %98, %84, %95
  %105 = phi i8 [ %97, %95 ], [ %85, %84 ], [ %103, %98 ]
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  store i8 8, ptr %29, align 2, !tbaa !188
  br label %109

108:                                              ; preds = %5
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.12) #15
  unreachable

109:                                              ; preds = %87, %22, %107, %104, %3
  ret void
}

; Function Attrs: optsize
declare noalias ptr @png_malloc(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_set_filter_heuristics(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = tail call fastcc i32 @png_init_filter_heuristics(ptr noundef %0, i32 noundef %1, i32 noundef %2) #14, !range !190
  %7 = icmp ne i32 %6, 0
  %8 = icmp eq i32 %1, 2
  %9 = and i1 %8, %7
  br i1 %9, label %10, label %60

10:                                               ; preds = %5
  %11 = icmp sgt i32 %2, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 110
  %14 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 111
  %15 = zext nneg i32 %2 to i64
  br label %19

16:                                               ; preds = %35, %10
  %17 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 113
  %18 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 112
  br label %42

19:                                               ; preds = %12, %35
  %20 = phi i64 [ 0, %12 ], [ %40, %35 ]
  %21 = getelementptr inbounds double, ptr %3, i64 %20
  %22 = load double, ptr %21, align 8, !tbaa !191
  %23 = fcmp ugt double %22, 0.000000e+00
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load ptr, ptr %13, align 8, !tbaa !143
  %26 = getelementptr inbounds i16, ptr %25, i64 %20
  store i16 256, ptr %26, align 2, !tbaa !193
  br label %35

27:                                               ; preds = %19
  %28 = tail call double @llvm.fmuladd.f64(double %22, double 2.560000e+02, double 5.000000e-01)
  %29 = fptoui double %28 to i16
  %30 = load ptr, ptr %14, align 8, !tbaa !144
  %31 = getelementptr inbounds i16, ptr %30, i64 %20
  store i16 %29, ptr %31, align 2, !tbaa !193
  %32 = fdiv double 2.560000e+02, %22
  %33 = fadd double %32, 5.000000e-01
  %34 = fptoui double %33 to i16
  br label %35

35:                                               ; preds = %24, %27
  %36 = phi ptr [ %14, %24 ], [ %13, %27 ]
  %37 = phi i16 [ 256, %24 ], [ %34, %27 ]
  %38 = load ptr, ptr %36, align 8, !tbaa !134
  %39 = getelementptr inbounds i16, ptr %38, i64 %20
  store i16 %37, ptr %39, align 2, !tbaa !193
  %40 = add nuw nsw i64 %20, 1
  %41 = icmp eq i64 %40, %15
  br i1 %41, label %16, label %19, !llvm.loop !194

42:                                               ; preds = %16, %57
  %43 = phi i64 [ 0, %16 ], [ %58, %57 ]
  %44 = getelementptr inbounds double, ptr %4, i64 %43
  %45 = load double, ptr %44, align 8, !tbaa !191
  %46 = fcmp ult double %45, 1.000000e+00
  br i1 %46, label %57, label %47

47:                                               ; preds = %42
  %48 = fdiv double 8.000000e+00, %45
  %49 = fadd double %48, 5.000000e-01
  %50 = fptoui double %49 to i16
  %51 = load ptr, ptr %17, align 8, !tbaa !186
  %52 = getelementptr inbounds i16, ptr %51, i64 %43
  store i16 %50, ptr %52, align 2, !tbaa !193
  %53 = tail call double @llvm.fmuladd.f64(double %45, double 8.000000e+00, double 5.000000e-01)
  %54 = fptoui double %53 to i16
  %55 = load ptr, ptr %18, align 8, !tbaa !185
  %56 = getelementptr inbounds i16, ptr %55, i64 %43
  store i16 %54, ptr %56, align 2, !tbaa !193
  br label %57

57:                                               ; preds = %42, %47
  %58 = add nuw nsw i64 %43, 1
  %59 = icmp eq i64 %58, 5
  br i1 %59, label %60, label %42, !llvm.loop !195

60:                                               ; preds = %57, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @png_init_filter_heuristics(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !196 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %62, label %5

5:                                                ; preds = %3
  tail call fastcc void @png_reset_filter_heuristics(ptr noundef nonnull %0) #14
  %6 = icmp eq i32 %1, 2
  br i1 %6, label %7, label %59

7:                                                ; preds = %5
  %8 = icmp sgt i32 %2, 0
  br i1 %8, label %9, label %36

9:                                                ; preds = %7
  %10 = zext nneg i32 %2 to i64
  %11 = tail call noalias ptr @png_malloc(ptr noundef nonnull %0, i64 noundef %10) #13
  %12 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 109
  store ptr %11, ptr %12, align 8, !tbaa !142
  br label %13

13:                                               ; preds = %9, %13
  %14 = phi i64 [ 0, %9 ], [ %17, %13 ]
  %15 = load ptr, ptr %12, align 8, !tbaa !142
  %16 = getelementptr inbounds i8, ptr %15, i64 %14
  store i8 -1, ptr %16, align 1, !tbaa !73
  %17 = add nuw nsw i64 %14, 1
  %18 = icmp eq i64 %17, %10
  br i1 %18, label %19, label %13, !llvm.loop !197

19:                                               ; preds = %13
  %20 = shl nuw i32 %2, 1
  %21 = zext i32 %20 to i64
  %22 = tail call noalias ptr @png_malloc(ptr noundef nonnull %0, i64 noundef %21) #13
  %23 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 110
  store ptr %22, ptr %23, align 8, !tbaa !143
  %24 = tail call noalias ptr @png_malloc(ptr noundef nonnull %0, i64 noundef %21) #13
  %25 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 111
  store ptr %24, ptr %25, align 8, !tbaa !144
  %26 = load ptr, ptr %23, align 8, !tbaa !143
  br label %27

27:                                               ; preds = %19, %27
  %28 = phi i64 [ 0, %19 ], [ %31, %27 ]
  %29 = getelementptr inbounds i16, ptr %26, i64 %28
  store i16 256, ptr %29, align 2, !tbaa !193
  %30 = getelementptr inbounds i16, ptr %24, i64 %28
  store i16 256, ptr %30, align 2, !tbaa !193
  %31 = add nuw nsw i64 %28, 1
  %32 = icmp eq i64 %31, %10
  br i1 %32, label %33, label %27, !llvm.loop !198

33:                                               ; preds = %27
  %34 = trunc i32 %2 to i8
  %35 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 108
  store i8 %34, ptr %35, align 1, !tbaa !140
  br label %36

36:                                               ; preds = %33, %7
  %37 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 112
  %38 = load ptr, ptr %37, align 8, !tbaa !185
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 113
  %42 = load ptr, ptr %41, align 8, !tbaa !186
  br label %48

43:                                               ; preds = %36
  %44 = tail call noalias ptr @png_malloc(ptr noundef nonnull %0, i64 noundef 10) #13
  store ptr %44, ptr %37, align 8, !tbaa !185
  %45 = tail call noalias ptr @png_malloc(ptr noundef nonnull %0, i64 noundef 10) #13
  %46 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 113
  store ptr %45, ptr %46, align 8, !tbaa !186
  %47 = load ptr, ptr %37, align 8, !tbaa !185
  br label %48

48:                                               ; preds = %40, %43
  %49 = phi ptr [ %45, %43 ], [ %42, %40 ]
  %50 = phi ptr [ %47, %43 ], [ %38, %40 ]
  br label %51

51:                                               ; preds = %48, %51
  %52 = phi i64 [ 0, %48 ], [ %55, %51 ]
  %53 = getelementptr inbounds i16, ptr %50, i64 %52
  store i16 8, ptr %53, align 2, !tbaa !193
  %54 = getelementptr inbounds i16, ptr %49, i64 %52
  store i16 8, ptr %54, align 2, !tbaa !193
  %55 = add nuw nsw i64 %52, 1
  %56 = icmp eq i64 %55, 5
  br i1 %56, label %57, label %51, !llvm.loop !199

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 107
  store i8 2, ptr %58, align 8, !tbaa !141
  br label %62

59:                                               ; preds = %5
  %60 = icmp ult i32 %1, 2
  br i1 %60, label %62, label %61

61:                                               ; preds = %59
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.18) #13
  br label %62

62:                                               ; preds = %59, %3, %61, %57
  %63 = phi i32 [ 1, %57 ], [ 0, %61 ], [ 0, %3 ], [ 1, %59 ]
  ret i32 %63
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #11

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_set_filter_heuristics_fixed(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = tail call fastcc i32 @png_init_filter_heuristics(ptr noundef %0, i32 noundef %1, i32 noundef %2) #14, !range !190
  %7 = icmp ne i32 %6, 0
  %8 = icmp eq i32 %1, 2
  %9 = and i1 %8, %7
  br i1 %9, label %10, label %66

10:                                               ; preds = %5
  %11 = icmp sgt i32 %2, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 111
  %14 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 110
  %15 = zext nneg i32 %2 to i64
  br label %19

16:                                               ; preds = %38, %10
  %17 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 113
  %18 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 112
  br label %45

19:                                               ; preds = %12, %38
  %20 = phi i64 [ 0, %12 ], [ %43, %38 ]
  %21 = getelementptr inbounds i32, ptr %3, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !133
  %23 = icmp slt i32 %22, 1
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load ptr, ptr %14, align 8, !tbaa !143
  %26 = getelementptr inbounds i16, ptr %25, i64 %20
  store i16 256, ptr %26, align 2, !tbaa !193
  br label %38

27:                                               ; preds = %19
  %28 = shl nsw i32 %22, 8
  %29 = add nuw nsw i32 %28, 50000
  %30 = udiv i32 %29, 100000
  %31 = trunc i32 %30 to i16
  %32 = load ptr, ptr %13, align 8, !tbaa !144
  %33 = getelementptr inbounds i16, ptr %32, i64 %20
  store i16 %31, ptr %33, align 2, !tbaa !193
  %34 = lshr i32 %22, 1
  %35 = add nuw nsw i32 %34, 25600000
  %36 = udiv i32 %35, %22
  %37 = trunc i32 %36 to i16
  br label %38

38:                                               ; preds = %24, %27
  %39 = phi ptr [ %13, %24 ], [ %14, %27 ]
  %40 = phi i16 [ 256, %24 ], [ %37, %27 ]
  %41 = load ptr, ptr %39, align 8, !tbaa !134
  %42 = getelementptr inbounds i16, ptr %41, i64 %20
  store i16 %40, ptr %42, align 2, !tbaa !193
  %43 = add nuw nsw i64 %20, 1
  %44 = icmp eq i64 %43, %15
  br i1 %44, label %16, label %19, !llvm.loop !200

45:                                               ; preds = %16, %63
  %46 = phi i64 [ 0, %16 ], [ %64, %63 ]
  %47 = getelementptr inbounds i32, ptr %4, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !133
  %49 = icmp sgt i32 %48, 99999
  br i1 %49, label %50, label %63

50:                                               ; preds = %45
  %51 = lshr i32 %48, 1
  %52 = add nuw nsw i32 %51, 800000
  %53 = udiv i32 %52, %48
  %54 = trunc i32 %53 to i16
  %55 = load ptr, ptr %17, align 8, !tbaa !186
  %56 = getelementptr inbounds i16, ptr %55, i64 %46
  store i16 %54, ptr %56, align 2, !tbaa !193
  %57 = shl nsw i32 %48, 3
  %58 = add nuw nsw i32 %57, 50000
  %59 = udiv i32 %58, 100000
  %60 = trunc i32 %59 to i16
  %61 = load ptr, ptr %18, align 8, !tbaa !185
  %62 = getelementptr inbounds i16, ptr %61, i64 %46
  store i16 %60, ptr %62, align 2, !tbaa !193
  br label %63

63:                                               ; preds = %45, %50
  %64 = add nuw nsw i64 %46, 1
  %65 = icmp eq i64 %64, 5
  br i1 %65, label %66, label %45, !llvm.loop !201

66:                                               ; preds = %63, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @png_set_compression_level(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %6 = load i32, ptr %5, align 8, !tbaa !74
  %7 = or i32 %6, 2
  store i32 %7, ptr %5, align 8, !tbaa !74
  %8 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 20
  store i32 %1, ptr %8, align 8, !tbaa !202
  br label %9

9:                                                ; preds = %2, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @png_set_compression_mem_level(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %6 = load i32, ptr %5, align 8, !tbaa !74
  %7 = or i32 %6, 4
  store i32 %7, ptr %5, align 8, !tbaa !74
  %8 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 23
  store i32 %1, ptr %8, align 4, !tbaa !203
  br label %9

9:                                                ; preds = %2, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @png_set_compression_strategy(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %6 = load i32, ptr %5, align 8, !tbaa !74
  %7 = or i32 %6, 1
  store i32 %7, ptr %5, align 8, !tbaa !74
  %8 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 24
  store i32 %1, ptr %8, align 8, !tbaa !204
  br label %9

9:                                                ; preds = %2, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_set_compression_window_bits(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %2
  %5 = icmp sgt i32 %1, 15
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = icmp slt i32 %1, 8
  br i1 %7, label %10, label %8

8:                                                ; preds = %6
  %9 = icmp eq i32 %1, 8
  br i1 %9, label %10, label %13

10:                                               ; preds = %8, %6, %4
  %11 = phi ptr [ @.str.13, %4 ], [ @.str.14, %6 ], [ @.str.15, %8 ]
  %12 = phi i32 [ %1, %4 ], [ %1, %6 ], [ 9, %8 ]
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull %11) #13
  br label %13

13:                                               ; preds = %10, %8
  %14 = phi i32 [ %1, %8 ], [ %12, %10 ]
  %15 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %16 = load i32, ptr %15, align 8, !tbaa !74
  %17 = or i32 %16, 8
  store i32 %17, ptr %15, align 8, !tbaa !74
  %18 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 22
  store i32 %14, ptr %18, align 8, !tbaa !205
  br label %19

19:                                               ; preds = %2, %13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_set_compression_method(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = icmp eq i32 %1, 8
  br i1 %5, label %7, label %6

6:                                                ; preds = %4
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.16) #13
  br label %7

7:                                                ; preds = %6, %4
  %8 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %9 = load i32, ptr %8, align 8, !tbaa !74
  %10 = or i32 %9, 16
  store i32 %10, ptr %8, align 8, !tbaa !74
  %11 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 21
  store i32 %1, ptr %11, align 4, !tbaa !206
  br label %12

12:                                               ; preds = %2, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @png_set_text_compression_level(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %6 = load i32, ptr %5, align 8, !tbaa !74
  %7 = or i32 %6, 33554432
  store i32 %7, ptr %5, align 8, !tbaa !74
  %8 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 25
  store i32 %1, ptr %8, align 4, !tbaa !207
  br label %9

9:                                                ; preds = %2, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @png_set_text_compression_mem_level(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %6 = load i32, ptr %5, align 8, !tbaa !74
  %7 = or i32 %6, 67108864
  store i32 %7, ptr %5, align 8, !tbaa !74
  %8 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 28
  store i32 %1, ptr %8, align 8, !tbaa !208
  br label %9

9:                                                ; preds = %2, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @png_set_text_compression_strategy(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %6 = load i32, ptr %5, align 8, !tbaa !74
  %7 = or i32 %6, 16777216
  store i32 %7, ptr %5, align 8, !tbaa !74
  %8 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 29
  store i32 %1, ptr %8, align 4, !tbaa !209
  br label %9

9:                                                ; preds = %2, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_set_text_compression_window_bits(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %2
  %5 = icmp sgt i32 %1, 15
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = icmp slt i32 %1, 8
  br i1 %7, label %10, label %8

8:                                                ; preds = %6
  %9 = icmp eq i32 %1, 8
  br i1 %9, label %10, label %13

10:                                               ; preds = %8, %6, %4
  %11 = phi ptr [ @.str.13, %4 ], [ @.str.14, %6 ], [ @.str.17, %8 ]
  %12 = phi i32 [ %1, %4 ], [ %1, %6 ], [ 9, %8 ]
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull %11) #13
  br label %13

13:                                               ; preds = %10, %8
  %14 = phi i32 [ %1, %8 ], [ %12, %10 ]
  %15 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %16 = load i32, ptr %15, align 8, !tbaa !74
  %17 = or i32 %16, 134217728
  store i32 %17, ptr %15, align 8, !tbaa !74
  %18 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 27
  store i32 %14, ptr %18, align 4, !tbaa !210
  br label %19

19:                                               ; preds = %2, %13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_set_text_compression_method(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = icmp eq i32 %1, 8
  br i1 %5, label %7, label %6

6:                                                ; preds = %4
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.16) #13
  br label %7

7:                                                ; preds = %6, %4
  %8 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %9 = load i32, ptr %8, align 8, !tbaa !74
  %10 = or i32 %9, 268435456
  store i32 %10, ptr %8, align 8, !tbaa !74
  %11 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 26
  store i32 %1, ptr %11, align 8, !tbaa !211
  br label %12

12:                                               ; preds = %2, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @png_set_write_status_fn(ptr noundef writeonly %0, ptr noundef %1) local_unnamed_addr #9 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 88
  store ptr %1, ptr %5, align 8, !tbaa !165
  br label %6

6:                                                ; preds = %2, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @png_set_write_user_transform_fn(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %6 = load i32, ptr %5, align 4, !tbaa !81
  %7 = or i32 %6, 1048576
  store i32 %7, ptr %5, align 4, !tbaa !81
  %8 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 9
  store ptr %1, ptr %8, align 8, !tbaa !212
  br label %9

9:                                                ; preds = %2, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @png_write_png(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  %6 = icmp eq ptr %1, null
  %7 = or i1 %5, %6
  br i1 %7, label %63, label %8

8:                                                ; preds = %4
  tail call void @png_write_info(ptr noundef nonnull %0, ptr noundef nonnull %1) #14
  %9 = and i32 %2, 32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @png_set_invert_mono(ptr noundef nonnull %0) #13
  br label %12

12:                                               ; preds = %11, %8
  %13 = and i32 %2, 64
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !56
  %18 = and i32 %17, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 22
  tail call void @png_set_shift(ptr noundef nonnull %0, ptr noundef nonnull %21) #13
  br label %22

22:                                               ; preds = %20, %15, %12
  %23 = and i32 %2, 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  tail call void @png_set_packing(ptr noundef nonnull %0) #13
  br label %26

26:                                               ; preds = %25, %22
  %27 = and i32 %2, 256
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  tail call void @png_set_swap_alpha(ptr noundef nonnull %0) #13
  br label %30

30:                                               ; preds = %29, %26
  %31 = and i32 %2, 4096
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = and i32 %2, 2048
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %33, %30
  %37 = phi i32 [ 1, %30 ], [ 0, %33 ]
  tail call void @png_set_filler(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %37) #13
  br label %38

38:                                               ; preds = %36, %33
  %39 = and i32 %2, 128
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  tail call void @png_set_bgr(ptr noundef nonnull %0) #13
  br label %42

42:                                               ; preds = %41, %38
  %43 = and i32 %2, 512
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  tail call void @png_set_swap(ptr noundef nonnull %0) #13
  br label %46

46:                                               ; preds = %45, %42
  %47 = and i32 %2, 8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  tail call void @png_set_packswap(ptr noundef nonnull %0) #13
  br label %50

50:                                               ; preds = %49, %46
  %51 = and i32 %2, 1024
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  tail call void @png_set_invert_alpha(ptr noundef nonnull %0) #13
  br label %54

54:                                               ; preds = %53, %50
  %55 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %56 = load i32, ptr %55, align 8, !tbaa !56
  %57 = and i32 %56, 32768
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 60
  %61 = load ptr, ptr %60, align 8, !tbaa !213
  tail call void @png_write_image(ptr noundef nonnull %0, ptr noundef %61) #14
  br label %62

62:                                               ; preds = %59, %54
  tail call void @png_write_end(ptr noundef nonnull %0, ptr noundef nonnull %1) #14
  br label %63

63:                                               ; preds = %4, %62
  ret void
}

; Function Attrs: optsize
declare void @png_set_invert_mono(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @png_set_shift(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @png_set_packing(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @png_set_swap_alpha(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @png_set_filler(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @png_set_bgr(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @png_set_swap(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @png_set_packswap(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @png_set_invert_alpha(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind optsize returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind optsize }
attributes #14 = { optsize }
attributes #15 = { noreturn nounwind optsize }
attributes #16 = { nounwind optsize returns_twice }
attributes #17 = { nounwind }

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
!34 = !{!35, !39, i64 284}
!35 = !{!"png_struct_def", !36, i64 0, !38, i64 200, !38, i64 208, !38, i64 216, !38, i64 224, !38, i64 232, !38, i64 240, !38, i64 248, !38, i64 256, !38, i64 264, !38, i64 272, !36, i64 280, !36, i64 281, !39, i64 284, !39, i64 288, !39, i64 292, !40, i64 296, !38, i64 408, !39, i64 416, !39, i64 420, !39, i64 424, !39, i64 428, !39, i64 432, !39, i64 436, !39, i64 440, !39, i64 444, !39, i64 448, !39, i64 452, !39, i64 456, !39, i64 460, !39, i64 464, !39, i64 468, !39, i64 472, !39, i64 476, !41, i64 480, !39, i64 488, !39, i64 492, !39, i64 496, !38, i64 504, !38, i64 512, !38, i64 520, !38, i64 528, !38, i64 536, !38, i64 544, !41, i64 552, !39, i64 560, !39, i64 564, !38, i64 568, !42, i64 576, !39, i64 580, !42, i64 584, !36, i64 586, !36, i64 587, !36, i64 588, !36, i64 589, !36, i64 590, !36, i64 591, !36, i64 592, !36, i64 593, !36, i64 594, !36, i64 595, !36, i64 596, !36, i64 597, !36, i64 598, !36, i64 599, !36, i64 600, !42, i64 606, !36, i64 608, !39, i64 612, !43, i64 616, !43, i64 626, !38, i64 640, !39, i64 648, !39, i64 652, !39, i64 656, !39, i64 660, !39, i64 664, !38, i64 672, !38, i64 680, !38, i64 688, !38, i64 696, !38, i64 704, !38, i64 712, !44, i64 720, !44, i64 725, !38, i64 736, !43, i64 744, !38, i64 760, !38, i64 768, !38, i64 776, !38, i64 784, !38, i64 792, !38, i64 800, !38, i64 808, !38, i64 816, !38, i64 824, !39, i64 832, !39, i64 836, !41, i64 840, !41, i64 848, !41, i64 856, !41, i64 864, !39, i64 872, !39, i64 876, !38, i64 880, !38, i64 888, !38, i64 896, !36, i64 904, !36, i64 905, !38, i64 912, !38, i64 920, !38, i64 928, !38, i64 936, !38, i64 944, !36, i64 952, !39, i64 984, !38, i64 992, !38, i64 1000, !39, i64 1008, !38, i64 1016, !36, i64 1024, !36, i64 1025, !36, i64 1026, !42, i64 1028, !42, i64 1030, !39, i64 1032, !36, i64 1036, !38, i64 1040, !38, i64 1048, !38, i64 1056, !38, i64 1064, !38, i64 1072, !38, i64 1080, !38, i64 1088, !36, i64 1096, !39, i64 1100, !39, i64 1104, !39, i64 1108, !41, i64 1112, !45, i64 1120, !41, i64 1152, !38, i64 1160, !39, i64 1168, !38, i64 1176, !36, i64 1184}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!"any pointer", !36, i64 0}
!39 = !{!"int", !36, i64 0}
!40 = !{!"z_stream_s", !38, i64 0, !39, i64 8, !41, i64 16, !38, i64 24, !39, i64 32, !41, i64 40, !38, i64 48, !38, i64 56, !38, i64 64, !38, i64 72, !38, i64 80, !39, i64 88, !41, i64 96, !41, i64 104}
!41 = !{!"long", !36, i64 0}
!42 = !{!"short", !36, i64 0}
!43 = !{!"png_color_16_struct", !36, i64 0, !42, i64 2, !42, i64 4, !42, i64 6, !42, i64 8}
!44 = !{!"png_color_8_struct", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4}
!45 = !{!"png_unknown_chunk_t", !36, i64 0, !38, i64 8, !41, i64 16, !36, i64 24}
!46 = !{!35, !39, i64 1032}
!47 = !{!48, !39, i64 0}
!48 = !{!"png_info_def", !39, i64 0, !39, i64 4, !39, i64 8, !41, i64 16, !38, i64 24, !42, i64 32, !42, i64 34, !36, i64 36, !36, i64 37, !36, i64 38, !36, i64 39, !36, i64 40, !36, i64 41, !36, i64 42, !36, i64 43, !36, i64 44, !39, i64 52, !36, i64 56, !39, i64 60, !39, i64 64, !38, i64 72, !49, i64 80, !44, i64 88, !38, i64 96, !43, i64 104, !43, i64 114, !39, i64 124, !39, i64 128, !36, i64 132, !39, i64 136, !39, i64 140, !36, i64 144, !38, i64 152, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !39, i64 180, !39, i64 184, !39, i64 188, !38, i64 192, !39, i64 200, !39, i64 204, !38, i64 208, !38, i64 216, !36, i64 224, !36, i64 225, !39, i64 228, !38, i64 232, !39, i64 240, !38, i64 248, !38, i64 256, !39, i64 264, !36, i64 268, !38, i64 272, !39, i64 280, !36, i64 284, !38, i64 288, !38, i64 296, !38, i64 304}
!49 = !{!"png_time_struct", !42, i64 0, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6}
!50 = !{!48, !39, i64 4}
!51 = !{!48, !36, i64 36}
!52 = !{!48, !36, i64 37}
!53 = !{!48, !36, i64 38}
!54 = !{!48, !36, i64 39}
!55 = !{!48, !36, i64 40}
!56 = !{!48, !39, i64 8}
!57 = !{!48, !39, i64 52}
!58 = !{!48, !36, i64 56}
!59 = !{!48, !38, i64 248}
!60 = !{!48, !38, i64 256}
!61 = !{!48, !39, i64 264}
!62 = !{!48, !39, i64 160}
!63 = !{!48, !39, i64 164}
!64 = !{!48, !39, i64 168}
!65 = !{!48, !39, i64 172}
!66 = !{!48, !39, i64 176}
!67 = !{!48, !39, i64 180}
!68 = !{!48, !39, i64 184}
!69 = !{!48, !39, i64 188}
!70 = !{!48, !39, i64 240}
!71 = !{!48, !38, i64 232}
!72 = !{!45, !36, i64 24}
!73 = !{!36, !36, i64 0}
!74 = !{!35, !39, i64 288}
!75 = !{!45, !41, i64 16}
!76 = !{!45, !38, i64 8}
!77 = distinct !{!77, !78}
!78 = !{!"llvm.loop.mustprogress"}
!79 = !{!48, !38, i64 24}
!80 = !{!48, !42, i64 32}
!81 = !{!35, !39, i64 292}
!82 = !{!48, !42, i64 34}
!83 = !{!48, !38, i64 96}
!84 = distinct !{!84, !78}
!85 = !{!48, !38, i64 152}
!86 = !{!48, !39, i64 124}
!87 = !{!48, !39, i64 128}
!88 = !{!48, !36, i64 132}
!89 = !{!48, !38, i64 192}
!90 = !{!48, !39, i64 200}
!91 = !{!48, !39, i64 204}
!92 = !{!48, !36, i64 224}
!93 = !{!48, !36, i64 225}
!94 = !{!48, !38, i64 208}
!95 = !{!48, !38, i64 216}
!96 = !{!48, !36, i64 284}
!97 = !{!48, !38, i64 288}
!98 = !{!48, !38, i64 296}
!99 = !{!48, !39, i64 136}
!100 = !{!48, !39, i64 140}
!101 = !{!48, !36, i64 144}
!102 = !{!48, !39, i64 280}
!103 = !{!48, !38, i64 272}
!104 = distinct !{!104, !78}
!105 = !{!48, !39, i64 60}
!106 = !{!48, !38, i64 72}
!107 = !{!108, !39, i64 0}
!108 = !{!"png_text_struct", !39, i64 0, !38, i64 8, !38, i64 16, !41, i64 24, !41, i64 32, !38, i64 40, !38, i64 48}
!109 = !{!108, !38, i64 8}
!110 = !{!108, !38, i64 40}
!111 = !{!108, !38, i64 48}
!112 = !{!108, !38, i64 16}
!113 = distinct !{!113, !78}
!114 = distinct !{!114, !78}
!115 = !{!35, !39, i64 580}
!116 = !{!35, !42, i64 576}
!117 = distinct !{!117, !78}
!118 = distinct !{!118, !78}
!119 = !{!120, !39, i64 20}
!120 = !{!"tm", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !41, i64 40, !38, i64 48}
!121 = !{!49, !42, i64 0}
!122 = !{!120, !39, i64 16}
!123 = !{!49, !36, i64 2}
!124 = !{!120, !39, i64 12}
!125 = !{!49, !36, i64 3}
!126 = !{!120, !39, i64 8}
!127 = !{!49, !36, i64 4}
!128 = !{!120, !39, i64 4}
!129 = !{!49, !36, i64 5}
!130 = !{!120, !39, i64 0}
!131 = !{!49, !36, i64 6}
!132 = !{!41, !41, i64 0}
!133 = !{!39, !39, i64 0}
!134 = !{!38, !38, i64 0}
!135 = !{!35, !39, i64 1100}
!136 = !{!35, !39, i64 1104}
!137 = !{!35, !39, i64 416}
!138 = !{!35, !38, i64 408}
!139 = !{!"pngwrite.c:png_reset_filter_heuristics"}
!140 = !{!35, !36, i64 905}
!141 = !{!35, !36, i64 904}
!142 = !{!35, !38, i64 912}
!143 = !{!35, !38, i64 920}
!144 = !{!35, !38, i64 928}
!145 = distinct !{!145, !78}
!146 = !{!35, !39, i64 492}
!147 = !{!35, !36, i64 589}
!148 = !{!35, !36, i64 588}
!149 = !{!35, !39, i64 464}
!150 = !{!35, !36, i64 591}
!151 = !{!152, !36, i64 16}
!152 = !{!"png_row_info_struct", !39, i64 0, !41, i64 8, !36, i64 16, !36, i64 17, !36, i64 18, !36, i64 19}
!153 = !{!35, !39, i64 476}
!154 = !{!152, !39, i64 0}
!155 = !{!35, !36, i64 596}
!156 = !{!152, !36, i64 18}
!157 = !{!35, !36, i64 593}
!158 = !{!152, !36, i64 17}
!159 = !{!152, !36, i64 19}
!160 = !{!152, !41, i64 8}
!161 = !{!35, !38, i64 512}
!162 = !{!35, !36, i64 594}
!163 = !{!35, !36, i64 599}
!164 = !{!35, !36, i64 1036}
!165 = !{!35, !38, i64 768}
!166 = !{!35, !39, i64 468}
!167 = distinct !{!167, !78}
!168 = distinct !{!168, !78}
!169 = !{!35, !39, i64 648}
!170 = !{!35, !39, i64 472}
!171 = !{!35, !38, i64 344}
!172 = !{!35, !39, i64 328}
!173 = distinct !{!173, !78}
!174 = !{!35, !39, i64 652}
!175 = !{!35, !38, i64 1056}
!176 = !{!35, !38, i64 1040}
!177 = !{!35, !39, i64 1008}
!178 = !{!35, !38, i64 1016}
!179 = !{!35, !39, i64 420}
!180 = !{!35, !38, i64 504}
!181 = !{!35, !38, i64 520}
!182 = !{!35, !38, i64 528}
!183 = !{!35, !38, i64 536}
!184 = !{!35, !38, i64 544}
!185 = !{!35, !38, i64 936}
!186 = !{!35, !38, i64 944}
!187 = !{!35, !38, i64 224}
!188 = !{!35, !36, i64 590}
!189 = !{!35, !41, i64 480}
!190 = !{i32 0, i32 2}
!191 = !{!192, !192, i64 0}
!192 = !{!"double", !36, i64 0}
!193 = !{!42, !42, i64 0}
!194 = distinct !{!194, !78}
!195 = distinct !{!195, !78}
!196 = !{!"pngwrite.c:png_init_filter_heuristics"}
!197 = distinct !{!197, !78}
!198 = distinct !{!198, !78}
!199 = distinct !{!199, !78}
!200 = distinct !{!200, !78}
!201 = distinct !{!201, !78}
!202 = !{!35, !39, i64 424}
!203 = !{!35, !39, i64 436}
!204 = !{!35, !39, i64 440}
!205 = !{!35, !39, i64 432}
!206 = !{!35, !39, i64 428}
!207 = !{!35, !39, i64 444}
!208 = !{!35, !39, i64 456}
!209 = !{!35, !39, i64 460}
!210 = !{!35, !39, i64 452}
!211 = !{!35, !39, i64 448}
!212 = !{!35, !38, i64 264}
!213 = !{!48, !38, i64 304}
