; ModuleID = 'src/tif_dirread.c'
source_filename = "src/tif_dirread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.tiff = type { ptr, i32, i32, i32, i32, i32, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i32, i16, i32, i32, i32, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i32 }
%struct.TIFFDirEntry = type { i16, i16, i32, i32 }
%struct.TIFFFieldInfo = type { i32, i16, i16, i32, i16, i8, i8, ptr }

@.str = private unnamed_addr constant [36 x i8] c"Seek error accessing TIFF directory\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Can not read TIFF directory count\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"to read TIFF directory\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Can not read TIFF directory\00", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"invalid TIFF directory; tags are not sorted in ascending order\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"unknown field with tag %d (0x%x) ignored\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"wrong data type %d for \22%s\22; tag ignored\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"ImageLength\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"PlanarConfiguration\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"TileOffsets\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"StripOffsets\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"to read \22TransferFunction\22 tag\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"Colormap\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"StripByteCounts\00", align 1
@.str.14 = private unnamed_addr constant [76 x i8] c"TIFF directory is missing required \22%s\22 field, calculating from imagelength\00", align 1
@.str.15 = private unnamed_addr constant [60 x i8] c"Bogus \22%s\22 field, ignoring and calculating from imagelength\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"No space %s\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"for \22StripByteCounts\22 array\00", align 1
@tiffDataWidth = external local_unnamed_addr constant [0 x i32], align 4
@.str.18 = private unnamed_addr constant [46 x i8] c"TIFF directory is missing required \22%s\22 field\00", align 1
@.str.19 = private unnamed_addr constant [65 x i8] c"incorrect count for field \22%s\22 (%lu, expecting %lu); tag ignored\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"Error fetching data for field \22%s\22\00", align 1
@TIFFFetchNormalTag.mesg = internal constant [19 x i8] c"to fetch tag value\00", align 16
@.str.21 = private unnamed_addr constant [28 x i8] c"to fetch array of rationals\00", align 1
@.str.22 = private unnamed_addr constant [47 x i8] c"%s: Rational with zero denominator (num = %lu)\00", align 1
@.str.23 = private unnamed_addr constant [57 x i8] c"Cannot handle different per-sample values for field \22%s\22\00", align 1
@.str.24 = private unnamed_addr constant [44 x i8] c"Cannot read TIFF_ANY type %d for field \22%s\22\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"for strip array\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"to fetch strip tag\00", align 1
@TIFFFetchRefBlackWhite.mesg = internal constant [32 x i8] c"for \22ReferenceBlackWhite\22 array\00", align 16
@.str.27 = private unnamed_addr constant [36 x i8] c"for chopped \22StripByteCounts\22 array\00", align 1
@.str.28 = private unnamed_addr constant [33 x i8] c"for chopped \22StripOffsets\22 array\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @TIFFReadDirectory(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [2 x i16], align 2
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #4
  %7 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 4
  store i32 %8, ptr %9, align 4, !tbaa !16
  %10 = icmp eq i32 %8, 0
  br i1 %10, label %728, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 34
  %13 = load ptr, ptr %12, align 8, !tbaa !17
  tail call void %13(ptr noundef %0) #4
  %14 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 12
  %15 = load i16, ptr %14, align 4, !tbaa !18
  %16 = add i16 %15, 1
  store i16 %16, ptr %14, align 4, !tbaa !18
  store i32 0, ptr %6, align 4, !tbaa !19
  %17 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !20
  %19 = and i32 %18, 2048
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %71

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 51
  %23 = load ptr, ptr %22, align 8, !tbaa !21
  %24 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 48
  %25 = load ptr, ptr %24, align 8, !tbaa !22
  %26 = load i32, ptr %9, align 4, !tbaa !16
  %27 = tail call i32 %23(ptr noundef %25, i32 noundef %26, i32 noundef 0) #4
  %28 = load i32, ptr %9, align 4, !tbaa !16
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %32, label %30

30:                                               ; preds = %21
  %31 = load ptr, ptr %0, align 8, !tbaa !23
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %31, ptr noundef nonnull @.str) #4
  br label %728

32:                                               ; preds = %21
  %33 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 49
  %34 = load ptr, ptr %33, align 8, !tbaa !24
  %35 = load ptr, ptr %24, align 8, !tbaa !22
  %36 = call i32 %34(ptr noundef %35, ptr noundef nonnull %5, i32 noundef 2) #4
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %40, label %38

38:                                               ; preds = %32
  %39 = load ptr, ptr %0, align 8, !tbaa !23
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %39, ptr noundef nonnull @.str.1) #4
  br label %728

40:                                               ; preds = %32
  %41 = load i32, ptr %17, align 8, !tbaa !20
  %42 = and i32 %41, 128
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  call void @TIFFSwabShort(ptr noundef nonnull %5) #4
  br label %45

45:                                               ; preds = %44, %40
  %46 = load i16, ptr %5, align 2, !tbaa !25
  %47 = zext i16 %46 to i32
  %48 = mul nuw nsw i32 %47, 12
  %49 = call ptr @_TIFFmalloc(i32 noundef %48) #4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load ptr, ptr %0, align 8, !tbaa !23
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %52, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.2) #4
  br label %728

53:                                               ; preds = %45
  %54 = load ptr, ptr %33, align 8, !tbaa !24
  %55 = load ptr, ptr %24, align 8, !tbaa !22
  %56 = load i16, ptr %5, align 2, !tbaa !25
  %57 = zext i16 %56 to i32
  %58 = mul nuw nsw i32 %57, 12
  %59 = call i32 %54(ptr noundef %55, ptr noundef nonnull %49, i32 noundef %58) #4
  %60 = sext i32 %59 to i64
  %61 = load i16, ptr %5, align 2, !tbaa !25
  %62 = zext i16 %61 to i64
  %63 = mul nuw nsw i64 %62, 12
  %64 = icmp eq i64 %63, %60
  br i1 %64, label %67, label %65

65:                                               ; preds = %53
  %66 = load ptr, ptr %0, align 8, !tbaa !23
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %66, ptr noundef nonnull @.str.3) #4
  br label %724

67:                                               ; preds = %53
  %68 = load ptr, ptr %33, align 8, !tbaa !24
  %69 = load ptr, ptr %24, align 8, !tbaa !22
  %70 = call i32 %68(ptr noundef %69, ptr noundef nonnull %6, i32 noundef 4) #4
  br label %123

71:                                               ; preds = %11
  %72 = load i32, ptr %9, align 4, !tbaa !16
  %73 = add i32 %72, 2
  %74 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 45
  %75 = load i32, ptr %74, align 8, !tbaa !26
  %76 = icmp sgt i32 %73, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = load ptr, ptr %0, align 8, !tbaa !23
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %78, ptr noundef nonnull @.str.1) #4
  br label %120

79:                                               ; preds = %71
  %80 = sext i32 %72 to i64
  %81 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 44
  %82 = load ptr, ptr %81, align 8, !tbaa !27
  %83 = getelementptr inbounds i8, ptr %82, i64 %80
  call void @_TIFFmemcpy(ptr noundef nonnull %5, ptr noundef %83, i32 noundef 2) #4
  %84 = load i32, ptr %17, align 8, !tbaa !20
  %85 = and i32 %84, 128
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %79
  call void @TIFFSwabShort(ptr noundef nonnull %5) #4
  br label %88

88:                                               ; preds = %87, %79
  %89 = load i16, ptr %5, align 2, !tbaa !25
  %90 = zext i16 %89 to i32
  %91 = mul nuw nsw i32 %90, 12
  %92 = call ptr @_TIFFmalloc(i32 noundef %91) #4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  %95 = load ptr, ptr %0, align 8, !tbaa !23
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %95, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.2) #4
  br label %120

96:                                               ; preds = %88
  %97 = load i16, ptr %5, align 2, !tbaa !25
  %98 = zext i16 %97 to i32
  %99 = mul nuw nsw i32 %98, 12
  %100 = add i32 %99, %73
  %101 = load i32, ptr %74, align 8, !tbaa !26
  %102 = icmp sgt i32 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %96
  %104 = load ptr, ptr %0, align 8, !tbaa !23
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %104, ptr noundef nonnull @.str.3) #4
  br label %120

105:                                              ; preds = %96
  %106 = sext i32 %73 to i64
  %107 = load ptr, ptr %81, align 8, !tbaa !27
  %108 = getelementptr inbounds i8, ptr %107, i64 %106
  call void @_TIFFmemcpy(ptr noundef nonnull %92, ptr noundef %108, i32 noundef %99) #4
  %109 = load i16, ptr %5, align 2, !tbaa !25
  %110 = zext i16 %109 to i32
  %111 = mul nuw nsw i32 %110, 12
  %112 = add i32 %111, %73
  %113 = add i32 %112, 4
  %114 = load i32, ptr %74, align 8, !tbaa !26
  %115 = icmp sgt i32 %113, %114
  br i1 %115, label %120, label %116

116:                                              ; preds = %105
  %117 = sext i32 %112 to i64
  %118 = load ptr, ptr %81, align 8, !tbaa !27
  %119 = getelementptr inbounds i8, ptr %118, i64 %117
  call void @_TIFFmemcpy(ptr noundef nonnull %6, ptr noundef %119, i32 noundef 4) #4
  br label %120

120:                                              ; preds = %94, %105, %116, %103, %77
  %121 = phi ptr [ undef, %77 ], [ %92, %103 ], [ null, %94 ], [ %92, %116 ], [ %92, %105 ]
  %122 = phi i32 [ 1, %77 ], [ 2, %103 ], [ 1, %94 ], [ 0, %116 ], [ 0, %105 ]
  switch i32 %122, label %728 [
    i32 0, label %123
    i32 2, label %724
  ]

123:                                              ; preds = %120, %67
  %124 = phi ptr [ %121, %120 ], [ %49, %67 ]
  %125 = load i32, ptr %17, align 8, !tbaa !20
  %126 = and i32 %125, 128
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %123
  call void @TIFFSwabLong(ptr noundef nonnull %6) #4
  br label %129

129:                                              ; preds = %128, %123
  %130 = load i32, ptr %6, align 4, !tbaa !19
  store i32 %130, ptr %7, align 8, !tbaa !5
  %131 = load i32, ptr %17, align 8, !tbaa !20
  %132 = and i32 %131, -65
  store i32 %132, ptr %17, align 8, !tbaa !20
  %133 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6
  call void @TIFFFreeDirectory(ptr noundef %0) #4
  %134 = call i32 @TIFFDefaultDirectory(ptr noundef %0) #4
  %135 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %0, i32 noundef 284, i32 noundef 1) #4
  %136 = load i16, ptr %5, align 2, !tbaa !25
  %137 = icmp eq i16 %136, 0
  br i1 %137, label %159, label %138

138:                                              ; preds = %129
  %139 = zext i16 %136 to i32
  br label %140

140:                                              ; preds = %138, %155
  %141 = phi ptr [ %157, %155 ], [ %124, %138 ]
  %142 = phi i32 [ %156, %155 ], [ %139, %138 ]
  %143 = load i32, ptr %17, align 8, !tbaa !20
  %144 = and i32 %143, 128
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %148, label %146

146:                                              ; preds = %140
  call void @TIFFSwabArrayOfShort(ptr noundef %141, i64 noundef 2) #4
  %147 = getelementptr inbounds %struct.TIFFDirEntry, ptr %141, i64 0, i32 2
  call void @TIFFSwabArrayOfLong(ptr noundef nonnull %147, i64 noundef 2) #4
  br label %148

148:                                              ; preds = %146, %140
  %149 = load i16, ptr %141, align 4, !tbaa !28
  %150 = icmp eq i16 %149, 277
  br i1 %150, label %151, label %155

151:                                              ; preds = %148
  %152 = call fastcc i32 @TIFFFetchNormalTag(ptr noundef %0, ptr noundef nonnull %141)
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %724, label %154

154:                                              ; preds = %151
  store i16 0, ptr %141, align 4, !tbaa !28
  br label %155

155:                                              ; preds = %148, %154
  %156 = add nsw i32 %142, -1
  %157 = getelementptr inbounds %struct.TIFFDirEntry, ptr %141, i64 1
  %158 = icmp sgt i32 %142, 1
  br i1 %158, label %140, label %159, !llvm.loop !30

159:                                              ; preds = %155, %129
  %160 = load i16, ptr %5, align 2, !tbaa !25
  %161 = icmp eq i16 %160, 0
  br i1 %161, label %351, label %162

162:                                              ; preds = %159
  %163 = zext i16 %160 to i32
  %164 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 55
  %165 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 56
  %166 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 15
  %167 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 7
  %168 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 10
  %169 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 9
  %170 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 10
  br label %171

171:                                              ; preds = %162, %345
  %172 = phi ptr [ %124, %162 ], [ %349, %345 ]
  %173 = phi i32 [ 0, %162 ], [ %347, %345 ]
  %174 = phi i32 [ %163, %162 ], [ %348, %345 ]
  %175 = phi i32 [ 0, %162 ], [ %346, %345 ]
  %176 = load i16, ptr %172, align 4, !tbaa !28
  %177 = zext i16 %176 to i32
  %178 = call i32 @TIFFReassignTagToIgnore(i32 noundef 1, i32 noundef %177) #4
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %181, label %180

180:                                              ; preds = %171
  store i16 0, ptr %172, align 4, !tbaa !28
  br label %181

181:                                              ; preds = %180, %171
  %182 = load i16, ptr %172, align 4, !tbaa !28
  %183 = icmp eq i16 %182, 0
  br i1 %183, label %345, label %184

184:                                              ; preds = %181
  %185 = zext i16 %182 to i32
  %186 = load ptr, ptr %164, align 8, !tbaa !32
  %187 = sext i32 %175 to i64
  %188 = getelementptr inbounds ptr, ptr %186, i64 %187
  %189 = load ptr, ptr %188, align 8, !tbaa !33
  %190 = load i32, ptr %189, align 8, !tbaa !34
  %191 = icmp ugt i32 %190, %185
  br i1 %191, label %192, label %196

192:                                              ; preds = %184
  %193 = icmp eq i32 %173, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %192
  %195 = load ptr, ptr %0, align 8, !tbaa !23
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %195, ptr noundef nonnull @.str.4) #4
  br label %196

196:                                              ; preds = %192, %194, %184
  %197 = phi i32 [ %175, %184 ], [ 0, %194 ], [ 0, %192 ]
  %198 = phi i32 [ %173, %184 ], [ 1, %194 ], [ 1, %192 ]
  %199 = load i32, ptr %165, align 8, !tbaa !36
  %200 = icmp slt i32 %197, %199
  br i1 %200, label %201, label %218

201:                                              ; preds = %196
  %202 = load ptr, ptr %164, align 8, !tbaa !32
  %203 = load i16, ptr %172, align 4, !tbaa !28
  %204 = zext i16 %203 to i32
  %205 = sext i32 %197 to i64
  %206 = sext i32 %199 to i64
  br label %207

207:                                              ; preds = %201, %213
  %208 = phi i64 [ %205, %201 ], [ %214, %213 ]
  %209 = getelementptr inbounds ptr, ptr %202, i64 %208
  %210 = load ptr, ptr %209, align 8, !tbaa !33
  %211 = load i32, ptr %210, align 8, !tbaa !34
  %212 = icmp ult i32 %211, %204
  br i1 %212, label %213, label %216

213:                                              ; preds = %207
  %214 = add nsw i64 %208, 1
  %215 = icmp eq i64 %214, %206
  br i1 %215, label %218, label %207, !llvm.loop !37

216:                                              ; preds = %207
  %217 = trunc i64 %208 to i32
  br label %218

218:                                              ; preds = %216, %213, %196
  %219 = phi i32 [ %197, %196 ], [ %217, %216 ], [ %199, %213 ]
  %220 = icmp eq i32 %219, %199
  br i1 %220, label %230, label %221

221:                                              ; preds = %218
  %222 = load ptr, ptr %164, align 8, !tbaa !32
  %223 = sext i32 %219 to i64
  %224 = getelementptr inbounds ptr, ptr %222, i64 %223
  %225 = load ptr, ptr %224, align 8, !tbaa !33
  %226 = load i32, ptr %225, align 8, !tbaa !34
  %227 = load i16, ptr %172, align 4, !tbaa !28
  %228 = zext i16 %227 to i32
  %229 = icmp eq i32 %226, %228
  br i1 %229, label %234, label %230

230:                                              ; preds = %221, %218
  %231 = load ptr, ptr %0, align 8, !tbaa !23
  %232 = load i16, ptr %172, align 4, !tbaa !28
  %233 = zext i16 %232 to i32
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %231, ptr noundef nonnull @.str.5, i32 noundef %233, i32 noundef %233) #4
  store i16 0, ptr %172, align 4, !tbaa !28
  br label %345

234:                                              ; preds = %221
  %235 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %225, i64 0, i32 4
  %236 = load i16, ptr %235, align 4, !tbaa !38
  %237 = icmp eq i16 %236, 0
  br i1 %237, label %241, label %238

