; ModuleID = 'src/lookup.c'
source_filename = "src/lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.hashheader = type { i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], [13 x i8], i8, i8, i8, [228 x i16], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [128 x i8], [100 x [11 x i8]], [100 x i32], [100 x i32], i16 }
%struct.flagptr = type { %union.ptr_union, i32 }
%union.ptr_union = type { ptr }
%struct.dent = type { ptr, ptr, [1 x i64] }
%struct.flagent = type { ptr, ptr, i16, i16, i16, i16, i16, [228 x i8] }
%struct.strchartype = type { ptr, ptr, ptr }

@inited = internal unnamed_addr global i1 false, align 4
@hashname = external global [4096 x i8], align 16
@cbench_print = external local_unnamed_addr global i32, align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [16 x i8] c"Can't open %s\0D\0A\00", align 1
@hashheader = external global %struct.hashheader, align 4
@hashsize = external local_unnamed_addr global i32, align 4
@.str.4 = private unnamed_addr constant [63 x i8] c"Illegal format hash table %s - expected magic 0x%x, got 0x%x\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"Illegal format hash table %s - expected magic2 0x%x, got 0x%x\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [76 x i8] c"Hash table options don't agree with buildhash - 0x%x/%d/%d vs. 0x%x/%d/%d\0D\0A\00", align 1
@nodictflag = external local_unnamed_addr global i32, align 4
@hashtbl = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [41 x i8] c"Couldn't allocate space for hash table\0D\0A\00", align 1
@hashstrings = external local_unnamed_addr global ptr, align 8
@numsflags = external local_unnamed_addr global i32, align 4
@numpflags = external local_unnamed_addr global i32, align 4
@sflaglist = external local_unnamed_addr global ptr, align 8
@pflaglist = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [28 x i8] c"Illegal format hash table\0D\0A\00", align 1
@sflagindex = external local_unnamed_addr global [228 x %struct.flagptr], align 16
@.str.9 = private unnamed_addr constant [46 x i8] c"Couldn't allocate space for language tables\0D\0A\00", align 1
@pflagindex = external local_unnamed_addr global [228 x %struct.flagptr], align 16
@chartypes = external local_unnamed_addr global ptr, align 8
@.str.10 = private unnamed_addr constant [51 x i8] c"\0D\0AWord '%s' too long at line %d of %s, truncated\0D\0A\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"src/lookup.c\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @linit() local_unnamed_addr #0 {
  %1 = load i1, ptr @inited, align 4
  br i1 %1, label %495, label %2

2:                                                ; preds = %0
  %3 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull @hashname, i32 noundef 0) #11
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %2
  %6 = load i32, ptr @cbench_print, align 4, !tbaa !5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %495, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr @stderr, align 8, !tbaa !9
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str, ptr noundef nonnull @hashname) #12
  br label %495

11:                                               ; preds = %2
  %12 = tail call i64 @read(i32 noundef %3, ptr noundef nonnull @hashheader, i64 noundef 3928) #11
  %13 = trunc i64 %12 to i32
  store i32 %13, ptr @hashsize, align 4, !tbaa !5
  %14 = icmp ult i32 %13, 3928
  br i1 %14, label %495, label %15

15:                                               ; preds = %11
  %16 = load i16, ptr @hashheader, align 4, !tbaa !11
  %17 = zext i16 %16 to i32
  %18 = icmp eq i16 %16, -27134
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = load i32, ptr @cbench_print, align 4, !tbaa !5
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %495, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr @stderr, align 8, !tbaa !9
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.4, ptr noundef nonnull @hashname, i32 noundef 38402, i32 noundef %17) #12
  br label %495

25:                                               ; preds = %15
  %26 = load i16, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 31), align 4, !tbaa !14
  %27 = zext i16 %26 to i32
  %28 = icmp eq i16 %26, -27134
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  %30 = load i32, ptr @cbench_print, align 4, !tbaa !5
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %495, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr @stderr, align 8, !tbaa !9
  %34 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef nonnull @.str.5, ptr noundef nonnull @hashname, i32 noundef 38402, i32 noundef %27) #12
  br label %495

35:                                               ; preds = %25
  %36 = load i16, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 1), align 2, !tbaa !15
  %37 = zext i16 %36 to i32
  %38 = icmp ne i16 %36, 3
  %39 = load i16, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 2), align 4
  %40 = sext i16 %39 to i32
  %41 = icmp ne i16 %39, 100
  %42 = select i1 %38, i1 true, i1 %41
  %43 = load i16, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 3), align 2
  %44 = sext i16 %43 to i32
  %45 = icmp ne i16 %43, 10
  %46 = select i1 %42, i1 true, i1 %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %35
  %48 = load i32, ptr @cbench_print, align 4, !tbaa !5
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %495, label %50

50:                                               ; preds = %47
  %51 = load ptr, ptr @stderr, align 8, !tbaa !9
  %52 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %51, ptr noundef nonnull @.str.6, i32 noundef %37, i32 noundef %40, i32 noundef %44, i32 noundef 3, i32 noundef 100, i32 noundef 10) #12
  br label %495

