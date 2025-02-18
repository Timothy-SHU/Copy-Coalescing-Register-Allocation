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

; Function Attrs: nounwind uwtable
define dso_local void @png_write_info_before_PLTE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %146, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %8 = load i32, ptr %7, align 4, !tbaa !34
  %9 = and i32 %8, 1024
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %146

11:                                               ; preds = %6
  tail call void @png_write_sig(ptr noundef %0) #13
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
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str) #13
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
  tail call void @png_write_IHDR(ptr noundef %0, i32 noundef %21, i32 noundef %23, i32 noundef %26, i32 noundef %29, i32 noundef %32, i32 noundef %35, i32 noundef %38) #13
  %39 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %40 = load i32, ptr %39, align 8, !tbaa !56
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %20
  %44 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 16
  %45 = load i32, ptr %44, align 4, !tbaa !57
  tail call void @png_write_gAMA_fixed(ptr noundef %0, i32 noundef %45) #13
  br label %46

46:                                               ; preds = %43, %20
  %47 = load i32, ptr %39, align 8, !tbaa !56
  %48 = and i32 %47, 2048
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 17
  %52 = load i8, ptr %51, align 8, !tbaa !58
  %53 = zext i8 %52 to i32
  tail call void @png_write_sRGB(ptr noundef %0, i32 noundef %53) #13
  br label %54

54:                                               ; preds = %50, %46
  %55 = load i32, ptr %39, align 8, !tbaa !56
  %56 = and i32 %55, 4096
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 51
  %60 = load ptr, ptr %59, align 8, !tbaa !59
  %61 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 52
  %62 = load ptr, ptr %61, align 8, !tbaa !60
  %63 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 53
  %64 = load i32, ptr %63, align 8, !tbaa !61
  tail call void @png_write_iCCP(ptr noundef %0, ptr noundef %60, i32 noundef 0, ptr noundef %62, i32 noundef %64) #13
  br label %65

65:                                               ; preds = %58, %54
  %66 = load i32, ptr %39, align 8, !tbaa !56
  %67 = and i32 %66, 2
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 22
  %71 = load i8, ptr %27, align 1, !tbaa !52
  %72 = zext i8 %71 to i32
  tail call void @png_write_sBIT(ptr noundef %0, ptr noundef nonnull %70, i32 noundef %72) #13
  br label %73

73:                                               ; preds = %69, %65
  %74 = load i32, ptr %39, align 8, !tbaa !56
  %75 = and i32 %74, 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %94, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 33
  %79 = load i32, ptr %78, align 8, !tbaa !62
  %80 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 34
  %81 = load i32, ptr %80, align 4, !tbaa !63
  %82 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 35
  %83 = load i32, ptr %82, align 8, !tbaa !64
  %84 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 36
  %85 = load i32, ptr %84, align 4, !tbaa !65
  %86 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 37
  %87 = load i32, ptr %86, align 8, !tbaa !66
  %88 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 38
  %89 = load i32, ptr %88, align 4, !tbaa !67
  %90 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 39
  %91 = load i32, ptr %90, align 8, !tbaa !68
  %92 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 40
  %93 = load i32, ptr %92, align 4, !tbaa !69
  tail call void @png_write_cHRM_fixed(ptr noundef %0, i32 noundef %79, i32 noundef %81, i32 noundef %83, i32 noundef %85, i32 noundef %87, i32 noundef %89, i32 noundef %91, i32 noundef %93) #13
  br label %94

94:                                               ; preds = %77, %73
  %95 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 50
  %96 = load i32, ptr %95, align 8, !tbaa !70
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %143, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 49
  %100 = load i32, ptr %95, align 8, !tbaa !70
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %143

102:                                              ; preds = %98
  %103 = load ptr, ptr %99, align 8, !tbaa !71
  %104 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  br label %105

105:                                              ; preds = %102, %136
  %106 = phi ptr [ %103, %102 ], [ %137, %136 ]
  %107 = tail call i32 @png_handle_as_unknown(ptr noundef %0, ptr noundef %106) #13
  %108 = icmp eq i32 %107, 1
  br i1 %108, label %136, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.png_unknown_chunk_t, ptr %106, i64 0, i32 3
  %111 = load i8, ptr %110, align 8, !tbaa !72
  %112 = icmp ne i8 %111, 0
  %113 = and i8 %111, 14
  %114 = icmp eq i8 %113, 0
  %115 = and i1 %112, %114
  br i1 %115, label %116, label %136

116:                                              ; preds = %109
  %117 = getelementptr inbounds [5 x i8], ptr %106, i64 0, i64 3
  %118 = load i8, ptr %117, align 1, !tbaa !73
  %119 = and i8 %118, 32
  %120 = icmp ne i8 %119, 0
  %121 = icmp eq i32 %107, 3
  %122 = or i1 %121, %120
  br i1 %122, label %127, label %123

123:                                              ; preds = %116
  %124 = load i32, ptr %104, align 8, !tbaa !74
  %125 = and i32 %124, 65536
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %136, label %127

127:                                              ; preds = %123, %116
  %128 = getelementptr inbounds %struct.png_unknown_chunk_t, ptr %106, i64 0, i32 2
  %129 = load i64, ptr %128, align 8, !tbaa !75
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %127
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.1) #13
  br label %132

132:                                              ; preds = %131, %127
  %133 = getelementptr inbounds %struct.png_unknown_chunk_t, ptr %106, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !76
  %135 = load i64, ptr %128, align 8, !tbaa !75
  tail call void @png_write_chunk(ptr noundef %0, ptr noundef %106, ptr noundef %134, i64 noundef %135) #13
  br label %136

136:                                              ; preds = %132, %123, %109, %105
  %137 = getelementptr inbounds %struct.png_unknown_chunk_t, ptr %106, i64 1
  %138 = load ptr, ptr %99, align 8, !tbaa !71
  %139 = load i32, ptr %95, align 8, !tbaa !70
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.png_unknown_chunk_t, ptr %138, i64 %140
  %142 = icmp ult ptr %137, %141
  br i1 %142, label %105, label %143, !llvm.loop !77

143:                                              ; preds = %136, %98, %94
  %144 = load i32, ptr %7, align 4, !tbaa !34
  %145 = or i32 %144, 1024
  store i32 %145, ptr %7, align 4, !tbaa !34
  br label %146

146:                                              ; preds = %2, %143, %6
  ret void
}

declare void @png_write_sig(ptr noundef) local_unnamed_addr #1