238:                                              ; preds = %234
  %239 = getelementptr inbounds %struct.TIFFDirEntry, ptr %172, i64 0, i32 1
  %240 = load i16, ptr %239, align 2, !tbaa !39
  br label %243

241:                                              ; preds = %278, %234, %259
  %242 = phi i32 [ %219, %234 ], [ %245, %278 ], [ %260, %259 ]
  store i16 0, ptr %172, align 4, !tbaa !28
  br label %345

243:                                              ; preds = %238, %255
  %244 = phi ptr [ %256, %255 ], [ %225, %238 ]
  %245 = phi i32 [ %253, %255 ], [ %219, %238 ]
  %246 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %244, i64 0, i32 3
  %247 = load i32, ptr %246, align 8, !tbaa !40
  %248 = trunc i32 %247 to i16
  %249 = icmp eq i16 %240, %248
  %250 = icmp eq i32 %247, 0
  %251 = or i1 %250, %249
  br i1 %251, label %265, label %252

252:                                              ; preds = %243
  %253 = add nsw i32 %245, 1
  %254 = icmp eq i32 %253, %199
  br i1 %254, label %259, label %255

255:                                              ; preds = %252
  %256 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %244, i64 1
  %257 = load i32, ptr %256, align 8, !tbaa !34
  %258 = icmp eq i32 %257, %228
  br i1 %258, label %243, label %259, !llvm.loop !41

259:                                              ; preds = %255, %252
  %260 = phi i32 [ %253, %255 ], [ %199, %252 ]
  %261 = load ptr, ptr %0, align 8, !tbaa !23
  %262 = zext i16 %240 to i32
  %263 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %244, i64 0, i32 7
  %264 = load ptr, ptr %263, align 8, !tbaa !42
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %261, ptr noundef nonnull @.str.6, i32 noundef %262, ptr noundef %264) #4
  br label %241

265:                                              ; preds = %243
  %266 = getelementptr inbounds %struct.TIFFDirEntry, ptr %172, i64 0, i32 1
  %267 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %244, i64 0, i32 1
  %268 = load i16, ptr %267, align 4, !tbaa !43
  %269 = sext i16 %268 to i32
  switch i16 %268, label %273 [
    i16 -1, label %284
    i16 -2, label %270
  ]

270:                                              ; preds = %265
  %271 = load i16, ptr %166, align 2, !tbaa !44
  %272 = zext i16 %271 to i32
  br label %273

273:                                              ; preds = %265, %270
  %274 = phi i32 [ %272, %270 ], [ %269, %265 ]
  %275 = getelementptr inbounds %struct.TIFFDirEntry, ptr %172, i64 0, i32 2
  %276 = load i32, ptr %275, align 4, !tbaa !45
  %277 = icmp eq i32 %276, %274
  br i1 %277, label %284, label %278

278:                                              ; preds = %273
  %279 = load ptr, ptr %0, align 8, !tbaa !23
  %280 = call ptr @_TIFFFieldWithTag(ptr noundef nonnull %0, i32 noundef %228) #4
  %281 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %280, i64 0, i32 7
  %282 = load ptr, ptr %281, align 8, !tbaa !42
  %283 = load i32, ptr %275, align 4, !tbaa !45
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %279, ptr noundef nonnull @.str.19, ptr noundef %282, i32 noundef %283, i32 noundef %274) #4
  br label %241

284:                                              ; preds = %273, %265
  %285 = load i16, ptr %172, align 4, !tbaa !28
  switch i16 %285, label %345 [
    i16 259, label %286
    i16 273, label %328
    i16 279, label %328
    i16 324, label %328
    i16 325, label %328
    i16 256, label %340
    i16 257, label %340
    i16 -32539, label %340
    i16 323, label %340
    i16 322, label %340
    i16 -32538, label %340
    i16 284, label %340
    i16 278, label %340
    i16 338, label %344
  ]

286:                                              ; preds = %284
  %287 = getelementptr inbounds %struct.TIFFDirEntry, ptr %172, i64 0, i32 2
  %288 = load i32, ptr %287, align 4, !tbaa !45
  %289 = icmp eq i32 %288, 1
  br i1 %289, label %290, label %318

290:                                              ; preds = %286
  %291 = load i16, ptr %167, align 8, !tbaa !46
  %292 = icmp eq i16 %291, 19789
  %293 = getelementptr inbounds %struct.TIFFDirEntry, ptr %172, i64 0, i32 3
  %294 = load i32, ptr %293, align 4, !tbaa !47
  br i1 %292, label %295, label %304

295:                                              ; preds = %290
  %296 = load ptr, ptr %169, align 8, !tbaa !48
  %297 = load i16, ptr %266, align 2, !tbaa !39
  %298 = zext i16 %297 to i64
  %299 = getelementptr inbounds i32, ptr %296, i64 %298
  %300 = load i32, ptr %299, align 4, !tbaa !19
  %301 = lshr i32 %294, %300
  %302 = load ptr, ptr %170, align 8, !tbaa !49
  %303 = getelementptr inbounds i64, ptr %302, i64 %298
  br label %309

304:                                              ; preds = %290
  %305 = load ptr, ptr %168, align 8, !tbaa !49
  %306 = load i16, ptr %266, align 2, !tbaa !39
  %307 = zext i16 %306 to i64
  %308 = getelementptr inbounds i64, ptr %305, i64 %307
  br label %309

309:                                              ; preds = %304, %295
  %310 = phi ptr [ %308, %304 ], [ %303, %295 ]
  %311 = phi i32 [ %294, %304 ], [ %301, %295 ]
  %312 = load i64, ptr %310, align 8, !tbaa !50
  %313 = trunc i64 %312 to i32
  %314 = and i32 %311, %313
  %315 = zext i16 %285 to i32
  %316 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %0, i32 noundef %315, i32 noundef %314) #4
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %724, label %345

318:                                              ; preds = %286
  %319 = call fastcc i32 @TIFFFetchPerSampleShorts(ptr noundef %0, ptr noundef nonnull %172, ptr noundef nonnull %3), !range !52
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %724, label %321

321:                                              ; preds = %318
  %322 = load i16, ptr %172, align 4, !tbaa !28
  %323 = zext i16 %322 to i32
  %324 = load i32, ptr %3, align 4, !tbaa !19
  %325 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %0, i32 noundef %323, i32 noundef %324) #4
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %724, label %327

327:                                              ; preds = %321
  store i16 0, ptr %172, align 4, !tbaa !28
  br label %345

328:                                              ; preds = %284, %284, %284, %284
  %329 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %244, i64 0, i32 4
  %330 = load i16, ptr %329, align 4, !tbaa !38
  %331 = zext i16 %330 to i32
  %332 = and i32 %331, 31
  %333 = zext nneg i32 %332 to i64
  %334 = shl nuw nsw i64 1, %333
  %335 = lshr i32 %331, 5
  %336 = zext nneg i32 %335 to i64
  %337 = getelementptr inbounds [3 x i64], ptr %133, i64 0, i64 %336
  %338 = load i64, ptr %337, align 8, !tbaa !50
  %339 = or i64 %334, %338
  store i64 %339, ptr %337, align 8, !tbaa !50
  br label %345

340:                                              ; preds = %284, %284, %284, %284, %284, %284, %284, %284
  %341 = call fastcc i32 @TIFFFetchNormalTag(ptr noundef %0, ptr noundef nonnull %172)
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %724, label %343

343:                                              ; preds = %340
  store i16 0, ptr %172, align 4, !tbaa !28
  br label %345

344:                                              ; preds = %284
  call fastcc void @TIFFFetchExtraSamples(ptr noundef %0, ptr noundef nonnull %172)
  store i16 0, ptr %172, align 4, !tbaa !28
  br label %345

345:                                              ; preds = %327, %328, %343, %344, %284, %309, %181, %241, %230
  %346 = phi i32 [ %175, %181 ], [ 0, %230 ], [ %242, %241 ], [ %245, %284 ], [ %245, %344 ], [ %245, %343 ], [ %245, %328 ], [ %245, %309 ], [ %245, %327 ]
  %347 = phi i32 [ %173, %181 ], [ %198, %230 ], [ %198, %241 ], [ %198, %284 ], [ %198, %344 ], [ %198, %343 ], [ %198, %328 ], [ %198, %309 ], [ %198, %327 ]
  %348 = add nsw i32 %174, -1
  %349 = getelementptr inbounds %struct.TIFFDirEntry, ptr %172, i64 1
  %350 = icmp sgt i32 %174, 1
  br i1 %350, label %171, label %351, !llvm.loop !53

351:                                              ; preds = %345, %159
  %352 = load i64, ptr %133, align 8, !tbaa !50
  %353 = and i64 %352, 2
  %354 = icmp eq i64 %353, 0
  br i1 %354, label %355, label %357

355:                                              ; preds = %351
  %356 = load ptr, ptr %0, align 8, !tbaa !23
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %356, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.7) #4
  br label %724

357:                                              ; preds = %351
  %358 = and i64 %352, 1048576
  %359 = icmp eq i64 %358, 0
  br i1 %359, label %360, label %362

360:                                              ; preds = %357
  %361 = load ptr, ptr %0, align 8, !tbaa !23
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %361, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.8) #4
  br label %724

362:                                              ; preds = %357
  %363 = and i64 %352, 4
  %364 = icmp eq i64 %363, 0
  %365 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 43
  br i1 %364, label %366, label %379

366:                                              ; preds = %362
  %367 = call i32 @TIFFNumberOfStrips(ptr noundef %0) #4
  store i32 %367, ptr %365, align 4, !tbaa !54
  %368 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 1
  %369 = load i32, ptr %368, align 8, !tbaa !55
  %370 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 4
  store i32 %369, ptr %370, align 4, !tbaa !56
  %371 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 16
  %372 = load i32, ptr %371, align 4, !tbaa !57
  %373 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 5
  store i32 %372, ptr %373, align 8, !tbaa !58
  %374 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 3
  %375 = load i32, ptr %374, align 8, !tbaa !59
  %376 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 6
  store i32 %375, ptr %376, align 4, !tbaa !60
  %377 = load i32, ptr %17, align 8, !tbaa !20
  %378 = and i32 %377, -1025
  br label %383

379:                                              ; preds = %362
  %380 = call i32 @TIFFNumberOfTiles(ptr noundef %0) #4
  store i32 %380, ptr %365, align 4, !tbaa !54
  %381 = load i32, ptr %17, align 8, !tbaa !20
  %382 = or i32 %381, 1024
  br label %383

383:                                              ; preds = %379, %366
  %384 = phi i32 [ %378, %366 ], [ %382, %379 ]
  store i32 %384, ptr %17, align 8, !tbaa !20
  %385 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 43
  %386 = load i32, ptr %385, align 4, !tbaa !54
  %387 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 42
  store i32 %386, ptr %387, align 8, !tbaa !61
  %388 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 24
  %389 = load i16, ptr %388, align 2, !tbaa !62
  %390 = icmp eq i16 %389, 2
  br i1 %390, label %391, label %396

391:                                              ; preds = %383
  %392 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 15
  %393 = load i16, ptr %392, align 2, !tbaa !44
  %394 = zext i16 %393 to i32
  %395 = udiv i32 %386, %394
  store i32 %395, ptr %387, align 8, !tbaa !61
  br label %396

396:                                              ; preds = %391, %383
  %397 = load i64, ptr %133, align 8, !tbaa !50
  %398 = and i64 %397, 33554432
  %399 = icmp eq i64 %398, 0
  br i1 %399, label %400, label %405

400:                                              ; preds = %396
  %401 = and i32 %384, 1024
  %402 = icmp eq i32 %401, 0
  %403 = select i1 %402, ptr @.str.10, ptr @.str.9
  %404 = load ptr, ptr %0, align 8, !tbaa !23
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %404, ptr noundef nonnull @.str.18, ptr noundef nonnull %403) #4
  br label %724

405:                                              ; preds = %396
  %406 = load i16, ptr %5, align 2, !tbaa !25
  %407 = icmp eq i16 %406, 0
  br i1 %407, label %619, label %408

408:                                              ; preds = %405
  %409 = zext i16 %406 to i32
  %410 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 7
  %411 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 10
  %412 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 9
  %413 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 10
  %414 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 7
  %415 = getelementptr inbounds i16, ptr %2, i64 1
  %416 = getelementptr inbounds i16, ptr %2, i64 1
  %417 = getelementptr inbounds [2 x i16], ptr %2, i64 0, i64 1
  %418 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 8
  %419 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 45
  %420 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 44
  %421 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 7
  %422 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 10
  %423 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 9
  %424 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 10
  br label %425

425:                                              ; preds = %408, %615
  %426 = phi ptr [ %124, %408 ], [ %617, %615 ]
  %427 = phi i32 [ %409, %408 ], [ %616, %615 ]
  %428 = load i16, ptr %426, align 4, !tbaa !28
  switch i16 %428, label %613 [
    i16 0, label %615
    i16 280, label %429
    i16 281, label %429
    i16 258, label %429
    i16 -32540, label %463
    i16 339, label %463
    i16 340, label %472
    i16 341, label %472
    i16 273, label %481
    i16 324, label %481
    i16 279, label %486
    i16 325, label %486
    i16 320, label %491
    i16 301, label %491
    i16 297, label %530
    i16 321, label %530
    i16 530, label %530
    i16 336, label %530
    i16 532, label %578
    i16 255, label %579
  ]

429:                                              ; preds = %425, %425, %425
  %430 = getelementptr inbounds %struct.TIFFDirEntry, ptr %426, i64 0, i32 2
  %431 = load i32, ptr %430, align 4, !tbaa !45
  %432 = icmp eq i32 %431, 1
  br i1 %432, label %433, label %463

433:                                              ; preds = %429
  %434 = load i16, ptr %421, align 8, !tbaa !46
  %435 = icmp eq i16 %434, 19789
  %436 = getelementptr inbounds %struct.TIFFDirEntry, ptr %426, i64 0, i32 3
  %437 = load i32, ptr %436, align 4, !tbaa !47
  br i1 %435, label %438, label %448

438:                                              ; preds = %433
  %439 = load ptr, ptr %423, align 8, !tbaa !48
  %440 = getelementptr inbounds %struct.TIFFDirEntry, ptr %426, i64 0, i32 1
  %441 = load i16, ptr %440, align 2, !tbaa !39
  %442 = zext i16 %441 to i64
  %443 = getelementptr inbounds i32, ptr %439, i64 %442
  %444 = load i32, ptr %443, align 4, !tbaa !19
  %445 = lshr i32 %437, %444
  %446 = load ptr, ptr %424, align 8, !tbaa !49
  %447 = getelementptr inbounds i64, ptr %446, i64 %442
  br label %454

448:                                              ; preds = %433
  %449 = load ptr, ptr %422, align 8, !tbaa !49
  %450 = getelementptr inbounds %struct.TIFFDirEntry, ptr %426, i64 0, i32 1
  %451 = load i16, ptr %450, align 2, !tbaa !39
  %452 = zext i16 %451 to i64
  %453 = getelementptr inbounds i64, ptr %449, i64 %452
  br label %454

454:                                              ; preds = %448, %438
  %455 = phi ptr [ %453, %448 ], [ %447, %438 ]
  %456 = phi i32 [ %437, %448 ], [ %445, %438 ]
  %457 = load i64, ptr %455, align 8, !tbaa !50
  %458 = trunc i64 %457 to i32
  %459 = and i32 %456, %458
  %460 = zext i16 %428 to i32
  %461 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %0, i32 noundef %460, i32 noundef %459) #4
  %462 = icmp eq i32 %461, 0
  br i1 %462, label %724, label %615

463:                                              ; preds = %425, %425, %429
  %464 = call fastcc i32 @TIFFFetchPerSampleShorts(ptr noundef %0, ptr noundef nonnull %426, ptr noundef nonnull %3), !range !52
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %724, label %466

466:                                              ; preds = %463
  %467 = load i16, ptr %426, align 4, !tbaa !28
  %468 = zext i16 %467 to i32
  %469 = load i32, ptr %3, align 4, !tbaa !19
  %470 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %0, i32 noundef %468, i32 noundef %469) #4
  %471 = icmp eq i32 %470, 0
  br i1 %471, label %724, label %615

472:                                              ; preds = %425, %425
  %473 = call fastcc i32 @TIFFFetchPerSampleAnys(ptr noundef %0, ptr noundef nonnull %426, ptr noundef nonnull %4), !range !52
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %724, label %475

475:                                              ; preds = %472
  %476 = load i16, ptr %426, align 4, !tbaa !28
  %477 = zext i16 %476 to i32
  %478 = load double, ptr %4, align 8, !tbaa !63
  %479 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %0, i32 noundef %477, double noundef %478) #4
  %480 = icmp eq i32 %479, 0
  br i1 %480, label %724, label %615

481:                                              ; preds = %425, %425
  %482 = load i32, ptr %385, align 4, !tbaa !54
  %483 = zext i32 %482 to i64
  %484 = call fastcc i32 @TIFFFetchStripThing(ptr noundef %0, ptr noundef nonnull %426, i64 noundef %483, ptr noundef nonnull %420)
  %485 = icmp eq i32 %484, 0
  br i1 %485, label %724, label %615