53:                                               ; preds = %35
  %54 = load i32, ptr @nodictflag, align 4, !tbaa !5
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %69, label %56

56:                                               ; preds = %53
  store i32 1, ptr @hashsize, align 4, !tbaa !5
  %57 = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #13
  store ptr %57, ptr @hashtbl, align 8, !tbaa !9
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load i32, ptr @cbench_print, align 4, !tbaa !5
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %495, label %62

62:                                               ; preds = %59
  %63 = load ptr, ptr @stderr, align 8, !tbaa !9
  %64 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 40, i64 1, ptr %63) #12
  br label %495

65:                                               ; preds = %56
  %66 = getelementptr inbounds %struct.dent, ptr %57, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %57, i8 0, i64 16, i1 false)
  %67 = load i64, ptr %66, align 8, !tbaa !16
  %68 = and i64 %67, -201326593
  store i64 %68, ptr %66, align 8, !tbaa !16
  br label %74

69:                                               ; preds = %53
  %70 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 8), align 4, !tbaa !18
  %71 = zext i32 %70 to i64
  %72 = mul nuw nsw i64 %71, 24
  %73 = tail call noalias ptr @malloc(i64 noundef %72) #14
  store ptr %73, ptr @hashtbl, align 8, !tbaa !9
  store i32 %70, ptr @hashsize, align 4, !tbaa !5
  br label %74

74:                                               ; preds = %69, %65
  %75 = phi ptr [ getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 6), %69 ], [ getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 7), %65 ]
  %76 = load i32, ptr %75, align 4, !tbaa !5
  %77 = zext i32 %76 to i64
  %78 = tail call noalias ptr @malloc(i64 noundef %77) #14
  store ptr %78, ptr @hashstrings, align 8, !tbaa !9
  %79 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 9), align 4, !tbaa !19
  store i32 %79, ptr @numsflags, align 4, !tbaa !5
  %80 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 10), align 4, !tbaa !20
  store i32 %80, ptr @numpflags, align 4, !tbaa !5
  %81 = add nsw i32 %80, %79
  %82 = sext i32 %81 to i64
  %83 = shl nsw i64 %82, 8
  %84 = tail call noalias ptr @malloc(i64 noundef %83) #14
  store ptr %84, ptr @sflaglist, align 8, !tbaa !9
  %85 = load ptr, ptr @hashtbl, align 8, !tbaa !9
  %86 = icmp eq ptr %85, null
  %87 = icmp eq ptr %78, null
  %88 = or i1 %87, %86
  %89 = icmp eq ptr %84, null
  %90 = or i1 %89, %88
  br i1 %90, label %91, label %97

91:                                               ; preds = %74
  %92 = load i32, ptr @cbench_print, align 4, !tbaa !5
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %495, label %94

94:                                               ; preds = %91
  %95 = load ptr, ptr @stderr, align 8, !tbaa !9
  %96 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 40, i64 1, ptr %95) #12
  br label %495

97:                                               ; preds = %74
  %98 = sext i32 %79 to i64
  %99 = getelementptr inbounds %struct.flagent, ptr %84, i64 %98
  store ptr %99, ptr @pflaglist, align 8, !tbaa !9
  br i1 %55, label %122, label %100

100:                                              ; preds = %97
  %101 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 7), align 4, !tbaa !21
  %102 = zext i32 %101 to i64
  %103 = tail call i64 @read(i32 noundef %3, ptr noundef %78, i64 noundef %102) #11
  %104 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 7), align 4, !tbaa !21
  %105 = sext i32 %104 to i64
  %106 = icmp eq i64 %103, %105
  br i1 %106, label %113, label %107

107:                                              ; preds = %100
  %108 = load i32, ptr @cbench_print, align 4, !tbaa !5
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %495, label %110

110:                                              ; preds = %107
  %111 = load ptr, ptr @stderr, align 8, !tbaa !9
  %112 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 27, i64 1, ptr %111) #12
  br label %495

113:                                              ; preds = %100
  %114 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 6), align 4, !tbaa !22
  %115 = sext i32 %114 to i64
  %116 = sub nsw i64 %115, %105
  %117 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 8), align 4, !tbaa !18
  %118 = sext i32 %117 to i64
  %119 = mul nsw i64 %118, 24
  %120 = add nsw i64 %116, %119
  %121 = tail call i64 @lseek(i32 noundef %3, i64 noundef %120, i32 noundef 1) #11
  br label %145

122:                                              ; preds = %97
  %123 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 6), align 4, !tbaa !22
  %124 = zext i32 %123 to i64
  %125 = tail call i64 @read(i32 noundef %3, ptr noundef %78, i64 noundef %124) #11
  %126 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 6), align 4, !tbaa !22
  %127 = sext i32 %126 to i64
  %128 = icmp eq i64 %125, %127
  br i1 %128, label %129, label %139

129:                                              ; preds = %122
  %130 = load ptr, ptr @hashtbl, align 8, !tbaa !9
  %131 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 8), align 4, !tbaa !18
  %132 = zext i32 %131 to i64
  %133 = mul nuw nsw i64 %132, 24
  %134 = tail call i64 @read(i32 noundef %3, ptr noundef %130, i64 noundef %133) #11
  %135 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 8), align 4, !tbaa !18
  %136 = sext i32 %135 to i64
  %137 = mul nsw i64 %136, 24
  %138 = icmp eq i64 %134, %137
  br i1 %138, label %145, label %139

