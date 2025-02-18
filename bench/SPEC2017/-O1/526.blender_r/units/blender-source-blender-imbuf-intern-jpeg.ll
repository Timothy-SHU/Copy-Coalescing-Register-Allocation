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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
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

; Function Attrs: nounwind uwtable
define dso_local ptr @imb_load_jpeg(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #1 {
  %5 = alloca %struct.jpeg_decompress_struct, align 8
  %6 = alloca %struct.my_error_mgr, align 8
  call void @llvm.lifetime.start.p0(i64 632, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 368, ptr nonnull %6) #15
  %7 = load i8, ptr %0, align 1, !tbaa !34
  %8 = icmp eq i8 %7, -1
  br i1 %8, label %9, label %220

9:                                                ; preds = %4
  %10 = getelementptr inbounds i8, ptr %0, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !34
  %12 = icmp eq i8 %11, -40
  br i1 %12, label %13, label %220

13:                                               ; preds = %9
  call void @colorspace_set_default_role(ptr noundef %3, i32 noundef 64, i32 noundef 4) #15
  %14 = call ptr (ptr, ...) @jpeg_std_error(ptr noundef nonnull %6) #15
  store ptr %14, ptr %5, align 8, !tbaa !37
  store ptr @jpeg_error, ptr %6, align 8, !tbaa !42
  %15 = getelementptr inbounds %struct.my_error_mgr, ptr %6, i64 0, i32 1
  %16 = call i32 @_setjmp(ptr noundef nonnull %15) #16
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  call void (ptr, ...) @jpeg_destroy_decompress(ptr noundef nonnull %5) #15
  br label %220

19:                                               ; preds = %13
  call void (ptr, i32, i64, ...) @jpeg_CreateDecompress(ptr noundef nonnull %5, i32 noundef 62, i64 noundef 632) #15
  %20 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !47
  %26 = load ptr, ptr %25, align 8, !tbaa !48
  %27 = call ptr (ptr, i32, i64, ...) %26(ptr noundef nonnull %5, i32 noundef 0, i64 noundef 72) #15
  store ptr %27, ptr %20, align 8, !tbaa !46
  br label %28

28:                                               ; preds = %19, %23
  %29 = load ptr, ptr %20, align 8, !tbaa !46
  %30 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %29, i64 0, i32 2
  store ptr @init_source, ptr %30, align 8, !tbaa !50
  %31 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %29, i64 0, i32 3
  store ptr @fill_input_buffer, ptr %31, align 8, !tbaa !53
  %32 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %29, i64 0, i32 4
  store ptr @skip_input_data, ptr %32, align 8, !tbaa !54
  %33 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %29, i64 0, i32 5
  store ptr @jpeg_resync_to_restart, ptr %33, align 8, !tbaa !55
  %34 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %29, i64 0, i32 6
  store ptr @term_source, ptr %34, align 8, !tbaa !56
  %35 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %29, i64 0, i32 1
  store i64 %1, ptr %35, align 8, !tbaa !57
  store ptr %0, ptr %29, align 8, !tbaa !58
  %36 = getelementptr inbounds %struct.my_source_mgr, ptr %29, i64 0, i32 1
  store ptr %0, ptr %36, align 8, !tbaa !59
  %37 = trunc i64 %1 to i32
  %38 = getelementptr inbounds %struct.my_source_mgr, ptr %29, i64 0, i32 2
  store i32 %37, ptr %38, align 8, !tbaa !60
  store i32 0, ptr @ibuf_ftype, align 4, !tbaa !61
  call void (ptr, i32, ptr, ...) @jpeg_set_marker_processor(ptr noundef nonnull %5, i32 noundef 225, ptr noundef nonnull @handle_app1) #15
  %39 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i64 0, i32 17
  store i32 2, ptr %39, align 8, !tbaa !62
  call void (ptr, i32, i32, ...) @jpeg_save_markers(ptr noundef nonnull %5, i32 noundef 254, i32 noundef 65535) #15
  %40 = call i32 (ptr, i32, ...) @jpeg_read_header(ptr noundef nonnull %5, i32 noundef 0) #15
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %220

42:                                               ; preds = %28
  %43 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i64 0, i32 7
  %44 = load i32, ptr %43, align 8, !tbaa !63
  %45 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i64 0, i32 8
  %46 = load i32, ptr %45, align 4, !tbaa !64
  %47 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i64 0, i32 9
  %48 = load i32, ptr %47, align 8, !tbaa !65
  %49 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i64 0, i32 10
  %50 = load i32, ptr %49, align 4, !tbaa !66
  %51 = icmp eq i32 %50, 5
  br i1 %51, label %52, label %54

52:                                               ; preds = %42
  %53 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i64 0, i32 11
  store i32 4, ptr %53, align 8, !tbaa !67
  br label %54

54:                                               ; preds = %52, %42
  %55 = call i32 (ptr, ...) @jpeg_start_decompress(ptr noundef nonnull %5) #15
  %56 = load i32, ptr @ibuf_ftype, align 4, !tbaa !61
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %54
  store i32 134217728, ptr @ibuf_ftype, align 4, !tbaa !61
  %59 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i64 0, i32 62
  %60 = load i32, ptr %59, align 4, !tbaa !68
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i64 0, i32 61
  %64 = load i32, ptr %63, align 8, !tbaa !69
  %65 = icmp eq i32 %64, 1
  %66 = select i1 %65, i32 134218496, i32 134217984
  store i32 %66, ptr @ibuf_ftype, align 4, !tbaa !61
  br label %67

67:                                               ; preds = %62, %58, %54
  %68 = and i32 %2, 2
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %67
  call void (ptr, ...) @jpeg_abort_decompress(ptr noundef nonnull %5) #15
  %71 = trunc i32 %48 to i8
  %72 = shl i8 %71, 3
  %73 = call ptr @IMB_allocImBuf(i32 noundef %44, i32 noundef %46, i8 noundef zeroext %72, i32 noundef 0) #15
  br label %214

74:                                               ; preds = %67
  %75 = trunc i32 %48 to i8
  %76 = shl i8 %75, 3
  %77 = call ptr @IMB_allocImBuf(i32 noundef %44, i32 noundef %46, i8 noundef zeroext %76, i32 noundef 1) #15
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  call void (ptr, ...) @jpeg_abort_decompress(ptr noundef nonnull %5) #15
  br label %214

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i64 0, i32 27
  %82 = load i32, ptr %81, align 8, !tbaa !70
  %83 = mul i32 %82, %48
  %84 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !47
  %86 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %85, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !71
  %88 = call ptr (ptr, i32, i32, i32, ...) %87(ptr noundef nonnull %5, i32 noundef 1, i32 noundef %83, i32 noundef 1) #15
  %89 = getelementptr inbounds %struct.ImBuf, ptr %77, i64 0, i32 3
  %90 = load i32, ptr %89, align 4, !tbaa !72
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %172

92:                                               ; preds = %80
  %93 = getelementptr inbounds %struct.ImBuf, ptr %77, i64 0, i32 8
  %94 = getelementptr inbounds %struct.ImBuf, ptr %77, i64 0, i32 2
  br label %95

95:                                               ; preds = %92, %170
  %96 = phi i32 [ %90, %92 ], [ %97, %170 ]
  %97 = add nsw i32 %96, -1
  %98 = call i32 (ptr, ptr, i32, ...) @jpeg_read_scanlines(ptr noundef nonnull %5, ptr noundef %88, i32 noundef 1) #15
  %99 = load ptr, ptr %93, align 8, !tbaa !77
  %100 = load i32, ptr %94, align 8, !tbaa !78
  %101 = mul nsw i32 %100, %97
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, ptr %99, i64 %102
  %104 = load ptr, ptr %88, align 8, !tbaa !79
  switch i32 %48, label %170 [
    i32 1, label %109
    i32 3, label %107
    i32 4, label %105
  ]

105:                                              ; preds = %95
  %106 = icmp sgt i32 %100, 0
  br i1 %106, label %139, label %170

107:                                              ; preds = %95
  %108 = icmp sgt i32 %100, 0
  br i1 %108, label %123, label %170

109:                                              ; preds = %95
  %110 = icmp sgt i32 %100, 0
  br i1 %110, label %111, label %170

111:                                              ; preds = %109, %111
  %112 = phi ptr [ %116, %111 ], [ %104, %109 ]
  %113 = phi ptr [ %120, %111 ], [ %103, %109 ]
  %114 = phi i32 [ %121, %111 ], [ %100, %109 ]
  %115 = getelementptr inbounds i8, ptr %113, i64 3
  store i8 -1, ptr %115, align 1, !tbaa !34
  %116 = getelementptr inbounds i8, ptr %112, i64 1
  %117 = load i8, ptr %112, align 1, !tbaa !34
  %118 = getelementptr inbounds i8, ptr %113, i64 2
  store i8 %117, ptr %118, align 1, !tbaa !34
  %119 = getelementptr inbounds i8, ptr %113, i64 1
  store i8 %117, ptr %119, align 1, !tbaa !34
  store i8 %117, ptr %113, align 1, !tbaa !34
  %120 = getelementptr inbounds i8, ptr %113, i64 4
  %121 = add nsw i32 %114, -1
  %122 = icmp sgt i32 %114, 1
  br i1 %122, label %111, label %170, !llvm.loop !80

123:                                              ; preds = %107, %123
  %124 = phi ptr [ %133, %123 ], [ %104, %107 ]
  %125 = phi ptr [ %136, %123 ], [ %103, %107 ]
  %126 = phi i32 [ %137, %123 ], [ %100, %107 ]
  %127 = getelementptr inbounds i8, ptr %125, i64 3
  store i8 -1, ptr %127, align 1, !tbaa !34
  %128 = getelementptr inbounds i8, ptr %124, i64 1
  %129 = load i8, ptr %124, align 1, !tbaa !34
  store i8 %129, ptr %125, align 1, !tbaa !34
  %130 = getelementptr inbounds i8, ptr %124, i64 2
  %131 = load i8, ptr %128, align 1, !tbaa !34
  %132 = getelementptr inbounds i8, ptr %125, i64 1
  store i8 %131, ptr %132, align 1, !tbaa !34
  %133 = getelementptr inbounds i8, ptr %124, i64 3
  %134 = load i8, ptr %130, align 1, !tbaa !34
  %135 = getelementptr inbounds i8, ptr %125, i64 2
  store i8 %134, ptr %135, align 1, !tbaa !34
  %136 = getelementptr inbounds i8, ptr %125, i64 4
  %137 = add nsw i32 %126, -1
  %138 = icmp sgt i32 %126, 1
  br i1 %138, label %123, label %170, !llvm.loop !83

139:                                              ; preds = %105, %139
  %140 = phi ptr [ %152, %139 ], [ %104, %105 ]
  %141 = phi ptr [ %167, %139 ], [ %103, %105 ]
  %142 = phi i32 [ %168, %139 ], [ %100, %105 ]
  %143 = getelementptr inbounds i8, ptr %140, i64 1
  %144 = load i8, ptr %140, align 1, !tbaa !34
  %145 = zext i8 %144 to i32
  %146 = getelementptr inbounds i8, ptr %140, i64 2
  %147 = load i8, ptr %143, align 1, !tbaa !34
  %148 = zext i8 %147 to i32
  %149 = getelementptr inbounds i8, ptr %140, i64 3
  %150 = load i8, ptr %146, align 1, !tbaa !34
  %151 = zext i8 %150 to i32
  %152 = getelementptr inbounds i8, ptr %140, i64 4
  %153 = load i8, ptr %149, align 1, !tbaa !34
  %154 = zext i8 %153 to i32
  %155 = mul nuw nsw i32 %154, %145
  %156 = udiv i32 %155, 255
  %157 = mul nuw nsw i32 %154, %148
  %158 = udiv i32 %157, 255
  %159 = mul nuw nsw i32 %154, %151
  %160 = udiv i32 %159, 255
  %161 = getelementptr inbounds i8, ptr %141, i64 3
  store i8 -1, ptr %161, align 1, !tbaa !34
  %162 = trunc i32 %160 to i8
  %163 = getelementptr inbounds i8, ptr %141, i64 2
  store i8 %162, ptr %163, align 1, !tbaa !34
  %164 = trunc i32 %158 to i8
  %165 = getelementptr inbounds i8, ptr %141, i64 1
  store i8 %164, ptr %165, align 1, !tbaa !34
  %166 = trunc i32 %156 to i8
  store i8 %166, ptr %141, align 1, !tbaa !34
  %167 = getelementptr inbounds i8, ptr %141, i64 4
  %168 = add nsw i32 %142, -1
  %169 = icmp sgt i32 %142, 1
  br i1 %169, label %139, label %170, !llvm.loop !84

170:                                              ; preds = %139, %123, %111, %105, %107, %109, %95
  %171 = icmp sgt i32 %96, 1
  br i1 %171, label %95, label %172, !llvm.loop !85

172:                                              ; preds = %170, %80
  %173 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i64 0, i32 60
  %174 = load ptr, ptr %173, align 8, !tbaa !79
  %175 = icmp eq ptr %174, null
  br i1 %175, label %212, label %176

176:                                              ; preds = %172
  %177 = getelementptr inbounds %struct.ImBuf, ptr %77, i64 0, i32 6
  br label %178

178:                                              ; preds = %176, %209
  %179 = phi ptr [ %174, %176 ], [ %210, %209 ]
  %180 = getelementptr inbounds %struct.jpeg_marker_struct, ptr %179, i64 0, i32 1
  %181 = load i8, ptr %180, align 8, !tbaa !86
  %182 = icmp eq i8 %181, -2
  br i1 %182, label %183, label %209

183:                                              ; preds = %178
  %184 = getelementptr inbounds %struct.jpeg_marker_struct, ptr %179, i64 0, i32 4
  %185 = load ptr, ptr %184, align 8, !tbaa !88
  %186 = getelementptr inbounds %struct.jpeg_marker_struct, ptr %179, i64 0, i32 3
  %187 = load i32, ptr %186, align 8, !tbaa !89
  %188 = zext i32 %187 to i64
  %189 = call ptr @BLI_strdupn(ptr noundef %185, i64 noundef %188) #15
  %190 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %189, ptr noundef nonnull dereferenceable(8) @.str, i64 noundef 7) #17
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %194, label %192

