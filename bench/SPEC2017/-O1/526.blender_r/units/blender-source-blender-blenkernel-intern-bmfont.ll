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

; Function Attrs: nofree nounwind uwtable
define dso_local void @printfGlyph(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i16, ptr %0, align 2, !tbaa !34
  %3 = zext i16 %2 to i32
  %4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %3, i32 noundef %3)
  %5 = getelementptr inbounds %struct.bmGlyph, ptr %0, i64 0, i32 1
  %6 = load i16, ptr %5, align 2, !tbaa !39
  %7 = sext i16 %6 to i32
  %8 = getelementptr inbounds %struct.bmGlyph, ptr %0, i64 0, i32 2
  %9 = load i16, ptr %8, align 2, !tbaa !40
  %10 = sext i16 %9 to i32
  %11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %7, i32 noundef %10)
  %12 = getelementptr inbounds %struct.bmGlyph, ptr %0, i64 0, i32 5
  %13 = load i8, ptr %12, align 2, !tbaa !41
  %14 = zext i8 %13 to i32
  %15 = getelementptr inbounds %struct.bmGlyph, ptr %0, i64 0, i32 6
  %16 = load i8, ptr %15, align 1, !tbaa !42
  %17 = zext i8 %16 to i32
  %18 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %14, i32 noundef %17)
  %19 = getelementptr inbounds %struct.bmGlyph, ptr %0, i64 0, i32 3
  %20 = load i8, ptr %19, align 2, !tbaa !43
  %21 = sext i8 %20 to i32
  %22 = getelementptr inbounds %struct.bmGlyph, ptr %0, i64 0, i32 4
  %23 = load i8, ptr %22, align 1, !tbaa !44
  %24 = sext i8 %23 to i32
  %25 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %21, i32 noundef %24)
  %26 = getelementptr inbounds %struct.bmGlyph, ptr %0, i64 0, i32 7
  %27 = load i8, ptr %26, align 2, !tbaa !45
  %28 = zext i8 %27 to i32
  %29 = getelementptr inbounds %struct.bmGlyph, ptr %0, i64 0, i32 8
  %30 = load i8, ptr %29, align 1, !tbaa !46
  %31 = zext i8 %30 to i32
  %32 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %28, i32 noundef %31)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
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
  %26 = icmp sgt i32 %15, 1
  br i1 %26, label %13, label %27, !llvm.loop !57

27:                                               ; preds = %13, %3, %1
  ret void
}

; Function Attrs: nounwind uwtable
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
  br i1 %26, label %27, label %234

27:                                               ; preds = %3
  %28 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !60
  %29 = zext nneg i32 %20 to i64
  %30 = tail call ptr %28(i64 noundef %29, ptr noundef nonnull @.str.5) #8
  %31 = sext i32 %6 to i64
  %32 = sub nsw i64 0, %31
  %33 = zext nneg i32 %20 to i64
  br label %34

34:                                               ; preds = %27, %34
  %35 = phi i64 [ 0, %27 ], [ %48, %34 ]
  %36 = phi ptr [ %1, %27 ], [ %47, %34 ]
  %37 = phi i32 [ 0, %27 ], [ %45, %34 ]
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, ptr %36, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !56
  %41 = getelementptr inbounds i8, ptr %30, i64 %35
  store i8 %40, ptr %41, align 1, !tbaa !56
  %42 = add nsw i32 %37, %2
  %43 = icmp slt i32 %42, %6
  %44 = select i1 %43, i32 0, i32 %6
  %45 = sub nsw i32 %42, %44
  %46 = select i1 %43, i64 0, i64 %32
  %47 = getelementptr inbounds i8, ptr %36, i64 %46
  %48 = add nuw nsw i64 %35, 1
  %49 = icmp eq i64 %48, %33
  br i1 %49, label %50, label %34, !llvm.loop !61