139:                                              ; preds = %129, %122
  %140 = load i32, ptr @cbench_print, align 4, !tbaa !5
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %495, label %142

142:                                              ; preds = %139
  %143 = load ptr, ptr @stderr, align 8, !tbaa !9
  %144 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 27, i64 1, ptr %143) #12
  br label %495

145:                                              ; preds = %129, %113
  %146 = load ptr, ptr @sflaglist, align 8, !tbaa !9
  %147 = load i32, ptr @numsflags, align 4, !tbaa !5
  %148 = load i32, ptr @numpflags, align 4, !tbaa !5
  %149 = add nsw i32 %148, %147
  %150 = zext i32 %149 to i64
  %151 = shl nuw nsw i64 %150, 8
  %152 = tail call i64 @read(i32 noundef %3, ptr noundef %146, i64 noundef %151) #11
  %153 = load i32, ptr @numsflags, align 4, !tbaa !5
  %154 = load i32, ptr @numpflags, align 4, !tbaa !5
  %155 = add nsw i32 %154, %153
  %156 = sext i32 %155 to i64
  %157 = shl nsw i64 %156, 8
  %158 = icmp eq i64 %152, %157
  br i1 %158, label %165, label %159

159:                                              ; preds = %145
  %160 = load i32, ptr @cbench_print, align 4, !tbaa !5
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %495, label %162

162:                                              ; preds = %159
  %163 = load ptr, ptr @stderr, align 8, !tbaa !9
  %164 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 27, i64 1, ptr %163) #12
  br label %495

165:                                              ; preds = %145
  %166 = tail call i32 @close(i32 noundef %3) #11
  %167 = load i32, ptr @nodictflag, align 4, !tbaa !5
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %197

169:                                              ; preds = %165
  %170 = load i32, ptr @hashsize, align 4, !tbaa !5
  %171 = icmp sgt i32 %170, 0
  br i1 %171, label %172, label %197

172:                                              ; preds = %169
  %173 = load ptr, ptr @hashtbl, align 8, !tbaa !9
  br label %174

174:                                              ; preds = %172, %174
  %175 = phi ptr [ %195, %174 ], [ %173, %172 ]
  %176 = phi i32 [ %177, %174 ], [ %170, %172 ]
  %177 = add nsw i32 %176, -1
  %178 = getelementptr inbounds %struct.dent, ptr %175, i64 0, i32 1
  %179 = load ptr, ptr %178, align 8, !tbaa !23
  %180 = icmp eq ptr %179, inttoptr (i64 -1 to ptr)
  %181 = load ptr, ptr @hashstrings, align 8
  %182 = ptrtoint ptr %179 to i64
  %183 = shl i64 %182, 32
  %184 = ashr exact i64 %183, 32
  %185 = getelementptr inbounds i8, ptr %181, i64 %184
  %186 = select i1 %180, ptr null, ptr %185
  store ptr %186, ptr %178, align 8, !tbaa !23
  %187 = load ptr, ptr %175, align 8, !tbaa !25
  %188 = icmp eq ptr %187, inttoptr (i64 -1 to ptr)
  %189 = load ptr, ptr @hashtbl, align 8
  %190 = ptrtoint ptr %187 to i64
  %191 = shl i64 %190, 32
  %192 = ashr exact i64 %191, 32
  %193 = getelementptr inbounds %struct.dent, ptr %189, i64 %192
  %194 = select i1 %188, ptr null, ptr %193
  store ptr %194, ptr %175, align 8, !tbaa !25
  %195 = getelementptr inbounds %struct.dent, ptr %175, i64 1
  %196 = icmp sgt i32 %176, 1
  br i1 %196, label %174, label %197, !llvm.loop !26

197:                                              ; preds = %174, %169, %165
  %198 = load i32, ptr @numsflags, align 4, !tbaa !5
  %199 = load i32, ptr @numpflags, align 4, !tbaa !5
  %200 = add nsw i32 %199, %198
  %201 = icmp sgt i32 %200, 0
  br i1 %201, label %202, label %236

202:                                              ; preds = %197
  %203 = load ptr, ptr @sflaglist, align 8, !tbaa !9
  br label %204

204:                                              ; preds = %202, %233
  %205 = phi i32 [ %207, %233 ], [ %200, %202 ]
  %206 = phi ptr [ %234, %233 ], [ %203, %202 ]
  %207 = add nsw i32 %205, -1
  %208 = getelementptr inbounds %struct.flagent, ptr %206, i64 0, i32 3
  %209 = load i16, ptr %208, align 2, !tbaa !28
  %210 = icmp eq i16 %209, 0
  br i1 %210, label %218, label %211

211:                                              ; preds = %204
  %212 = load ptr, ptr @hashstrings, align 8, !tbaa !9
  %213 = load ptr, ptr %206, align 8, !tbaa !30
  %214 = ptrtoint ptr %213 to i64
  %215 = shl i64 %214, 32
  %216 = ashr exact i64 %215, 32
  %217 = getelementptr inbounds i8, ptr %212, i64 %216
  br label %218