192:                                              ; preds = %183
  %193 = call zeroext i8 @IMB_metadata_add_field(ptr noundef nonnull %77, ptr noundef nonnull @.str.1, ptr noundef %189) #15
  br label %204

194:                                              ; preds = %183
  %195 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %189, i32 noundef 58) #17
  %196 = icmp eq ptr %195, null
  br i1 %196, label %207, label %197

197:                                              ; preds = %194
  %198 = getelementptr inbounds i8, ptr %195, i64 1
  %199 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %198, i32 noundef 58) #17
  %200 = icmp eq ptr %199, null
  br i1 %200, label %207, label %201

201:                                              ; preds = %197
  store i8 0, ptr %199, align 1, !tbaa !34
  %202 = getelementptr inbounds i8, ptr %199, i64 1
  %203 = call zeroext i8 @IMB_metadata_add_field(ptr noundef nonnull %77, ptr noundef nonnull %198, ptr noundef nonnull %202) #15
  br label %204

204:                                              ; preds = %201, %192
  %205 = load i32, ptr %177, align 8, !tbaa !90
  %206 = or i32 %205, 256
  store i32 %206, ptr %177, align 8, !tbaa !90
  br label %207

207:                                              ; preds = %204, %197, %194
  %208 = load ptr, ptr @MEM_freeN, align 8, !tbaa !79
  call void %208(ptr noundef %189) #15
  br label %209