50:                                               ; preds = %34
  %51 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !60
  %52 = tail call ptr %51(i64 noundef %29, ptr noundef nonnull @.str.6) #8
  %53 = load i8, ptr %30, align 1, !tbaa !56
  store i8 %53, ptr %52, align 2, !tbaa !56
  %54 = getelementptr inbounds i8, ptr %30, i64 1
  %55 = load i8, ptr %54, align 1, !tbaa !56
  %56 = getelementptr inbounds [4 x i8], ptr %52, i64 0, i64 1
  store i8 %55, ptr %56, align 1, !tbaa !56
  %57 = getelementptr inbounds i8, ptr %30, i64 2
  %58 = load i8, ptr %57, align 1, !tbaa !56
  %59 = getelementptr inbounds [4 x i8], ptr %52, i64 0, i64 2
  store i8 %58, ptr %59, align 2, !tbaa !56
  %60 = getelementptr inbounds i8, ptr %30, i64 3
  %61 = load i8, ptr %60, align 1, !tbaa !56
  %62 = getelementptr inbounds [4 x i8], ptr %52, i64 0, i64 3
  store i8 %61, ptr %62, align 1, !tbaa !56
  %63 = getelementptr inbounds i8, ptr %30, i64 4
  %64 = load i8, ptr %63, align 1, !tbaa !56
  %65 = zext i8 %64 to i16
  %66 = shl nuw i16 %65, 8
  %67 = getelementptr inbounds i8, ptr %30, i64 5
  %68 = load i8, ptr %67, align 1, !tbaa !56
  %69 = zext i8 %68 to i16
  %70 = or disjoint i16 %66, %69
  %71 = getelementptr inbounds %struct.bmFont, ptr %52, i64 0, i32 1
  store i16 %70, ptr %71, align 2, !tbaa !62
  %72 = getelementptr inbounds i8, ptr %30, i64 6
  %73 = load i8, ptr %72, align 1, !tbaa !56
  %74 = zext i8 %73 to i16
  %75 = shl nuw i16 %74, 8
  %76 = getelementptr inbounds i8, ptr %30, i64 7
  %77 = load i8, ptr %76, align 1, !tbaa !56
  %78 = zext i8 %77 to i16
  %79 = or disjoint i16 %75, %78
  %80 = getelementptr inbounds %struct.bmFont, ptr %52, i64 0, i32 2
  store i16 %79, ptr %80, align 2, !tbaa !64
  %81 = getelementptr inbounds i8, ptr %30, i64 8
  %82 = load i8, ptr %81, align 1, !tbaa !56
  %83 = zext i8 %82 to i16
  %84 = shl nuw i16 %83, 8
  %85 = getelementptr inbounds i8, ptr %30, i64 9
  %86 = load i8, ptr %85, align 1, !tbaa !56
  %87 = zext i8 %86 to i16
  %88 = or disjoint i16 %84, %87
  %89 = getelementptr inbounds %struct.bmFont, ptr %52, i64 0, i32 3
  store i16 %88, ptr %89, align 2, !tbaa !65
  %90 = getelementptr inbounds i8, ptr %30, i64 10
  %91 = load i8, ptr %90, align 1, !tbaa !56
  %92 = zext i8 %91 to i16
  %93 = shl nuw i16 %92, 8
  %94 = getelementptr inbounds i8, ptr %30, i64 11
  %95 = load i8, ptr %94, align 1, !tbaa !56
  %96 = zext i8 %95 to i16
  %97 = or disjoint i16 %93, %96
  %98 = getelementptr inbounds %struct.bmFont, ptr %52, i64 0, i32 4
  store i16 %97, ptr %98, align 2, !tbaa !66
  %99 = load i16, ptr %80, align 2, !tbaa !64
  %100 = icmp sgt i16 %99, 0
  br i1 %100, label %101, label %190