218:                                              ; preds = %204, %211
  %219 = phi ptr [ %217, %211 ], [ null, %204 ]
  store ptr %219, ptr %206, align 8, !tbaa !30
  %220 = getelementptr inbounds %struct.flagent, ptr %206, i64 0, i32 4
  %221 = load i16, ptr %220, align 4, !tbaa !31
  %222 = icmp eq i16 %221, 0
  br i1 %222, label %231, label %223

223:                                              ; preds = %218
  %224 = load ptr, ptr @hashstrings, align 8, !tbaa !9
  %225 = getelementptr inbounds %struct.flagent, ptr %206, i64 0, i32 1
  %226 = load ptr, ptr %225, align 8, !tbaa !32
  %227 = ptrtoint ptr %226 to i64
  %228 = shl i64 %227, 32
  %229 = ashr exact i64 %228, 32
  %230 = getelementptr inbounds i8, ptr %224, i64 %229
  store ptr %230, ptr %225, align 8, !tbaa !32
  br label %233

231:                                              ; preds = %218
  %232 = getelementptr inbounds %struct.flagent, ptr %206, i64 0, i32 1
  store ptr null, ptr %232, align 8, !tbaa !32
  br label %233

233:                                              ; preds = %223, %231
  %234 = getelementptr inbounds %struct.flagent, ptr %206, i64 1
  %235 = icmp sgt i32 %205, 1
  br i1 %235, label %204, label %236, !llvm.loop !33

236:                                              ; preds = %233, %197
  %237 = icmp sgt i32 %198, 0
  br i1 %237, label %238, label %329

238:                                              ; preds = %236
  %239 = load ptr, ptr @sflaglist, align 8, !tbaa !9
  br label %240

240:                                              ; preds = %238, %323
  %241 = phi ptr [ %327, %323 ], [ %239, %238 ]
  %242 = phi i32 [ %326, %323 ], [ %198, %238 ]
  %243 = getelementptr inbounds %struct.flagent, ptr %241, i64 0, i32 4
  %244 = load i16, ptr %243, align 4, !tbaa !31
  %245 = icmp eq i16 %244, 0
  br i1 %245, label %280, label %246

246:                                              ; preds = %240
  %247 = getelementptr inbounds %struct.flagent, ptr %241, i64 0, i32 1
  %248 = load ptr, ptr %247, align 8, !tbaa !32
  %249 = sext i16 %244 to i64
  %250 = getelementptr inbounds i8, ptr %248, i64 %249
  %251 = getelementptr inbounds i8, ptr %250, i64 -1
  %252 = load i8, ptr %251, align 1, !tbaa !34
  %253 = zext i8 %252 to i64
  %254 = getelementptr inbounds [228 x %struct.flagptr], ptr @sflagindex, i64 0, i64 %253
  %255 = getelementptr inbounds [228 x %struct.flagptr], ptr @sflagindex, i64 0, i64 %253, i32 1
  %256 = load i32, ptr %255, align 8, !tbaa !35
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %280

258:                                              ; preds = %246
  %259 = load ptr, ptr %254, align 16, !tbaa !34
  %260 = icmp eq ptr %259, null
  br i1 %260, label %280, label %264

261:                                              ; preds = %273
  %262 = load ptr, ptr %274, align 8, !tbaa !34
  %263 = icmp eq ptr %262, null
  br i1 %263, label %280, label %264, !llvm.loop !37

264:                                              ; preds = %258, %261
  %265 = phi ptr [ %262, %261 ], [ %259, %258 ]
  %266 = phi ptr [ %276, %261 ], [ %251, %258 ]
  %267 = icmp eq ptr %266, %248
  br i1 %267, label %273, label %268

268:                                              ; preds = %264
  %269 = getelementptr inbounds i8, ptr %266, i64 -1
  %270 = load i8, ptr %269, align 1, !tbaa !34
  %271 = zext i8 %270 to i64
  %272 = getelementptr inbounds %struct.flagptr, ptr %265, i64 %271
  br label %273

273:                                              ; preds = %264, %268
  %274 = phi ptr [ %272, %268 ], [ %265, %264 ]
  %275 = phi i32 [ 0, %268 ], [ 1, %264 ]
  %276 = phi ptr [ %269, %268 ], [ %266, %264 ]
  %277 = getelementptr inbounds %struct.flagptr, ptr %274, i64 0, i32 1
  %278 = load i32, ptr %277, align 8, !tbaa !35
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %261, label %280, !llvm.loop !37

280:                                              ; preds = %261, %273, %258, %246, %240
  %281 = phi ptr [ @sflagindex, %240 ], [ %254, %246 ], [ %254, %258 ], [ %274, %273 ], [ %274, %261 ]
  %282 = phi i32 [ 1, %240 ], [ 0, %246 ], [ 0, %258 ], [ %275, %273 ], [ %275, %261 ]
  %283 = getelementptr inbounds %struct.flagptr, ptr %281, i64 0, i32 1
  %284 = load i32, ptr %283, align 8, !tbaa !35
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %280
  store ptr %241, ptr %281, align 8, !tbaa !34
  br label %287