486:                                              ; preds = %425, %425
  %487 = load i32, ptr %385, align 4, !tbaa !54
  %488 = zext i32 %487 to i64
  %489 = call fastcc i32 @TIFFFetchStripThing(ptr noundef %0, ptr noundef nonnull %426, i64 noundef %488, ptr noundef nonnull %419)
  %490 = icmp eq i32 %489, 0
  br i1 %490, label %724, label %615

491:                                              ; preds = %425, %425
  %492 = load i16, ptr %418, align 4, !tbaa !64
  %493 = zext nneg i16 %492 to i64
  %494 = icmp eq i16 %428, 320
  br i1 %494, label %501, label %495

495:                                              ; preds = %491
  %496 = shl nuw i64 1, %493
  %497 = getelementptr inbounds %struct.TIFFDirEntry, ptr %426, i64 0, i32 2
  %498 = load i32, ptr %497, align 4, !tbaa !45
  %499 = trunc i64 %496 to i32
  %500 = icmp eq i32 %498, %499
  br i1 %500, label %506, label %501

501:                                              ; preds = %495, %491
  %502 = shl i64 3, %493
  %503 = trunc i64 %502 to i32
  %504 = call fastcc i32 @CheckDirCount(ptr noundef %0, ptr noundef nonnull %426, i32 noundef %503), !range !52
  %505 = icmp eq i32 %504, 0
  br i1 %505, label %615, label %506

506:                                              ; preds = %501, %495
  %507 = shl i64 2, %493
  %508 = getelementptr inbounds %struct.TIFFDirEntry, ptr %426, i64 0, i32 2
  %509 = load i32, ptr %508, align 4, !tbaa !45
  %510 = shl i32 %509, 1
  %511 = call fastcc ptr @CheckMalloc(ptr noundef %0, i32 noundef %510, ptr noundef nonnull @.str.11)
  %512 = icmp eq ptr %511, null
  br i1 %512, label %615, label %513

513:                                              ; preds = %506
  %514 = call fastcc i32 @TIFFFetchData(ptr noundef %0, ptr noundef nonnull %426, ptr noundef nonnull %511)
  %515 = icmp eq i32 %514, 0
  br i1 %515, label %529, label %516

516:                                              ; preds = %513
  %517 = load i16, ptr %418, align 4, !tbaa !64
  %518 = zext nneg i16 %517 to i32
  %519 = shl nuw i32 1, %518
  %520 = load i32, ptr %508, align 4, !tbaa !45
  %521 = icmp eq i32 %520, %519
  %522 = select i1 %521, i64 0, i64 %507
  %523 = load i16, ptr %426, align 4, !tbaa !28
  %524 = zext i16 %523 to i32
  %525 = getelementptr inbounds i8, ptr %511, i64 %522
  %526 = shl nsw i64 %522, 1
  %527 = getelementptr inbounds i8, ptr %511, i64 %526
  %528 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %0, i32 noundef %524, ptr noundef nonnull %511, ptr noundef nonnull %525, ptr noundef nonnull %527) #4
  br label %529

529:                                              ; preds = %516, %513
  call void @_TIFFfree(ptr noundef nonnull %511) #4
  br label %615

530:                                              ; preds = %425, %425, %425, %425
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #4
  %531 = getelementptr inbounds %struct.TIFFDirEntry, ptr %426, i64 0, i32 1
  %532 = load i16, ptr %531, align 2, !tbaa !39
  switch i16 %532, label %566 [
    i16 3, label %533
    i16 8, label %533
    i16 1, label %564
    i16 6, label %564
  ]

533:                                              ; preds = %530, %530
  %534 = getelementptr inbounds %struct.TIFFDirEntry, ptr %426, i64 0, i32 2
  %535 = load i32, ptr %534, align 4, !tbaa !45
  %536 = icmp ult i32 %535, 3
  br i1 %536, label %537, label %560

537:                                              ; preds = %533
  %538 = load i16, ptr %414, align 8, !tbaa !46
  %539 = icmp eq i16 %538, 19789
  br i1 %539, label %540, label %550

540:                                              ; preds = %537
  switch i32 %535, label %566 [
    i32 2, label %541
    i32 1, label %545
  ]

541:                                              ; preds = %540
  %542 = getelementptr inbounds %struct.TIFFDirEntry, ptr %426, i64 0, i32 3
  %543 = load i32, ptr %542, align 4, !tbaa !47
  %544 = trunc i32 %543 to i16
  store i16 %544, ptr %416, align 2, !tbaa !25
  br label %545

545:                                              ; preds = %541, %540
  %546 = getelementptr inbounds %struct.TIFFDirEntry, ptr %426, i64 0, i32 3
  %547 = load i32, ptr %546, align 4, !tbaa !47
  %548 = lshr i32 %547, 16
  %549 = trunc i32 %548 to i16
  store i16 %549, ptr %2, align 2, !tbaa !25
  br label %566

550:                                              ; preds = %537
  switch i32 %535, label %566 [
    i32 2, label %551
    i32 1, label %556
  ]

551:                                              ; preds = %550
  %552 = getelementptr inbounds %struct.TIFFDirEntry, ptr %426, i64 0, i32 3
  %553 = load i32, ptr %552, align 4, !tbaa !47
  %554 = lshr i32 %553, 16
  %555 = trunc i32 %554 to i16
  store i16 %555, ptr %415, align 2, !tbaa !25
  br label %556

556:                                              ; preds = %551, %550
  %557 = getelementptr inbounds %struct.TIFFDirEntry, ptr %426, i64 0, i32 3
  %558 = load i32, ptr %557, align 4, !tbaa !47
  %559 = trunc i32 %558 to i16
  store i16 %559, ptr %2, align 2, !tbaa !25
  br label %566

560:                                              ; preds = %533
  %561 = call fastcc i32 @TIFFFetchData(ptr noundef %0, ptr noundef nonnull %426, ptr noundef nonnull %2)
  %562 = icmp ne i32 %561, 0
  %563 = zext i1 %562 to i32
  br label %566

564:                                              ; preds = %530, %530
  %565 = call fastcc i32 @TIFFFetchByteArray(ptr noundef %0, ptr noundef nonnull %426, ptr noundef nonnull %2), !range !52
  br label %566

566:                                              ; preds = %564, %560, %556, %550, %545, %540, %530
  %567 = phi i32 [ 0, %530 ], [ %565, %564 ], [ %563, %560 ], [ 1, %550 ], [ 1, %556 ], [ 1, %540 ], [ 1, %545 ]
  %568 = icmp eq i32 %567, 0
  br i1 %568, label %577, label %569

569:                                              ; preds = %566
  %570 = load i16, ptr %426, align 4, !tbaa !28
  %571 = zext i16 %570 to i32
  %572 = load i16, ptr %2, align 2, !tbaa !25
  %573 = zext i16 %572 to i32
  %574 = load i16, ptr %417, align 2, !tbaa !25
  %575 = zext i16 %574 to i32
  %576 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %0, i32 noundef %571, i32 noundef %573, i32 noundef %575) #4
  br label %577

577:                                              ; preds = %566, %569
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #4
  br label %615

578:                                              ; preds = %425
  call fastcc void @TIFFFetchRefBlackWhite(ptr noundef %0, ptr noundef nonnull %426)
  br label %615

579:                                              ; preds = %425
  %580 = load i16, ptr %410, align 8, !tbaa !46
  %581 = icmp eq i16 %580, 19789
  %582 = getelementptr inbounds %struct.TIFFDirEntry, ptr %426, i64 0, i32 3
  %583 = load i32, ptr %582, align 4, !tbaa !47
  br i1 %581, label %584, label %594

584:                                              ; preds = %579
  %585 = load ptr, ptr %412, align 8, !tbaa !48
  %586 = getelementptr inbounds %struct.TIFFDirEntry, ptr %426, i64 0, i32 1
  %587 = load i16, ptr %586, align 2, !tbaa !39
  %588 = zext i16 %587 to i64
  %589 = getelementptr inbounds i32, ptr %585, i64 %588
  %590 = load i32, ptr %589, align 4, !tbaa !19
  %591 = lshr i32 %583, %590
  %592 = load ptr, ptr %413, align 8, !tbaa !49
  %593 = getelementptr inbounds i64, ptr %592, i64 %588
  br label %600

594:                                              ; preds = %579
  %595 = load ptr, ptr %411, align 8, !tbaa !49
  %596 = getelementptr inbounds %struct.TIFFDirEntry, ptr %426, i64 0, i32 1
  %597 = load i16, ptr %596, align 2, !tbaa !39
  %598 = zext i16 %597 to i64
  %599 = getelementptr inbounds i64, ptr %595, i64 %598
  br label %600

600:                                              ; preds = %594, %584
  %601 = phi ptr [ %599, %594 ], [ %593, %584 ]
  %602 = phi i32 [ %583, %594 ], [ %591, %584 ]
  %603 = load i64, ptr %601, align 8, !tbaa !50
  %604 = trunc i64 %603 to i32
  %605 = and i32 %602, %604
  switch i32 %605, label %608 [
    i32 2, label %606
    i32 3, label %607
  ]

606:                                              ; preds = %600
  br label %608

607:                                              ; preds = %600
  br label %608

608:                                              ; preds = %600, %607, %606
  %609 = phi i1 [ true, %600 ], [ false, %607 ], [ false, %606 ]
  %610 = phi i32 [ 0, %600 ], [ 2, %607 ], [ 1, %606 ]
  br i1 %609, label %615, label %611

611:                                              ; preds = %608
  %612 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %0, i32 noundef 254, i32 noundef %610) #4
  br label %615

613:                                              ; preds = %425
  %614 = call fastcc i32 @TIFFFetchNormalTag(ptr noundef %0, ptr noundef nonnull %426)
  br label %615

615:                                              ; preds = %425, %577, %578, %613, %454, %466, %475, %481, %486, %501, %529, %506, %611, %608
  %616 = add nsw i32 %427, -1
  %617 = getelementptr inbounds %struct.TIFFDirEntry, ptr %426, i64 1
  %618 = icmp sgt i32 %427, 1
  br i1 %618, label %425, label %619, !llvm.loop !65

619:                                              ; preds = %615, %405
  %620 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 11
  %621 = load i16, ptr %620, align 2, !tbaa !66
  %622 = icmp eq i16 %621, 3
  br i1 %622, label %623, label %629

623:                                              ; preds = %619
  %624 = load i64, ptr %133, align 8, !tbaa !50
  %625 = and i64 %624, 67108864
  %626 = icmp eq i64 %625, 0
  br i1 %626, label %627, label %629

627:                                              ; preds = %623
  %628 = load ptr, ptr %0, align 8, !tbaa !23
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %628, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.12) #4
  br label %724

629:                                              ; preds = %623, %619
  %630 = load i64, ptr %133, align 8, !tbaa !50
  %631 = and i64 %630, 16777216
  %632 = icmp eq i64 %631, 0
  br i1 %632, label %633, label %654

633:                                              ; preds = %629
  %634 = load i16, ptr %388, align 2, !tbaa !62
  switch i16 %634, label %648 [
    i16 1, label %635
    i16 2, label %640
  ]

635:                                              ; preds = %633
  %636 = load i32, ptr %385, align 4, !tbaa !54
  %637 = icmp ugt i32 %636, 1
  br i1 %637, label %646, label %638

638:                                              ; preds = %635
  %639 = icmp eq i16 %634, 2
  br i1 %639, label %640, label %648

640:                                              ; preds = %633, %638
  %641 = load i32, ptr %385, align 4, !tbaa !54
  %642 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 15
  %643 = load i16, ptr %642, align 2, !tbaa !44
  %644 = zext i16 %643 to i32
  %645 = icmp eq i32 %641, %644
  br i1 %645, label %648, label %646

646:                                              ; preds = %640, %635
  %647 = load ptr, ptr %0, align 8, !tbaa !23
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %647, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.13) #4
  br label %724

648:                                              ; preds = %633, %640, %638
  %649 = load ptr, ptr %0, align 8, !tbaa !23
  %650 = call ptr @_TIFFFieldWithTag(ptr noundef nonnull %0, i32 noundef 279) #4
  %651 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %650, i64 0, i32 7
  %652 = load ptr, ptr %651, align 8, !tbaa !42
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %649, ptr noundef nonnull @.str.14, ptr noundef %652) #4
  %653 = load i16, ptr %5, align 2, !tbaa !25
  call fastcc void @EstimateStripByteCounts(ptr noundef nonnull %0, ptr noundef %124, i16 noundef zeroext %653)
  br label %683

654:                                              ; preds = %629
  %655 = load i32, ptr %385, align 4, !tbaa !54
  %656 = icmp eq i32 %655, 1
  br i1 %656, label %657, label %683

657:                                              ; preds = %654
  %658 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 45
  %659 = load ptr, ptr %658, align 8, !tbaa !67
  %660 = load i32, ptr %659, align 4, !tbaa !19
  %661 = icmp eq i32 %660, 0
  br i1 %661, label %677, label %662

662:                                              ; preds = %657
  %663 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 10
  %664 = load i16, ptr %663, align 8, !tbaa !68
  %665 = icmp eq i16 %664, 1
  br i1 %665, label %666, label %683

666:                                              ; preds = %662
  %667 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 53
  %668 = load ptr, ptr %667, align 8, !tbaa !69
  %669 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 48
  %670 = load ptr, ptr %669, align 8, !tbaa !22
  %671 = call i32 %668(ptr noundef %670) #4
  %672 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 44
  %673 = load ptr, ptr %672, align 8, !tbaa !70
  %674 = load i32, ptr %673, align 4, !tbaa !19
  %675 = sub i32 %671, %674
  %676 = icmp ugt i32 %660, %675
  br i1 %676, label %677, label %683

677:                                              ; preds = %666, %657
  %678 = load ptr, ptr %0, align 8, !tbaa !23
  %679 = call ptr @_TIFFFieldWithTag(ptr noundef %0, i32 noundef 279) #4
  %680 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %679, i64 0, i32 7
  %681 = load ptr, ptr %680, align 8, !tbaa !42
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %678, ptr noundef nonnull @.str.15, ptr noundef %681) #4
  %682 = load i16, ptr %5, align 2, !tbaa !25
  call fastcc void @EstimateStripByteCounts(ptr noundef %0, ptr noundef %124, i16 noundef zeroext %682)
  br label %683

683:                                              ; preds = %654, %662, %666, %677, %648
  %684 = icmp eq ptr %124, null
  br i1 %684, label %686, label %685

685:                                              ; preds = %683
  call void @_TIFFfree(ptr noundef nonnull %124) #4
  br label %686

686:                                              ; preds = %685, %683
  %687 = load i64, ptr %133, align 8, !tbaa !50
  %688 = and i64 %687, 524288
  %689 = icmp eq i64 %688, 0
  br i1 %689, label %690, label %698

690:                                              ; preds = %686
  %691 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 8
  %692 = load i16, ptr %691, align 4, !tbaa !64
  %693 = zext nneg i16 %692 to i64
  %694 = shl nsw i64 -1, %693
  %695 = trunc i64 %694 to i16
  %696 = xor i16 %695, -1
  %697 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 18
  store i16 %696, ptr %697, align 2, !tbaa !71
  br label %698

698:                                              ; preds = %690, %686
  %699 = and i64 %687, 128
  %700 = icmp eq i64 %699, 0
  br i1 %700, label %701, label %703

701:                                              ; preds = %698
  %702 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %0, i32 noundef 259, i32 noundef 1) #4
  br label %703

703:                                              ; preds = %701, %698
  %704 = load i32, ptr %385, align 4, !tbaa !54
  %705 = icmp eq i32 %704, 1
  br i1 %705, label %706, label %715

706:                                              ; preds = %703
  %707 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 10
  %708 = load i16, ptr %707, align 8, !tbaa !68
  %709 = icmp eq i16 %708, 1
  br i1 %709, label %710, label %715

710:                                              ; preds = %706
  %711 = load i32, ptr %17, align 8, !tbaa !20
  %712 = and i32 %711, 33792
  %713 = icmp eq i32 %712, 32768
  br i1 %713, label %714, label %715

714:                                              ; preds = %710
  call fastcc void @ChopUpSingleUncompressedStrip(ptr noundef %0)
  br label %715

715:                                              ; preds = %714, %710, %706, %703
  %716 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 11
  store i32 -1, ptr %716, align 8, !tbaa !72
  %717 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 13
  store i32 -1, ptr %717, align 8, !tbaa !73
  %718 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 18
  store i32 -1, ptr %718, align 4, !tbaa !74
  %719 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 19
  store i32 -1, ptr %719, align 8, !tbaa !75
  %720 = call i32 @TIFFTileSize(ptr noundef %0) #4
  %721 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 20
  store i32 %720, ptr %721, align 4, !tbaa !76
  %722 = call i32 @TIFFScanlineSize(ptr noundef %0) #4
  %723 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 38
  store i32 %722, ptr %723, align 8, !tbaa !77
  br label %728

