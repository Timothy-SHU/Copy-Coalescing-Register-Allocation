; ModuleID = 'blender/source/blender/blenkernel/intern/bmfont.c'
source_filename = "blender/source/blender/blenkernel/intern/bmfont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.bmGlyph = type { i16, i16, i16, i8, i8, i8, i8, i8, i8 }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.bmFont = type { [4 x i8], i16, i16, i16, i16, [1 x %struct.bmGlyph] }

@.str = private unnamed_addr constant [18 x i8] c"unicode: %d '%c'\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c" locx: %4d locy: %4d\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c" sizex: %3d sizey: %3d\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c" ofsx:  %3d ofsy:  %3d\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c" advan: %3d reser: %3d\0A\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [30 x i8] c"readBitmapFontVersion0:buffer\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"readBitmapFontVersion0:bmfont\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [21 x i8] c"Oldy = %d Newy = %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"glyphcount = %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"bytes = %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"detectBitmapFont :Unsupported version %d\0A\00", align 1
@str = private unnamed_addr constant [45 x i8] c"readBitmapFontVersion0: corrupted bitmapfont\00", align 1

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @printfGlyph(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i16, ptr %0, align 2, !tbaa !34
  %3 = zext i16 %2 to i32
  %4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %3, i32 noundef %3) #8
  %5 = getelementptr inbounds %struct.bmGlyph, ptr %0, i64 0, i32 1
  %6 = load i16, ptr %5, align 2, !tbaa !39
  %7 = sext i16 %6 to i32
  %8 = getelementptr inbounds %struct.bmGlyph, ptr %0, i64 0, i32 2
  %9 = load i16, ptr %8, align 2, !tbaa !40
  %10 = sext i16 %9 to i32
  %11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %7, i32 noundef %10) #8
  %12 = getelementptr inbounds %struct.bmGlyph, ptr %0, i64 0, i32 5
  %13 = load i8, ptr %12, align 2, !tbaa !41
  %14 = zext i8 %13 to i32
  %15 = getelementptr inbounds %struct.bmGlyph, ptr %0, i64 0, i32 6
  %16 = load i8, ptr %15, align 1, !tbaa !42
  %17 = zext i8 %16 to i32
  %18 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %14, i32 noundef %17) #8
  %19 = getelementptr inbounds %struct.bmGlyph, ptr %0, i64 0, i32 3
  %20 = load i8, ptr %19, align 2, !tbaa !43
  %21 = sext i8 %20 to i32
  %22 = getelementptr inbounds %struct.bmGlyph, ptr %0, i64 0, i32 4
  %23 = load i8, ptr %22, align 1, !tbaa !44
  %24 = sext i8 %23 to i32
  %25 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %21, i32 noundef %24) #8
  %26 = getelementptr inbounds %struct.bmGlyph, ptr %0, i64 0, i32 7
  %27 = load i8, ptr %26, align 2, !tbaa !45
  %28 = zext i8 %27 to i32
  %29 = getelementptr inbounds %struct.bmGlyph, ptr %0, i64 0, i32 8
  %30 = load i8, ptr %29, align 1, !tbaa !46
  %31 = zext i8 %30 to i32
  %32 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %28, i32 noundef %31) #8
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @calcAlpha(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %27, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !47
  %6 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !54
  %8 = mul nsw i32 %7, %5
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !55
  br label %13

13:                                               ; preds = %10, %13
  %14 = phi ptr [ %24, %13 ], [ %12, %10 ]
  %15 = phi i32 [ %25, %13 ], [ %8, %10 ]
  %16 = load i8, ptr %14, align 1, !tbaa !56
  %17 = getelementptr inbounds i8, ptr %14, i64 1
  %18 = load i8, ptr %17, align 1, !tbaa !56
  %19 = tail call i8 @llvm.umax.i8(i8 %16, i8 %18)
  %20 = getelementptr inbounds i8, ptr %14, i64 2
  %21 = load i8, ptr %20, align 1, !tbaa !56
  %22 = tail call i8 @llvm.umax.i8(i8 %19, i8 %21)
  %23 = getelementptr inbounds i8, ptr %14, i64 3
  store i8 %22, ptr %23, align 1, !tbaa !56
  %24 = getelementptr inbounds i8, ptr %14, i64 4
  %25 = add nsw i32 %15, -1
  %26 = icmp ugt i32 %15, 1
  br i1 %26, label %13, label %27, !llvm.loop !57

27:                                               ; preds = %13, %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @readBitmapFontVersion0(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !47
  %6 = mul nsw i32 %5, %2
  %7 = mul nsw i32 %2, 6
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i8, ptr %1, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !56
  %11 = zext i8 %10 to i32
  %12 = shl nuw nsw i32 %11, 8
  %13 = mul nsw i32 %2, 7
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, ptr %1, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !56
  %17 = zext i8 %16 to i32
  %18 = or disjoint i32 %12, %17
  %19 = mul nuw nsw i32 %18, 12
  %20 = add nuw nsw i32 %19, 12
  %21 = add nsw i32 %5, -1
  %22 = add nsw i32 %21, %20
  %23 = sdiv i32 %22, %5
  %24 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %25 = load i32, ptr %24, align 4, !tbaa !54
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %186

27:                                               ; preds = %3
  %28 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !59
  %29 = zext nneg i32 %20 to i64
  %30 = tail call ptr %28(i64 noundef %29, ptr noundef nonnull @.str.5) #9
  %31 = sext i32 %6 to i64
  %32 = sub nsw i64 0, %31
  br label %33

33:                                               ; preds = %27, %33
  %34 = phi i64 [ 0, %27 ], [ %47, %33 ]
  %35 = phi ptr [ %1, %27 ], [ %46, %33 ]
  %36 = phi i32 [ 0, %27 ], [ %44, %33 ]
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, ptr %35, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !56
  %40 = getelementptr inbounds i8, ptr %30, i64 %34
  store i8 %39, ptr %40, align 1, !tbaa !56
  %41 = add nsw i32 %36, %2
  %42 = icmp slt i32 %41, %6
  %43 = select i1 %42, i32 0, i32 %6
  %44 = sub nsw i32 %41, %43
  %45 = select i1 %42, i64 0, i64 %32
  %46 = getelementptr inbounds i8, ptr %35, i64 %45
  %47 = add nuw nsw i64 %34, 1
  %48 = icmp eq i64 %47, %29
  br i1 %48, label %49, label %33, !llvm.loop !60

49:                                               ; preds = %33
  %50 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !59
  %51 = tail call ptr %50(i64 noundef %29, ptr noundef nonnull @.str.6) #9
  %52 = load i8, ptr %30, align 1, !tbaa !56
  store i8 %52, ptr %51, align 2, !tbaa !56
  %53 = getelementptr inbounds i8, ptr %30, i64 1
  %54 = load i8, ptr %53, align 1, !tbaa !56
  %55 = getelementptr inbounds [4 x i8], ptr %51, i64 0, i64 1
  store i8 %54, ptr %55, align 1, !tbaa !56
  %56 = getelementptr inbounds i8, ptr %30, i64 2
  %57 = load i8, ptr %56, align 1, !tbaa !56
  %58 = getelementptr inbounds [4 x i8], ptr %51, i64 0, i64 2
  store i8 %57, ptr %58, align 2, !tbaa !56
  %59 = getelementptr inbounds i8, ptr %30, i64 3
  %60 = load i8, ptr %59, align 1, !tbaa !56
  %61 = getelementptr inbounds [4 x i8], ptr %51, i64 0, i64 3
  store i8 %60, ptr %61, align 1, !tbaa !56
  %62 = getelementptr i8, ptr %30, i64 4
  %63 = load i8, ptr %62, align 1, !tbaa !56
  %64 = zext i8 %63 to i16
  %65 = shl nuw i16 %64, 8
  %66 = getelementptr inbounds i8, ptr %30, i64 5
  %67 = load i8, ptr %66, align 1, !tbaa !56
  %68 = zext i8 %67 to i16
  %69 = or disjoint i16 %65, %68
  %70 = getelementptr inbounds %struct.bmFont, ptr %51, i64 0, i32 1
  store i16 %69, ptr %70, align 2, !tbaa !61
  %71 = getelementptr inbounds i8, ptr %30, i64 6
  %72 = load i8, ptr %71, align 1, !tbaa !56
  %73 = zext i8 %72 to i16
  %74 = shl nuw i16 %73, 8
  %75 = getelementptr inbounds i8, ptr %30, i64 7
  %76 = load i8, ptr %75, align 1, !tbaa !56
  %77 = zext i8 %76 to i16
  %78 = or disjoint i16 %74, %77
  %79 = getelementptr inbounds %struct.bmFont, ptr %51, i64 0, i32 2
  store i16 %78, ptr %79, align 2, !tbaa !63
  %80 = getelementptr inbounds i8, ptr %30, i64 8
  %81 = load i8, ptr %80, align 1, !tbaa !56
  %82 = zext i8 %81 to i16
  %83 = shl nuw i16 %82, 8
  %84 = getelementptr inbounds i8, ptr %30, i64 9
  %85 = load i8, ptr %84, align 1, !tbaa !56
  %86 = zext i8 %85 to i16
  %87 = or disjoint i16 %83, %86
  %88 = getelementptr inbounds %struct.bmFont, ptr %51, i64 0, i32 3
  store i16 %87, ptr %88, align 2, !tbaa !64
  %89 = getelementptr inbounds i8, ptr %30, i64 10
  %90 = load i8, ptr %89, align 1, !tbaa !56
  %91 = zext i8 %90 to i16
  %92 = shl nuw i16 %91, 8
  %93 = getelementptr i8, ptr %30, i64 11
  %94 = load i8, ptr %93, align 1, !tbaa !56
  %95 = zext i8 %94 to i16
  %96 = or disjoint i16 %92, %95
  %97 = getelementptr inbounds %struct.bmFont, ptr %51, i64 0, i32 4
  store i16 %96, ptr %97, align 2, !tbaa !65
  %98 = icmp sgt i16 %78, 0
  br i1 %98, label %99, label %164

99:                                               ; preds = %49
  %100 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !66
  br label %101

101:                                              ; preds = %99, %158
  %102 = phi i16 [ %78, %99 ], [ %159, %158 ]
  %103 = phi i32 [ %100, %99 ], [ %160, %158 ]
  %104 = phi i64 [ 12, %99 ], [ %149, %158 ]
  %105 = phi i64 [ 0, %99 ], [ %161, %158 ]
  %106 = getelementptr inbounds i8, ptr %30, i64 %104
  %107 = load i8, ptr %106, align 1, !tbaa !56
  %108 = zext i8 %107 to i16
  %109 = shl nuw i16 %108, 8
  %110 = getelementptr i8, ptr %106, i64 1
  %111 = load i8, ptr %110, align 1, !tbaa !56
  %112 = zext i8 %111 to i16
  %113 = or disjoint i16 %109, %112
  %114 = getelementptr inbounds %struct.bmFont, ptr %51, i64 0, i32 5, i64 %105
  store i16 %113, ptr %114, align 2, !tbaa !34
  %115 = or disjoint i64 %104, 2
  %116 = getelementptr inbounds i8, ptr %30, i64 %115
  %117 = load i8, ptr %116, align 1, !tbaa !56
  %118 = zext i8 %117 to i16
  %119 = shl nuw i16 %118, 8
  %120 = getelementptr i8, ptr %106, i64 3
  %121 = load i8, ptr %120, align 1, !tbaa !56
  %122 = zext i8 %121 to i16
  %123 = or disjoint i16 %119, %122
  %124 = getelementptr inbounds %struct.bmFont, ptr %51, i64 0, i32 5, i64 %105, i32 1
  store i16 %123, ptr %124, align 2, !tbaa !39
  %125 = getelementptr i8, ptr %62, i64 %104
  %126 = load i8, ptr %125, align 1, !tbaa !56
  %127 = zext i8 %126 to i16
  %128 = shl nuw i16 %127, 8
  %129 = getelementptr i8, ptr %106, i64 5
  %130 = load i8, ptr %129, align 1, !tbaa !56
  %131 = zext i8 %130 to i16
  %132 = or disjoint i16 %128, %131
  %133 = getelementptr inbounds %struct.bmFont, ptr %51, i64 0, i32 5, i64 %105, i32 2
  store i16 %132, ptr %133, align 2, !tbaa !40
  %134 = getelementptr i8, ptr %106, i64 6
  %135 = load i8, ptr %134, align 1, !tbaa !56
  %136 = getelementptr inbounds %struct.bmFont, ptr %51, i64 0, i32 5, i64 %105, i32 3
  store i8 %135, ptr %136, align 2, !tbaa !43
  %137 = getelementptr i8, ptr %106, i64 7
  %138 = load i8, ptr %137, align 1, !tbaa !56
  %139 = getelementptr inbounds %struct.bmFont, ptr %51, i64 0, i32 5, i64 %105, i32 4
  store i8 %138, ptr %139, align 1, !tbaa !44
  %140 = getelementptr i8, ptr %106, i64 8
  %141 = load i8, ptr %140, align 1, !tbaa !56
  %142 = getelementptr inbounds %struct.bmFont, ptr %51, i64 0, i32 5, i64 %105, i32 5
  store i8 %141, ptr %142, align 2, !tbaa !41
  %143 = getelementptr i8, ptr %106, i64 9
  %144 = load i8, ptr %143, align 1, !tbaa !56
  %145 = getelementptr inbounds %struct.bmFont, ptr %51, i64 0, i32 5, i64 %105, i32 6
  store i8 %144, ptr %145, align 1, !tbaa !42
  %146 = getelementptr i8, ptr %106, i64 10
  %147 = load i8, ptr %146, align 1, !tbaa !56
  %148 = getelementptr inbounds %struct.bmFont, ptr %51, i64 0, i32 5, i64 %105, i32 7
  store i8 %147, ptr %148, align 2, !tbaa !45
  %149 = add nuw nsw i64 %104, 12
  %150 = getelementptr i8, ptr %93, i64 %104
  %151 = load i8, ptr %150, align 1, !tbaa !56
  %152 = getelementptr inbounds %struct.bmFont, ptr %51, i64 0, i32 5, i64 %105, i32 8
  store i8 %151, ptr %152, align 1, !tbaa !46
  %153 = and i32 %103, 1
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %158, label %155

155:                                              ; preds = %101
  tail call void @printfGlyph(ptr noundef nonnull %114) #8
  %156 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !66
  %157 = load i16, ptr %79, align 2, !tbaa !63
  br label %158

158:                                              ; preds = %101, %155
  %159 = phi i16 [ %102, %101 ], [ %157, %155 ]
  %160 = phi i32 [ %103, %101 ], [ %156, %155 ]
  %161 = add nuw nsw i64 %105, 1
  %162 = sext i16 %159 to i64
  %163 = icmp slt i64 %161, %162
  br i1 %163, label %101, label %164, !llvm.loop !69

164:                                              ; preds = %158, %49
  %165 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %165(ptr noundef nonnull %30) #9
  %166 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !66
  %167 = and i32 %166, 1
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %175, label %169

169:                                              ; preds = %164
  %170 = load i32, ptr %24, align 4, !tbaa !54
  %171 = sub nsw i32 %170, %23
  %172 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %170, i32 noundef %171) #8
  %173 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %18) #8
  %174 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %20) #8
  br label %175

