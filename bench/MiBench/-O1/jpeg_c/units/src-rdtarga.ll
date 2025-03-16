; ModuleID = 'src/rdtarga.c'
source_filename = "src/rdtarga.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct._tga_source_struct = type { %struct.cjpeg_source_struct, ptr, ptr, ptr, i32, ptr, [4 x i8], i32, i32, i32, ptr }
%struct.cjpeg_source_struct = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.cdjpeg_progress_mgr = type { %struct.jpeg_progress_mgr, i32, i32, i32 }
%struct.jpeg_progress_mgr = type { ptr, i64, i64, i32, i32 }

@c5to8bits = internal unnamed_addr constant [32 x i8] c"\00\08\10\19!)1:BJRZcks{\84\8C\94\9C\A5\AD\B5\BD\C5\CE\D6\DE\E6\EF\F7\FF", align 16

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @jinit_read_targa(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = load ptr, ptr %3, align 8, !tbaa !13
  %5 = tail call ptr %4(ptr noundef %0, i32 noundef 1, i64 noundef 112) #5
  %6 = getelementptr inbounds %struct._tga_source_struct, ptr %5, i64 0, i32 1
  store ptr %0, ptr %6, align 8, !tbaa !16
  store ptr @start_input_tga, ptr %5, align 8, !tbaa !19
  %7 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %5, i64 0, i32 2
  store ptr @finish_input_tga, ptr %7, align 8, !tbaa !20
  ret ptr %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @start_input_tga(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca [18 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %3) #5
  %4 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !21
  %6 = call i64 @fread(ptr noundef nonnull %3, i64 noundef 1, i64 noundef 18, ptr noundef %5)
  %7 = icmp eq i64 %6, 18
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !22
  %10 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i64 0, i32 5
  store i32 42, ptr %10, align 8, !tbaa !23
  %11 = load ptr, ptr %9, align 8, !tbaa !25
  tail call void %11(ptr noundef nonnull %0) #5
  br label %12

12:                                               ; preds = %8, %2
  %13 = getelementptr inbounds [18 x i8], ptr %3, i64 0, i64 16
  %14 = load i8, ptr %13, align 16, !tbaa !26
  %15 = icmp eq i8 %14, 15
  %16 = select i1 %15, i8 16, i8 %14
  store i8 %16, ptr %13, align 16
  %17 = load i8, ptr %3, align 16, !tbaa !26
  %18 = zext i8 %17 to i32
  %19 = getelementptr inbounds [18 x i8], ptr %3, i64 0, i64 1
  %20 = load i8, ptr %19, align 1, !tbaa !26
  %21 = getelementptr inbounds [18 x i8], ptr %3, i64 0, i64 2
  %22 = load i8, ptr %21, align 2, !tbaa !26
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds [18 x i8], ptr %3, i64 0, i64 5
  %25 = load i8, ptr %24, align 1, !tbaa !26
  %26 = zext i8 %25 to i32
  %27 = getelementptr inbounds [18 x i8], ptr %3, i64 0, i64 6
  %28 = load i8, ptr %27, align 2, !tbaa !26
  %29 = zext i8 %28 to i32
  %30 = shl nuw nsw i32 %29, 8
  %31 = or disjoint i32 %30, %26
  %32 = getelementptr inbounds [18 x i8], ptr %3, i64 0, i64 12
  %33 = load i8, ptr %32, align 4, !tbaa !26
  %34 = zext i8 %33 to i32
  %35 = getelementptr inbounds [18 x i8], ptr %3, i64 0, i64 13
  %36 = load i8, ptr %35, align 1, !tbaa !26
  %37 = zext i8 %36 to i32
  %38 = shl nuw nsw i32 %37, 8
  %39 = or disjoint i32 %38, %34
  %40 = getelementptr inbounds [18 x i8], ptr %3, i64 0, i64 14
  %41 = load i8, ptr %40, align 2, !tbaa !26
  %42 = zext i8 %41 to i32
  %43 = getelementptr inbounds [18 x i8], ptr %3, i64 0, i64 15
  %44 = load i8, ptr %43, align 1, !tbaa !26
  %45 = zext i8 %44 to i32
  %46 = shl nuw nsw i32 %45, 8
  %47 = or disjoint i32 %46, %42
  %48 = lshr i8 %16, 3
  %49 = zext nneg i8 %48 to i32
  %50 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 7
  store i32 %49, ptr %50, align 4, !tbaa !27
  %51 = getelementptr inbounds [18 x i8], ptr %3, i64 0, i64 17
  %52 = load i8, ptr %51, align 1, !tbaa !26
  %53 = and i8 %52, 32
  %54 = icmp eq i8 %53, 0
  %55 = icmp ugt i8 %20, 1
  %56 = icmp ult i8 %16, 8
  %57 = select i1 %55, i1 true, i1 %56
  %58 = icmp ugt i8 %16, 39
  %59 = select i1 %57, i1 true, i1 %58
  br i1 %59, label %65, label %60

60:                                               ; preds = %12
  %61 = and i8 %16, 7
  %62 = icmp ne i8 %61, 0
  %63 = icmp ugt i8 %52, 63
  %64 = select i1 %62, i1 true, i1 %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %60, %12
  %66 = load ptr, ptr %0, align 8, !tbaa !22
  %67 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %66, i64 0, i32 5
  store i32 1033, ptr %67, align 8, !tbaa !23
  %68 = load ptr, ptr %66, align 8, !tbaa !25
  tail call void %68(ptr noundef nonnull %0) #5
  br label %69

69:                                               ; preds = %60, %65
  %70 = icmp ugt i8 %22, 8
  %71 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 5
  br i1 %70, label %72, label %76

72:                                               ; preds = %69
  store ptr @read_rle_pixel, ptr %71, align 8, !tbaa !28
  %73 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 9
  store i32 0, ptr %73, align 4, !tbaa !29
  %74 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 8
  store i32 0, ptr %74, align 8, !tbaa !30
  %75 = add nsw i32 %23, -8
  br label %77

76:                                               ; preds = %69
  store ptr @read_non_rle_pixel, ptr %71, align 8, !tbaa !28
  br label %77

77:                                               ; preds = %76, %72
  %78 = phi i32 [ %75, %72 ], [ %23, %76 ]
  %79 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 9
  store i32 2, ptr %79, align 4, !tbaa !31
  switch i32 %78, label %139 [
    i32 1, label %80
    i32 2, label %100
    i32 3, label %121
  ]

80:                                               ; preds = %77
  %81 = load i32, ptr %50, align 4, !tbaa !27
  %82 = icmp eq i32 %81, 1
  %83 = icmp eq i8 %20, 1
  %84 = select i1 %82, i1 %83, i1 false
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 10
  store ptr @get_8bit_row, ptr %86, align 8, !tbaa !32
  br label %91

87:                                               ; preds = %80
  %88 = load ptr, ptr %0, align 8, !tbaa !22
  %89 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %88, i64 0, i32 5
  store i32 1033, ptr %89, align 8, !tbaa !23
  %90 = load ptr, ptr %88, align 8, !tbaa !25
  tail call void %90(ptr noundef nonnull %0) #5
  br label %91

91:                                               ; preds = %87, %85
  %92 = load ptr, ptr %0, align 8, !tbaa !22
  %93 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %92, i64 0, i32 5
  store i32 1037, ptr %93, align 8, !tbaa !23
  %94 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %92, i64 0, i32 6
  store i32 %39, ptr %94, align 4, !tbaa !26
  %95 = load ptr, ptr %0, align 8, !tbaa !22
  %96 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %95, i64 0, i32 6, i32 0, i64 1
  store i32 %47, ptr %96, align 4, !tbaa !26
  %97 = load ptr, ptr %0, align 8, !tbaa !22
  %98 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %97, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !33
  tail call void %99(ptr noundef nonnull %0, i32 noundef 1) #5
  br label %143

100:                                              ; preds = %77
  %101 = load i32, ptr %50, align 4, !tbaa !27
  switch i32 %101, label %108 [
    i32 2, label %102
    i32 3, label %104
    i32 4, label %106
  ]

102:                                              ; preds = %100
  %103 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 10
  store ptr @get_16bit_row, ptr %103, align 8, !tbaa !32
  br label %112

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 10
  store ptr @get_24bit_row, ptr %105, align 8, !tbaa !32
  br label %112

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 10
  store ptr @get_24bit_row, ptr %107, align 8, !tbaa !32
  br label %112

108:                                              ; preds = %100
  %109 = load ptr, ptr %0, align 8, !tbaa !22
  %110 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %109, i64 0, i32 5
  store i32 1033, ptr %110, align 8, !tbaa !23
  %111 = load ptr, ptr %109, align 8, !tbaa !25
  tail call void %111(ptr noundef nonnull %0) #5
  br label %112

112:                                              ; preds = %108, %106, %104, %102
  %113 = load ptr, ptr %0, align 8, !tbaa !22
  %114 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %113, i64 0, i32 5
  store i32 1035, ptr %114, align 8, !tbaa !23
  %115 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %113, i64 0, i32 6
  store i32 %39, ptr %115, align 4, !tbaa !26
  %116 = load ptr, ptr %0, align 8, !tbaa !22
  %117 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %116, i64 0, i32 6, i32 0, i64 1
  store i32 %47, ptr %117, align 4, !tbaa !26
  %118 = load ptr, ptr %0, align 8, !tbaa !22
  %119 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %118, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !33
  tail call void %120(ptr noundef nonnull %0, i32 noundef 1) #5
  br label %143

121:                                              ; preds = %77
  store i32 1, ptr %79, align 4, !tbaa !31
  %122 = load i32, ptr %50, align 4, !tbaa !27
  %123 = icmp eq i32 %122, 1
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 10
  store ptr @get_8bit_gray_row, ptr %125, align 8, !tbaa !32
  br label %130

126:                                              ; preds = %121
  %127 = load ptr, ptr %0, align 8, !tbaa !22
  %128 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %127, i64 0, i32 5
  store i32 1033, ptr %128, align 8, !tbaa !23
  %129 = load ptr, ptr %127, align 8, !tbaa !25
  tail call void %129(ptr noundef nonnull %0) #5
  br label %130

130:                                              ; preds = %126, %124
  %131 = load ptr, ptr %0, align 8, !tbaa !22
  %132 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %131, i64 0, i32 5
  store i32 1036, ptr %132, align 8, !tbaa !23
  %133 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %131, i64 0, i32 6
  store i32 %39, ptr %133, align 4, !tbaa !26
  %134 = load ptr, ptr %0, align 8, !tbaa !22
  %135 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %134, i64 0, i32 6, i32 0, i64 1
  store i32 %47, ptr %135, align 4, !tbaa !26
  %136 = load ptr, ptr %0, align 8, !tbaa !22
  %137 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %136, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !33
  tail call void %138(ptr noundef nonnull %0, i32 noundef 1) #5
  br label %143

139:                                              ; preds = %77
  %140 = load ptr, ptr %0, align 8, !tbaa !22
  %141 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %140, i64 0, i32 5
  store i32 1033, ptr %141, align 8, !tbaa !23
  %142 = load ptr, ptr %140, align 8, !tbaa !25
  tail call void %142(ptr noundef nonnull %0) #5
  br label %143

143:                                              ; preds = %139, %130, %112, %91
  %144 = phi i32 [ 3, %139 ], [ 1, %130 ], [ 3, %112 ], [ 3, %91 ]
  br i1 %54, label %145, label %162

145:                                              ; preds = %143
  %146 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !5
  %148 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %147, i64 0, i32 4
  %149 = load ptr, ptr %148, align 8, !tbaa !34
  %150 = mul nuw nsw i32 %144, %39
  %151 = tail call ptr %149(ptr noundef %0, i32 noundef 1, i32 noundef 0, i32 noundef %150, i32 noundef %47, i32 noundef 1) #5
  %152 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 3
  store ptr %151, ptr %152, align 8, !tbaa !35
  %153 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 2
  %154 = load ptr, ptr %153, align 8, !tbaa !36
  %155 = icmp eq ptr %154, null
  br i1 %155, label %160, label %156

156:                                              ; preds = %145
  %157 = getelementptr inbounds %struct.cdjpeg_progress_mgr, ptr %154, i64 0, i32 2
  %158 = load i32, ptr %157, align 4, !tbaa !37
  %159 = add nsw i32 %158, 1
  store i32 %159, ptr %157, align 4, !tbaa !37
  br label %160

160:                                              ; preds = %156, %145
  %161 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 5
  store i32 1, ptr %161, align 8, !tbaa !40
  br label %174

162:                                              ; preds = %143
  %163 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 3
  store ptr null, ptr %163, align 8, !tbaa !35
  %164 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %165 = load ptr, ptr %164, align 8, !tbaa !5
  %166 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %165, i64 0, i32 2
  %167 = load ptr, ptr %166, align 8, !tbaa !41
  %168 = mul nuw nsw i32 %144, %39
  %169 = tail call ptr %167(ptr noundef %0, i32 noundef 1, i32 noundef %168, i32 noundef 1) #5
  %170 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 4
  store ptr %169, ptr %170, align 8, !tbaa !42
  %171 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 5
  store i32 1, ptr %171, align 8, !tbaa !40
  %172 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 10
  %173 = load ptr, ptr %172, align 8, !tbaa !32
  br label %174

174:                                              ; preds = %162, %160
  %175 = phi ptr [ %173, %162 ], [ @preload_image, %160 ]
  %176 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 1
  store ptr %175, ptr %176, align 8, !tbaa !43
  %177 = icmp eq i8 %17, 0
  br i1 %177, label %193, label %178

178:                                              ; preds = %174
  %179 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 1
  br label %180

180:                                              ; preds = %178, %191
  %181 = phi i32 [ %18, %178 ], [ %182, %191 ]
  %182 = add nsw i32 %181, -1
  %183 = load ptr, ptr %4, align 8, !tbaa !21
  %184 = tail call i32 @getc(ptr noundef %183)
  %185 = icmp eq i32 %184, -1
  br i1 %185, label %186, label %191

186:                                              ; preds = %180
  %187 = load ptr, ptr %179, align 8, !tbaa !16
  %188 = load ptr, ptr %187, align 8, !tbaa !22
  %189 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %188, i64 0, i32 5
  store i32 42, ptr %189, align 8, !tbaa !23
  %190 = load ptr, ptr %188, align 8, !tbaa !25
  tail call void %190(ptr noundef nonnull %187) #5
  br label %191

191:                                              ; preds = %180, %186
  %192 = icmp eq i32 %182, 0
  br i1 %192, label %193, label %180, !llvm.loop !44

193:                                              ; preds = %191, %174
  %194 = icmp eq i32 %31, 0
  br i1 %194, label %275, label %195

195:                                              ; preds = %193
  %196 = icmp ugt i32 %31, 256
  br i1 %196, label %207, label %197

197:                                              ; preds = %195
  %198 = getelementptr inbounds [18 x i8], ptr %3, i64 0, i64 3
  %199 = load i8, ptr %198, align 1, !tbaa !26
  %200 = zext i8 %199 to i32
  %201 = getelementptr inbounds [18 x i8], ptr %3, i64 0, i64 4
  %202 = load i8, ptr %201, align 4, !tbaa !26
  %203 = zext i8 %202 to i32
  %204 = shl nuw nsw i32 %203, 8
  %205 = or disjoint i32 %204, %200
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %211, label %207

207:                                              ; preds = %197, %195
  %208 = load ptr, ptr %0, align 8, !tbaa !22
  %209 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %208, i64 0, i32 5
  store i32 1032, ptr %209, align 8, !tbaa !23
  %210 = load ptr, ptr %208, align 8, !tbaa !25
  tail call void %210(ptr noundef nonnull %0) #5
  br label %211

211:                                              ; preds = %207, %197
  %212 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %213 = load ptr, ptr %212, align 8, !tbaa !5
  %214 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %213, i64 0, i32 2
  %215 = load ptr, ptr %214, align 8, !tbaa !41
  %216 = tail call ptr %215(ptr noundef %0, i32 noundef 1, i32 noundef %31, i32 noundef 3) #5
  %217 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 2
  store ptr %216, ptr %217, align 8, !tbaa !46
  %218 = getelementptr inbounds [18 x i8], ptr %3, i64 0, i64 7
  %219 = load i8, ptr %218, align 1, !tbaa !26
  %220 = icmp eq i8 %219, 24
  br i1 %220, label %227, label %221

221:                                              ; preds = %211
  %222 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 1
  %223 = load ptr, ptr %222, align 8, !tbaa !16
  %224 = load ptr, ptr %223, align 8, !tbaa !22
  %225 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %224, i64 0, i32 5
  store i32 1032, ptr %225, align 8, !tbaa !23
  %226 = load ptr, ptr %224, align 8, !tbaa !25
  tail call void %226(ptr noundef nonnull %223) #5
  br label %227

227:                                              ; preds = %211, %221
  %228 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 1
  %229 = zext nneg i32 %31 to i64
  br label %230

230:                                              ; preds = %268, %227
  %231 = phi i64 [ 0, %227 ], [ %273, %268 ]
  %232 = load ptr, ptr %4, align 8, !tbaa !21
  %233 = tail call i32 @getc(ptr noundef %232)
  %234 = icmp eq i32 %233, -1
  br i1 %234, label %235, label %240

235:                                              ; preds = %230
  %236 = load ptr, ptr %228, align 8, !tbaa !16
  %237 = load ptr, ptr %236, align 8, !tbaa !22
  %238 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %237, i64 0, i32 5
  store i32 42, ptr %238, align 8, !tbaa !23
  %239 = load ptr, ptr %237, align 8, !tbaa !25
  tail call void %239(ptr noundef nonnull %236) #5
  br label %240

240:                                              ; preds = %235, %230
  %241 = trunc i32 %233 to i8
  %242 = load ptr, ptr %217, align 8, !tbaa !46
  %243 = getelementptr inbounds ptr, ptr %242, i64 2
  %244 = load ptr, ptr %243, align 8, !tbaa !47
  %245 = getelementptr inbounds i8, ptr %244, i64 %231
  store i8 %241, ptr %245, align 1, !tbaa !26
  %246 = load ptr, ptr %4, align 8, !tbaa !21
  %247 = tail call i32 @getc(ptr noundef %246)
  %248 = icmp eq i32 %247, -1
  br i1 %248, label %249, label %254

249:                                              ; preds = %240
  %250 = load ptr, ptr %228, align 8, !tbaa !16
  %251 = load ptr, ptr %250, align 8, !tbaa !22
  %252 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %251, i64 0, i32 5
  store i32 42, ptr %252, align 8, !tbaa !23
  %253 = load ptr, ptr %251, align 8, !tbaa !25
  tail call void %253(ptr noundef nonnull %250) #5
  br label %254

254:                                              ; preds = %249, %240
  %255 = trunc i32 %247 to i8
  %256 = load ptr, ptr %217, align 8, !tbaa !46
  %257 = getelementptr inbounds ptr, ptr %256, i64 1
  %258 = load ptr, ptr %257, align 8, !tbaa !47
  %259 = getelementptr inbounds i8, ptr %258, i64 %231
  store i8 %255, ptr %259, align 1, !tbaa !26
  %260 = load ptr, ptr %4, align 8, !tbaa !21
  %261 = tail call i32 @getc(ptr noundef %260)
  %262 = icmp eq i32 %261, -1
  br i1 %262, label %263, label %268

263:                                              ; preds = %254
  %264 = load ptr, ptr %228, align 8, !tbaa !16
  %265 = load ptr, ptr %264, align 8, !tbaa !22
  %266 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %265, i64 0, i32 5
  store i32 42, ptr %266, align 8, !tbaa !23
  %267 = load ptr, ptr %265, align 8, !tbaa !25
  tail call void %267(ptr noundef nonnull %264) #5
  br label %268

268:                                              ; preds = %263, %254
  %269 = trunc i32 %261 to i8
  %270 = load ptr, ptr %217, align 8, !tbaa !46
  %271 = load ptr, ptr %270, align 8, !tbaa !47
  %272 = getelementptr inbounds i8, ptr %271, i64 %231
  store i8 %269, ptr %272, align 1, !tbaa !26
  %273 = add nuw nsw i64 %231, 1
  %274 = icmp eq i64 %273, %229
  br i1 %274, label %283, label %230, !llvm.loop !48

275:                                              ; preds = %193
  %276 = icmp eq i8 %20, 0
  br i1 %276, label %281, label %277

277:                                              ; preds = %275
  %278 = load ptr, ptr %0, align 8, !tbaa !22
  %279 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %278, i64 0, i32 5
  store i32 1033, ptr %279, align 8, !tbaa !23
  %280 = load ptr, ptr %278, align 8, !tbaa !25
  tail call void %280(ptr noundef nonnull %0) #5
  br label %281

281:                                              ; preds = %277, %275
  %282 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 2
  store ptr null, ptr %282, align 8, !tbaa !46
  br label %283

283:                                              ; preds = %268, %281
  %284 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 8
  store i32 %144, ptr %284, align 8, !tbaa !49
  %285 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 11
  store i32 8, ptr %285, align 8, !tbaa !50
  %286 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  store i32 %39, ptr %286, align 8, !tbaa !51
  %287 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 7
  store i32 %47, ptr %287, align 4, !tbaa !52
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %3) #5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @finish_input_tga(ptr nocapture readnone %0, ptr nocapture readnone %1) #2 {
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @read_rle_pixel(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !21
  %4 = getelementptr inbounds %struct._tga_source_struct, ptr %0, i64 0, i32 9
  %5 = load i32, ptr %4, align 4, !tbaa !29
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = add nsw i32 %5, -1
  store i32 %8, ptr %4, align 4, !tbaa !29
  br label %43

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct._tga_source_struct, ptr %0, i64 0, i32 8
  %11 = load i32, ptr %10, align 8, !tbaa !30
  %12 = add nsw i32 %11, -1
  store i32 %12, ptr %10, align 8, !tbaa !30
  %13 = icmp slt i32 %11, 1
  br i1 %13, label %14, label %30

14:                                               ; preds = %9
  %15 = tail call i32 @getc(ptr noundef %3)
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct._tga_source_struct, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !16
  %20 = load ptr, ptr %19, align 8, !tbaa !22
  %21 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %20, i64 0, i32 5
  store i32 42, ptr %21, align 8, !tbaa !23
  %22 = load ptr, ptr %20, align 8, !tbaa !25
  tail call void %22(ptr noundef nonnull %19) #5
  br label %23

23:                                               ; preds = %14, %17
  %24 = and i32 %15, 128
  %25 = icmp eq i32 %24, 0
  %26 = and i32 %15, 127
  br i1 %25, label %28, label %27

27:                                               ; preds = %23
  store i32 %26, ptr %4, align 4, !tbaa !29
  br label %28

28:                                               ; preds = %23, %27
  %29 = phi i32 [ 0, %27 ], [ %26, %23 ]
  store i32 %29, ptr %10, align 8, !tbaa !30
  br label %30

30:                                               ; preds = %28, %9
  %31 = getelementptr inbounds %struct._tga_source_struct, ptr %0, i64 0, i32 7
  %32 = load i32, ptr %31, align 4, !tbaa !27
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %30, %34
  %35 = phi i64 [ %39, %34 ], [ 0, %30 ]
  %36 = tail call i32 @getc(ptr noundef %3)
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds %struct._tga_source_struct, ptr %0, i64 0, i32 6, i64 %35
  store i8 %37, ptr %38, align 1, !tbaa !26
  %39 = add nuw nsw i64 %35, 1
  %40 = load i32, ptr %31, align 4, !tbaa !27
  %41 = sext i32 %40 to i64
  %42 = icmp slt i64 %39, %41
  br i1 %42, label %34, label %43, !llvm.loop !53

43:                                               ; preds = %34, %30, %7
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @read_non_rle_pixel(ptr nocapture noundef %0) #4 {
  %2 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !21
  %4 = getelementptr inbounds %struct._tga_source_struct, ptr %0, i64 0, i32 7
  %5 = load i32, ptr %4, align 4, !tbaa !27
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %1, %7
  %8 = phi i64 [ %12, %7 ], [ 0, %1 ]
  %9 = tail call i32 @getc(ptr noundef %3)
  %10 = trunc i32 %9 to i8
  %11 = getelementptr inbounds %struct._tga_source_struct, ptr %0, i64 0, i32 6, i64 %8
  store i8 %10, ptr %11, align 1, !tbaa !26
  %12 = add nuw nsw i64 %8, 1
  %13 = load i32, ptr %4, align 4, !tbaa !27
  %14 = sext i32 %13 to i64
  %15 = icmp slt i64 %12, %14
  br i1 %15, label %7, label %16, !llvm.loop !54

16:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @get_8bit_row(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 8, !tbaa !51
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %36, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !42
  %11 = load ptr, ptr %10, align 8, !tbaa !47
  %12 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 5
  %13 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 6
  %14 = getelementptr inbounds ptr, ptr %4, i64 1
  %15 = getelementptr inbounds ptr, ptr %4, i64 2
  br label %16

16:                                               ; preds = %8, %16
  %17 = phi ptr [ %11, %8 ], [ %33, %16 ]
  %18 = phi i32 [ %6, %8 ], [ %34, %16 ]
  %19 = load ptr, ptr %12, align 8, !tbaa !28
  tail call void %19(ptr noundef %1) #5
  %20 = load i8, ptr %13, align 8, !tbaa !26
  %21 = load ptr, ptr %4, align 8, !tbaa !47
  %22 = zext i8 %20 to i64
  %23 = getelementptr inbounds i8, ptr %21, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !26
  %25 = getelementptr inbounds i8, ptr %17, i64 1
  store i8 %24, ptr %17, align 1, !tbaa !26
  %26 = load ptr, ptr %14, align 8, !tbaa !47
  %27 = getelementptr inbounds i8, ptr %26, i64 %22
  %28 = load i8, ptr %27, align 1, !tbaa !26
  %29 = getelementptr inbounds i8, ptr %17, i64 2
  store i8 %28, ptr %25, align 1, !tbaa !26
  %30 = load ptr, ptr %15, align 8, !tbaa !47
  %31 = getelementptr inbounds i8, ptr %30, i64 %22
  %32 = load i8, ptr %31, align 1, !tbaa !26
  %33 = getelementptr inbounds i8, ptr %17, i64 3
  store i8 %32, ptr %29, align 1, !tbaa !26
  %34 = add i32 %18, -1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %16, !llvm.loop !55

36:                                               ; preds = %16, %2
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @get_16bit_row(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 8, !tbaa !51
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %42, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !42
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 5
  %11 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 6
  %12 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 6, i64 1
  br label %13

13:                                               ; preds = %6, %13
  %14 = phi i32 [ %4, %6 ], [ %40, %13 ]
  %15 = phi ptr [ %9, %6 ], [ %39, %13 ]
  %16 = load ptr, ptr %10, align 8, !tbaa !28
  tail call void %16(ptr noundef %1) #5
  %17 = load i8, ptr %11, align 8, !tbaa !26
  %18 = zext i8 %17 to i32
  %19 = load i8, ptr %12, align 1, !tbaa !26
  %20 = zext i8 %19 to i32
  %21 = shl nuw nsw i32 %20, 8
  %22 = or disjoint i32 %21, %18
  %23 = and i32 %18, 31
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds [32 x i8], ptr @c5to8bits, i64 0, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !26
  %27 = getelementptr inbounds i8, ptr %15, i64 2
  store i8 %26, ptr %27, align 1, !tbaa !26
  %28 = lshr i32 %22, 5
  %29 = and i32 %28, 31
  %30 = zext nneg i32 %29 to i64
  %31 = getelementptr inbounds [32 x i8], ptr @c5to8bits, i64 0, i64 %30
  %32 = load i8, ptr %31, align 1, !tbaa !26
  %33 = getelementptr inbounds i8, ptr %15, i64 1
  store i8 %32, ptr %33, align 1, !tbaa !26
  %34 = lshr i32 %20, 2
  %35 = and i32 %34, 31
  %36 = zext nneg i32 %35 to i64
  %37 = getelementptr inbounds [32 x i8], ptr @c5to8bits, i64 0, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !26
  store i8 %38, ptr %15, align 1, !tbaa !26
  %39 = getelementptr inbounds i8, ptr %15, i64 3
  %40 = add i32 %14, -1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %13, !llvm.loop !56

42:                                               ; preds = %13, %2
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @get_24bit_row(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 8, !tbaa !51
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %26, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !42
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 5
  %11 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 6
  %12 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 6, i64 2
  %13 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 6, i64 1
  br label %14

14:                                               ; preds = %6, %14
  %15 = phi i32 [ %4, %6 ], [ %24, %14 ]
  %16 = phi ptr [ %9, %6 ], [ %23, %14 ]
  %17 = load ptr, ptr %10, align 8, !tbaa !28
  tail call void %17(ptr noundef %1) #5
  %18 = load i8, ptr %12, align 2, !tbaa !26
  %19 = getelementptr inbounds i8, ptr %16, i64 1
  store i8 %18, ptr %16, align 1, !tbaa !26
  %20 = load i8, ptr %13, align 1, !tbaa !26
  %21 = getelementptr inbounds i8, ptr %16, i64 2
  store i8 %20, ptr %19, align 1, !tbaa !26
  %22 = load i8, ptr %11, align 8, !tbaa !26
  %23 = getelementptr inbounds i8, ptr %16, i64 3
  store i8 %22, ptr %21, align 1, !tbaa !26
  %24 = add i32 %15, -1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %14, !llvm.loop !57

26:                                               ; preds = %14, %2
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @get_8bit_gray_row(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 8, !tbaa !51
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !42
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 5
  %11 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 6
  br label %12

12:                                               ; preds = %6, %12
  %13 = phi i32 [ %4, %6 ], [ %18, %12 ]
  %14 = phi ptr [ %9, %6 ], [ %17, %12 ]
  %15 = load ptr, ptr %10, align 8, !tbaa !28
  tail call void %15(ptr noundef %1) #5
  %16 = load i8, ptr %11, align 8, !tbaa !26
  %17 = getelementptr inbounds i8, ptr %14, i64 1
  store i8 %16, ptr %14, align 1, !tbaa !26
  %18 = add i32 %13, -1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %12, !llvm.loop !58

20:                                               ; preds = %12, %2
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @preload_image(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !36
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 4, !tbaa !52
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %35, label %8

8:                                                ; preds = %2
  %9 = icmp eq ptr %4, null
  %10 = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %4, i64 0, i32 1
  %11 = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %4, i64 0, i32 2
  %12 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %13 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 3
  %14 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 4
  %15 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 10
  br label %16

16:                                               ; preds = %8, %22
  %17 = phi i64 [ 0, %8 ], [ %31, %22 ]
  %18 = phi i32 [ %6, %8 ], [ %32, %22 ]
  br i1 %9, label %22, label %19

19:                                               ; preds = %16
  store i64 %17, ptr %10, align 8, !tbaa !59
  %20 = zext i32 %18 to i64
  store i64 %20, ptr %11, align 8, !tbaa !60
  %21 = load ptr, ptr %4, align 8, !tbaa !61
  tail call void %21(ptr noundef %0) #5
  br label %22

22:                                               ; preds = %19, %16
  %23 = load ptr, ptr %12, align 8, !tbaa !5
  %24 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %23, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !62
  %26 = load ptr, ptr %13, align 8, !tbaa !35
  %27 = trunc i64 %17 to i32
  %28 = tail call ptr %25(ptr noundef %0, ptr noundef %26, i32 noundef %27, i32 noundef 1, i32 noundef 1) #5
  store ptr %28, ptr %14, align 8, !tbaa !42
  %29 = load ptr, ptr %15, align 8, !tbaa !32
  %30 = tail call i32 %29(ptr noundef %0, ptr noundef %1) #5
  %31 = add nuw nsw i64 %17, 1
  %32 = load i32, ptr %5, align 4, !tbaa !52
  %33 = zext i32 %32 to i64
  %34 = icmp ult i64 %31, %33
  br i1 %34, label %16, label %35, !llvm.loop !63

35:                                               ; preds = %22, %2
  %36 = phi i32 [ %6, %2 ], [ %32, %22 ]
  %37 = icmp eq ptr %4, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.cdjpeg_progress_mgr, ptr %4, i64 0, i32 1
  %40 = load i32, ptr %39, align 8, !tbaa !64
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %39, align 8, !tbaa !64
  br label %42

42:                                               ; preds = %38, %35
  %43 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 1
  store ptr @get_memory_row, ptr %43, align 8, !tbaa !43
  %44 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 4
  store i32 0, ptr %44, align 8, !tbaa !65
  %45 = add i32 %36, -1
  %46 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !5
  %48 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %47, i64 0, i32 7
  %49 = load ptr, ptr %48, align 8, !tbaa !62
  %50 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !35
  %52 = tail call ptr %49(ptr noundef %0, ptr noundef %51, i32 noundef %45, i32 noundef 1, i32 noundef 0) #5
  %53 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 4
  store ptr %52, ptr %53, align 8, !tbaa !42
  %54 = load i32, ptr %44, align 8, !tbaa !65
  %55 = add i32 %54, 1
  store i32 %55, ptr %44, align 8, !tbaa !65
  ret i32 1
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @get_memory_row(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 4, !tbaa !52
  %5 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !65
  %7 = xor i32 %6, -1
  %8 = add i32 %4, %7
  %9 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %10, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !62
  %13 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  %15 = tail call ptr %12(ptr noundef %0, ptr noundef %14, i32 noundef %8, i32 noundef 1, i32 noundef 0) #5
  %16 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 4
  store ptr %15, ptr %16, align 8, !tbaa !42
  %17 = load i32, ptr %5, align 8, !tbaa !65
  %18 = add i32 %17, 1
  store i32 %18, ptr %5, align 8, !tbaa !65
  ret i32 1
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 8}
!6 = !{!"jpeg_compress_struct", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !7, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !11, i64 56, !10, i64 64, !10, i64 68, !10, i64 72, !7, i64 80, !8, i64 88, !8, i64 120, !8, i64 152, !8, i64 184, !8, i64 200, !8, i64 216, !10, i64 232, !7, i64 240, !10, i64 248, !10, i64 252, !10, i64 256, !10, i64 260, !10, i64 264, !10, i64 268, !10, i64 272, !10, i64 276, !10, i64 280, !8, i64 284, !12, i64 286, !12, i64 288, !10, i64 292, !10, i64 296, !10, i64 300, !10, i64 304, !10, i64 308, !10, i64 312, !10, i64 316, !8, i64 320, !10, i64 352, !10, i64 356, !10, i64 360, !8, i64 364, !10, i64 404, !10, i64 408, !10, i64 412, !10, i64 416, !7, i64 424, !7, i64 432, !7, i64 440, !7, i64 448, !7, i64 456, !7, i64 464, !7, i64 472, !7, i64 480, !7, i64 488}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"double", !8, i64 0}
!12 = !{!"short", !8, i64 0}
!13 = !{!14, !7, i64 0}
!14 = !{!"jpeg_memory_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !15, i64 88}
!15 = !{!"long", !8, i64 0}
!16 = !{!17, !7, i64 48}
!17 = !{!"_tga_source_struct", !18, i64 0, !7, i64 48, !7, i64 56, !7, i64 64, !10, i64 72, !7, i64 80, !8, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !7, i64 104}
!18 = !{!"cjpeg_source_struct", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40}
!19 = !{!17, !7, i64 0}
!20 = !{!17, !7, i64 16}
!21 = !{!17, !7, i64 24}
!22 = !{!6, !7, i64 0}
!23 = !{!24, !10, i64 40}
!24 = !{!"jpeg_error_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !8, i64 44, !10, i64 124, !15, i64 128, !7, i64 136, !10, i64 144, !7, i64 152, !10, i64 160, !10, i64 164}
!25 = !{!24, !7, i64 0}
!26 = !{!8, !8, i64 0}
!27 = !{!17, !10, i64 92}
!28 = !{!17, !7, i64 80}
!29 = !{!17, !10, i64 100}
!30 = !{!17, !10, i64 96}
!31 = !{!6, !10, i64 52}
!32 = !{!17, !7, i64 104}
!33 = !{!24, !7, i64 8}
!34 = !{!14, !7, i64 32}
!35 = !{!17, !7, i64 64}
!36 = !{!6, !7, i64 16}
!37 = !{!38, !10, i64 36}
!38 = !{!"cdjpeg_progress_mgr", !39, i64 0, !10, i64 32, !10, i64 36, !10, i64 40}
!39 = !{!"jpeg_progress_mgr", !7, i64 0, !15, i64 8, !15, i64 16, !10, i64 24, !10, i64 28}
!40 = !{!17, !10, i64 40}
!41 = !{!14, !7, i64 16}
!42 = !{!17, !7, i64 32}
!43 = !{!17, !7, i64 8}
!44 = distinct !{!44, !45}
!45 = !{!"llvm.loop.unroll.disable"}
!46 = !{!17, !7, i64 56}
!47 = !{!7, !7, i64 0}
!48 = distinct !{!48, !45}
!49 = !{!6, !10, i64 48}
!50 = !{!6, !10, i64 64}
!51 = !{!6, !10, i64 40}
!52 = !{!6, !10, i64 44}
!53 = distinct !{!53, !45}
!54 = distinct !{!54, !45}
!55 = distinct !{!55, !45}
!56 = distinct !{!56, !45}
!57 = distinct !{!57, !45}
!58 = distinct !{!58, !45}
!59 = !{!38, !15, i64 8}
!60 = !{!38, !15, i64 16}
!61 = !{!38, !7, i64 0}
!62 = !{!14, !7, i64 56}
!63 = distinct !{!63, !45}
!64 = !{!38, !10, i64 32}
!65 = !{!17, !10, i64 72}
