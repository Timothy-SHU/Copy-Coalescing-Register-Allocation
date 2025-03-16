; ModuleID = 'src/tif_dirwrite.c'
source_filename = "src/tif_dirwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.tiff = type { ptr, i32, i32, i32, i32, i32, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i32, i16, i32, i32, i32, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i32 }
%struct.TIFFFieldInfo = type { i32, i16, i16, i32, i16, i8, i8, ptr }
%struct.TIFFDirEntry = type { i16, i16, i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"Error post-encoding before directory write\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Error flushing data before directory write\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Cannot write directory, out of space\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Error writing directory count\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Error writing directory contents\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Error writing directory link\00", align 1
@tiffDataWidth = external local_unnamed_addr constant [0 x i32], align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"Error writing data for field \22%s\22\00", align 1
@.str.7 = private unnamed_addr constant [65 x i8] c"\22%s\22: Information lost writing value (%g) as (unsigned) RATIONAL\00", align 1
@TIFFLinkDirectory.module = internal constant [18 x i8] c"TIFFLinkDirectory\00", align 16
@.str.8 = private unnamed_addr constant [40 x i8] c"%s: Error writing SubIFD directory link\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Error writing TIFF header\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"Error fetching directory count\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"Error fetching directory link\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @TIFFWriteDirectory(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [2 x i16], align 2
  %3 = alloca [80 x i8], align 16
  %4 = alloca [10 x double], align 16
  %5 = alloca double, align 8
  %6 = alloca [10 x i16], align 16
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  %13 = alloca [3 x i64], align 16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #4
  %14 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !5
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %1001, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !16
  %20 = and i32 %19, 4096
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %17
  %23 = and i32 %19, -4097
  store i32 %23, ptr %18, align 8, !tbaa !16
  %24 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 25
  %25 = load ptr, ptr %24, align 8, !tbaa !17
  %26 = tail call i32 %25(ptr noundef %0) #4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load ptr, ptr %0, align 8, !tbaa !18
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %29, ptr noundef nonnull @.str) #4
  br label %1001

30:                                               ; preds = %22, %17
  %31 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 32
  %32 = load ptr, ptr %31, align 8, !tbaa !19
  tail call void %32(ptr noundef %0) #4
  %33 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 43
  %34 = load i32, ptr %33, align 8, !tbaa !20
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = tail call i32 @TIFFFlushData1(ptr noundef %0) #4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load ptr, ptr %0, align 8, !tbaa !18
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %40, ptr noundef nonnull @.str.1) #4
  br label %1001

41:                                               ; preds = %36, %30
  %42 = load i32, ptr %18, align 8, !tbaa !16
  %43 = and i32 %42, 512
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 40
  %47 = load ptr, ptr %46, align 8, !tbaa !21
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  tail call void @_TIFFfree(ptr noundef nonnull %47) #4
  store ptr null, ptr %46, align 8, !tbaa !21
  store i32 0, ptr %33, align 8, !tbaa !20
  br label %50

50:                                               ; preds = %49, %45, %41
  %51 = load i32, ptr %18, align 8, !tbaa !16
  %52 = and i32 %51, -81
  store i32 %52, ptr %18, align 8, !tbaa !16
  %53 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6
  br label %54

54:                                               ; preds = %50, %54
  %55 = phi i64 [ 0, %50 ], [ %68, %54 ]
  %56 = phi i32 [ 0, %50 ], [ %67, %54 ]
  %57 = lshr i64 %55, 5
  %58 = getelementptr inbounds [3 x i64], ptr %53, i64 0, i64 %57
  %59 = load i64, ptr %58, align 8, !tbaa !22
  %60 = and i64 %55, 31
  %61 = shl nuw nsw i64 1, %60
  %62 = and i64 %59, %61
  %63 = icmp eq i64 %62, 0
  %64 = icmp ult i64 %55, 5
  %65 = select i1 %64, i32 2, i32 1
  %66 = select i1 %63, i32 0, i32 %65
  %67 = add i32 %66, %56
  %68 = add nuw nsw i64 %55, 1
  %69 = icmp eq i64 %68, 96
  br i1 %69, label %70, label %54, !llvm.loop !24

70:                                               ; preds = %54
  %71 = mul i32 %67, 12
  %72 = tail call ptr @_TIFFmalloc(i32 noundef %71) #4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load ptr, ptr %0, align 8, !tbaa !18
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %75, ptr noundef nonnull @.str.2) #4
  br label %1001

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 4
  %78 = load i32, ptr %77, align 4, !tbaa !26
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %187

80:                                               ; preds = %76
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #4
  %81 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 51
  %82 = load ptr, ptr %81, align 8, !tbaa !27
  %83 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 48
  %84 = load ptr, ptr %83, align 8, !tbaa !28
  %85 = tail call i32 %82(ptr noundef %84, i32 noundef 0, i32 noundef 2) #4
  %86 = add nsw i32 %85, 1
  %87 = and i32 %86, -2
  store i32 %87, ptr %77, align 4, !tbaa !26
  store i32 %87, ptr %9, align 4, !tbaa !29
  %88 = load i32, ptr %18, align 8, !tbaa !16
  %89 = and i32 %88, 128
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %80
  call void @TIFFSwabLong(ptr noundef nonnull %9) #4
  br label %92

92:                                               ; preds = %91, %80
  %93 = load i32, ptr %18, align 8, !tbaa !16
  %94 = and i32 %93, 8192
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %120, label %96

96:                                               ; preds = %92
  %97 = load ptr, ptr %81, align 8, !tbaa !27
  %98 = load ptr, ptr %83, align 8, !tbaa !28
  %99 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 17
  %100 = load i32, ptr %99, align 8, !tbaa !30
  %101 = call i32 %97(ptr noundef %98, i32 noundef %100, i32 noundef 0) #4
  %102 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 50
  %103 = load ptr, ptr %102, align 8, !tbaa !31
  %104 = load ptr, ptr %83, align 8, !tbaa !28
  %105 = call i32 %103(ptr noundef %104, ptr noundef nonnull %9, i32 noundef 4) #4
  %106 = icmp eq i32 %105, 4
  br i1 %106, label %109, label %107

107:                                              ; preds = %96
  %108 = load ptr, ptr %0, align 8, !tbaa !18
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @TIFFLinkDirectory.module, ptr noundef nonnull @.str.8, ptr noundef %108) #4
  br label %999

109:                                              ; preds = %96
  %110 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 16
  %111 = load i16, ptr %110, align 4, !tbaa !32
  %112 = add i16 %111, -1
  store i16 %112, ptr %110, align 4, !tbaa !32
  %113 = icmp eq i16 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %109
  %115 = load i32, ptr %99, align 8, !tbaa !30
  %116 = add i32 %115, 4
  store i32 %116, ptr %99, align 8, !tbaa !30
  br label %186

117:                                              ; preds = %109
  %118 = load i32, ptr %18, align 8, !tbaa !16
  %119 = and i32 %118, -8193
  store i32 %119, ptr %18, align 8, !tbaa !16
  br label %186

120:                                              ; preds = %92
  %121 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 7, i32 2
  %122 = load i32, ptr %121, align 4, !tbaa !33
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %136

124:                                              ; preds = %120
  %125 = load i32, ptr %77, align 4, !tbaa !26
  store i32 %125, ptr %121, align 4, !tbaa !33
  %126 = load ptr, ptr %81, align 8, !tbaa !27
  %127 = load ptr, ptr %83, align 8, !tbaa !28
  %128 = call i32 %126(ptr noundef %127, i32 noundef 4, i32 noundef 0) #4
  %129 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 50
  %130 = load ptr, ptr %129, align 8, !tbaa !31
  %131 = load ptr, ptr %83, align 8, !tbaa !28
  %132 = call i32 %130(ptr noundef %131, ptr noundef nonnull %9, i32 noundef 4) #4
  %133 = icmp eq i32 %132, 4
  br i1 %133, label %186, label %134

134:                                              ; preds = %124
  %135 = load ptr, ptr %0, align 8, !tbaa !18
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %135, ptr noundef nonnull @.str.9) #4
  br label %999

136:                                              ; preds = %120
  store i32 %122, ptr %8, align 4, !tbaa !29
  %137 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 49
  br label %138

138:                                              ; preds = %171, %136
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #4
  %139 = load ptr, ptr %81, align 8, !tbaa !27
  %140 = load ptr, ptr %83, align 8, !tbaa !28
  %141 = load i32, ptr %8, align 4, !tbaa !29
  %142 = call i32 %139(ptr noundef %140, i32 noundef %141, i32 noundef 0) #4
  %143 = load i32, ptr %8, align 4, !tbaa !29
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %184

145:                                              ; preds = %138
  %146 = load ptr, ptr %137, align 8, !tbaa !34
  %147 = load ptr, ptr %83, align 8, !tbaa !28
  %148 = call i32 %146(ptr noundef %147, ptr noundef nonnull %10, i32 noundef 2) #4
  %149 = icmp eq i32 %148, 2
  br i1 %149, label %150, label %184

150:                                              ; preds = %145
  %151 = load i32, ptr %18, align 8, !tbaa !16
  %152 = and i32 %151, 128
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %150
  call void @TIFFSwabShort(ptr noundef nonnull %10) #4
  br label %155

155:                                              ; preds = %154, %150
  %156 = load ptr, ptr %81, align 8, !tbaa !27
  %157 = load ptr, ptr %83, align 8, !tbaa !28
  %158 = load i16, ptr %10, align 2, !tbaa !35
  %159 = zext i16 %158 to i32
  %160 = mul nuw nsw i32 %159, 12
  %161 = call i32 %156(ptr noundef %157, i32 noundef %160, i32 noundef 1) #4
  %162 = load ptr, ptr %137, align 8, !tbaa !34
  %163 = load ptr, ptr %83, align 8, !tbaa !28
  %164 = call i32 %162(ptr noundef %163, ptr noundef nonnull %8, i32 noundef 4) #4
  %165 = icmp eq i32 %164, 4
  br i1 %165, label %166, label %184

166:                                              ; preds = %155
  %167 = load i32, ptr %18, align 8, !tbaa !16
  %168 = and i32 %167, 128
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %171, label %170

170:                                              ; preds = %166
  call void @TIFFSwabLong(ptr noundef nonnull %8) #4
  br label %171

171:                                              ; preds = %170, %166
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #4
  %172 = load i32, ptr %8, align 4, !tbaa !29
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %138, !llvm.loop !36

174:                                              ; preds = %171
  %175 = load ptr, ptr %81, align 8, !tbaa !27
  %176 = load ptr, ptr %83, align 8, !tbaa !28
  %177 = call i32 %175(ptr noundef %176, i32 noundef -4, i32 noundef 1) #4
  %178 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 50
  %179 = load ptr, ptr %178, align 8, !tbaa !31
  %180 = load ptr, ptr %83, align 8, !tbaa !28
  %181 = call i32 %179(ptr noundef %180, ptr noundef nonnull %9, i32 noundef 4) #4
  %182 = icmp eq i32 %181, 4
  br i1 %182, label %186, label %183

183:                                              ; preds = %174
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @TIFFLinkDirectory.module, ptr noundef nonnull @.str.5) #4
  br label %999

184:                                              ; preds = %155, %138, %145
  %185 = phi ptr [ @.str.10, %145 ], [ @.str.10, %138 ], [ @.str.11, %155 ]
  call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @TIFFLinkDirectory.module, ptr noundef nonnull %185) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #4
  br label %999

186:                                              ; preds = %114, %117, %124, %174
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #4
  br label %187

187:                                              ; preds = %186, %76
  %188 = load i32, ptr %77, align 4, !tbaa !26
  %189 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 15
  %190 = and i32 %188, 1
  %191 = or disjoint i32 %190, 4
  %192 = or disjoint i32 %71, 2
  %193 = add i32 %192, %188
  %194 = add i32 %193, %191
  store i32 %194, ptr %189, align 8, !tbaa !37
  %195 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 51
  %196 = load ptr, ptr %195, align 8, !tbaa !27
  %197 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 48
  %198 = load ptr, ptr %197, align 8, !tbaa !28
  %199 = call i32 %196(ptr noundef %198, i32 noundef %194, i32 noundef 0) #4
  %200 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 12
  %201 = load i16, ptr %200, align 4, !tbaa !38
  %202 = add i16 %201, 1
  store i16 %202, ptr %200, align 4, !tbaa !38
  call void @_TIFFmemcpy(ptr noundef nonnull %13, ptr noundef nonnull %53, i32 noundef 24) #4
  %203 = load i64, ptr %13, align 16, !tbaa !22
  %204 = and i64 %203, 2147483648
  %205 = icmp eq i64 %204, 0
  br i1 %205, label %214, label %206

206:                                              ; preds = %187
  %207 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 30
  %208 = load i16, ptr %207, align 4, !tbaa !39
  %209 = icmp eq i16 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %206
  %211 = and i64 %203, -2147483649
  store i64 %211, ptr %13, align 16, !tbaa !22
  %212 = add i32 %67, -1
  %213 = add i32 %71, -12
  br label %214