declare void @png_warning(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @png_write_IHDR(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @png_write_gAMA_fixed(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @png_write_sRGB(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @png_write_iCCP(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @png_write_sBIT(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @png_write_cHRM_fixed(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare i32 @png_handle_as_unknown(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @png_write_chunk(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @png_write_info(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %248, label %6

6:                                                ; preds = %2
  tail call void @png_write_info_before_PLTE(ptr noundef %0, ptr noundef %1)
  %7 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !56
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !80
  %14 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 5
  %15 = load i16, ptr %14, align 8, !tbaa !81
  %16 = zext i16 %15 to i32
  tail call void @png_write_PLTE(ptr noundef %0, ptr noundef %13, i32 noundef %16) #13
  br label %22

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 8
  %19 = load i8, ptr %18, align 1, !tbaa !52
  %20 = icmp eq i8 %19, 3
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.2) #14
  unreachable

22:                                               ; preds = %17, %11
  %23 = load i32, ptr %7, align 8, !tbaa !56
  %24 = and i32 %23, 16
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %61, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %28 = load i32, ptr %27, align 4, !tbaa !82
  %29 = and i32 %28, 524288
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %51, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 8
  %33 = load i8, ptr %32, align 1, !tbaa !52
  %34 = icmp eq i8 %33, 3
  br i1 %34, label %35, label %51

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 6
  %37 = load i16, ptr %36, align 2, !tbaa !83
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 23
  br label %41

41:                                               ; preds = %39, %41
  %42 = phi i64 [ 0, %39 ], [ %47, %41 ]
  %43 = load ptr, ptr %40, align 8, !tbaa !84
  %44 = getelementptr inbounds i8, ptr %43, i64 %42
  %45 = load i8, ptr %44, align 1, !tbaa !73
  %46 = xor i8 %45, -1
  store i8 %46, ptr %44, align 1, !tbaa !73
  %47 = add nuw nsw i64 %42, 1
  %48 = load i16, ptr %36, align 2, !tbaa !83
  %49 = zext i16 %48 to i64
  %50 = icmp ult i64 %47, %49
  br i1 %50, label %41, label %51, !llvm.loop !85

51:                                               ; preds = %41, %35, %31, %26
  %52 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 23
  %53 = load ptr, ptr %52, align 8, !tbaa !84
  %54 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 24
  %55 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 6
  %56 = load i16, ptr %55, align 2, !tbaa !83
  %57 = zext i16 %56 to i32
  %58 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 8
  %59 = load i8, ptr %58, align 1, !tbaa !52
  %60 = zext i8 %59 to i32
  tail call void @png_write_tRNS(ptr noundef %0, ptr noundef %53, ptr noundef nonnull %54, i32 noundef %57, i32 noundef %60) #13
  br label %61

61:                                               ; preds = %51, %22
  %62 = load i32, ptr %7, align 8, !tbaa !56
  %63 = and i32 %62, 32
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 25
  %67 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 8
  %68 = load i8, ptr %67, align 1, !tbaa !52
  %69 = zext i8 %68 to i32
  tail call void @png_write_bKGD(ptr noundef %0, ptr noundef nonnull %66, i32 noundef %69) #13
  br label %70

70:                                               ; preds = %65, %61
  %71 = load i32, ptr %7, align 8, !tbaa !56
  %72 = and i32 %71, 64
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 32
  %76 = load ptr, ptr %75, align 8, !tbaa !86
  %77 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 5
  %78 = load i16, ptr %77, align 8, !tbaa !81
  %79 = zext i16 %78 to i32
  tail call void @png_write_hIST(ptr noundef %0, ptr noundef %76, i32 noundef %79) #13
  br label %80

80:                                               ; preds = %74, %70
  %81 = load i32, ptr %7, align 8, !tbaa !56
  %82 = and i32 %81, 256
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 26
  %86 = load i32, ptr %85, align 4, !tbaa !87
  %87 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 27
  %88 = load i32, ptr %87, align 8, !tbaa !88
  %89 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 28
  %90 = load i8, ptr %89, align 4, !tbaa !89
  %91 = zext i8 %90 to i32
  tail call void @png_write_oFFs(ptr noundef %0, i32 noundef %86, i32 noundef %88, i32 noundef %91) #13
  br label %92

92:                                               ; preds = %84, %80
  %93 = load i32, ptr %7, align 8, !tbaa !56
  %94 = and i32 %93, 1024
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %113, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 41
  %98 = load ptr, ptr %97, align 8, !tbaa !90
  %99 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 42
  %100 = load i32, ptr %99, align 8, !tbaa !91
  %101 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 43
  %102 = load i32, ptr %101, align 4, !tbaa !92
  %103 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 46
  %104 = load i8, ptr %103, align 8, !tbaa !93
  %105 = zext i8 %104 to i32
  %106 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 47
  %107 = load i8, ptr %106, align 1, !tbaa !94
  %108 = zext i8 %107 to i32
  %109 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 44
  %110 = load ptr, ptr %109, align 8, !tbaa !95
  %111 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 45
  %112 = load ptr, ptr %111, align 8, !tbaa !96
  tail call void @png_write_pCAL(ptr noundef %0, ptr noundef %98, i32 noundef %100, i32 noundef %102, i32 noundef %105, i32 noundef %108, ptr noundef %110, ptr noundef %112) #13
  br label %113

113:                                              ; preds = %96, %92
  %114 = load i32, ptr %7, align 8, !tbaa !56
  %115 = and i32 %114, 16384
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %125, label %117

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 57
  %119 = load i8, ptr %118, align 4, !tbaa !97
  %120 = zext i8 %119 to i32
  %121 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 58
  %122 = load ptr, ptr %121, align 8, !tbaa !98
  %123 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 59
  %124 = load ptr, ptr %123, align 8, !tbaa !99
  tail call void @png_write_sCAL_s(ptr noundef %0, i32 noundef %120, ptr noundef %122, ptr noundef %124) #13
  br label %125

125:                                              ; preds = %117, %113
  %126 = load i32, ptr %7, align 8, !tbaa !56
  %127 = and i32 %126, 128
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %137, label %129

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 29
  %131 = load i32, ptr %130, align 8, !tbaa !100
  %132 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 30
  %133 = load i32, ptr %132, align 4, !tbaa !101
  %134 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 31
  %135 = load i8, ptr %134, align 8, !tbaa !102
  %136 = zext i8 %135 to i32
  tail call void @png_write_pHYs(ptr noundef %0, i32 noundef %131, i32 noundef %133, i32 noundef %136) #13
  br label %137

137:                                              ; preds = %129, %125
  %138 = load i32, ptr %7, align 8, !tbaa !56
  %139 = and i32 %138, 512
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %146, label %141

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 21
  tail call void @png_write_tIME(ptr noundef %0, ptr noundef nonnull %142) #13
  %143 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %144 = load i32, ptr %143, align 4, !tbaa !34
  %145 = or i32 %144, 512
  store i32 %145, ptr %143, align 4, !tbaa !34
  br label %146

146:                                              ; preds = %141, %137
  %147 = load i32, ptr %7, align 8, !tbaa !56
  %148 = and i32 %147, 8192
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %164, label %150

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 56
  %152 = load i32, ptr %151, align 8, !tbaa !103
  %153 = icmp sgt i32 %152, 0
  br i1 %153, label %154, label %164

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 55
  br label %156

156:                                              ; preds = %154, %156
  %157 = phi i64 [ 0, %154 ], [ %160, %156 ]
  %158 = load ptr, ptr %155, align 8, !tbaa !104
  %159 = getelementptr inbounds %struct.png_sPLT_struct, ptr %158, i64 %157
  tail call void @png_write_sPLT(ptr noundef %0, ptr noundef %159) #13
  %160 = add nuw nsw i64 %157, 1
  %161 = load i32, ptr %151, align 8, !tbaa !103
  %162 = sext i32 %161 to i64
  %163 = icmp slt i64 %160, %162
  br i1 %163, label %156, label %164, !llvm.loop !105

164:                                              ; preds = %156, %150, %146
  %165 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 18
  %166 = load i32, ptr %165, align 4, !tbaa !106
  %167 = icmp sgt i32 %166, 0
  br i1 %167, label %168, label %205

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 20
  br label %170

170:                                              ; preds = %168, %200
  %171 = phi i64 [ 0, %168 ], [ %201, %200 ]
  %172 = load ptr, ptr %169, align 8, !tbaa !107
  %173 = getelementptr inbounds %struct.png_text_struct, ptr %172, i64 %171
  %174 = load i32, ptr %173, align 8, !tbaa !108
  %175 = icmp sgt i32 %174, 0
  br i1 %175, label %176, label %185

176:                                              ; preds = %170
  %177 = getelementptr inbounds %struct.png_text_struct, ptr %172, i64 %171, i32 1
  %178 = load ptr, ptr %177, align 8, !tbaa !110
  %179 = getelementptr inbounds %struct.png_text_struct, ptr %172, i64 %171, i32 5
  %180 = load ptr, ptr %179, align 8, !tbaa !111
  %181 = getelementptr inbounds %struct.png_text_struct, ptr %172, i64 %171, i32 6
  %182 = load ptr, ptr %181, align 8, !tbaa !112
  %183 = getelementptr inbounds %struct.png_text_struct, ptr %172, i64 %171, i32 2
  %184 = load ptr, ptr %183, align 8, !tbaa !113
  tail call void @png_write_iTXt(ptr noundef %0, i32 noundef %174, ptr noundef %178, ptr noundef %180, ptr noundef %182, ptr noundef %184) #13
  br label %196

185:                                              ; preds = %170
  switch i32 %174, label %200 [
    i32 0, label %186
    i32 -1, label %191
  ]

186:                                              ; preds = %185
  %187 = getelementptr inbounds %struct.png_text_struct, ptr %172, i64 %171, i32 1
  %188 = load ptr, ptr %187, align 8, !tbaa !110
  %189 = getelementptr inbounds %struct.png_text_struct, ptr %172, i64 %171, i32 2
  %190 = load ptr, ptr %189, align 8, !tbaa !113
  tail call void @png_write_zTXt(ptr noundef %0, ptr noundef %188, ptr noundef %190, i64 noundef 0, i32 noundef 0) #13
  br label %196

191:                                              ; preds = %185
  %192 = getelementptr inbounds %struct.png_text_struct, ptr %172, i64 %171, i32 1
  %193 = load ptr, ptr %192, align 8, !tbaa !110
  %194 = getelementptr inbounds %struct.png_text_struct, ptr %172, i64 %171, i32 2
  %195 = load ptr, ptr %194, align 8, !tbaa !113
  tail call void @png_write_tEXt(ptr noundef %0, ptr noundef %193, ptr noundef %195, i64 noundef 0) #13
  br label %196

196:                                              ; preds = %186, %191, %176
  %197 = phi i32 [ -3, %176 ], [ -3, %191 ], [ -2, %186 ]
  %198 = load ptr, ptr %169, align 8, !tbaa !107
  %199 = getelementptr inbounds %struct.png_text_struct, ptr %198, i64 %171
  store i32 %197, ptr %199, align 8, !tbaa !108
  br label %200

200:                                              ; preds = %196, %185
  %201 = add nuw nsw i64 %171, 1
  %202 = load i32, ptr %165, align 4, !tbaa !106
  %203 = sext i32 %202 to i64
  %204 = icmp slt i64 %201, %203
  br i1 %204, label %170, label %205, !llvm.loop !114

205:                                              ; preds = %200, %164
  %206 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 50
  %207 = load i32, ptr %206, align 8, !tbaa !70
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %248, label %209

209:                                              ; preds = %205
  %210 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 49
  %211 = load i32, ptr %206, align 8, !tbaa !70
  %212 = icmp sgt i32 %211, 0
  br i1 %212, label %213, label %248

213:                                              ; preds = %209
  %214 = load ptr, ptr %210, align 8, !tbaa !71
  %215 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  br label %216

216:                                              ; preds = %213, %241
  %217 = phi ptr [ %214, %213 ], [ %242, %241 ]
  %218 = tail call i32 @png_handle_as_unknown(ptr noundef %0, ptr noundef %217) #13
  %219 = icmp eq i32 %218, 1
  br i1 %219, label %241, label %220

220:                                              ; preds = %216
  %221 = getelementptr inbounds %struct.png_unknown_chunk_t, ptr %217, i64 0, i32 3
  %222 = load i8, ptr %221, align 8, !tbaa !72
  %223 = and i8 %222, 14
  %224 = icmp eq i8 %223, 2
  br i1 %224, label %225, label %241

225:                                              ; preds = %220
  %226 = getelementptr inbounds [5 x i8], ptr %217, i64 0, i64 3
  %227 = load i8, ptr %226, align 1, !tbaa !73
  %228 = and i8 %227, 32
  %229 = icmp ne i8 %228, 0
  %230 = icmp eq i32 %218, 3
  %231 = or i1 %230, %229
  br i1 %231, label %236, label %232

232:                                              ; preds = %225
  %233 = load i32, ptr %215, align 8, !tbaa !74
  %234 = and i32 %233, 65536
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %241, label %236

236:                                              ; preds = %232, %225
  %237 = getelementptr inbounds %struct.png_unknown_chunk_t, ptr %217, i64 0, i32 1
  %238 = load ptr, ptr %237, align 8, !tbaa !76
  %239 = getelementptr inbounds %struct.png_unknown_chunk_t, ptr %217, i64 0, i32 2
  %240 = load i64, ptr %239, align 8, !tbaa !75
  tail call void @png_write_chunk(ptr noundef %0, ptr noundef %217, ptr noundef %238, i64 noundef %240) #13
  br label %241

241:                                              ; preds = %236, %232, %220, %216
  %242 = getelementptr inbounds %struct.png_unknown_chunk_t, ptr %217, i64 1
  %243 = load ptr, ptr %210, align 8, !tbaa !71
  %244 = load i32, ptr %206, align 8, !tbaa !70
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.png_unknown_chunk_t, ptr %243, i64 %245
  %247 = icmp ult ptr %242, %246
  br i1 %247, label %216, label %248, !llvm.loop !115

248:                                              ; preds = %241, %209, %205, %2
  ret void
}

declare void @png_write_PLTE(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @png_error(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @png_write_tRNS(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @png_write_bKGD(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @png_write_hIST(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @png_write_oFFs(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @png_write_pCAL(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @png_write_sCAL_s(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @png_write_pHYs(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @png_write_tIME(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @png_write_sPLT(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @png_write_iTXt(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @png_write_zTXt(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare void @png_write_tEXt(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @png_write_end(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %121, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 13
  %6 = load i32, ptr %5, align 4, !tbaa !34
  %7 = and i32 %6, 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.3) #14
  unreachable

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 49
  %12 = load i32, ptr %11, align 4, !tbaa !116
  %13 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 48
  %14 = load i16, ptr %13, align 8, !tbaa !117
  %15 = zext i16 %14 to i32
  %16 = icmp sgt i32 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  tail call void @png_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.4) #13
  br label %18

18:                                               ; preds = %17, %10
  %19 = icmp eq ptr %1, null
  br i1 %19, label %118, label %20

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
  %33 = load i32, ptr %32, align 4, !tbaa !106
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %75

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 20
  br label %37

37:                                               ; preds = %35, %70
  %38 = phi i64 [ 0, %35 ], [ %71, %70 ]
  %39 = load ptr, ptr %36, align 8, !tbaa !107
  %40 = getelementptr inbounds %struct.png_text_struct, ptr %39, i64 %38
  %41 = load i32, ptr %40, align 8, !tbaa !108
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.png_text_struct, ptr %39, i64 %38, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !110
  %46 = getelementptr inbounds %struct.png_text_struct, ptr %39, i64 %38, i32 5
  %47 = load ptr, ptr %46, align 8, !tbaa !111
  %48 = getelementptr inbounds %struct.png_text_struct, ptr %39, i64 %38, i32 6
  %49 = load ptr, ptr %48, align 8, !tbaa !112
  %50 = getelementptr inbounds %struct.png_text_struct, ptr %39, i64 %38, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !113
  tail call void @png_write_iTXt(ptr noundef nonnull %0, i32 noundef %41, ptr noundef %45, ptr noundef %47, ptr noundef %49, ptr noundef %51) #13
  br label %66

52:                                               ; preds = %37
  %53 = icmp sgt i32 %41, -1
  br i1 %53, label %54, label %59

54:                                               ; preds = %52
  %55 = getelementptr inbounds %struct.png_text_struct, ptr %39, i64 %38, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !110
  %57 = getelementptr inbounds %struct.png_text_struct, ptr %39, i64 %38, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !113
  tail call void @png_write_zTXt(ptr noundef nonnull %0, ptr noundef %56, ptr noundef %58, i64 noundef 0, i32 noundef 0) #13
  br label %66

59:                                               ; preds = %52
  %60 = icmp eq i32 %41, -1
  br i1 %60, label %61, label %70

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.png_text_struct, ptr %39, i64 %38, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !110
  %64 = getelementptr inbounds %struct.png_text_struct, ptr %39, i64 %38, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !113
  tail call void @png_write_tEXt(ptr noundef nonnull %0, ptr noundef %63, ptr noundef %65, i64 noundef 0) #13
  br label %66

66:                                               ; preds = %54, %61, %43
  %67 = phi i32 [ -3, %43 ], [ -3, %61 ], [ -2, %54 ]
  %68 = load ptr, ptr %36, align 8, !tbaa !107
  %69 = getelementptr inbounds %struct.png_text_struct, ptr %68, i64 %38
  store i32 %67, ptr %69, align 8, !tbaa !108
  br label %70

70:                                               ; preds = %66, %59
  %71 = add nuw nsw i64 %38, 1
  %72 = load i32, ptr %32, align 4, !tbaa !106
  %73 = sext i32 %72 to i64
  %74 = icmp slt i64 %71, %73
  br i1 %74, label %37, label %75, !llvm.loop !118

75:                                               ; preds = %70, %31
  %76 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 50
  %77 = load i32, ptr %76, align 8, !tbaa !70
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %118, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 49
  %81 = load i32, ptr %76, align 8, !tbaa !70
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %118

83:                                               ; preds = %79
  %84 = load ptr, ptr %80, align 8, !tbaa !71
  %85 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  br label %86

86:                                               ; preds = %83, %111
  %87 = phi ptr [ %84, %83 ], [ %112, %111 ]
  %88 = tail call i32 @png_handle_as_unknown(ptr noundef nonnull %0, ptr noundef %87) #13
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %111, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.png_unknown_chunk_t, ptr %87, i64 0, i32 3
  %92 = load i8, ptr %91, align 8, !tbaa !72
  %93 = and i8 %92, 8
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %111, label %95

95:                                               ; preds = %90
  %96 = getelementptr inbounds [5 x i8], ptr %87, i64 0, i64 3
  %97 = load i8, ptr %96, align 1, !tbaa !73
  %98 = and i8 %97, 32
  %99 = icmp ne i8 %98, 0
  %100 = icmp eq i32 %88, 3
  %101 = or i1 %100, %99
  br i1 %101, label %106, label %102

102:                                              ; preds = %95
  %103 = load i32, ptr %85, align 8, !tbaa !74
  %104 = and i32 %103, 65536
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %102, %95
  %107 = getelementptr inbounds %struct.png_unknown_chunk_t, ptr %87, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !76
  %109 = getelementptr inbounds %struct.png_unknown_chunk_t, ptr %87, i64 0, i32 2
  %110 = load i64, ptr %109, align 8, !tbaa !75
  tail call void @png_write_chunk(ptr noundef nonnull %0, ptr noundef %87, ptr noundef %108, i64 noundef %110) #13
  br label %111

111:                                              ; preds = %106, %102, %90, %86
  %112 = getelementptr inbounds %struct.png_unknown_chunk_t, ptr %87, i64 1
  %113 = load ptr, ptr %80, align 8, !tbaa !71
  %114 = load i32, ptr %76, align 8, !tbaa !70
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.png_unknown_chunk_t, ptr %113, i64 %115
  %117 = icmp ult ptr %112, %116
  br i1 %117, label %86, label %118, !llvm.loop !119

118:                                              ; preds = %111, %79, %75, %18
  %119 = load i32, ptr %5, align 4, !tbaa !34
  %120 = or i32 %119, 8
  store i32 %120, ptr %5, align 4, !tbaa !34
  tail call void @png_write_IEND(ptr noundef nonnull %0) #13
  br label %121

121:                                              ; preds = %2, %118
  ret void
}

declare void @png_benign_error(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @png_write_IEND(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @png_convert_from_struct_tm(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.tm, ptr %1, i64 0, i32 5
  %4 = load i32, ptr %3, align 4, !tbaa !120
  %5 = trunc i32 %4 to i16
  %6 = add i16 %5, 1900
  store i16 %6, ptr %0, align 2, !tbaa !122
  %7 = getelementptr inbounds %struct.tm, ptr %1, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !123
  %9 = trunc i32 %8 to i8
  %10 = add i8 %9, 1
  %11 = getelementptr inbounds %struct.png_time_struct, ptr %0, i64 0, i32 1
  store i8 %10, ptr %11, align 2, !tbaa !124
  %12 = getelementptr inbounds %struct.tm, ptr %1, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !125
  %14 = trunc i32 %13 to i8
  %15 = getelementptr inbounds %struct.png_time_struct, ptr %0, i64 0, i32 2
  store i8 %14, ptr %15, align 1, !tbaa !126
  %16 = getelementptr inbounds %struct.tm, ptr %1, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !127
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.png_time_struct, ptr %0, i64 0, i32 3
  store i8 %18, ptr %19, align 2, !tbaa !128
  %20 = getelementptr inbounds %struct.tm, ptr %1, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !129
  %22 = trunc i32 %21 to i8
  %23 = getelementptr inbounds %struct.png_time_struct, ptr %0, i64 0, i32 4
  store i8 %22, ptr %23, align 1, !tbaa !130
  %24 = load i32, ptr %1, align 8, !tbaa !131
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds %struct.png_time_struct, ptr %0, i64 0, i32 5
  store i8 %25, ptr %26, align 2, !tbaa !132
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_convert_from_time_t(ptr nocapture noundef writeonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  store i64 %1, ptr %3, align 8, !tbaa !133
  %4 = call ptr @gmtime(ptr noundef nonnull %3) #13
  %5 = getelementptr inbounds %struct.tm, ptr %4, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !120
  %7 = trunc i32 %6 to i16
  %8 = add i16 %7, 1900
  store i16 %8, ptr %0, align 2, !tbaa !122
  %9 = getelementptr inbounds %struct.tm, ptr %4, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !123
  %11 = trunc i32 %10 to i8
  %12 = add i8 %11, 1
  %13 = getelementptr inbounds %struct.png_time_struct, ptr %0, i64 0, i32 1
  store i8 %12, ptr %13, align 2, !tbaa !124
  %14 = getelementptr inbounds %struct.tm, ptr %4, i64 0, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !125
  %16 = trunc i32 %15 to i8
  %17 = getelementptr inbounds %struct.png_time_struct, ptr %0, i64 0, i32 2
  store i8 %16, ptr %17, align 1, !tbaa !126
  %18 = getelementptr inbounds %struct.tm, ptr %4, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !127
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.png_time_struct, ptr %0, i64 0, i32 3
  store i8 %20, ptr %21, align 2, !tbaa !128
  %22 = getelementptr inbounds %struct.tm, ptr %4, i64 0, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !129
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds %struct.png_time_struct, ptr %0, i64 0, i32 4
  store i8 %24, ptr %25, align 1, !tbaa !130
  %26 = load i32, ptr %4, align 8, !tbaa !131
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.png_time_struct, ptr %0, i64 0, i32 5
  store i8 %27, ptr %28, align 2, !tbaa !132
  ret void
}

; Function Attrs: nounwind
declare ptr @gmtime(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @png_create_write_struct(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call noalias ptr @png_create_write_struct_2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef null, ptr noundef null, ptr noundef null)
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @png_create_write_struct_2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8)
  store volatile i32 0, ptr %8, align 4, !tbaa !134
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9)
  %10 = call noalias ptr @png_create_struct_2(i32 noundef 1, ptr noundef %5, ptr noundef %4) #13
  store volatile ptr %10, ptr %9, align 8, !tbaa !135
  %11 = load volatile ptr, ptr %9, align 8, !tbaa !135
  %12 = icmp eq ptr %11, null
  br i1 %12, label %80, label %13

13:                                               ; preds = %7
  %14 = load volatile ptr, ptr %9, align 8, !tbaa !135
  %15 = getelementptr inbounds %struct.png_struct_def, ptr %14, i64 0, i32 135
  store i32 2147483647, ptr %15, align 4, !tbaa !136
  %16 = load volatile ptr, ptr %9, align 8, !tbaa !135
  %17 = getelementptr inbounds %struct.png_struct_def, ptr %16, i64 0, i32 136
  store i32 2147483647, ptr %17, align 8, !tbaa !137
  %18 = load volatile ptr, ptr %9, align 8, !tbaa !135
  %19 = call ptr @png_set_longjmp_fn(ptr noundef %18, ptr noundef nonnull @longjmp, i64 noundef 200) #13
  %20 = call i32 @_setjmp(ptr noundef %19) #15
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %13
  call void @abort() #14
  unreachable

23:                                               ; preds = %13
  %24 = load volatile ptr, ptr %9, align 8, !tbaa !135
  call void @png_set_mem_fn(ptr noundef %24, ptr noundef %4, ptr noundef %5, ptr noundef %6) #13
  %25 = load volatile ptr, ptr %9, align 8, !tbaa !135
  call void @png_set_error_fn(ptr noundef %25, ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  %26 = load volatile ptr, ptr %9, align 8, !tbaa !135
  %27 = call i32 @png_user_version_check(ptr noundef %26, ptr noundef %0) #13
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store volatile i32 1, ptr %8, align 4, !tbaa !134
  br label %30

30:                                               ; preds = %29, %23
  %31 = load volatile ptr, ptr %9, align 8, !tbaa !135
  %32 = getelementptr inbounds %struct.png_struct_def, ptr %31, i64 0, i32 18
  store i32 8192, ptr %32, align 8, !tbaa !138
  %33 = load volatile i32, ptr %8, align 4, !tbaa !134
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %30
  %36 = load volatile ptr, ptr %9, align 8, !tbaa !135
  %37 = load volatile ptr, ptr %9, align 8, !tbaa !135
  %38 = getelementptr inbounds %struct.png_struct_def, ptr %37, i64 0, i32 18
  %39 = load i32, ptr %38, align 8, !tbaa !138
  %40 = zext i32 %39 to i64
  %41 = call noalias ptr @png_malloc_warn(ptr noundef %36, i64 noundef %40) #13
  %42 = load volatile ptr, ptr %9, align 8, !tbaa !135
  %43 = getelementptr inbounds %struct.png_struct_def, ptr %42, i64 0, i32 17
  store ptr %41, ptr %43, align 8, !tbaa !139
  %44 = load volatile ptr, ptr %9, align 8, !tbaa !135
  %45 = getelementptr inbounds %struct.png_struct_def, ptr %44, i64 0, i32 17
  %46 = load ptr, ptr %45, align 8, !tbaa !139
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %35
  store volatile i32 1, ptr %8, align 4, !tbaa !134
  br label %49

49:                                               ; preds = %35, %48, %30
  %50 = load volatile i32, ptr %8, align 4, !tbaa !134
  %51 = icmp eq i32 %50, 0
  %52 = load volatile ptr, ptr %9, align 8, !tbaa !135
  br i1 %51, label %60, label %53

53:                                               ; preds = %49
  %54 = load volatile ptr, ptr %9, align 8, !tbaa !135
  %55 = getelementptr inbounds %struct.png_struct_def, ptr %54, i64 0, i32 17
  %56 = load ptr, ptr %55, align 8, !tbaa !139
  call void @png_free(ptr noundef %52, ptr noundef %56) #13
  %57 = load volatile ptr, ptr %9, align 8, !tbaa !135
  %58 = getelementptr inbounds %struct.png_struct_def, ptr %57, i64 0, i32 17
  store ptr null, ptr %58, align 8, !tbaa !139
  %59 = load volatile ptr, ptr %9, align 8, !tbaa !135
  call void @png_destroy_struct_2(ptr noundef %59, ptr noundef %6, ptr noundef %4) #13
  br label %80

60:                                               ; preds = %49
  call void @png_set_write_fn(ptr noundef %52, ptr noundef null, ptr noundef null, ptr noundef null) #13
  %61 = load volatile ptr, ptr %9, align 8, !tbaa !135
  %62 = getelementptr inbounds %struct.png_struct_def, ptr %61, i64 0, i32 108
  store i8 0, ptr %62, align 1, !tbaa !140
  %63 = getelementptr inbounds %struct.png_struct_def, ptr %61, i64 0, i32 107
  store i8 1, ptr %63, align 8, !tbaa !141
  %64 = getelementptr inbounds %struct.png_struct_def, ptr %61, i64 0, i32 109
  %65 = load ptr, ptr %64, align 8, !tbaa !142
  %66 = icmp eq ptr %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %60
  store ptr null, ptr %64, align 8, !tbaa !142
  call void @png_free(ptr noundef %61, ptr noundef nonnull %65) #13
  br label %68

68:                                               ; preds = %67, %60
  %69 = getelementptr inbounds %struct.png_struct_def, ptr %61, i64 0, i32 110
  %70 = load ptr, ptr %69, align 8, !tbaa !143
  %71 = icmp eq ptr %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %68
  store ptr null, ptr %69, align 8, !tbaa !143
  call void @png_free(ptr noundef %61, ptr noundef nonnull %70) #13
  br label %73

73:                                               ; preds = %72, %68
  %74 = getelementptr inbounds %struct.png_struct_def, ptr %61, i64 0, i32 111
  %75 = load ptr, ptr %74, align 8, !tbaa !144
  %76 = icmp eq ptr %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %73
  store ptr null, ptr %74, align 8, !tbaa !144
  call void @png_free(ptr noundef %61, ptr noundef nonnull %75) #13
  br label %78

78:                                               ; preds = %73, %77
  %79 = load volatile ptr, ptr %9, align 8, !tbaa !135
  br label %80

80:                                               ; preds = %7, %78, %53
  %81 = phi ptr [ null, %53 ], [ %79, %78 ], [ null, %7 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8)
  ret ptr %81
}

declare noalias ptr @png_create_struct_2(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind returns_twice
declare i32 @_setjmp(ptr noundef) local_unnamed_addr #6

declare ptr @png_set_longjmp_fn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @longjmp(ptr noundef, i32 noundef) #7

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

declare void @png_set_mem_fn(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @png_set_error_fn(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @png_user_version_check(ptr noundef, ptr noundef) local_unnamed_addr #1

declare noalias ptr @png_malloc_warn(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @png_free(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @png_destroy_struct_2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @png_set_write_fn(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @png_write_rows(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne i32 %2, 0
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %14

7:                                                ; preds = %3, %7
  %8 = phi ptr [ %12, %7 ], [ %1, %3 ]
  %9 = phi i32 [ %11, %7 ], [ 0, %3 ]
  %10 = load ptr, ptr %8, align 8, !tbaa !135
  tail call void @png_write_row(ptr noundef nonnull %0, ptr noundef %10)
  %11 = add nuw i32 %9, 1
  %12 = getelementptr inbounds ptr, ptr %8, i64 1
  %13 = icmp eq i32 %11, %2
  br i1 %13, label %14, label %7, !llvm.loop !145

14:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_write_row(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.png_row_info_struct, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
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
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.5) #14
  unreachable

19:                                               ; preds = %13
  tail call void @png_write_start_row(ptr noundef %0) #13
  br label %20

20:                                               ; preds = %19, %9, %5
  %21 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 53
  %22 = load i8, ptr %21, align 4, !tbaa !148
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %79, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %26 = load i32, ptr %25, align 4, !tbaa !82
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
  tail call void @png_write_finish_row(ptr noundef %0) #13
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
  tail call void @png_write_finish_row(ptr noundef %0) #13
  br label %168

46:                                               ; preds = %29
  %47 = load i32, ptr %6, align 4, !tbaa !146
  %48 = and i32 %47, 7
  %49 = icmp eq i32 %48, 4
  br i1 %49, label %79, label %50

50:                                               ; preds = %46
  tail call void @png_write_finish_row(ptr noundef %0) #13
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
  tail call void @png_write_finish_row(ptr noundef %0) #13
  br label %168

60:                                               ; preds = %29
  %61 = load i32, ptr %6, align 4, !tbaa !146
  %62 = and i32 %61, 3
  %63 = icmp eq i32 %62, 2
  br i1 %63, label %79, label %64

64:                                               ; preds = %60
  tail call void @png_write_finish_row(ptr noundef %0) #13
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
  tail call void @png_write_finish_row(ptr noundef %0) #13
  br label %168

74:                                               ; preds = %29
  %75 = load i32, ptr %6, align 4, !tbaa !146
  %76 = and i32 %75, 1
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  tail call void @png_write_finish_row(ptr noundef %0) #13
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
  %119 = load i32, ptr %118, align 4, !tbaa !82
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
  call void @png_write_finish_row(ptr noundef %0) #13
  br label %168

128:                                              ; preds = %122, %117, %112, %104
  %129 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %130 = load i32, ptr %129, align 4, !tbaa !82
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %128
  call void @png_do_write_transformations(ptr noundef %0, ptr noundef nonnull %3) #13
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
  call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.6) #14
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
  call void @png_do_check_palette_indexes(ptr noundef %0, ptr noundef nonnull %3) #13
  br label %159

159:                                              ; preds = %158, %155
  call void @png_write_find_filter(ptr noundef %0, ptr noundef nonnull %3) #13
  %160 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 88
  %161 = load ptr, ptr %160, align 8, !tbaa !165
  %162 = icmp eq ptr %161, null
  br i1 %162, label %168, label %163

163:                                              ; preds = %159
  %164 = load i32, ptr %6, align 4, !tbaa !146
  %165 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 54
  %166 = load i8, ptr %165, align 1, !tbaa !147
  %167 = zext i8 %166 to i32
  call void %161(ptr noundef %0, i32 noundef %164, i32 noundef %167) #13
  br label %168

168:                                              ; preds = %159, %163, %2, %127, %78, %73, %64, %59, %50, %45, %36
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_write_image(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %24, label %4

4:                                                ; preds = %2
  %5 = tail call i32 @png_set_interlace_handling(ptr noundef nonnull %0) #13
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %24

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 31
  br label %9

9:                                                ; preds = %7, %21
  %10 = phi i32 [ 0, %7 ], [ %22, %21 ]
  %11 = load i32, ptr %8, align 4, !tbaa !166
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %9, %13
  %14 = phi ptr [ %18, %13 ], [ %1, %9 ]
  %15 = phi i32 [ %17, %13 ], [ 0, %9 ]
  %16 = load ptr, ptr %14, align 8, !tbaa !135
  tail call void @png_write_row(ptr noundef nonnull %0, ptr noundef %16)
  %17 = add nuw i32 %15, 1
  %18 = getelementptr inbounds ptr, ptr %14, i64 1
  %19 = load i32, ptr %8, align 4, !tbaa !166
  %20 = icmp ult i32 %17, %19
  br i1 %20, label %13, label %21, !llvm.loop !167

21:                                               ; preds = %13, %9
  %22 = add nuw nsw i32 %10, 1
  %23 = icmp eq i32 %22, %5
  br i1 %23, label %24, label %9, !llvm.loop !168

24:                                               ; preds = %21, %4, %2
  ret void
}

declare i32 @png_set_interlace_handling(ptr noundef) local_unnamed_addr #1

declare void @png_write_start_row(ptr noundef) local_unnamed_addr #1

declare void @png_write_finish_row(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

declare void @png_do_write_interlace(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @png_do_write_transformations(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @png_do_write_intrapixel(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @png_do_check_palette_indexes(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @png_write_find_filter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
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

; Function Attrs: nounwind uwtable
define dso_local void @png_write_flush(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %43, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 36
  %5 = load i32, ptr %4, align 4, !tbaa !146
  %6 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 32
  %7 = load i32, ptr %6, align 8, !tbaa !170
  %8 = icmp ult i32 %5, %7
  br i1 %8, label %9, label %43

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
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull %19) #14
  unreachable

22:                                               ; preds = %17
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.7) #14
  unreachable

23:                                               ; preds = %13, %26
  %24 = load i32, ptr %14, align 8, !tbaa !172
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load ptr, ptr %15, align 8, !tbaa !139
  %28 = load i32, ptr %16, align 8, !tbaa !138
  %29 = zext i32 %28 to i64
  tail call void @png_write_IDAT(ptr noundef nonnull %0, ptr noundef %27, i64 noundef %29) #13
  %30 = tail call i32 @deflate(ptr noundef nonnull %10, i32 noundef 2) #13
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %23, label %17, !llvm.loop !173

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 18
  %34 = load i32, ptr %33, align 8, !tbaa !138
  %35 = icmp eq i32 %34, %24
  br i1 %35, label %41, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 17
  %38 = load ptr, ptr %37, align 8, !tbaa !139
  %39 = sub i32 %34, %24
  %40 = zext i32 %39 to i64
  tail call void @png_write_IDAT(ptr noundef nonnull %0, ptr noundef %38, i64 noundef %40) #13
  br label %41

41:                                               ; preds = %36, %32
  %42 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 73
  store i32 0, ptr %42, align 4, !tbaa !174
  tail call void @png_flush(ptr noundef nonnull %0) #13
  br label %43

43:                                               ; preds = %3, %1, %41
  ret void
}

declare i32 @deflate(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @png_write_IDAT(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @png_flush(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @png_destroy_write_struct(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !135
  br label %6

6:                                                ; preds = %4, %2
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.png_struct_def, ptr %7, i64 0, i32 129
  %11 = load ptr, ptr %10, align 8, !tbaa !175
  %12 = getelementptr inbounds %struct.png_struct_def, ptr %7, i64 0, i32 127
  %13 = load ptr, ptr %12, align 8, !tbaa !176
  br label %14

14:                                               ; preds = %9, %6
  %15 = phi ptr [ %11, %9 ], [ null, %6 ]
  %16 = phi ptr [ %13, %9 ], [ null, %6 ]
  %17 = icmp eq ptr %1, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %1, align 8, !tbaa !135
  br label %20

20:                                               ; preds = %18, %14
  %21 = phi ptr [ %19, %18 ], [ null, %14 ]
  %22 = icmp eq ptr %21, null
  br i1 %22, label %32, label %23

23:                                               ; preds = %20
  br i1 %8, label %31, label %24

24:                                               ; preds = %23
  tail call void @png_free_data(ptr noundef nonnull %7, ptr noundef nonnull %21, i32 noundef 32767, i32 noundef -1) #13
  %25 = getelementptr inbounds %struct.png_struct_def, ptr %7, i64 0, i32 118
  %26 = load i32, ptr %25, align 8, !tbaa !177
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.png_struct_def, ptr %7, i64 0, i32 119
  %30 = load ptr, ptr %29, align 8, !tbaa !178
  tail call void @png_free(ptr noundef nonnull %7, ptr noundef %30) #13
  store i32 0, ptr %25, align 8, !tbaa !177
  br label %31

31:                                               ; preds = %24, %28, %23
  tail call void @png_destroy_struct_2(ptr noundef nonnull %21, ptr noundef %15, ptr noundef %16) #13
  store ptr null, ptr %1, align 8, !tbaa !135
  br label %32

32:                                               ; preds = %31, %20
  br i1 %8, label %34, label %33

33:                                               ; preds = %32
  tail call void @png_write_destroy(ptr noundef nonnull %7)
  tail call void @png_destroy_struct_2(ptr noundef nonnull %7, ptr noundef %15, ptr noundef %16) #13
  store ptr null, ptr %0, align 8, !tbaa !135
  br label %34

34:                                               ; preds = %33, %32
  ret void
}

declare void @png_free_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
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
  %11 = load ptr, ptr %10, align 8, !tbaa !139
  tail call void @png_free(ptr noundef %0, ptr noundef %11) #13
  %12 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 39
  %13 = load ptr, ptr %12, align 8, !tbaa !161
  tail call void @png_free(ptr noundef %0, ptr noundef %13) #13
  %14 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 38
  %15 = load ptr, ptr %14, align 8, !tbaa !180
  tail call void @png_free(ptr noundef %0, ptr noundef %15) #13
  %16 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 40
  %17 = load ptr, ptr %16, align 8, !tbaa !181
  tail call void @png_free(ptr noundef %0, ptr noundef %17) #13
  %18 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 41
  %19 = load ptr, ptr %18, align 8, !tbaa !182
  tail call void @png_free(ptr noundef %0, ptr noundef %19) #13
  %20 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 42
  %21 = load ptr, ptr %20, align 8, !tbaa !183
  tail call void @png_free(ptr noundef %0, ptr noundef %21) #13
  %22 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 43
  %23 = load ptr, ptr %22, align 8, !tbaa !184
  tail call void @png_free(ptr noundef %0, ptr noundef %23) #13
  %24 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 108
  store i8 0, ptr %24, align 1, !tbaa !140
  %25 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 107
  store i8 1, ptr %25, align 8, !tbaa !141
  %26 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 109
  %27 = load ptr, ptr %26, align 8, !tbaa !142
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %9
  store ptr null, ptr %26, align 8, !tbaa !142
  tail call void @png_free(ptr noundef %0, ptr noundef nonnull %27) #13
  br label %30

30:                                               ; preds = %29, %9
  %31 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 110
  %32 = load ptr, ptr %31, align 8, !tbaa !143
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  store ptr null, ptr %31, align 8, !tbaa !143
  tail call void @png_free(ptr noundef %0, ptr noundef nonnull %32) #13
  br label %35

35:                                               ; preds = %34, %30
  %36 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 111
  %37 = load ptr, ptr %36, align 8, !tbaa !144
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  store ptr null, ptr %36, align 8, !tbaa !144
  tail call void @png_free(ptr noundef %0, ptr noundef nonnull %37) #13
  br label %40

40:                                               ; preds = %35, %39
  %41 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 112
  %42 = load ptr, ptr %41, align 8, !tbaa !185
  tail call void @png_free(ptr noundef %0, ptr noundef %42) #13
  %43 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 113
  %44 = load ptr, ptr %43, align 8, !tbaa !186
  tail call void @png_free(ptr noundef %0, ptr noundef %44) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(200) %2, ptr noundef nonnull align 8 dereferenceable(200) %0, i64 200, i1 false)
  %45 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !187
  %47 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !188
  %49 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 4
  %50 = load ptr, ptr %49, align 8, !tbaa !189
  %51 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 129
  %52 = load ptr, ptr %51, align 8, !tbaa !175
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1216) %0, i8 0, i64 1216, i1 false)
  store ptr %46, ptr %45, align 8, !tbaa !187
  store ptr %48, ptr %47, align 8, !tbaa !188
  store ptr %50, ptr %49, align 8, !tbaa !189
  store ptr %52, ptr %51, align 8, !tbaa !175
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 16 dereferenceable(200) %2, i64 200, i1 false)
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %2)
  ret void
}

declare i32 @deflateEnd(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: nounwind uwtable
define dso_local void @png_set_filter(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %106, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 125
  %7 = load i32, ptr %6, align 8, !tbaa !46
  %8 = and i32 %7, 4
  %9 = icmp ne i32 %8, 0
  %10 = icmp eq i32 %1, 64
  %11 = and i1 %10, %9
  %12 = icmp eq i32 %1, 0
  %13 = or i1 %12, %11
  br i1 %13, label %14, label %105

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
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.8) #13
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
  store i8 %23, ptr %24, align 2, !tbaa !190
  %25 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 39
  %26 = load ptr, ptr %25, align 8, !tbaa !161
  %27 = icmp eq ptr %26, null
  br i1 %27, label %106, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 55
  %30 = load i8, ptr %29, align 2, !tbaa !190
  %31 = and i8 %30, 16
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 40
  %35 = load ptr, ptr %34, align 8, !tbaa !181
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 34
  %39 = load i64, ptr %38, align 8, !tbaa !191
  %40 = add i64 %39, 1
  %41 = tail call noalias ptr @png_malloc(ptr noundef %0, i64 noundef %40) #13
  store ptr %41, ptr %34, align 8, !tbaa !181
  store i8 1, ptr %41, align 1, !tbaa !73
  br label %42

42:                                               ; preds = %37, %33, %28
  %43 = load i8, ptr %29, align 2, !tbaa !190
  %44 = and i8 %43, 32
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %62, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 41
  %48 = load ptr, ptr %47, align 8, !tbaa !182
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %62

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 38
  %52 = load ptr, ptr %51, align 8, !tbaa !180
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.9) #13
  %55 = load i8, ptr %29, align 2, !tbaa !190
  %56 = and i8 %55, -33
  store i8 %56, ptr %29, align 2, !tbaa !190
  br label %62

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 34
  %59 = load i64, ptr %58, align 8, !tbaa !191
  %60 = add i64 %59, 1
  %61 = tail call noalias ptr @png_malloc(ptr noundef %0, i64 noundef %60) #13
  store ptr %61, ptr %47, align 8, !tbaa !182
  store i8 2, ptr %61, align 1, !tbaa !73
  br label %62

62:                                               ; preds = %54, %57, %46, %42
  %63 = load i8, ptr %29, align 2, !tbaa !190
  %64 = and i8 %63, 64
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %82, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 42
  %68 = load ptr, ptr %67, align 8, !tbaa !183
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %82

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 38
  %72 = load ptr, ptr %71, align 8, !tbaa !180
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.10) #13
  %75 = load i8, ptr %29, align 2, !tbaa !190
  %76 = and i8 %75, -65
  store i8 %76, ptr %29, align 2, !tbaa !190
  br label %82

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 34
  %79 = load i64, ptr %78, align 8, !tbaa !191
  %80 = add i64 %79, 1
  %81 = tail call noalias ptr @png_malloc(ptr noundef %0, i64 noundef %80) #13
  store ptr %81, ptr %67, align 8, !tbaa !183
  store i8 3, ptr %81, align 1, !tbaa !73
  br label %82

82:                                               ; preds = %74, %77, %66, %62
  %83 = load i8, ptr %29, align 2, !tbaa !190
  %84 = icmp sgt i8 %83, -1
  br i1 %84, label %101, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 43
  %87 = load ptr, ptr %86, align 8, !tbaa !184
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %101

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 38
  %91 = load ptr, ptr %90, align 8, !tbaa !180
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.11) #13
  %94 = load i8, ptr %29, align 2, !tbaa !190
  %95 = and i8 %94, 127
  store i8 %95, ptr %29, align 2, !tbaa !190
  br label %101

96:                                               ; preds = %89
  %97 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 34
  %98 = load i64, ptr %97, align 8, !tbaa !191
  %99 = add i64 %98, 1
  %100 = tail call noalias ptr @png_malloc(ptr noundef %0, i64 noundef %99) #13
  store ptr %100, ptr %86, align 8, !tbaa !184
  store i8 4, ptr %100, align 1, !tbaa !73
  br label %101

101:                                              ; preds = %93, %96, %85, %82
  %102 = load i8, ptr %29, align 2, !tbaa !190
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  store i8 8, ptr %29, align 2, !tbaa !190
  br label %106

105:                                              ; preds = %5
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.12) #14
  unreachable

106:                                              ; preds = %22, %104, %101, %3
  ret void
}

declare noalias ptr @png_malloc(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @png_set_filter_heuristics(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = tail call fastcc i32 @png_init_filter_heuristics(ptr noundef %0, i32 noundef %1, i32 noundef %2), !range !192
  %7 = icmp ne i32 %6, 0
  %8 = icmp eq i32 %1, 2
  %9 = and i1 %8, %7
  br i1 %9, label %10, label %62

10:                                               ; preds = %5
  %11 = icmp sgt i32 %2, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 110
  %14 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 111
  %15 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 111
  %16 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 110
  %17 = zext nneg i32 %2 to i64
  br label %21

18:                                               ; preds = %37, %10
  %19 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 113
  %20 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 112
  br label %44

21:                                               ; preds = %12, %37
  %22 = phi i64 [ 0, %12 ], [ %42, %37 ]
  %23 = getelementptr inbounds double, ptr %3, i64 %22
  %24 = load double, ptr %23, align 8, !tbaa !193
  %25 = fcmp ugt double %24, 0.000000e+00
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load ptr, ptr %13, align 8, !tbaa !143
  %28 = getelementptr inbounds i16, ptr %27, i64 %22
  store i16 256, ptr %28, align 2, !tbaa !195
  br label %37

29:                                               ; preds = %21
  %30 = tail call double @llvm.fmuladd.f64(double %24, double 2.560000e+02, double 5.000000e-01)
  %31 = fptoui double %30 to i16
  %32 = load ptr, ptr %15, align 8, !tbaa !144
  %33 = getelementptr inbounds i16, ptr %32, i64 %22
  store i16 %31, ptr %33, align 2, !tbaa !195
  %34 = fdiv double 2.560000e+02, %24
  %35 = fadd double %34, 5.000000e-01
  %36 = fptoui double %35 to i16
  br label %37

37:                                               ; preds = %26, %29
  %38 = phi ptr [ %14, %26 ], [ %16, %29 ]
  %39 = phi i16 [ 256, %26 ], [ %36, %29 ]
  %40 = load ptr, ptr %38, align 8, !tbaa !135
  %41 = getelementptr inbounds i16, ptr %40, i64 %22
  store i16 %39, ptr %41, align 2, !tbaa !195
  %42 = add nuw nsw i64 %22, 1
  %43 = icmp eq i64 %42, %17
  br i1 %43, label %18, label %21, !llvm.loop !196

44:                                               ; preds = %18, %59
  %45 = phi i64 [ 0, %18 ], [ %60, %59 ]
  %46 = getelementptr inbounds double, ptr %4, i64 %45
  %47 = load double, ptr %46, align 8, !tbaa !193
  %48 = fcmp ult double %47, 1.000000e+00
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = fdiv double 8.000000e+00, %47
  %51 = fadd double %50, 5.000000e-01
  %52 = fptoui double %51 to i16
  %53 = load ptr, ptr %19, align 8, !tbaa !186
  %54 = getelementptr inbounds i16, ptr %53, i64 %45
  store i16 %52, ptr %54, align 2, !tbaa !195
  %55 = tail call double @llvm.fmuladd.f64(double %47, double 8.000000e+00, double 5.000000e-01)
  %56 = fptoui double %55 to i16
  %57 = load ptr, ptr %20, align 8, !tbaa !185
  %58 = getelementptr inbounds i16, ptr %57, i64 %45
  store i16 %56, ptr %58, align 2, !tbaa !195
  br label %59

59:                                               ; preds = %44, %49
  %60 = add nuw nsw i64 %45, 1
  %61 = icmp eq i64 %60, 5
  br i1 %61, label %62, label %44, !llvm.loop !197

62:                                               ; preds = %59, %5
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @png_init_filter_heuristics(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %73, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 108
  store i8 0, ptr %6, align 1, !tbaa !140
  %7 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 107
  store i8 1, ptr %7, align 8, !tbaa !141
  %8 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 109
  %9 = load ptr, ptr %8, align 8, !tbaa !142
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %5
  store ptr null, ptr %8, align 8, !tbaa !142
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef nonnull %9) #13
  br label %12

12:                                               ; preds = %11, %5
  %13 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 110
  %14 = load ptr, ptr %13, align 8, !tbaa !143
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  store ptr null, ptr %13, align 8, !tbaa !143
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef nonnull %14) #13
  br label %17

17:                                               ; preds = %16, %12
  %18 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 111
  %19 = load ptr, ptr %18, align 8, !tbaa !144
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  store ptr null, ptr %18, align 8, !tbaa !144
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef nonnull %19) #13
  br label %22

22:                                               ; preds = %17, %21
  %23 = icmp eq i32 %1, 2
  br i1 %23, label %24, label %70

24:                                               ; preds = %22
  %25 = icmp sgt i32 %2, 0
  br i1 %25, label %26, label %51

26:                                               ; preds = %24
  %27 = zext nneg i32 %2 to i64
  %28 = tail call noalias ptr @png_malloc(ptr noundef nonnull %0, i64 noundef %27) #13
  store ptr %28, ptr %8, align 8, !tbaa !142
  %29 = zext nneg i32 %2 to i64
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi i64 [ 0, %26 ], [ %34, %30 ]
  %32 = load ptr, ptr %8, align 8, !tbaa !142
  %33 = getelementptr inbounds i8, ptr %32, i64 %31
  store i8 -1, ptr %33, align 1, !tbaa !73
  %34 = add nuw nsw i64 %31, 1
  %35 = icmp eq i64 %34, %29
  br i1 %35, label %36, label %30, !llvm.loop !198

36:                                               ; preds = %30
  %37 = shl nuw i32 %2, 1
  %38 = zext i32 %37 to i64
  %39 = tail call noalias ptr @png_malloc(ptr noundef nonnull %0, i64 noundef %38) #13
  store ptr %39, ptr %13, align 8, !tbaa !143
  %40 = tail call noalias ptr @png_malloc(ptr noundef nonnull %0, i64 noundef %38) #13
  store ptr %40, ptr %18, align 8, !tbaa !144
  %41 = load ptr, ptr %13, align 8, !tbaa !143
  %42 = zext nneg i32 %2 to i64
  br label %43

43:                                               ; preds = %36, %43
  %44 = phi i64 [ 0, %36 ], [ %47, %43 ]
  %45 = getelementptr inbounds i16, ptr %41, i64 %44
  store i16 256, ptr %45, align 2, !tbaa !195
  %46 = getelementptr inbounds i16, ptr %40, i64 %44
  store i16 256, ptr %46, align 2, !tbaa !195
  %47 = add nuw nsw i64 %44, 1
  %48 = icmp eq i64 %47, %42
  br i1 %48, label %49, label %43, !llvm.loop !199

49:                                               ; preds = %43
  %50 = trunc i32 %2 to i8
  store i8 %50, ptr %6, align 1, !tbaa !140
  br label %51

51:                                               ; preds = %49, %24
  %52 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 112
  %53 = load ptr, ptr %52, align 8, !tbaa !185
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = tail call noalias ptr @png_malloc(ptr noundef nonnull %0, i64 noundef 10) #13
  store ptr %56, ptr %52, align 8, !tbaa !185
  %57 = tail call noalias ptr @png_malloc(ptr noundef nonnull %0, i64 noundef 10) #13
  %58 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 113
  store ptr %57, ptr %58, align 8, !tbaa !186
  br label %59

59:                                               ; preds = %55, %51
  %60 = load ptr, ptr %52, align 8, !tbaa !185
  %61 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 113
  %62 = load ptr, ptr %61, align 8, !tbaa !186
  br label %63

63:                                               ; preds = %59, %63
  %64 = phi i64 [ 0, %59 ], [ %67, %63 ]
  %65 = getelementptr inbounds i16, ptr %60, i64 %64
  store i16 8, ptr %65, align 2, !tbaa !195
  %66 = getelementptr inbounds i16, ptr %62, i64 %64
  store i16 8, ptr %66, align 2, !tbaa !195
  %67 = add nuw nsw i64 %64, 1
  %68 = icmp eq i64 %67, 5
  br i1 %68, label %69, label %63, !llvm.loop !200

69:                                               ; preds = %63
  store i8 2, ptr %7, align 8, !tbaa !141
  br label %73

70:                                               ; preds = %22
  %71 = icmp ult i32 %1, 2
  br i1 %71, label %73, label %72

72:                                               ; preds = %70
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.18) #13
  br label %73

73:                                               ; preds = %70, %3, %72, %69
  %74 = phi i32 [ 1, %69 ], [ 0, %72 ], [ 0, %3 ], [ 1, %70 ]
  ret i32 %74
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #11

; Function Attrs: nounwind uwtable
define dso_local void @png_set_filter_heuristics_fixed(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = tail call fastcc i32 @png_init_filter_heuristics(ptr noundef %0, i32 noundef %1, i32 noundef %2), !range !192
  %7 = icmp ne i32 %6, 0
  %8 = icmp eq i32 %1, 2
  %9 = and i1 %8, %7
  br i1 %9, label %10, label %68

10:                                               ; preds = %5
  %11 = icmp sgt i32 %2, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 111
  %14 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 110
  %15 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 110
  %16 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 111
  %17 = zext nneg i32 %2 to i64
  br label %21

18:                                               ; preds = %40, %10
  %19 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 113
  %20 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 112
  br label %47

21:                                               ; preds = %12, %40
  %22 = phi i64 [ 0, %12 ], [ %45, %40 ]
  %23 = getelementptr inbounds i32, ptr %3, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !134
  %25 = icmp slt i32 %24, 1
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load ptr, ptr %15, align 8, !tbaa !143
  %28 = getelementptr inbounds i16, ptr %27, i64 %22
  store i16 256, ptr %28, align 2, !tbaa !195
  br label %40

29:                                               ; preds = %21
  %30 = shl nsw i32 %24, 8
  %31 = add nuw nsw i32 %30, 50000
  %32 = udiv i32 %31, 100000
  %33 = trunc i32 %32 to i16
  %34 = load ptr, ptr %13, align 8, !tbaa !144
  %35 = getelementptr inbounds i16, ptr %34, i64 %22
  store i16 %33, ptr %35, align 2, !tbaa !195
  %36 = lshr i32 %24, 1
  %37 = add nuw nsw i32 %36, 25600000
  %38 = udiv i32 %37, %24
  %39 = trunc i32 %38 to i16
  br label %40

40:                                               ; preds = %26, %29
  %41 = phi ptr [ %16, %26 ], [ %14, %29 ]
  %42 = phi i16 [ 256, %26 ], [ %39, %29 ]
  %43 = load ptr, ptr %41, align 8, !tbaa !135
  %44 = getelementptr inbounds i16, ptr %43, i64 %22
  store i16 %42, ptr %44, align 2, !tbaa !195
  %45 = add nuw nsw i64 %22, 1
  %46 = icmp eq i64 %45, %17
  br i1 %46, label %18, label %21, !llvm.loop !201

47:                                               ; preds = %18, %65
  %48 = phi i64 [ 0, %18 ], [ %66, %65 ]
  %49 = getelementptr inbounds i32, ptr %4, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !134
  %51 = icmp sgt i32 %50, 99999
  br i1 %51, label %52, label %65

52:                                               ; preds = %47
  %53 = lshr i32 %50, 1
  %54 = add nuw nsw i32 %53, 800000
  %55 = udiv i32 %54, %50
  %56 = trunc i32 %55 to i16
  %57 = load ptr, ptr %19, align 8, !tbaa !186
  %58 = getelementptr inbounds i16, ptr %57, i64 %48
  store i16 %56, ptr %58, align 2, !tbaa !195
  %59 = shl nsw i32 %50, 3
  %60 = add nuw nsw i32 %59, 50000
  %61 = udiv i32 %60, 100000
  %62 = trunc i32 %61 to i16
  %63 = load ptr, ptr %20, align 8, !tbaa !185
  %64 = getelementptr inbounds i16, ptr %63, i64 %48
  store i16 %62, ptr %64, align 2, !tbaa !195
  br label %65

65:                                               ; preds = %47, %52
  %66 = add nuw nsw i64 %48, 1
  %67 = icmp eq i64 %66, 5
  br i1 %67, label %68, label %47, !llvm.loop !202

68:                                               ; preds = %65, %5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @png_set_compression_level(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %6 = load i32, ptr %5, align 8, !tbaa !74
  %7 = or i32 %6, 2
  store i32 %7, ptr %5, align 8, !tbaa !74
  %8 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 20
  store i32 %1, ptr %8, align 8, !tbaa !203
  br label %9

9:                                                ; preds = %2, %4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @png_set_compression_mem_level(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %6 = load i32, ptr %5, align 8, !tbaa !74
  %7 = or i32 %6, 4
  store i32 %7, ptr %5, align 8, !tbaa !74
  %8 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 23
  store i32 %1, ptr %8, align 4, !tbaa !204
  br label %9

9:                                                ; preds = %2, %4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @png_set_compression_strategy(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %6 = load i32, ptr %5, align 8, !tbaa !74
  %7 = or i32 %6, 1
  store i32 %7, ptr %5, align 8, !tbaa !74
  %8 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 24
  store i32 %1, ptr %8, align 8, !tbaa !205
  br label %9

9:                                                ; preds = %2, %4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_set_compression_window_bits(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %2
  %5 = icmp sgt i32 %1, 15
  br i1 %5, label %8, label %6

6:                                                ; preds = %4
  %7 = icmp slt i32 %1, 8
  br i1 %7, label %8, label %10

8:                                                ; preds = %6, %4
  %9 = phi ptr [ @.str.13, %4 ], [ @.str.14, %6 ]
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull %9) #13
  br label %10

10:                                               ; preds = %8, %6
  %11 = icmp eq i32 %1, 8
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.15) #13
  br label %13

13:                                               ; preds = %12, %10
  %14 = phi i32 [ 9, %12 ], [ %1, %10 ]
  %15 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %16 = load i32, ptr %15, align 8, !tbaa !74
  %17 = or i32 %16, 8
  store i32 %17, ptr %15, align 8, !tbaa !74
  %18 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 22
  store i32 %14, ptr %18, align 8, !tbaa !206
  br label %19

19:                                               ; preds = %2, %13
  ret void
}

; Function Attrs: nounwind uwtable
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
  store i32 %1, ptr %11, align 4, !tbaa !207
  br label %12

12:                                               ; preds = %2, %7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @png_set_text_compression_level(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %6 = load i32, ptr %5, align 8, !tbaa !74
  %7 = or i32 %6, 33554432
  store i32 %7, ptr %5, align 8, !tbaa !74
  %8 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 25
  store i32 %1, ptr %8, align 4, !tbaa !208
  br label %9

9:                                                ; preds = %2, %4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @png_set_text_compression_mem_level(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %6 = load i32, ptr %5, align 8, !tbaa !74
  %7 = or i32 %6, 67108864
  store i32 %7, ptr %5, align 8, !tbaa !74
  %8 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 28
  store i32 %1, ptr %8, align 8, !tbaa !209
  br label %9

9:                                                ; preds = %2, %4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @png_set_text_compression_strategy(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %6 = load i32, ptr %5, align 8, !tbaa !74
  %7 = or i32 %6, 16777216
  store i32 %7, ptr %5, align 8, !tbaa !74
  %8 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 29
  store i32 %1, ptr %8, align 4, !tbaa !210
  br label %9

9:                                                ; preds = %2, %4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_set_text_compression_window_bits(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %2
  %5 = icmp sgt i32 %1, 15
  br i1 %5, label %8, label %6

6:                                                ; preds = %4
  %7 = icmp slt i32 %1, 8
  br i1 %7, label %8, label %10

8:                                                ; preds = %6, %4
  %9 = phi ptr [ @.str.13, %4 ], [ @.str.14, %6 ]
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull %9) #13
  br label %10

10:                                               ; preds = %8, %6
  %11 = icmp eq i32 %1, 8
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.17) #13
  br label %13

13:                                               ; preds = %12, %10
  %14 = phi i32 [ 9, %12 ], [ %1, %10 ]
  %15 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 14
  %16 = load i32, ptr %15, align 8, !tbaa !74
  %17 = or i32 %16, 134217728
  store i32 %17, ptr %15, align 8, !tbaa !74
  %18 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 27
  store i32 %14, ptr %18, align 4, !tbaa !211
  br label %19

19:                                               ; preds = %2, %13
  ret void
}

; Function Attrs: nounwind uwtable
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
  store i32 %1, ptr %11, align 8, !tbaa !212
  br label %12

12:                                               ; preds = %2, %7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @png_set_write_user_transform_fn(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 15
  %6 = load i32, ptr %5, align 4, !tbaa !82
  %7 = or i32 %6, 1048576
  store i32 %7, ptr %5, align 4, !tbaa !82
  %8 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 9
  store ptr %1, ptr %8, align 8, !tbaa !213
  br label %9

9:                                                ; preds = %2, %4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_write_png(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  %6 = icmp eq ptr %1, null
  %7 = or i1 %5, %6
  br i1 %7, label %82, label %8

8:                                                ; preds = %4
  tail call void @png_write_info(ptr noundef %0, ptr noundef %1)
  %9 = and i32 %2, 32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @png_set_invert_mono(ptr noundef %0) #13
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
  tail call void @png_set_shift(ptr noundef %0, ptr noundef nonnull %21) #13
  br label %22

22:                                               ; preds = %20, %15, %12
  %23 = and i32 %2, 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  tail call void @png_set_packing(ptr noundef %0) #13
  br label %26

26:                                               ; preds = %25, %22
  %27 = and i32 %2, 256
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  tail call void @png_set_swap_alpha(ptr noundef %0) #13
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
  tail call void @png_set_filler(ptr noundef %0, i32 noundef 0, i32 noundef %37) #13
  br label %38

38:                                               ; preds = %36, %33
  %39 = and i32 %2, 128
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  tail call void @png_set_bgr(ptr noundef %0) #13
  br label %42

42:                                               ; preds = %41, %38
  %43 = and i32 %2, 512
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  tail call void @png_set_swap(ptr noundef %0) #13
  br label %46

46:                                               ; preds = %45, %42
  %47 = and i32 %2, 8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  tail call void @png_set_packswap(ptr noundef %0) #13
  br label %50

50:                                               ; preds = %49, %46
  %51 = and i32 %2, 1024
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  tail call void @png_set_invert_alpha(ptr noundef %0) #13
  br label %54

54:                                               ; preds = %53, %50
  %55 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 2
  %56 = load i32, ptr %55, align 8, !tbaa !56
  %57 = and i32 %56, 32768
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %81, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.png_info_def, ptr %1, i64 0, i32 60
  %61 = load ptr, ptr %60, align 8, !tbaa !214
  %62 = tail call i32 @png_set_interlace_handling(ptr noundef nonnull %0) #13
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %81

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.png_struct_def, ptr %0, i64 0, i32 31
  br label %66

66:                                               ; preds = %78, %64
  %67 = phi i32 [ 0, %64 ], [ %79, %78 ]
  %68 = load i32, ptr %65, align 4, !tbaa !166
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %66, %70
  %71 = phi ptr [ %75, %70 ], [ %61, %66 ]
  %72 = phi i32 [ %74, %70 ], [ 0, %66 ]
  %73 = load ptr, ptr %71, align 8, !tbaa !135
  tail call void @png_write_row(ptr noundef nonnull %0, ptr noundef %73)
  %74 = add nuw i32 %72, 1
  %75 = getelementptr inbounds ptr, ptr %71, i64 1
  %76 = load i32, ptr %65, align 4, !tbaa !166
  %77 = icmp ult i32 %74, %76
  br i1 %77, label %70, label %78, !llvm.loop !167

78:                                               ; preds = %70, %66
  %79 = add nuw nsw i32 %67, 1
  %80 = icmp eq i32 %79, %62
  br i1 %80, label %81, label %66, !llvm.loop !168

81:                                               ; preds = %78, %59, %54
  tail call void @png_write_end(ptr noundef %0, ptr noundef %1)
  br label %82

82:                                               ; preds = %4, %81
  ret void
}

declare void @png_set_invert_mono(ptr noundef) local_unnamed_addr #1

declare void @png_set_shift(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @png_set_packing(ptr noundef) local_unnamed_addr #1

declare void @png_set_swap_alpha(ptr noundef) local_unnamed_addr #1

declare void @png_set_filler(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @png_set_bgr(ptr noundef) local_unnamed_addr #1

declare void @png_set_swap(ptr noundef) local_unnamed_addr #1

declare void @png_set_packswap(ptr noundef) local_unnamed_addr #1

declare void @png_set_invert_alpha(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind returns_twice }

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
!77 = distinct !{!77, !78, !79}
!78 = !{!"llvm.loop.mustprogress"}
!79 = !{!"llvm.loop.unroll.disable"}
!80 = !{!48, !38, i64 24}
!81 = !{!48, !42, i64 32}
!82 = !{!35, !39, i64 292}
!83 = !{!48, !42, i64 34}
!84 = !{!48, !38, i64 96}
!85 = distinct !{!85, !78, !79}
!86 = !{!48, !38, i64 152}
!87 = !{!48, !39, i64 124}
!88 = !{!48, !39, i64 128}
!89 = !{!48, !36, i64 132}
!90 = !{!48, !38, i64 192}
!91 = !{!48, !39, i64 200}
!92 = !{!48, !39, i64 204}
!93 = !{!48, !36, i64 224}
!94 = !{!48, !36, i64 225}
!95 = !{!48, !38, i64 208}
!96 = !{!48, !38, i64 216}
!97 = !{!48, !36, i64 284}
!98 = !{!48, !38, i64 288}
!99 = !{!48, !38, i64 296}
!100 = !{!48, !39, i64 136}
!101 = !{!48, !39, i64 140}
!102 = !{!48, !36, i64 144}
!103 = !{!48, !39, i64 280}
!104 = !{!48, !38, i64 272}
!105 = distinct !{!105, !78, !79}
!106 = !{!48, !39, i64 60}
!107 = !{!48, !38, i64 72}
!108 = !{!109, !39, i64 0}
!109 = !{!"png_text_struct", !39, i64 0, !38, i64 8, !38, i64 16, !41, i64 24, !41, i64 32, !38, i64 40, !38, i64 48}
!110 = !{!109, !38, i64 8}
!111 = !{!109, !38, i64 40}
!112 = !{!109, !38, i64 48}
!113 = !{!109, !38, i64 16}
!114 = distinct !{!114, !78, !79}
!115 = distinct !{!115, !78, !79}
!116 = !{!35, !39, i64 580}
!117 = !{!35, !42, i64 576}
!118 = distinct !{!118, !78, !79}
!119 = distinct !{!119, !78, !79}
!120 = !{!121, !39, i64 20}
!121 = !{!"tm", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !41, i64 40, !38, i64 48}
!122 = !{!49, !42, i64 0}
!123 = !{!121, !39, i64 16}
!124 = !{!49, !36, i64 2}
!125 = !{!121, !39, i64 12}
!126 = !{!49, !36, i64 3}
!127 = !{!121, !39, i64 8}
!128 = !{!49, !36, i64 4}
!129 = !{!121, !39, i64 4}
!130 = !{!49, !36, i64 5}
!131 = !{!121, !39, i64 0}
!132 = !{!49, !36, i64 6}
!133 = !{!41, !41, i64 0}
!134 = !{!39, !39, i64 0}
!135 = !{!38, !38, i64 0}
!136 = !{!35, !39, i64 1100}
!137 = !{!35, !39, i64 1104}
!138 = !{!35, !39, i64 416}
!139 = !{!35, !38, i64 408}
!140 = !{!35, !36, i64 905}
!141 = !{!35, !36, i64 904}
!142 = !{!35, !38, i64 912}
!143 = !{!35, !38, i64 920}
!144 = !{!35, !38, i64 928}
!145 = distinct !{!145, !78, !79}
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
!167 = distinct !{!167, !78, !79}
!168 = distinct !{!168, !78, !79}
!169 = !{!35, !39, i64 648}
!170 = !{!35, !39, i64 472}
!171 = !{!35, !38, i64 344}
!172 = !{!35, !39, i64 328}
!173 = distinct !{!173, !78, !79}
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
!187 = !{!35, !38, i64 208}
!188 = !{!35, !38, i64 216}
!189 = !{!35, !38, i64 224}
!190 = !{!35, !36, i64 590}
!191 = !{!35, !41, i64 480}
!192 = !{i32 0, i32 2}
!193 = !{!194, !194, i64 0}
!194 = !{!"double", !36, i64 0}
!195 = !{!42, !42, i64 0}
!196 = distinct !{!196, !78, !79}
!197 = distinct !{!197, !78, !79}
!198 = distinct !{!198, !78, !79}
!199 = distinct !{!199, !78, !79}
!200 = distinct !{!200, !78, !79}
!201 = distinct !{!201, !78, !79}
!202 = distinct !{!202, !78, !79}
!203 = !{!35, !39, i64 424}
!204 = !{!35, !39, i64 436}
!205 = !{!35, !39, i64 440}
!206 = !{!35, !39, i64 432}
!207 = !{!35, !39, i64 428}
!208 = !{!35, !39, i64 444}
!209 = !{!35, !39, i64 456}
!210 = !{!35, !39, i64 460}
!211 = !{!35, !39, i64 452}
!212 = !{!35, !39, i64 448}
!213 = !{!35, !38, i64 264}
!214 = !{!48, !38, i64 304}