209:                                              ; preds = %207, %178
  %210 = load ptr, ptr %179, align 8, !tbaa !79
  %211 = icmp eq ptr %210, null
  br i1 %211, label %212, label %178, !llvm.loop !91

212:                                              ; preds = %209, %172
  %213 = call i32 (ptr, ...) @jpeg_finish_decompress(ptr noundef nonnull %5) #15
  br label %214

214:                                              ; preds = %212, %79, %70
  %215 = phi ptr [ %73, %70 ], [ null, %79 ], [ %77, %212 ]
  call void (ptr, ...) @jpeg_destroy(ptr noundef nonnull %5) #15
  %216 = icmp eq ptr %215, null
  br i1 %216, label %220, label %217

217:                                              ; preds = %214
  %218 = load i32, ptr @ibuf_ftype, align 4, !tbaa !61
  %219 = getelementptr inbounds %struct.ImBuf, ptr %215, i64 0, i32 26
  store i32 %218, ptr %219, align 8, !tbaa !92
  br label %220

220:                                              ; preds = %4, %9, %217, %214, %28, %18
  %221 = phi ptr [ null, %18 ], [ %215, %217 ], [ null, %214 ], [ null, %28 ], [ null, %9 ], [ null, %4 ]
  call void @llvm.lifetime.end.p0(i64 368, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 632, ptr nonnull %5) #15
  ret ptr %221
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare void @colorspace_set_default_role(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @jpeg_std_error(...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind uwtable
define internal void @jpeg_error(ptr noundef %0) #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !93
  %3 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !95
  tail call void (ptr, ...) %4(ptr noundef nonnull %0) #15
  tail call void (ptr, ...) @jpeg_destroy(ptr noundef nonnull %0) #15
  %5 = getelementptr inbounds %struct.my_error_mgr, ptr %2, i64 0, i32 1
  tail call void @longjmp(ptr noundef nonnull %5, i32 noundef 1) #18
  unreachable
}

; Function Attrs: nounwind returns_twice
declare i32 @_setjmp(ptr noundef) local_unnamed_addr #5

declare void @jpeg_destroy_decompress(...) local_unnamed_addr #3

declare void @jpeg_CreateDecompress(...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @imb_savejpeg(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = alloca [1024 x i8], align 16
  %5 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 6
  store i32 %2, ptr %5, align 8, !tbaa !90
  %6 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 26
  %7 = load i32, ptr %6, align 8, !tbaa !92
  %8 = and i32 %7, -256
  switch i32 %8, label %42 [
    i32 134217728, label %9
    i32 134218240, label %11
    i32 134218496, label %40
  ]

9:                                                ; preds = %3
  %10 = tail call fastcc i32 @save_stdjpeg(ptr noundef %1, ptr noundef %0), !range !96
  br label %44

11:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #15
  %12 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !78
  %14 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !72
  %16 = sdiv i32 %15, 2
  %17 = tail call ptr @IMB_allocImBuf(i32 noundef %13, i32 noundef %16, i8 noundef zeroext 24, i32 noundef 1) #15
  %18 = load i32, ptr %6, align 8, !tbaa !92
  %19 = getelementptr inbounds %struct.ImBuf, ptr %17, i64 0, i32 26
  store i32 %18, ptr %19, align 8, !tbaa !92
  %20 = load i32, ptr %5, align 8, !tbaa !90
  %21 = getelementptr inbounds %struct.ImBuf, ptr %17, i64 0, i32 6
  store i32 %20, ptr %21, align 8, !tbaa !90
  %22 = load i32, ptr %14, align 4, !tbaa !72
  %23 = load i32, ptr %12, align 8, !tbaa !78
  %24 = shl nsw i32 %23, 1
  store i32 %24, ptr %12, align 8, !tbaa !78
  %25 = sdiv i32 %22, 2
  store i32 %25, ptr %14, align 4, !tbaa !72
  tail call void @IMB_rectcpy(ptr noundef %17, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %24, i32 noundef %25) #15
  %26 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef %1) #15
  %27 = call fastcc i32 @save_vidjpeg(ptr noundef nonnull %4, ptr noundef %17), !range !96
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %11
  %30 = getelementptr inbounds %struct.ImBuf, ptr %17, i64 0, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !78
  %32 = load i32, ptr %12, align 8, !tbaa !78
  %33 = load i32, ptr %14, align 4, !tbaa !72
  call void @IMB_rectcpy(ptr noundef %17, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %31, i32 noundef 0, i32 noundef %32, i32 noundef %33) #15
  %34 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef %1) #15
  %35 = call fastcc i32 @save_vidjpeg(ptr noundef nonnull %4, ptr noundef %17), !range !96
  br label %36

36:                                               ; preds = %11, %29
  %37 = phi i32 [ %35, %29 ], [ 0, %11 ]
  store i32 %22, ptr %14, align 4, !tbaa !72
  %38 = load i32, ptr %12, align 8, !tbaa !78
  %39 = sdiv i32 %38, 2
  store i32 %39, ptr %12, align 8, !tbaa !78
  call void @IMB_freeImBuf(ptr noundef %17) #15
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #15
  br label %44

40:                                               ; preds = %3
  %41 = tail call fastcc i32 @save_maxjpeg(ptr noundef %1, ptr noundef %0), !range !96
  br label %44

42:                                               ; preds = %3
  %43 = tail call fastcc i32 @save_vidjpeg(ptr noundef %1, ptr noundef %0), !range !96
  br label %44

44:                                               ; preds = %42, %40, %36, %9
  %45 = phi i32 [ %10, %9 ], [ %37, %36 ], [ %41, %40 ], [ %43, %42 ]
  ret i32 %45
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @save_stdjpeg(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = alloca %struct.jpeg_compress_struct, align 8
  %4 = alloca %struct.my_error_mgr, align 8
  call void @llvm.lifetime.start.p0(i64 528, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 368, ptr nonnull %4) #15
  %5 = call ptr @BLI_fopen(ptr noundef %0, ptr noundef nonnull @.str.3) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %38, label %7

7:                                                ; preds = %2
  store i32 75, ptr @jpeg_default_quality, align 4, !tbaa !61
  %8 = call ptr (ptr, ...) @jpeg_std_error(ptr noundef nonnull %4) #15
  store ptr %8, ptr %3, align 8, !tbaa !97
  store ptr @jpeg_error, ptr %4, align 8, !tbaa !42
  %9 = getelementptr inbounds %struct.my_error_mgr, ptr %4, i64 0, i32 1
  %10 = call i32 @_setjmp(ptr noundef nonnull %9) #16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  call void (ptr, ...) @jpeg_destroy_compress(ptr noundef nonnull %3) #15
  %13 = call i32 @fclose(ptr noundef nonnull %5)
  %14 = call i32 @remove(ptr noundef %0) #15
  br label %38

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 26
  %17 = load i32, ptr %16, align 8, !tbaa !92
  %18 = load i32, ptr @jpeg_default_quality, align 4
  call void (ptr, i32, i64, ...) @jpeg_CreateCompress(ptr noundef nonnull %3, i32 noundef 62, i64 noundef 528) #15
  call void (ptr, ptr, ...) @jpeg_stdio_dest(ptr noundef nonnull %3, ptr noundef nonnull %5) #15
  %19 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !78
  %21 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %3, i64 0, i32 7
  store i32 %20, ptr %21, align 8, !tbaa !99
  %22 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !72
  %24 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %3, i64 0, i32 8
  store i32 %23, ptr %24, align 4, !tbaa !100
  %25 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %3, i64 0, i32 10
  store i32 2, ptr %25, align 4, !tbaa !101
  %26 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 4
  %27 = load i8, ptr %26, align 8, !tbaa !102
  %28 = icmp eq i8 %27, 8
  %29 = select i1 %28, i32 1, i32 2
  store i32 %29, ptr %25, align 4
  %30 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %3, i64 0, i32 9
  %31 = select i1 %28, i32 1, i32 3
  store i32 %31, ptr %30, align 8, !tbaa !103
  %32 = and i32 %17, 255
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, i32 %18, i32 %32
  %35 = call i32 @llvm.smin.i32(i32 %34, i32 100)
  call void (ptr, ...) @jpeg_set_defaults(ptr noundef nonnull %3) #15
  %36 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %3, i64 0, i32 29
  store i32 2, ptr %36, align 4, !tbaa !104
  call void (ptr, i32, i32, ...) @jpeg_set_quality(ptr noundef nonnull %3, i32 noundef %35, i32 noundef 1) #15
  call fastcc void @write_jpeg(ptr noundef nonnull %3, ptr noundef %1)
  %37 = call i32 @fclose(ptr noundef nonnull %5)
  call void (ptr, ...) @jpeg_destroy_compress(ptr noundef nonnull %3) #15
  br label %38

38:                                               ; preds = %2, %15, %12
  %39 = phi i32 [ 0, %12 ], [ 1, %15 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 368, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 528, ptr nonnull %3) #15
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @save_maxjpeg(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = alloca %struct.jpeg_compress_struct, align 8
  %4 = alloca %struct.my_error_mgr, align 8
  call void @llvm.lifetime.start.p0(i64 528, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 368, ptr nonnull %4) #15
  %5 = call ptr @BLI_fopen(ptr noundef %0, ptr noundef nonnull @.str.3) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %46, label %7

7:                                                ; preds = %2
  store i32 100, ptr @jpeg_default_quality, align 4, !tbaa !61
  %8 = call ptr (ptr, ...) @jpeg_std_error(ptr noundef nonnull %4) #15
  store ptr %8, ptr %3, align 8, !tbaa !97
  store ptr @jpeg_error, ptr %4, align 8, !tbaa !42
  %9 = getelementptr inbounds %struct.my_error_mgr, ptr %4, i64 0, i32 1
  %10 = call i32 @_setjmp(ptr noundef nonnull %9) #16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  call void (ptr, ...) @jpeg_destroy_compress(ptr noundef nonnull %3) #15
  %13 = call i32 @fclose(ptr noundef nonnull %5)
  %14 = call i32 @remove(ptr noundef %0) #15
  br label %46

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 26
  %17 = load i32, ptr %16, align 8, !tbaa !92
  %18 = load i32, ptr @jpeg_default_quality, align 4
  call void (ptr, i32, i64, ...) @jpeg_CreateCompress(ptr noundef nonnull %3, i32 noundef 62, i64 noundef 528) #15
  call void (ptr, ptr, ...) @jpeg_stdio_dest(ptr noundef nonnull %3, ptr noundef nonnull %5) #15
  %19 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !78
  %21 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %3, i64 0, i32 7
  store i32 %20, ptr %21, align 8, !tbaa !99
  %22 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !72
  %24 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %3, i64 0, i32 8
  store i32 %23, ptr %24, align 4, !tbaa !100
  %25 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %3, i64 0, i32 10
  store i32 2, ptr %25, align 4, !tbaa !101
  %26 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 4
  %27 = load i8, ptr %26, align 8, !tbaa !102
  %28 = icmp eq i8 %27, 8
  %29 = select i1 %28, i32 1, i32 2
  store i32 %29, ptr %25, align 4
  %30 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %3, i64 0, i32 9
  %31 = select i1 %28, i32 1, i32 3
  store i32 %31, ptr %30, align 8, !tbaa !103
  %32 = and i32 %17, 255
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, i32 %18, i32 %32
  %35 = call i32 @llvm.smin.i32(i32 %34, i32 100)
  call void (ptr, ...) @jpeg_set_defaults(ptr noundef nonnull %3) #15
  %36 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %3, i64 0, i32 29
  store i32 2, ptr %36, align 4, !tbaa !104
  call void (ptr, i32, i32, ...) @jpeg_set_quality(ptr noundef nonnull %3, i32 noundef %35, i32 noundef 1) #15
  %37 = load i32, ptr %25, align 4, !tbaa !101
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %39, label %44

39:                                               ; preds = %15
  %40 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %3, i64 0, i32 15
  %41 = load ptr, ptr %40, align 8, !tbaa !105
  %42 = getelementptr inbounds %struct.jpeg_component_info, ptr %41, i64 0, i32 2
  store i32 1, ptr %42, align 8, !tbaa !106
  %43 = getelementptr inbounds %struct.jpeg_component_info, ptr %41, i64 0, i32 3
  store i32 1, ptr %43, align 4, !tbaa !108
  br label %44

44:                                               ; preds = %39, %15
  call fastcc void @write_jpeg(ptr noundef nonnull %3, ptr noundef %1)
  %45 = call i32 @fclose(ptr noundef nonnull %5)
  call void (ptr, ...) @jpeg_destroy_compress(ptr noundef nonnull %3) #15
  br label %46

46:                                               ; preds = %2, %44, %12
  %47 = phi i32 [ 0, %12 ], [ 1, %44 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 368, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 528, ptr nonnull %3) #15
  ret i32 %47
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @save_vidjpeg(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = alloca %struct.jpeg_compress_struct, align 8
  %4 = alloca %struct.my_error_mgr, align 8
  call void @llvm.lifetime.start.p0(i64 528, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 368, ptr nonnull %4) #15
  %5 = call ptr @BLI_fopen(ptr noundef %0, ptr noundef nonnull @.str.3) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %46, label %7

7:                                                ; preds = %2
  store i32 90, ptr @jpeg_default_quality, align 4, !tbaa !61
  %8 = call ptr (ptr, ...) @jpeg_std_error(ptr noundef nonnull %4) #15
  store ptr %8, ptr %3, align 8, !tbaa !97
  store ptr @jpeg_error, ptr %4, align 8, !tbaa !42
  %9 = getelementptr inbounds %struct.my_error_mgr, ptr %4, i64 0, i32 1
  %10 = call i32 @_setjmp(ptr noundef nonnull %9) #16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  call void (ptr, ...) @jpeg_destroy_compress(ptr noundef nonnull %3) #15
  %13 = call i32 @fclose(ptr noundef nonnull %5)
  %14 = call i32 @remove(ptr noundef %0) #15
  br label %46

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 26
  %17 = load i32, ptr %16, align 8, !tbaa !92
  %18 = load i32, ptr @jpeg_default_quality, align 4
  call void (ptr, i32, i64, ...) @jpeg_CreateCompress(ptr noundef nonnull %3, i32 noundef 62, i64 noundef 528) #15
  call void (ptr, ptr, ...) @jpeg_stdio_dest(ptr noundef nonnull %3, ptr noundef nonnull %5) #15
  %19 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !78
  %21 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %3, i64 0, i32 7
  store i32 %20, ptr %21, align 8, !tbaa !99
  %22 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !72
  %24 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %3, i64 0, i32 8
  store i32 %23, ptr %24, align 4, !tbaa !100
  %25 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %3, i64 0, i32 10
  store i32 2, ptr %25, align 4, !tbaa !101
  %26 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 4
  %27 = load i8, ptr %26, align 8, !tbaa !102
  %28 = icmp eq i8 %27, 8
  %29 = select i1 %28, i32 1, i32 2
  store i32 %29, ptr %25, align 4
  %30 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %3, i64 0, i32 9
  %31 = select i1 %28, i32 1, i32 3
  store i32 %31, ptr %30, align 8, !tbaa !103
  %32 = and i32 %17, 255
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, i32 %18, i32 %32
  %35 = call i32 @llvm.smin.i32(i32 %34, i32 100)
  call void (ptr, ...) @jpeg_set_defaults(ptr noundef nonnull %3) #15
  %36 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %3, i64 0, i32 29
  store i32 2, ptr %36, align 4, !tbaa !104
  call void (ptr, i32, i32, ...) @jpeg_set_quality(ptr noundef nonnull %3, i32 noundef %35, i32 noundef 1) #15
  %37 = load i32, ptr %25, align 4, !tbaa !101
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %39, label %44

39:                                               ; preds = %15
  %40 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %3, i64 0, i32 15
  %41 = load ptr, ptr %40, align 8, !tbaa !105
  %42 = getelementptr inbounds %struct.jpeg_component_info, ptr %41, i64 0, i32 2
  store i32 2, ptr %42, align 8, !tbaa !106
  %43 = getelementptr inbounds %struct.jpeg_component_info, ptr %41, i64 0, i32 3
  store i32 1, ptr %43, align 4, !tbaa !108
  br label %44

44:                                               ; preds = %39, %15
  call fastcc void @write_jpeg(ptr noundef nonnull %3, ptr noundef %1)
  %45 = call i32 @fclose(ptr noundef nonnull %5)
  call void (ptr, ...) @jpeg_destroy_compress(ptr noundef nonnull %3) #15
  br label %46

46:                                               ; preds = %2, %44, %12
  %47 = phi i32 [ 0, %12 ], [ 1, %44 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 368, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 528, ptr nonnull %3) #15
  ret i32 %47
}

declare void @jpeg_destroy(...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @longjmp(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @init_source(ptr nocapture readnone %0) #7 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @fill_input_buffer(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.my_source_mgr, ptr %3, i64 0, i32 3
  store ptr %4, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %3, i64 0, i32 1
  store i64 2, ptr %5, align 8, !tbaa !57
  store i8 -1, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds %struct.my_source_mgr, ptr %3, i64 0, i32 3, i64 1
  store i8 -39, ptr %6, align 1, !tbaa !34
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @skip_input_data(ptr nocapture noundef readonly %0, i64 noundef %1) #9 {
  %3 = icmp sgt i64 %1, 0
  br i1 %3, label %4, label %13

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %6, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !57
  %9 = tail call i64 @llvm.umin.i64(i64 %8, i64 %1)
  %10 = load ptr, ptr %6, align 8, !tbaa !58
  %11 = getelementptr inbounds i8, ptr %10, i64 %9
  store ptr %11, ptr %6, align 8, !tbaa !58
  %12 = sub i64 %8, %9
  store i64 %12, ptr %7, align 8, !tbaa !57
  br label %13

13:                                               ; preds = %4, %2
  ret void
}

declare i32 @jpeg_resync_to_restart(...) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @term_source(ptr nocapture readnone %0) #7 {
  ret void
}

declare void @jpeg_set_marker_processor(...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @handle_app1(ptr noundef %0) #1 {
  %2 = alloca [128 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #15
  %3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %4, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !109
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %4, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !110
  %11 = tail call i32 (ptr, ...) %10(ptr noundef %0) #15
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %88, label %13

13:                                               ; preds = %8
  %14 = load i64, ptr %5, align 8, !tbaa !109
  br label %15

15:                                               ; preds = %13, %1
  %16 = phi i64 [ %14, %13 ], [ %6, %1 ]
  %17 = load ptr, ptr %4, align 8, !tbaa !111
  %18 = add i64 %16, -1
  %19 = getelementptr inbounds i8, ptr %17, i64 1
  %20 = load i8, ptr %17, align 1, !tbaa !34
  %21 = zext i8 %20 to i64
  %22 = shl nuw nsw i64 %21, 8
  %23 = icmp eq i64 %18, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %4, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !110
  %27 = tail call i32 (ptr, ...) %26(ptr noundef %0) #15
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %88, label %29

29:                                               ; preds = %24
  %30 = load ptr, ptr %4, align 8, !tbaa !111
  %31 = load i64, ptr %5, align 8, !tbaa !109
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
  br i1 %41, label %42, label %79

42:                                               ; preds = %32
  %43 = icmp ugt i64 %39, 2
  br i1 %43, label %44, label %68

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %4, i64 0, i32 3
  %46 = tail call i64 @llvm.smax.i64(i64 %40, i64 1)
  br label %47

47:                                               ; preds = %44, %59
  %48 = phi i64 [ %35, %44 ], [ %62, %59 ]
  %49 = phi ptr [ %36, %44 ], [ %63, %59 ]
  %50 = phi i64 [ 0, %44 ], [ %66, %59 ]
  %51 = icmp eq i64 %48, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load ptr, ptr %45, align 8, !tbaa !110
  %54 = tail call i32 (ptr, ...) %53(ptr noundef %0) #15
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %88, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr %4, align 8, !tbaa !111
  %58 = load i64, ptr %5, align 8, !tbaa !109
  br label %59

59:                                               ; preds = %56, %47
  %60 = phi ptr [ %57, %56 ], [ %49, %47 ]
  %61 = phi i64 [ %58, %56 ], [ %48, %47 ]
  %62 = add i64 %61, -1
  %63 = getelementptr inbounds i8, ptr %60, i64 1
  %64 = load i8, ptr %60, align 1, !tbaa !34
  %65 = getelementptr inbounds [128 x i8], ptr %2, i64 0, i64 %50
  store i8 %64, ptr %65, align 1, !tbaa !34
  %66 = add nuw nsw i64 %50, 1
  %67 = icmp eq i64 %66, %46
  br i1 %67, label %68, label %47, !llvm.loop !112

68:                                               ; preds = %59, %42
  %69 = phi ptr [ %36, %42 ], [ %63, %59 ]
  %70 = phi i64 [ %35, %42 ], [ %62, %59 ]
  %71 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.2, i64 6)
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = getelementptr inbounds i8, ptr %2, i64 6
  %75 = load i32, ptr %74, align 2
  store i32 %75, ptr @ibuf_ftype, align 4
  br label %76

76:                                               ; preds = %73, %68
  %77 = load i32, ptr @ibuf_ftype, align 4, !tbaa !61
  %78 = tail call i32 @llvm.bswap.i32(i32 %77)
  store i32 %78, ptr @ibuf_ftype, align 4, !tbaa !61
  br label %79

79:                                               ; preds = %76, %32
  %80 = phi i64 [ 0, %76 ], [ %40, %32 ]
  %81 = phi ptr [ %69, %76 ], [ %36, %32 ]
  %82 = phi i64 [ %70, %76 ], [ %35, %32 ]
  store ptr %81, ptr %4, align 8, !tbaa !111
  store i64 %82, ptr %5, align 8, !tbaa !109
  %83 = icmp sgt i64 %80, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load ptr, ptr %3, align 8, !tbaa !46
  %86 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %85, i64 0, i32 4
  %87 = load ptr, ptr %86, align 8, !tbaa !113
  tail call void (ptr, i64, ...) %87(ptr noundef %0, i64 noundef %80) #15
  br label %88

88:                                               ; preds = %52, %79, %84, %24, %8
  %89 = phi i32 [ 0, %8 ], [ 0, %24 ], [ 1, %84 ], [ 1, %79 ], [ 0, %52 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #15
  ret i32 %89
}

declare void @jpeg_save_markers(...) local_unnamed_addr #3

declare i32 @jpeg_read_header(...) local_unnamed_addr #3

declare i32 @jpeg_start_decompress(...) local_unnamed_addr #3

declare void @jpeg_abort_decompress(...) local_unnamed_addr #3

declare ptr @IMB_allocImBuf(i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

declare i32 @jpeg_read_scanlines(...) local_unnamed_addr #3

declare ptr @BLI_strdupn(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #10

declare zeroext i8 @IMB_metadata_add_field(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #10

declare i32 @jpeg_finish_decompress(...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

declare ptr @BLI_fopen(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @jpeg_destroy_compress(...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @remove(ptr nocapture noundef readonly) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define internal fastcc void @write_jpeg(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = alloca [1 x ptr], align 8
  %4 = alloca [128 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #15
  tail call void (ptr, i32, ...) @jpeg_start_compress(ptr noundef %0, i32 noundef 1) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(7) %4, ptr noundef nonnull align 1 dereferenceable(7) @.str.2, i64 7, i1 false) #15
  %5 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 26
  %6 = load i32, ptr %5, align 8, !tbaa !92
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  store i32 %7, ptr @ibuf_ftype, align 4, !tbaa !61
  %8 = getelementptr inbounds i8, ptr %4, i64 6
  store i32 %7, ptr %8, align 2
  call void (ptr, i32, ptr, i32, ...) @jpeg_write_marker(ptr noundef %0, i32 noundef 225, ptr noundef nonnull %4, i32 noundef 10) #15
  %9 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 24
  %10 = load ptr, ptr %9, align 8, !tbaa !114
  %11 = icmp eq ptr %10, null
  br i1 %11, label %35, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !79
  %14 = call ptr %13(i64 noundef 530, ptr noundef nonnull @.str.4) #15
  %15 = load ptr, ptr %9, align 8, !tbaa !79
  %16 = icmp eq ptr %15, null
  br i1 %16, label %33, label %17

17:                                               ; preds = %12, %27
  %18 = phi ptr [ %31, %27 ], [ %15, %12 ]
  %19 = getelementptr inbounds %struct.ImMetaData, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !115
  %21 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(5) @.str.1) #17
  %22 = icmp eq i32 %21, 0
  %23 = getelementptr inbounds %struct.ImMetaData, ptr %18, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !117
  br i1 %22, label %27, label %25

25:                                               ; preds = %17
  %26 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef %20, ptr noundef %24) #15
  br label %27

27:                                               ; preds = %17, %25
  %28 = phi ptr [ %14, %25 ], [ %24, %17 ]
  %29 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %28) #17
  %30 = add i64 %29, 1
  call void (ptr, i32, ptr, i64, ...) @jpeg_write_marker(ptr noundef %0, i32 noundef 254, ptr noundef %28, i64 noundef %30) #15
  %31 = load ptr, ptr %18, align 8, !tbaa !79
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %17, !llvm.loop !118

33:                                               ; preds = %27, %12
  %34 = load ptr, ptr @MEM_freeN, align 8, !tbaa !79
  call void %34(ptr noundef %14) #15
  br label %35

35:                                               ; preds = %33, %2
  %36 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !79
  %37 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 9
  %38 = load i32, ptr %37, align 8, !tbaa !103
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 7
  %41 = load i32, ptr %40, align 8, !tbaa !99
  %42 = zext i32 %41 to i64
  %43 = mul nsw i64 %42, %39
  %44 = call ptr %36(i64 noundef %43, ptr noundef nonnull @.str.6) #15
  store ptr %44, ptr %3, align 8, !tbaa !79
  %45 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 3
  %46 = load i32, ptr %45, align 4, !tbaa !72
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %100

48:                                               ; preds = %35
  %49 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 8
  %50 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %51 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 10
  br label %52

52:                                               ; preds = %48, %97
  %53 = phi i32 [ %46, %48 ], [ %54, %97 ]
  %54 = add nsw i32 %53, -1
  %55 = load ptr, ptr %49, align 8, !tbaa !77
  %56 = load i32, ptr %50, align 8, !tbaa !78
  %57 = mul nsw i32 %56, %54
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, ptr %55, i64 %58
  %60 = load ptr, ptr %3, align 8, !tbaa !79
  %61 = load i32, ptr %51, align 4, !tbaa !101
  switch i32 %61, label %97 [
    i32 2, label %65
    i32 1, label %62
    i32 0, label %94
  ]

62:                                               ; preds = %52
  %63 = load i32, ptr %50, align 8, !tbaa !78
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %84, label %97

65:                                               ; preds = %52
  %66 = load i32, ptr %50, align 8, !tbaa !78
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %97

68:                                               ; preds = %65, %68
  %69 = phi ptr [ %79, %68 ], [ %60, %65 ]
  %70 = phi i32 [ %81, %68 ], [ 0, %65 ]
  %71 = phi ptr [ %80, %68 ], [ %59, %65 ]
  %72 = load i8, ptr %71, align 1, !tbaa !34
  %73 = getelementptr inbounds i8, ptr %69, i64 1
  store i8 %72, ptr %69, align 1, !tbaa !34
  %74 = getelementptr inbounds i8, ptr %71, i64 1
  %75 = load i8, ptr %74, align 1, !tbaa !34
  %76 = getelementptr inbounds i8, ptr %69, i64 2
  store i8 %75, ptr %73, align 1, !tbaa !34
  %77 = getelementptr inbounds i8, ptr %71, i64 2
  %78 = load i8, ptr %77, align 1, !tbaa !34
  %79 = getelementptr inbounds i8, ptr %69, i64 3
  store i8 %78, ptr %76, align 1, !tbaa !34
  %80 = getelementptr inbounds i8, ptr %71, i64 4
  %81 = add nuw nsw i32 %70, 1
  %82 = load i32, ptr %50, align 8, !tbaa !78
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %68, label %97, !llvm.loop !119

84:                                               ; preds = %62, %84
  %85 = phi ptr [ %89, %84 ], [ %60, %62 ]
  %86 = phi i32 [ %91, %84 ], [ 0, %62 ]
  %87 = phi ptr [ %90, %84 ], [ %59, %62 ]
  %88 = load i8, ptr %87, align 1, !tbaa !34
  %89 = getelementptr inbounds i8, ptr %85, i64 1
  store i8 %88, ptr %85, align 1, !tbaa !34
  %90 = getelementptr inbounds i8, ptr %87, i64 4
  %91 = add nuw nsw i32 %86, 1
  %92 = load i32, ptr %50, align 8, !tbaa !78
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %84, label %97, !llvm.loop !120

94:                                               ; preds = %52
  %95 = shl nsw i32 %56, 2
  %96 = sext i32 %95 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %60, ptr align 1 %59, i64 %96, i1 false)
  br label %97

97:                                               ; preds = %84, %68, %62, %65, %52, %94
  %98 = call i32 (ptr, ptr, i32, ...) @jpeg_write_scanlines(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 1) #15
  %99 = icmp sgt i32 %53, 1
  br i1 %99, label %52, label %100, !llvm.loop !121

100:                                              ; preds = %97, %35
  call void (ptr, ...) @jpeg_finish_compress(ptr noundef %0) #15
  %101 = load ptr, ptr @MEM_freeN, align 8, !tbaa !79
  %102 = load ptr, ptr %3, align 8, !tbaa !79
  call void %101(ptr noundef %102) #15
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret void
}

declare void @jpeg_CreateCompress(...) local_unnamed_addr #3

declare void @jpeg_stdio_dest(...) local_unnamed_addr #3

declare void @jpeg_set_defaults(...) local_unnamed_addr #3

declare void @jpeg_set_quality(...) local_unnamed_addr #3

declare void @jpeg_start_compress(...) local_unnamed_addr #3

declare void @jpeg_write_marker(...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

declare i32 @jpeg_write_scanlines(...) local_unnamed_addr #3

declare void @jpeg_finish_compress(...) local_unnamed_addr #3

declare void @IMB_rectcpy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind willreturn memory(argmem: read) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { nounwind returns_twice }
attributes #17 = { nounwind willreturn memory(read) }
attributes #18 = { noreturn nounwind }

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
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = !{!38, !39, i64 0}
!38 = !{!"jpeg_decompress_struct", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !40, i64 32, !40, i64 36, !39, i64 40, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !40, i64 64, !40, i64 68, !40, i64 72, !41, i64 80, !40, i64 88, !40, i64 92, !40, i64 96, !40, i64 100, !40, i64 104, !40, i64 108, !40, i64 112, !40, i64 116, !40, i64 120, !40, i64 124, !40, i64 128, !40, i64 132, !40, i64 136, !40, i64 140, !40, i64 144, !40, i64 148, !40, i64 152, !40, i64 156, !39, i64 160, !40, i64 168, !40, i64 172, !40, i64 176, !40, i64 180, !40, i64 184, !39, i64 192, !35, i64 200, !35, i64 232, !35, i64 264, !40, i64 296, !39, i64 304, !40, i64 312, !40, i64 316, !35, i64 320, !35, i64 336, !35, i64 352, !40, i64 368, !40, i64 372, !35, i64 376, !35, i64 377, !35, i64 378, !40, i64 380, !40, i64 384, !40, i64 388, !35, i64 392, !40, i64 396, !39, i64 400, !40, i64 408, !40, i64 412, !40, i64 416, !40, i64 420, !39, i64 424, !40, i64 432, !35, i64 440, !40, i64 472, !40, i64 476, !40, i64 480, !35, i64 484, !40, i64 524, !40, i64 528, !40, i64 532, !40, i64 536, !40, i64 540, !39, i64 544, !39, i64 552, !39, i64 560, !39, i64 568, !39, i64 576, !39, i64 584, !39, i64 592, !39, i64 600, !39, i64 608, !39, i64 616, !39, i64 624}
!39 = !{!"any pointer", !35, i64 0}
!40 = !{!"int", !35, i64 0}
!41 = !{!"double", !35, i64 0}
!42 = !{!43, !39, i64 0}
!43 = !{!"my_error_mgr", !44, i64 0, !35, i64 168}
!44 = !{!"jpeg_error_mgr", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !40, i64 40, !35, i64 44, !40, i64 124, !45, i64 128, !39, i64 136, !40, i64 144, !39, i64 152, !40, i64 160, !40, i64 164}
!45 = !{!"long", !35, i64 0}
!46 = !{!38, !39, i64 40}
!47 = !{!38, !39, i64 8}
!48 = !{!49, !39, i64 0}
!49 = !{!"jpeg_memory_mgr", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !39, i64 80, !45, i64 88, !45, i64 96}
!50 = !{!51, !39, i64 16}
!51 = !{!"", !52, i64 0, !39, i64 56, !40, i64 64, !35, i64 68}
!52 = !{!"jpeg_source_mgr", !39, i64 0, !45, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48}
!53 = !{!51, !39, i64 24}
!54 = !{!51, !39, i64 32}
!55 = !{!51, !39, i64 40}
!56 = !{!51, !39, i64 48}
!57 = !{!51, !45, i64 8}
!58 = !{!51, !39, i64 0}
!59 = !{!51, !39, i64 56}
!60 = !{!51, !40, i64 64}
!61 = !{!40, !40, i64 0}
!62 = !{!38, !40, i64 96}
!63 = !{!38, !40, i64 48}
!64 = !{!38, !40, i64 52}
!65 = !{!38, !40, i64 56}
!66 = !{!38, !40, i64 60}
!67 = !{!38, !40, i64 64}
!68 = !{!38, !40, i64 412}
!69 = !{!38, !40, i64 408}
!70 = !{!38, !40, i64 136}
!71 = !{!49, !39, i64 16}
!72 = !{!73, !40, i64 20}
!73 = !{!"ImBuf", !39, i64 0, !39, i64 8, !40, i64 16, !40, i64 20, !35, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !39, i64 40, !39, i64 48, !35, i64 56, !40, i64 72, !40, i64 76, !40, i64 80, !40, i64 84, !39, i64 88, !39, i64 96, !39, i64 104, !74, i64 112, !35, i64 120, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !39, i64 296, !39, i64 304, !40, i64 312, !35, i64 316, !35, i64 1340, !39, i64 2368, !40, i64 2376, !39, i64 2384, !40, i64 2392, !40, i64 2396, !39, i64 2400, !39, i64 2408, !39, i64 2416, !39, i64 2424, !40, i64 2432, !75, i64 2436, !76, i64 2456}
!74 = !{!"float", !35, i64 0}
!75 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!76 = !{!"DDSData", !40, i64 0, !40, i64 4, !39, i64 8, !40, i64 16}
!77 = !{!73, !39, i64 40}
!78 = !{!73, !40, i64 16}
!79 = !{!39, !39, i64 0}
!80 = distinct !{!80, !81, !82}
!81 = !{!"llvm.loop.mustprogress"}
!82 = !{!"llvm.loop.unroll.disable"}
!83 = distinct !{!83, !81, !82}
!84 = distinct !{!84, !81, !82}
!85 = distinct !{!85, !81, !82}
!86 = !{!87, !35, i64 8}
!87 = !{!"jpeg_marker_struct", !39, i64 0, !35, i64 8, !40, i64 12, !40, i64 16, !39, i64 24}
!88 = !{!87, !39, i64 24}
!89 = !{!87, !40, i64 16}
!90 = !{!73, !40, i64 32}
!91 = distinct !{!91, !81, !82}
!92 = !{!73, !40, i64 312}
!93 = !{!94, !39, i64 0}
!94 = !{!"jpeg_common_struct", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !40, i64 32, !40, i64 36}
!95 = !{!44, !39, i64 16}
!96 = !{i32 0, i32 2}
!97 = !{!98, !39, i64 0}
!98 = !{!"jpeg_compress_struct", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !40, i64 32, !40, i64 36, !39, i64 40, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !41, i64 64, !40, i64 72, !40, i64 76, !40, i64 80, !39, i64 88, !35, i64 96, !35, i64 128, !35, i64 160, !35, i64 192, !35, i64 208, !35, i64 224, !40, i64 240, !39, i64 248, !40, i64 256, !40, i64 260, !40, i64 264, !40, i64 268, !40, i64 272, !40, i64 276, !40, i64 280, !40, i64 284, !40, i64 288, !35, i64 292, !35, i64 293, !35, i64 294, !40, i64 296, !40, i64 300, !40, i64 304, !40, i64 308, !40, i64 312, !40, i64 316, !40, i64 320, !40, i64 324, !40, i64 328, !35, i64 336, !40, i64 368, !40, i64 372, !40, i64 376, !35, i64 380, !40, i64 420, !40, i64 424, !40, i64 428, !40, i64 432, !39, i64 440, !39, i64 448, !39, i64 456, !39, i64 464, !39, i64 472, !39, i64 480, !39, i64 488, !39, i64 496, !39, i64 504, !39, i64 512, !40, i64 520}
!99 = !{!98, !40, i64 48}
!100 = !{!98, !40, i64 52}
!101 = !{!98, !40, i64 60}
!102 = !{!73, !35, i64 24}
!103 = !{!98, !40, i64 56}
!104 = !{!98, !40, i64 276}
!105 = !{!98, !39, i64 88}
!106 = !{!107, !40, i64 8}
!107 = !{!"", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !40, i64 64, !40, i64 68, !40, i64 72, !39, i64 80, !39, i64 88}
!108 = !{!107, !40, i64 12}
!109 = !{!52, !45, i64 8}
!110 = !{!52, !39, i64 24}
!111 = !{!52, !39, i64 0}
!112 = distinct !{!112, !81, !82}
!113 = !{!52, !39, i64 32}
!114 = !{!73, !39, i64 296}
!115 = !{!116, !39, i64 16}
!116 = !{!"ImMetaData", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !40, i64 32}
!117 = !{!116, !39, i64 24}
!118 = distinct !{!118, !81, !82}
!119 = distinct !{!119, !81, !82}
!120 = distinct !{!120, !81, !82}
!121 = distinct !{!121, !81, !82}