214:                                              ; preds = %210, %206, %187
  %215 = phi i32 [ %71, %206 ], [ %213, %210 ], [ %71, %187 ]
  %216 = phi i32 [ %67, %206 ], [ %212, %210 ], [ %67, %187 ]
  %217 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 56
  %218 = load i32, ptr %217, align 8, !tbaa !40
  %219 = icmp sgt i32 %218, 0
  br i1 %219, label %220, label %946

220:                                              ; preds = %214
  %221 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 55
  %222 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 16
  %223 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 17
  %224 = ptrtoint ptr %72 to i64
  %225 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 17
  %226 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 8
  %227 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 54
  %228 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 15
  %229 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 30
  %230 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 54, i64 2
  %231 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 54, i64 1
  %232 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 58
  %233 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 59
  %234 = getelementptr inbounds [2 x i16], ptr %2, i64 0, i64 1
  %235 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 7
  %236 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 15
  %237 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 7
  %238 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 7
  %239 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 15
  %240 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 7
  %241 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 21
  %242 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 22
  %243 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 25
  %244 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 26
  %245 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 4
  %246 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 7
  %247 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 10
  %248 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 10
  %249 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 9
  %250 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 5
  %251 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 7
  %252 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 10
  %253 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 10
  %254 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 9
  %255 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 1
  %256 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 7
  %257 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 10
  %258 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 10
  %259 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 9
  %260 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 2
  %261 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 7
  %262 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 10
  %263 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 10
  %264 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 9
  %265 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 28
  %266 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 8
  %267 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 16
  %268 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 7
  %269 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 10
  %270 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 10
  %271 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 9
  %272 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 43
  %273 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 45
  %274 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 43
  %275 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 44
  %276 = zext nneg i32 %218 to i64
  br label %277

277:                                              ; preds = %220, %943
  %278 = phi i64 [ 0, %220 ], [ %944, %943 ]
  %279 = phi ptr [ %72, %220 ], [ %941, %943 ]
  %280 = load ptr, ptr %221, align 8, !tbaa !41
  %281 = getelementptr inbounds ptr, ptr %280, i64 %278
  %282 = load ptr, ptr %281, align 8, !tbaa !42
  %283 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %282, i64 0, i32 4
  %284 = load i16, ptr %283, align 4, !tbaa !43
  %285 = zext i16 %284 to i32
  %286 = lshr i32 %285, 5
  %287 = zext nneg i32 %286 to i64
  %288 = getelementptr inbounds [3 x i64], ptr %13, i64 0, i64 %287
  %289 = load i64, ptr %288, align 8, !tbaa !22
  %290 = and i32 %285, 31
  %291 = zext nneg i32 %290 to i64
  %292 = shl nuw nsw i64 1, %291
  %293 = and i64 %292, %289
  %294 = icmp eq i64 %293, 0
  br i1 %294, label %940, label %295

295:                                              ; preds = %277
  switch i16 %284, label %923 [
    i16 25, label %296
    i16 24, label %318
    i16 17, label %340
    i16 26, label %370
    i16 1, label %391
    i16 2, label %452
    i16 4, label %513
    i16 3, label %520
    i16 6, label %527
    i16 18, label %527
    i16 19, label %527
    i16 32, label %527
    i16 33, label %583
    i16 34, label %583
    i16 23, label %822
    i16 37, label %822
    i16 39, label %822
    i16 47, label %822
    i16 46, label %845
    i16 44, label %856
    i16 49, label %900
  ]

296:                                              ; preds = %295
  %297 = load i32, ptr %18, align 8, !tbaa !16
  %298 = and i32 %297, 1024
  %299 = icmp eq i32 %298, 0
  %300 = select i1 %299, i32 273, i32 324
  %301 = load i32, ptr %282, align 8, !tbaa !45
  %302 = icmp eq i32 %300, %301
  br i1 %302, label %303, label %940

303:                                              ; preds = %296
  %304 = load i32, ptr %274, align 4, !tbaa !46
  %305 = load ptr, ptr %275, align 8, !tbaa !47
  %306 = trunc i32 %300 to i16
  store i16 %306, ptr %279, align 4, !tbaa !48
  %307 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 0, i32 1
  store i16 4, ptr %307, align 2, !tbaa !50
  %308 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 0, i32 2
  store i32 %304, ptr %308, align 4, !tbaa !51
  %309 = icmp eq i32 %304, 1
  br i1 %309, label %310, label %313

310:                                              ; preds = %303
  %311 = load i32, ptr %305, align 4, !tbaa !29
  %312 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 0, i32 3
  store i32 %311, ptr %312, align 4, !tbaa !52
  br label %315

313:                                              ; preds = %303
  %314 = call fastcc i32 @TIFFWriteData(ptr noundef %0, ptr noundef nonnull %279, ptr noundef %305), !range !53
  br label %315

315:                                              ; preds = %310, %313
  %316 = phi i32 [ 1, %310 ], [ %314, %313 ]
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %940, label %926

318:                                              ; preds = %295
  %319 = load i32, ptr %18, align 8, !tbaa !16
  %320 = and i32 %319, 1024
  %321 = icmp eq i32 %320, 0
  %322 = select i1 %321, i32 279, i32 325
  %323 = load i32, ptr %282, align 8, !tbaa !45
  %324 = icmp eq i32 %322, %323
  br i1 %324, label %325, label %940

325:                                              ; preds = %318
  %326 = load i32, ptr %272, align 4, !tbaa !46
  %327 = load ptr, ptr %273, align 8, !tbaa !54
  %328 = trunc i32 %322 to i16
  store i16 %328, ptr %279, align 4, !tbaa !48
  %329 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 0, i32 1
  store i16 4, ptr %329, align 2, !tbaa !50
  %330 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 0, i32 2
  store i32 %326, ptr %330, align 4, !tbaa !51
  %331 = icmp eq i32 %326, 1
  br i1 %331, label %332, label %335

332:                                              ; preds = %325
  %333 = load i32, ptr %327, align 4, !tbaa !29
  %334 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 0, i32 3
  store i32 %333, ptr %334, align 4, !tbaa !52
  br label %337

335:                                              ; preds = %325
  %336 = call fastcc i32 @TIFFWriteData(ptr noundef %0, ptr noundef nonnull %279, ptr noundef %327), !range !53
  br label %337

337:                                              ; preds = %332, %335
  %338 = phi i32 [ 1, %332 ], [ %336, %335 ]
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %940, label %926

340:                                              ; preds = %295
  %341 = load i32, ptr %267, align 4, !tbaa !55
  store i16 278, ptr %279, align 4, !tbaa !48
  %342 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 0, i32 2
  store i32 1, ptr %342, align 4, !tbaa !51
  %343 = zext i32 %341 to i64
  %344 = icmp ugt i32 %341, 65535
  %345 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 0, i32 1
  br i1 %344, label %346, label %348

346:                                              ; preds = %340
  store i16 4, ptr %345, align 2, !tbaa !50
  %347 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 0, i32 3
  store i32 %341, ptr %347, align 4, !tbaa !52
  br label %926

348:                                              ; preds = %340
  store i16 3, ptr %345, align 2, !tbaa !50
  %349 = load i16, ptr %268, align 8, !tbaa !56
  %350 = icmp eq i16 %349, 19789
  br i1 %350, label %351, label %361

351:                                              ; preds = %348
  %352 = load ptr, ptr %270, align 8, !tbaa !57
  %353 = getelementptr inbounds i64, ptr %352, i64 3
  %354 = load i64, ptr %353, align 8, !tbaa !22
  %355 = and i64 %354, %343
  %356 = load ptr, ptr %271, align 8, !tbaa !58
  %357 = getelementptr inbounds i32, ptr %356, i64 3
  %358 = load i32, ptr %357, align 4, !tbaa !29
  %359 = zext nneg i32 %358 to i64
  %360 = shl i64 %355, %359
  br label %366

361:                                              ; preds = %348
  %362 = load ptr, ptr %269, align 8, !tbaa !57
  %363 = getelementptr inbounds i64, ptr %362, i64 3
  %364 = load i64, ptr %363, align 8, !tbaa !22
  %365 = and i64 %364, %343
  br label %366

366:                                              ; preds = %361, %351
  %367 = phi i64 [ %360, %351 ], [ %365, %361 ]
  %368 = trunc i64 %367 to i32
  %369 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 0, i32 3
  store i32 %368, ptr %369, align 4, !tbaa !52
  br label %926

370:                                              ; preds = %295
  store i16 320, ptr %279, align 4, !tbaa !48
  %371 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 0, i32 1
  store i16 3, ptr %371, align 2, !tbaa !50
  %372 = load i16, ptr %266, align 4, !tbaa !59
  %373 = zext nneg i16 %372 to i64
  %374 = shl nuw i64 1, %373
  %375 = trunc i64 %374 to i32
  %376 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 0, i32 2
  store i32 %375, ptr %376, align 4, !tbaa !51
  %377 = load i32, ptr %189, align 8, !tbaa !37
  br label %381

378:                                              ; preds = %381
  %379 = add nuw nsw i64 %382, 1
  %380 = icmp eq i64 %379, 3
  br i1 %380, label %387, label %381, !llvm.loop !60

381:                                              ; preds = %378, %370
  %382 = phi i64 [ 0, %370 ], [ %379, %378 ]
  %383 = getelementptr inbounds ptr, ptr %265, i64 %382
  %384 = load ptr, ptr %383, align 8, !tbaa !42
  %385 = call fastcc i32 @TIFFWriteData(ptr noundef %0, ptr noundef nonnull %279, ptr noundef %384), !range !53
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %940, label %378

387:                                              ; preds = %378
  %388 = load i32, ptr %376, align 4, !tbaa !51
  %389 = mul i32 %388, 3
  store i32 %389, ptr %376, align 4, !tbaa !51
  %390 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 0, i32 3
  store i32 %377, ptr %390, align 4, !tbaa !52
  br i1 %386, label %940, label %926

391:                                              ; preds = %295
  %392 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 1
  %393 = load i32, ptr %255, align 8, !tbaa !61
  store i16 256, ptr %279, align 4, !tbaa !48
  %394 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 0, i32 2
  store i32 1, ptr %394, align 4, !tbaa !51
  %395 = zext i32 %393 to i64
  %396 = icmp ugt i32 %393, 65535
  %397 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 0, i32 1
  br i1 %396, label %398, label %399

398:                                              ; preds = %391
  store i16 4, ptr %397, align 2, !tbaa !50
  br label %420

399:                                              ; preds = %391
  store i16 3, ptr %397, align 2, !tbaa !50
  %400 = load i16, ptr %256, align 8, !tbaa !56
  %401 = icmp eq i16 %400, 19789
  br i1 %401, label %402, label %412

402:                                              ; preds = %399
  %403 = load ptr, ptr %258, align 8, !tbaa !57
  %404 = getelementptr inbounds i64, ptr %403, i64 3
  %405 = load i64, ptr %404, align 8, !tbaa !22
  %406 = and i64 %405, %395
  %407 = load ptr, ptr %259, align 8, !tbaa !58
  %408 = getelementptr inbounds i32, ptr %407, i64 3
  %409 = load i32, ptr %408, align 4, !tbaa !29
  %410 = zext nneg i32 %409 to i64
  %411 = shl i64 %406, %410
  br label %417

412:                                              ; preds = %399
  %413 = load ptr, ptr %257, align 8, !tbaa !57
  %414 = getelementptr inbounds i64, ptr %413, i64 3
  %415 = load i64, ptr %414, align 8, !tbaa !22
  %416 = and i64 %415, %395
  br label %417

417:                                              ; preds = %412, %402
  %418 = phi i64 [ %411, %402 ], [ %416, %412 ]
  %419 = trunc i64 %418 to i32
  br label %420

420:                                              ; preds = %398, %417
  %421 = phi i32 [ %393, %398 ], [ %419, %417 ]
  %422 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 0, i32 3
  store i32 %421, ptr %422, align 4, !tbaa !52
  %423 = load i32, ptr %260, align 4, !tbaa !62
  store i16 257, ptr %392, align 4, !tbaa !48
  %424 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 1, i32 2
  store i32 1, ptr %424, align 4, !tbaa !51
  %425 = zext i32 %423 to i64
  %426 = icmp ugt i32 %423, 65535
  %427 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 1, i32 1
  br i1 %426, label %428, label %430

428:                                              ; preds = %420
  store i16 4, ptr %427, align 2, !tbaa !50
  %429 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 1, i32 3
  store i32 %423, ptr %429, align 4, !tbaa !52
  br label %926

430:                                              ; preds = %420
  store i16 3, ptr %427, align 2, !tbaa !50
  %431 = load i16, ptr %261, align 8, !tbaa !56
  %432 = icmp eq i16 %431, 19789
  br i1 %432, label %433, label %443