724:                                              ; preds = %151, %340, %318, %321, %309, %486, %481, %472, %475, %463, %466, %454, %120, %646, %627, %400, %360, %355, %65
  %725 = phi ptr [ %121, %120 ], [ %124, %646 ], [ %124, %627 ], [ %124, %400 ], [ %124, %360 ], [ %124, %355 ], [ %49, %65 ], [ %124, %454 ], [ %124, %466 ], [ %124, %463 ], [ %124, %475 ], [ %124, %472 ], [ %124, %481 ], [ %124, %486 ], [ %124, %309 ], [ %124, %321 ], [ %124, %318 ], [ %124, %340 ], [ %124, %151 ]
  %726 = icmp eq ptr %725, null
  br i1 %726, label %728, label %727

727:                                              ; preds = %724
  call void @_TIFFfree(ptr noundef nonnull %725) #4
  br label %728

728:                                              ; preds = %51, %724, %727, %1, %715, %120, %38, %30
  %729 = phi i32 [ 0, %120 ], [ 1, %715 ], [ 0, %38 ], [ 0, %30 ], [ 0, %1 ], [ 0, %51 ], [ 0, %727 ], [ 0, %724 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #4
  ret i32 %729
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @TIFFError(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @TIFFSwabShort(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @CheckMalloc(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call ptr @_TIFFmalloc(i32 noundef %1) #4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !23
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %7, ptr noundef nonnull @.str.16, ptr noundef %2) #4
  br label %8

8:                                                ; preds = %6, %3
  ret ptr %4
}

declare void @_TIFFmemcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @TIFFSwabLong(ptr noundef) local_unnamed_addr #2

declare void @TIFFFreeDirectory(ptr noundef) local_unnamed_addr #2

declare i32 @TIFFDefaultDirectory(ptr noundef) local_unnamed_addr #2

declare i32 @TIFFSetField(ptr noundef, i32 noundef, ...) local_unnamed_addr #2

declare void @TIFFSwabArrayOfShort(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @TIFFSwabArrayOfLong(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @TIFFFetchNormalTag(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca [2 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca double, align 8
  %10 = alloca [2 x i8], align 1
  %11 = load i16, ptr %1, align 4, !tbaa !28
  %12 = zext i16 %11 to i32
  %13 = tail call ptr @_TIFFFieldWithTag(ptr noundef %0, i32 noundef %12) #4
  %14 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !45
  %16 = icmp ugt i32 %15, 1
  br i1 %16, label %17, label %165

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 1
  %19 = load i16, ptr %18, align 2, !tbaa !39
  switch i16 %19, label %146 [
    i16 1, label %20
    i16 6, label %20
    i16 3, label %28
    i16 8, label %28
    i16 4, label %67
    i16 9, label %67
    i16 5, label %83
    i16 10, label %83
    i16 11, label %91
    i16 12, label %107
    i16 2, label %117
    i16 7, label %117
  ]

20:                                               ; preds = %17, %17
  %21 = shl i32 %15, 1
  %22 = tail call ptr @_TIFFmalloc(i32 noundef %21) #4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load ptr, ptr %0, align 8, !tbaa !23
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %25, ptr noundef nonnull @.str.16, ptr noundef nonnull @TIFFFetchNormalTag.mesg) #4
  br label %146

26:                                               ; preds = %20
  %27 = tail call fastcc i32 @TIFFFetchByteArray(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %22), !range !52
  br label %146

28:                                               ; preds = %17, %17
  %29 = shl i32 %15, 1
  %30 = tail call ptr @_TIFFmalloc(i32 noundef %29) #4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load ptr, ptr %0, align 8, !tbaa !23
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %33, ptr noundef nonnull @.str.16, ptr noundef nonnull @TIFFFetchNormalTag.mesg) #4
  br label %146

34:                                               ; preds = %28
  %35 = load i32, ptr %14, align 4, !tbaa !45
  %36 = icmp ult i32 %35, 3
  br i1 %36, label %37, label %63

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 7
  %39 = load i16, ptr %38, align 8, !tbaa !46
  %40 = icmp eq i16 %39, 19789
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  switch i32 %35, label %146 [
    i32 2, label %42
    i32 1, label %47
  ]

42:                                               ; preds = %41
  %43 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 3
  %44 = load i32, ptr %43, align 4, !tbaa !47
  %45 = trunc i32 %44 to i16
  %46 = getelementptr inbounds i16, ptr %30, i64 1
  store i16 %45, ptr %46, align 2, !tbaa !25
  br label %47

47:                                               ; preds = %42, %41
  %48 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 3
  %49 = load i32, ptr %48, align 4, !tbaa !47
  %50 = lshr i32 %49, 16
  %51 = trunc i32 %50 to i16
  store i16 %51, ptr %30, align 2, !tbaa !25
  br label %146

52:                                               ; preds = %37
  switch i32 %35, label %146 [
    i32 2, label %53
    i32 1, label %59
  ]

53:                                               ; preds = %52
  %54 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 3
  %55 = load i32, ptr %54, align 4, !tbaa !47
  %56 = lshr i32 %55, 16
  %57 = trunc i32 %56 to i16
  %58 = getelementptr inbounds i16, ptr %30, i64 1
  store i16 %57, ptr %58, align 2, !tbaa !25
  br label %59

59:                                               ; preds = %53, %52
  %60 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 3
  %61 = load i32, ptr %60, align 4, !tbaa !47
  %62 = trunc i32 %61 to i16
  store i16 %62, ptr %30, align 2, !tbaa !25
  br label %146

63:                                               ; preds = %34
  %64 = tail call fastcc i32 @TIFFFetchData(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %30)
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i32
  br label %146

67:                                               ; preds = %17, %17
  %68 = shl i32 %15, 2
  %69 = tail call ptr @_TIFFmalloc(i32 noundef %68) #4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load ptr, ptr %0, align 8, !tbaa !23
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %72, ptr noundef nonnull @.str.16, ptr noundef nonnull @TIFFFetchNormalTag.mesg) #4
  br label %146

73:                                               ; preds = %67
  %74 = load i32, ptr %14, align 4, !tbaa !45
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 3
  %78 = load i32, ptr %77, align 4, !tbaa !47
  store i32 %78, ptr %69, align 4, !tbaa !19
  br label %146

79:                                               ; preds = %73
  %80 = tail call fastcc i32 @TIFFFetchData(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %69)
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i32
  br label %146

83:                                               ; preds = %17, %17
  %84 = shl i32 %15, 2
  %85 = tail call ptr @_TIFFmalloc(i32 noundef %84) #4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load ptr, ptr %0, align 8, !tbaa !23
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %88, ptr noundef nonnull @.str.16, ptr noundef nonnull @TIFFFetchNormalTag.mesg) #4
  br label %146

89:                                               ; preds = %83
  %90 = tail call fastcc i32 @TIFFFetchRationalArray(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %85), !range !52
  br label %146

91:                                               ; preds = %17
  %92 = shl i32 %15, 2
  %93 = tail call ptr @_TIFFmalloc(i32 noundef %92) #4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = load ptr, ptr %0, align 8, !tbaa !23
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %96, ptr noundef nonnull @.str.16, ptr noundef nonnull @TIFFFetchNormalTag.mesg) #4
  br label %146

97:                                               ; preds = %91
  %98 = load i32, ptr %14, align 4, !tbaa !45
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 3
  %102 = load float, ptr %101, align 4, !tbaa !78
  store float %102, ptr %93, align 4, !tbaa !78
  br label %146

103:                                              ; preds = %97
  %104 = tail call fastcc i32 @TIFFFetchData(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %93)
  %105 = icmp ne i32 %104, 0
  %106 = zext i1 %105 to i32
  br label %146

107:                                              ; preds = %17
  %108 = shl i32 %15, 3
  %109 = tail call ptr @_TIFFmalloc(i32 noundef %108) #4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  %112 = load ptr, ptr %0, align 8, !tbaa !23
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %112, ptr noundef nonnull @.str.16, ptr noundef nonnull @TIFFFetchNormalTag.mesg) #4
  br label %146

113:                                              ; preds = %107
  %114 = tail call fastcc i32 @TIFFFetchData(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %109)
  %115 = icmp ne i32 %114, 0
  %116 = zext i1 %115 to i32
  br label %146

117:                                              ; preds = %17, %17
  %118 = add i32 %15, 1
  %119 = tail call ptr @_TIFFmalloc(i32 noundef %118) #4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = load ptr, ptr %0, align 8, !tbaa !23
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %122, ptr noundef nonnull @.str.16, ptr noundef nonnull @TIFFFetchNormalTag.mesg) #4
  br label %139

123:                                              ; preds = %117
  %124 = load i32, ptr %14, align 4, !tbaa !45
  %125 = icmp ult i32 %124, 5
  br i1 %125, label %126, label %136

126:                                              ; preds = %123
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #4
  %127 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 3
  %128 = load i32, ptr %127, align 4, !tbaa !47
  store i32 %128, ptr %5, align 4, !tbaa !19
  %129 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 3
  %130 = load i32, ptr %129, align 8, !tbaa !20
  %131 = and i32 %130, 128
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %126
  call void @TIFFSwabLong(ptr noundef nonnull %5) #4
  br label %134

134:                                              ; preds = %133, %126
  %135 = load i32, ptr %14, align 4, !tbaa !45
  call void @_TIFFmemcpy(ptr noundef nonnull %119, ptr noundef nonnull %5, i32 noundef %135) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #4
  br label %139

136:                                              ; preds = %123
  %137 = tail call fastcc i32 @TIFFFetchData(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %119)
  %138 = icmp ne i32 %137, 0
  br label %139

139:                                              ; preds = %136, %134, %121
  %140 = phi i1 [ false, %121 ], [ true, %134 ], [ %138, %136 ]
  %141 = zext i1 %140 to i32
  br i1 %140, label %142, label %146

142:                                              ; preds = %139
  %143 = load i32, ptr %14, align 4, !tbaa !45
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds i8, ptr %119, i64 %144
  store i8 0, ptr %145, align 1, !tbaa !79
  br label %146

146:                                              ; preds = %111, %95, %87, %71, %32, %24, %103, %100, %79, %76, %63, %59, %52, %47, %41, %113, %89, %26, %139, %142, %17
  %147 = phi ptr [ null, %17 ], [ %119, %142 ], [ %119, %139 ], [ %22, %26 ], [ %22, %24 ], [ %30, %32 ], [ %69, %71 ], [ %85, %89 ], [ %85, %87 ], [ %93, %95 ], [ %109, %113 ], [ %109, %111 ], [ %30, %41 ], [ %30, %47 ], [ %30, %52 ], [ %30, %59 ], [ %30, %63 ], [ %69, %76 ], [ %69, %79 ], [ %93, %100 ], [ %93, %103 ]
  %148 = phi i32 [ 0, %17 ], [ %141, %142 ], [ %141, %139 ], [ %27, %26 ], [ 0, %24 ], [ 0, %32 ], [ 0, %71 ], [ %90, %89 ], [ 0, %87 ], [ 0, %95 ], [ %116, %113 ], [ 0, %111 ], [ 1, %41 ], [ 1, %47 ], [ 1, %52 ], [ 1, %59 ], [ %66, %63 ], [ 1, %76 ], [ %82, %79 ], [ 1, %100 ], [ %106, %103 ]
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %161, label %150

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %13, i64 0, i32 6
  %152 = load i8, ptr %151, align 1, !tbaa !80
  %153 = icmp eq i8 %152, 0
  %154 = load i16, ptr %1, align 4, !tbaa !28
  %155 = zext i16 %154 to i32
  br i1 %153, label %159, label %156

156:                                              ; preds = %150
  %157 = load i32, ptr %14, align 4, !tbaa !45
  %158 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %0, i32 noundef %155, i32 noundef %157, ptr noundef %147) #4
  br label %161

159:                                              ; preds = %150
  %160 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %0, i32 noundef %155, ptr noundef %147) #4
  br label %161

161:                                              ; preds = %156, %159, %146
  %162 = phi i32 [ 0, %146 ], [ %158, %156 ], [ %160, %159 ]
  %163 = icmp eq ptr %147, null
  br i1 %163, label %386, label %164

164:                                              ; preds = %161
  call void @_TIFFfree(ptr noundef nonnull %147) #4
  br label %386

165:                                              ; preds = %2
  %166 = icmp eq i32 %15, 1
  br i1 %166, label %175, label %167

167:                                              ; preds = %165
  %168 = load ptr, ptr %0, align 8, !tbaa !23
  %169 = load i16, ptr %1, align 4, !tbaa !28
  %170 = zext i16 %169 to i32
  %171 = tail call ptr @_TIFFFieldWithTag(ptr noundef nonnull %0, i32 noundef %170) #4
  %172 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %171, i64 0, i32 7
  %173 = load ptr, ptr %172, align 8, !tbaa !42
  %174 = load i32, ptr %14, align 4, !tbaa !45
  tail call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %168, ptr noundef nonnull @.str.19, ptr noundef %173, i32 noundef %174, i32 noundef 1) #4
  br label %386

175:                                              ; preds = %165
  %176 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 1
  %177 = load i16, ptr %176, align 2, !tbaa !39
  switch i16 %177, label %386 [
    i16 1, label %178
    i16 6, label %178
    i16 3, label %178
    i16 8, label %178
    i16 4, label %225
    i16 9, label %225
    i16 5, label %265
    i16 10, label %265
    i16 11, label %265
    i16 12, label %340
    i16 2, label %360
    i16 7, label %360
  ]

178:                                              ; preds = %175, %175, %175, %175
  %179 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %13, i64 0, i32 3
  %180 = load i32, ptr %179, align 8, !tbaa !40
  switch i32 %180, label %181 [
    i32 9, label %222
    i32 4, label %222
  ]

181:                                              ; preds = %178
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #4
  %182 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 7
  %183 = load i16, ptr %182, align 8, !tbaa !46
  %184 = icmp eq i16 %183, 19789
  %185 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 3
  %186 = load i32, ptr %185, align 4, !tbaa !47
  br i1 %184, label %187, label %197

187:                                              ; preds = %181
  %188 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 9
  %189 = load ptr, ptr %188, align 8, !tbaa !48
  %190 = zext i16 %177 to i64
  %191 = getelementptr inbounds i32, ptr %189, i64 %190
  %192 = load i32, ptr %191, align 4, !tbaa !19
  %193 = lshr i32 %186, %192
  %194 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 10
  %195 = load ptr, ptr %194, align 8, !tbaa !49
  %196 = getelementptr inbounds i64, ptr %195, i64 %190
  br label %202

197:                                              ; preds = %181
  %198 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 10
  %199 = load ptr, ptr %198, align 8, !tbaa !49
  %200 = zext i16 %177 to i64
  %201 = getelementptr inbounds i64, ptr %199, i64 %200
  br label %202

202:                                              ; preds = %197, %187
  %203 = phi ptr [ %201, %197 ], [ %196, %187 ]
  %204 = phi i32 [ %186, %197 ], [ %193, %187 ]
  %205 = zext i32 %204 to i64
  %206 = load i64, ptr %203, align 8, !tbaa !50
  %207 = and i64 %206, %205
  %208 = trunc i64 %207 to i16
  store i16 %208, ptr %6, align 2, !tbaa !25
  %209 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %13, i64 0, i32 6
  %210 = load i8, ptr %209, align 1, !tbaa !80
  %211 = icmp eq i8 %210, 0
  %212 = load i16, ptr %1, align 4, !tbaa !28
  %213 = zext i16 %212 to i32
  br i1 %211, label %216, label %214

214:                                              ; preds = %202
  %215 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %0, i32 noundef %213, i32 noundef 1, ptr noundef nonnull %6) #4
  br label %220

216:                                              ; preds = %202
  %217 = trunc i64 %207 to i32
  %218 = and i32 %217, 65535
  %219 = tail call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %0, i32 noundef %213, i32 noundef %218) #4
  br label %220