101:                                              ; preds = %50, %185
  %102 = phi i64 [ %147, %185 ], [ 12, %50 ]
  %103 = phi i64 [ %186, %185 ], [ 0, %50 ]
  %104 = getelementptr inbounds i8, ptr %30, i64 %102
  %105 = load i8, ptr %104, align 1, !tbaa !56
  %106 = zext i8 %105 to i16
  %107 = shl nuw i16 %106, 8
  %108 = getelementptr i8, ptr %104, i64 1
  %109 = load i8, ptr %108, align 1, !tbaa !56
  %110 = zext i8 %109 to i16
  %111 = or disjoint i16 %107, %110
  %112 = getelementptr inbounds %struct.bmFont, ptr %52, i64 0, i32 5, i64 %103
  store i16 %111, ptr %112, align 2, !tbaa !34
  %113 = or disjoint i64 %102, 2
  %114 = getelementptr inbounds i8, ptr %30, i64 %113
  %115 = load i8, ptr %114, align 1, !tbaa !56
  %116 = zext i8 %115 to i16
  %117 = shl nuw i16 %116, 8
  %118 = getelementptr i8, ptr %104, i64 3
  %119 = load i8, ptr %118, align 1, !tbaa !56
  %120 = zext i8 %119 to i16
  %121 = or disjoint i16 %117, %120
  %122 = getelementptr inbounds %struct.bmFont, ptr %52, i64 0, i32 5, i64 %103, i32 1
  store i16 %121, ptr %122, align 2, !tbaa !39
  %123 = getelementptr i8, ptr %104, i64 4
  %124 = load i8, ptr %123, align 1, !tbaa !56
  %125 = zext i8 %124 to i16
  %126 = shl nuw i16 %125, 8
  %127 = getelementptr i8, ptr %104, i64 5
  %128 = load i8, ptr %127, align 1, !tbaa !56
  %129 = zext i8 %128 to i16
  %130 = or disjoint i16 %126, %129
  %131 = getelementptr inbounds %struct.bmFont, ptr %52, i64 0, i32 5, i64 %103, i32 2
  store i16 %130, ptr %131, align 2, !tbaa !40
  %132 = getelementptr i8, ptr %104, i64 6
  %133 = load i8, ptr %132, align 1, !tbaa !56
  %134 = getelementptr inbounds %struct.bmFont, ptr %52, i64 0, i32 5, i64 %103, i32 3
  store i8 %133, ptr %134, align 2, !tbaa !43
  %135 = getelementptr i8, ptr %104, i64 7
  %136 = load i8, ptr %135, align 1, !tbaa !56
  %137 = getelementptr inbounds %struct.bmFont, ptr %52, i64 0, i32 5, i64 %103, i32 4
  store i8 %136, ptr %137, align 1, !tbaa !44
  %138 = getelementptr i8, ptr %104, i64 8
  %139 = load i8, ptr %138, align 1, !tbaa !56
  %140 = getelementptr inbounds %struct.bmFont, ptr %52, i64 0, i32 5, i64 %103, i32 5
  store i8 %139, ptr %140, align 2, !tbaa !41
  %141 = getelementptr i8, ptr %104, i64 9
  %142 = load i8, ptr %141, align 1, !tbaa !56
  %143 = getelementptr inbounds %struct.bmFont, ptr %52, i64 0, i32 5, i64 %103, i32 6
  store i8 %142, ptr %143, align 1, !tbaa !42
  %144 = getelementptr i8, ptr %104, i64 10
  %145 = load i8, ptr %144, align 1, !tbaa !56
  %146 = getelementptr inbounds %struct.bmFont, ptr %52, i64 0, i32 5, i64 %103, i32 7
  store i8 %145, ptr %146, align 2, !tbaa !45
  %147 = add nuw nsw i64 %102, 12
  %148 = getelementptr i8, ptr %104, i64 11
  %149 = load i8, ptr %148, align 1, !tbaa !56
  %150 = getelementptr inbounds %struct.bmFont, ptr %52, i64 0, i32 5, i64 %103, i32 8
  store i8 %149, ptr %150, align 1, !tbaa !46
  %151 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !67
  %152 = and i32 %151, 1
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %185, label %154