433:                                              ; preds = %430
  %434 = load ptr, ptr %263, align 8, !tbaa !57
  %435 = getelementptr inbounds i64, ptr %434, i64 3
  %436 = load i64, ptr %435, align 8, !tbaa !22
  %437 = and i64 %436, %425
  %438 = load ptr, ptr %264, align 8, !tbaa !58
  %439 = getelementptr inbounds i32, ptr %438, i64 3
  %440 = load i32, ptr %439, align 4, !tbaa !29
  %441 = zext nneg i32 %440 to i64
  %442 = shl i64 %437, %441
  br label %448

443:                                              ; preds = %430
  %444 = load ptr, ptr %262, align 8, !tbaa !57
  %445 = getelementptr inbounds i64, ptr %444, i64 3
  %446 = load i64, ptr %445, align 8, !tbaa !22
  %447 = and i64 %446, %425
  br label %448

448:                                              ; preds = %443, %433
  %449 = phi i64 [ %442, %433 ], [ %447, %443 ]
  %450 = trunc i64 %449 to i32
  %451 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 1, i32 3
  store i32 %450, ptr %451, align 4, !tbaa !52
  br label %926

452:                                              ; preds = %295
  %453 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 1
  %454 = load i32, ptr %245, align 4, !tbaa !63
  store i16 322, ptr %279, align 4, !tbaa !48
  %455 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 0, i32 2
  store i32 1, ptr %455, align 4, !tbaa !51
  %456 = zext i32 %454 to i64
  %457 = icmp ugt i32 %454, 65535
  %458 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 0, i32 1
  br i1 %457, label %459, label %460

459:                                              ; preds = %452
  store i16 4, ptr %458, align 2, !tbaa !50
  br label %481

460:                                              ; preds = %452
  store i16 3, ptr %458, align 2, !tbaa !50
  %461 = load i16, ptr %246, align 8, !tbaa !56
  %462 = icmp eq i16 %461, 19789
  br i1 %462, label %463, label %473

463:                                              ; preds = %460
  %464 = load ptr, ptr %248, align 8, !tbaa !57
  %465 = getelementptr inbounds i64, ptr %464, i64 3
  %466 = load i64, ptr %465, align 8, !tbaa !22
  %467 = and i64 %466, %456
  %468 = load ptr, ptr %249, align 8, !tbaa !58
  %469 = getelementptr inbounds i32, ptr %468, i64 3
  %470 = load i32, ptr %469, align 4, !tbaa !29
  %471 = zext nneg i32 %470 to i64
  %472 = shl i64 %467, %471
  br label %478

473:                                              ; preds = %460
  %474 = load ptr, ptr %247, align 8, !tbaa !57
  %475 = getelementptr inbounds i64, ptr %474, i64 3
  %476 = load i64, ptr %475, align 8, !tbaa !22
  %477 = and i64 %476, %456
  br label %478

478:                                              ; preds = %473, %463
  %479 = phi i64 [ %472, %463 ], [ %477, %473 ]
  %480 = trunc i64 %479 to i32
  br label %481

481:                                              ; preds = %459, %478
  %482 = phi i32 [ %454, %459 ], [ %480, %478 ]
  %483 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 0, i32 3
  store i32 %482, ptr %483, align 4, !tbaa !52
  %484 = load i32, ptr %250, align 8, !tbaa !64
  store i16 323, ptr %453, align 4, !tbaa !48
  %485 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 1, i32 2
  store i32 1, ptr %485, align 4, !tbaa !51
  %486 = zext i32 %484 to i64
  %487 = icmp ugt i32 %484, 65535
  %488 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 1, i32 1
  br i1 %487, label %489, label %491

489:                                              ; preds = %481
  store i16 4, ptr %488, align 2, !tbaa !50
  %490 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 1, i32 3
  store i32 %484, ptr %490, align 4, !tbaa !52
  br label %926

491:                                              ; preds = %481
  store i16 3, ptr %488, align 2, !tbaa !50
  %492 = load i16, ptr %251, align 8, !tbaa !56
  %493 = icmp eq i16 %492, 19789
  br i1 %493, label %494, label %504

494:                                              ; preds = %491
  %495 = load ptr, ptr %253, align 8, !tbaa !57
  %496 = getelementptr inbounds i64, ptr %495, i64 3
  %497 = load i64, ptr %496, align 8, !tbaa !22
  %498 = and i64 %497, %486
  %499 = load ptr, ptr %254, align 8, !tbaa !58
  %500 = getelementptr inbounds i32, ptr %499, i64 3
  %501 = load i32, ptr %500, align 4, !tbaa !29
  %502 = zext nneg i32 %501 to i64
  %503 = shl i64 %498, %502
  br label %509

504:                                              ; preds = %491
  %505 = load ptr, ptr %252, align 8, !tbaa !57
  %506 = getelementptr inbounds i64, ptr %505, i64 3
  %507 = load i64, ptr %506, align 8, !tbaa !22
  %508 = and i64 %507, %486
  br label %509

509:                                              ; preds = %504, %494
  %510 = phi i64 [ %503, %494 ], [ %508, %504 ]
  %511 = trunc i64 %510 to i32
  %512 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 1, i32 3
  store i32 %511, ptr %512, align 4, !tbaa !52
  br label %926

513:                                              ; preds = %295
  %514 = call fastcc i32 @TIFFWriteRationalArray(ptr noundef %0, i32 noundef 5, i32 noundef 286, ptr noundef %279, i32 noundef 1, ptr noundef nonnull %243), !range !53
  %515 = icmp eq i32 %514, 0
  br i1 %515, label %940, label %516

516:                                              ; preds = %513
  %517 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 1
  %518 = call fastcc i32 @TIFFWriteRationalArray(ptr noundef %0, i32 noundef 5, i32 noundef 287, ptr noundef nonnull %517, i32 noundef 1, ptr noundef nonnull %244), !range !53
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %940, label %926

520:                                              ; preds = %295
  %521 = call fastcc i32 @TIFFWriteRationalArray(ptr noundef %0, i32 noundef 5, i32 noundef 282, ptr noundef %279, i32 noundef 1, ptr noundef nonnull %241), !range !53
  %522 = icmp eq i32 %521, 0
  br i1 %522, label %940, label %523

523:                                              ; preds = %520
  %524 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 1
  %525 = call fastcc i32 @TIFFWriteRationalArray(ptr noundef %0, i32 noundef 5, i32 noundef 283, ptr noundef nonnull %524, i32 noundef 1, ptr noundef nonnull %242), !range !53
  %526 = icmp eq i32 %525, 0
  br i1 %526, label %940, label %926

527:                                              ; preds = %295, %295, %295, %295
  %528 = load i32, ptr %282, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #4
  %529 = load i16, ptr %239, align 2, !tbaa !65
  %530 = zext i16 %529 to i32
  %531 = icmp ugt i16 %529, 10
  br i1 %531, label %532, label %535

532:                                              ; preds = %527
  %533 = shl nuw nsw i32 %530, 1
  %534 = call ptr @_TIFFmalloc(i32 noundef %533) #4
  br label %535

535:                                              ; preds = %532, %527
  %536 = phi ptr [ %534, %532 ], [ %6, %527 ]
  %537 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %0, i32 noundef %528, ptr noundef nonnull %7) #4
  %538 = icmp eq i16 %529, 0
  br i1 %538, label %547, label %539

539:                                              ; preds = %535
  %540 = zext i16 %529 to i64
  br label %541

541:                                              ; preds = %541, %539
  %542 = phi i64 [ 0, %539 ], [ %545, %541 ]
  %543 = load i16, ptr %7, align 2, !tbaa !35
  %544 = getelementptr inbounds i16, ptr %536, i64 %542
  store i16 %543, ptr %544, align 2, !tbaa !35
  %545 = add nuw nsw i64 %542, 1
  %546 = icmp eq i64 %545, %540
  br i1 %546, label %547, label %541, !llvm.loop !66

547:                                              ; preds = %541, %535
  %548 = trunc i32 %528 to i16
  store i16 %548, ptr %279, align 4, !tbaa !48
  %549 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 0, i32 1
  store i16 3, ptr %549, align 2, !tbaa !50
  %550 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 0, i32 2
  store i32 %530, ptr %550, align 4, !tbaa !51
  %551 = icmp ult i16 %529, 3
  br i1 %551, label %552, label %575

552:                                              ; preds = %547
  %553 = load i16, ptr %240, align 8, !tbaa !56
  %554 = icmp eq i16 %553, 19789
  %555 = load i16, ptr %536, align 2, !tbaa !35
  %556 = zext i16 %555 to i32
  br i1 %554, label %557, label %566

557:                                              ; preds = %552
  %558 = shl nuw i32 %556, 16
  %559 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 0, i32 3
  store i32 %558, ptr %559, align 4, !tbaa !52
  %560 = icmp eq i16 %529, 2
  br i1 %560, label %561, label %577

561:                                              ; preds = %557
  %562 = getelementptr inbounds i16, ptr %536, i64 1
  %563 = load i16, ptr %562, align 2, !tbaa !35
  %564 = zext i16 %563 to i32
  %565 = or disjoint i32 %558, %564
  store i32 %565, ptr %559, align 4, !tbaa !52
  br label %577

566:                                              ; preds = %552
  %567 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 0, i32 3
  store i32 %556, ptr %567, align 4, !tbaa !52
  %568 = icmp eq i16 %529, 2
  br i1 %568, label %569, label %577

569:                                              ; preds = %566
  %570 = getelementptr inbounds i16, ptr %536, i64 1
  %571 = load i16, ptr %570, align 2, !tbaa !35
  %572 = zext i16 %571 to i32
  %573 = shl nuw i32 %572, 16
  %574 = or disjoint i32 %573, %556
  store i32 %574, ptr %567, align 4, !tbaa !52
  br label %577

575:                                              ; preds = %547
  %576 = call fastcc i32 @TIFFWriteData(ptr noundef %0, ptr noundef nonnull %279, ptr noundef %536), !range !53
  br label %577

577:                                              ; preds = %575, %569, %566, %561, %557
  %578 = phi i32 [ %576, %575 ], [ 1, %566 ], [ 1, %569 ], [ 1, %557 ], [ 1, %561 ]
  %579 = icmp eq ptr %536, %6
  br i1 %579, label %581, label %580

580:                                              ; preds = %577
  call void @_TIFFfree(ptr noundef %536) #4
  br label %581

581:                                              ; preds = %577, %580
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #4
  %582 = icmp eq i32 %578, 0
  br i1 %582, label %940, label %926

583:                                              ; preds = %295, %295
  %584 = call i32 @_TIFFSampleToTagType(ptr noundef %0) #4
  %585 = load i32, ptr %282, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #4
  %586 = load i16, ptr %236, align 2, !tbaa !65
  %587 = zext i16 %586 to i32
  %588 = icmp ugt i16 %586, 10
  br i1 %588, label %589, label %592

589:                                              ; preds = %583
  %590 = shl nuw nsw i32 %587, 3
  %591 = call ptr @_TIFFmalloc(i32 noundef %590) #4
  br label %592

592:                                              ; preds = %589, %583
  %593 = phi ptr [ %591, %589 ], [ %4, %583 ]
  %594 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %0, i32 noundef %585, ptr noundef nonnull %5) #4
  %595 = icmp eq i16 %586, 0
  br i1 %595, label %604, label %596

596:                                              ; preds = %592
  %597 = zext i16 %586 to i64
  br label %598

598:                                              ; preds = %598, %596
  %599 = phi i64 [ 0, %596 ], [ %602, %598 ]
  %600 = load double, ptr %5, align 8, !tbaa !67
  %601 = getelementptr inbounds double, ptr %593, i64 %599
  store double %600, ptr %601, align 8, !tbaa !67
  %602 = add nuw nsw i64 %599, 1
  %603 = icmp eq i64 %602, %597
  br i1 %603, label %604, label %598, !llvm.loop !68

604:                                              ; preds = %598, %592
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #4
  %605 = zext i32 %584 to i64
  %606 = getelementptr inbounds [0 x i32], ptr @tiffDataWidth, i64 0, i64 %605
  %607 = load i32, ptr %606, align 4, !tbaa !29
  %608 = mul i32 %607, %587
  %609 = icmp ugt i32 %608, 80
  br i1 %609, label %610, label %612

610:                                              ; preds = %604
  %611 = call ptr @_TIFFmalloc(i32 noundef %608) #4
  br label %612

612:                                              ; preds = %610, %604
  %613 = phi ptr [ %611, %610 ], [ %3, %604 ]
  switch i32 %584, label %812 [
    i32 1, label %632
    i32 6, label %629
    i32 3, label %626
    i32 8, label %623
    i32 4, label %620
    i32 9, label %617
    i32 11, label %614
    i32 12, label %806
  ]

614:                                              ; preds = %612
  br i1 %595, label %795, label %615

615:                                              ; preds = %614
  %616 = zext i16 %586 to i64
  br label %787

617:                                              ; preds = %612
  br i1 %595, label %776, label %618

618:                                              ; preds = %617
  %619 = zext i16 %586 to i64
  br label %768

620:                                              ; preds = %612
  br i1 %595, label %757, label %621