175:                                              ; preds = %169, %164
  %176 = load i32, ptr %24, align 4, !tbaa !54
  %177 = sub nsw i32 %176, %23
  store i32 %177, ptr %24, align 4, !tbaa !54
  %178 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 25
  store ptr %51, ptr %178, align 8, !tbaa !70
  %179 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 23
  %180 = load i32, ptr %179, align 4, !tbaa !71
  %181 = or i32 %180, 1
  store i32 %181, ptr %179, align 4, !tbaa !71
  %182 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 4
  %183 = load i8, ptr %182, align 8, !tbaa !72
  %184 = icmp ult i8 %183, 32
  br i1 %184, label %185, label %188

185:                                              ; preds = %175
  tail call void @calcAlpha(ptr noundef nonnull %0) #8
  br label %188

186:                                              ; preds = %3
  %187 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %188

188:                                              ; preds = %175, %185, %186
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @detectBitmapFont(ptr noundef %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %79, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = icmp eq ptr %5, null
  br i1 %6, label %79, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !47
  %10 = add nsw i32 %9, -1
  %11 = xor i32 %10, %9
  %12 = shl nsw i32 %9, 1
  %13 = add nsw i32 %12, -1
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %15, label %79

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !54
  %18 = add nsw i32 %17, -1
  %19 = mul nsw i32 %18, %9
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, ptr %5, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !56
  %23 = icmp eq i8 %22, 66
  br i1 %23, label %24, label %36

24:                                               ; preds = %15
  %25 = getelementptr inbounds i8, ptr %21, i64 1
  %26 = load i8, ptr %25, align 1, !tbaa !56
  %27 = icmp eq i8 %26, 70
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = getelementptr inbounds i8, ptr %21, i64 2
  %30 = load i8, ptr %29, align 1, !tbaa !56
  %31 = icmp eq i8 %30, 78
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = getelementptr inbounds i8, ptr %21, i64 3
  %34 = load i8, ptr %33, align 1, !tbaa !56
  %35 = icmp eq i8 %34, 84
  br i1 %35, label %79, label %36

36:                                               ; preds = %32, %28, %24, %15
  %37 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 25
  br label %38

38:                                               ; preds = %75, %36
  %39 = phi i8 [ %22, %36 ], [ %78, %75 ]
  %40 = phi i32 [ 0, %36 ], [ %77, %75 ]
  %41 = phi ptr [ %21, %36 ], [ %76, %75 ]
  %42 = icmp eq i8 %39, 66
  br i1 %42, label %43, label %73

43:                                               ; preds = %38
  %44 = getelementptr inbounds i8, ptr %41, i64 4
  %45 = load i8, ptr %44, align 1, !tbaa !56
  %46 = icmp eq i8 %45, 70
  br i1 %46, label %47, label %73

47:                                               ; preds = %43
  %48 = getelementptr inbounds i8, ptr %41, i64 8
  %49 = load i8, ptr %48, align 1, !tbaa !56
  %50 = icmp eq i8 %49, 78
  br i1 %50, label %51, label %73

51:                                               ; preds = %47
  %52 = getelementptr inbounds i8, ptr %41, i64 12
  %53 = load i8, ptr %52, align 1, !tbaa !56
  %54 = icmp eq i8 %53, 84
  br i1 %54, label %55, label %73

55:                                               ; preds = %51
  %56 = getelementptr inbounds i8, ptr %41, i64 16
  %57 = load i8, ptr %56, align 1, !tbaa !56
  %58 = zext i8 %57 to i32
  %59 = shl nuw nsw i32 %58, 8
  %60 = getelementptr inbounds i8, ptr %41, i64 20
  %61 = load i8, ptr %60, align 1, !tbaa !56
  %62 = zext i8 %61 to i32
  %63 = or disjoint i32 %59, %62
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %55
  tail call void @readBitmapFontVersion0(ptr noundef nonnull %0, ptr noundef nonnull %41, i32 noundef 4) #8
  br label %68

66:                                               ; preds = %55
  %67 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %63) #8
  br label %68