287:                                              ; preds = %286, %280
  %288 = load i32, ptr %283, align 8, !tbaa !35
  %289 = add nsw i32 %288, 1
  store i32 %289, ptr %283, align 8, !tbaa !35
  %290 = icmp eq i32 %282, 0
  %291 = icmp sgt i32 %288, 2
  %292 = select i1 %290, i1 %291, i1 false
  br i1 %292, label %293, label %323

293:                                              ; preds = %287
  %294 = getelementptr inbounds %struct.flagent, ptr %241, i64 0, i32 1
  %295 = load ptr, ptr %294, align 8, !tbaa !32
  %296 = load ptr, ptr %281, align 8, !tbaa !34
  %297 = getelementptr inbounds %struct.flagent, ptr %296, i64 0, i32 1
  %298 = load ptr, ptr %297, align 8, !tbaa !32
  %299 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %295, ptr noundef nonnull dereferenceable(1) %298) #15
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %323, label %301

301:                                              ; preds = %293
  %302 = load i32, ptr @numsflags, align 4, !tbaa !5
  %303 = load ptr, ptr @sflaglist, align 8, !tbaa !9
  %304 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 12), align 4, !tbaa !38
  %305 = add nsw i32 %304, 128
  %306 = zext i32 %305 to i64
  %307 = tail call noalias ptr @calloc(i64 noundef %306, i64 noundef 16) #13
  store ptr %307, ptr %281, align 8, !tbaa !34
  %308 = icmp eq ptr %307, null
  br i1 %308, label %309, label %315

309:                                              ; preds = %301
  %310 = load i32, ptr @cbench_print, align 4, !tbaa !5
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %495, label %312

312:                                              ; preds = %309
  %313 = load ptr, ptr @stderr, align 8, !tbaa !9
  %314 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 45, i64 1, ptr %313) #12
  br label %495

315:                                              ; preds = %301
  %316 = getelementptr inbounds %struct.flagent, ptr %296, i64 -1
  %317 = ptrtoint ptr %316 to i64
  %318 = ptrtoint ptr %303 to i64
  %319 = sub i64 %317, %318
  %320 = lshr exact i64 %319, 8
  %321 = trunc i64 %320 to i32
  %322 = sub i32 %302, %321
  store i32 0, ptr %283, align 8, !tbaa !35
  br label %323

323:                                              ; preds = %287, %293, %315
  %324 = phi i32 [ %242, %287 ], [ %322, %315 ], [ %242, %293 ]
  %325 = phi ptr [ %241, %287 ], [ %316, %315 ], [ %241, %293 ]
  %326 = add nsw i32 %324, -1
  %327 = getelementptr inbounds %struct.flagent, ptr %325, i64 1
  %328 = icmp sgt i32 %324, 1
  br i1 %328, label %240, label %329, !llvm.loop !39

329:                                              ; preds = %323, %236
  %330 = load i32, ptr @numpflags, align 4, !tbaa !5
  %331 = icmp sgt i32 %330, 0
  br i1 %331, label %332, label %423

332:                                              ; preds = %329
  %333 = load ptr, ptr @pflaglist, align 8, !tbaa !9
  br label %334

334:                                              ; preds = %332, %417
  %335 = phi ptr [ %421, %417 ], [ %333, %332 ]
  %336 = phi i32 [ %420, %417 ], [ %330, %332 ]
  %337 = getelementptr inbounds %struct.flagent, ptr %335, i64 0, i32 4
  %338 = load i16, ptr %337, align 4, !tbaa !31
  %339 = icmp eq i16 %338, 0
  br i1 %339, label %374, label %340

340:                                              ; preds = %334
  %341 = getelementptr inbounds %struct.flagent, ptr %335, i64 0, i32 1
  %342 = load ptr, ptr %341, align 8, !tbaa !32
  %343 = load i8, ptr %342, align 1, !tbaa !34
  %344 = zext i8 %343 to i64
  %345 = getelementptr inbounds [228 x %struct.flagptr], ptr @pflagindex, i64 0, i64 %344
  %346 = getelementptr inbounds [228 x %struct.flagptr], ptr @pflagindex, i64 0, i64 %344, i32 1
  %347 = load i32, ptr %346, align 8, !tbaa !35
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %349, label %374

349:                                              ; preds = %340
  %350 = load ptr, ptr %345, align 16, !tbaa !34
  %351 = icmp eq ptr %350, null
  br i1 %351, label %370, label %352

352:                                              ; preds = %349
  %353 = getelementptr inbounds i8, ptr %342, i64 1
  br label %360

354:                                              ; preds = %360
  %355 = xor i1 %364, true
  %356 = zext i1 %355 to i64
  %357 = getelementptr inbounds i8, ptr %362, i64 %356
  %358 = load ptr, ptr %366, align 8, !tbaa !34
  %359 = icmp eq ptr %358, null
  br i1 %359, label %370, label %360, !llvm.loop !40