220:                                              ; preds = %216, %214
  %221 = phi i32 [ %215, %214 ], [ %219, %216 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #4
  br label %222

222:                                              ; preds = %178, %178, %220
  %223 = phi i32 [ %221, %220 ], [ 0, %178 ], [ 0, %178 ]
  %224 = phi i1 [ false, %220 ], [ true, %178 ], [ true, %178 ]
  br i1 %224, label %225, label %386

225:                                              ; preds = %222, %175, %175
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #4
  %226 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 7
  %227 = load i16, ptr %226, align 8, !tbaa !46
  %228 = icmp eq i16 %227, 19789
  %229 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 3
  %230 = load i32, ptr %229, align 4, !tbaa !47
  br i1 %228, label %231, label %242

231:                                              ; preds = %225
  %232 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 9
  %233 = load ptr, ptr %232, align 8, !tbaa !48
  %234 = load i16, ptr %176, align 2, !tbaa !39
  %235 = zext i16 %234 to i64
  %236 = getelementptr inbounds i32, ptr %233, i64 %235
  %237 = load i32, ptr %236, align 4, !tbaa !19
  %238 = lshr i32 %230, %237
  %239 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 10
  %240 = load ptr, ptr %239, align 8, !tbaa !49
  %241 = getelementptr inbounds i64, ptr %240, i64 %235
  br label %248

242:                                              ; preds = %225
  %243 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 10
  %244 = load ptr, ptr %243, align 8, !tbaa !49
  %245 = load i16, ptr %176, align 2, !tbaa !39
  %246 = zext i16 %245 to i64
  %247 = getelementptr inbounds i64, ptr %244, i64 %246
  br label %248

248:                                              ; preds = %242, %231
  %249 = phi ptr [ %247, %242 ], [ %241, %231 ]
  %250 = phi i32 [ %230, %242 ], [ %238, %231 ]
  %251 = load i64, ptr %249, align 8, !tbaa !50
  %252 = trunc i64 %251 to i32
  %253 = and i32 %250, %252
  store i32 %253, ptr %7, align 4, !tbaa !19
  %254 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %13, i64 0, i32 6
  %255 = load i8, ptr %254, align 1, !tbaa !80
  %256 = icmp eq i8 %255, 0
  %257 = load i16, ptr %1, align 4, !tbaa !28
  %258 = zext i16 %257 to i32
  br i1 %256, label %261, label %259

259:                                              ; preds = %248
  %260 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %0, i32 noundef %258, i32 noundef 1, ptr noundef nonnull %7) #4
  br label %263

261:                                              ; preds = %248
  %262 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %0, i32 noundef %258, i32 noundef %253) #4
  br label %263

263:                                              ; preds = %261, %259
  %264 = phi i32 [ %260, %259 ], [ %262, %261 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #4
  br label %386

265:                                              ; preds = %175, %175, %175
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #4
  %266 = icmp eq i16 %177, 11
  br i1 %266, label %267, label %295

267:                                              ; preds = %265
  %268 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 7
  %269 = load i16, ptr %268, align 8, !tbaa !46
  %270 = icmp eq i16 %269, 19789
  %271 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 3
  %272 = load i32, ptr %271, align 4, !tbaa !47
  br i1 %270, label %273, label %283

273:                                              ; preds = %267
  %274 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 9
  %275 = load ptr, ptr %274, align 8, !tbaa !48
  %276 = zext nneg i16 %177 to i64
  %277 = getelementptr inbounds i32, ptr %275, i64 %276
  %278 = load i32, ptr %277, align 4, !tbaa !19
  %279 = lshr i32 %272, %278
  %280 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 10
  %281 = load ptr, ptr %280, align 8, !tbaa !49
  %282 = getelementptr inbounds i64, ptr %281, i64 %276
  br label %288

283:                                              ; preds = %267
  %284 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 10
  %285 = load ptr, ptr %284, align 8, !tbaa !49
  %286 = zext nneg i16 %177 to i64
  %287 = getelementptr inbounds i64, ptr %285, i64 %286
  br label %288

288:                                              ; preds = %273, %283
  %289 = phi ptr [ %282, %273 ], [ %287, %283 ]
  %290 = phi i32 [ %279, %273 ], [ %272, %283 ]
  %291 = load i64, ptr %289, align 8, !tbaa !50
  %292 = trunc i64 %291 to i32
  %293 = and i32 %290, %292
  %294 = bitcast i32 %293 to float
  br label %326

295:                                              ; preds = %265
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #4
  %296 = call fastcc i32 @TIFFFetchData(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4)
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %324, label %298

298:                                              ; preds = %295
  %299 = load i32, ptr %4, align 4, !tbaa !19
  %300 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 1
  %301 = load i32, ptr %300, align 4, !tbaa !19
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %303, label %310

303:                                              ; preds = %298
  %304 = load ptr, ptr %0, align 8, !tbaa !23
  %305 = load i16, ptr %1, align 4, !tbaa !28
  %306 = zext i16 %305 to i32
  %307 = call ptr @_TIFFFieldWithTag(ptr noundef nonnull %0, i32 noundef %306) #4
  %308 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %307, i64 0, i32 7
  %309 = load ptr, ptr %308, align 8, !tbaa !42
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %304, ptr noundef nonnull @.str.22, ptr noundef %309, i32 noundef %299) #4
  br label %321

310:                                              ; preds = %298
  %311 = load i16, ptr %176, align 2, !tbaa !39
  %312 = icmp eq i16 %311, 5
  br i1 %312, label %313, label %317

313:                                              ; preds = %310
  %314 = uitofp i32 %299 to float
  %315 = uitofp i32 %301 to float
  %316 = fdiv float %314, %315
  br label %321

317:                                              ; preds = %310
  %318 = sitofp i32 %299 to float
  %319 = sitofp i32 %301 to float
  %320 = fdiv float %318, %319
  br label %321

321:                                              ; preds = %317, %313, %303
  %322 = phi float [ undef, %303 ], [ %320, %317 ], [ %316, %313 ]
  br i1 %302, label %324, label %323

323:                                              ; preds = %321
  br label %324

324:                                              ; preds = %295, %321, %323
  %325 = phi float [ %322, %323 ], [ 1.000000e+00, %321 ], [ 1.000000e+00, %295 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #4
  br label %326

326:                                              ; preds = %324, %288
  %327 = phi float [ %294, %288 ], [ %325, %324 ]
  store float %327, ptr %8, align 4, !tbaa !78
  %328 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %13, i64 0, i32 6
  %329 = load i8, ptr %328, align 1, !tbaa !80
  %330 = icmp eq i8 %329, 0
  %331 = load i16, ptr %1, align 4, !tbaa !28
  %332 = zext i16 %331 to i32
  br i1 %330, label %335, label %333

333:                                              ; preds = %326
  %334 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %0, i32 noundef %332, i32 noundef 1, ptr noundef nonnull %8) #4
  br label %338

335:                                              ; preds = %326
  %336 = fpext float %327 to double
  %337 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %0, i32 noundef %332, double noundef %336) #4
  br label %338

338:                                              ; preds = %335, %333
  %339 = phi i32 [ %334, %333 ], [ %337, %335 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #4
  br label %386

340:                                              ; preds = %175
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #4
  %341 = call fastcc i32 @TIFFFetchData(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %9)
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %358, label %343

343:                                              ; preds = %340
  %344 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %13, i64 0, i32 6
  %345 = load i8, ptr %344, align 1, !tbaa !80
  %346 = icmp eq i8 %345, 0
  %347 = load i16, ptr %1, align 4, !tbaa !28
  %348 = zext i16 %347 to i32
  br i1 %346, label %351, label %349

349:                                              ; preds = %343
  %350 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %0, i32 noundef %348, i32 noundef 1, ptr noundef nonnull %9) #4
  br label %354

351:                                              ; preds = %343
  %352 = load double, ptr %9, align 8, !tbaa !63
  %353 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %0, i32 noundef %348, double noundef %352) #4
  br label %354

354:                                              ; preds = %351, %349
  %355 = phi i32 [ %350, %349 ], [ %353, %351 ]
  %356 = icmp ne i32 %355, 0
  %357 = zext i1 %356 to i32
  br label %358

358:                                              ; preds = %354, %340
  %359 = phi i32 [ 0, %340 ], [ %357, %354 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #4
  br label %386

360:                                              ; preds = %175, %175
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #4
  %361 = load i32, ptr %14, align 4, !tbaa !45
  %362 = icmp ult i32 %361, 5
  br i1 %362, label %363, label %373

363:                                              ; preds = %360
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #4
  %364 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 3
  %365 = load i32, ptr %364, align 4, !tbaa !47
  store i32 %365, ptr %3, align 4, !tbaa !19
  %366 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 3
  %367 = load i32, ptr %366, align 8, !tbaa !20
  %368 = and i32 %367, 128
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %371, label %370

370:                                              ; preds = %363
  call void @TIFFSwabLong(ptr noundef nonnull %3) #4
  br label %371

371:                                              ; preds = %370, %363
  %372 = load i32, ptr %14, align 4, !tbaa !45
  call void @_TIFFmemcpy(ptr noundef nonnull %10, ptr noundef nonnull %3, i32 noundef %372) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #4
  br label %376

373:                                              ; preds = %360
  %374 = call fastcc i32 @TIFFFetchData(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %10)
  %375 = icmp ne i32 %374, 0
  br label %376

376:                                              ; preds = %371, %373
  %377 = phi i1 [ true, %371 ], [ %375, %373 ]
  %378 = zext i1 %377 to i32
  br i1 %377, label %379, label %384

379:                                              ; preds = %376
  %380 = getelementptr inbounds [2 x i8], ptr %10, i64 0, i64 1
  store i8 0, ptr %380, align 1, !tbaa !79
  %381 = load i16, ptr %1, align 4, !tbaa !28
  %382 = zext i16 %381 to i32
  %383 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %0, i32 noundef %382, ptr noundef nonnull %10) #4
  br label %384

384:                                              ; preds = %379, %376
  %385 = phi i32 [ %383, %379 ], [ %378, %376 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #4
  br label %386

386:                                              ; preds = %167, %222, %161, %164, %175, %384, %358, %338, %263
  %387 = phi i32 [ 0, %175 ], [ %385, %384 ], [ %359, %358 ], [ %339, %338 ], [ %264, %263 ], [ %223, %222 ], [ 0, %167 ], [ %162, %164 ], [ %162, %161 ]
  ret i32 %387
}

declare i32 @TIFFReassignTagToIgnore(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @TIFFWarning(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @CheckDirCount(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !45
  %6 = icmp eq i32 %5, %2
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !23
  %9 = load i16, ptr %1, align 4, !tbaa !28
  %10 = zext i16 %9 to i32
  %11 = tail call ptr @_TIFFFieldWithTag(ptr noundef nonnull %0, i32 noundef %10) #4
  %12 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %11, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !42
  %14 = load i32, ptr %4, align 4, !tbaa !45
  tail call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %8, ptr noundef nonnull @.str.19, ptr noundef %13, i32 noundef %14, i32 noundef %2) #4
  br label %15

15:                                               ; preds = %3, %7
  %16 = phi i32 [ 0, %7 ], [ 1, %3 ]
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @TIFFFetchPerSampleShorts(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = alloca [10 x i16], align 16
  %5 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 15
  %6 = load i16, ptr %5, align 2, !tbaa !81
  %7 = zext i16 %6 to i32
  %8 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !45
  %10 = icmp eq i32 %9, %7
  br i1 %10, label %19, label %11

11:                                               ; preds = %3
  %12 = load ptr, ptr %0, align 8, !tbaa !23
  %13 = load i16, ptr %1, align 4, !tbaa !28
  %14 = zext i16 %13 to i32
  %15 = tail call ptr @_TIFFFieldWithTag(ptr noundef nonnull %0, i32 noundef %14) #4
  %16 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %15, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !42
  %18 = load i32, ptr %8, align 4, !tbaa !45
  tail call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %12, ptr noundef nonnull @.str.19, ptr noundef %17, i32 noundef %18, i32 noundef %7) #4
  br label %86

19:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #4
  %20 = icmp ugt i16 %6, 10
  br i1 %20, label %21, label %24

21:                                               ; preds = %19
  %22 = shl nuw nsw i32 %7, 1
  %23 = tail call ptr @_TIFFmalloc(i32 noundef %22) #4
  br label %24

24:                                               ; preds = %21, %19
  %25 = phi ptr [ %23, %21 ], [ %4, %19 ]
  %26 = load i32, ptr %8, align 4, !tbaa !45
  %27 = icmp ult i32 %26, 3
  br i1 %27, label %28, label %52

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 7
  %30 = load i16, ptr %29, align 8, !tbaa !46
  %31 = icmp eq i16 %30, 19789
  br i1 %31, label %32, label %42

32:                                               ; preds = %28
  switch i32 %26, label %58 [
    i32 2, label %33
    i32 1, label %38
  ]

33:                                               ; preds = %32
  %34 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 3
  %35 = load i32, ptr %34, align 4, !tbaa !47
  %36 = trunc i32 %35 to i16
  %37 = getelementptr inbounds i16, ptr %25, i64 1
  store i16 %36, ptr %37, align 2, !tbaa !25
  br label %38

38:                                               ; preds = %33, %32
  %39 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 3
  %40 = load i32, ptr %39, align 4, !tbaa !47
  %41 = lshr i32 %40, 16
  br label %55

42:                                               ; preds = %28
  switch i32 %26, label %58 [
    i32 2, label %43
    i32 1, label %49
  ]

43:                                               ; preds = %42
  %44 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 3
  %45 = load i32, ptr %44, align 4, !tbaa !47
  %46 = lshr i32 %45, 16
  %47 = trunc i32 %46 to i16
  %48 = getelementptr inbounds i16, ptr %25, i64 1
  store i16 %47, ptr %48, align 2, !tbaa !25
  br label %49

49:                                               ; preds = %43, %42
  %50 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 3
  %51 = load i32, ptr %50, align 4, !tbaa !47
  br label %55

52:                                               ; preds = %24
  %53 = call fastcc i32 @TIFFFetchData(ptr noundef %0, ptr noundef %1, ptr noundef %25)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %81, label %58

55:                                               ; preds = %38, %49
  %56 = phi i32 [ %51, %49 ], [ %41, %38 ]
  %57 = trunc i32 %56 to i16
  store i16 %57, ptr %25, align 2, !tbaa !25
  br label %58

58:                                               ; preds = %55, %42, %32, %52
  %59 = icmp ugt i16 %6, 1
  br i1 %59, label %60, label %78

60:                                               ; preds = %58
  %61 = load i16, ptr %25, align 2, !tbaa !25
  %62 = zext i16 %6 to i64
  br label %66

63:                                               ; preds = %66
  %64 = add nuw nsw i64 %67, 1
  %65 = icmp eq i64 %64, %62
  br i1 %65, label %78, label %66, !llvm.loop !82

66:                                               ; preds = %60, %63
  %67 = phi i64 [ 1, %60 ], [ %64, %63 ]
  %68 = getelementptr inbounds i16, ptr %25, i64 %67
  %69 = load i16, ptr %68, align 2, !tbaa !25
  %70 = icmp eq i16 %69, %61
  br i1 %70, label %63, label %71

71:                                               ; preds = %66
  %72 = load ptr, ptr %0, align 8, !tbaa !23
  %73 = load i16, ptr %1, align 4, !tbaa !28
  %74 = zext i16 %73 to i32
  %75 = call ptr @_TIFFFieldWithTag(ptr noundef nonnull %0, i32 noundef %74) #4
  %76 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %75, i64 0, i32 7
  %77 = load ptr, ptr %76, align 8, !tbaa !42
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %72, ptr noundef nonnull @.str.23, ptr noundef %77) #4
  br label %81

78:                                               ; preds = %63, %58
  %79 = load i16, ptr %25, align 2, !tbaa !25
  %80 = zext i16 %79 to i32
  store i32 %80, ptr %2, align 4, !tbaa !19
  br label %81

81:                                               ; preds = %78, %71, %52
  %82 = phi i32 [ 0, %52 ], [ 0, %71 ], [ 1, %78 ]
  %83 = icmp eq ptr %25, %4
  br i1 %83, label %85, label %84

84:                                               ; preds = %81
  call void @_TIFFfree(ptr noundef %25) #4
  br label %85

85:                                               ; preds = %84, %81
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #4
  br label %86

86:                                               ; preds = %11, %85
  %87 = phi i32 [ %82, %85 ], [ 0, %11 ]
  ret i32 %87
}