154:                                              ; preds = %101
  %155 = zext i16 %111 to i32
  %156 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %155, i32 noundef %155)
  %157 = getelementptr inbounds %struct.bmFont, ptr %52, i64 0, i32 5, i64 %103, i32 1
  %158 = load i16, ptr %157, align 2, !tbaa !39
  %159 = sext i16 %158 to i32
  %160 = getelementptr inbounds %struct.bmFont, ptr %52, i64 0, i32 5, i64 %103, i32 2
  %161 = load i16, ptr %160, align 2, !tbaa !40
  %162 = sext i16 %161 to i32
  %163 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %159, i32 noundef %162)
  %164 = getelementptr inbounds %struct.bmFont, ptr %52, i64 0, i32 5, i64 %103, i32 5
  %165 = load i8, ptr %164, align 2, !tbaa !41
  %166 = zext i8 %165 to i32
  %167 = getelementptr inbounds %struct.bmFont, ptr %52, i64 0, i32 5, i64 %103, i32 6
  %168 = load i8, ptr %167, align 1, !tbaa !42
  %169 = zext i8 %168 to i32
  %170 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %166, i32 noundef %169)
  %171 = getelementptr inbounds %struct.bmFont, ptr %52, i64 0, i32 5, i64 %103, i32 3
  %172 = load i8, ptr %171, align 2, !tbaa !43
  %173 = sext i8 %172 to i32
  %174 = getelementptr inbounds %struct.bmFont, ptr %52, i64 0, i32 5, i64 %103, i32 4
  %175 = load i8, ptr %174, align 1, !tbaa !44
  %176 = sext i8 %175 to i32
  %177 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %173, i32 noundef %176)
  %178 = getelementptr inbounds %struct.bmFont, ptr %52, i64 0, i32 5, i64 %103, i32 7
  %179 = load i8, ptr %178, align 2, !tbaa !45
  %180 = zext i8 %179 to i32
  %181 = getelementptr inbounds %struct.bmFont, ptr %52, i64 0, i32 5, i64 %103, i32 8
  %182 = load i8, ptr %181, align 1, !tbaa !46
  %183 = zext i8 %182 to i32
  %184 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %180, i32 noundef %183)
  br label %185

185:                                              ; preds = %101, %154
  %186 = add nuw nsw i64 %103, 1
  %187 = load i16, ptr %80, align 2, !tbaa !64
  %188 = sext i16 %187 to i64
  %189 = icmp slt i64 %186, %188
  br i1 %189, label %101, label %190, !llvm.loop !70

190:                                              ; preds = %185, %50
  %191 = load ptr, ptr @MEM_freeN, align 8, !tbaa !60
  tail call void %191(ptr noundef nonnull %30) #8
  %192 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !67
  %193 = and i32 %192, 1
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %201, label %195

195:                                              ; preds = %190
  %196 = load i32, ptr %24, align 4, !tbaa !54
  %197 = sub nsw i32 %196, %23
  %198 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %196, i32 noundef %197)
  %199 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %18)
  %200 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %20)
  br label %201

201:                                              ; preds = %195, %190
  %202 = load i32, ptr %24, align 4, !tbaa !54
  %203 = sub nsw i32 %202, %23
  store i32 %203, ptr %24, align 4, !tbaa !54
  %204 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 25
  store ptr %52, ptr %204, align 8, !tbaa !71
  %205 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 23
  %206 = load i32, ptr %205, align 4, !tbaa !72
  %207 = or i32 %206, 1
  store i32 %207, ptr %205, align 4, !tbaa !72
  %208 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 4
  %209 = load i8, ptr %208, align 8, !tbaa !73
  %210 = icmp ugt i8 %209, 31
  %211 = icmp eq ptr %0, null
  %212 = or i1 %211, %210
  br i1 %212, label %236, label %213

213:                                              ; preds = %201
  %214 = load i32, ptr %4, align 8, !tbaa !47
  %215 = mul nsw i32 %214, %203
  %216 = icmp sgt i32 %215, 0
  br i1 %216, label %217, label %236

217:                                              ; preds = %213
  %218 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %219 = load ptr, ptr %218, align 8, !tbaa !55
  br label %220

220:                                              ; preds = %217, %220
  %221 = phi ptr [ %231, %220 ], [ %219, %217 ]
  %222 = phi i32 [ %232, %220 ], [ %215, %217 ]
  %223 = load i8, ptr %221, align 1, !tbaa !56
  %224 = getelementptr inbounds i8, ptr %221, i64 1
  %225 = load i8, ptr %224, align 1, !tbaa !56
  %226 = tail call i8 @llvm.umax.i8(i8 %223, i8 %225)
  %227 = getelementptr inbounds i8, ptr %221, i64 2
  %228 = load i8, ptr %227, align 1, !tbaa !56
  %229 = tail call i8 @llvm.umax.i8(i8 %226, i8 %228)
  %230 = getelementptr inbounds i8, ptr %221, i64 3
  store i8 %229, ptr %230, align 1, !tbaa !56
  %231 = getelementptr inbounds i8, ptr %221, i64 4
  %232 = add nsw i32 %222, -1
  %233 = icmp sgt i32 %222, 1
  br i1 %233, label %220, label %236, !llvm.loop !57

234:                                              ; preds = %3
  %235 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %236