360:                                              ; preds = %352, %354
  %361 = phi ptr [ %350, %352 ], [ %358, %354 ]
  %362 = phi ptr [ %353, %352 ], [ %357, %354 ]
  %363 = load i8, ptr %362, align 1, !tbaa !34
  %364 = icmp eq i8 %363, 0
  %365 = zext i8 %363 to i64
  %366 = getelementptr inbounds %struct.flagptr, ptr %361, i64 %365
  %367 = getelementptr inbounds %struct.flagptr, ptr %361, i64 %365, i32 1
  %368 = load i32, ptr %367, align 8, !tbaa !35
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %354, label %370, !llvm.loop !40

370:                                              ; preds = %360, %354, %349
  %371 = phi ptr [ %345, %349 ], [ %366, %354 ], [ %366, %360 ]
  %372 = phi i1 [ false, %349 ], [ %364, %354 ], [ %364, %360 ]
  %373 = zext i1 %372 to i32
  br label %374

374:                                              ; preds = %370, %340, %334
  %375 = phi ptr [ @pflagindex, %334 ], [ %345, %340 ], [ %371, %370 ]
  %376 = phi i32 [ 1, %334 ], [ 0, %340 ], [ %373, %370 ]
  %377 = getelementptr inbounds %struct.flagptr, ptr %375, i64 0, i32 1
  %378 = load i32, ptr %377, align 8, !tbaa !35
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %381

380:                                              ; preds = %374
  store ptr %335, ptr %375, align 8, !tbaa !34
  br label %381

381:                                              ; preds = %380, %374
  %382 = load i32, ptr %377, align 8, !tbaa !35
  %383 = add nsw i32 %382, 1
  store i32 %383, ptr %377, align 8, !tbaa !35
  %384 = icmp eq i32 %376, 0
  %385 = icmp sgt i32 %382, 2
  %386 = select i1 %384, i1 %385, i1 false
  br i1 %386, label %387, label %417

387:                                              ; preds = %381
  %388 = getelementptr inbounds %struct.flagent, ptr %335, i64 0, i32 1
  %389 = load ptr, ptr %388, align 8, !tbaa !32
  %390 = load ptr, ptr %375, align 8, !tbaa !34
  %391 = getelementptr inbounds %struct.flagent, ptr %390, i64 0, i32 1
  %392 = load ptr, ptr %391, align 8, !tbaa !32
  %393 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %389, ptr noundef nonnull dereferenceable(1) %392) #15
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %417, label %395

395:                                              ; preds = %387
  %396 = load i32, ptr @numpflags, align 4, !tbaa !5
  %397 = load ptr, ptr @pflaglist, align 8, !tbaa !9
  %398 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 12), align 4, !tbaa !38
  %399 = add nsw i32 %398, 128
  %400 = sext i32 %399 to i64
  %401 = tail call noalias ptr @calloc(i64 noundef %400, i64 noundef 16) #13
  store ptr %401, ptr %375, align 8, !tbaa !34
  %402 = icmp eq ptr %401, null
  br i1 %402, label %403, label %409

403:                                              ; preds = %395
  %404 = load i32, ptr @cbench_print, align 4, !tbaa !5
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %495, label %406

406:                                              ; preds = %403
  %407 = load ptr, ptr @stderr, align 8, !tbaa !9
  %408 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 45, i64 1, ptr %407) #12
  br label %495

409:                                              ; preds = %395
  %410 = getelementptr inbounds %struct.flagent, ptr %390, i64 -1
  %411 = ptrtoint ptr %410 to i64
  %412 = ptrtoint ptr %397 to i64
  %413 = sub i64 %411, %412
  %414 = lshr exact i64 %413, 8
  %415 = trunc i64 %414 to i32
  %416 = sub i32 %396, %415
  store i32 0, ptr %377, align 8, !tbaa !35
  br label %417

417:                                              ; preds = %381, %387, %409
  %418 = phi i32 [ %336, %381 ], [ %416, %409 ], [ %336, %387 ]
  %419 = phi ptr [ %335, %381 ], [ %410, %409 ], [ %335, %387 ]
  %420 = add nsw i32 %418, -1
  %421 = getelementptr inbounds %struct.flagent, ptr %419, i64 1
  %422 = icmp sgt i32 %418, 1
  br i1 %422, label %334, label %423, !llvm.loop !41

423:                                              ; preds = %417, %329
  %424 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 13), align 4, !tbaa !42
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %426, label %427

426:                                              ; preds = %423
  store ptr null, ptr @chartypes, align 8, !tbaa !9
  br label %494

427:                                              ; preds = %423
  %428 = sext i32 %424 to i64
  %429 = mul nsw i64 %428, 24
  %430 = tail call noalias ptr @malloc(i64 noundef %429) #14
  store ptr %430, ptr @chartypes, align 8, !tbaa !9
  %431 = icmp eq ptr %430, null
  br i1 %431, label %432, label %438

432:                                              ; preds = %427
  %433 = load i32, ptr @cbench_print, align 4, !tbaa !5
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %495, label %435

435:                                              ; preds = %432
  %436 = load ptr, ptr @stderr, align 8, !tbaa !9
  %437 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 45, i64 1, ptr %436) #12
  br label %495