621:                                              ; preds = %620
  %622 = zext i16 %586 to i64
  br label %749

623:                                              ; preds = %612
  br i1 %595, label %718, label %624

624:                                              ; preds = %623
  %625 = zext i16 %586 to i64
  br label %710

626:                                              ; preds = %612
  br i1 %595, label %679, label %627

627:                                              ; preds = %626
  %628 = zext i16 %586 to i64
  br label %671

629:                                              ; preds = %612
  br i1 %595, label %661, label %630

630:                                              ; preds = %629
  %631 = zext i16 %586 to i64
  br label %653

632:                                              ; preds = %612
  br i1 %595, label %643, label %633

633:                                              ; preds = %632
  %634 = zext i16 %586 to i64
  br label %635

635:                                              ; preds = %635, %633
  %636 = phi i64 [ 0, %633 ], [ %641, %635 ]
  %637 = getelementptr inbounds double, ptr %593, i64 %636
  %638 = load double, ptr %637, align 8, !tbaa !67
  %639 = fptoui double %638 to i8
  %640 = getelementptr inbounds i8, ptr %613, i64 %636
  store i8 %639, ptr %640, align 1, !tbaa !69
  %641 = add nuw nsw i64 %636, 1
  %642 = icmp eq i64 %641, %634
  br i1 %642, label %643, label %635, !llvm.loop !70

643:                                              ; preds = %635, %632
  %644 = trunc i32 %585 to i16
  store i16 %644, ptr %279, align 4, !tbaa !48
  %645 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 0, i32 1
  store i16 1, ptr %645, align 2, !tbaa !50
  %646 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 0, i32 2
  store i32 %587, ptr %646, align 4, !tbaa !51
  %647 = icmp ugt i16 %586, 4
  br i1 %647, label %648, label %651

648:                                              ; preds = %643
  %649 = call fastcc i32 @TIFFWriteData(ptr noundef %0, ptr noundef nonnull %279, ptr noundef %613), !range !53
  %650 = icmp eq i32 %649, 0
  br i1 %650, label %812, label %811

651:                                              ; preds = %643
  %652 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 0, i32 3
  call void @_TIFFmemcpy(ptr noundef nonnull %652, ptr noundef %613, i32 noundef %587) #4
  br label %811

653:                                              ; preds = %653, %630
  %654 = phi i64 [ 0, %630 ], [ %659, %653 ]
  %655 = getelementptr inbounds double, ptr %593, i64 %654
  %656 = load double, ptr %655, align 8, !tbaa !67
  %657 = fptosi double %656 to i8
  %658 = getelementptr inbounds i8, ptr %613, i64 %654
  store i8 %657, ptr %658, align 1, !tbaa !69
  %659 = add nuw nsw i64 %654, 1
  %660 = icmp eq i64 %659, %631
  br i1 %660, label %661, label %653, !llvm.loop !71

661:                                              ; preds = %653, %629
  %662 = trunc i32 %585 to i16
  store i16 %662, ptr %279, align 4, !tbaa !48
  %663 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 0, i32 1
  store i16 6, ptr %663, align 2, !tbaa !50
  %664 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 0, i32 2
  store i32 %587, ptr %664, align 4, !tbaa !51
  %665 = icmp ugt i16 %586, 4
  br i1 %665, label %666, label %669

666:                                              ; preds = %661
  %667 = call fastcc i32 @TIFFWriteData(ptr noundef %0, ptr noundef nonnull %279, ptr noundef %613), !range !53
  %668 = icmp eq i32 %667, 0
  br i1 %668, label %812, label %811

669:                                              ; preds = %661
  %670 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 0, i32 3
  call void @_TIFFmemcpy(ptr noundef nonnull %670, ptr noundef %613, i32 noundef %587) #4
  br label %811

671:                                              ; preds = %671, %627
  %672 = phi i64 [ 0, %627 ], [ %677, %671 ]
  %673 = getelementptr inbounds double, ptr %593, i64 %672
  %674 = load double, ptr %673, align 8, !tbaa !67
  %675 = fptoui double %674 to i16
  %676 = getelementptr inbounds i16, ptr %613, i64 %672
  store i16 %675, ptr %676, align 2, !tbaa !35
  %677 = add nuw nsw i64 %672, 1
  %678 = icmp eq i64 %677, %628
  br i1 %678, label %679, label %671, !llvm.loop !72

679:                                              ; preds = %671, %626
  %680 = trunc i32 %585 to i16
  store i16 %680, ptr %279, align 4, !tbaa !48
  %681 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 0, i32 1
  store i16 3, ptr %681, align 2, !tbaa !50
  %682 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 0, i32 2
  store i32 %587, ptr %682, align 4, !tbaa !51
  %683 = icmp ult i16 %586, 3
  br i1 %683, label %684, label %707

684:                                              ; preds = %679
  %685 = load i16, ptr %238, align 8, !tbaa !56
  %686 = icmp eq i16 %685, 19789
  %687 = load i16, ptr %613, align 2, !tbaa !35
  %688 = zext i16 %687 to i32
  br i1 %686, label %689, label %698

689:                                              ; preds = %684
  %690 = shl nuw i32 %688, 16
  %691 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 0, i32 3
  store i32 %690, ptr %691, align 4, !tbaa !52
  %692 = icmp eq i16 %586, 2
  br i1 %692, label %693, label %811

693:                                              ; preds = %689
  %694 = getelementptr inbounds i16, ptr %613, i64 1
  %695 = load i16, ptr %694, align 2, !tbaa !35
  %696 = zext i16 %695 to i32
  %697 = or disjoint i32 %690, %696
  store i32 %697, ptr %691, align 4, !tbaa !52
  br label %811

698:                                              ; preds = %684
  %699 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 0, i32 3
  store i32 %688, ptr %699, align 4, !tbaa !52
  %700 = icmp eq i16 %586, 2
  br i1 %700, label %701, label %811

701:                                              ; preds = %698
  %702 = getelementptr inbounds i16, ptr %613, i64 1
  %703 = load i16, ptr %702, align 2, !tbaa !35
  %704 = zext i16 %703 to i32
  %705 = shl nuw i32 %704, 16
  %706 = or disjoint i32 %705, %688
  store i32 %706, ptr %699, align 4, !tbaa !52
  br label %811

707:                                              ; preds = %679
  %708 = call fastcc i32 @TIFFWriteData(ptr noundef %0, ptr noundef nonnull %279, ptr noundef %613), !range !53
  %709 = icmp eq i32 %708, 0
  br i1 %709, label %812, label %811

710:                                              ; preds = %710, %624
  %711 = phi i64 [ 0, %624 ], [ %716, %710 ]
  %712 = getelementptr inbounds double, ptr %593, i64 %711
  %713 = load double, ptr %712, align 8, !tbaa !67
  %714 = fptosi double %713 to i16
  %715 = getelementptr inbounds i16, ptr %613, i64 %711
  store i16 %714, ptr %715, align 2, !tbaa !35
  %716 = add nuw nsw i64 %711, 1
  %717 = icmp eq i64 %716, %625
  br i1 %717, label %718, label %710, !llvm.loop !73

718:                                              ; preds = %710, %623
  %719 = trunc i32 %585 to i16
  store i16 %719, ptr %279, align 4, !tbaa !48
  %720 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 0, i32 1
  store i16 8, ptr %720, align 2, !tbaa !50
  %721 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 0, i32 2
  store i32 %587, ptr %721, align 4, !tbaa !51
  %722 = icmp ult i16 %586, 3
  br i1 %722, label %723, label %746

723:                                              ; preds = %718
  %724 = load i16, ptr %237, align 8, !tbaa !56
  %725 = icmp eq i16 %724, 19789
  %726 = load i16, ptr %613, align 2, !tbaa !35
  %727 = zext i16 %726 to i32
  br i1 %725, label %728, label %737

728:                                              ; preds = %723
  %729 = shl nuw i32 %727, 16
  %730 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 0, i32 3
  store i32 %729, ptr %730, align 4, !tbaa !52
  %731 = icmp eq i16 %586, 2
  br i1 %731, label %732, label %811

732:                                              ; preds = %728
  %733 = getelementptr inbounds i16, ptr %613, i64 1
  %734 = load i16, ptr %733, align 2, !tbaa !35
  %735 = zext i16 %734 to i32
  %736 = or disjoint i32 %729, %735
  store i32 %736, ptr %730, align 4, !tbaa !52
  br label %811

737:                                              ; preds = %723
  %738 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 0, i32 3
  store i32 %727, ptr %738, align 4, !tbaa !52
  %739 = icmp eq i16 %586, 2
  br i1 %739, label %740, label %811

740:                                              ; preds = %737
  %741 = getelementptr inbounds i16, ptr %613, i64 1
  %742 = load i16, ptr %741, align 2, !tbaa !35
  %743 = zext i16 %742 to i32
  %744 = shl nuw i32 %743, 16
  %745 = or disjoint i32 %744, %727
  store i32 %745, ptr %738, align 4, !tbaa !52
  br label %811

746:                                              ; preds = %718
  %747 = call fastcc i32 @TIFFWriteData(ptr noundef %0, ptr noundef nonnull %279, ptr noundef %613), !range !53
  %748 = icmp eq i32 %747, 0
  br i1 %748, label %812, label %811

749:                                              ; preds = %749, %621
  %750 = phi i64 [ 0, %621 ], [ %755, %749 ]
  %751 = getelementptr inbounds double, ptr %593, i64 %750
  %752 = load double, ptr %751, align 8, !tbaa !67
  %753 = fptoui double %752 to i32
  %754 = getelementptr inbounds i32, ptr %613, i64 %750
  store i32 %753, ptr %754, align 4, !tbaa !29
  %755 = add nuw nsw i64 %750, 1
  %756 = icmp eq i64 %755, %622
  br i1 %756, label %757, label %749, !llvm.loop !74

757:                                              ; preds = %749, %620
  %758 = trunc i32 %585 to i16
  store i16 %758, ptr %279, align 4, !tbaa !48
  %759 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 0, i32 1
  store i16 4, ptr %759, align 2, !tbaa !50
  %760 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 0, i32 2
  store i32 %587, ptr %760, align 4, !tbaa !51
  %761 = icmp eq i16 %586, 1
  br i1 %761, label %762, label %765

762:                                              ; preds = %757
  %763 = load i32, ptr %613, align 4, !tbaa !29
  %764 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 0, i32 3
  store i32 %763, ptr %764, align 4, !tbaa !52
  br label %811

765:                                              ; preds = %757
  %766 = call fastcc i32 @TIFFWriteData(ptr noundef %0, ptr noundef nonnull %279, ptr noundef %613), !range !53
  %767 = icmp eq i32 %766, 0
  br i1 %767, label %812, label %811

768:                                              ; preds = %768, %618
  %769 = phi i64 [ 0, %618 ], [ %774, %768 ]
  %770 = getelementptr inbounds double, ptr %593, i64 %769
  %771 = load double, ptr %770, align 8, !tbaa !67
  %772 = fptosi double %771 to i32
  %773 = getelementptr inbounds i32, ptr %613, i64 %769
  store i32 %772, ptr %773, align 4, !tbaa !29
  %774 = add nuw nsw i64 %769, 1
  %775 = icmp eq i64 %774, %619
  br i1 %775, label %776, label %768, !llvm.loop !75

776:                                              ; preds = %768, %617
  %777 = trunc i32 %585 to i16
  store i16 %777, ptr %279, align 4, !tbaa !48
  %778 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 0, i32 1
  store i16 9, ptr %778, align 2, !tbaa !50
  %779 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 0, i32 2
  store i32 %587, ptr %779, align 4, !tbaa !51
  %780 = icmp eq i16 %586, 1
  br i1 %780, label %781, label %784

781:                                              ; preds = %776
  %782 = load i32, ptr %613, align 4, !tbaa !29
  %783 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 0, i32 3
  store i32 %782, ptr %783, align 4, !tbaa !52
  br label %811

784:                                              ; preds = %776
  %785 = call fastcc i32 @TIFFWriteData(ptr noundef %0, ptr noundef nonnull %279, ptr noundef %613), !range !53
  %786 = icmp eq i32 %785, 0
  br i1 %786, label %812, label %811

787:                                              ; preds = %787, %615
  %788 = phi i64 [ 0, %615 ], [ %793, %787 ]
  %789 = getelementptr inbounds double, ptr %593, i64 %788
  %790 = load double, ptr %789, align 8, !tbaa !67
  %791 = fptrunc double %790 to float
  %792 = getelementptr inbounds float, ptr %613, i64 %788
  store float %791, ptr %792, align 4, !tbaa !76
  %793 = add nuw nsw i64 %788, 1
  %794 = icmp eq i64 %793, %616
  br i1 %794, label %795, label %787, !llvm.loop !77

795:                                              ; preds = %787, %614
  %796 = trunc i32 %585 to i16
  store i16 %796, ptr %279, align 4, !tbaa !48
  %797 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 0, i32 1
  store i16 11, ptr %797, align 2, !tbaa !50
  %798 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 0, i32 2
  store i32 %587, ptr %798, align 4, !tbaa !51
  %799 = icmp eq i16 %586, 1
  br i1 %799, label %800, label %803