236:                                              ; preds = %220, %213, %201, %234
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @detectBitmapFont(ptr noundef %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %78, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = icmp eq ptr %5, null
  br i1 %6, label %78, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !47
  %10 = add nsw i32 %9, -1
  %11 = xor i32 %10, %9
  %12 = shl nsw i32 %9, 1
  %13 = add nsw i32 %12, -1
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %15, label %78

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
  br i1 %35, label %78, label %36

36:                                               ; preds = %32, %28, %24, %15
  %37 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 25
  br label %38

38:                                               ; preds = %75, %36
  %39 = phi i32 [ 0, %36 ], [ %77, %75 ]
  %40 = phi ptr [ %21, %36 ], [ %76, %75 ]
  %41 = load i8, ptr %40, align 1, !tbaa !56
  %42 = icmp eq i8 %41, 66
  br i1 %42, label %43, label %73

43:                                               ; preds = %38
  %44 = getelementptr inbounds i8, ptr %40, i64 4
  %45 = load i8, ptr %44, align 1, !tbaa !56
  %46 = icmp eq i8 %45, 70
  br i1 %46, label %47, label %73

47:                                               ; preds = %43
  %48 = getelementptr inbounds i8, ptr %40, i64 8
  %49 = load i8, ptr %48, align 1, !tbaa !56
  %50 = icmp eq i8 %49, 78
  br i1 %50, label %51, label %73

51:                                               ; preds = %47
  %52 = getelementptr inbounds i8, ptr %40, i64 12
  %53 = load i8, ptr %52, align 1, !tbaa !56
  %54 = icmp eq i8 %53, 84
  br i1 %54, label %55, label %73

55:                                               ; preds = %51
  %56 = getelementptr inbounds i8, ptr %40, i64 16
  %57 = load i8, ptr %56, align 1, !tbaa !56
  %58 = zext i8 %57 to i32
  %59 = shl nuw nsw i32 %58, 8
  %60 = getelementptr inbounds i8, ptr %40, i64 20
  %61 = load i8, ptr %60, align 1, !tbaa !56
  %62 = zext i8 %61 to i32
  %63 = or disjoint i32 %59, %62
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %55
  tail call void @readBitmapFontVersion0(ptr noundef nonnull %0, ptr noundef nonnull %40, i32 noundef 4)
  br label %68

66:                                               ; preds = %55
  %67 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %63)
  br label %68

68:                                               ; preds = %66, %65
  %69 = load ptr, ptr %37, align 8, !tbaa !71
  %70 = icmp eq ptr %69, null
  %71 = icmp ult i32 %39, 3
  %72 = select i1 %70, i1 %71, i1 false
  br i1 %72, label %75, label %78

73:                                               ; preds = %51, %47, %43, %38
  %74 = icmp ult i32 %39, 3
  br i1 %74, label %75, label %78

75:                                               ; preds = %73, %68
  %76 = getelementptr inbounds i8, ptr %40, i64 1
  %77 = add nuw nsw i32 %39, 1
  br label %38, !llvm.loop !74