438:                                              ; preds = %427
  %439 = icmp sgt i32 %424, 0
  br i1 %439, label %440, label %494

440:                                              ; preds = %438
  %441 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 14), align 4, !tbaa !43
  %442 = zext nneg i32 %424 to i64
  br label %443

443:                                              ; preds = %440, %489
  %444 = phi i64 [ 0, %440 ], [ %492, %489 ]
  %445 = phi i32 [ %441, %440 ], [ %491, %489 ]
  %446 = load ptr, ptr @hashstrings, align 8, !tbaa !9
  %447 = sext i32 %445 to i64
  %448 = getelementptr inbounds i8, ptr %446, i64 %447
  %449 = load ptr, ptr @chartypes, align 8, !tbaa !9
  %450 = getelementptr inbounds %struct.strchartype, ptr %449, i64 %444
  store ptr %448, ptr %450, align 8, !tbaa !44
  %451 = load ptr, ptr @chartypes, align 8, !tbaa !9
  %452 = getelementptr inbounds %struct.strchartype, ptr %451, i64 %444
  %453 = load ptr, ptr %452, align 8, !tbaa !44
  %454 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %453) #15
  %455 = trunc i64 %454 to i32
  %456 = add i32 %445, 1
  %457 = add i32 %456, %455
  %458 = load ptr, ptr @hashstrings, align 8, !tbaa !9
  %459 = sext i32 %457 to i64
  %460 = getelementptr inbounds i8, ptr %458, i64 %459
  %461 = getelementptr inbounds %struct.strchartype, ptr %451, i64 %444, i32 1
  store ptr %460, ptr %461, align 8, !tbaa !46
  %462 = load ptr, ptr @chartypes, align 8, !tbaa !9
  %463 = getelementptr inbounds %struct.strchartype, ptr %462, i64 %444, i32 1
  %464 = load ptr, ptr %463, align 8, !tbaa !46
  %465 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %464) #15
  %466 = trunc i64 %465 to i32
  %467 = add i32 %457, 1
  %468 = add i32 %467, %466
  %469 = load ptr, ptr @hashstrings, align 8, !tbaa !9
  %470 = sext i32 %468 to i64
  %471 = getelementptr inbounds i8, ptr %469, i64 %470
  %472 = getelementptr inbounds %struct.strchartype, ptr %462, i64 %444, i32 2
  store ptr %471, ptr %472, align 8, !tbaa !47
  %473 = load ptr, ptr @hashstrings, align 8, !tbaa !9
  %474 = sext i32 %468 to i64
  %475 = getelementptr inbounds i8, ptr %473, i64 %474
  %476 = load i8, ptr %475, align 1, !tbaa !34
  %477 = icmp eq i8 %476, 0
  br i1 %477, label %489, label %478

478:                                              ; preds = %443, %478
  %479 = phi ptr [ %486, %478 ], [ %475, %443 ]
  %480 = phi i32 [ %484, %478 ], [ %468, %443 ]
  %481 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %479) #15
  %482 = trunc i64 %481 to i32
  %483 = add i32 %480, 1
  %484 = add i32 %483, %482
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds i8, ptr %473, i64 %485
  %487 = load i8, ptr %486, align 1, !tbaa !34
  %488 = icmp eq i8 %487, 0
  br i1 %488, label %489, label %478, !llvm.loop !48

489:                                              ; preds = %478, %443
  %490 = phi i32 [ %468, %443 ], [ %484, %478 ]
  %491 = add nsw i32 %490, 1
  %492 = add nuw nsw i64 %444, 1
  %493 = icmp eq i64 %492, %442
  br i1 %493, label %494, label %443, !llvm.loop !49

494:                                              ; preds = %489, %438, %426
  store i1 true, ptr @inited, align 4
  br label %495

495:                                              ; preds = %11, %432, %435, %403, %406, %309, %312, %159, %162, %139, %142, %107, %110, %91, %94, %59, %62, %47, %50, %29, %32, %19, %22, %5, %8, %0, %494
  %496 = phi i32 [ 0, %494 ], [ 0, %0 ], [ -1, %8 ], [ -1, %5 ], [ -1, %22 ], [ -1, %19 ], [ -1, %32 ], [ -1, %29 ], [ -1, %50 ], [ -1, %47 ], [ -1, %62 ], [ -1, %59 ], [ -1, %94 ], [ -1, %91 ], [ -1, %110 ], [ -1, %107 ], [ -1, %142 ], [ -1, %139 ], [ -1, %162 ], [ -1, %159 ], [ -1, %312 ], [ -1, %309 ], [ -1, %406 ], [ -1, %403 ], [ -1, %435 ], [ -1, %432 ], [ -1, %11 ]
  ret i32 %496
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