800:                                              ; preds = %795
  %801 = load i32, ptr %613, align 4, !tbaa !29
  %802 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 0, i32 3
  store i32 %801, ptr %802, align 4, !tbaa !52
  br label %811

803:                                              ; preds = %795
  %804 = call fastcc i32 @TIFFWriteData(ptr noundef %0, ptr noundef nonnull %279, ptr noundef %613), !range !53
  %805 = icmp eq i32 %804, 0
  br i1 %805, label %812, label %811

806:                                              ; preds = %612
  %807 = trunc i32 %585 to i16
  store i16 %807, ptr %279, align 4, !tbaa !48
  %808 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 0, i32 1
  store i16 12, ptr %808, align 2, !tbaa !50
  %809 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 0, i32 2
  store i32 %587, ptr %809, align 4, !tbaa !51
  %810 = call fastcc noundef i32 @TIFFWriteData(ptr noundef %0, ptr noundef nonnull %279, ptr noundef %593), !range !53
  br label %816

811:                                              ; preds = %803, %800, %784, %781, %765, %762, %746, %740, %737, %732, %728, %707, %701, %698, %693, %689, %669, %666, %651, %648
  br label %812

812:                                              ; preds = %811, %803, %784, %765, %746, %707, %666, %648, %612
  %813 = phi i32 [ 0, %612 ], [ 0, %803 ], [ 1, %811 ], [ 0, %784 ], [ 0, %765 ], [ 0, %746 ], [ 0, %707 ], [ 0, %648 ], [ 0, %666 ]
  %814 = icmp eq ptr %613, %3
  br i1 %814, label %816, label %815

815:                                              ; preds = %812
  call void @_TIFFfree(ptr noundef %613) #4
  br label %816

816:                                              ; preds = %815, %812, %806
  %817 = phi i32 [ %810, %806 ], [ %813, %815 ], [ %813, %812 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #4
  %818 = icmp eq ptr %593, %4
  br i1 %818, label %820, label %819

819:                                              ; preds = %816
  call void @_TIFFfree(ptr noundef %593) #4
  br label %820

820:                                              ; preds = %816, %819
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #4
  %821 = icmp eq i32 %817, 0
  br i1 %821, label %940, label %926

822:                                              ; preds = %295, %295, %295, %295
  %823 = load i32, ptr %282, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #4
  %824 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %0, i32 noundef %823, ptr noundef nonnull %2, ptr noundef nonnull %234) #4
  %825 = trunc i32 %823 to i16
  store i16 %825, ptr %279, align 4, !tbaa !48
  %826 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 0, i32 1
  store i16 3, ptr %826, align 2, !tbaa !50
  %827 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 0, i32 2
  store i32 2, ptr %827, align 4, !tbaa !51
  %828 = load i16, ptr %235, align 8, !tbaa !56
  %829 = icmp eq i16 %828, 19789
  %830 = load i16, ptr %2, align 2, !tbaa !35
  %831 = zext i16 %830 to i32
  br i1 %829, label %832, label %838

832:                                              ; preds = %822
  %833 = shl nuw i32 %831, 16
  %834 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 0, i32 3
  store i32 %833, ptr %834, align 4, !tbaa !52
  %835 = load i16, ptr %234, align 2, !tbaa !35
  %836 = zext i16 %835 to i32
  %837 = or disjoint i32 %833, %836
  store i32 %837, ptr %834, align 4, !tbaa !52
  br label %844

838:                                              ; preds = %822
  %839 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 0, i32 3
  store i32 %831, ptr %839, align 4, !tbaa !52
  %840 = load i16, ptr %234, align 2, !tbaa !35
  %841 = zext i16 %840 to i32
  %842 = shl nuw i32 %841, 16
  %843 = or disjoint i32 %842, %831
  store i32 %843, ptr %839, align 4, !tbaa !52
  br label %844

844:                                              ; preds = %832, %838
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #4
  br label %926

845:                                              ; preds = %295
  store i16 333, ptr %279, align 4, !tbaa !48
  %846 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 0, i32 1
  store i16 2, ptr %846, align 2, !tbaa !50
  %847 = load i32, ptr %232, align 8, !tbaa !78
  %848 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 0, i32 2
  store i32 %847, ptr %848, align 4, !tbaa !51
  %849 = load ptr, ptr %233, align 8, !tbaa !79
  %850 = icmp ugt i32 %847, 4
  br i1 %850, label %851, label %854

851:                                              ; preds = %845
  %852 = call fastcc i32 @TIFFWriteData(ptr noundef %0, ptr noundef nonnull %279, ptr noundef %849), !range !53
  %853 = icmp eq i32 %852, 0
  br i1 %853, label %940, label %926

854:                                              ; preds = %845
  %855 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 0, i32 3
  call void @_TIFFmemcpy(ptr noundef nonnull %855, ptr noundef %849, i32 noundef %847) #4
  br label %926

856:                                              ; preds = %295
  %857 = load i16, ptr %226, align 4, !tbaa !80
  %858 = zext nneg i16 %857 to i64
  %859 = shl i64 2, %858
  %860 = trunc i64 %859 to i32
  %861 = load i16, ptr %228, align 2, !tbaa !81
  %862 = zext i16 %861 to i32
  %863 = load i16, ptr %229, align 4, !tbaa !39
  %864 = zext i16 %863 to i32
  %865 = sub nsw i32 %862, %864
  switch i32 %865, label %866 [
    i32 2, label %871
    i32 1, label %876
    i32 0, label %876
  ]

866:                                              ; preds = %856
  %867 = load ptr, ptr %227, align 8, !tbaa !42
  %868 = load ptr, ptr %230, align 8, !tbaa !42
  %869 = call i32 @_TIFFmemcmp(ptr noundef %867, ptr noundef %868, i32 noundef %860) #4
  %870 = icmp eq i32 %869, 0
  br i1 %870, label %871, label %877

871:                                              ; preds = %866, %856
  %872 = load ptr, ptr %227, align 8, !tbaa !42
  %873 = load ptr, ptr %231, align 8, !tbaa !42
  %874 = call i32 @_TIFFmemcmp(ptr noundef %872, ptr noundef %873, i32 noundef %860) #4
  %875 = icmp eq i32 %874, 0
  br i1 %875, label %876, label %877

876:                                              ; preds = %871, %856, %856
  br label %877

877:                                              ; preds = %876, %871, %866
  %878 = phi i32 [ 1, %876 ], [ 3, %866 ], [ 3, %871 ]
  store i16 301, ptr %279, align 4, !tbaa !48
  %879 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 0, i32 1
  store i16 3, ptr %879, align 2, !tbaa !50
  %880 = load i16, ptr %226, align 4, !tbaa !59
  %881 = zext nneg i16 %880 to i64
  %882 = shl nuw i64 1, %881
  %883 = trunc i64 %882 to i32
  %884 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 0, i32 2
  store i32 %883, ptr %884, align 4, !tbaa !51
  %885 = load i32, ptr %189, align 8, !tbaa !37
  %886 = zext nneg i32 %878 to i64
  br label %890

887:                                              ; preds = %890
  %888 = add nuw nsw i64 %891, 1
  %889 = icmp eq i64 %888, %886
  br i1 %889, label %896, label %890, !llvm.loop !60

890:                                              ; preds = %887, %877
  %891 = phi i64 [ 0, %877 ], [ %888, %887 ]
  %892 = getelementptr inbounds ptr, ptr %227, i64 %891
  %893 = load ptr, ptr %892, align 8, !tbaa !42
  %894 = call fastcc i32 @TIFFWriteData(ptr noundef %0, ptr noundef nonnull %279, ptr noundef %893), !range !53
  %895 = icmp eq i32 %894, 0
  br i1 %895, label %940, label %887

896:                                              ; preds = %887
  %897 = load i32, ptr %884, align 4, !tbaa !51
  %898 = mul i32 %897, %878
  store i32 %898, ptr %884, align 4, !tbaa !51
  %899 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 0, i32 3
  store i32 %885, ptr %899, align 4, !tbaa !52
  br i1 %895, label %940, label %926

900:                                              ; preds = %295
  %901 = call fastcc i32 @TIFFWriteNormalTag(ptr noundef %0, ptr noundef %279, ptr noundef %282), !range !53
  %902 = icmp eq i32 %901, 0
  br i1 %902, label %940, label %903

903:                                              ; preds = %900
  %904 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 0, i32 2
  %905 = load i32, ptr %904, align 4, !tbaa !51
  %906 = icmp eq i32 %905, 0
  br i1 %906, label %926, label %907

907:                                              ; preds = %903
  %908 = load i32, ptr %18, align 8, !tbaa !16
  %909 = or i32 %908, 8192
  store i32 %909, ptr %18, align 8, !tbaa !16
  %910 = trunc i32 %905 to i16
  store i16 %910, ptr %222, align 4, !tbaa !32
  %911 = icmp eq i32 %905, 1
  br i1 %911, label %915, label %912

912:                                              ; preds = %907
  %913 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 0, i32 3
  %914 = load i32, ptr %913, align 4, !tbaa !52
  store i32 %914, ptr %223, align 8, !tbaa !30
  br label %926

915:                                              ; preds = %907
  %916 = load i32, ptr %77, align 4, !tbaa !26
  %917 = getelementptr inbounds %struct.TIFFDirEntry, ptr %279, i64 0, i32 3
  %918 = ptrtoint ptr %917 to i64
  %919 = sub i64 %918, %224
  %920 = trunc i64 %919 to i32
  %921 = add i32 %920, 2
  %922 = add i32 %921, %916
  store i32 %922, ptr %225, align 8, !tbaa !30
  br label %926

923:                                              ; preds = %295
  %924 = call fastcc i32 @TIFFWriteNormalTag(ptr noundef %0, ptr noundef %279, ptr noundef %282), !range !53
  %925 = icmp eq i32 %924, 0
  br i1 %925, label %940, label %926

926:                                              ; preds = %851, %854, %509, %489, %448, %428, %366, %346, %844, %523, %516, %923, %903, %915, %912, %896, %820, %581, %387, %337, %315
  %927 = phi ptr [ %279, %923 ], [ %279, %912 ], [ %279, %915 ], [ %279, %903 ], [ %279, %896 ], [ %279, %844 ], [ %279, %820 ], [ %279, %581 ], [ %279, %387 ], [ %279, %337 ], [ %279, %315 ], [ %517, %516 ], [ %524, %523 ], [ %279, %346 ], [ %279, %366 ], [ %392, %428 ], [ %392, %448 ], [ %453, %489 ], [ %453, %509 ], [ %279, %854 ], [ %279, %851 ]
  %928 = getelementptr inbounds %struct.TIFFDirEntry, ptr %927, i64 1
  %929 = load i16, ptr %283, align 4, !tbaa !43
  %930 = zext i16 %929 to i32
  %931 = and i32 %930, 31
  %932 = zext nneg i32 %931 to i64
  %933 = shl nuw nsw i64 1, %932
  %934 = xor i64 %933, -1
  %935 = lshr i32 %930, 5
  %936 = zext nneg i32 %935 to i64
  %937 = getelementptr inbounds [3 x i64], ptr %13, i64 0, i64 %936
  %938 = load i64, ptr %937, align 8, !tbaa !22
  %939 = and i64 %938, %934
  store i64 %939, ptr %937, align 8, !tbaa !22
  br label %940

940:                                              ; preds = %890, %381, %851, %923, %900, %896, %820, %581, %523, %520, %516, %513, %387, %337, %318, %315, %296, %277, %926
  %941 = phi ptr [ %928, %926 ], [ %279, %277 ], [ %279, %296 ], [ %279, %315 ], [ %279, %318 ], [ %279, %337 ], [ %279, %387 ], [ %279, %513 ], [ %279, %516 ], [ %279, %520 ], [ %279, %523 ], [ %279, %581 ], [ %279, %820 ], [ %279, %896 ], [ %279, %900 ], [ %279, %923 ], [ %279, %851 ], [ %279, %381 ], [ %279, %890 ]
  %942 = phi i32 [ 0, %926 ], [ 8, %277 ], [ 8, %296 ], [ 5, %315 ], [ 8, %318 ], [ 5, %337 ], [ 5, %387 ], [ 5, %513 ], [ 5, %516 ], [ 5, %520 ], [ 5, %523 ], [ 5, %581 ], [ 5, %820 ], [ 5, %896 ], [ 5, %900 ], [ 5, %923 ], [ 5, %851 ], [ 5, %381 ], [ 5, %890 ]
  switch i32 %942, label %1001 [
    i32 0, label %943
    i32 8, label %943
    i32 5, label %1000
  ]

943:                                              ; preds = %940, %940
  %944 = add nuw nsw i64 %278, 1
  %945 = icmp eq i64 %944, %276
  br i1 %945, label %946, label %277, !llvm.loop !82