68:                                               ; preds = %66, %65
  %69 = load ptr, ptr %37, align 8, !tbaa !70
  %70 = icmp eq ptr %69, null
  %71 = icmp ult i32 %40, 3
  %72 = select i1 %70, i1 %71, i1 false
  br i1 %72, label %75, label %79

73:                                               ; preds = %51, %47, %43, %38
  %74 = icmp ult i32 %40, 3
  br i1 %74, label %75, label %79

75:                                               ; preds = %73, %68
  %76 = getelementptr inbounds i8, ptr %41, i64 1
  %77 = add nuw nsw i32 %40, 1
  %78 = load i8, ptr %76, align 1, !tbaa !56
  br label %38, !llvm.loop !73

79:                                               ; preds = %73, %68, %7, %32, %3, %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define dso_local i32 @locateGlyph(ptr noundef readonly %0, i16 noundef zeroext %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.bmFont, ptr %0, i64 0, i32 2
  %6 = load i16, ptr %5, align 2, !tbaa !63
  %7 = sext i16 %6 to i32
  br label %8

8:                                                ; preds = %17, %4
  %9 = phi i32 [ 0, %4 ], [ %19, %17 ]
  %10 = phi i32 [ %7, %4 ], [ %20, %17 ]
  %11 = add nsw i32 %10, %9
  %12 = ashr i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.bmFont, ptr %0, i64 0, i32 5, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !34
  %16 = icmp eq i16 %15, %1
  br i1 %16, label %23, label %17

17:                                               ; preds = %8
  %18 = icmp ult i16 %15, %1
  %19 = select i1 %18, i32 %12, i32 %9
  %20 = select i1 %18, i32 %10, i32 %12
  %21 = sub nsw i32 %20, %19
  %22 = icmp slt i32 %21, 2
  br i1 %22, label %23, label %8

23:                                               ; preds = %17, %8, %2
  %24 = phi i32 [ 0, %2 ], [ 0, %17 ], [ %12, %8 ]
  ret i32 %24
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @matrixGlyph(ptr noundef readonly %0, i16 noundef zeroext %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef %4, ptr nocapture noundef %5, ptr nocapture noundef writeonly %6, ptr nocapture noundef writeonly %7, ptr nocapture noundef writeonly %8, ptr nocapture noundef writeonly %9, ptr nocapture noundef writeonly %10) local_unnamed_addr #5 {
  store float 0.000000e+00, ptr %3, align 4, !tbaa !74
  store float 0.000000e+00, ptr %2, align 4, !tbaa !74
  store float 1.000000e+00, ptr %5, align 4, !tbaa !74
  store float 1.000000e+00, ptr %4, align 4, !tbaa !74
  store float 0.000000e+00, ptr %7, align 4, !tbaa !74
  store float 0.000000e+00, ptr %6, align 4, !tbaa !74
  store float 0.000000e+00, ptr %9, align 4, !tbaa !74
  store float 0.000000e+00, ptr %8, align 4, !tbaa !74
  store float 1.000000e+00, ptr %10, align 4, !tbaa !74
  %12 = icmp eq ptr %0, null
  br i1 %12, label %101, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 25
  %15 = load ptr, ptr %14, align 8, !tbaa !70
  %16 = icmp eq ptr %15, null
  br i1 %16, label %101, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 23
  %19 = load i32, ptr %18, align 4, !tbaa !71
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %101, label %22

22:                                               ; preds = %17
  %23 = tail call i32 @locateGlyph(ptr noundef nonnull %15, i16 noundef zeroext %1) #8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %101, label %25

25:                                               ; preds = %22
  %26 = sext i32 %23 to i64
  %27 = getelementptr inbounds %struct.bmFont, ptr %15, i64 0, i32 5, i64 %26, i32 5
  %28 = load i8, ptr %27, align 2, !tbaa !41
  %29 = uitofp i8 %28 to float
  %30 = getelementptr inbounds %struct.bmFont, ptr %15, i64 0, i32 5, i64 0, i32 5
  %31 = load i8, ptr %30, align 2, !tbaa !41
  %32 = uitofp i8 %31 to float
  %33 = fdiv float %29, %32
  store float %33, ptr %4, align 4, !tbaa !74
  %34 = getelementptr inbounds %struct.bmFont, ptr %15, i64 0, i32 5, i64 %26, i32 6
  %35 = load i8, ptr %34, align 1, !tbaa !42
  %36 = uitofp i8 %35 to float
  %37 = getelementptr inbounds %struct.bmFont, ptr %15, i64 0, i32 5, i64 0, i32 6
  %38 = load i8, ptr %37, align 1, !tbaa !42
  %39 = uitofp i8 %38 to float
  %40 = fdiv float %36, %39
  store float %40, ptr %5, align 4, !tbaa !74
  %41 = getelementptr inbounds %struct.bmFont, ptr %15, i64 0, i32 5, i64 %26, i32 1
  %42 = load i16, ptr %41, align 2, !tbaa !39
  %43 = sitofp i16 %42 to float
  %44 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %45 = load i32, ptr %44, align 8, !tbaa !47
  %46 = sitofp i32 %45 to float
  %47 = fdiv float %43, %46
  store float %47, ptr %6, align 4, !tbaa !74
  %48 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %49 = load i32, ptr %48, align 4, !tbaa !54
  %50 = getelementptr inbounds %struct.bmFont, ptr %15, i64 0, i32 5, i64 %26, i32 2
  %51 = load i16, ptr %50, align 2, !tbaa !40
  %52 = sext i16 %51 to i32
  %53 = sub nsw i32 %49, %52
  %54 = sitofp i32 %53 to float
  %55 = sitofp i32 %49 to float
  %56 = fdiv float %54, %55
  store float %56, ptr %7, align 4, !tbaa !74
  %57 = getelementptr inbounds %struct.bmFont, ptr %15, i64 0, i32 5, i64 0, i32 1
  %58 = load i16, ptr %57, align 2, !tbaa !39
  %59 = sitofp i16 %58 to float
  %60 = fdiv float %59, %46
  store float %60, ptr %2, align 4, !tbaa !74
  %61 = getelementptr inbounds %struct.bmFont, ptr %15, i64 0, i32 5, i64 0, i32 2
  %62 = load i16, ptr %61, align 2, !tbaa !40
  %63 = sext i16 %62 to i32
  %64 = sub nsw i32 %49, %63
  %65 = sitofp i32 %64 to float
  %66 = fdiv float %65, %55
  store float %66, ptr %3, align 4, !tbaa !74
  %67 = load float, ptr %5, align 4, !tbaa !74
  %68 = fsub float 1.000000e+00, %67
  %69 = getelementptr inbounds %struct.bmFont, ptr %15, i64 0, i32 5, i64 %26, i32 4
  %70 = load i8, ptr %69, align 1, !tbaa !44
  %71 = sext i8 %70 to i32
  %72 = getelementptr inbounds %struct.bmFont, ptr %15, i64 0, i32 5, i64 0, i32 4
  %73 = load i8, ptr %72, align 1, !tbaa !44
  %74 = sext i8 %73 to i32
  %75 = sub nsw i32 %71, %74
  %76 = sitofp i32 %75 to float
  %77 = fmul float %76, 2.000000e+00
  %78 = fdiv float %77, %39
  %79 = fadd float %68, %78
  store float %79, ptr %9, align 4, !tbaa !74
  %80 = load float, ptr %4, align 4, !tbaa !74
  %81 = fadd float %80, -1.000000e+00
  %82 = getelementptr inbounds %struct.bmFont, ptr %15, i64 0, i32 5, i64 %26, i32 3
  %83 = load i8, ptr %82, align 2, !tbaa !43
  %84 = sext i8 %83 to i32
  %85 = getelementptr inbounds %struct.bmFont, ptr %15, i64 0, i32 5, i64 0, i32 3
  %86 = load i8, ptr %85, align 2, !tbaa !43
  %87 = sext i8 %86 to i32
  %88 = sub nsw i32 %84, %87
  %89 = sitofp i32 %88 to float
  %90 = fmul float %89, 2.000000e+00
  %91 = fdiv float %90, %32
  %92 = fadd float %81, %91
  store float %92, ptr %8, align 4, !tbaa !74
  %93 = getelementptr inbounds %struct.bmFont, ptr %15, i64 0, i32 5, i64 %26, i32 7
  %94 = load i8, ptr %93, align 2, !tbaa !45
  %95 = uitofp i8 %94 to float
  %96 = fmul float %95, 2.000000e+00
  %97 = getelementptr inbounds %struct.bmFont, ptr %15, i64 0, i32 5, i64 0, i32 7
  %98 = load i8, ptr %97, align 2, !tbaa !45
  %99 = uitofp i8 %98 to float
  %100 = fdiv float %96, %99
  store float %100, ptr %10, align 4, !tbaa !74
  br label %101

101:                                              ; preds = %13, %17, %25, %22, %11
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #7

attributes #0 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize }

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
!34 = !{!35, !36, i64 0}
!35 = !{!"bmGlyph", !36, i64 0, !36, i64 2, !36, i64 4, !37, i64 6, !37, i64 7, !37, i64 8, !37, i64 9, !37, i64 10, !37, i64 11}
!36 = !{!"short", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!35, !36, i64 2}
!40 = !{!35, !36, i64 4}
!41 = !{!35, !37, i64 8}
!42 = !{!35, !37, i64 9}
!43 = !{!35, !37, i64 6}
!44 = !{!35, !37, i64 7}
!45 = !{!35, !37, i64 10}
!46 = !{!35, !37, i64 11}
!47 = !{!48, !50, i64 16}
!48 = !{!"ImBuf", !49, i64 0, !49, i64 8, !50, i64 16, !50, i64 20, !37, i64 24, !50, i64 28, !50, i64 32, !50, i64 36, !49, i64 40, !49, i64 48, !37, i64 56, !50, i64 72, !50, i64 76, !50, i64 80, !50, i64 84, !49, i64 88, !49, i64 96, !49, i64 104, !51, i64 112, !37, i64 120, !50, i64 280, !50, i64 284, !50, i64 288, !50, i64 292, !49, i64 296, !49, i64 304, !50, i64 312, !37, i64 316, !37, i64 1340, !49, i64 2368, !50, i64 2376, !49, i64 2384, !50, i64 2392, !50, i64 2396, !49, i64 2400, !49, i64 2408, !49, i64 2416, !49, i64 2424, !50, i64 2432, !52, i64 2436, !53, i64 2456}
!49 = !{!"any pointer", !37, i64 0}
!50 = !{!"int", !37, i64 0}
!51 = !{!"float", !37, i64 0}
!52 = !{!"rcti", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12}
!53 = !{!"DDSData", !50, i64 0, !50, i64 4, !49, i64 8, !50, i64 16}
!54 = !{!48, !50, i64 20}
!55 = !{!48, !49, i64 40}
!56 = !{!37, !37, i64 0}
!57 = distinct !{!57, !58}
!58 = !{!"llvm.loop.mustprogress"}
!59 = !{!49, !49, i64 0}
!60 = distinct !{!60, !58}
!61 = !{!62, !36, i64 4}
!62 = !{!"bmFont", !37, i64 0, !36, i64 4, !36, i64 6, !36, i64 8, !36, i64 10, !37, i64 12}
!63 = !{!62, !36, i64 6}
!64 = !{!62, !36, i64 8}
!65 = !{!62, !36, i64 10}
!66 = !{!67, !50, i64 2100}
!67 = !{!"Global", !49, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !68, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !36, i64 2084, !36, i64 2086, !36, i64 2088, !37, i64 2090, !36, i64 2092, !50, i64 2096, !50, i64 2100, !37, i64 2104, !50, i64 2108, !50, i64 2112, !37, i64 2116}
!68 = !{!"ListBase", !49, i64 0, !49, i64 8}
!69 = distinct !{!69, !58}
!70 = !{!48, !49, i64 304}
!71 = !{!48, !50, i64 292}
!72 = !{!48, !37, i64 24}
!73 = distinct !{!73, !58}
!74 = !{!51, !51, i64 0}