78:                                               ; preds = %73, %68, %7, %32, %3, %1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @locateGlyph(ptr noundef readonly %0, i16 noundef zeroext %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.bmFont, ptr %0, i64 0, i32 2
  %6 = load i16, ptr %5, align 2, !tbaa !64
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
  br i1 %22, label %23, label %8, !llvm.loop !75

23:                                               ; preds = %17, %8, %2
  %24 = phi i32 [ 0, %2 ], [ %12, %8 ], [ 0, %17 ]
  ret i32 %24
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @matrixGlyph(ptr noundef readonly %0, i16 noundef zeroext %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef %4, ptr nocapture noundef %5, ptr nocapture noundef writeonly %6, ptr nocapture noundef writeonly %7, ptr nocapture noundef writeonly %8, ptr nocapture noundef writeonly %9, ptr nocapture noundef writeonly %10) local_unnamed_addr #5 {
  store float 0.000000e+00, ptr %3, align 4, !tbaa !76
  store float 0.000000e+00, ptr %2, align 4, !tbaa !76
  store float 1.000000e+00, ptr %5, align 4, !tbaa !76
  store float 1.000000e+00, ptr %4, align 4, !tbaa !76
  store float 0.000000e+00, ptr %7, align 4, !tbaa !76
  store float 0.000000e+00, ptr %6, align 4, !tbaa !76
  store float 0.000000e+00, ptr %9, align 4, !tbaa !76
  store float 0.000000e+00, ptr %8, align 4, !tbaa !76
  store float 1.000000e+00, ptr %10, align 4, !tbaa !76
  %12 = icmp eq ptr %0, null
  br i1 %12, label %120, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 25
  %15 = load ptr, ptr %14, align 8, !tbaa !71
  %16 = icmp eq ptr %15, null
  br i1 %16, label %120, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 23
  %19 = load i32, ptr %18, align 4, !tbaa !72
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %120, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.bmFont, ptr %15, i64 0, i32 2
  %24 = load i16, ptr %23, align 2, !tbaa !64
  %25 = sext i16 %24 to i32
  br label %26

26:                                               ; preds = %35, %22
  %27 = phi i32 [ 0, %22 ], [ %37, %35 ]
  %28 = phi i32 [ %25, %22 ], [ %38, %35 ]
  %29 = add nsw i32 %28, %27
  %30 = ashr i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.bmFont, ptr %15, i64 0, i32 5, i64 %31
  %33 = load i16, ptr %32, align 2, !tbaa !34
  %34 = icmp eq i16 %33, %1
  br i1 %34, label %41, label %35

35:                                               ; preds = %26
  %36 = icmp ult i16 %33, %1
  %37 = select i1 %36, i32 %30, i32 %27
  %38 = select i1 %36, i32 %28, i32 %30
  %39 = sub nsw i32 %38, %37
  %40 = icmp slt i32 %39, 2
  br i1 %40, label %41, label %26, !llvm.loop !75

41:                                               ; preds = %26, %35
  %42 = phi i32 [ %30, %26 ], [ 0, %35 ]
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %120, label %44

44:                                               ; preds = %41
  %45 = sext i32 %42 to i64
  %46 = getelementptr inbounds %struct.bmFont, ptr %15, i64 0, i32 5, i64 %45, i32 5
  %47 = load i8, ptr %46, align 2, !tbaa !41
  %48 = uitofp i8 %47 to float
  %49 = getelementptr inbounds %struct.bmFont, ptr %15, i64 0, i32 5, i64 0, i32 5
  %50 = load i8, ptr %49, align 2, !tbaa !41
  %51 = uitofp i8 %50 to float
  %52 = fdiv float %48, %51
  store float %52, ptr %4, align 4, !tbaa !76
  %53 = getelementptr inbounds %struct.bmFont, ptr %15, i64 0, i32 5, i64 %45, i32 6
  %54 = load i8, ptr %53, align 1, !tbaa !42
  %55 = uitofp i8 %54 to float
  %56 = getelementptr inbounds %struct.bmFont, ptr %15, i64 0, i32 5, i64 0, i32 6
  %57 = load i8, ptr %56, align 1, !tbaa !42
  %58 = uitofp i8 %57 to float
  %59 = fdiv float %55, %58
  store float %59, ptr %5, align 4, !tbaa !76
  %60 = getelementptr inbounds %struct.bmFont, ptr %15, i64 0, i32 5, i64 %45, i32 1
  %61 = load i16, ptr %60, align 2, !tbaa !39
  %62 = sitofp i16 %61 to float
  %63 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %64 = load i32, ptr %63, align 8, !tbaa !47
  %65 = sitofp i32 %64 to float
  %66 = fdiv float %62, %65
  store float %66, ptr %6, align 4, !tbaa !76
  %67 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %68 = load i32, ptr %67, align 4, !tbaa !54
  %69 = getelementptr inbounds %struct.bmFont, ptr %15, i64 0, i32 5, i64 %45, i32 2
  %70 = load i16, ptr %69, align 2, !tbaa !40
  %71 = sext i16 %70 to i32
  %72 = sub nsw i32 %68, %71
  %73 = sitofp i32 %72 to float
  %74 = sitofp i32 %68 to float
  %75 = fdiv float %73, %74
  store float %75, ptr %7, align 4, !tbaa !76
  %76 = getelementptr inbounds %struct.bmFont, ptr %15, i64 0, i32 5, i64 0, i32 1
  %77 = load i16, ptr %76, align 2, !tbaa !39
  %78 = sitofp i16 %77 to float
  %79 = fdiv float %78, %65
  store float %79, ptr %2, align 4, !tbaa !76
  %80 = getelementptr inbounds %struct.bmFont, ptr %15, i64 0, i32 5, i64 0, i32 2
  %81 = load i16, ptr %80, align 2, !tbaa !40
  %82 = sext i16 %81 to i32
  %83 = sub nsw i32 %68, %82
  %84 = sitofp i32 %83 to float
  %85 = fdiv float %84, %74
  store float %85, ptr %3, align 4, !tbaa !76
  %86 = load float, ptr %5, align 4, !tbaa !76
  %87 = fsub float 1.000000e+00, %86
  %88 = getelementptr inbounds %struct.bmFont, ptr %15, i64 0, i32 5, i64 %45, i32 4
  %89 = load i8, ptr %88, align 1, !tbaa !44
  %90 = sext i8 %89 to i32
  %91 = getelementptr inbounds %struct.bmFont, ptr %15, i64 0, i32 5, i64 0, i32 4
  %92 = load i8, ptr %91, align 1, !tbaa !44
  %93 = sext i8 %92 to i32
  %94 = sub nsw i32 %90, %93
  %95 = sitofp i32 %94 to float
  %96 = fmul float %95, 2.000000e+00
  %97 = fdiv float %96, %58
  %98 = fadd float %87, %97
  store float %98, ptr %9, align 4, !tbaa !76
  %99 = load float, ptr %4, align 4, !tbaa !76
  %100 = fadd float %99, -1.000000e+00
  %101 = getelementptr inbounds %struct.bmFont, ptr %15, i64 0, i32 5, i64 %45, i32 3
  %102 = load i8, ptr %101, align 2, !tbaa !43
  %103 = sext i8 %102 to i32
  %104 = getelementptr inbounds %struct.bmFont, ptr %15, i64 0, i32 5, i64 0, i32 3
  %105 = load i8, ptr %104, align 2, !tbaa !43
  %106 = sext i8 %105 to i32
  %107 = sub nsw i32 %103, %106
  %108 = sitofp i32 %107 to float
  %109 = fmul float %108, 2.000000e+00
  %110 = fdiv float %109, %51
  %111 = fadd float %100, %110
  store float %111, ptr %8, align 4, !tbaa !76
  %112 = getelementptr inbounds %struct.bmFont, ptr %15, i64 0, i32 5, i64 %45, i32 7
  %113 = load i8, ptr %112, align 2, !tbaa !45
  %114 = uitofp i8 %113 to float
  %115 = fmul float %114, 2.000000e+00
  %116 = getelementptr inbounds %struct.bmFont, ptr %15, i64 0, i32 5, i64 0, i32 7
  %117 = load i8, ptr %116, align 2, !tbaa !45
  %118 = uitofp i8 %117 to float
  %119 = fdiv float %115, %118
  store float %119, ptr %10, align 4, !tbaa !76
  br label %120

120:                                              ; preds = %13, %17, %44, %41, %11
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #7

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

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
!57 = distinct !{!57, !58, !59}
!58 = !{!"llvm.loop.mustprogress"}
!59 = !{!"llvm.loop.unroll.disable"}
!60 = !{!49, !49, i64 0}
!61 = distinct !{!61, !58, !59}
!62 = !{!63, !36, i64 4}
!63 = !{!"bmFont", !37, i64 0, !36, i64 4, !36, i64 6, !36, i64 8, !36, i64 10, !37, i64 12}
!64 = !{!63, !36, i64 6}
!65 = !{!63, !36, i64 8}
!66 = !{!63, !36, i64 10}
!67 = !{!68, !50, i64 2100}
!68 = !{!"Global", !49, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !69, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !36, i64 2084, !36, i64 2086, !36, i64 2088, !37, i64 2090, !36, i64 2092, !50, i64 2096, !50, i64 2100, !37, i64 2104, !50, i64 2108, !50, i64 2112, !37, i64 2116}
!69 = !{!"ListBase", !49, i64 0, !49, i64 8}
!70 = distinct !{!70, !58, !59}
!71 = !{!48, !49, i64 304}
!72 = !{!48, !50, i64 292}
!73 = !{!48, !37, i64 24}
!74 = distinct !{!74, !58, !59}
!75 = distinct !{!75, !59}
!76 = !{!51, !51, i64 0}