946:                                              ; preds = %943, %214
  %947 = trunc i32 %216 to i16
  store i16 %947, ptr %11, align 2, !tbaa !35
  %948 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 5
  %949 = load i32, ptr %948, align 8, !tbaa !83
  store i32 %949, ptr %12, align 4, !tbaa !29
  %950 = load i32, ptr %18, align 8, !tbaa !16
  %951 = and i32 %950, 128
  %952 = icmp eq i32 %951, 0
  br i1 %952, label %964, label %953

953:                                              ; preds = %946
  %954 = load i16, ptr %11, align 2, !tbaa !35
  %955 = icmp eq i16 %954, 0
  br i1 %955, label %963, label %956

956:                                              ; preds = %953, %956
  %957 = phi ptr [ %959, %956 ], [ %72, %953 ]
  call void @TIFFSwabArrayOfShort(ptr noundef nonnull %957, i64 noundef 2) #4
  %958 = getelementptr inbounds %struct.TIFFDirEntry, ptr %957, i64 0, i32 2
  call void @TIFFSwabArrayOfLong(ptr noundef nonnull %958, i64 noundef 2) #4
  %959 = getelementptr inbounds %struct.TIFFDirEntry, ptr %957, i64 1
  %960 = load i16, ptr %11, align 2, !tbaa !35
  %961 = add i16 %960, -1
  store i16 %961, ptr %11, align 2, !tbaa !35
  %962 = icmp eq i16 %961, 0
  br i1 %962, label %963, label %956, !llvm.loop !84

963:                                              ; preds = %956, %953
  store i16 %947, ptr %11, align 2, !tbaa !35
  call void @TIFFSwabShort(ptr noundef nonnull %11) #4
  call void @TIFFSwabLong(ptr noundef nonnull %12) #4
  br label %964

964:                                              ; preds = %963, %946
  %965 = load ptr, ptr %195, align 8, !tbaa !27
  %966 = load ptr, ptr %197, align 8, !tbaa !28
  %967 = load i32, ptr %77, align 4, !tbaa !26
  %968 = call i32 %965(ptr noundef %966, i32 noundef %967, i32 noundef 0) #4
  %969 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 50
  %970 = load ptr, ptr %969, align 8, !tbaa !31
  %971 = load ptr, ptr %197, align 8, !tbaa !28
  %972 = call i32 %970(ptr noundef %971, ptr noundef nonnull %11, i32 noundef 2) #4
  %973 = icmp eq i32 %972, 2
  br i1 %973, label %976, label %974

974:                                              ; preds = %964
  %975 = load ptr, ptr %0, align 8, !tbaa !18
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %975, ptr noundef nonnull @.str.3) #4
  br label %1000

976:                                              ; preds = %964
  %977 = load ptr, ptr %969, align 8, !tbaa !31
  %978 = load ptr, ptr %197, align 8, !tbaa !28
  %979 = call i32 %977(ptr noundef %978, ptr noundef nonnull %72, i32 noundef %215) #4
  %980 = icmp eq i32 %979, %215
  br i1 %980, label %983, label %981

981:                                              ; preds = %976
  %982 = load ptr, ptr %0, align 8, !tbaa !18
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %982, ptr noundef nonnull @.str.4) #4
  br label %1000

983:                                              ; preds = %976
  %984 = load ptr, ptr %969, align 8, !tbaa !31
  %985 = load ptr, ptr %197, align 8, !tbaa !28
  %986 = call i32 %984(ptr noundef %985, ptr noundef nonnull %12, i32 noundef 4) #4
  %987 = icmp eq i32 %986, 4
  br i1 %987, label %990, label %988

988:                                              ; preds = %983
  %989 = load ptr, ptr %0, align 8, !tbaa !18
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %989, ptr noundef nonnull @.str.5) #4
  br label %1000

990:                                              ; preds = %983
  call void @TIFFFreeDirectory(ptr noundef %0) #4
  call void @_TIFFfree(ptr noundef nonnull %72) #4
  %991 = load i32, ptr %18, align 8, !tbaa !16
  %992 = and i32 %991, -9
  store i32 %992, ptr %18, align 8, !tbaa !16
  %993 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 34
  %994 = load ptr, ptr %993, align 8, !tbaa !85
  call void %994(ptr noundef %0) #4
  %995 = call i32 @TIFFDefaultDirectory(ptr noundef %0) #4
  store i32 0, ptr %77, align 4, !tbaa !26
  %996 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 14
  store i32 0, ptr %996, align 4, !tbaa !86
  %997 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  store i32 -1, ptr %997, align 8, !tbaa !87
  %998 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 13
  store i32 -1, ptr %998, align 8, !tbaa !88
  br label %1001

999:                                              ; preds = %184, %183, %134, %107
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #4
  br label %1000

1000:                                             ; preds = %940, %999, %988, %981, %974
  call void @_TIFFfree(ptr noundef nonnull %72) #4
  br label %1001

1001:                                             ; preds = %940, %1, %1000, %990, %74, %39, %28
  %1002 = phi i32 [ 0, %74 ], [ 0, %1000 ], [ 1, %990 ], [ 0, %39 ], [ 0, %28 ], [ 1, %1 ], [ undef, %940 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #4
  ret i32 %1002
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @TIFFError(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @TIFFFlushData1(ptr noundef) local_unnamed_addr #2

declare void @_TIFFfree(ptr noundef) local_unnamed_addr #2

declare ptr @_TIFFmalloc(i32 noundef) local_unnamed_addr #2

declare void @_TIFFmemcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @TIFFWriteRationalArray(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) unnamed_addr #0 {
  %7 = trunc i32 %2 to i16
  store i16 %7, ptr %3, align 4, !tbaa !48
  %8 = trunc i32 %1 to i16
  %9 = getelementptr inbounds %struct.TIFFDirEntry, ptr %3, i64 0, i32 1
  store i16 %8, ptr %9, align 2, !tbaa !50
  %10 = getelementptr inbounds %struct.TIFFDirEntry, ptr %3, i64 0, i32 2
  store i32 %4, ptr %10, align 4, !tbaa !51
  %11 = shl i32 %4, 3
  %12 = tail call ptr @_TIFFmalloc(i32 noundef %11) #4
  %13 = icmp eq i32 %4, 0
  br i1 %13, label %58, label %14

14:                                               ; preds = %6
  %15 = icmp eq i32 %1, 5
  %16 = zext i32 %4 to i64
  br label %17

17:                                               ; preds = %14, %45
  %18 = phi i64 [ 0, %14 ], [ %56, %45 ]
  %19 = getelementptr inbounds float, ptr %5, i64 %18
  %20 = load float, ptr %19, align 4, !tbaa !76
  %21 = fcmp olt float %20, 0.000000e+00
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  br i1 %15, label %23, label %29

23:                                               ; preds = %22
  %24 = load ptr, ptr %0, align 8, !tbaa !18
  %25 = tail call ptr @_TIFFFieldWithTag(ptr noundef nonnull %0, i32 noundef %2) #4
  %26 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %25, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !89
  %28 = fpext float %20 to double
  tail call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %24, ptr noundef nonnull @.str.7, ptr noundef %27, double noundef %28) #4
  br label %31

29:                                               ; preds = %22
  %30 = fneg float %20
  br label %31

31:                                               ; preds = %23, %29, %17
  %32 = phi float [ 0.000000e+00, %23 ], [ %30, %29 ], [ %20, %17 ]
  %33 = phi double [ 1.000000e+00, %23 ], [ -1.000000e+00, %29 ], [ 1.000000e+00, %17 ]
  %34 = fcmp ogt float %32, 0.000000e+00
  %35 = fcmp olt float %32, 0x41B0000000000000
  %36 = and i1 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %31, %37
  %38 = phi i32 [ %41, %37 ], [ 1, %31 ]
  %39 = phi float [ %40, %37 ], [ %32, %31 ]
  %40 = fmul float %39, 8.000000e+00
  %41 = shl i32 %38, 3
  %42 = fcmp olt float %40, 0x41B0000000000000
  %43 = icmp ult i32 %41, 268435456
  %44 = select i1 %42, i1 %43, i1 false
  br i1 %44, label %37, label %45, !llvm.loop !90

45:                                               ; preds = %37, %31
  %46 = phi float [ %32, %31 ], [ %40, %37 ]
  %47 = phi i32 [ 1, %31 ], [ %41, %37 ]
  %48 = fpext float %46 to double
  %49 = fadd double %48, 5.000000e-01
  %50 = fmul double %33, %49
  %51 = fptoui double %50 to i32
  %52 = shl nuw nsw i64 %18, 1
  %53 = getelementptr inbounds i32, ptr %12, i64 %52
  store i32 %51, ptr %53, align 4, !tbaa !29
  %54 = or disjoint i64 %52, 1
  %55 = getelementptr inbounds i32, ptr %12, i64 %54
  store i32 %47, ptr %55, align 4, !tbaa !29
  %56 = add nuw nsw i64 %18, 1
  %57 = icmp eq i64 %56, %16
  br i1 %57, label %58, label %17, !llvm.loop !91

58:                                               ; preds = %45, %6
  %59 = tail call fastcc i32 @TIFFWriteData(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %12), !range !53
  tail call void @_TIFFfree(ptr noundef %12) #4
  ret i32 %59
}

declare i32 @_TIFFSampleToTagType(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @TIFFWriteNormalTag(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i16, align 2
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca float, align 4
  %11 = alloca ptr, align 8
  %12 = alloca float, align 4
  %13 = alloca ptr, align 8
  %14 = alloca double, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca i8, align 1
  %18 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #4
  %19 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %2, i64 0, i32 2
  %20 = load i16, ptr %19, align 2, !tbaa !92
  store i16 %20, ptr %4, align 2, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #4
  %21 = load i32, ptr %2, align 8, !tbaa !45
  %22 = trunc i32 %21 to i16
  store i16 %22, ptr %1, align 4, !tbaa !48
  %23 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %2, i64 0, i32 3
  %24 = load i32, ptr %23, align 8, !tbaa !93
  %25 = trunc i32 %24 to i16
  %26 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 1
  store i16 %25, ptr %26, align 2, !tbaa !50
  %27 = zext i16 %20 to i32
  %28 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 2
  store i32 %27, ptr %28, align 4, !tbaa !51
  switch i32 %24, label %282 [
    i32 3, label %29
    i32 8, label %29
    i32 4, label %98
    i32 9, label %98
    i32 5, label %124
    i32 10, label %124
    i32 11, label %148
    i32 12, label %186
    i32 2, label %214
    i32 1, label %228
    i32 6, label %228
    i32 7, label %260
  ]

29:                                               ; preds = %3, %3
  %30 = icmp ugt i16 %20, 1
  br i1 %30, label %31, label %73

31:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #4
  %32 = icmp eq i16 %20, -1
  br i1 %32, label %33, label %35

33:                                               ; preds = %31
  %34 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %0, i32 noundef %21, ptr noundef nonnull %4, ptr noundef nonnull %6) #4
  br label %37

35:                                               ; preds = %31
  %36 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %0, i32 noundef %21, ptr noundef nonnull %6) #4
  br label %37

37:                                               ; preds = %35, %33
  %38 = load i32, ptr %23, align 8, !tbaa !93
  %39 = load i32, ptr %2, align 8, !tbaa !45
  %40 = load i16, ptr %4, align 2, !tbaa !35
  %41 = zext i16 %40 to i32
  %42 = load ptr, ptr %6, align 8, !tbaa !42
  %43 = trunc i32 %39 to i16
  store i16 %43, ptr %1, align 4, !tbaa !48
  %44 = trunc i32 %38 to i16
  store i16 %44, ptr %26, align 2, !tbaa !50
  store i32 %41, ptr %28, align 4, !tbaa !51
  %45 = icmp ult i16 %40, 3
  br i1 %45, label %46, label %70

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 7
  %48 = load i16, ptr %47, align 8, !tbaa !56
  %49 = icmp eq i16 %48, 19789
  %50 = load i16, ptr %42, align 2, !tbaa !35
  %51 = zext i16 %50 to i32
  br i1 %49, label %52, label %61

52:                                               ; preds = %46
  %53 = shl nuw i32 %51, 16
  %54 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 3
  store i32 %53, ptr %54, align 4, !tbaa !52
  %55 = icmp eq i16 %40, 2
  br i1 %55, label %56, label %281

56:                                               ; preds = %52
  %57 = getelementptr inbounds i16, ptr %42, i64 1
  %58 = load i16, ptr %57, align 2, !tbaa !35
  %59 = zext i16 %58 to i32
  %60 = or disjoint i32 %53, %59
  store i32 %60, ptr %54, align 4, !tbaa !52
  br label %281

61:                                               ; preds = %46
  %62 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 3
  store i32 %51, ptr %62, align 4, !tbaa !52
  %63 = icmp eq i16 %40, 2
  br i1 %63, label %64, label %281

64:                                               ; preds = %61
  %65 = getelementptr inbounds i16, ptr %42, i64 1
  %66 = load i16, ptr %65, align 2, !tbaa !35
  %67 = zext i16 %66 to i32
  %68 = shl nuw i32 %67, 16
  %69 = or disjoint i32 %68, %51
  store i32 %69, ptr %62, align 4, !tbaa !52
  br label %281