; Function Attrs: nounwind uwtable
define internal fastcc void @TIFFFetchExtraSamples(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca [10 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #4
  %4 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !45
  %6 = icmp ugt i32 %5, 10
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = shl i32 %5, 1
  %9 = tail call ptr @_TIFFmalloc(i32 noundef %8) #4
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi ptr [ %9, %7 ], [ %3, %2 ]
  %12 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 1
  %13 = load i16, ptr %12, align 2, !tbaa !39
  %14 = icmp eq i16 %13, 1
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = call fastcc i32 @TIFFFetchByteArray(ptr noundef %0, ptr noundef %1, ptr noundef %11), !range !52
  br label %50

17:                                               ; preds = %10
  %18 = load i32, ptr %4, align 4, !tbaa !45
  %19 = icmp ult i32 %18, 3
  br i1 %19, label %20, label %46

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 7
  %22 = load i16, ptr %21, align 8, !tbaa !46
  %23 = icmp eq i16 %22, 19789
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  switch i32 %18, label %50 [
    i32 2, label %25
    i32 1, label %30
  ]

25:                                               ; preds = %24
  %26 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 3
  %27 = load i32, ptr %26, align 4, !tbaa !47
  %28 = trunc i32 %27 to i16
  %29 = getelementptr inbounds i16, ptr %11, i64 1
  store i16 %28, ptr %29, align 2, !tbaa !25
  br label %30

30:                                               ; preds = %25, %24
  %31 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 3
  %32 = load i32, ptr %31, align 4, !tbaa !47
  %33 = lshr i32 %32, 16
  %34 = trunc i32 %33 to i16
  store i16 %34, ptr %11, align 2, !tbaa !25
  br label %50

35:                                               ; preds = %20
  switch i32 %18, label %50 [
    i32 2, label %36
    i32 1, label %42
  ]

36:                                               ; preds = %35
  %37 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 3
  %38 = load i32, ptr %37, align 4, !tbaa !47
  %39 = lshr i32 %38, 16
  %40 = trunc i32 %39 to i16
  %41 = getelementptr inbounds i16, ptr %11, i64 1
  store i16 %40, ptr %41, align 2, !tbaa !25
  br label %42

42:                                               ; preds = %36, %35
  %43 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 3
  %44 = load i32, ptr %43, align 4, !tbaa !47
  %45 = trunc i32 %44 to i16
  store i16 %45, ptr %11, align 2, !tbaa !25
  br label %50

46:                                               ; preds = %17
  %47 = call fastcc i32 @TIFFFetchData(ptr noundef %0, ptr noundef %1, ptr noundef %11)
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i32
  br label %50

50:                                               ; preds = %46, %42, %35, %30, %24, %15
  %51 = phi i32 [ %16, %15 ], [ %49, %46 ], [ 1, %35 ], [ 1, %42 ], [ 1, %24 ], [ 1, %30 ]
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %50
  %54 = load i16, ptr %1, align 4, !tbaa !28
  %55 = zext i16 %54 to i32
  %56 = load i32, ptr %4, align 4, !tbaa !45
  %57 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %0, i32 noundef %55, i32 noundef %56, ptr noundef %11) #4
  br label %58

58:                                               ; preds = %53, %50
  %59 = icmp eq ptr %11, %3
  br i1 %59, label %61, label %60

60:                                               ; preds = %58
  call void @_TIFFfree(ptr noundef %11) #4
  br label %61

61:                                               ; preds = %60, %58
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #4
  ret void
}

declare i32 @TIFFNumberOfStrips(ptr noundef) local_unnamed_addr #2

declare i32 @TIFFNumberOfTiles(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @TIFFFetchPerSampleAnys(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = alloca [10 x double], align 16
  %5 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 15
  %6 = load i16, ptr %5, align 2, !tbaa !81
  %7 = zext i16 %6 to i32
  %8 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !45
  %10 = icmp eq i32 %9, %7
  br i1 %10, label %19, label %11

11:                                               ; preds = %3
  %12 = load ptr, ptr %0, align 8, !tbaa !23
  %13 = load i16, ptr %1, align 4, !tbaa !28
  %14 = zext i16 %13 to i32
  %15 = tail call ptr @_TIFFFieldWithTag(ptr noundef nonnull %0, i32 noundef %14) #4
  %16 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %15, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !42
  %18 = load i32, ptr %8, align 4, !tbaa !45
  tail call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %12, ptr noundef nonnull @.str.19, ptr noundef %17, i32 noundef %18, i32 noundef %7) #4
  br label %234

19:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #4
  %20 = icmp ugt i16 %6, 10
  br i1 %20, label %21, label %24

21:                                               ; preds = %19
  %22 = shl nuw nsw i32 %7, 3
  %23 = tail call ptr @_TIFFmalloc(i32 noundef %22) #4
  br label %24

24:                                               ; preds = %21, %19
  %25 = phi ptr [ %23, %21 ], [ %4, %19 ]
  %26 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 1
  %27 = load i16, ptr %26, align 2, !tbaa !39
  switch i16 %27, label %200 [
    i16 1, label %28
    i16 6, label %28
    i16 3, label %59
    i16 8, label %59
    i16 4, label %120
    i16 9, label %120
    i16 5, label %157
    i16 10, label %157
    i16 11, label %174
    i16 12, label %197
  ]

28:                                               ; preds = %24, %24
  %29 = call fastcc i32 @TIFFFetchByteArray(ptr noundef %0, ptr noundef %1, ptr noundef %25), !range !52
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %229, label %31

31:                                               ; preds = %28
  %32 = load i16, ptr %26, align 2, !tbaa !39
  %33 = icmp eq i16 %32, 1
  %34 = load i32, ptr %8, align 4, !tbaa !45
  %35 = add i32 %34, -1
  %36 = icmp sgt i32 %35, -1
  br i1 %33, label %37, label %48

37:                                               ; preds = %31
  br i1 %36, label %38, label %207

38:                                               ; preds = %37
  %39 = zext nneg i32 %35 to i64
  br label %40

40:                                               ; preds = %40, %38
  %41 = phi i64 [ %39, %38 ], [ %46, %40 ]
  %42 = getelementptr inbounds i16, ptr %25, i64 %41
  %43 = load i16, ptr %42, align 2, !tbaa !25
  %44 = uitofp i16 %43 to double
  %45 = getelementptr inbounds double, ptr %25, i64 %41
  store double %44, ptr %45, align 8, !tbaa !63
  %46 = add nsw i64 %41, -1
  %47 = icmp sgt i64 %41, 0
  br i1 %47, label %40, label %207, !llvm.loop !83

48:                                               ; preds = %31
  br i1 %36, label %49, label %207

49:                                               ; preds = %48
  %50 = zext nneg i32 %35 to i64
  br label %51

51:                                               ; preds = %51, %49
  %52 = phi i64 [ %50, %49 ], [ %57, %51 ]
  %53 = getelementptr inbounds i16, ptr %25, i64 %52
  %54 = load i16, ptr %53, align 2, !tbaa !25
  %55 = sitofp i16 %54 to double
  %56 = getelementptr inbounds double, ptr %25, i64 %52
  store double %55, ptr %56, align 8, !tbaa !63
  %57 = add nsw i64 %52, -1
  %58 = icmp sgt i64 %52, 0
  br i1 %58, label %51, label %207, !llvm.loop !84

59:                                               ; preds = %24, %24
  %60 = load i32, ptr %8, align 4, !tbaa !45
  %61 = icmp ult i32 %60, 3
  br i1 %61, label %62, label %86

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 7
  %64 = load i16, ptr %63, align 8, !tbaa !46
  %65 = icmp eq i16 %64, 19789
  br i1 %65, label %66, label %76

66:                                               ; preds = %62
  switch i32 %60, label %92 [
    i32 2, label %67
    i32 1, label %72
  ]

67:                                               ; preds = %66
  %68 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 3
  %69 = load i32, ptr %68, align 4, !tbaa !47
  %70 = trunc i32 %69 to i16
  %71 = getelementptr inbounds i16, ptr %25, i64 1
  store i16 %70, ptr %71, align 2, !tbaa !25
  br label %72

72:                                               ; preds = %67, %66
  %73 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 3
  %74 = load i32, ptr %73, align 4, !tbaa !47
  %75 = lshr i32 %74, 16
  br label %89

76:                                               ; preds = %62
  switch i32 %60, label %92 [
    i32 2, label %77
    i32 1, label %83
  ]

77:                                               ; preds = %76
  %78 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 3
  %79 = load i32, ptr %78, align 4, !tbaa !47
  %80 = lshr i32 %79, 16
  %81 = trunc i32 %80 to i16
  %82 = getelementptr inbounds i16, ptr %25, i64 1
  store i16 %81, ptr %82, align 2, !tbaa !25
  br label %83

83:                                               ; preds = %77, %76
  %84 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 3
  %85 = load i32, ptr %84, align 4, !tbaa !47
  br label %89

86:                                               ; preds = %59
  %87 = call fastcc i32 @TIFFFetchData(ptr noundef %0, ptr noundef %1, ptr noundef %25)
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %229, label %92

89:                                               ; preds = %72, %83
  %90 = phi i32 [ %85, %83 ], [ %75, %72 ]
  %91 = trunc i32 %90 to i16
  store i16 %91, ptr %25, align 2, !tbaa !25
  br label %92

92:                                               ; preds = %89, %86, %76, %66
  %93 = load i16, ptr %26, align 2, !tbaa !39
  %94 = icmp eq i16 %93, 3
  %95 = load i32, ptr %8, align 4, !tbaa !45
  %96 = add i32 %95, -1
  %97 = icmp sgt i32 %96, -1
  br i1 %94, label %98, label %109

98:                                               ; preds = %92
  br i1 %97, label %99, label %207

99:                                               ; preds = %98
  %100 = zext nneg i32 %96 to i64
  br label %101

101:                                              ; preds = %101, %99
  %102 = phi i64 [ %100, %99 ], [ %107, %101 ]
  %103 = getelementptr inbounds i16, ptr %25, i64 %102
  %104 = load i16, ptr %103, align 2, !tbaa !25
  %105 = uitofp i16 %104 to double
  %106 = getelementptr inbounds double, ptr %25, i64 %102
  store double %105, ptr %106, align 8, !tbaa !63
  %107 = add nsw i64 %102, -1
  %108 = icmp sgt i64 %102, 0
  br i1 %108, label %101, label %207, !llvm.loop !85

109:                                              ; preds = %92
  br i1 %97, label %110, label %207

110:                                              ; preds = %109
  %111 = zext nneg i32 %96 to i64
  br label %112

112:                                              ; preds = %112, %110
  %113 = phi i64 [ %111, %110 ], [ %118, %112 ]
  %114 = getelementptr inbounds i16, ptr %25, i64 %113
  %115 = load i16, ptr %114, align 2, !tbaa !25
  %116 = sitofp i16 %115 to double
  %117 = getelementptr inbounds double, ptr %25, i64 %113
  store double %116, ptr %117, align 8, !tbaa !63
  %118 = add nsw i64 %113, -1
  %119 = icmp sgt i64 %113, 0
  br i1 %119, label %112, label %207, !llvm.loop !86

120:                                              ; preds = %24, %24
  %121 = load i32, ptr %8, align 4, !tbaa !45
  %122 = icmp eq i32 %121, 1
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 3
  %125 = load i32, ptr %124, align 4, !tbaa !47
  store i32 %125, ptr %25, align 4, !tbaa !19
  br label %129

126:                                              ; preds = %120
  %127 = call fastcc i32 @TIFFFetchData(ptr noundef %0, ptr noundef %1, ptr noundef %25)
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %229, label %129

129:                                              ; preds = %126, %123
  %130 = load i16, ptr %26, align 2, !tbaa !39
  %131 = icmp eq i16 %130, 4
  %132 = load i32, ptr %8, align 4, !tbaa !45
  %133 = add i32 %132, -1
  %134 = icmp sgt i32 %133, -1
  br i1 %131, label %135, label %146

135:                                              ; preds = %129
  br i1 %134, label %136, label %207

136:                                              ; preds = %135
  %137 = zext nneg i32 %133 to i64
  br label %138

138:                                              ; preds = %138, %136
  %139 = phi i64 [ %137, %136 ], [ %144, %138 ]
  %140 = getelementptr inbounds i32, ptr %25, i64 %139
  %141 = load i32, ptr %140, align 4, !tbaa !19
  %142 = uitofp i32 %141 to double
  %143 = getelementptr inbounds double, ptr %25, i64 %139
  store double %142, ptr %143, align 8, !tbaa !63
  %144 = add nsw i64 %139, -1
  %145 = icmp sgt i64 %139, 0
  br i1 %145, label %138, label %207, !llvm.loop !87

146:                                              ; preds = %129
  br i1 %134, label %147, label %207

147:                                              ; preds = %146
  %148 = zext nneg i32 %133 to i64
  br label %149

149:                                              ; preds = %149, %147
  %150 = phi i64 [ %148, %147 ], [ %155, %149 ]
  %151 = getelementptr inbounds i32, ptr %25, i64 %150
  %152 = load i32, ptr %151, align 4, !tbaa !19
  %153 = sitofp i32 %152 to double
  %154 = getelementptr inbounds double, ptr %25, i64 %150
  store double %153, ptr %154, align 8, !tbaa !63
  %155 = add nsw i64 %150, -1
  %156 = icmp sgt i64 %150, 0
  br i1 %156, label %149, label %207, !llvm.loop !88

157:                                              ; preds = %24, %24
  %158 = call fastcc i32 @TIFFFetchRationalArray(ptr noundef %0, ptr noundef %1, ptr noundef %25), !range !52
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %229, label %160

160:                                              ; preds = %157
  %161 = load i32, ptr %8, align 4, !tbaa !45
  %162 = add i32 %161, -1
  %163 = icmp sgt i32 %162, -1
  br i1 %163, label %164, label %207

164:                                              ; preds = %160
  %165 = zext nneg i32 %162 to i64
  br label %166

166:                                              ; preds = %166, %164
  %167 = phi i64 [ %165, %164 ], [ %172, %166 ]
  %168 = getelementptr inbounds float, ptr %25, i64 %167
  %169 = load float, ptr %168, align 4, !tbaa !78
  %170 = fpext float %169 to double
  %171 = getelementptr inbounds double, ptr %25, i64 %167
  store double %170, ptr %171, align 8, !tbaa !63
  %172 = add nsw i64 %167, -1
  %173 = icmp sgt i64 %167, 0
  br i1 %173, label %166, label %207, !llvm.loop !89

174:                                              ; preds = %24
  %175 = load i32, ptr %8, align 4, !tbaa !45
  %176 = icmp eq i32 %175, 1
  br i1 %176, label %177, label %180

177:                                              ; preds = %174
  %178 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 3
  %179 = load float, ptr %178, align 4, !tbaa !78
  store float %179, ptr %25, align 4, !tbaa !78
  br label %183

180:                                              ; preds = %174
  %181 = call fastcc i32 @TIFFFetchData(ptr noundef %0, ptr noundef %1, ptr noundef %25)
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %229, label %183

183:                                              ; preds = %180, %177
  %184 = load i32, ptr %8, align 4, !tbaa !45
  %185 = add i32 %184, -1
  %186 = icmp sgt i32 %185, -1
  br i1 %186, label %187, label %207

187:                                              ; preds = %183
  %188 = zext nneg i32 %185 to i64
  br label %189

189:                                              ; preds = %189, %187
  %190 = phi i64 [ %188, %187 ], [ %195, %189 ]
  %191 = getelementptr inbounds float, ptr %25, i64 %190
  %192 = load float, ptr %191, align 4, !tbaa !78
  %193 = fpext float %192 to double
  %194 = getelementptr inbounds double, ptr %25, i64 %190
  store double %193, ptr %194, align 8, !tbaa !63
  %195 = add nsw i64 %190, -1
  %196 = icmp sgt i64 %190, 0
  br i1 %196, label %189, label %207, !llvm.loop !90

197:                                              ; preds = %24
  %198 = call fastcc i32 @TIFFFetchData(ptr noundef %0, ptr noundef %1, ptr noundef %25)
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %229, label %207

200:                                              ; preds = %24
  %201 = load ptr, ptr %0, align 8, !tbaa !23
  %202 = load i16, ptr %1, align 4, !tbaa !28
  %203 = zext i16 %202 to i32
  %204 = tail call ptr @_TIFFFieldWithTag(ptr noundef nonnull %0, i32 noundef %203) #4
  %205 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %204, i64 0, i32 7
  %206 = load ptr, ptr %205, align 8, !tbaa !42
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %201, ptr noundef nonnull @.str.24, ptr noundef %206) #4
  br label %229

207:                                              ; preds = %189, %166, %149, %138, %112, %101, %51, %40, %37, %48, %98, %109, %135, %146, %160, %183, %197
  %208 = icmp ugt i16 %6, 1
  br i1 %208, label %209, label %227

209:                                              ; preds = %207
  %210 = load double, ptr %25, align 8, !tbaa !63
  %211 = zext i16 %6 to i64
  br label %215

212:                                              ; preds = %215
  %213 = add nuw nsw i64 %216, 1
  %214 = icmp eq i64 %213, %211
  br i1 %214, label %227, label %215, !llvm.loop !91

215:                                              ; preds = %209, %212
  %216 = phi i64 [ 1, %209 ], [ %213, %212 ]
  %217 = getelementptr inbounds double, ptr %25, i64 %216
  %218 = load double, ptr %217, align 8, !tbaa !63
  %219 = fcmp une double %218, %210
  br i1 %219, label %220, label %212

220:                                              ; preds = %215
  %221 = load ptr, ptr %0, align 8, !tbaa !23
  %222 = load i16, ptr %1, align 4, !tbaa !28
  %223 = zext i16 %222 to i32
  %224 = call ptr @_TIFFFieldWithTag(ptr noundef nonnull %0, i32 noundef %223) #4
  %225 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %224, i64 0, i32 7
  %226 = load ptr, ptr %225, align 8, !tbaa !42
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %221, ptr noundef nonnull @.str.23, ptr noundef %226) #4
  br label %229

227:                                              ; preds = %212, %207
  %228 = load double, ptr %25, align 8, !tbaa !63
  store double %228, ptr %2, align 8, !tbaa !63
  br label %229

229:                                              ; preds = %200, %28, %86, %126, %157, %180, %227, %220, %197
  %230 = phi i32 [ 0, %197 ], [ 0, %220 ], [ 1, %227 ], [ 0, %180 ], [ 0, %157 ], [ 0, %126 ], [ 0, %86 ], [ 0, %28 ], [ 0, %200 ]
  %231 = icmp eq ptr %25, %4
  br i1 %231, label %233, label %232