declare i32 @close(i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @lookup(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [120 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %3) #11
  %4 = load ptr, ptr @hashtbl, align 8, !tbaa !9
  %5 = load i32, ptr @hashsize, align 4, !tbaa !5
  %6 = tail call i32 @hash(ptr noundef %0, i32 noundef %5) #11
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.dent, ptr %4, i64 %7
  %9 = call i32 @ichartostr(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 120, i32 noundef 1) #11
  %10 = icmp ne i32 %9, 0
  %11 = load i32, ptr @cbench_print, align 4
  %12 = icmp ne i32 %11, 0
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load ptr, ptr @stderr, align 8, !tbaa !9
  %16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.10, ptr noundef nonnull %3, i32 noundef 466, ptr noundef nonnull @.str.11) #12
  br label %17

17:                                               ; preds = %14, %2
  %18 = icmp eq ptr %4, null
  br i1 %18, label %50, label %19

19:                                               ; preds = %17
  %20 = load i8, ptr %3, align 16
  %21 = getelementptr inbounds i8, ptr %3, i64 1
  br label %22

22:                                               ; preds = %19, %46
  %23 = phi ptr [ %8, %19 ], [ %48, %46 ]
  %24 = getelementptr inbounds %struct.dent, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !23
  %26 = icmp eq ptr %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %22
  %28 = load i8, ptr %25, align 1, !tbaa !34
  %29 = icmp eq i8 %28, %20
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = getelementptr inbounds i8, ptr %25, i64 1
  %32 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(1) %21) #15
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %54, label %34

34:                                               ; preds = %30, %27, %22
  %35 = getelementptr inbounds %struct.dent, ptr %23, i64 0, i32 2
  %36 = load i64, ptr %35, align 8, !tbaa !16
  %37 = and i64 %36, 1073741824
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %34, %39
  %40 = phi ptr [ %41, %39 ], [ %23, %34 ]
  %41 = load ptr, ptr %40, align 8, !tbaa !25
  %42 = getelementptr inbounds %struct.dent, ptr %41, i64 0, i32 2
  %43 = load i64, ptr %42, align 8, !tbaa !16
  %44 = and i64 %43, 1073741824
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %39, !llvm.loop !50

46:                                               ; preds = %39, %34
  %47 = phi ptr [ %23, %34 ], [ %41, %39 ]
  %48 = load ptr, ptr %47, align 8, !tbaa !25
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %22, !llvm.loop !51

50:                                               ; preds = %46, %17
  %51 = icmp eq i32 %1, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %50
  %53 = call ptr @treelookup(ptr noundef %0) #11
  br label %54

54:                                               ; preds = %30, %50, %52
  %55 = phi ptr [ %53, %52 ], [ null, %50 ], [ %23, %30 ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %3) #11
  ret ptr %55
}

declare i32 @hash(ptr noundef, i32 noundef) local_unnamed_addr #7

declare i32 @ichartostr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare ptr @treelookup(ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }
attributes #12 = { cold }
attributes #13 = { nounwind allocsize(0,1) }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!12, !13, i64 0}
!12 = !{!"hashheader", !13, i64 0, !13, i64 2, !13, i64 4, !13, i64 6, !13, i64 8, !13, i64 10, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !7, i64 48, !7, i64 53, !7, i64 66, !7, i64 67, !7, i64 68, !7, i64 70, !7, i64 526, !7, i64 754, !7, i64 982, !7, i64 1210, !7, i64 1438, !7, i64 1666, !7, i64 1894, !7, i64 2022, !7, i64 3124, !7, i64 3524, !13, i64 3924}
!13 = !{!"short", !7, i64 0}
!14 = !{!12, !13, i64 3924}
!15 = !{!12, !13, i64 2}
!16 = !{!17, !17, i64 0}
!17 = !{!"long", !7, i64 0}
!18 = !{!12, !6, i64 20}
!19 = !{!12, !6, i64 24}
!20 = !{!12, !6, i64 28}
!21 = !{!12, !6, i64 16}
!22 = !{!12, !6, i64 12}
!23 = !{!24, !10, i64 8}
!24 = !{!"dent", !10, i64 0, !10, i64 8, !7, i64 16}
!25 = !{!24, !10, i64 0}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.unroll.disable"}
!28 = !{!29, !13, i64 18}
!29 = !{!"flagent", !10, i64 0, !10, i64 8, !13, i64 16, !13, i64 18, !13, i64 20, !13, i64 22, !13, i64 24, !7, i64 26}
!30 = !{!29, !10, i64 0}
!31 = !{!29, !13, i64 20}
!32 = !{!29, !10, i64 8}
!33 = distinct !{!33, !27}
!34 = !{!7, !7, i64 0}
!35 = !{!36, !6, i64 8}
!36 = !{!"flagptr", !7, i64 0, !6, i64 8}
!37 = distinct !{!37, !27}
!38 = !{!12, !6, i64 36}
!39 = distinct !{!39, !27}
!40 = distinct !{!40, !27}
!41 = distinct !{!41, !27}
!42 = !{!12, !6, i64 40}
!43 = !{!12, !6, i64 44}
!44 = !{!45, !10, i64 0}
!45 = !{!"strchartype", !10, i64 0, !10, i64 8, !10, i64 16}
!46 = !{!45, !10, i64 8}
!47 = !{!45, !10, i64 16}
!48 = distinct !{!48, !27}
!49 = distinct !{!49, !27}
!50 = distinct !{!50, !27}
!51 = distinct !{!51, !27}