70:                                               ; preds = %37
  %71 = call fastcc i32 @TIFFWriteData(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %42), !range !53
  %72 = icmp eq i32 %71, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #4
  br i1 %72, label %283, label %282

73:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #4
  %74 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %0, i32 noundef %21, ptr noundef nonnull %7) #4
  %75 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 7
  %76 = load i16, ptr %75, align 8, !tbaa !56
  %77 = icmp eq i16 %76, 19789
  %78 = load i16, ptr %7, align 2, !tbaa !35
  %79 = zext i16 %78 to i64
  %80 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 10
  %81 = load ptr, ptr %80, align 8, !tbaa !57
  %82 = load i16, ptr %26, align 2, !tbaa !50
  %83 = zext i16 %82 to i64
  %84 = getelementptr inbounds i64, ptr %81, i64 %83
  %85 = load i64, ptr %84, align 8, !tbaa !22
  %86 = and i64 %85, %79
  br i1 %77, label %87, label %94

87:                                               ; preds = %73
  %88 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 9
  %89 = load ptr, ptr %88, align 8, !tbaa !58
  %90 = getelementptr inbounds i32, ptr %89, i64 %83
  %91 = load i32, ptr %90, align 4, !tbaa !29
  %92 = zext nneg i32 %91 to i64
  %93 = shl i64 %86, %92
  br label %94

94:                                               ; preds = %73, %87
  %95 = phi i64 [ %93, %87 ], [ %86, %73 ]
  %96 = trunc i64 %95 to i32
  %97 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 3
  store i32 %96, ptr %97, align 4, !tbaa !52
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #4
  br label %282

98:                                               ; preds = %3, %3
  %99 = icmp ugt i16 %20, 1
  br i1 %99, label %100, label %121

100:                                              ; preds = %98
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #4
  %101 = icmp eq i16 %20, -1
  br i1 %101, label %102, label %104

102:                                              ; preds = %100
  %103 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %0, i32 noundef %21, ptr noundef nonnull %4, ptr noundef nonnull %8) #4
  br label %106

104:                                              ; preds = %100
  %105 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %0, i32 noundef %21, ptr noundef nonnull %8) #4
  br label %106

106:                                              ; preds = %104, %102
  %107 = load i32, ptr %23, align 8, !tbaa !93
  %108 = load i32, ptr %2, align 8, !tbaa !45
  %109 = load i16, ptr %4, align 2, !tbaa !35
  %110 = zext i16 %109 to i32
  %111 = load ptr, ptr %8, align 8, !tbaa !42
  %112 = trunc i32 %108 to i16
  store i16 %112, ptr %1, align 4, !tbaa !48
  %113 = trunc i32 %107 to i16
  store i16 %113, ptr %26, align 2, !tbaa !50
  store i32 %110, ptr %28, align 4, !tbaa !51
  %114 = icmp eq i16 %109, 1
  br i1 %114, label %115, label %118

115:                                              ; preds = %106
  %116 = load i32, ptr %111, align 4, !tbaa !29
  %117 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 3
  store i32 %116, ptr %117, align 4, !tbaa !52
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #4
  br label %282

118:                                              ; preds = %106
  %119 = call fastcc i32 @TIFFWriteData(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %111), !range !53
  %120 = icmp eq i32 %119, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #4
  br i1 %120, label %283, label %282

121:                                              ; preds = %98
  %122 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 3
  %123 = tail call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %0, i32 noundef %21, ptr noundef nonnull %122) #4
  br label %282

124:                                              ; preds = %3, %3
  %125 = icmp ugt i16 %20, 1
  br i1 %125, label %126, label %140

126:                                              ; preds = %124
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #4
  %127 = icmp eq i16 %20, -1
  br i1 %127, label %128, label %130

128:                                              ; preds = %126
  %129 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %0, i32 noundef %21, ptr noundef nonnull %4, ptr noundef nonnull %9) #4
  br label %132

130:                                              ; preds = %126
  %131 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %0, i32 noundef %21, ptr noundef nonnull %9) #4
  br label %132

132:                                              ; preds = %130, %128
  %133 = load i32, ptr %23, align 8, !tbaa !93
  %134 = load i32, ptr %2, align 8, !tbaa !45
  %135 = load i16, ptr %4, align 2, !tbaa !35
  %136 = zext i16 %135 to i32
  %137 = load ptr, ptr %9, align 8, !tbaa !42
  %138 = call fastcc i32 @TIFFWriteRationalArray(ptr noundef %0, i32 noundef %133, i32 noundef %134, ptr noundef nonnull %1, i32 noundef %136, ptr noundef %137), !range !53
  %139 = icmp eq i32 %138, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #4
  br i1 %139, label %283, label %282

140:                                              ; preds = %124
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #4
  %141 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %0, i32 noundef %21, ptr noundef nonnull %10) #4
  %142 = load i32, ptr %23, align 8, !tbaa !93
  %143 = load i32, ptr %2, align 8, !tbaa !45
  %144 = load i16, ptr %4, align 2, !tbaa !35
  %145 = zext i16 %144 to i32
  %146 = call fastcc i32 @TIFFWriteRationalArray(ptr noundef %0, i32 noundef %142, i32 noundef %143, ptr noundef nonnull %1, i32 noundef %145, ptr noundef nonnull %10), !range !53
  %147 = icmp eq i32 %146, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #4
  br i1 %147, label %283, label %282

148:                                              ; preds = %3
  %149 = icmp ugt i16 %20, 1
  br i1 %149, label %150, label %171

150:                                              ; preds = %148
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #4
  %151 = icmp eq i16 %20, -1
  br i1 %151, label %152, label %154

152:                                              ; preds = %150
  %153 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %0, i32 noundef %21, ptr noundef nonnull %4, ptr noundef nonnull %11) #4
  br label %156

154:                                              ; preds = %150
  %155 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %0, i32 noundef %21, ptr noundef nonnull %11) #4
  br label %156

156:                                              ; preds = %154, %152
  %157 = load i32, ptr %23, align 8, !tbaa !93
  %158 = load i32, ptr %2, align 8, !tbaa !45
  %159 = load i16, ptr %4, align 2, !tbaa !35
  %160 = zext i16 %159 to i32
  %161 = load ptr, ptr %11, align 8, !tbaa !42
  %162 = trunc i32 %158 to i16
  store i16 %162, ptr %1, align 4, !tbaa !48
  %163 = trunc i32 %157 to i16
  store i16 %163, ptr %26, align 2, !tbaa !50
  store i32 %160, ptr %28, align 4, !tbaa !51
  %164 = icmp eq i16 %159, 1
  br i1 %164, label %165, label %168

165:                                              ; preds = %156
  %166 = load i32, ptr %161, align 4, !tbaa !29
  %167 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 3
  store i32 %166, ptr %167, align 4, !tbaa !52
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #4
  br label %282

168:                                              ; preds = %156
  %169 = call fastcc i32 @TIFFWriteData(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %161), !range !53
  %170 = icmp eq i32 %169, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #4
  br i1 %170, label %283, label %282

171:                                              ; preds = %148
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #4
  %172 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %0, i32 noundef %21, ptr noundef nonnull %12) #4
  %173 = load i32, ptr %23, align 8, !tbaa !93
  %174 = load i32, ptr %2, align 8, !tbaa !45
  %175 = load i16, ptr %4, align 2, !tbaa !35
  %176 = zext i16 %175 to i32
  %177 = trunc i32 %174 to i16
  store i16 %177, ptr %1, align 4, !tbaa !48
  %178 = trunc i32 %173 to i16
  store i16 %178, ptr %26, align 2, !tbaa !50
  store i32 %176, ptr %28, align 4, !tbaa !51
  %179 = icmp eq i16 %175, 1
  br i1 %179, label %180, label %183

180:                                              ; preds = %171
  %181 = load i32, ptr %12, align 4, !tbaa !29
  %182 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 3
  store i32 %181, ptr %182, align 4, !tbaa !52
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #4
  br label %282

183:                                              ; preds = %171
  %184 = call fastcc i32 @TIFFWriteData(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %12), !range !53
  %185 = icmp eq i32 %184, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #4
  br i1 %185, label %283, label %282

186:                                              ; preds = %3
  %187 = icmp ugt i16 %20, 1
  br i1 %187, label %188, label %204

188:                                              ; preds = %186
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #4
  %189 = icmp eq i16 %20, -1
  br i1 %189, label %190, label %192

190:                                              ; preds = %188
  %191 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %0, i32 noundef %21, ptr noundef nonnull %4, ptr noundef nonnull %13) #4
  br label %194

192:                                              ; preds = %188
  %193 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %0, i32 noundef %21, ptr noundef nonnull %13) #4
  br label %194

194:                                              ; preds = %192, %190
  %195 = load i32, ptr %23, align 8, !tbaa !93
  %196 = load i32, ptr %2, align 8, !tbaa !45
  %197 = load i16, ptr %4, align 2, !tbaa !35
  %198 = zext i16 %197 to i32
  %199 = load ptr, ptr %13, align 8, !tbaa !42
  %200 = trunc i32 %196 to i16
  store i16 %200, ptr %1, align 4, !tbaa !48
  %201 = trunc i32 %195 to i16
  store i16 %201, ptr %26, align 2, !tbaa !50
  store i32 %198, ptr %28, align 4, !tbaa !51
  %202 = call fastcc noundef i32 @TIFFWriteData(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %199), !range !53
  %203 = icmp eq i32 %202, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #4
  br i1 %203, label %283, label %282

204:                                              ; preds = %186
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #4
  %205 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %0, i32 noundef %21, ptr noundef nonnull %14) #4
  %206 = load i32, ptr %23, align 8, !tbaa !93
  %207 = load i32, ptr %2, align 8, !tbaa !45
  %208 = load i16, ptr %4, align 2, !tbaa !35
  %209 = zext i16 %208 to i32
  %210 = trunc i32 %207 to i16
  store i16 %210, ptr %1, align 4, !tbaa !48
  %211 = trunc i32 %206 to i16
  store i16 %211, ptr %26, align 2, !tbaa !50
  store i32 %209, ptr %28, align 4, !tbaa !51
  %212 = call fastcc noundef i32 @TIFFWriteData(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %14), !range !53
  %213 = icmp eq i32 %212, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #4
  br i1 %213, label %283, label %282

214:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #4
  %215 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %0, i32 noundef %21, ptr noundef nonnull %15) #4
  %216 = load ptr, ptr %15, align 8, !tbaa !42
  %217 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %216) #5
  %218 = trunc i64 %217 to i32
  %219 = add i32 %218, 1
  store i32 %219, ptr %28, align 4, !tbaa !51
  %220 = icmp ugt i32 %219, 4
  br i1 %220, label %221, label %224

221:                                              ; preds = %214
  %222 = call fastcc i32 @TIFFWriteData(ptr noundef %0, ptr noundef %1, ptr noundef %216), !range !53
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %227, label %226

224:                                              ; preds = %214
  %225 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 3
  call void @_TIFFmemcpy(ptr noundef nonnull %225, ptr noundef %216, i32 noundef %219) #4
  br label %226

226:                                              ; preds = %224, %221
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #4
  br label %282

227:                                              ; preds = %221
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #4
  br label %283

228:                                              ; preds = %3, %3
  %229 = icmp ugt i16 %20, 1
  br i1 %229, label %230, label %249

230:                                              ; preds = %228
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #4
  %231 = icmp eq i16 %20, -1
  br i1 %231, label %232, label %236

232:                                              ; preds = %230
  %233 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %0, i32 noundef %21, ptr noundef nonnull %4, ptr noundef nonnull %16) #4
  %234 = load i16, ptr %4, align 2, !tbaa !35
  %235 = zext i16 %234 to i32
  store i32 %235, ptr %28, align 4, !tbaa !51
  br label %238

236:                                              ; preds = %230
  %237 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %0, i32 noundef %21, ptr noundef nonnull %16) #4
  br label %238

238:                                              ; preds = %236, %232
  %239 = load ptr, ptr %16, align 8, !tbaa !42
  %240 = load i32, ptr %28, align 4, !tbaa !51
  %241 = icmp ugt i32 %240, 4
  br i1 %241, label %242, label %245

242:                                              ; preds = %238
  %243 = call fastcc i32 @TIFFWriteData(ptr noundef %0, ptr noundef %1, ptr noundef %239), !range !53
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %248, label %247

245:                                              ; preds = %238
  %246 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 3
  call void @_TIFFmemcpy(ptr noundef nonnull %246, ptr noundef %239, i32 noundef %240) #4
  br label %247

247:                                              ; preds = %245, %242
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #4
  br label %282

248:                                              ; preds = %242
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #4
  br label %283

249:                                              ; preds = %228
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %17) #4
  %250 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %0, i32 noundef %21, ptr noundef nonnull %17) #4
  %251 = load i32, ptr %28, align 4, !tbaa !51
  %252 = icmp ugt i32 %251, 4
  br i1 %252, label %253, label %256