232:                                              ; preds = %229
  call void @_TIFFfree(ptr noundef %25) #4
  br label %233

233:                                              ; preds = %232, %229
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #4
  br label %234

234:                                              ; preds = %11, %233
  %235 = phi i32 [ %230, %233 ], [ 0, %11 ]
  ret i32 %235
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @TIFFFetchStripThing(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = trunc i64 %2 to i32
  %6 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !45
  %8 = icmp eq i32 %7, %5
  br i1 %8, label %17, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr %0, align 8, !tbaa !23
  %11 = load i16, ptr %1, align 4, !tbaa !28
  %12 = zext i16 %11 to i32
  %13 = tail call ptr @_TIFFFieldWithTag(ptr noundef nonnull %0, i32 noundef %12) #4
  %14 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %13, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = load i32, ptr %6, align 4, !tbaa !45
  tail call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %10, ptr noundef nonnull @.str.19, ptr noundef %15, i32 noundef %16, i32 noundef %5) #4
  br label %97

17:                                               ; preds = %4
  %18 = load ptr, ptr %3, align 8, !tbaa !33
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = shl i32 %5, 2
  %22 = tail call ptr @_TIFFmalloc(i32 noundef %21) #4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load ptr, ptr %0, align 8, !tbaa !23
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %25, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.25) #4
  store ptr %22, ptr %3, align 8, !tbaa !33
  br label %97

26:                                               ; preds = %20
  store ptr %22, ptr %3, align 8, !tbaa !33
  br label %27

27:                                               ; preds = %26, %17
  %28 = load ptr, ptr %3, align 8, !tbaa !33
  %29 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 1
  %30 = load i16, ptr %29, align 2, !tbaa !39
  %31 = icmp eq i16 %30, 3
  %32 = load i32, ptr %6, align 4, !tbaa !45
  br i1 %31, label %33, label %88

33:                                               ; preds = %27
  %34 = shl i32 %32, 1
  %35 = tail call ptr @_TIFFmalloc(i32 noundef %34) #4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load ptr, ptr %0, align 8, !tbaa !23
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %38, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.26) #4
  br label %97

39:                                               ; preds = %33
  %40 = load i32, ptr %6, align 4, !tbaa !45
  %41 = icmp ult i32 %40, 3
  br i1 %41, label %42, label %68

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 7
  %44 = load i16, ptr %43, align 8, !tbaa !46
  %45 = icmp eq i16 %44, 19789
  br i1 %45, label %46, label %57

46:                                               ; preds = %42
  switch i32 %40, label %72 [
    i32 2, label %47
    i32 1, label %52
  ]

47:                                               ; preds = %46
  %48 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 3
  %49 = load i32, ptr %48, align 4, !tbaa !47
  %50 = trunc i32 %49 to i16
  %51 = getelementptr inbounds i16, ptr %35, i64 1
  store i16 %50, ptr %51, align 2, !tbaa !25
  br label %52

52:                                               ; preds = %47, %46
  %53 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 3
  %54 = load i32, ptr %53, align 4, !tbaa !47
  %55 = lshr i32 %54, 16
  %56 = trunc i32 %55 to i16
  store i16 %56, ptr %35, align 2, !tbaa !25
  br label %72

57:                                               ; preds = %42
  switch i32 %40, label %72 [
    i32 2, label %58
    i32 1, label %64
  ]

58:                                               ; preds = %57
  %59 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 3
  %60 = load i32, ptr %59, align 4, !tbaa !47
  %61 = lshr i32 %60, 16
  %62 = trunc i32 %61 to i16
  %63 = getelementptr inbounds i16, ptr %35, i64 1
  store i16 %62, ptr %63, align 2, !tbaa !25
  br label %64

64:                                               ; preds = %58, %57
  %65 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 3
  %66 = load i32, ptr %65, align 4, !tbaa !47
  %67 = trunc i32 %66 to i16
  store i16 %67, ptr %35, align 2, !tbaa !25
  br label %72

68:                                               ; preds = %39
  %69 = tail call fastcc i32 @TIFFFetchData(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %35)
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i32
  br label %72

72:                                               ; preds = %46, %52, %57, %64, %68
  %73 = phi i32 [ %71, %68 ], [ 1, %57 ], [ 1, %64 ], [ 1, %46 ], [ 1, %52 ]
  %74 = icmp ne i32 %73, 0
  %75 = icmp sgt i64 %2, 0
  %76 = and i1 %74, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %72, %77
  %78 = phi ptr [ %82, %77 ], [ %35, %72 ]
  %79 = phi ptr [ %85, %77 ], [ %28, %72 ]
  %80 = phi i64 [ %81, %77 ], [ %2, %72 ]
  %81 = add nsw i64 %80, -1
  %82 = getelementptr inbounds i16, ptr %78, i64 1
  %83 = load i16, ptr %78, align 2, !tbaa !25
  %84 = zext i16 %83 to i32
  %85 = getelementptr inbounds i32, ptr %79, i64 1
  store i32 %84, ptr %79, align 4, !tbaa !19
  %86 = icmp sgt i64 %80, 1
  br i1 %86, label %77, label %87, !llvm.loop !92

87:                                               ; preds = %77, %72
  tail call void @_TIFFfree(ptr noundef nonnull %35) #4
  br label %97

88:                                               ; preds = %27
  %89 = icmp eq i32 %32, 1
  br i1 %89, label %90, label %93

90:                                               ; preds = %88
  %91 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 3
  %92 = load i32, ptr %91, align 4, !tbaa !47
  store i32 %92, ptr %28, align 4, !tbaa !19
  br label %97

93:                                               ; preds = %88
  %94 = tail call fastcc i32 @TIFFFetchData(ptr noundef %0, ptr noundef %1, ptr noundef %28)
  %95 = icmp ne i32 %94, 0
  %96 = zext i1 %95 to i32
  br label %97

97:                                               ; preds = %9, %87, %37, %24, %93, %90
  %98 = phi i32 [ 0, %9 ], [ 0, %24 ], [ 1, %90 ], [ %96, %93 ], [ %73, %87 ], [ 0, %37 ]
  ret i32 %98
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @TIFFFetchData(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !39
  %6 = zext i16 %5 to i64
  %7 = getelementptr inbounds [0 x i32], ptr @tiffDataWidth, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !19
  %9 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !45
  %11 = mul i32 %10, %8
  %12 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !20
  %14 = and i32 %13, 2048
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 51
  %18 = load ptr, ptr %17, align 8, !tbaa !21
  %19 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 48
  %20 = load ptr, ptr %19, align 8, !tbaa !22
  %21 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 3
  %22 = load i32, ptr %21, align 4, !tbaa !47
  %23 = tail call i32 %18(ptr noundef %20, i32 noundef %22, i32 noundef 0) #4
  %24 = load i32, ptr %21, align 4, !tbaa !47
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %63

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 49
  %28 = load ptr, ptr %27, align 8, !tbaa !24
  %29 = load ptr, ptr %19, align 8, !tbaa !22
  %30 = tail call i32 %28(ptr noundef %29, ptr noundef %2, i32 noundef %11) #4
  %31 = icmp eq i32 %30, %11
  br i1 %31, label %44, label %63

32:                                               ; preds = %3
  %33 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 3
  %34 = load i32, ptr %33, align 4, !tbaa !47
  %35 = add i32 %34, %11
  %36 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 45
  %37 = load i32, ptr %36, align 8, !tbaa !26
  %38 = icmp sgt i32 %35, %37
  br i1 %38, label %63, label %39

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 44
  %41 = load ptr, ptr %40, align 8, !tbaa !27
  %42 = zext i32 %34 to i64
  %43 = getelementptr inbounds i8, ptr %41, i64 %42
  tail call void @_TIFFmemcpy(ptr noundef %2, ptr noundef %43, i32 noundef %11) #4
  br label %44

44:                                               ; preds = %26, %39
  %45 = load i32, ptr %12, align 8, !tbaa !20
  %46 = and i32 %45, 128
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %70, label %48

48:                                               ; preds = %44
  %49 = load i16, ptr %4, align 2, !tbaa !39
  switch i16 %49, label %70 [
    i16 3, label %50
    i16 8, label %50
    i16 4, label %53
    i16 9, label %53
    i16 11, label %53
    i16 5, label %56
    i16 10, label %56
    i16 12, label %60
  ]

50:                                               ; preds = %48, %48
  %51 = load i32, ptr %9, align 4, !tbaa !45
  %52 = zext i32 %51 to i64
  tail call void @TIFFSwabArrayOfShort(ptr noundef %2, i64 noundef %52) #4
  br label %70

53:                                               ; preds = %48, %48, %48
  %54 = load i32, ptr %9, align 4, !tbaa !45
  %55 = zext i32 %54 to i64
  tail call void @TIFFSwabArrayOfLong(ptr noundef %2, i64 noundef %55) #4
  br label %70

56:                                               ; preds = %48, %48
  %57 = load i32, ptr %9, align 4, !tbaa !45
  %58 = shl i32 %57, 1
  %59 = zext i32 %58 to i64
  tail call void @TIFFSwabArrayOfLong(ptr noundef %2, i64 noundef %59) #4
  br label %70

60:                                               ; preds = %48
  %61 = load i32, ptr %9, align 4, !tbaa !45
  %62 = zext i32 %61 to i64
  tail call void @TIFFSwabArrayOfDouble(ptr noundef %2, i64 noundef %62) #4
  br label %70

63:                                               ; preds = %32, %26, %16
  %64 = load ptr, ptr %0, align 8, !tbaa !23
  %65 = load i16, ptr %1, align 4, !tbaa !28
  %66 = zext i16 %65 to i32
  %67 = tail call ptr @_TIFFFieldWithTag(ptr noundef nonnull %0, i32 noundef %66) #4
  %68 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %67, i64 0, i32 7
  %69 = load ptr, ptr %68, align 8, !tbaa !42
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %64, ptr noundef nonnull @.str.20, ptr noundef %69) #4
  br label %70

70:                                               ; preds = %44, %48, %60, %56, %53, %50, %63
  %71 = phi i32 [ 0, %63 ], [ %11, %50 ], [ %11, %53 ], [ %11, %56 ], [ %11, %60 ], [ %11, %48 ], [ %11, %44 ]
  ret i32 %71
}

declare void @_TIFFfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @TIFFFetchRefBlackWhite(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 1
  %4 = load i16, ptr %3, align 2, !tbaa !39
  %5 = icmp eq i16 %4, 5
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @TIFFFetchNormalTag(ptr noundef %0, ptr noundef %1)
  br label %51

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !45
  %11 = shl i32 %10, 2
  %12 = tail call ptr @_TIFFmalloc(i32 noundef %11) #4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = load ptr, ptr %0, align 8, !tbaa !23
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %15, ptr noundef nonnull @.str.16, ptr noundef nonnull @TIFFFetchRefBlackWhite.mesg) #4
  br label %49

16:                                               ; preds = %8
  %17 = load i32, ptr %9, align 4, !tbaa !45
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !47
  store i32 %21, ptr %12, align 4, !tbaa !19
  br label %25

22:                                               ; preds = %16
  %23 = tail call fastcc i32 @TIFFFetchData(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %12)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %49, label %25

25:                                               ; preds = %19, %22
  %26 = load i32, ptr %9, align 4, !tbaa !45
  %27 = shl i32 %26, 2
  %28 = tail call ptr @_TIFFmalloc(i32 noundef %27) #4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load ptr, ptr %0, align 8, !tbaa !23
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %31, ptr noundef nonnull @.str.16, ptr noundef nonnull @TIFFFetchRefBlackWhite.mesg) #4
  br label %49

32:                                               ; preds = %25
  %33 = load i32, ptr %9, align 4, !tbaa !45
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %32
  %36 = zext i32 %33 to i64
  br label %37

37:                                               ; preds = %35, %37
  %38 = phi i64 [ 0, %35 ], [ %43, %37 ]
  %39 = getelementptr inbounds i32, ptr %12, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !19
  %41 = uitofp i32 %40 to float
  %42 = getelementptr inbounds float, ptr %28, i64 %38
  store float %41, ptr %42, align 4, !tbaa !78
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %36
  br i1 %44, label %45, label %37, !llvm.loop !93

45:                                               ; preds = %37, %32
  %46 = load i16, ptr %1, align 4, !tbaa !28
  %47 = zext i16 %46 to i32
  %48 = tail call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %0, i32 noundef %47, ptr noundef nonnull %28) #4
  tail call void @_TIFFfree(ptr noundef nonnull %28) #4
  br label %49

49:                                               ; preds = %30, %14, %45, %22
  br i1 %13, label %51, label %50

50:                                               ; preds = %49
  tail call void @_TIFFfree(ptr noundef nonnull %12) #4
  br label %51

51:                                               ; preds = %49, %50, %6
  ret void
}

declare ptr @_TIFFFieldWithTag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @EstimateStripByteCounts(ptr noundef %0, ptr nocapture noundef readonly %1, i16 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6
  %5 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 45
  %6 = load ptr, ptr %5, align 8, !tbaa !67
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @_TIFFfree(ptr noundef nonnull %6) #4
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 43
  %11 = load i32, ptr %10, align 4, !tbaa !54
  %12 = shl i32 %11, 2
  %13 = tail call ptr @_TIFFmalloc(i32 noundef %12) #4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = load ptr, ptr %0, align 8, !tbaa !23
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %16, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #4
  br label %17

17:                                               ; preds = %9, %15
  store ptr %13, ptr %5, align 8, !tbaa !67
  %18 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 10
  %19 = load i16, ptr %18, align 8, !tbaa !68
  %20 = icmp eq i16 %19, 1
  br i1 %20, label %89, label %21

21:                                               ; preds = %17
  %22 = zext i16 %2 to i32
  %23 = mul nuw nsw i32 %22, 12
  %24 = add nuw nsw i32 %23, 14
  %25 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 53
  %26 = load ptr, ptr %25, align 8, !tbaa !69
  %27 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 48
  %28 = load ptr, ptr %27, align 8, !tbaa !22
  %29 = tail call i32 %26(ptr noundef %28) #4
  %30 = icmp eq i16 %2, 0
  br i1 %30, label %49, label %31

31:                                               ; preds = %21, %31
  %32 = phi ptr [ %47, %31 ], [ %1, %21 ]
  %33 = phi i32 [ %45, %31 ], [ %24, %21 ]
  %34 = phi i16 [ %46, %31 ], [ %2, %21 ]
  %35 = getelementptr inbounds %struct.TIFFDirEntry, ptr %32, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !45
  %37 = getelementptr inbounds %struct.TIFFDirEntry, ptr %32, i64 0, i32 1
  %38 = load i16, ptr %37, align 2, !tbaa !39
  %39 = zext i16 %38 to i64
  %40 = getelementptr inbounds [0 x i32], ptr @tiffDataWidth, i64 0, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !19
  %42 = mul i32 %41, %36
  %43 = icmp ugt i32 %42, 4
  %44 = select i1 %43, i32 %42, i32 0
  %45 = add i32 %44, %33
  %46 = add i16 %34, -1
  %47 = getelementptr inbounds %struct.TIFFDirEntry, ptr %32, i64 1
  %48 = icmp eq i16 %46, 0
  br i1 %48, label %49, label %31, !llvm.loop !94

49:                                               ; preds = %31, %21
  %50 = phi i32 [ %24, %21 ], [ %45, %31 ]
  %51 = sub i32 %29, %50
  %52 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 24
  %53 = load i16, ptr %52, align 2, !tbaa !62
  %54 = icmp eq i16 %53, 2
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 15
  %57 = load i16, ptr %56, align 2, !tbaa !44
  %58 = zext i16 %57 to i32
  %59 = udiv i32 %51, %58
  br label %60

60:                                               ; preds = %55, %49
  %61 = phi i32 [ %59, %55 ], [ %51, %49 ]
  %62 = load i32, ptr %10, align 4, !tbaa !54
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %76, label %64

64:                                               ; preds = %60
  %65 = load ptr, ptr %5, align 8, !tbaa !67
  br label %66

66:                                               ; preds = %64, %66
  %67 = phi i16 [ 0, %64 ], [ %70, %66 ]
  %68 = zext i16 %67 to i64
  %69 = getelementptr inbounds i32, ptr %65, i64 %68
  store i32 %61, ptr %69, align 4, !tbaa !19
  %70 = add i16 %67, 1
  %71 = zext i16 %70 to i32
  %72 = load i32, ptr %10, align 4, !tbaa !54
  %73 = icmp ugt i32 %72, %71
  br i1 %73, label %66, label %74, !llvm.loop !95

74:                                               ; preds = %66
  %75 = zext i16 %67 to i64
  br label %76

76:                                               ; preds = %74, %60
  %77 = phi i64 [ 65535, %60 ], [ %75, %74 ]
  %78 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 44
  %79 = load ptr, ptr %78, align 8, !tbaa !70
  %80 = getelementptr inbounds i32, ptr %79, i64 %77
  %81 = load i32, ptr %80, align 4, !tbaa !19
  %82 = load ptr, ptr %5, align 8, !tbaa !67
  %83 = getelementptr inbounds i32, ptr %82, i64 %77
  %84 = load i32, ptr %83, align 4, !tbaa !19
  %85 = add i32 %84, %81
  %86 = icmp sgt i32 %85, %29
  br i1 %86, label %87, label %109

87:                                               ; preds = %76
  %88 = sub i32 %29, %81
  store i32 %88, ptr %83, align 4, !tbaa !19
  br label %109

89:                                               ; preds = %17
  %90 = tail call i32 @TIFFScanlineSize(ptr noundef %0) #4
  %91 = load i32, ptr %10, align 4, !tbaa !54
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %109, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 2
  %95 = load i32, ptr %94, align 4, !tbaa !96
  %96 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 42
  %97 = load i32, ptr %96, align 8, !tbaa !61
  %98 = udiv i32 %95, %97
  %99 = mul i32 %98, %90
  %100 = load ptr, ptr %5, align 8, !tbaa !67
  br label %101

101:                                              ; preds = %93, %101
  %102 = phi i16 [ 0, %93 ], [ %105, %101 ]
  %103 = zext i16 %102 to i64
  %104 = getelementptr inbounds i32, ptr %100, i64 %103
  store i32 %99, ptr %104, align 4, !tbaa !19
  %105 = add i16 %102, 1
  %106 = zext i16 %105 to i32
  %107 = load i32, ptr %10, align 4, !tbaa !54
  %108 = icmp ugt i32 %107, %106
  br i1 %108, label %101, label %109, !llvm.loop !97

109:                                              ; preds = %101, %89, %76, %87
  %110 = load i64, ptr %4, align 8, !tbaa !50
  %111 = or i64 %110, 16777216
  store i64 %111, ptr %4, align 8, !tbaa !50
  %112 = and i64 %110, 131072
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 2
  %116 = load i32, ptr %115, align 4, !tbaa !96
  %117 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 16
  store i32 %116, ptr %117, align 4, !tbaa !57
  br label %118

118:                                              ; preds = %114, %109
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ChopUpSingleUncompressedStrip(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 45
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  %4 = load i32, ptr %3, align 4, !tbaa !19
  %5 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 44
  %6 = load ptr, ptr %5, align 8, !tbaa !70
  %7 = load i32, ptr %6, align 4, !tbaa !19
  %8 = tail call i32 @TIFFVTileSize(ptr noundef %0, i32 noundef 1) #4
  %9 = icmp sgt i32 %8, 8192
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = sdiv i32 8192, %8
  %12 = mul i32 %11, %8
  br label %13

13:                                               ; preds = %1, %10
  %14 = phi i32 [ %12, %10 ], [ %8, %1 ]
  %15 = phi i32 [ %11, %10 ], [ 1, %1 ]
  %16 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 16
  %17 = load i32, ptr %16, align 4, !tbaa !57
  %18 = icmp ult i32 %15, %17
  br i1 %18, label %19, label %61

19:                                               ; preds = %13
  %20 = add i32 %4, -1
  %21 = add i32 %20, %14
  %22 = udiv i32 %21, %14
  %23 = shl i32 %22, 2
  %24 = tail call ptr @_TIFFmalloc(i32 noundef %23) #4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load ptr, ptr %0, align 8, !tbaa !23
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %27, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.27) #4
  br label %28

28:                                               ; preds = %19, %26
  %29 = tail call ptr @_TIFFmalloc(i32 noundef %23) #4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load ptr, ptr %0, align 8, !tbaa !23
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %32, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.28) #4
  br label %33