253:                                              ; preds = %249
  %254 = call fastcc i32 @TIFFWriteData(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %17), !range !53
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %259, label %258

256:                                              ; preds = %249
  %257 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 3
  call void @_TIFFmemcpy(ptr noundef nonnull %257, ptr noundef nonnull %17, i32 noundef %251) #4
  br label %258

258:                                              ; preds = %256, %253
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %17) #4
  br label %282

259:                                              ; preds = %253
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %17) #4
  br label %283

260:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #4
  switch i16 %20, label %268 [
    i16 -1, label %261
    i16 -3, label %265
  ]

261:                                              ; preds = %260
  %262 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %0, i32 noundef %21, ptr noundef nonnull %4, ptr noundef nonnull %18) #4
  %263 = load i16, ptr %4, align 2, !tbaa !35
  %264 = zext i16 %263 to i32
  store i32 %264, ptr %28, align 4, !tbaa !51
  br label %270

265:                                              ; preds = %260
  %266 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %0, i32 noundef %21, ptr noundef nonnull %5, ptr noundef nonnull %18) #4
  %267 = load i32, ptr %5, align 4, !tbaa !29
  store i32 %267, ptr %28, align 4, !tbaa !51
  br label %270

268:                                              ; preds = %260
  %269 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %0, i32 noundef %21, ptr noundef nonnull %18) #4
  br label %270

270:                                              ; preds = %265, %268, %261
  %271 = load ptr, ptr %18, align 8, !tbaa !42
  %272 = load i32, ptr %28, align 4, !tbaa !51
  %273 = icmp ugt i32 %272, 4
  br i1 %273, label %274, label %277

274:                                              ; preds = %270
  %275 = call fastcc i32 @TIFFWriteData(ptr noundef %0, ptr noundef %1, ptr noundef %271), !range !53
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %280, label %279

277:                                              ; preds = %270
  %278 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 3
  call void @_TIFFmemcpy(ptr noundef nonnull %278, ptr noundef %271, i32 noundef %272) #4
  br label %279

279:                                              ; preds = %277, %274
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #4
  br label %282

280:                                              ; preds = %274
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #4
  br label %283

281:                                              ; preds = %56, %52, %64, %61
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #4
  br label %282

282:                                              ; preds = %279, %258, %247, %226, %180, %165, %115, %281, %194, %204, %168, %183, %132, %140, %121, %118, %94, %70, %3
  br label %283

283:                                              ; preds = %280, %259, %248, %227, %70, %118, %132, %140, %168, %183, %194, %204, %282
  %284 = phi i32 [ 1, %282 ], [ 0, %280 ], [ 0, %248 ], [ 0, %259 ], [ 0, %227 ], [ 0, %194 ], [ 0, %204 ], [ 0, %168 ], [ 0, %183 ], [ 0, %132 ], [ 0, %140 ], [ 0, %118 ], [ 0, %70 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #4
  ret i32 %284
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @TIFFSwabArrayOfShort(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @TIFFSwabArrayOfLong(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @TIFFSwabShort(ptr noundef) local_unnamed_addr #2

declare void @TIFFSwabLong(ptr noundef) local_unnamed_addr #2

declare void @TIFFFreeDirectory(ptr noundef) local_unnamed_addr #2

declare i32 @TIFFDefaultDirectory(ptr noundef) local_unnamed_addr #2

declare i32 @TIFFGetField(ptr noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @TIFFWriteData(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !16
  %6 = and i32 %5, 128
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %28, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 1
  %10 = load i16, ptr %9, align 2, !tbaa !50
  switch i16 %10, label %28 [
    i16 3, label %11
    i16 8, label %11
    i16 4, label %15
    i16 9, label %15
    i16 11, label %15
    i16 5, label %19
    i16 10, label %19
    i16 12, label %24
  ]

11:                                               ; preds = %8, %8
  %12 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !51
  %14 = zext i32 %13 to i64
  tail call void @TIFFSwabArrayOfShort(ptr noundef %2, i64 noundef %14) #4
  br label %28

15:                                               ; preds = %8, %8, %8
  %16 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !51
  %18 = zext i32 %17 to i64
  tail call void @TIFFSwabArrayOfLong(ptr noundef %2, i64 noundef %18) #4
  br label %28

19:                                               ; preds = %8, %8
  %20 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !51
  %22 = shl i32 %21, 1
  %23 = zext i32 %22 to i64
  tail call void @TIFFSwabArrayOfLong(ptr noundef %2, i64 noundef %23) #4
  br label %28

24:                                               ; preds = %8
  %25 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !51
  %27 = zext i32 %26 to i64
  tail call void @TIFFSwabArrayOfDouble(ptr noundef %2, i64 noundef %27) #4
  br label %28

28:                                               ; preds = %11, %15, %19, %24, %8, %3
  %29 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 15
  %30 = load i32, ptr %29, align 8, !tbaa !37
  %31 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 3
  store i32 %30, ptr %31, align 4, !tbaa !52
  %32 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !51
  %34 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 1
  %35 = load i16, ptr %34, align 2, !tbaa !50
  %36 = zext i16 %35 to i64
  %37 = getelementptr inbounds [0 x i32], ptr @tiffDataWidth, i64 0, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !29
  %39 = mul i32 %38, %33
  %40 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 51
  %41 = load ptr, ptr %40, align 8, !tbaa !27
  %42 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 48
  %43 = load ptr, ptr %42, align 8, !tbaa !28
  %44 = tail call i32 %41(ptr noundef %43, i32 noundef %30, i32 noundef 0) #4
  %45 = load i32, ptr %31, align 4, !tbaa !52
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %28
  %48 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 50
  %49 = load ptr, ptr %48, align 8, !tbaa !31
  %50 = load ptr, ptr %42, align 8, !tbaa !28
  %51 = tail call i32 %49(ptr noundef %50, ptr noundef %2, i32 noundef %39) #4
  %52 = icmp eq i32 %51, %39
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = add nsw i32 %39, 1
  %55 = and i32 %54, -2
  %56 = load i32, ptr %29, align 8, !tbaa !37
  %57 = add nsw i32 %56, %55
  store i32 %57, ptr %29, align 8, !tbaa !37
  br label %65

58:                                               ; preds = %47, %28
  %59 = load ptr, ptr %0, align 8, !tbaa !18
  %60 = load i16, ptr %1, align 4, !tbaa !48
  %61 = zext i16 %60 to i32
  %62 = tail call ptr @_TIFFFieldWithTag(ptr noundef nonnull %0, i32 noundef %61) #4
  %63 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %62, i64 0, i32 7
  %64 = load ptr, ptr %63, align 8, !tbaa !89
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %59, ptr noundef nonnull @.str.6, ptr noundef %64) #4
  br label %65

65:                                               ; preds = %58, %53
  %66 = phi i32 [ 1, %53 ], [ 0, %58 ]
  ret i32 %66
}

declare void @TIFFSwabArrayOfDouble(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @_TIFFFieldWithTag(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @TIFFWarning(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @_TIFFmemcmp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 12}
!6 = !{!"tiff", !7, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !11, i64 32, !15, i64 504, !7, i64 512, !7, i64 520, !7, i64 528, !10, i64 536, !12, i64 540, !10, i64 544, !10, i64 548, !10, i64 552, !12, i64 556, !10, i64 560, !10, i64 564, !10, i64 568, !10, i64 572, !7, i64 576, !7, i64 584, !7, i64 592, !7, i64 600, !7, i64 608, !7, i64 616, !7, i64 624, !7, i64 632, !7, i64 640, !7, i64 648, !7, i64 656, !7, i64 664, !7, i64 672, !7, i64 680, !7, i64 688, !7, i64 696, !7, i64 704, !10, i64 712, !10, i64 716, !7, i64 720, !10, i64 728, !7, i64 736, !10, i64 744, !7, i64 752, !10, i64 760, !7, i64 768, !7, i64 776, !7, i64 784, !7, i64 792, !7, i64 800, !7, i64 808, !7, i64 816, !7, i64 824, !7, i64 832, !7, i64 840, !10, i64 848, !7, i64 856, !7, i64 864, !7, i64 872}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"", !8, i64 0, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !12, i64 52, !12, i64 54, !12, i64 56, !12, i64 58, !12, i64 60, !12, i64 62, !12, i64 64, !12, i64 66, !10, i64 68, !12, i64 72, !12, i64 74, !13, i64 80, !13, i64 88, !14, i64 96, !14, i64 100, !12, i64 104, !12, i64 106, !14, i64 108, !14, i64 112, !8, i64 116, !8, i64 120, !8, i64 144, !12, i64 148, !7, i64 152, !13, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !10, i64 240, !10, i64 244, !7, i64 248, !7, i64 256, !12, i64 264, !7, i64 272, !7, i64 280, !8, i64 288, !12, i64 292, !7, i64 296, !7, i64 304, !7, i64 312, !8, i64 320, !12, i64 344, !12, i64 346, !8, i64 348, !10, i64 352, !7, i64 360, !7, i64 368, !10, i64 376, !7, i64 384, !10, i64 392, !7, i64 400, !10, i64 408, !7, i64 416, !10, i64 424, !10, i64 428, !7, i64 432, !7, i64 440, !14, i64 448, !7, i64 456, !7, i64 464}
!12 = !{!"short", !8, i64 0}
!13 = !{!"double", !8, i64 0}
!14 = !{!"float", !8, i64 0}
!15 = !{!"", !12, i64 0, !12, i64 2, !10, i64 4}
!16 = !{!6, !10, i64 16}
!17 = !{!6, !7, i64 608}
!18 = !{!6, !7, i64 0}
!19 = !{!6, !7, i64 664}
!20 = !{!6, !10, i64 744}
!21 = !{!6, !7, i64 720}
!22 = !{!23, !23, i64 0}
!23 = !{!"long", !8, i64 0}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.unroll.disable"}
!26 = !{!6, !10, i64 20}
!27 = !{!6, !7, i64 808}
!28 = !{!6, !7, i64 784}
!29 = !{!10, !10, i64 0}
!30 = !{!6, !10, i64 560}
!31 = !{!6, !7, i64 800}
!32 = !{!6, !12, i64 556}
!33 = !{!6, !10, i64 508}
!34 = !{!6, !7, i64 792}
!35 = !{!12, !12, i64 0}
!36 = distinct !{!36, !25}
!37 = !{!6, !10, i64 552}
!38 = !{!6, !12, i64 540}
!39 = !{!11, !12, i64 148}
!40 = !{!6, !10, i64 848}
!41 = !{!6, !7, i64 840}
!42 = !{!7, !7, i64 0}
!43 = !{!44, !12, i64 12}
!44 = !{!"", !10, i64 0, !12, i64 4, !12, i64 6, !10, i64 8, !12, i64 12, !8, i64 14, !8, i64 15, !7, i64 16}
!45 = !{!44, !10, i64 0}
!46 = !{!11, !10, i64 244}
!47 = !{!11, !7, i64 248}
!48 = !{!49, !12, i64 0}
!49 = !{!"", !12, i64 0, !12, i64 2, !10, i64 4, !10, i64 8}
!50 = !{!49, !12, i64 2}
!51 = !{!49, !10, i64 4}
!52 = !{!49, !10, i64 8}
!53 = !{i32 0, i32 2}
!54 = !{!11, !7, i64 256}
!55 = !{!11, !10, i64 68}
!56 = !{!6, !12, i64 504}
!57 = !{!6, !7, i64 528}
!58 = !{!6, !7, i64 520}
!59 = !{!6, !12, i64 84}
!60 = distinct !{!60, !25}
!61 = !{!11, !10, i64 24}
!62 = !{!11, !10, i64 28}
!63 = !{!11, !10, i64 36}
!64 = !{!11, !10, i64 40}
!65 = !{!6, !12, i64 98}
!66 = distinct !{!66, !25}
!67 = !{!13, !13, i64 0}
!68 = distinct !{!68, !25}
!69 = !{!8, !8, i64 0}
!70 = distinct !{!70, !25}
!71 = distinct !{!71, !25}
!72 = distinct !{!72, !25}
!73 = distinct !{!73, !25}
!74 = distinct !{!74, !25}
!75 = distinct !{!75, !25}
!76 = !{!14, !14, i64 0}
!77 = distinct !{!77, !25}
!78 = !{!11, !10, i64 352}
!79 = !{!11, !7, i64 360}
!80 = !{!11, !12, i64 52}
!81 = !{!11, !12, i64 66}
!82 = distinct !{!82, !25}
!83 = !{!6, !10, i64 24}
!84 = distinct !{!84, !25}
!85 = !{!6, !7, i64 680}
!86 = !{!6, !10, i64 548}
!87 = !{!6, !10, i64 536}
!88 = !{!6, !10, i64 544}
!89 = !{!44, !7, i64 16}
!90 = distinct !{!90, !25}
!91 = distinct !{!91, !25}
!92 = !{!44, !12, i64 6}
!93 = !{!44, !10, i64 8}