33:                                               ; preds = %28, %31
  %34 = or i1 %25, %30
  br i1 %34, label %39, label %35

35:                                               ; preds = %33
  %36 = icmp ugt i32 %14, %21
  br i1 %36, label %55, label %37

37:                                               ; preds = %35
  %38 = zext i32 %22 to i64
  br label %43

39:                                               ; preds = %33
  br i1 %25, label %41, label %40

40:                                               ; preds = %39
  tail call void @_TIFFfree(ptr noundef nonnull %24) #4
  br label %41

41:                                               ; preds = %40, %39
  br i1 %30, label %61, label %42

42:                                               ; preds = %41
  tail call void @_TIFFfree(ptr noundef nonnull %29) #4
  br label %61

43:                                               ; preds = %37, %43
  %44 = phi i64 [ 0, %37 ], [ %53, %43 ]
  %45 = phi i32 [ %4, %37 ], [ %52, %43 ]
  %46 = phi i32 [ %7, %37 ], [ %51, %43 ]
  %47 = phi i32 [ %14, %37 ], [ %48, %43 ]
  %48 = tail call i32 @llvm.smin.i32(i32 %47, i32 %45)
  %49 = getelementptr inbounds i32, ptr %24, i64 %44
  store i32 %48, ptr %49, align 4, !tbaa !19
  %50 = getelementptr inbounds i32, ptr %29, i64 %44
  store i32 %46, ptr %50, align 4, !tbaa !19
  %51 = add i32 %48, %46
  %52 = sub i32 %45, %48
  %53 = add nuw nsw i64 %44, 1
  %54 = icmp ult i64 %53, %38
  br i1 %54, label %43, label %55, !llvm.loop !98

55:                                               ; preds = %43, %35
  %56 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 43
  store i32 %22, ptr %56, align 4, !tbaa !54
  %57 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 6, i32 42
  store i32 %22, ptr %57, align 8, !tbaa !61
  %58 = tail call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %0, i32 noundef 278, i32 noundef %15) #4
  %59 = load ptr, ptr %2, align 8, !tbaa !67
  tail call void @_TIFFfree(ptr noundef %59) #4
  %60 = load ptr, ptr %5, align 8, !tbaa !70
  tail call void @_TIFFfree(ptr noundef %60) #4
  store ptr %24, ptr %2, align 8, !tbaa !67
  store ptr %29, ptr %5, align 8, !tbaa !70
  br label %61

61:                                               ; preds = %41, %42, %13, %55
  ret void
}

declare i32 @TIFFTileSize(ptr noundef) local_unnamed_addr #2

declare i32 @TIFFScanlineSize(ptr noundef) local_unnamed_addr #2

declare ptr @_TIFFmalloc(i32 noundef) local_unnamed_addr #2

declare void @TIFFSwabArrayOfDouble(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @TIFFFetchByteArray(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !45
  %6 = icmp ult i32 %5, 5
  br i1 %6, label %7, label %61

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tiff, ptr %0, i64 0, i32 7
  %9 = load i16, ptr %8, align 8, !tbaa !46
  %10 = icmp eq i16 %9, 19789
  br i1 %10, label %11, label %36

11:                                               ; preds = %7
  switch i32 %5, label %65 [
    i32 4, label %12
    i32 3, label %18
    i32 2, label %24
    i32 1, label %31
  ]

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !47
  %15 = trunc i32 %14 to i16
  %16 = and i16 %15, 255
  %17 = getelementptr inbounds i16, ptr %2, i64 3
  store i16 %16, ptr %17, align 2, !tbaa !25
  br label %18

18:                                               ; preds = %11, %12
  %19 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !47
  %21 = trunc i32 %20 to i16
  %22 = lshr i16 %21, 8
  %23 = getelementptr inbounds i16, ptr %2, i64 2
  store i16 %22, ptr %23, align 2, !tbaa !25
  br label %24

24:                                               ; preds = %11, %18
  %25 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 3
  %26 = load i32, ptr %25, align 4, !tbaa !47
  %27 = lshr i32 %26, 16
  %28 = trunc i32 %27 to i16
  %29 = and i16 %28, 255
  %30 = getelementptr inbounds i16, ptr %2, i64 1
  store i16 %29, ptr %30, align 2, !tbaa !25
  br label %31

31:                                               ; preds = %11, %24
  %32 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 3
  %33 = load i32, ptr %32, align 4, !tbaa !47
  %34 = lshr i32 %33, 24
  %35 = trunc i32 %34 to i16
  store i16 %35, ptr %2, align 2, !tbaa !25
  br label %65

36:                                               ; preds = %7
  switch i32 %5, label %65 [
    i32 4, label %37
    i32 3, label %43
    i32 2, label %50
    i32 1, label %56
  ]

37:                                               ; preds = %36
  %38 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 3
  %39 = load i32, ptr %38, align 4, !tbaa !47
  %40 = lshr i32 %39, 24
  %41 = trunc i32 %40 to i16
  %42 = getelementptr inbounds i16, ptr %2, i64 3
  store i16 %41, ptr %42, align 2, !tbaa !25
  br label %43

43:                                               ; preds = %36, %37
  %44 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 3
  %45 = load i32, ptr %44, align 4, !tbaa !47
  %46 = lshr i32 %45, 16
  %47 = trunc i32 %46 to i16
  %48 = and i16 %47, 255
  %49 = getelementptr inbounds i16, ptr %2, i64 2
  store i16 %48, ptr %49, align 2, !tbaa !25
  br label %50

50:                                               ; preds = %36, %43
  %51 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 3
  %52 = load i32, ptr %51, align 4, !tbaa !47
  %53 = trunc i32 %52 to i16
  %54 = lshr i16 %53, 8
  %55 = getelementptr inbounds i16, ptr %2, i64 1
  store i16 %54, ptr %55, align 2, !tbaa !25
  br label %56

56:                                               ; preds = %36, %50
  %57 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 3
  %58 = load i32, ptr %57, align 4, !tbaa !47
  %59 = trunc i32 %58 to i16
  %60 = and i16 %59, 255
  store i16 %60, ptr %2, align 2, !tbaa !25
  br label %65

61:                                               ; preds = %3
  %62 = tail call fastcc i32 @TIFFFetchData(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i32
  br label %65

65:                                               ; preds = %31, %11, %56, %36, %61
  %66 = phi i32 [ %64, %61 ], [ 1, %36 ], [ 1, %56 ], [ 1, %11 ], [ 1, %31 ]
  ret i32 %66
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @TIFFFetchRationalArray(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !45
  %6 = getelementptr inbounds %struct.TIFFDirEntry, ptr %1, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !39
  %8 = zext i16 %7 to i64
  %9 = getelementptr inbounds [0 x i32], ptr @tiffDataWidth, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !19
  %11 = mul i32 %10, %5
  %12 = tail call ptr @_TIFFmalloc(i32 noundef %11) #4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load ptr, ptr %0, align 8, !tbaa !23
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %15, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.21) #4
  br label %63

16:                                               ; preds = %3
  %17 = tail call fastcc i32 @TIFFFetchData(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %12)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %61, label %19

19:                                               ; preds = %16
  %20 = load i32, ptr %4, align 4, !tbaa !45
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %61, label %27

22:                                               ; preds = %60
  %23 = add nuw nsw i64 %28, 1
  %24 = load i32, ptr %4, align 4, !tbaa !45
  %25 = zext i32 %24 to i64
  %26 = icmp ult i64 %23, %25
  br i1 %26, label %27, label %61, !llvm.loop !99

27:                                               ; preds = %19, %22
  %28 = phi i64 [ %23, %22 ], [ 0, %19 ]
  %29 = trunc i64 %28 to i32
  %30 = shl i32 %29, 1
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, ptr %12, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !19
  %34 = or disjoint i32 %30, 1
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, ptr %12, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !19
  %38 = getelementptr inbounds float, ptr %2, i64 %28
  %39 = icmp eq i32 %37, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %27
  %41 = load ptr, ptr %0, align 8, !tbaa !23
  %42 = load i16, ptr %1, align 4, !tbaa !28
  %43 = zext i16 %42 to i32
  %44 = tail call ptr @_TIFFFieldWithTag(ptr noundef nonnull %0, i32 noundef %43) #4
  %45 = getelementptr inbounds %struct.TIFFFieldInfo, ptr %44, i64 0, i32 7
  %46 = load ptr, ptr %45, align 8, !tbaa !42
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef %41, ptr noundef nonnull @.str.22, ptr noundef %46, i32 noundef %33) #4
  br label %60

47:                                               ; preds = %27
  %48 = load i16, ptr %6, align 2, !tbaa !39
  %49 = icmp eq i16 %48, 5
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = uitofp i32 %33 to float
  %52 = uitofp i32 %37 to float
  %53 = fdiv float %51, %52
  br label %58

54:                                               ; preds = %47
  %55 = sitofp i32 %33 to float
  %56 = sitofp i32 %37 to float
  %57 = fdiv float %55, %56
  br label %58

58:                                               ; preds = %54, %50
  %59 = phi float [ %57, %54 ], [ %53, %50 ]
  store float %59, ptr %38, align 4, !tbaa !78
  br label %60

60:                                               ; preds = %40, %58
  br i1 %39, label %61, label %22

61:                                               ; preds = %60, %22, %19, %16
  %62 = phi i32 [ 0, %16 ], [ 0, %19 ], [ 1, %22 ], [ 0, %60 ]
  tail call void @_TIFFfree(ptr noundef nonnull %12) #4
  br label %63

63:                                               ; preds = %14, %61
  %64 = phi i32 [ %62, %61 ], [ 0, %14 ]
  ret i32 %64
}

declare i32 @TIFFVTileSize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 24}
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
!16 = !{!6, !10, i64 20}
!17 = !{!6, !7, i64 680}
!18 = !{!6, !12, i64 540}
!19 = !{!10, !10, i64 0}
!20 = !{!6, !10, i64 16}
!21 = !{!6, !7, i64 808}
!22 = !{!6, !7, i64 784}
!23 = !{!6, !7, i64 0}
!24 = !{!6, !7, i64 792}
!25 = !{!12, !12, i64 0}
!26 = !{!6, !10, i64 760}
!27 = !{!6, !7, i64 752}
!28 = !{!29, !12, i64 0}
!29 = !{!"", !12, i64 0, !12, i64 2, !10, i64 4, !10, i64 8}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.unroll.disable"}
!32 = !{!6, !7, i64 840}
!33 = !{!7, !7, i64 0}
!34 = !{!35, !10, i64 0}
!35 = !{!"", !10, i64 0, !12, i64 4, !12, i64 6, !10, i64 8, !12, i64 12, !8, i64 14, !8, i64 15, !7, i64 16}
!36 = !{!6, !10, i64 848}
!37 = distinct !{!37, !31}
!38 = !{!35, !12, i64 12}
!39 = !{!29, !12, i64 2}
!40 = !{!35, !10, i64 8}
!41 = distinct !{!41, !31}
!42 = !{!35, !7, i64 16}
!43 = !{!35, !12, i64 4}
!44 = !{!11, !12, i64 66}
!45 = !{!29, !10, i64 4}
!46 = !{!6, !12, i64 504}
!47 = !{!29, !10, i64 8}
!48 = !{!6, !7, i64 520}
!49 = !{!6, !7, i64 528}
!50 = !{!51, !51, i64 0}
!51 = !{!"long", !8, i64 0}
!52 = !{i32 0, i32 2}
!53 = distinct !{!53, !31}
!54 = !{!11, !10, i64 244}
!55 = !{!11, !10, i64 24}
!56 = !{!11, !10, i64 36}
!57 = !{!11, !10, i64 68}
!58 = !{!11, !10, i64 40}
!59 = !{!11, !10, i64 32}
!60 = !{!11, !10, i64 44}
!61 = !{!11, !10, i64 240}
!62 = !{!11, !12, i64 106}
!63 = !{!13, !13, i64 0}
!64 = !{!11, !12, i64 52}
!65 = distinct !{!65, !31}
!66 = !{!11, !12, i64 58}
!67 = !{!11, !7, i64 256}
!68 = !{!11, !12, i64 56}
!69 = !{!6, !7, i64 824}
!70 = !{!11, !7, i64 248}
!71 = !{!11, !12, i64 74}
!72 = !{!6, !10, i64 536}
!73 = !{!6, !10, i64 544}
!74 = !{!6, !10, i64 564}
!75 = !{!6, !10, i64 568}
!76 = !{!6, !10, i64 572}
!77 = !{!6, !10, i64 712}
!78 = !{!14, !14, i64 0}
!79 = !{!8, !8, i64 0}
!80 = !{!35, !8, i64 15}
!81 = !{!6, !12, i64 98}
!82 = distinct !{!82, !31}
!83 = distinct !{!83, !31}
!84 = distinct !{!84, !31}
!85 = distinct !{!85, !31}
!86 = distinct !{!86, !31}
!87 = distinct !{!87, !31}
!88 = distinct !{!88, !31}
!89 = distinct !{!89, !31}
!90 = distinct !{!90, !31}
!91 = distinct !{!91, !31}
!92 = distinct !{!92, !31}
!93 = distinct !{!93, !31}
!94 = distinct !{!94, !31}
!95 = distinct !{!95, !31}
!96 = !{!11, !10, i64 28}
!97 = distinct !{!97, !31}
!98 = distinct !{!98, !31}
!99 = distinct !{!99, !31}
