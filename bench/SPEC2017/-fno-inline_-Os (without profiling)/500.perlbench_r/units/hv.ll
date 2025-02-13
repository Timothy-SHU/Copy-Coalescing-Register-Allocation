; ModuleID = 'hv.c'
source_filename = "hv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sv = type { ptr, i32, i32, %union.anon.1 }
%union.anon.1 = type { ptr }
%struct.he = type { ptr, ptr, %union.anon }
%union.anon = type { ptr }
%struct.hv = type { ptr, i32, i32, %union.anon.0 }
%union.anon.0 = type { ptr }
%struct.magic = type { ptr, ptr, i16, i8, i8, i64, ptr, ptr }
%struct.ufuncs = type { ptr, ptr, i64 }
%struct.xpv = type { ptr, %union._xmgu, i64, %union.anon.2 }
%union._xmgu = type { ptr }
%union.anon.2 = type { i64 }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.xpvlv = type { ptr, %union._xmgu, i64, %union.anon.3, %union._xivu, %union._xnvu, %union.anon.4, i64, ptr, i8, i8 }
%union.anon.3 = type { i64 }
%union._xivu = type { i64 }
%union._xnvu = type { double }
%union.anon.4 = type { i64 }
%struct.xpviv = type { ptr, %union._xmgu, i64, %union.anon.5, %union._xivu }
%union.anon.5 = type { i64 }
%struct.xpvnv = type { ptr, %union._xmgu, i64, %union.anon.6, %union._xivu, %union._xnvu }
%union.anon.6 = type { i64 }
%struct.xpvhv = type { ptr, %union._xmgu, i64, i64 }
%struct.xpvmg = type { ptr, %union._xmgu, i64, %union.anon.7, %union._xivu, %union._xnvu }
%union.anon.7 = type { i64 }
%struct.gv = type { ptr, i32, i32, %union.anon.11 }
%union.anon.11 = type { ptr }
%struct.gp = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr }
%struct.shared_he = type { %struct.he, %struct.hek }
%struct.xpvhv_aux = type { %union._xhvnameu, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32 }
%union._xhvnameu = type { ptr }
%struct.mro_meta = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i32 }
%struct.av = type { ptr, i32, i32, %union.anon.8 }
%union.anon.8 = type { ptr }
%struct.refcounted_he = type { ptr, ptr, %union.anon.9, i32, [1 x i8] }
%union.anon.9 = type { i64 }
%struct.xpvuv = type { ptr, %union._xmgu, i64, %union.anon.10, %union._xivu }
%union.anon.10 = type { i64 }
%struct.cop = type { ptr, ptr, ptr, i64, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }

@PL_hv_fetch_ent_mh = external local_unnamed_addr global ptr, align 8
@PL_body_roots = external local_unnamed_addr global [16 x ptr], align 16
@PL_tainted = external local_unnamed_addr global i8, align 1
@PL_tainting = external local_unnamed_addr global i8, align 1
@PL_strtab = external local_unnamed_addr global ptr, align 8
@S_strtab_error = internal constant [43 x i8] c"Cannot modify shared string table in hv_%s\00", align 16
@.str.1 = private unnamed_addr constant [6 x i8] c"fetch\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"store\00", align 1
@PL_sv_placeholder = external global %struct.sv, align 8
@.str.3 = private unnamed_addr constant [60 x i8] c"Attempt to access disallowed key '%-p' in a restricted hash\00", align 1
@PL_hash_rand_bits_enabled = external local_unnamed_addr global i8, align 1
@PL_hash_rand_bits = external local_unnamed_addr global i64, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"%ld/%ld\00", align 1
@PL_sv_undef = external global %struct.sv, align 8
@PL_sv_yes = external global %struct.sv, align 8
@PL_sv_no = external global %struct.sv, align 8
@.str.5 = private unnamed_addr constant [60 x i8] c"Attempt to delete readonly key '%-p' from a restricted hash\00", align 1
@PL_phase = external local_unnamed_addr global i32, align 4
@PL_stashcache = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [30 x i8] c"panic: hv name too long (%lu)\00", align 1
@.str.7 = private unnamed_addr constant [100 x i8] c"Use of each() on hash after insertion without resetting hash iterator results in undefined behavior\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"panic: hv_placeholders_p\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"panic: hv_placeholders_set\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"panic: refcounted_he_chain_2hv bad flags %lx\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"panic: refcounted_he_fetch_pvn bad flags %lx\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"panic: refcounted_he_fetch_sv bad flags %lx\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"panic: refcounted_he_new_sv bad flags %lx\00", align 1
@.str.14 = private unnamed_addr constant [47 x i8] c"panic: cop_store_label illegal flag bits 0x%lx\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c":\00", align 1
@PL_charclass = external local_unnamed_addr constant [0 x i32], align 4
@.str.16 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@PL_defstash = external local_unnamed_addr global ptr, align 8
@.str.17 = private unnamed_addr constant [7 x i8] c"main::\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"ISA\00", align 1
@.str.19 = private unnamed_addr constant [62 x i8] c"Attempt to delete disallowed key '%-p' from a restricted hash\00", align 1
@PL_nomemok = external local_unnamed_addr global i8, align 1
@.str.20 = private unnamed_addr constant [49 x i8] c"Attempt to free nonexistent shared string '%s'%s\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c" (utf8)\00", align 1
@.str.22 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.23 = private unnamed_addr constant [41 x i8] c"panic: refcounted_he_value bad flags %lx\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_free_tied_hv_pool() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_hv_fetch_ent_mh, align 8, !tbaa !5
  %2 = icmp eq ptr %1, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %0, %3
  %4 = phi ptr [ %7, %3 ], [ %1, %0 ]
  %5 = getelementptr inbounds %struct.he, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !9
  tail call void @Perl_safesysfree(ptr noundef %6) #16
  %7 = load ptr, ptr %4, align 8, !tbaa !11
  %8 = load ptr, ptr @PL_body_roots, align 16, !tbaa !5
  store ptr %8, ptr %4, align 8, !tbaa !11
  store ptr %4, ptr @PL_body_roots, align 16, !tbaa !5
  %9 = icmp eq ptr %7, null
  br i1 %9, label %10, label %3, !llvm.loop !12

10:                                               ; preds = %3, %0
  store ptr null, ptr @PL_hv_fetch_ent_mh, align 8, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @Perl_safesysfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_hv_common_key_len(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = tail call i32 @llvm.abs.i32(i32 %2, i1 true)
  %8 = lshr i32 %2, 31
  %9 = zext nneg i32 %7 to i64
  %10 = tail call ptr @Perl_hv_common(ptr noundef %0, ptr noundef null, ptr noundef %1, i64 noundef %9, i32 noundef %8, i32 noundef %3, ptr noundef %4, i32 noundef %5) #17
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_hv_common(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  store i64 %3, ptr %9, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #18
  %13 = and i32 %5, 32
  %14 = icmp eq ptr %0, null
  br i1 %14, label %695, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !16
  %18 = and i32 %17, 255
  %19 = icmp eq i32 %18, 255
  br i1 %19, label %695, label %20

20:                                               ; preds = %15
  %21 = and i32 %17, 6291456
  %22 = icmp eq i32 %21, 6291456
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = and i1 %24, %22
  br i1 %25, label %26, label %50

26:                                               ; preds = %20
  %27 = tail call ptr @Perl_mg_find(ptr noundef nonnull %0, i32 noundef 85) #16
  %28 = icmp eq ptr %27, null
  br i1 %28, label %50, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.magic, ptr %27, i64 0, i32 7
  %31 = load ptr, ptr %30, align 8, !tbaa !19
  %32 = getelementptr inbounds %struct.ufuncs, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !22
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %50

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.magic, ptr %27, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !24
  %38 = icmp eq ptr %1, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = shl i32 %4, 29
  %41 = and i32 %40, 536870912
  %42 = or disjoint i32 %41, 524288
  %43 = tail call ptr @Perl_newSVpvn_flags(ptr noundef %2, i64 noundef %3, i32 noundef %42) #16
  br label %44

44:                                               ; preds = %39, %35
  %45 = phi ptr [ %1, %35 ], [ %43, %39 ]
  store ptr %45, ptr %36, align 8, !tbaa !24
  %46 = sext i32 %5 to i64
  %47 = getelementptr inbounds %struct.ufuncs, ptr %31, i64 0, i32 2
  store i64 %46, ptr %47, align 8, !tbaa !25
  %48 = tail call i32 @Perl_magic_getuvar(ptr noundef nonnull %0, ptr noundef nonnull %27) #16
  %49 = load ptr, ptr %36, align 8, !tbaa !24
  store ptr %37, ptr %36, align 8, !tbaa !24
  br label %50

50:                                               ; preds = %26, %44, %29, %20
  %51 = phi i32 [ %7, %20 ], [ %7, %26 ], [ 0, %44 ], [ %7, %29 ]
  %52 = phi ptr [ %1, %20 ], [ %1, %26 ], [ %49, %44 ], [ %1, %29 ]
  %53 = icmp eq ptr %52, null
  br i1 %53, label %87, label %54

54:                                               ; preds = %50
  %55 = and i32 %4, 256
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  tail call void @Perl_safesysfree(ptr noundef %2) #16
  br label %58

58:                                               ; preds = %57, %54
  %59 = getelementptr inbounds %struct.sv, ptr %52, i64 0, i32 2
  %60 = load i32, ptr %59, align 4, !tbaa !26
  %61 = and i32 %60, 2098176
  %62 = icmp eq i32 %61, 1024
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load ptr, ptr %52, align 8, !tbaa !28
  %65 = getelementptr inbounds %struct.xpv, ptr %64, i64 0, i32 2
  %66 = load i64, ptr %65, align 8, !tbaa !29
  store i64 %66, ptr %9, align 8, !tbaa !14
  %67 = getelementptr inbounds %struct.sv, ptr %52, i64 0, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !31
  br label %72

69:                                               ; preds = %58
  %70 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %52, ptr noundef nonnull %9, i32 noundef 34) #16
  %71 = load i32, ptr %59, align 4, !tbaa !26
  br label %72

72:                                               ; preds = %69, %63
  %73 = phi i32 [ %60, %63 ], [ %71, %69 ]
  %74 = phi ptr [ %68, %63 ], [ %70, %69 ]
  %75 = lshr i32 %73, 29
  %76 = and i32 %75, 1
  %77 = trunc i32 %76 to i8
  store i8 %77, ptr %10, align 1, !tbaa !32
  %78 = and i32 %73, 268435456
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %90, label %80

80:                                               ; preds = %72
  %81 = load ptr, ptr %52, align 8, !tbaa !28
  %82 = getelementptr inbounds %struct.xpv, ptr %81, i64 0, i32 3
  %83 = load i64, ptr %82, align 8, !tbaa !31
  %84 = icmp eq i64 %83, 0
  %85 = or disjoint i32 %76, 1024
  %86 = select i1 %84, i32 %85, i32 %76
  br label %90

87:                                               ; preds = %50
  %88 = trunc i32 %4 to i8
  %89 = and i8 %88, 1
  store i8 %89, ptr %10, align 1, !tbaa !32
  br label %90

90:                                               ; preds = %80, %72, %87
  %91 = phi i8 [ %89, %87 ], [ %77, %72 ], [ %77, %80 ]
  %92 = phi i32 [ %4, %87 ], [ %76, %72 ], [ %86, %80 ]
  %93 = phi ptr [ %2, %87 ], [ %74, %72 ], [ %74, %80 ]
  %94 = and i32 %5, 64
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %90
  %97 = load i64, ptr %9, align 8, !tbaa !14
  %98 = call fastcc ptr @S_hv_delete_common(ptr noundef nonnull %0, ptr noundef %52, ptr noundef %93, i64 noundef %97, i32 noundef %92, i32 noundef %5, i32 noundef %51) #17
  br label %695

99:                                               ; preds = %90
  %100 = load ptr, ptr %0, align 8, !tbaa !34
  %101 = load i32, ptr %16, align 4, !tbaa !16
  %102 = and i32 %101, 14680064
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %300, label %104

104:                                              ; preds = %99
  %105 = and i32 %101, 8388608
  %106 = icmp ne i32 %105, 0
  %107 = and i32 %5, 12
  %108 = icmp eq i32 %107, 0
  %109 = and i1 %108, %106
  br i1 %109, label %110, label %155

110:                                              ; preds = %104
  %111 = call ptr @Perl_mg_find(ptr noundef nonnull %0, i32 noundef 80) #16
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = load i32, ptr %16, align 4, !tbaa !26
  %115 = and i32 %114, 2097152
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %300, label %117

117:                                              ; preds = %113, %110
  br i1 %53, label %118, label %124

118:                                              ; preds = %117
  %119 = load i64, ptr %9, align 8, !tbaa !14
  %120 = load i8, ptr %10, align 1, !tbaa !32, !range !35, !noundef !36
  %121 = icmp eq i8 %120, 0
  %122 = select i1 %121, i32 0, i32 536870912
  %123 = call ptr @Perl_newSVpvn_flags(ptr noundef %93, i64 noundef %119, i32 noundef %122) #16
  br label %126

124:                                              ; preds = %117
  %125 = call ptr @Perl_newSVsv(ptr noundef nonnull %52) #16
  br label %126

126:                                              ; preds = %124, %118
  %127 = phi ptr [ %125, %124 ], [ %123, %118 ]
  %128 = call ptr @Perl_sv_newmortal() #16
  %129 = call i32 @Perl_mg_copy(ptr noundef nonnull %0, ptr noundef %128, ptr noundef %127, i32 noundef -2) #16
  %130 = load ptr, ptr @PL_hv_fetch_ent_mh, align 8, !tbaa !5
  %131 = icmp eq ptr %130, null
  br i1 %131, label %136, label %132

132:                                              ; preds = %126
  %133 = load ptr, ptr %130, align 8, !tbaa !11
  store ptr %133, ptr @PL_hv_fetch_ent_mh, align 8, !tbaa !5
  %134 = getelementptr inbounds %struct.he, ptr %130, i64 0, i32 1
  %135 = load ptr, ptr %134, align 8, !tbaa !9
  br label %140

136:                                              ; preds = %126
  %137 = call fastcc ptr @S_new_he() #17
  %138 = call ptr @Perl_safesysmalloc(i64 noundef 16) #16
  %139 = getelementptr inbounds %struct.he, ptr %137, i64 0, i32 1
  store ptr %138, ptr %139, align 8, !tbaa !9
  br label %140

140:                                              ; preds = %136, %132
  %141 = phi ptr [ %135, %132 ], [ %138, %136 ]
  %142 = phi ptr [ %130, %132 ], [ %137, %136 ]
  store ptr null, ptr %142, align 8, !tbaa !11
  %143 = getelementptr inbounds %struct.hek, ptr %141, i64 0, i32 1
  store i32 -2, ptr %143, align 4, !tbaa !37
  %144 = getelementptr inbounds %struct.hek, ptr %141, i64 0, i32 2
  store ptr %127, ptr %144, align 4, !tbaa !5
  %145 = getelementptr inbounds %struct.he, ptr %142, i64 0, i32 2
  store ptr %128, ptr %145, align 8, !tbaa !31
  call void @Perl_sv_upgrade(ptr noundef %128, i32 noundef 10) #16
  %146 = load ptr, ptr %128, align 8, !tbaa !28
  %147 = getelementptr inbounds %struct.xpvlv, ptr %146, i64 0, i32 9
  store i8 84, ptr %147, align 8, !tbaa !39
  %148 = getelementptr inbounds %struct.xpvlv, ptr %146, i64 0, i32 8
  store ptr %142, ptr %148, align 8, !tbaa !41
  %149 = and i32 %92, 256
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %140
  call void @Perl_safesysfree(ptr noundef %93) #16
  br label %152

152:                                              ; preds = %151, %140
  %153 = icmp eq i32 %13, 0
  %154 = select i1 %153, ptr %142, ptr %145
  br label %695

155:                                              ; preds = %104
  %156 = icmp eq i32 %105, 0
  %157 = and i32 %5, 8
  %158 = icmp eq i32 %157, 0
  %159 = or i1 %158, %156
  br i1 %159, label %250, label %160

160:                                              ; preds = %155
  %161 = call ptr @Perl_mg_find(ptr noundef nonnull %0, i32 noundef 80) #16
  %162 = icmp eq ptr %161, null
  br i1 %162, label %163, label %167

163:                                              ; preds = %160
  %164 = load i32, ptr %16, align 4, !tbaa !26
  %165 = and i32 %164, 2097152
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %300, label %167

167:                                              ; preds = %163, %160
  %168 = call ptr @Perl_sv_newmortal() #16
  %169 = call ptr @Perl_sv_newmortal() #16
  %170 = load i8, ptr %10, align 1, !range !35
  %171 = icmp eq i8 %170, 0
  %172 = select i1 %53, i1 %171, i1 false
  br i1 %172, label %183, label %173

173:                                              ; preds = %167
  br i1 %53, label %174, label %177

174:                                              ; preds = %173
  %175 = load i64, ptr %9, align 8, !tbaa !14
  %176 = call ptr @Perl_newSVpvn_flags(ptr noundef %93, i64 noundef %175, i32 noundef 536870912) #16
  br label %179

177:                                              ; preds = %173
  %178 = call ptr @Perl_newSVsv(ptr noundef nonnull %52) #16
  br label %179

179:                                              ; preds = %177, %174
  %180 = phi ptr [ %178, %177 ], [ %176, %174 ]
  %181 = call ptr @Perl_sv_2mortal(ptr noundef %180) #16
  %182 = call i32 @Perl_mg_copy(ptr noundef nonnull %0, ptr noundef %169, ptr noundef %181, i32 noundef -2) #16
  br label %187

183:                                              ; preds = %167
  %184 = load i64, ptr %9, align 8, !tbaa !14
  %185 = trunc i64 %184 to i32
  %186 = call i32 @Perl_mg_copy(ptr noundef nonnull %0, ptr noundef %169, ptr noundef %93, i32 noundef %185) #16
  br label %187

187:                                              ; preds = %183, %179
  %188 = and i32 %92, 256
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %191, label %190

190:                                              ; preds = %187
  call void @Perl_safesysfree(ptr noundef %93) #16
  br label %191

191:                                              ; preds = %190, %187
  %192 = call ptr @Perl_mg_find(ptr noundef %169, i32 noundef 112) #16
  %193 = call i32 @Perl_magic_existspack(ptr noundef %168, ptr noundef %192) #16
  %194 = icmp eq ptr %168, null
  br i1 %194, label %695, label %195

195:                                              ; preds = %191
  %196 = getelementptr inbounds %struct.sv, ptr %168, i64 0, i32 2
  %197 = load i32, ptr %196, align 4, !tbaa !26
  %198 = and i32 %197, 2097152
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %202, label %200

200:                                              ; preds = %195
  %201 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %168, i32 noundef 2) #16
  br i1 %201, label %249, label %695

202:                                              ; preds = %195
  %203 = and i32 %197, 65280
  %204 = icmp ne i32 %203, 0
  %205 = and i32 %197, 255
  %206 = icmp eq i32 %205, 8
  %207 = or i1 %204, %206
  %208 = and i32 %197, 16777471
  %209 = icmp eq i32 %208, 16777226
  %210 = or i1 %209, %207
  br i1 %210, label %211, label %695

211:                                              ; preds = %202
  %212 = and i32 %197, 1024
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %228, label %214

214:                                              ; preds = %211
  %215 = load ptr, ptr %168, align 8, !tbaa !28
  %216 = icmp eq ptr %215, null
  br i1 %216, label %695, label %217

217:                                              ; preds = %214
  %218 = getelementptr inbounds %struct.xpv, ptr %215, i64 0, i32 2
  %219 = load i64, ptr %218, align 8, !tbaa !29
  %220 = icmp ugt i64 %219, 1
  br i1 %220, label %249, label %221

221:                                              ; preds = %217
  %222 = icmp eq i64 %219, 0
  br i1 %222, label %695, label %223

223:                                              ; preds = %221
  %224 = getelementptr inbounds %struct.sv, ptr %168, i64 0, i32 3
  %225 = load ptr, ptr %224, align 8, !tbaa !31
  %226 = load i8, ptr %225, align 1, !tbaa !31
  %227 = icmp eq i8 %226, 48
  br i1 %227, label %695, label %249

228:                                              ; preds = %211
  %229 = and i32 %197, 768
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %247, label %231

231:                                              ; preds = %228
  %232 = and i32 %197, 256
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %239, label %234

234:                                              ; preds = %231
  %235 = load ptr, ptr %168, align 8, !tbaa !28
  %236 = getelementptr inbounds %struct.xpviv, ptr %235, i64 0, i32 4
  %237 = load i64, ptr %236, align 8, !tbaa !31
  %238 = icmp eq i64 %237, 0
  br i1 %238, label %239, label %249

239:                                              ; preds = %234, %231
  %240 = and i32 %197, 512
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %695, label %242

242:                                              ; preds = %239
  %243 = load ptr, ptr %168, align 8, !tbaa !28
  %244 = getelementptr inbounds %struct.xpvnv, ptr %243, i64 0, i32 5
  %245 = load double, ptr %244, align 8, !tbaa !31
  %246 = fcmp une double %245, 0.000000e+00
  br i1 %246, label %249, label %695

247:                                              ; preds = %228
  %248 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %168, i32 noundef 0) #16
  br i1 %248, label %249, label %695

249:                                              ; preds = %247, %242, %234, %223, %217, %200
  br label %695

250:                                              ; preds = %155
  %251 = and i32 %5, 4
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %300, label %253

253:                                              ; preds = %250
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #18
  call fastcc void @S_hv_magic_check(ptr noundef nonnull %0, ptr noundef nonnull %11, ptr noundef nonnull %12) #17
  %254 = load i8, ptr %11, align 1, !tbaa !32, !range !35, !noundef !36
  %255 = icmp eq i8 %254, 0
  br i1 %255, label %297, label %256

256:                                              ; preds = %253
  %257 = load i8, ptr @PL_tainted, align 1, !tbaa !32, !range !35, !noundef !36
  %258 = icmp eq i8 %257, 0
  %259 = icmp eq i8 %91, 0
  %260 = and i1 %53, %259
  br i1 %260, label %283, label %261

261:                                              ; preds = %256
  br i1 %53, label %262, label %265

262:                                              ; preds = %261
  %263 = load i64, ptr %9, align 8, !tbaa !14
  %264 = call ptr @Perl_newSVpvn_flags(ptr noundef %93, i64 noundef %263, i32 noundef 536870912) #16
  br label %265

265:                                              ; preds = %262, %261
  %266 = phi ptr [ %52, %261 ], [ %264, %262 ]
  %267 = load i8, ptr @PL_tainting, align 1, !tbaa !32, !range !35, !noundef !36
  %268 = icmp eq i8 %267, 0
  br i1 %268, label %279, label %269

269:                                              ; preds = %265
  %270 = getelementptr inbounds %struct.sv, ptr %266, i64 0, i32 2
  %271 = load i32, ptr %270, align 4, !tbaa !26
  %272 = and i32 %271, 14680064
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %276, label %274

274:                                              ; preds = %269
  %275 = call zeroext i1 @Perl_sv_tainted(ptr noundef nonnull %266) #16
  br label %276

276:                                              ; preds = %274, %269
  %277 = phi i1 [ false, %269 ], [ %275, %274 ]
  %278 = zext i1 %277 to i8
  store i8 %278, ptr @PL_tainted, align 1, !tbaa !32
  br label %279

279:                                              ; preds = %276, %265
  %280 = call ptr @Perl_newSVsv(ptr noundef %266) #16
  %281 = call ptr @Perl_sv_2mortal(ptr noundef %280) #16
  %282 = call i32 @Perl_mg_copy(ptr noundef nonnull %0, ptr noundef %6, ptr noundef %281, i32 noundef -2) #16
  br label %287

283:                                              ; preds = %256
  %284 = load i64, ptr %9, align 8, !tbaa !14
  %285 = trunc i64 %284 to i32
  %286 = call i32 @Perl_mg_copy(ptr noundef nonnull %0, ptr noundef %6, ptr noundef %93, i32 noundef %285) #16
  br label %287

287:                                              ; preds = %283, %279
  %288 = phi ptr [ %281, %279 ], [ null, %283 ]
  br i1 %258, label %290, label %289

289:                                              ; preds = %287
  store i8 1, ptr @PL_tainted, align 1, !tbaa !32
  br label %290

290:                                              ; preds = %287, %289
  %291 = load i8, ptr %12, align 1, !tbaa !32, !range !35, !noundef !36
  %292 = icmp eq i8 %291, 0
  br i1 %292, label %293, label %297

293:                                              ; preds = %290
  %294 = and i32 %92, 256
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %299, label %296

296:                                              ; preds = %293
  call void @Perl_safesysfree(ptr noundef %93) #16
  br label %299

297:                                              ; preds = %253, %290
  %298 = phi ptr [ %288, %290 ], [ %52, %253 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #18
  br label %300

299:                                              ; preds = %296, %293
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #18
  br label %695

300:                                              ; preds = %297, %113, %250, %163, %99
  %301 = phi ptr [ %52, %163 ], [ %52, %250 ], [ %52, %113 ], [ %52, %99 ], [ %298, %297 ]
  %302 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %303 = load ptr, ptr %302, align 8, !tbaa !31
  %304 = icmp eq ptr %303, null
  br i1 %304, label %305, label %318

305:                                              ; preds = %300
  %306 = and i32 %5, 20
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %314, label %308

308:                                              ; preds = %305
  %309 = getelementptr inbounds %struct.xpvhv, ptr %100, i64 0, i32 3
  %310 = load i64, ptr %309, align 8, !tbaa !42
  %311 = shl i64 %310, 3
  %312 = add i64 %311, 8
  %313 = call ptr @Perl_safesyscalloc(i64 noundef %312, i64 noundef 1) #16
  store ptr %313, ptr %302, align 8, !tbaa !31
  br label %318

314:                                              ; preds = %305
  %315 = and i32 %92, 256
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %695, label %317

317:                                              ; preds = %314
  call void @Perl_safesysfree(ptr noundef %93) #16
  br label %695

318:                                              ; preds = %308, %300
  %319 = load i8, ptr %10, align 1, !tbaa !32, !range !35, !noundef !36
  %320 = icmp ne i8 %319, 0
  %321 = and i32 %92, 1024
  %322 = icmp eq i32 %321, 0
  %323 = select i1 %320, i1 %322, i1 false
  br i1 %323, label %324, label %338

324:                                              ; preds = %318
  %325 = call ptr @Perl_bytes_from_utf8(ptr noundef %93, ptr noundef nonnull %9, ptr noundef nonnull %10) #16
  %326 = load i8, ptr %10, align 1, !tbaa !32, !range !35, !noundef !36
  %327 = icmp eq i8 %326, 0
  %328 = or i32 %92, 1
  %329 = and i32 %92, -1026
  %330 = select i1 %327, i32 %329, i32 %328
  %331 = icmp eq ptr %325, %93
  br i1 %331, label %338, label %332

332:                                              ; preds = %324
  %333 = and i32 %330, 256
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %336, label %335

335:                                              ; preds = %332
  call void @Perl_safesysfree(ptr noundef %93) #16
  br label %336

336:                                              ; preds = %335, %332
  %337 = or i32 %330, 258
  br label %338

338:                                              ; preds = %324, %336, %318
  %339 = phi i32 [ %51, %318 ], [ 0, %336 ], [ %51, %324 ]
  %340 = phi i32 [ %92, %318 ], [ %337, %336 ], [ %330, %324 ]
  %341 = phi ptr [ %93, %318 ], [ %325, %336 ], [ %93, %324 ]
  %342 = icmp eq ptr %301, null
  br i1 %342, label %363, label %343

343:                                              ; preds = %338
  %344 = getelementptr inbounds %struct.sv, ptr %301, i64 0, i32 2
  %345 = load i32, ptr %344, align 4, !tbaa !26
  %346 = and i32 %345, 268435456
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %363, label %348

348:                                              ; preds = %343
  %349 = load ptr, ptr %301, align 8, !tbaa !28
  %350 = getelementptr inbounds %struct.xpv, ptr %349, i64 0, i32 3
  %351 = load i64, ptr %350, align 8, !tbaa !31
  %352 = icmp eq i64 %351, 0
  br i1 %352, label %353, label %363

353:                                              ; preds = %348
  %354 = load i32, ptr %16, align 4, !tbaa !16
  %355 = and i32 %354, 536870912
  %356 = icmp eq i32 %355, 0
  %357 = getelementptr inbounds %struct.sv, ptr %301, i64 0, i32 3
  %358 = load ptr, ptr %357, align 8, !tbaa !31
  %359 = getelementptr inbounds i8, ptr %358, i64 -8
  %360 = select i1 %356, ptr null, ptr %359
  %361 = getelementptr inbounds i8, ptr %358, i64 -8
  %362 = load i32, ptr %361, align 4, !tbaa !44
  br label %368

363:                                              ; preds = %348, %343, %338
  %364 = icmp eq i32 %339, 0
  br i1 %364, label %365, label %368

365:                                              ; preds = %363
  %366 = load i64, ptr %9, align 8, !tbaa !14
  %367 = call fastcc i32 @S_perl_hash_one_at_a_time_hard(ptr noundef %341, i64 noundef %366) #17
  br label %368

368:                                              ; preds = %363, %365, %353
  %369 = phi ptr [ %360, %353 ], [ null, %363 ], [ null, %365 ]
  %370 = phi i32 [ %362, %353 ], [ %339, %363 ], [ %367, %365 ]
  %371 = and i32 %340, 255
  %372 = load ptr, ptr %302, align 8, !tbaa !31
  %373 = load ptr, ptr %0, align 8, !tbaa !34
  %374 = getelementptr inbounds %struct.xpvhv, ptr %373, i64 0, i32 3
  %375 = load i64, ptr %374, align 8, !tbaa !42
  %376 = trunc i64 %375 to i32
  %377 = and i32 %370, %376
  %378 = zext i32 %377 to i64
  %379 = getelementptr inbounds ptr, ptr %372, i64 %378
  %380 = load ptr, ptr %379, align 8, !tbaa !5
  %381 = icmp eq ptr %380, null
  br i1 %381, label %519, label %382

382:                                              ; preds = %368
  %383 = icmp eq ptr %369, null
  br i1 %383, label %409, label %384

384:                                              ; preds = %382
  %385 = getelementptr inbounds %struct.hek, ptr %369, i64 0, i32 2
  %386 = getelementptr inbounds %struct.hek, ptr %369, i64 0, i32 1
  %387 = load i32, ptr %386, align 4, !tbaa !37
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds i8, ptr %385, i64 %388
  %390 = getelementptr inbounds i8, ptr %389, i64 1
  %391 = load i8, ptr %390, align 1, !tbaa !31
  br label %392

392:                                              ; preds = %384, %406
  %393 = phi ptr [ %380, %384 ], [ %407, %406 ]
  %394 = getelementptr inbounds %struct.he, ptr %393, i64 0, i32 1
  %395 = load ptr, ptr %394, align 8, !tbaa !9
  %396 = icmp eq ptr %395, %369
  br i1 %396, label %436, label %397

397:                                              ; preds = %392
  %398 = getelementptr inbounds %struct.hek, ptr %395, i64 0, i32 2
  %399 = getelementptr inbounds %struct.hek, ptr %395, i64 0, i32 1
  %400 = load i32, ptr %399, align 4, !tbaa !37
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds i8, ptr %398, i64 %401
  %403 = getelementptr inbounds i8, ptr %402, i64 1
  %404 = load i8, ptr %403, align 1, !tbaa !31
  %405 = icmp eq i8 %404, %391
  br i1 %405, label %406, label %409

406:                                              ; preds = %397
  %407 = load ptr, ptr %393, align 8, !tbaa !11
  %408 = icmp eq ptr %407, null
  br i1 %408, label %519, label %392, !llvm.loop !45

409:                                              ; preds = %397, %382
  %410 = load i64, ptr %9, align 8
  %411 = trunc i64 %410 to i32
  %412 = shl i64 %410, 32
  %413 = ashr exact i64 %412, 32
  br label %414

414:                                              ; preds = %409, %516
  %415 = phi ptr [ %380, %409 ], [ %517, %516 ]
  %416 = getelementptr inbounds %struct.he, ptr %415, i64 0, i32 1
  %417 = load ptr, ptr %416, align 8, !tbaa !9
  %418 = load i32, ptr %417, align 4, !tbaa !44
  %419 = icmp eq i32 %418, %370
  br i1 %419, label %420, label %516

420:                                              ; preds = %414
  %421 = getelementptr inbounds %struct.hek, ptr %417, i64 0, i32 1
  %422 = load i32, ptr %421, align 4, !tbaa !37
  %423 = icmp eq i32 %422, %411
  br i1 %423, label %424, label %516

424:                                              ; preds = %420
  %425 = getelementptr inbounds %struct.hek, ptr %417, i64 0, i32 2
  %426 = call i32 @bcmp(ptr nonnull %425, ptr %341, i64 %410)
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %428, label %516

428:                                              ; preds = %424
  %429 = getelementptr inbounds i8, ptr %425, i64 %413
  %430 = getelementptr inbounds i8, ptr %429, i64 1
  %431 = load i8, ptr %430, align 1, !tbaa !31
  %432 = zext i8 %431 to i32
  %433 = xor i32 %340, %432
  %434 = and i32 %433, 1
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %436, label %516

436:                                              ; preds = %392, %428
  %437 = phi i8 [ %431, %428 ], [ %391, %392 ]
  %438 = phi i32 [ %411, %428 ], [ %387, %392 ]
  %439 = phi ptr [ %417, %428 ], [ %369, %392 ]
  %440 = phi ptr [ %415, %428 ], [ %393, %392 ]
  %441 = and i32 %5, 20
  %442 = icmp eq i32 %441, 0
  br i1 %442, label %502, label %443

443:                                              ; preds = %436
  %444 = getelementptr inbounds %struct.he, ptr %440, i64 0, i32 1
  %445 = getelementptr inbounds %struct.hek, ptr %439, i64 0, i32 2
  %446 = sext i32 %438 to i64
  %447 = getelementptr inbounds i8, ptr %445, i64 %446
  %448 = getelementptr inbounds i8, ptr %447, i64 1
  %449 = trunc i32 %340 to i8
  %450 = icmp eq i8 %437, %449
  br i1 %450, label %478, label %451

451:                                              ; preds = %443
  %452 = load i32, ptr %16, align 4, !tbaa !16
  %453 = and i32 %452, 536870912
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %460, label %455

455:                                              ; preds = %451
  %456 = load i64, ptr %9, align 8, !tbaa !14
  %457 = trunc i64 %456 to i32
  %458 = call fastcc ptr @S_share_hek_flags(ptr noundef %341, i32 noundef %457, i32 noundef %370, i32 noundef %371) #17
  %459 = load ptr, ptr %444, align 8, !tbaa !9
  call void @Perl_unshare_hek(ptr noundef %459) #17
  store ptr %458, ptr %444, align 8, !tbaa !9
  br label %472

460:                                              ; preds = %451
  %461 = load ptr, ptr @PL_strtab, align 8, !tbaa !5
  %462 = icmp eq ptr %461, %0
  br i1 %462, label %463, label %471

463:                                              ; preds = %460
  %464 = and i32 %340, 256
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %467, label %466

466:                                              ; preds = %463
  call void @Perl_safesysfree(ptr noundef %341) #16
  br label %467

467:                                              ; preds = %466, %463
  %468 = and i32 %5, 16
  %469 = icmp eq i32 %468, 0
  %470 = select i1 %469, ptr @.str.2, ptr @.str.1
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @S_strtab_error, ptr noundef nonnull %470) #16
  br label %472

471:                                              ; preds = %460
  store i8 %449, ptr %448, align 1, !tbaa !31
  br label %472

472:                                              ; preds = %467, %471, %455
  %473 = and i32 %340, 247
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %478, label %475

475:                                              ; preds = %472
  %476 = load i32, ptr %16, align 4, !tbaa !16
  %477 = or i32 %476, -2147483648
  store i32 %477, ptr %16, align 4, !tbaa !16
  br label %478

478:                                              ; preds = %472, %475, %443
  %479 = getelementptr inbounds %struct.he, ptr %440, i64 0, i32 2
  %480 = load ptr, ptr %479, align 8, !tbaa !31
  %481 = icmp eq ptr %480, @PL_sv_placeholder
  br i1 %481, label %482, label %498

482:                                              ; preds = %478
  %483 = and i32 %5, 16
  %484 = icmp eq i32 %483, 0
  br i1 %484, label %491, label %485

485:                                              ; preds = %482
  %486 = load i32, ptr %16, align 4, !tbaa !16
  %487 = and i32 %486, 14680064
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %489, label %529

489:                                              ; preds = %485
  %490 = call ptr @Perl_newSV(i64 noundef 0) #16
  br label %493

491:                                              ; preds = %482
  %492 = icmp eq ptr %6, @PL_sv_placeholder
  br i1 %492, label %506, label %493

493:                                              ; preds = %491, %489
  %494 = phi ptr [ %490, %489 ], [ %6, %491 ]
  %495 = call ptr @Perl_hv_placeholders_p(ptr noundef nonnull %0) #17
  %496 = load i64, ptr %495, align 8, !tbaa !14
  %497 = add nsw i64 %496, -1
  store i64 %497, ptr %495, align 8, !tbaa !14
  br label %506

498:                                              ; preds = %478
  %499 = and i32 %5, 4
  %500 = icmp eq i32 %499, 0
  br i1 %500, label %508, label %501

501:                                              ; preds = %498
  call fastcc void @S_SvREFCNT_dec(ptr noundef %480) #17
  br label %506

502:                                              ; preds = %436
  %503 = getelementptr inbounds %struct.he, ptr %440, i64 0, i32 2
  %504 = load ptr, ptr %503, align 8, !tbaa !31
  %505 = icmp eq ptr %504, @PL_sv_placeholder
  br i1 %505, label %529, label %508

506:                                              ; preds = %491, %493, %501
  %507 = phi ptr [ %6, %501 ], [ @PL_sv_placeholder, %491 ], [ %494, %493 ]
  store ptr %507, ptr %479, align 8, !tbaa !31
  br label %508

508:                                              ; preds = %506, %502, %498
  %509 = and i32 %340, 256
  %510 = icmp eq i32 %509, 0
  br i1 %510, label %512, label %511

511:                                              ; preds = %508
  call void @Perl_safesysfree(ptr noundef %341) #16
  br label %512

512:                                              ; preds = %511, %508
  %513 = icmp eq i32 %13, 0
  %514 = getelementptr inbounds %struct.he, ptr %440, i64 0, i32 2
  %515 = select i1 %513, ptr %440, ptr %514
  br label %695

516:                                              ; preds = %428, %424, %420, %414
  %517 = load ptr, ptr %415, align 8, !tbaa !11
  %518 = icmp eq ptr %517, null
  br i1 %518, label %519, label %414, !llvm.loop !46

519:                                              ; preds = %406, %516, %368
  %520 = load i32, ptr %16, align 4, !tbaa !16
  %521 = and i32 %520, 134283264
  %522 = icmp ne i32 %521, 0
  %523 = and i32 %5, 8
  %524 = icmp eq i32 %523, 0
  %525 = and i1 %524, %522
  br i1 %525, label %526, label %529

526:                                              ; preds = %519
  %527 = load i64, ptr %9, align 8, !tbaa !14
  %528 = trunc i64 %527 to i32
  call fastcc void @S_hv_notallowed(i32 noundef %340, ptr noundef %341, i32 noundef %528, ptr noundef nonnull @.str.3) #17
  br label %529

529:                                              ; preds = %502, %485, %526, %519
  %530 = and i32 %5, 20
  %531 = icmp eq i32 %530, 0
  br i1 %531, label %532, label %536

532:                                              ; preds = %529
  %533 = and i32 %340, 256
  %534 = icmp eq i32 %533, 0
  br i1 %534, label %695, label %535

535:                                              ; preds = %532
  call void @Perl_safesysfree(ptr noundef %341) #16
  br label %695

536:                                              ; preds = %529
  %537 = and i32 %5, 16
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %553, label %539

539:                                              ; preds = %536
  %540 = and i32 %5, 128
  %541 = icmp eq i32 %540, 0
  br i1 %541, label %542, label %544

542:                                              ; preds = %539
  %543 = call ptr @Perl_newSV(i64 noundef 0) #16
  br label %544

544:                                              ; preds = %539, %542
  %545 = phi ptr [ %543, %542 ], [ null, %539 ]
  %546 = load i32, ptr %16, align 4, !tbaa !16
  %547 = and i32 %546, 14680064
  %548 = icmp eq i32 %547, 0
  br i1 %548, label %553, label %549

549:                                              ; preds = %544
  %550 = load i64, ptr %9, align 8, !tbaa !14
  %551 = or disjoint i32 %13, 5
  %552 = call ptr @Perl_hv_common(ptr noundef nonnull %0, ptr noundef %301, ptr noundef %341, i64 noundef %550, i32 noundef %340, i32 noundef %551, ptr noundef %545, i32 noundef %370) #17
  br label %695

553:                                              ; preds = %544, %536
  %554 = phi ptr [ %545, %544 ], [ %6, %536 ]
  %555 = load ptr, ptr %302, align 8, !tbaa !31
  %556 = icmp eq ptr %555, null
  br i1 %556, label %557, label %563

557:                                              ; preds = %553
  %558 = getelementptr inbounds %struct.xpvhv, ptr %100, i64 0, i32 3
  %559 = load i64, ptr %558, align 8, !tbaa !42
  %560 = shl i64 %559, 3
  %561 = add i64 %560, 8
  %562 = call ptr @Perl_safesyscalloc(i64 noundef %561, i64 noundef 1) #16
  store ptr %562, ptr %302, align 8, !tbaa !31
  br label %563

563:                                              ; preds = %557, %553
  %564 = phi ptr [ %562, %557 ], [ %555, %553 ]
  %565 = getelementptr inbounds %struct.xpvhv, ptr %100, i64 0, i32 3
  %566 = load i64, ptr %565, align 8, !tbaa !42
  %567 = trunc i64 %566 to i32
  %568 = and i32 %370, %567
  %569 = zext i32 %568 to i64
  %570 = getelementptr inbounds ptr, ptr %564, i64 %569
  %571 = call fastcc ptr @S_new_he() #17
  %572 = load i32, ptr %16, align 4, !tbaa !16
  %573 = and i32 %572, 536870912
  %574 = icmp eq i32 %573, 0
  br i1 %574, label %580, label %575

575:                                              ; preds = %563
  %576 = load i64, ptr %9, align 8, !tbaa !14
  %577 = trunc i64 %576 to i32
  %578 = call fastcc ptr @S_share_hek_flags(ptr noundef %341, i32 noundef %577, i32 noundef %370, i32 noundef %340) #17
  %579 = getelementptr inbounds %struct.he, ptr %571, i64 0, i32 1
  store ptr %578, ptr %579, align 8, !tbaa !9
  br label %594

580:                                              ; preds = %563
  %581 = load ptr, ptr @PL_strtab, align 8, !tbaa !5
  %582 = icmp eq ptr %581, %0
  br i1 %582, label %583, label %589

583:                                              ; preds = %580
  %584 = and i32 %340, 256
  %585 = icmp eq i32 %584, 0
  br i1 %585, label %587, label %586

586:                                              ; preds = %583
  call void @Perl_safesysfree(ptr noundef %341) #16
  br label %587

587:                                              ; preds = %586, %583
  %588 = select i1 %538, ptr @.str.2, ptr @.str.1
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @S_strtab_error, ptr noundef nonnull %588) #16
  br label %594

589:                                              ; preds = %580
  %590 = load i64, ptr %9, align 8, !tbaa !14
  %591 = trunc i64 %590 to i32
  %592 = call fastcc ptr @S_save_hek_flags(ptr noundef %341, i32 noundef %591, i32 noundef %370, i32 noundef %340) #17
  %593 = getelementptr inbounds %struct.he, ptr %571, i64 0, i32 1
  store ptr %592, ptr %593, align 8, !tbaa !9
  br label %594

594:                                              ; preds = %587, %589, %575
  %595 = getelementptr inbounds %struct.he, ptr %571, i64 0, i32 2
  store ptr %554, ptr %595, align 8, !tbaa !31
  %596 = load ptr, ptr %570, align 8, !tbaa !5
  %597 = icmp eq ptr %596, null
  br i1 %597, label %598, label %613

598:                                              ; preds = %594
  %599 = load i32, ptr %16, align 4, !tbaa !16
  %600 = and i32 %599, 33554432
  %601 = icmp eq i32 %600, 0
  br i1 %601, label %626, label %602

602:                                              ; preds = %598
  %603 = load ptr, ptr %302, align 8, !tbaa !31
  %604 = load ptr, ptr %0, align 8, !tbaa !34
  %605 = getelementptr inbounds %struct.xpvhv, ptr %604, i64 0, i32 3
  %606 = load i64, ptr %605, align 8, !tbaa !42
  %607 = getelementptr ptr, ptr %603, i64 %606
  %608 = getelementptr ptr, ptr %607, i64 7
  %609 = load i32, ptr %608, align 8, !tbaa !47
  %610 = icmp eq i32 %609, 0
  br i1 %610, label %626, label %611

611:                                              ; preds = %602
  %612 = add i32 %609, 1
  store i32 %612, ptr %608, align 8, !tbaa !47
  br label %626

613:                                              ; preds = %594
  %614 = load i8, ptr @PL_hash_rand_bits_enabled, align 1
  %615 = icmp eq i8 %614, 0
  br i1 %615, label %626, label %616

616:                                              ; preds = %613
  %617 = load i64, ptr @PL_hash_rand_bits, align 8, !tbaa !14
  %618 = add i64 %617, 1
  %619 = call i64 @llvm.fshl.i64(i64 %618, i64 %618, i64 1)
  store i64 %619, ptr @PL_hash_rand_bits, align 8, !tbaa !14
  %620 = and i64 %619, 1
  %621 = icmp eq i64 %620, 0
  br i1 %621, label %625, label %622

622:                                              ; preds = %616
  %623 = load ptr, ptr %596, align 8, !tbaa !11
  store ptr %623, ptr %571, align 8, !tbaa !11
  %624 = load ptr, ptr %570, align 8, !tbaa !5
  br label %627

625:                                              ; preds = %616
  store ptr %596, ptr %571, align 8, !tbaa !11
  br label %627

626:                                              ; preds = %598, %611, %602, %613
  store ptr %596, ptr %571, align 8, !tbaa !11
  br label %627

627:                                              ; preds = %622, %625, %626
  %628 = phi ptr [ %624, %622 ], [ %570, %625 ], [ %570, %626 ]
  store ptr %571, ptr %628, align 8, !tbaa !5
  %629 = load i32, ptr %16, align 4, !tbaa !16
  %630 = and i32 %629, 33554432
  %631 = icmp eq i32 %630, 0
  br i1 %631, label %655, label %632

632:                                              ; preds = %627
  %633 = load i8, ptr @PL_hash_rand_bits_enabled, align 1, !tbaa !31
  switch i8 %633, label %636 [
    i8 0, label %634
    i8 1, label %638
  ]

634:                                              ; preds = %632
  %635 = load i64, ptr @PL_hash_rand_bits, align 8, !tbaa !14
  br label %646

636:                                              ; preds = %632
  %637 = load i64, ptr @PL_hash_rand_bits, align 8, !tbaa !14
  br label %643

638:                                              ; preds = %632
  %639 = ptrtoint ptr %571 to i64
  %640 = add i64 %639, 1
  %641 = load i64, ptr @PL_hash_rand_bits, align 8, !tbaa !14
  %642 = add i64 %640, %641
  br label %643

643:                                              ; preds = %636, %638
  %644 = phi i64 [ %637, %636 ], [ %642, %638 ]
  %645 = call i64 @llvm.fshl.i64(i64 %644, i64 %644, i64 1)
  store i64 %645, ptr @PL_hash_rand_bits, align 8, !tbaa !14
  br label %646

646:                                              ; preds = %634, %643
  %647 = phi i64 [ %635, %634 ], [ %645, %643 ]
  %648 = trunc i64 %647 to i32
  %649 = load ptr, ptr %302, align 8, !tbaa !31
  %650 = load ptr, ptr %0, align 8, !tbaa !34
  %651 = getelementptr inbounds %struct.xpvhv, ptr %650, i64 0, i32 3
  %652 = load i64, ptr %651, align 8, !tbaa !42
  %653 = getelementptr ptr, ptr %649, i64 %652
  %654 = getelementptr ptr, ptr %653, i64 6
  store i32 %648, ptr %654, align 8, !tbaa !49
  br label %655

655:                                              ; preds = %646, %627
  %656 = icmp eq ptr %554, @PL_sv_placeholder
  br i1 %656, label %657, label %661

657:                                              ; preds = %655
  %658 = call ptr @Perl_hv_placeholders_p(ptr noundef nonnull %0) #17
  %659 = load i64, ptr %658, align 8, !tbaa !14
  %660 = add nsw i64 %659, 1
  store i64 %660, ptr %658, align 8, !tbaa !14
  br label %661

661:                                              ; preds = %657, %655
  %662 = and i32 %340, 247
  %663 = icmp eq i32 %662, 0
  br i1 %663, label %667, label %664

664:                                              ; preds = %661
  %665 = load i32, ptr %16, align 4, !tbaa !16
  %666 = or i32 %665, -2147483648
  store i32 %666, ptr %16, align 4, !tbaa !16
  br label %667

667:                                              ; preds = %664, %661
  %668 = getelementptr inbounds %struct.xpvhv, ptr %100, i64 0, i32 2
  %669 = load i64, ptr %668, align 8, !tbaa !50
  %670 = add i64 %669, 1
  store i64 %670, ptr %668, align 8, !tbaa !50
  %671 = load i64, ptr %565, align 8, !tbaa !42
  %672 = icmp ugt i64 %670, %671
  br i1 %672, label %673, label %692

673:                                              ; preds = %667
  %674 = add nuw i64 %671, 1
  %675 = load ptr, ptr %0, align 8, !tbaa !34
  %676 = getelementptr inbounds %struct.xpvmg, ptr %675, i64 0, i32 1
  %677 = load ptr, ptr %676, align 8, !tbaa !31
  %678 = icmp eq ptr %677, null
  br i1 %678, label %690, label %679

679:                                              ; preds = %673
  %680 = call i32 @Perl_hv_placeholders_get(ptr noundef nonnull %0) #17
  %681 = icmp eq i32 %680, 0
  br i1 %681, label %690, label %682

682:                                              ; preds = %679
  %683 = load i32, ptr %16, align 4, !tbaa !16
  %684 = and i32 %683, 134283264
  %685 = icmp eq i32 %684, 0
  br i1 %685, label %686, label %690

686:                                              ; preds = %682
  call fastcc void @S_clear_placeholders(ptr noundef nonnull %0, i32 noundef %680) #17
  %687 = load i64, ptr %668, align 8, !tbaa !50
  %688 = load i64, ptr %565, align 8, !tbaa !42
  %689 = icmp ugt i64 %687, %688
  br i1 %689, label %690, label %692

690:                                              ; preds = %679, %682, %673, %686
  %691 = shl i64 %674, 1
  call fastcc void @S_hsplit(ptr noundef nonnull %0, i64 noundef %674, i64 noundef %691) #17
  br label %692

692:                                              ; preds = %690, %686, %667
  %693 = icmp eq i32 %13, 0
  %694 = select i1 %693, ptr %571, ptr %595
  br label %695

695:                                              ; preds = %512, %692, %299, %532, %535, %314, %317, %249, %191, %247, %239, %223, %221, %214, %200, %202, %242, %152, %15, %8, %549, %96
  %696 = phi ptr [ %98, %96 ], [ %552, %549 ], [ null, %299 ], [ null, %8 ], [ null, %15 ], [ %154, %152 ], [ %0, %249 ], [ null, %191 ], [ null, %247 ], [ null, %239 ], [ null, %223 ], [ null, %221 ], [ null, %214 ], [ null, %200 ], [ null, %202 ], [ null, %242 ], [ null, %317 ], [ null, %314 ], [ null, %535 ], [ null, %532 ], [ %694, %692 ], [ %515, %512 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #18
  ret ptr %696
}

; Function Attrs: optsize
declare ptr @Perl_mg_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSVpvn_flags(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_magic_getuvar(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @S_hv_delete_common(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 {
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  store i64 %3, ptr %8, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #18
  %12 = trunc i32 %4 to i8
  %13 = and i8 %12, 1
  store i8 %13, ptr %9, align 1, !tbaa !32
  %14 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !16
  %16 = and i32 %15, 8388608
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %47, label %18

18:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #18
  call fastcc void @S_hv_magic_check(ptr noundef nonnull %0, ptr noundef nonnull %10, ptr noundef nonnull %11) #17
  %19 = load i8, ptr %10, align 1, !tbaa !32, !range !35, !noundef !36
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %44, label %21

21:                                               ; preds = %18
  %22 = and i32 %4, -257
  %23 = tail call ptr @Perl_hv_common(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %22, i32 noundef 17, ptr noundef null, i32 noundef %6) #17
  %24 = icmp eq ptr %23, null
  br i1 %24, label %44, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.he, ptr %23, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !31
  %28 = icmp eq ptr %27, null
  br i1 %28, label %44, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.sv, ptr %27, i64 0, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !26
  %32 = and i32 %31, 14680064
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = tail call i32 @Perl_mg_clear(ptr noundef nonnull %27) #16
  br label %36

36:                                               ; preds = %34, %29
  %37 = load i8, ptr %11, align 1, !tbaa !32, !range !35, !noundef !36
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = tail call ptr @Perl_mg_find(ptr noundef nonnull %27, i32 noundef 112) #16
  %41 = icmp eq ptr %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = tail call i32 @Perl_sv_unmagic(ptr noundef nonnull %27, i32 noundef 112) #16
  br label %45

44:                                               ; preds = %18, %36, %25, %21
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #18
  br label %47

45:                                               ; preds = %42, %39
  %46 = phi ptr [ %27, %42 ], [ null, %39 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #18
  br label %438

47:                                               ; preds = %44, %7
  %48 = load ptr, ptr %0, align 8, !tbaa !34
  %49 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !31
  %51 = icmp eq ptr %50, null
  br i1 %51, label %438, label %52

52:                                               ; preds = %47
  %53 = icmp ne i8 %13, 0
  %54 = and i32 %4, 1024
  %55 = icmp eq i32 %54, 0
  %56 = and i1 %55, %53
  br i1 %56, label %57, label %75

57:                                               ; preds = %52
  %58 = call ptr @Perl_bytes_from_utf8(ptr noundef %2, ptr noundef nonnull %8, ptr noundef nonnull %9) #16
  %59 = load i8, ptr %9, align 1, !tbaa !32, !range !35, !noundef !36
  %60 = icmp eq i8 %59, 0
  %61 = or i32 %4, 1
  %62 = and i32 %4, -1026
  %63 = select i1 %60, i32 %62, i32 %61
  %64 = icmp eq ptr %58, %2
  br i1 %64, label %71, label %65

65:                                               ; preds = %57
  %66 = and i32 %63, 256
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  call void @Perl_safesysfree(ptr noundef %2) #16
  br label %69

69:                                               ; preds = %68, %65
  %70 = or i32 %63, 258
  br label %71

71:                                               ; preds = %69, %57
  %72 = phi i32 [ %70, %69 ], [ %63, %57 ]
  %73 = load i32, ptr %14, align 4, !tbaa !26
  %74 = or i32 %73, -2147483648
  store i32 %74, ptr %14, align 4, !tbaa !26
  br label %75

75:                                               ; preds = %71, %52
  %76 = phi i32 [ %72, %71 ], [ %4, %52 ]
  %77 = phi ptr [ %58, %71 ], [ %2, %52 ]
  %78 = icmp eq ptr %1, null
  br i1 %78, label %99, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %81 = load i32, ptr %80, align 4, !tbaa !26
  %82 = and i32 %81, 268435456
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %99, label %84

84:                                               ; preds = %79
  %85 = load ptr, ptr %1, align 8, !tbaa !28
  %86 = getelementptr inbounds %struct.xpv, ptr %85, i64 0, i32 3
  %87 = load i64, ptr %86, align 8, !tbaa !31
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %84
  %90 = load i32, ptr %14, align 4, !tbaa !16
  %91 = and i32 %90, 536870912
  %92 = icmp eq i32 %91, 0
  %93 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !31
  %95 = getelementptr inbounds i8, ptr %94, i64 -8
  %96 = select i1 %92, ptr null, ptr %95
  %97 = getelementptr inbounds i8, ptr %94, i64 -8
  %98 = load i32, ptr %97, align 4, !tbaa !44
  br label %104

99:                                               ; preds = %84, %79, %75
  %100 = icmp eq i32 %6, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %99
  %102 = load i64, ptr %8, align 8, !tbaa !14
  %103 = call fastcc i32 @S_perl_hash_one_at_a_time_hard(ptr noundef %77, i64 noundef %102) #17
  br label %104

104:                                              ; preds = %99, %101, %89
  %105 = phi ptr [ %96, %89 ], [ null, %99 ], [ null, %101 ]
  %106 = phi i32 [ %98, %89 ], [ %6, %99 ], [ %103, %101 ]
  %107 = load ptr, ptr %49, align 8, !tbaa !31
  %108 = load ptr, ptr %0, align 8, !tbaa !34
  %109 = getelementptr inbounds %struct.xpvhv, ptr %108, i64 0, i32 3
  %110 = load i64, ptr %109, align 8, !tbaa !42
  %111 = trunc i64 %110 to i32
  %112 = and i32 %106, %111
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds ptr, ptr %107, i64 %113
  %115 = load ptr, ptr %114, align 8, !tbaa !5
  %116 = icmp eq ptr %115, null
  br i1 %116, label %427, label %117

117:                                              ; preds = %104
  %118 = icmp eq ptr %105, null
  br i1 %118, label %148, label %119

119:                                              ; preds = %117
  %120 = getelementptr inbounds %struct.hek, ptr %105, i64 0, i32 2
  %121 = getelementptr inbounds %struct.hek, ptr %105, i64 0, i32 1
  %122 = load i32, ptr %121, align 4, !tbaa !37
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, ptr %120, i64 %123
  %125 = getelementptr inbounds i8, ptr %124, i64 1
  %126 = load i8, ptr %125, align 1, !tbaa !31
  %127 = getelementptr inbounds %struct.he, ptr %115, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !9
  %129 = icmp eq ptr %128, %105
  br i1 %129, label %176, label %134

130:                                              ; preds = %145
  %131 = getelementptr inbounds %struct.he, ptr %146, i64 0, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !9
  %133 = icmp eq ptr %132, %105
  br i1 %133, label %176, label %134, !llvm.loop !51

134:                                              ; preds = %119, %130
  %135 = phi ptr [ %132, %130 ], [ %128, %119 ]
  %136 = phi ptr [ %146, %130 ], [ %115, %119 ]
  %137 = getelementptr inbounds %struct.hek, ptr %135, i64 0, i32 2
  %138 = getelementptr inbounds %struct.hek, ptr %135, i64 0, i32 1
  %139 = load i32, ptr %138, align 4, !tbaa !37
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, ptr %137, i64 %140
  %142 = getelementptr inbounds i8, ptr %141, i64 1
  %143 = load i8, ptr %142, align 1, !tbaa !31
  %144 = icmp eq i8 %143, %126
  br i1 %144, label %145, label %148

145:                                              ; preds = %134
  %146 = load ptr, ptr %136, align 8, !tbaa !5
  %147 = icmp eq ptr %146, null
  br i1 %147, label %427, label %130, !llvm.loop !51

148:                                              ; preds = %134, %117
  %149 = load i64, ptr %8, align 8
  %150 = trunc i64 %149 to i32
  %151 = shl i64 %149, 32
  %152 = ashr exact i64 %151, 32
  br label %153

153:                                              ; preds = %148, %424
  %154 = phi ptr [ %115, %148 ], [ %425, %424 ]
  %155 = phi ptr [ %114, %148 ], [ %154, %424 ]
  %156 = getelementptr inbounds %struct.he, ptr %154, i64 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !9
  %158 = load i32, ptr %157, align 4, !tbaa !44
  %159 = icmp eq i32 %158, %106
  br i1 %159, label %160, label %424

160:                                              ; preds = %153
  %161 = getelementptr inbounds %struct.hek, ptr %157, i64 0, i32 1
  %162 = load i32, ptr %161, align 4, !tbaa !37
  %163 = icmp eq i32 %162, %150
  br i1 %163, label %164, label %424

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.hek, ptr %157, i64 0, i32 2
  %166 = call i32 @bcmp(ptr nonnull %165, ptr %77, i64 %149)
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %424

168:                                              ; preds = %164
  %169 = getelementptr inbounds i8, ptr %165, i64 %152
  %170 = getelementptr inbounds i8, ptr %169, i64 1
  %171 = load i8, ptr %170, align 1, !tbaa !31
  %172 = zext i8 %171 to i32
  %173 = xor i32 %76, %172
  %174 = and i32 %173, 1
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %424

176:                                              ; preds = %130, %168, %119
  %177 = phi ptr [ %114, %119 ], [ %155, %168 ], [ %136, %130 ]
  %178 = phi ptr [ %115, %119 ], [ %154, %168 ], [ %146, %130 ]
  %179 = load ptr, ptr @PL_strtab, align 8, !tbaa !5
  %180 = icmp eq ptr %179, %0
  br i1 %180, label %181, label %186

181:                                              ; preds = %176
  %182 = and i32 %76, 256
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %181
  call void @Perl_safesysfree(ptr noundef %77) #16
  br label %185

185:                                              ; preds = %184, %181
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @S_strtab_error, ptr noundef nonnull @.str.16) #16
  br label %186

186:                                              ; preds = %185, %176
  %187 = getelementptr inbounds %struct.he, ptr %178, i64 0, i32 2
  %188 = load ptr, ptr %187, align 8, !tbaa !31
  %189 = icmp eq ptr %188, @PL_sv_placeholder
  br i1 %189, label %190, label %194

190:                                              ; preds = %186
  %191 = and i32 %76, 256
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %438, label %193

193:                                              ; preds = %190
  call void @Perl_safesysfree(ptr noundef %77) #16
  br label %438

194:                                              ; preds = %186
  %195 = load i32, ptr %14, align 4, !tbaa !16
  %196 = and i32 %195, 134283264
  %197 = icmp eq i32 %196, 0
  %198 = icmp eq ptr %188, null
  %199 = or i1 %198, %197
  br i1 %199, label %208, label %200

200:                                              ; preds = %194
  %201 = getelementptr inbounds %struct.sv, ptr %188, i64 0, i32 2
  %202 = load i32, ptr %201, align 4, !tbaa !26
  %203 = and i32 %202, 134283264
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %208, label %205

205:                                              ; preds = %200
  %206 = load i64, ptr %8, align 8, !tbaa !14
  %207 = trunc i64 %206 to i32
  call fastcc void @S_hv_notallowed(i32 noundef %76, ptr noundef %77, i32 noundef %207, ptr noundef nonnull @.str.5) #17
  br label %208

208:                                              ; preds = %205, %200, %194
  %209 = and i32 %76, 256
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %212, label %211

211:                                              ; preds = %208
  call void @Perl_safesysfree(ptr noundef %77) #16
  br label %212

212:                                              ; preds = %211, %208
  %213 = load ptr, ptr %187, align 8, !tbaa !31
  %214 = icmp eq ptr %213, null
  br i1 %214, label %317, label %215

215:                                              ; preds = %212
  %216 = load i32, ptr %14, align 4, !tbaa !16
  %217 = and i32 %216, 33554432
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %317, label %219

219:                                              ; preds = %215
  %220 = load ptr, ptr %49, align 8, !tbaa !31
  %221 = load ptr, ptr %0, align 8, !tbaa !34
  %222 = getelementptr inbounds %struct.xpvhv, ptr %221, i64 0, i32 3
  %223 = load i64, ptr %222, align 8, !tbaa !42
  %224 = getelementptr ptr, ptr %220, i64 %223
  %225 = getelementptr ptr, ptr %224, i64 1
  %226 = load ptr, ptr %225, align 8, !tbaa !31
  %227 = icmp eq ptr %226, null
  br i1 %227, label %317, label %228

228:                                              ; preds = %219
  %229 = getelementptr i8, ptr %224, i64 36
  %230 = load i32, ptr %229, align 4, !tbaa !52
  %231 = icmp eq i32 %230, -1
  br i1 %231, label %317, label %232

232:                                              ; preds = %228
  br i1 %78, label %246, label %233

233:                                              ; preds = %232
  %234 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %235 = load i32, ptr %234, align 4, !tbaa !26
  %236 = and i32 %235, 2098176
  %237 = icmp eq i32 %236, 1024
  br i1 %237, label %238, label %244

238:                                              ; preds = %233
  %239 = load ptr, ptr %1, align 8, !tbaa !28
  %240 = getelementptr inbounds %struct.xpv, ptr %239, i64 0, i32 2
  %241 = load i64, ptr %240, align 8, !tbaa !29
  store i64 %241, ptr %8, align 8, !tbaa !14
  %242 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %243 = load ptr, ptr %242, align 8, !tbaa !31
  br label %249

244:                                              ; preds = %233
  %245 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %1, ptr noundef nonnull %8, i32 noundef 2) #16
  br label %246

246:                                              ; preds = %232, %244
  %247 = phi ptr [ %245, %244 ], [ %77, %232 ]
  %248 = load i64, ptr %8, align 8, !tbaa !14
  br label %249

249:                                              ; preds = %246, %238
  %250 = phi i64 [ %248, %246 ], [ %241, %238 ]
  %251 = phi ptr [ %247, %246 ], [ %243, %238 ]
  %252 = icmp ugt i64 %250, 1
  br i1 %252, label %253, label %263

253:                                              ; preds = %249
  %254 = add i64 %250, -2
  %255 = getelementptr inbounds i8, ptr %251, i64 %254
  %256 = load i8, ptr %255, align 1, !tbaa !31
  %257 = icmp eq i8 %256, 58
  br i1 %257, label %258, label %311

258:                                              ; preds = %253
  %259 = add i64 %250, -1
  %260 = getelementptr inbounds i8, ptr %251, i64 %259
  %261 = load i8, ptr %260, align 1, !tbaa !31
  %262 = icmp eq i8 %261, 58
  br i1 %262, label %268, label %311

263:                                              ; preds = %249
  %264 = icmp eq i64 %250, 1
  br i1 %264, label %265, label %317

265:                                              ; preds = %263
  %266 = load i8, ptr %251, align 1, !tbaa !31
  %267 = icmp eq i8 %266, 58
  br i1 %267, label %276, label %317

268:                                              ; preds = %258
  %269 = icmp eq i64 %250, 6
  %270 = load ptr, ptr @PL_defstash, align 8
  %271 = icmp eq ptr %270, %0
  %272 = select i1 %269, i1 %271, i1 false
  br i1 %272, label %273, label %276

273:                                              ; preds = %268
  %274 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %251, ptr noundef nonnull dereferenceable(6) @.str.17, i64 6)
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %317, label %276

276:                                              ; preds = %265, %273, %268
  %277 = getelementptr inbounds %struct.gv, ptr %213, i64 0, i32 2
  %278 = load i32, ptr %277, align 4, !tbaa !53
  %279 = and i32 %278, 255
  %280 = icmp eq i32 %279, 9
  br i1 %280, label %281, label %311

281:                                              ; preds = %276
  %282 = getelementptr inbounds %struct.gv, ptr %213, i64 0, i32 3
  %283 = load ptr, ptr %282, align 8, !tbaa !31
  %284 = getelementptr inbounds %struct.gp, ptr %283, i64 0, i32 5
  %285 = load ptr, ptr %284, align 8, !tbaa !55
  %286 = icmp eq ptr %285, null
  br i1 %286, label %311, label %287

287:                                              ; preds = %281
  %288 = getelementptr inbounds %struct.hv, ptr %285, i64 0, i32 2
  %289 = load i32, ptr %288, align 4, !tbaa !16
  %290 = and i32 %289, 33554432
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %311, label %292

292:                                              ; preds = %287
  %293 = getelementptr inbounds %struct.hv, ptr %285, i64 0, i32 3
  %294 = load ptr, ptr %293, align 8, !tbaa !31
  %295 = load ptr, ptr %285, align 8, !tbaa !34
  %296 = getelementptr inbounds %struct.xpvhv, ptr %295, i64 0, i32 3
  %297 = load i64, ptr %296, align 8, !tbaa !42
  %298 = getelementptr ptr, ptr %294, i64 %297
  %299 = getelementptr ptr, ptr %298, i64 1
  %300 = load ptr, ptr %299, align 8, !tbaa !31
  %301 = icmp eq ptr %300, null
  br i1 %301, label %311, label %302

302:                                              ; preds = %292
  %303 = getelementptr i8, ptr %298, i64 36
  %304 = load i32, ptr %303, align 4, !tbaa !52
  %305 = icmp eq i32 %304, -1
  br i1 %305, label %311, label %306

306:                                              ; preds = %302
  %307 = call ptr @Perl_sv_2mortal(ptr noundef nonnull %213) #16
  %308 = getelementptr inbounds %struct.sv, ptr %307, i64 0, i32 1
  %309 = load i32, ptr %308, align 8, !tbaa !57
  %310 = add i32 %309, 1
  store i32 %310, ptr %308, align 8, !tbaa !57
  br label %317

311:                                              ; preds = %253, %258, %287, %292, %302, %281, %276
  %312 = phi ptr [ %285, %302 ], [ %285, %292 ], [ %285, %287 ], [ null, %281 ], [ null, %276 ], [ null, %258 ], [ null, %253 ]
  %313 = icmp eq i64 %250, 3
  br i1 %313, label %314, label %317

314:                                              ; preds = %311
  %315 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %251, ptr noundef nonnull dereferenceable(4) @.str.18, i64 noundef 3) #19
  %316 = icmp eq i32 %315, 0
  br label %317

317:                                              ; preds = %263, %265, %273, %314, %306, %311, %215, %219, %228, %212
  %318 = phi i1 [ false, %306 ], [ false, %311 ], [ false, %228 ], [ false, %219 ], [ false, %215 ], [ false, %212 ], [ %316, %314 ], [ false, %273 ], [ false, %265 ], [ false, %263 ]
  %319 = phi i1 [ true, %306 ], [ false, %311 ], [ false, %228 ], [ false, %219 ], [ false, %215 ], [ false, %212 ], [ false, %314 ], [ false, %273 ], [ false, %265 ], [ false, %263 ]
  %320 = phi ptr [ %213, %306 ], [ %213, %311 ], [ null, %228 ], [ null, %219 ], [ null, %215 ], [ null, %212 ], [ %213, %314 ], [ %213, %273 ], [ %213, %265 ], [ %213, %263 ]
  %321 = phi ptr [ %285, %306 ], [ %312, %311 ], [ null, %228 ], [ null, %219 ], [ null, %215 ], [ null, %212 ], [ %312, %314 ], [ null, %273 ], [ null, %265 ], [ null, %263 ]
  %322 = and i32 %5, 4
  %323 = icmp eq i32 %322, 0
  %324 = load ptr, ptr %187, align 8, !tbaa !31
  br i1 %323, label %325, label %327

325:                                              ; preds = %317
  %326 = call ptr @Perl_sv_2mortal(ptr noundef %324) #16
  br label %327

327:                                              ; preds = %317, %325
  %328 = phi ptr [ %326, %325 ], [ %324, %317 ]
  store ptr @PL_sv_placeholder, ptr %187, align 8, !tbaa !31
  %329 = icmp eq ptr %328, null
  br i1 %329, label %363, label %330

330:                                              ; preds = %327
  %331 = getelementptr inbounds %struct.sv, ptr %328, i64 0, i32 2
  %332 = load i32, ptr %331, align 4, !tbaa !26
  %333 = and i32 %332, 49407
  %334 = icmp eq i32 %333, 32777
  br i1 %334, label %335, label %363

335:                                              ; preds = %330
  %336 = getelementptr inbounds %struct.sv, ptr %328, i64 0, i32 3
  %337 = load ptr, ptr %336, align 8, !tbaa !31
  %338 = getelementptr inbounds %struct.gp, ptr %337, i64 0, i32 3
  %339 = load i32, ptr %338, align 8, !tbaa !58
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %363

341:                                              ; preds = %335
  %342 = getelementptr inbounds %struct.gp, ptr %337, i64 0, i32 2
  %343 = load ptr, ptr %342, align 8, !tbaa !59
  %344 = icmp eq ptr %343, null
  br i1 %344, label %363, label %345

345:                                              ; preds = %341
  %346 = load i32, ptr %14, align 4, !tbaa !16
  %347 = and i32 %346, 33554432
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %363, label %349

349:                                              ; preds = %345
  %350 = load ptr, ptr %49, align 8, !tbaa !31
  %351 = load ptr, ptr %0, align 8, !tbaa !34
  %352 = getelementptr inbounds %struct.xpvhv, ptr %351, i64 0, i32 3
  %353 = load i64, ptr %352, align 8, !tbaa !42
  %354 = getelementptr ptr, ptr %350, i64 %353
  %355 = getelementptr ptr, ptr %354, i64 1
  %356 = load ptr, ptr %355, align 8, !tbaa !31
  %357 = icmp eq ptr %356, null
  br i1 %357, label %363, label %358

358:                                              ; preds = %349
  %359 = getelementptr i8, ptr %354, i64 36
  %360 = load i32, ptr %359, align 4, !tbaa !52
  %361 = icmp eq i32 %360, -1
  br i1 %361, label %363, label %362

362:                                              ; preds = %358
  call void @Perl_mro_method_changed_in(ptr noundef nonnull %0) #16
  br label %363

363:                                              ; preds = %330, %341, %362, %335, %358, %349, %345, %327
  %364 = load i32, ptr %14, align 4, !tbaa !16
  %365 = and i32 %364, 134283264
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %371, label %367

367:                                              ; preds = %363
  %368 = call ptr @Perl_hv_placeholders_p(ptr noundef nonnull %0) #17
  %369 = load i64, ptr %368, align 8, !tbaa !14
  %370 = add nsw i64 %369, 1
  store i64 %370, ptr %368, align 8, !tbaa !14
  br label %417

371:                                              ; preds = %363
  %372 = load ptr, ptr %178, align 8, !tbaa !11
  store ptr %372, ptr %177, align 8, !tbaa !5
  %373 = load ptr, ptr %114, align 8, !tbaa !5
  %374 = icmp ne ptr %373, null
  %375 = and i32 %364, 33554432
  %376 = icmp eq i32 %375, 0
  %377 = or i1 %376, %374
  br i1 %377, label %389, label %378

378:                                              ; preds = %371
  %379 = load ptr, ptr %49, align 8, !tbaa !31
  %380 = load ptr, ptr %0, align 8, !tbaa !34
  %381 = getelementptr inbounds %struct.xpvhv, ptr %380, i64 0, i32 3
  %382 = load i64, ptr %381, align 8, !tbaa !42
  %383 = getelementptr ptr, ptr %379, i64 %382
  %384 = getelementptr ptr, ptr %383, i64 7
  %385 = load i32, ptr %384, align 8, !tbaa !47
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %390, label %387

387:                                              ; preds = %378
  %388 = add i32 %385, -1
  store i32 %388, ptr %384, align 8, !tbaa !47
  br label %390

389:                                              ; preds = %371
  br i1 %376, label %408, label %390

390:                                              ; preds = %387, %378, %389
  %391 = load ptr, ptr %49, align 8, !tbaa !31
  %392 = load ptr, ptr %0, align 8, !tbaa !34
  %393 = getelementptr inbounds %struct.xpvhv, ptr %392, i64 0, i32 3
  %394 = load i64, ptr %393, align 8, !tbaa !42
  %395 = getelementptr ptr, ptr %391, i64 %394
  %396 = getelementptr ptr, ptr %395, i64 3
  %397 = load ptr, ptr %396, align 8, !tbaa !60
  %398 = icmp eq ptr %178, %397
  br i1 %398, label %399, label %401

399:                                              ; preds = %390
  %400 = or i32 %364, 1073741824
  store i32 %400, ptr %14, align 4, !tbaa !16
  br label %409

401:                                              ; preds = %390
  %402 = and i32 %364, 1107296256
  %403 = icmp eq i32 %402, 1107296256
  br i1 %403, label %404, label %408

404:                                              ; preds = %401
  %405 = load ptr, ptr %397, align 8, !tbaa !11
  %406 = icmp eq ptr %178, %405
  br i1 %406, label %407, label %408

407:                                              ; preds = %404
  store ptr %372, ptr %397, align 8, !tbaa !11
  br label %408

408:                                              ; preds = %389, %407, %404, %401
  call void @Perl_hv_free_ent(ptr noundef nonnull %0, ptr noundef nonnull %178) #17
  br label %409

409:                                              ; preds = %408, %399
  %410 = getelementptr inbounds %struct.xpvhv, ptr %48, i64 0, i32 2
  %411 = load i64, ptr %410, align 8, !tbaa !50
  %412 = add i64 %411, -1
  store i64 %412, ptr %410, align 8, !tbaa !50
  %413 = icmp eq i64 %412, 0
  br i1 %413, label %414, label %417

414:                                              ; preds = %409
  %415 = load i32, ptr %14, align 4, !tbaa !16
  %416 = and i32 %415, 2147483647
  store i32 %416, ptr %14, align 4, !tbaa !16
  br label %417

417:                                              ; preds = %409, %414, %367
  br i1 %323, label %419, label %418

418:                                              ; preds = %417
  call fastcc void @S_SvREFCNT_dec(ptr noundef %328) #17
  br label %419

419:                                              ; preds = %418, %417
  %420 = phi ptr [ null, %418 ], [ %328, %417 ]
  br i1 %318, label %421, label %422

421:                                              ; preds = %419
  call void @Perl_mro_isa_changed_in(ptr noundef nonnull %0) #16
  br label %438

422:                                              ; preds = %419
  br i1 %319, label %423, label %438

423:                                              ; preds = %422
  call void @Perl_mro_package_moved(ptr noundef null, ptr noundef %321, ptr noundef %320, i32 noundef 1) #16
  br label %438

424:                                              ; preds = %168, %164, %160, %153
  %425 = load ptr, ptr %154, align 8, !tbaa !5
  %426 = icmp eq ptr %425, null
  br i1 %426, label %427, label %153, !llvm.loop !61

427:                                              ; preds = %145, %424, %104
  %428 = load i32, ptr %14, align 4, !tbaa !16
  %429 = and i32 %428, 134283264
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %434, label %431

431:                                              ; preds = %427
  %432 = load i64, ptr %8, align 8, !tbaa !14
  %433 = trunc i64 %432 to i32
  call fastcc void @S_hv_notallowed(i32 noundef %76, ptr noundef %77, i32 noundef %433, ptr noundef nonnull @.str.19) #17
  br label %434

434:                                              ; preds = %431, %427
  %435 = and i32 %76, 256
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %438, label %437

437:                                              ; preds = %434
  call void @Perl_safesysfree(ptr noundef %77) #16
  br label %438

438:                                              ; preds = %45, %434, %437, %421, %423, %422, %190, %193, %47
  %439 = phi ptr [ %46, %45 ], [ null, %47 ], [ null, %193 ], [ null, %190 ], [ %420, %422 ], [ %420, %423 ], [ %420, %421 ], [ null, %437 ], [ null, %434 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #18
  ret ptr %439
}

; Function Attrs: optsize
declare ptr @Perl_newSVsv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_newmortal() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_mg_copy(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @S_new_he() unnamed_addr #0 {
  %1 = load ptr, ptr @PL_body_roots, align 16, !tbaa !5
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = tail call ptr @Perl_more_bodies(i32 noundef 0, i64 noundef 24, i64 noundef 4080) #16
  %5 = load ptr, ptr @PL_body_roots, align 16, !tbaa !5
  br label %6

6:                                                ; preds = %3, %0
  %7 = phi ptr [ %5, %3 ], [ %1, %0 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !11
  store ptr %8, ptr @PL_body_roots, align 16, !tbaa !5
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @Perl_safesysmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_upgrade(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_magic_existspack(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i1 @Perl_sv_2bool_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @S_hv_magic_check(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #3 {
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.xpvmg, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !31
  store i8 0, ptr %1, align 1, !tbaa !32
  store i8 1, ptr %2, align 1, !tbaa !32
  %7 = icmp eq ptr %6, null
  br i1 %7, label %23, label %8

8:                                                ; preds = %3, %20
  %9 = phi ptr [ %21, %20 ], [ %6, %3 ]
  %10 = getelementptr inbounds %struct.magic, ptr %9, i64 0, i32 3
  %11 = load i8, ptr %10, align 2, !tbaa !62
  %12 = zext i8 %11 to i64
  %13 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !63
  %15 = and i32 %14, 16400
  %16 = icmp eq i32 %15, 16400
  br i1 %16, label %17, label %20

17:                                               ; preds = %8
  store i8 1, ptr %1, align 1, !tbaa !32
  %18 = icmp eq i8 %11, 80
  br i1 %18, label %19, label %20

19:                                               ; preds = %17
  store i8 0, ptr %2, align 1, !tbaa !32
  br label %23

20:                                               ; preds = %17, %8
  %21 = load ptr, ptr %9, align 8, !tbaa !64
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %8, !llvm.loop !65

23:                                               ; preds = %20, %3, %19
  ret void
}

; Function Attrs: optsize
declare zeroext i1 @Perl_sv_tainted(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_safesyscalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_bytes_from_utf8(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @S_perl_hash_one_at_a_time_hard(ptr noundef readonly %0, i64 noundef %1) unnamed_addr #4 {
  %3 = getelementptr inbounds i8, ptr %0, i64 %1
  %4 = trunc i64 %1 to i32
  %5 = add i32 %4, 544173908
  %6 = icmp sgt i64 %1, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %2, %7
  %8 = phi i32 [ %16, %7 ], [ %5, %2 ]
  %9 = phi ptr [ %13, %7 ], [ %0, %2 ]
  %10 = mul i32 %8, 1025
  %11 = lshr i32 %10, 6
  %12 = xor i32 %11, %10
  %13 = getelementptr inbounds i8, ptr %9, i64 1
  %14 = load i8, ptr %9, align 1, !tbaa !31
  %15 = zext i8 %14 to i32
  %16 = add i32 %12, %15
  %17 = icmp ult ptr %13, %3
  br i1 %17, label %7, label %18, !llvm.loop !66

18:                                               ; preds = %7, %2
  %19 = phi i32 [ %5, %2 ], [ %16, %7 ]
  %20 = mul i32 %19, 1025
  %21 = lshr i32 %20, 6
  %22 = xor i32 %21, %20
  %23 = mul i32 %22, 1025
  %24 = add i32 %23, 73800
  %25 = lshr i32 %24, 6
  %26 = xor i32 %25, %24
  %27 = mul i32 %26, 1025
  %28 = add i32 %27, 113775
  %29 = lshr i32 %28, 6
  %30 = xor i32 %29, %28
  %31 = mul i32 %30, 1025
  %32 = add i32 %31, 118900
  %33 = lshr i32 %32, 6
  %34 = xor i32 %33, %32
  %35 = mul i32 %34, 1025
  %36 = add i32 %35, 32800
  %37 = lshr i32 %36, 6
  %38 = xor i32 %37, %36
  %39 = mul i32 %38, 9
  %40 = lshr i32 %39, 11
  %41 = xor i32 %40, %39
  %42 = mul i32 %41, 32769
  ret i32 %42
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @S_share_hek_flags(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr @PL_strtab, align 8, !tbaa !5
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.xpvhv, ptr %6, i64 0, i32 3
  %8 = load i64, ptr %7, align 8, !tbaa !42
  %9 = trunc i64 %8 to i32
  %10 = and i32 %9, %2
  %11 = getelementptr inbounds %struct.hv, ptr %5, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !31
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !5
  %16 = icmp eq ptr %15, null
  %17 = sext i32 %1 to i64
  %18 = trunc i32 %3 to i8
  br i1 %16, label %43, label %19

19:                                               ; preds = %4, %40
  %20 = phi ptr [ %41, %40 ], [ %15, %4 ]
  %21 = getelementptr inbounds %struct.he, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !9
  %23 = load i32, ptr %22, align 4, !tbaa !44
  %24 = icmp eq i32 %23, %2
  br i1 %24, label %25, label %40

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.hek, ptr %22, i64 0, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !37
  %28 = icmp eq i32 %27, %1
  br i1 %28, label %29, label %40

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.hek, ptr %22, i64 0, i32 2
  %31 = icmp eq ptr %30, %0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = tail call i32 @bcmp(ptr nonnull %30, ptr %0, i64 %17)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32, %29
  %36 = getelementptr inbounds i8, ptr %30, i64 %17
  %37 = getelementptr inbounds i8, ptr %36, i64 1
  %38 = load i8, ptr %37, align 1, !tbaa !31
  %39 = icmp eq i8 %38, %18
  br i1 %39, label %64, label %40

40:                                               ; preds = %35, %32, %25, %19
  %41 = load ptr, ptr %20, align 8, !tbaa !5
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %19, !llvm.loop !67

43:                                               ; preds = %40, %4
  %44 = add nsw i64 %17, 34
  %45 = tail call ptr @Perl_safesysmalloc(i64 noundef %44) #16
  %46 = getelementptr inbounds %struct.shared_he, ptr %45, i64 0, i32 1
  %47 = getelementptr inbounds %struct.shared_he, ptr %45, i64 0, i32 1, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %47, ptr align 1 %0, i64 %17, i1 false)
  %48 = getelementptr inbounds %struct.shared_he, ptr %45, i64 0, i32 1, i32 2, i64 %17
  store i8 0, ptr %48, align 1, !tbaa !31
  %49 = getelementptr inbounds %struct.shared_he, ptr %45, i64 0, i32 1, i32 1
  store i32 %1, ptr %49, align 4, !tbaa !37
  store i32 %2, ptr %46, align 4, !tbaa !44
  %50 = getelementptr inbounds i8, ptr %47, i64 %17
  %51 = getelementptr inbounds i8, ptr %50, i64 1
  store i8 %18, ptr %51, align 1, !tbaa !31
  %52 = getelementptr inbounds %struct.he, ptr %45, i64 0, i32 1
  store ptr %46, ptr %52, align 8, !tbaa !9
  %53 = getelementptr inbounds %struct.he, ptr %45, i64 0, i32 2
  store i64 0, ptr %53, align 8, !tbaa !31
  store ptr %15, ptr %45, align 8, !tbaa !11
  store ptr %45, ptr %14, align 8, !tbaa !5
  %54 = getelementptr inbounds %struct.xpvhv, ptr %6, i64 0, i32 2
  %55 = load i64, ptr %54, align 8, !tbaa !50
  %56 = add i64 %55, 1
  store i64 %56, ptr %54, align 8, !tbaa !50
  br i1 %16, label %64, label %57

57:                                               ; preds = %43
  %58 = load i64, ptr %7, align 8, !tbaa !42
  %59 = icmp ugt i64 %56, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = add nuw i64 %58, 1
  %62 = load ptr, ptr @PL_strtab, align 8, !tbaa !5
  %63 = shl i64 %61, 1
  tail call fastcc void @S_hsplit(ptr noundef %62, i64 noundef %61, i64 noundef %63) #17
  br label %64

64:                                               ; preds = %35, %43, %60, %57
  %65 = phi ptr [ %45, %57 ], [ %45, %60 ], [ %45, %43 ], [ %20, %35 ]
  %66 = getelementptr inbounds %struct.he, ptr %65, i64 0, i32 2
  %67 = load i64, ptr %66, align 8, !tbaa !31
  %68 = add i64 %67, 1
  store i64 %68, ptr %66, align 8, !tbaa !31
  %69 = and i32 %3, 256
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %64
  tail call void @Perl_safesysfree(ptr noundef %0) #16
  br label %72

72:                                               ; preds = %71, %64
  %73 = getelementptr inbounds %struct.he, ptr %65, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !9
  ret ptr %74
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_unshare_hek(ptr noundef %0) local_unnamed_addr #0 {
  tail call fastcc void @S_unshare_hek_or_pvn(ptr noundef %0, ptr noundef null, i32 noundef 0, i32 noundef 0) #17
  ret void
}

; Function Attrs: optsize
declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSV(i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local nonnull ptr @Perl_hv_placeholders_p(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @Perl_mg_find(ptr noundef %0, i32 noundef 37) #16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %9

4:                                                ; preds = %1
  %5 = tail call ptr @Perl_sv_magicext(ptr noundef %0, ptr noundef null, i32 noundef 37, ptr noundef null, ptr noundef null, i32 noundef 0) #16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.8) #16
  br label %9

9:                                                ; preds = %4, %7, %1
  %10 = phi ptr [ %2, %1 ], [ %5, %4 ], [ null, %7 ]
  %11 = getelementptr inbounds %struct.magic, ptr %10, i64 0, i32 5
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_SvREFCNT_dec(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !57
  %6 = icmp ugt i32 %5, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = add i32 %5, -1
  store i32 %8, ptr %4, align 8, !tbaa !57
  br label %10

9:                                                ; preds = %3
  tail call void @Perl_sv_free2(ptr noundef nonnull %0, i32 noundef %5) #16
  br label %10

10:                                               ; preds = %7, %9, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_hv_notallowed(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = tail call ptr @Perl_sv_newmortal() #16
  %6 = and i32 %0, 256
  %7 = icmp eq i32 %6, 0
  %8 = sext i32 %2 to i64
  br i1 %7, label %9, label %10

9:                                                ; preds = %4
  tail call void @Perl_sv_setpvn(ptr noundef %5, ptr noundef %1, i64 noundef %8) #16
  br label %11

10:                                               ; preds = %4
  tail call void @Perl_sv_usepvn_flags(ptr noundef %5, ptr noundef %1, i64 noundef %8, i32 noundef 0) #16
  br label %11

11:                                               ; preds = %10, %9
  %12 = and i32 %0, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.sv, ptr %5, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !26
  %17 = or i32 %16, 536870912
  store i32 %17, ptr %15, align 4, !tbaa !26
  br label %18

18:                                               ; preds = %14, %11
  tail call void (ptr, ...) @Perl_croak(ptr noundef %3, ptr noundef %5) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @S_save_hek_flags(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = sext i32 %1 to i64
  %6 = add nsw i64 %5, 10
  %7 = tail call ptr @Perl_safesysmalloc(i64 noundef %6) #16
  %8 = getelementptr inbounds %struct.hek, ptr %7, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %8, ptr align 1 %0, i64 %5, i1 false)
  %9 = getelementptr inbounds %struct.hek, ptr %7, i64 0, i32 2, i64 %5
  store i8 0, ptr %9, align 1, !tbaa !31
  %10 = getelementptr inbounds %struct.hek, ptr %7, i64 0, i32 1
  store i32 %1, ptr %10, align 4, !tbaa !37
  store i32 %2, ptr %7, align 4, !tbaa !44
  %11 = trunc i32 %3 to i8
  %12 = or i8 %11, 8
  %13 = getelementptr inbounds i8, ptr %8, i64 %5
  %14 = getelementptr inbounds i8, ptr %13, i64 1
  store i8 %12, ptr %14, align 1, !tbaa !31
  %15 = and i32 %3, 256
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  tail call void @Perl_safesysfree(ptr noundef %0) #16
  br label %18

18:                                               ; preds = %17, %4
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Perl_hv_placeholders_get(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @Perl_mg_find(ptr noundef %0, i32 noundef 37) #16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.magic, ptr %2, i64 0, i32 5
  %6 = load i64, ptr %5, align 8, !tbaa !68
  %7 = trunc i64 %6 to i32
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi i32 [ %7, %4 ], [ 0, %1 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_clear_placeholders(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.xpvhv, ptr %3, i64 0, i32 3
  %5 = load i64, ptr %4, align 8, !tbaa !42
  %6 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %8 = shl i64 %5, 32
  %9 = ashr exact i64 %8, 32
  br label %10

10:                                               ; preds = %76, %2
  %11 = phi i64 [ %78, %76 ], [ %9, %2 ]
  %12 = phi i32 [ %77, %76 ], [ %1, %2 ]
  %13 = load ptr, ptr %6, align 8, !tbaa !31
  %14 = getelementptr inbounds ptr, ptr %13, i64 %11
  %15 = load ptr, ptr %14, align 8, !tbaa !5
  %16 = icmp eq ptr %15, null
  br i1 %16, label %76, label %17

17:                                               ; preds = %10, %71
  %18 = phi ptr [ %74, %71 ], [ %15, %10 ]
  %19 = phi i32 [ %73, %71 ], [ %12, %10 ]
  %20 = phi ptr [ %72, %71 ], [ %14, %10 ]
  %21 = getelementptr inbounds %struct.he, ptr %18, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !31
  %23 = icmp eq ptr %22, @PL_sv_placeholder
  br i1 %23, label %24, label %71

24:                                               ; preds = %17
  %25 = load ptr, ptr %18, align 8, !tbaa !11
  store ptr %25, ptr %20, align 8, !tbaa !5
  %26 = load i32, ptr %7, align 4, !tbaa !16
  %27 = and i32 %26, 33554432
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %47, label %29

29:                                               ; preds = %24
  %30 = load ptr, ptr %6, align 8, !tbaa !31
  %31 = load ptr, ptr %0, align 8, !tbaa !34
  %32 = getelementptr inbounds %struct.xpvhv, ptr %31, i64 0, i32 3
  %33 = load i64, ptr %32, align 8, !tbaa !42
  %34 = getelementptr ptr, ptr %30, i64 %33
  %35 = getelementptr ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8, !tbaa !60
  %37 = icmp eq ptr %18, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = or i32 %26, 1073741824
  store i32 %39, ptr %7, align 4, !tbaa !16
  br label %48

40:                                               ; preds = %29
  %41 = and i32 %26, 1107296256
  %42 = icmp eq i32 %41, 1107296256
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load ptr, ptr %36, align 8, !tbaa !11
  %45 = icmp eq ptr %18, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store ptr %25, ptr %36, align 8, !tbaa !11
  br label %47

47:                                               ; preds = %24, %46, %43, %40
  tail call void @Perl_hv_free_ent(ptr noundef nonnull %0, ptr noundef nonnull %18) #17
  br label %48

48:                                               ; preds = %47, %38
  %49 = add i32 %19, -1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %48
  %52 = load ptr, ptr %0, align 8, !tbaa !34
  %53 = getelementptr inbounds %struct.xpvmg, ptr %52, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !31
  %55 = icmp eq ptr %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %51
  %57 = tail call i32 @Perl_hv_placeholders_get(ptr noundef nonnull %0) #17
  %58 = sext i32 %57 to i64
  %59 = load ptr, ptr %0, align 8, !tbaa !34
  br label %60

60:                                               ; preds = %51, %56
  %61 = phi ptr [ %59, %56 ], [ %52, %51 ]
  %62 = phi i64 [ %58, %56 ], [ 0, %51 ]
  %63 = getelementptr inbounds %struct.xpvhv, ptr %61, i64 0, i32 2
  %64 = load i64, ptr %63, align 8, !tbaa !50
  %65 = sub i64 %64, %62
  store i64 %65, ptr %63, align 8, !tbaa !50
  %66 = icmp eq i64 %65, %62
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load i32, ptr %7, align 4, !tbaa !16
  %69 = and i32 %68, 2147483647
  store i32 %69, ptr %7, align 4, !tbaa !16
  br label %70

70:                                               ; preds = %60, %67
  tail call void @Perl_hv_placeholders_set(ptr noundef nonnull %0, i32 noundef 0) #17
  br label %80

71:                                               ; preds = %17, %48
  %72 = phi ptr [ %20, %48 ], [ %18, %17 ]
  %73 = phi i32 [ %49, %48 ], [ %19, %17 ]
  %74 = load ptr, ptr %72, align 8, !tbaa !5
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %17, !llvm.loop !69

76:                                               ; preds = %71, %10
  %77 = phi i32 [ %12, %10 ], [ %73, %71 ]
  %78 = add nsw i64 %11, -1
  %79 = icmp sgt i64 %11, 0
  br i1 %79, label %10, label %80, !llvm.loop !70

80:                                               ; preds = %76, %70
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_hsplit(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !31
  %6 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !16
  %8 = and i32 %7, 33554432
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  %11 = load ptr, ptr @PL_strtab, align 8, !tbaa !5
  %12 = freeze ptr %11
  %13 = icmp ne ptr %12, %0
  %14 = icmp ugt i64 %2, 511
  %15 = and i1 %14, %13
  %16 = select i1 %15, i64 56, i64 0
  br label %17

17:                                               ; preds = %3, %10
  %18 = phi i1 [ %15, %10 ], [ true, %3 ]
  %19 = phi i64 [ %16, %10 ], [ 56, %3 ]
  store i8 1, ptr @PL_nomemok, align 1
  %20 = shl i64 %2, 3
  %21 = add i64 %19, %20
  %22 = tail call ptr @Perl_safesysrealloc(ptr noundef %5, i64 noundef %21) #16
  store i8 0, ptr @PL_nomemok, align 1, !tbaa !32
  %23 = icmp eq ptr %22, null
  br i1 %23, label %128, label %24

24:                                               ; preds = %17
  %25 = load i8, ptr @PL_hash_rand_bits_enabled, align 1, !tbaa !31
  switch i8 %25, label %26 [
    i8 0, label %37
    i8 1, label %28
  ]

26:                                               ; preds = %24
  %27 = load i64, ptr @PL_hash_rand_bits, align 8, !tbaa !14
  br label %34

28:                                               ; preds = %24
  %29 = ptrtoint ptr %22 to i64
  %30 = tail call fastcc i32 @S_ptr_hash(i64 noundef %29) #17
  %31 = zext i32 %30 to i64
  %32 = load i64, ptr @PL_hash_rand_bits, align 8, !tbaa !14
  %33 = add i64 %32, %31
  br label %34

34:                                               ; preds = %26, %28
  %35 = phi i64 [ %27, %26 ], [ %33, %28 ]
  %36 = tail call i64 @llvm.fshl.i64(i64 %35, i64 %35, i64 1)
  store i64 %36, ptr @PL_hash_rand_bits, align 8, !tbaa !14
  br label %37

37:                                               ; preds = %24, %34
  store ptr %22, ptr %4, align 8, !tbaa !31
  %38 = add i64 %2, -1
  %39 = load ptr, ptr %0, align 8, !tbaa !34
  %40 = getelementptr inbounds %struct.xpvhv, ptr %39, i64 0, i32 3
  store i64 %38, ptr %40, align 8, !tbaa !42
  br i1 %18, label %41, label %60

41:                                               ; preds = %37
  %42 = getelementptr inbounds i8, ptr %22, i64 %20
  %43 = load i32, ptr %6, align 4, !tbaa !16
  %44 = and i32 %43, 33554432
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %41
  %47 = shl i64 %1, 3
  %48 = getelementptr inbounds i8, ptr %22, i64 %47
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %42, ptr noundef nonnull align 1 dereferenceable(56) %48, i64 56, i1 false)
  %49 = load i64, ptr @PL_hash_rand_bits, align 8, !tbaa !14
  %50 = trunc i64 %49 to i32
  %51 = getelementptr inbounds %struct.xpvhv_aux, ptr %42, i64 0, i32 6
  store i32 %50, ptr %51, align 8, !tbaa !49
  %52 = getelementptr inbounds %struct.xpvhv_aux, ptr %42, i64 0, i32 8
  store i32 0, ptr %52, align 8, !tbaa !47
  br label %60

53:                                               ; preds = %41
  %54 = load i64, ptr @PL_hash_rand_bits, align 8, !tbaa !14
  %55 = trunc i64 %54 to i32
  %56 = getelementptr inbounds %struct.xpvhv_aux, ptr %42, i64 0, i32 6
  store i32 %55, ptr %56, align 8, !tbaa !49
  %57 = tail call fastcc ptr @S_hv_auxinit_internal(ptr noundef nonnull %42) #17
  %58 = load i32, ptr %6, align 4, !tbaa !16
  %59 = or i32 %58, 33554432
  store i32 %59, ptr %6, align 4, !tbaa !16
  br label %60

60:                                               ; preds = %46, %53, %37
  %61 = shl i64 %1, 3
  %62 = getelementptr inbounds i8, ptr %22, i64 %61
  %63 = sub i64 %2, %1
  %64 = shl i64 %63, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %62, i8 0, i64 %64, i1 false)
  %65 = load ptr, ptr %0, align 8, !tbaa !34
  %66 = getelementptr inbounds %struct.xpvhv, ptr %65, i64 0, i32 2
  %67 = load i64, ptr %66, align 8, !tbaa !50
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %128, label %69

69:                                               ; preds = %60
  %70 = load i64, ptr @PL_hash_rand_bits, align 8, !tbaa !14
  %71 = trunc i64 %2 to i32
  %72 = add i32 %71, -1
  br label %73

73:                                               ; preds = %69, %124
  %74 = phi i64 [ %125, %124 ], [ %70, %69 ]
  %75 = phi i64 [ %126, %124 ], [ 0, %69 ]
  %76 = getelementptr inbounds ptr, ptr %22, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !5
  %78 = icmp eq ptr %77, null
  br i1 %78, label %124, label %79

79:                                               ; preds = %73
  %80 = trunc i64 %75 to i32
  br label %81

81:                                               ; preds = %79, %118
  %82 = phi i64 [ %119, %118 ], [ %74, %79 ]
  %83 = phi i64 [ %120, %118 ], [ %74, %79 ]
  %84 = phi ptr [ %121, %118 ], [ %76, %79 ]
  %85 = phi ptr [ %122, %118 ], [ %77, %79 ]
  %86 = getelementptr inbounds %struct.he, ptr %85, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !9
  %88 = load i32, ptr %87, align 4, !tbaa !44
  %89 = and i32 %88, %72
  %90 = icmp eq i32 %89, %80
  br i1 %90, label %118, label %91

91:                                               ; preds = %81
  %92 = load ptr, ptr %85, align 8, !tbaa !11
  store ptr %92, ptr %84, align 8, !tbaa !5
  %93 = zext i32 %89 to i64
  %94 = getelementptr inbounds ptr, ptr %22, i64 %93
  %95 = load ptr, ptr %94, align 8, !tbaa !5
  %96 = icmp ne ptr %95, null
  %97 = load i8, ptr @PL_hash_rand_bits_enabled, align 1
  %98 = icmp ne i8 %97, 0
  %99 = select i1 %96, i1 %98, i1 false
  br i1 %99, label %100, label %113

100:                                              ; preds = %91
  %101 = load ptr, ptr %86, align 8, !tbaa !9
  %102 = load i32, ptr %101, align 4, !tbaa !44
  %103 = tail call i32 @llvm.fshl.i32(i32 %102, i32 %102, i32 17)
  %104 = zext i32 %103 to i64
  %105 = add i64 %83, %104
  %106 = tail call i64 @llvm.fshl.i64(i64 %105, i64 %105, i64 1)
  store i64 %106, ptr @PL_hash_rand_bits, align 8, !tbaa !14
  %107 = and i64 %106, 1
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %100
  %110 = load ptr, ptr %95, align 8, !tbaa !11
  store ptr %110, ptr %85, align 8, !tbaa !11
  %111 = load ptr, ptr %94, align 8, !tbaa !5
  br label %114

112:                                              ; preds = %100
  store ptr %95, ptr %85, align 8, !tbaa !11
  br label %114

113:                                              ; preds = %91
  store ptr %95, ptr %85, align 8, !tbaa !11
  br label %114

114:                                              ; preds = %109, %112, %113
  %115 = phi ptr [ %94, %113 ], [ %94, %112 ], [ %111, %109 ]
  %116 = phi i64 [ %82, %113 ], [ %106, %112 ], [ %106, %109 ]
  %117 = phi i64 [ %83, %113 ], [ %106, %112 ], [ %106, %109 ]
  store ptr %85, ptr %115, align 8, !tbaa !5
  br label %118

118:                                              ; preds = %114, %81
  %119 = phi i64 [ %82, %81 ], [ %116, %114 ]
  %120 = phi i64 [ %83, %81 ], [ %117, %114 ]
  %121 = phi ptr [ %85, %81 ], [ %84, %114 ]
  %122 = load ptr, ptr %121, align 8, !tbaa !5
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %81, !llvm.loop !71

124:                                              ; preds = %118, %73
  %125 = phi i64 [ %74, %73 ], [ %119, %118 ]
  %126 = add i64 %75, 1
  %127 = icmp eq i64 %75, %1
  br i1 %127, label %128, label %73, !llvm.loop !72

128:                                              ; preds = %124, %60, %17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_hv_scalar(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !16
  %4 = and i32 %3, 8388608
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @Perl_mg_find(ptr noundef nonnull %0, i32 noundef 80) #16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call ptr @Perl_magic_scalarpack(ptr noundef nonnull %0, ptr noundef nonnull %7) #16
  br label %24

11:                                               ; preds = %6, %1
  %12 = tail call ptr @Perl_sv_newmortal() #16
  %13 = load ptr, ptr %0, align 8, !tbaa !34
  %14 = getelementptr inbounds %struct.xpvhv, ptr %13, i64 0, i32 2
  %15 = load i64, ptr %14, align 8, !tbaa !50
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %11
  %18 = tail call i64 @Perl_hv_fill(ptr noundef nonnull %0) #17
  %19 = load ptr, ptr %0, align 8, !tbaa !34
  %20 = getelementptr inbounds %struct.xpvhv, ptr %19, i64 0, i32 3
  %21 = load i64, ptr %20, align 8, !tbaa !42
  %22 = add nsw i64 %21, 1
  tail call void (ptr, ptr, ...) @Perl_sv_setpvf(ptr noundef %12, ptr noundef nonnull @.str.4, i64 noundef %18, i64 noundef %22) #16
  br label %24

23:                                               ; preds = %11
  tail call void @Perl_sv_setiv(ptr noundef %12, i64 noundef 0) #16
  br label %24

24:                                               ; preds = %9, %17, %23
  %25 = phi ptr [ %10, %9 ], [ %12, %23 ], [ %12, %17 ]
  ret ptr %25
}

; Function Attrs: optsize
declare ptr @Perl_magic_scalarpack(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_setpvf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @Perl_hv_fill(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !31
  %4 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !16
  %6 = and i32 %5, 33554432
  %7 = icmp eq i32 %6, 0
  %8 = load ptr, ptr %0, align 8, !tbaa !34
  br i1 %7, label %17, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.xpvhv, ptr %8, i64 0, i32 3
  %11 = load i64, ptr %10, align 8, !tbaa !42
  %12 = getelementptr ptr, ptr %3, i64 %11
  %13 = getelementptr ptr, ptr %12, i64 1
  %14 = getelementptr inbounds %struct.xpvhv, ptr %8, i64 0, i32 2
  %15 = load i64, ptr %14, align 8, !tbaa !50
  %16 = icmp ult i64 %15, 2
  br i1 %16, label %64, label %21

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.xpvhv, ptr %8, i64 0, i32 2
  %19 = load i64, ptr %18, align 8, !tbaa !50
  %20 = icmp ult i64 %19, 2
  br i1 %20, label %64, label %29

21:                                               ; preds = %9
  %22 = icmp eq ptr %13, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %21
  %24 = getelementptr ptr, ptr %12, i64 7
  %25 = load i32, ptr %24, align 8, !tbaa !47
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = zext i32 %25 to i64
  br label %64

29:                                               ; preds = %17, %21
  %30 = icmp eq ptr %3, null
  %31 = getelementptr inbounds %struct.xpvhv, ptr %8, i64 0, i32 3
  %32 = load i64, ptr %31, align 8, !tbaa !42
  br i1 %30, label %56, label %33

33:                                               ; preds = %29, %23
  %34 = phi i64 [ %11, %23 ], [ %32, %29 ]
  %35 = phi ptr [ %13, %23 ], [ null, %29 ]
  %36 = phi i1 [ false, %23 ], [ true, %29 ]
  %37 = getelementptr inbounds ptr, ptr %3, i64 %34
  %38 = getelementptr inbounds ptr, ptr %37, i64 1
  %39 = ptrtoint ptr %38 to i64
  %40 = ptrtoint ptr %3 to i64
  %41 = sub i64 %39, %40
  %42 = ashr exact i64 %41, 3
  br label %43

43:                                               ; preds = %43, %33
  %44 = phi i64 [ %42, %33 ], [ %49, %43 ]
  %45 = phi ptr [ %3, %33 ], [ %50, %43 ]
  %46 = load ptr, ptr %45, align 8, !tbaa !5
  %47 = icmp eq ptr %46, null
  %48 = sext i1 %47 to i64
  %49 = add i64 %44, %48
  %50 = getelementptr inbounds ptr, ptr %45, i64 1
  %51 = icmp ugt ptr %50, %37
  br i1 %51, label %52, label %43, !llvm.loop !73

52:                                               ; preds = %43
  br i1 %36, label %56, label %53

53:                                               ; preds = %52
  %54 = trunc i64 %49 to i32
  %55 = getelementptr inbounds %struct.xpvhv_aux, ptr %35, i64 0, i32 8
  store i32 %54, ptr %55, align 8, !tbaa !47
  br label %64

56:                                               ; preds = %29, %52
  %57 = phi i64 [ %34, %52 ], [ %32, %29 ]
  %58 = phi i64 [ %49, %52 ], [ 0, %29 ]
  %59 = icmp ugt i64 %57, 30
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = tail call fastcc ptr @S_hv_auxinit(ptr noundef nonnull %0) #17
  %62 = trunc i64 %58 to i32
  %63 = getelementptr inbounds %struct.xpvhv_aux, ptr %61, i64 0, i32 8
  store i32 %62, ptr %63, align 8, !tbaa !47
  br label %64

64:                                               ; preds = %17, %53, %60, %56, %9, %27
  %65 = phi i64 [ %28, %27 ], [ %15, %9 ], [ %58, %56 ], [ %58, %60 ], [ %49, %53 ], [ %19, %17 ]
  ret i64 %65
}

; Function Attrs: optsize
declare void @Perl_sv_setiv(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_hv_ksplit(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.xpvhv, ptr %3, i64 0, i32 3
  %5 = add i64 %1, 2147483648
  %6 = icmp ult i64 %5, 4294967296
  br i1 %6, label %7, label %38

7:                                                ; preds = %2
  %8 = load i64, ptr %4, align 8, !tbaa !42
  %9 = shl i64 %8, 32
  %10 = add i64 %9, 4294967296
  %11 = ashr exact i64 %10, 32
  %12 = icmp slt i64 %11, %1
  br i1 %12, label %13, label %38

13:                                               ; preds = %7
  %14 = trunc i64 %1 to i32
  br label %15

15:                                               ; preds = %13, %15
  %16 = phi i32 [ %20, %15 ], [ %14, %13 ]
  %17 = sub nsw i32 0, %16
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, %16
  %20 = xor i32 %18, %16
  br i1 %19, label %21, label %15, !llvm.loop !74

21:                                               ; preds = %15
  %22 = sext i32 %16 to i64
  %23 = icmp slt i64 %22, %1
  %24 = zext i1 %23 to i32
  %25 = shl nsw i32 %16, %24
  %26 = sext i32 %25 to i64
  %27 = icmp slt i64 %26, %1
  br i1 %27, label %38, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !31
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  tail call fastcc void @S_hsplit(ptr noundef nonnull %0, i64 noundef %11, i64 noundef %26) #17
  br label %38

33:                                               ; preds = %28
  %34 = shl nsw i64 %26, 3
  %35 = tail call ptr @Perl_safesyscalloc(i64 noundef %34, i64 noundef 1) #16
  %36 = add nsw i32 %25, -1
  %37 = sext i32 %36 to i64
  store i64 %37, ptr %4, align 8, !tbaa !42
  store ptr %35, ptr %29, align 8, !tbaa !31
  br label %38

38:                                               ; preds = %32, %33, %21, %2, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_newHVhv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @Perl_newSV_type(i32 noundef 12) #16
  %3 = icmp eq ptr %0, null
  br i1 %3, label %169, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.xpvhv, ptr %5, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !50
  %8 = icmp eq i64 %7, 0
  %9 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !63
  %11 = and i32 %10, 14680064
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %8, i1 %12, i1 false
  br i1 %13, label %169, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.xpvhv, ptr %5, i64 0, i32 3
  %16 = load i64, ptr %15, align 8, !tbaa !42
  %17 = and i32 %10, 14680064
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %90

19:                                               ; preds = %14
  %20 = and i32 %10, 536870912
  %21 = icmp eq i32 %20, 0
  %22 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !31
  %24 = shl i64 %16, 3
  %25 = add i64 %24, 8
  %26 = tail call ptr @Perl_safesysmalloc(i64 noundef %25) #16
  br label %27

27:                                               ; preds = %19, %79
  %28 = phi i64 [ 0, %19 ], [ %80, %79 ]
  %29 = getelementptr inbounds ptr, ptr %23, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !5
  %31 = icmp eq ptr %30, null
  %32 = getelementptr inbounds ptr, ptr %26, i64 %28
  br i1 %31, label %33, label %34

33:                                               ; preds = %27
  store ptr null, ptr %32, align 8, !tbaa !5
  br label %79

34:                                               ; preds = %27, %72
  %35 = phi ptr [ %48, %72 ], [ null, %27 ]
  %36 = phi ptr [ %77, %72 ], [ %30, %27 ]
  %37 = getelementptr inbounds %struct.he, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !9
  %39 = load i32, ptr %38, align 4, !tbaa !44
  %40 = getelementptr inbounds %struct.hek, ptr %38, i64 0, i32 2
  %41 = getelementptr inbounds %struct.hek, ptr %38, i64 0, i32 1
  %42 = load i32, ptr %41, align 4, !tbaa !37
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, ptr %40, i64 %43
  %45 = getelementptr inbounds i8, ptr %44, i64 1
  %46 = load i8, ptr %45, align 1, !tbaa !31
  %47 = zext i8 %46 to i32
  %48 = tail call fastcc ptr @S_new_he() #17
  %49 = getelementptr inbounds %struct.he, ptr %36, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !31
  %51 = getelementptr inbounds %struct.sv, ptr %50, i64 0, i32 2
  %52 = load i32, ptr %51, align 4, !tbaa !26
  %53 = and i32 %52, 134283264
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %34
  %56 = icmp eq ptr %50, @PL_sv_undef
  %57 = icmp eq ptr %50, @PL_sv_yes
  %58 = or i1 %56, %57
  %59 = icmp eq ptr %50, @PL_sv_no
  %60 = or i1 %59, %58
  %61 = icmp eq ptr %50, @PL_sv_placeholder
  %62 = or i1 %61, %60
  br i1 %62, label %65, label %63

63:                                               ; preds = %55, %34
  %64 = tail call ptr @Perl_newSVsv(ptr noundef %50) #16
  br label %65

65:                                               ; preds = %55, %63
  %66 = phi ptr [ %64, %63 ], [ %50, %55 ]
  %67 = getelementptr inbounds %struct.he, ptr %48, i64 0, i32 2
  store ptr %66, ptr %67, align 8, !tbaa !31
  br i1 %21, label %70, label %68

68:                                               ; preds = %65
  %69 = tail call fastcc ptr @S_share_hek_flags(ptr noundef nonnull %40, i32 noundef %42, i32 noundef %39, i32 noundef %47) #17
  br label %72

70:                                               ; preds = %65
  %71 = tail call fastcc ptr @S_save_hek_flags(ptr noundef nonnull %40, i32 noundef %42, i32 noundef %39, i32 noundef %47) #17
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi ptr [ %69, %68 ], [ %71, %70 ]
  %74 = getelementptr inbounds %struct.he, ptr %48, i64 0, i32 1
  store ptr %73, ptr %74, align 8, !tbaa !9
  %75 = icmp eq ptr %35, null
  %76 = select i1 %75, ptr %32, ptr %35
  store ptr %48, ptr %76, align 8, !tbaa !5
  store ptr null, ptr %48, align 8, !tbaa !11
  %77 = load ptr, ptr %36, align 8, !tbaa !11
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %34, !llvm.loop !75

79:                                               ; preds = %72, %33
  %80 = add i64 %28, 1
  %81 = icmp ugt i64 %80, %16
  br i1 %81, label %82, label %27, !llvm.loop !76

82:                                               ; preds = %79
  %83 = load ptr, ptr %2, align 8, !tbaa !34
  %84 = getelementptr inbounds %struct.xpvhv, ptr %83, i64 0, i32 3
  store i64 %16, ptr %84, align 8, !tbaa !42
  %85 = load ptr, ptr %0, align 8, !tbaa !34
  %86 = getelementptr inbounds %struct.xpvhv, ptr %85, i64 0, i32 2
  %87 = load i64, ptr %86, align 8, !tbaa !50
  %88 = getelementptr inbounds %struct.xpvhv, ptr %83, i64 0, i32 2
  store i64 %87, ptr %88, align 8, !tbaa !50
  %89 = getelementptr inbounds %struct.hv, ptr %2, i64 0, i32 3
  store ptr %26, ptr %89, align 8, !tbaa !31
  br label %169

90:                                               ; preds = %14
  %91 = and i32 %10, 33554432
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %101, label %93

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %95 = load ptr, ptr %94, align 8, !tbaa !31
  %96 = getelementptr ptr, ptr %95, i64 %16
  %97 = getelementptr ptr, ptr %96, i64 4
  %98 = load i32, ptr %97, align 8, !tbaa !77
  %99 = getelementptr ptr, ptr %96, i64 3
  %100 = load ptr, ptr %99, align 8, !tbaa !60
  br label %101

101:                                              ; preds = %90, %93
  %102 = phi i32 [ %98, %93 ], [ -1, %90 ]
  %103 = phi ptr [ %100, %93 ], [ null, %90 ]
  %104 = icmp ult i64 %16, 8
  br i1 %104, label %114, label %105

105:                                              ; preds = %101
  %106 = shl i64 %7, 1
  br label %107

107:                                              ; preds = %105, %111
  %108 = phi i64 [ %16, %105 ], [ %112, %111 ]
  %109 = add i64 %108, 1
  %110 = icmp ult i64 %109, %106
  br i1 %110, label %114, label %111

111:                                              ; preds = %107
  %112 = lshr i64 %108, 1
  %113 = icmp ugt i64 %108, 15
  br i1 %113, label %107, label %114, !llvm.loop !78

114:                                              ; preds = %111, %107, %101
  %115 = phi i64 [ 7, %101 ], [ %112, %111 ], [ %108, %107 ]
  %116 = load ptr, ptr %2, align 8, !tbaa !34
  %117 = getelementptr inbounds %struct.xpvhv, ptr %116, i64 0, i32 3
  store i64 %115, ptr %117, align 8, !tbaa !42
  %118 = tail call i32 @Perl_hv_iterinit(ptr noundef nonnull %0) #17
  %119 = tail call ptr @Perl_hv_iternext_flags(ptr noundef nonnull %0, i32 noundef 0) #17
  %120 = icmp eq ptr %119, null
  br i1 %120, label %168, label %121

121:                                              ; preds = %114, %165
  %122 = phi ptr [ %166, %165 ], [ %119, %114 ]
  %123 = tail call ptr @Perl_hv_iterval(ptr noundef nonnull %0, ptr noundef nonnull %122) #17
  %124 = getelementptr inbounds %struct.he, ptr %122, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !9
  %126 = getelementptr inbounds %struct.hek, ptr %125, i64 0, i32 1
  %127 = load i32, ptr %126, align 4, !tbaa !37
  %128 = icmp eq i32 %127, -2
  br i1 %128, label %129, label %132

129:                                              ; preds = %121
  %130 = getelementptr inbounds %struct.hek, ptr %125, i64 0, i32 2
  %131 = load ptr, ptr %130, align 4, !tbaa !5
  br label %132

132:                                              ; preds = %121, %129
  %133 = phi ptr [ %131, %129 ], [ null, %121 ]
  %134 = getelementptr inbounds %struct.sv, ptr %123, i64 0, i32 2
  %135 = load i32, ptr %134, align 4, !tbaa !26
  %136 = and i32 %135, 134283264
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %146, label %138

138:                                              ; preds = %132
  %139 = icmp eq ptr %123, @PL_sv_undef
  %140 = icmp eq ptr %123, @PL_sv_yes
  %141 = or i1 %139, %140
  %142 = icmp eq ptr %123, @PL_sv_no
  %143 = or i1 %142, %141
  %144 = icmp eq ptr %123, @PL_sv_placeholder
  %145 = or i1 %144, %143
  br i1 %145, label %148, label %146

146:                                              ; preds = %138, %132
  %147 = tail call ptr @Perl_newSVsv(ptr noundef %123) #16
  br label %148

148:                                              ; preds = %138, %146
  %149 = phi ptr [ %147, %146 ], [ %123, %138 ]
  %150 = icmp eq ptr %133, null
  br i1 %150, label %153, label %151

151:                                              ; preds = %148
  %152 = tail call ptr @Perl_hv_common(ptr noundef nonnull %2, ptr noundef nonnull %133, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 4, ptr noundef %149, i32 noundef 0) #17
  br label %165

153:                                              ; preds = %148
  %154 = load ptr, ptr %124, align 8, !tbaa !9
  %155 = getelementptr inbounds %struct.hek, ptr %154, i64 0, i32 2
  %156 = getelementptr inbounds %struct.hek, ptr %154, i64 0, i32 1
  %157 = load i32, ptr %156, align 4, !tbaa !37
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, ptr %155, i64 %158
  %160 = getelementptr inbounds i8, ptr %159, i64 1
  %161 = load i8, ptr %160, align 1, !tbaa !31
  %162 = zext i8 %161 to i32
  %163 = load i32, ptr %154, align 4, !tbaa !44
  %164 = tail call ptr @Perl_hv_common(ptr noundef nonnull %2, ptr noundef null, ptr noundef nonnull %155, i64 noundef %158, i32 noundef %162, i32 noundef 36, ptr noundef %149, i32 noundef %163) #17
  br label %165

165:                                              ; preds = %153, %151
  %166 = tail call ptr @Perl_hv_iternext_flags(ptr noundef nonnull %0, i32 noundef 0) #17
  %167 = icmp eq ptr %166, null
  br i1 %167, label %168, label %121, !llvm.loop !79

168:                                              ; preds = %165, %114
  tail call void @Perl_hv_riter_set(ptr noundef nonnull %0, i32 noundef %102) #17
  tail call void @Perl_hv_eiter_set(ptr noundef nonnull %0, ptr noundef %103) #17
  br label %169

169:                                              ; preds = %4, %82, %168, %1
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Perl_hv_iterinit(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !16
  %4 = and i32 %3, 33554432
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %35, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !31
  %9 = load ptr, ptr %0, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.xpvhv, ptr %9, i64 0, i32 3
  %11 = load i64, ptr %10, align 8, !tbaa !42
  %12 = getelementptr ptr, ptr %8, i64 %11
  %13 = getelementptr ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8, !tbaa !60
  %15 = icmp eq ptr %14, null
  %16 = and i32 %3, 1073741824
  %17 = icmp eq i32 %16, 0
  %18 = or i1 %17, %15
  br i1 %18, label %25, label %19

19:                                               ; preds = %6
  %20 = and i32 %3, -1073741825
  store i32 %20, ptr %2, align 4, !tbaa !16
  tail call void @Perl_hv_free_ent(ptr noundef nonnull %0, ptr noundef nonnull %14) #17
  %21 = load ptr, ptr %7, align 8, !tbaa !31
  %22 = load ptr, ptr %0, align 8, !tbaa !34
  %23 = getelementptr inbounds %struct.xpvhv, ptr %22, i64 0, i32 3
  %24 = load i64, ptr %23, align 8, !tbaa !42
  br label %25

25:                                               ; preds = %19, %6
  %26 = phi i64 [ %24, %19 ], [ %11, %6 ]
  %27 = phi ptr [ %22, %19 ], [ %9, %6 ]
  %28 = phi ptr [ %21, %19 ], [ %8, %6 ]
  %29 = getelementptr ptr, ptr %28, i64 %26
  %30 = getelementptr ptr, ptr %29, i64 4
  store i32 -1, ptr %30, align 8, !tbaa !77
  %31 = getelementptr ptr, ptr %29, i64 3
  store ptr null, ptr %31, align 8, !tbaa !60
  %32 = getelementptr ptr, ptr %29, i64 6
  %33 = load i32, ptr %32, align 8, !tbaa !49
  %34 = getelementptr i8, ptr %29, i64 52
  store i32 %33, ptr %34, align 4, !tbaa !80
  br label %38

35:                                               ; preds = %1
  %36 = tail call fastcc ptr @S_hv_auxinit(ptr noundef nonnull %0) #17
  %37 = load ptr, ptr %0, align 8, !tbaa !34
  br label %38

38:                                               ; preds = %35, %25
  %39 = phi ptr [ %37, %35 ], [ %27, %25 ]
  %40 = getelementptr inbounds %struct.xpvhv, ptr %39, i64 0, i32 2
  %41 = load i64, ptr %40, align 8, !tbaa !50
  %42 = trunc i64 %41 to i32
  ret i32 %42
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_hv_iternext_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !16
  %6 = and i32 %5, 33554432
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = tail call i32 @Perl_hv_iterinit(ptr noundef nonnull %0) #17
  %10 = load ptr, ptr %0, align 8, !tbaa !34
  %11 = load i32, ptr %4, align 4, !tbaa !16
  br label %12

12:                                               ; preds = %8, %2
  %13 = phi i32 [ %11, %8 ], [ %5, %2 ]
  %14 = phi ptr [ %10, %8 ], [ %3, %2 ]
  %15 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !31
  %17 = getelementptr inbounds %struct.xpvhv, ptr %14, i64 0, i32 3
  %18 = load i64, ptr %17, align 8, !tbaa !42
  %19 = getelementptr ptr, ptr %16, i64 %18
  %20 = getelementptr ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8, !tbaa !60
  %22 = and i32 %13, 8388608
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %105, label %24

24:                                               ; preds = %12
  %25 = tail call ptr @Perl_mg_find(ptr noundef nonnull %0, i32 noundef 80) #16
  %26 = icmp eq ptr %25, null
  br i1 %26, label %105, label %27

27:                                               ; preds = %24
  %28 = tail call ptr @Perl_sv_newmortal() #16
  %29 = icmp eq ptr %21, null
  br i1 %29, label %63, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.he, ptr %21, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !9
  %33 = getelementptr inbounds %struct.hek, ptr %32, i64 0, i32 2
  %34 = getelementptr inbounds %struct.hek, ptr %32, i64 0, i32 1
  %35 = load i32, ptr %34, align 4, !tbaa !37
  %36 = icmp eq i32 %35, -2
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load ptr, ptr %33, align 4, !tbaa !5
  br label %49

39:                                               ; preds = %30
  %40 = sext i32 %35 to i64
  %41 = getelementptr inbounds i8, ptr %33, i64 %40
  %42 = getelementptr inbounds i8, ptr %41, i64 1
  %43 = load i8, ptr %42, align 1, !tbaa !31
  %44 = and i8 %43, 1
  %45 = zext nneg i8 %44 to i32
  %46 = shl nuw nsw i32 %45, 29
  %47 = or disjoint i32 %46, 524288
  %48 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull %33, i64 noundef %40, i32 noundef %47) #16
  br label %49

49:                                               ; preds = %37, %39
  %50 = phi ptr [ %38, %37 ], [ %48, %39 ]
  tail call void @Perl_sv_setsv_flags(ptr noundef %28, ptr noundef %50, i32 noundef 1538) #16
  %51 = load ptr, ptr %31, align 8, !tbaa !9
  %52 = getelementptr inbounds %struct.hek, ptr %51, i64 0, i32 1
  %53 = load i32, ptr %52, align 4, !tbaa !37
  %54 = icmp eq i32 %53, -2
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.hek, ptr %51, i64 0, i32 2
  %57 = load ptr, ptr %56, align 4, !tbaa !5
  br label %58

58:                                               ; preds = %49, %55
  %59 = phi ptr [ %57, %55 ], [ null, %49 ]
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %59) #17
  %60 = load ptr, ptr %31, align 8, !tbaa !9
  %61 = getelementptr inbounds %struct.hek, ptr %60, i64 0, i32 1
  store i32 -2, ptr %61, align 4, !tbaa !37
  %62 = getelementptr inbounds %struct.hek, ptr %60, i64 0, i32 2
  store ptr null, ptr %62, align 4, !tbaa !5
  br label %70

63:                                               ; preds = %27
  %64 = tail call fastcc ptr @S_new_he() #17
  store ptr %64, ptr %20, align 8, !tbaa !60
  %65 = load i32, ptr %4, align 4, !tbaa !16
  %66 = or i32 %65, 1073741824
  store i32 %66, ptr %4, align 4, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %64, i8 0, i64 24, i1 false)
  %67 = tail call ptr @Perl_safesyscalloc(i64 noundef 16, i64 noundef 1) #16
  %68 = getelementptr inbounds %struct.he, ptr %64, i64 0, i32 1
  store ptr %67, ptr %68, align 8, !tbaa !9
  %69 = getelementptr inbounds %struct.hek, ptr %67, i64 0, i32 1
  store i32 -2, ptr %69, align 4, !tbaa !37
  br label %70

70:                                               ; preds = %63, %58
  %71 = phi ptr [ %21, %58 ], [ %64, %63 ]
  %72 = tail call i32 @Perl_magic_nextpack(ptr noundef nonnull %0, ptr noundef nonnull %25, ptr noundef %28) #16
  %73 = getelementptr inbounds %struct.sv, ptr %28, i64 0, i32 2
  %74 = load i32, ptr %73, align 4, !tbaa !26
  %75 = and i32 %74, 65280
  %76 = icmp ne i32 %75, 0
  %77 = and i32 %74, 255
  %78 = icmp eq i32 %77, 8
  %79 = or i1 %76, %78
  %80 = and i32 %74, 16777471
  %81 = icmp eq i32 %80, 16777226
  %82 = or i1 %81, %79
  br i1 %82, label %83, label %91

83:                                               ; preds = %70
  %84 = getelementptr inbounds %struct.he, ptr %71, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !9
  %86 = getelementptr inbounds %struct.hek, ptr %85, i64 0, i32 1
  store i32 -2, ptr %86, align 4, !tbaa !37
  %87 = getelementptr inbounds %struct.sv, ptr %28, i64 0, i32 1
  %88 = load i32, ptr %87, align 8, !tbaa !57
  %89 = add i32 %88, 1
  store i32 %89, ptr %87, align 8, !tbaa !57
  %90 = getelementptr inbounds %struct.hek, ptr %85, i64 0, i32 2
  store ptr %28, ptr %90, align 4, !tbaa !5
  br label %223

91:                                               ; preds = %70
  %92 = getelementptr inbounds %struct.he, ptr %71, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !31
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %93) #17
  %94 = getelementptr inbounds %struct.he, ptr %71, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !9
  tail call void @Perl_safesysfree(ptr noundef %95) #16
  %96 = load ptr, ptr @PL_body_roots, align 16, !tbaa !5
  store ptr %96, ptr %71, align 8, !tbaa !11
  store ptr %71, ptr @PL_body_roots, align 16, !tbaa !5
  %97 = load ptr, ptr %15, align 8, !tbaa !31
  %98 = load ptr, ptr %0, align 8, !tbaa !34
  %99 = getelementptr inbounds %struct.xpvhv, ptr %98, i64 0, i32 3
  %100 = load i64, ptr %99, align 8, !tbaa !42
  %101 = getelementptr ptr, ptr %97, i64 %100
  %102 = getelementptr ptr, ptr %101, i64 3
  store ptr null, ptr %102, align 8, !tbaa !60
  %103 = load i32, ptr %4, align 4, !tbaa !16
  %104 = and i32 %103, -1073741825
  store i32 %104, ptr %4, align 4, !tbaa !16
  br label %223

105:                                              ; preds = %24, %12
  %106 = icmp eq ptr %21, null
  br i1 %106, label %121, label %107

107:                                              ; preds = %105
  %108 = load ptr, ptr %21, align 8, !tbaa !11
  %109 = and i32 %1, 1
  %110 = icmp eq i32 %109, 0
  %111 = icmp ne ptr %108, null
  %112 = select i1 %110, i1 %111, i1 false
  br i1 %112, label %113, label %121

113:                                              ; preds = %107, %118
  %114 = phi ptr [ %119, %118 ], [ %108, %107 ]
  %115 = getelementptr inbounds %struct.he, ptr %114, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !31
  %117 = icmp eq ptr %116, @PL_sv_placeholder
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  %119 = load ptr, ptr %114, align 8, !tbaa !11
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %113

121:                                              ; preds = %118, %113, %107, %105
  %122 = phi ptr [ %108, %107 ], [ null, %105 ], [ %114, %113 ], [ null, %118 ]
  %123 = getelementptr i8, ptr %19, i64 52
  %124 = load i32, ptr %123, align 4, !tbaa !80
  %125 = getelementptr ptr, ptr %19, i64 6
  %126 = load i32, ptr %125, align 8, !tbaa !49
  %127 = icmp eq i32 %124, %126
  br i1 %127, label %142, label %128

128:                                              ; preds = %121
  %129 = getelementptr ptr, ptr %19, i64 4
  %130 = load i32, ptr %129, align 8, !tbaa !77
  %131 = icmp eq i32 %130, -1
  br i1 %131, label %133, label %132

132:                                              ; preds = %128
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 24, ptr noundef nonnull @.str.7) #16
  br label %133

133:                                              ; preds = %132, %128
  %134 = load ptr, ptr %15, align 8, !tbaa !31
  %135 = load ptr, ptr %0, align 8, !tbaa !34
  %136 = getelementptr inbounds %struct.xpvhv, ptr %135, i64 0, i32 3
  %137 = load i64, ptr %136, align 8, !tbaa !42
  %138 = getelementptr ptr, ptr %134, i64 %137
  %139 = getelementptr ptr, ptr %138, i64 6
  %140 = load i32, ptr %139, align 8, !tbaa !49
  %141 = getelementptr i8, ptr %138, i64 52
  store i32 %140, ptr %141, align 4, !tbaa !80
  br label %142

142:                                              ; preds = %133, %121
  %143 = phi i32 [ %140, %133 ], [ %124, %121 ]
  %144 = phi ptr [ %138, %133 ], [ %19, %121 ]
  %145 = and i32 %1, 1
  %146 = icmp eq i32 %145, 0
  %147 = load ptr, ptr %0, align 8, !tbaa !34
  %148 = getelementptr inbounds %struct.xpvhv, ptr %147, i64 0, i32 2
  %149 = load i64, ptr %148, align 8, !tbaa !50
  br i1 %146, label %152, label %150

150:                                              ; preds = %142
  %151 = icmp eq i64 %149, 0
  br i1 %151, label %201, label %165

152:                                              ; preds = %142
  %153 = getelementptr inbounds %struct.xpvmg, ptr %147, i64 0, i32 1
  %154 = load ptr, ptr %153, align 8, !tbaa !31
  %155 = icmp eq ptr %154, null
  br i1 %155, label %159, label %156

156:                                              ; preds = %152
  %157 = tail call i32 @Perl_hv_placeholders_get(ptr noundef nonnull %0) #17
  %158 = sext i32 %157 to i64
  br label %159

159:                                              ; preds = %152, %156
  %160 = phi i64 [ %158, %156 ], [ 0, %152 ]
  %161 = icmp eq i64 %149, %160
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = getelementptr ptr, ptr %144, i64 6
  %164 = load i32, ptr %163, align 8, !tbaa !49
  br label %201

165:                                              ; preds = %159, %150
  %166 = icmp eq ptr %122, null
  br i1 %166, label %167, label %208

167:                                              ; preds = %165
  %168 = getelementptr ptr, ptr %144, i64 4
  %169 = getelementptr inbounds %struct.xpvhv, ptr %3, i64 0, i32 3
  %170 = load i64, ptr %169, align 8, !tbaa !42
  %171 = trunc i64 %170 to i32
  %172 = getelementptr ptr, ptr %144, i64 6
  %173 = load i32, ptr %168, align 8, !tbaa !77
  br label %174

174:                                              ; preds = %167, %198
  %175 = phi i32 [ %173, %167 ], [ %176, %198 ]
  %176 = add nsw i32 %175, 1
  store i32 %176, ptr %168, align 8, !tbaa !77
  %177 = icmp slt i32 %175, %171
  br i1 %177, label %180, label %178

178:                                              ; preds = %174
  store i32 -1, ptr %168, align 8, !tbaa !77
  %179 = load i32, ptr %172, align 8, !tbaa !49
  br label %204

180:                                              ; preds = %174
  %181 = load ptr, ptr %15, align 8, !tbaa !31
  %182 = load i32, ptr %172, align 8, !tbaa !49
  %183 = xor i32 %182, %176
  %184 = zext i32 %183 to i64
  %185 = and i64 %170, %184
  %186 = getelementptr inbounds ptr, ptr %181, i64 %185
  %187 = load ptr, ptr %186, align 8, !tbaa !5
  %188 = icmp ne ptr %187, null
  %189 = select i1 %146, i1 %188, i1 false
  br i1 %189, label %190, label %198

190:                                              ; preds = %180, %195
  %191 = phi ptr [ %196, %195 ], [ %187, %180 ]
  %192 = getelementptr inbounds %struct.he, ptr %191, i64 0, i32 2
  %193 = load ptr, ptr %192, align 8, !tbaa !31
  %194 = icmp eq ptr %193, @PL_sv_placeholder
  br i1 %194, label %195, label %208

195:                                              ; preds = %190
  %196 = load ptr, ptr %191, align 8, !tbaa !11
  %197 = icmp eq ptr %196, null
  br i1 %197, label %198, label %190

198:                                              ; preds = %195, %180
  %199 = phi ptr [ %187, %180 ], [ null, %195 ]
  %200 = icmp eq ptr %199, null
  br i1 %200, label %174, label %208, !llvm.loop !81

201:                                              ; preds = %162, %150
  %202 = phi i32 [ %164, %162 ], [ %143, %150 ]
  %203 = getelementptr ptr, ptr %144, i64 4
  store i32 -1, ptr %203, align 8, !tbaa !77
  br label %204

204:                                              ; preds = %201, %178
  %205 = phi i32 [ %179, %178 ], [ %202, %201 ]
  %206 = phi ptr [ null, %178 ], [ %122, %201 ]
  %207 = getelementptr i8, ptr %144, i64 52
  store i32 %205, ptr %207, align 4, !tbaa !80
  br label %208

208:                                              ; preds = %198, %190, %204, %165
  %209 = phi ptr [ %122, %165 ], [ %206, %204 ], [ %191, %190 ], [ %199, %198 ]
  br i1 %106, label %216, label %210

210:                                              ; preds = %208
  %211 = load i32, ptr %4, align 4, !tbaa !16
  %212 = and i32 %211, 1073741824
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %216, label %214

214:                                              ; preds = %210
  %215 = and i32 %211, -1073741825
  store i32 %215, ptr %4, align 4, !tbaa !16
  tail call void @Perl_hv_free_ent(ptr noundef nonnull %0, ptr noundef nonnull %21) #17
  br label %216

216:                                              ; preds = %214, %210, %208
  %217 = load ptr, ptr %15, align 8, !tbaa !31
  %218 = load ptr, ptr %0, align 8, !tbaa !34
  %219 = getelementptr inbounds %struct.xpvhv, ptr %218, i64 0, i32 3
  %220 = load i64, ptr %219, align 8, !tbaa !42
  %221 = getelementptr ptr, ptr %217, i64 %220
  %222 = getelementptr ptr, ptr %221, i64 3
  store ptr %209, ptr %222, align 8, !tbaa !60
  br label %223

223:                                              ; preds = %83, %91, %216
  %224 = phi ptr [ %209, %216 ], [ %71, %83 ], [ null, %91 ]
  ret ptr %224
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_hv_iterval(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !16
  %5 = and i32 %4, 8388608
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %23, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @Perl_mg_find(ptr noundef nonnull %0, i32 noundef 80) #16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %23, label %10

10:                                               ; preds = %7
  %11 = tail call ptr @Perl_sv_newmortal() #16
  %12 = getelementptr inbounds %struct.he, ptr %1, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !9
  %14 = getelementptr inbounds %struct.hek, ptr %13, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !37
  %16 = icmp eq i32 %15, -2
  %17 = getelementptr inbounds %struct.hek, ptr %13, i64 0, i32 2
  br i1 %16, label %18, label %21

18:                                               ; preds = %10
  %19 = load ptr, ptr %17, align 4, !tbaa !5
  %20 = tail call i32 @Perl_mg_copy(ptr noundef nonnull %0, ptr noundef %11, ptr noundef %19, i32 noundef -2) #16
  br label %26

21:                                               ; preds = %10
  %22 = tail call i32 @Perl_mg_copy(ptr noundef nonnull %0, ptr noundef %11, ptr noundef nonnull %17, i32 noundef %15) #16
  br label %26

23:                                               ; preds = %7, %2
  %24 = getelementptr inbounds %struct.he, ptr %1, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !31
  br label %26

26:                                               ; preds = %18, %21, %23
  %27 = phi ptr [ %25, %23 ], [ %11, %21 ], [ %11, %18 ]
  ret ptr %27
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_hv_riter_set(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !16
  %5 = and i32 %4, 33554432
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !31
  %10 = load ptr, ptr %0, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct.xpvhv, ptr %10, i64 0, i32 3
  %12 = load i64, ptr %11, align 8, !tbaa !42
  %13 = getelementptr ptr, ptr %9, i64 %12
  %14 = getelementptr ptr, ptr %13, i64 1
  br label %19

15:                                               ; preds = %2
  %16 = icmp eq i32 %1, -1
  br i1 %16, label %22, label %17

17:                                               ; preds = %15
  %18 = tail call fastcc ptr @S_hv_auxinit(ptr noundef nonnull %0) #17
  br label %19

19:                                               ; preds = %17, %7
  %20 = phi ptr [ %14, %7 ], [ %18, %17 ]
  %21 = getelementptr inbounds %struct.xpvhv_aux, ptr %20, i64 0, i32 3
  store i32 %1, ptr %21, align 8, !tbaa !77
  br label %22

22:                                               ; preds = %15, %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_hv_eiter_set(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !16
  %5 = and i32 %4, 33554432
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !31
  %10 = load ptr, ptr %0, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct.xpvhv, ptr %10, i64 0, i32 3
  %12 = load i64, ptr %11, align 8, !tbaa !42
  %13 = getelementptr ptr, ptr %9, i64 %12
  %14 = getelementptr ptr, ptr %13, i64 1
  br label %19

15:                                               ; preds = %2
  %16 = icmp eq ptr %1, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %15
  %18 = tail call fastcc ptr @S_hv_auxinit(ptr noundef nonnull %0) #17
  br label %19

19:                                               ; preds = %17, %7
  %20 = phi ptr [ %14, %7 ], [ %18, %17 ]
  %21 = getelementptr inbounds %struct.xpvhv_aux, ptr %20, i64 0, i32 2
  store ptr %1, ptr %21, align 8, !tbaa !60
  br label %22

22:                                               ; preds = %15, %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_hv_copy_hints_hv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @Perl_newSV_type(i32 noundef 12) #16
  %3 = icmp eq ptr %0, null
  br i1 %3, label %95, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.xpvhv, ptr %5, i64 0, i32 3
  %7 = load i64, ptr %6, align 8, !tbaa !42
  %8 = getelementptr inbounds %struct.xpvhv, ptr %5, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !50
  %10 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !16
  %12 = and i32 %11, 33554432
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !31
  %17 = getelementptr ptr, ptr %16, i64 %7
  %18 = getelementptr ptr, ptr %17, i64 4
  %19 = load i32, ptr %18, align 8, !tbaa !77
  %20 = getelementptr ptr, ptr %17, i64 3
  %21 = load ptr, ptr %20, align 8, !tbaa !60
  br label %22

22:                                               ; preds = %4, %14
  %23 = phi i32 [ %19, %14 ], [ -1, %4 ]
  %24 = phi ptr [ %21, %14 ], [ null, %4 ]
  tail call void @Perl_push_scope() #16
  tail call void @Perl_save_pushptr(ptr noundef %2, i32 noundef 11) #16
  %25 = icmp ult i64 %7, 8
  br i1 %25, label %35, label %26

26:                                               ; preds = %22
  %27 = shl i64 %9, 1
  br label %28

28:                                               ; preds = %26, %32
  %29 = phi i64 [ %7, %26 ], [ %33, %32 ]
  %30 = add i64 %29, 1
  %31 = icmp ult i64 %30, %27
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = lshr i64 %29, 1
  %34 = icmp ugt i64 %29, 15
  br i1 %34, label %28, label %35, !llvm.loop !82

35:                                               ; preds = %32, %28, %22
  %36 = phi i64 [ 7, %22 ], [ %33, %32 ], [ %29, %28 ]
  %37 = load ptr, ptr %2, align 8, !tbaa !34
  %38 = getelementptr inbounds %struct.xpvhv, ptr %37, i64 0, i32 3
  store i64 %36, ptr %38, align 8, !tbaa !42
  %39 = tail call i32 @Perl_hv_iterinit(ptr noundef nonnull %0) #17
  %40 = tail call ptr @Perl_hv_iternext_flags(ptr noundef nonnull %0, i32 noundef 0) #17
  %41 = icmp eq ptr %40, null
  br i1 %41, label %91, label %42

42:                                               ; preds = %35, %88
  %43 = phi ptr [ %89, %88 ], [ %40, %35 ]
  %44 = tail call ptr @Perl_hv_iterval(ptr noundef nonnull %0, ptr noundef nonnull %43) #17
  %45 = tail call ptr @Perl_newSVsv(ptr noundef %44) #16
  %46 = getelementptr inbounds %struct.he, ptr %43, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !9
  %48 = getelementptr inbounds %struct.hek, ptr %47, i64 0, i32 1
  %49 = load i32, ptr %48, align 4, !tbaa !37
  %50 = icmp eq i32 %49, -2
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = getelementptr inbounds %struct.hek, ptr %47, i64 0, i32 2
  %53 = load ptr, ptr %52, align 4, !tbaa !5
  br label %54

54:                                               ; preds = %42, %51
  %55 = phi ptr [ %53, %51 ], [ null, %42 ]
  %56 = icmp eq ptr %55, null
  %57 = icmp ne ptr %45, null
  %58 = select i1 %56, i1 %57, i1 false
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = tail call ptr @Perl_newSVhek(ptr noundef nonnull %47) #16
  br label %62

61:                                               ; preds = %54
  br i1 %57, label %62, label %67

62:                                               ; preds = %59, %61
  %63 = phi ptr [ %60, %59 ], [ %55, %61 ]
  tail call void @Perl_sv_magic(ptr noundef nonnull %45, ptr noundef null, i32 noundef 104, ptr noundef %63, i32 noundef -2) #16
  %64 = load ptr, ptr %46, align 8, !tbaa !9
  %65 = getelementptr inbounds %struct.hek, ptr %64, i64 0, i32 1
  %66 = load i32, ptr %65, align 4, !tbaa !37
  br label %67

67:                                               ; preds = %62, %61
  %68 = phi i32 [ %66, %62 ], [ %49, %61 ]
  %69 = phi ptr [ %64, %62 ], [ %47, %61 ]
  %70 = phi ptr [ %63, %62 ], [ %55, %61 ]
  %71 = getelementptr inbounds %struct.hek, ptr %69, i64 0, i32 2
  %72 = icmp eq i32 %68, -2
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load ptr, ptr %71, align 4, !tbaa !5
  br label %75

75:                                               ; preds = %67, %73
  %76 = phi ptr [ %74, %73 ], [ null, %67 ]
  %77 = icmp eq ptr %70, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = tail call ptr @Perl_hv_common(ptr noundef nonnull %2, ptr noundef %70, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 4, ptr noundef %45, i32 noundef 0) #17
  br label %88

80:                                               ; preds = %75
  %81 = sext i32 %68 to i64
  %82 = getelementptr inbounds i8, ptr %71, i64 %81
  %83 = getelementptr inbounds i8, ptr %82, i64 1
  %84 = load i8, ptr %83, align 1, !tbaa !31
  %85 = zext i8 %84 to i32
  %86 = load i32, ptr %69, align 4, !tbaa !44
  %87 = tail call ptr @Perl_hv_common(ptr noundef nonnull %2, ptr noundef %70, ptr noundef nonnull %71, i64 noundef %81, i32 noundef %85, i32 noundef 36, ptr noundef %45, i32 noundef %86) #17
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef %70) #17
  br label %88

88:                                               ; preds = %80, %78
  %89 = tail call ptr @Perl_hv_iternext_flags(ptr noundef nonnull %0, i32 noundef 0) #17
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %42, !llvm.loop !83

91:                                               ; preds = %88, %35
  tail call void @Perl_hv_riter_set(ptr noundef nonnull %0, i32 noundef %23) #17
  tail call void @Perl_hv_eiter_set(ptr noundef nonnull %0, ptr noundef %24) #17
  %92 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 1
  %93 = load i32, ptr %92, align 8, !tbaa !57
  %94 = add i32 %93, 1
  store i32 %94, ptr %92, align 8, !tbaa !57
  tail call void @Perl_pop_scope() #16
  br label %95

95:                                               ; preds = %91, %1
  tail call void @Perl_sv_magic(ptr noundef %2, ptr noundef null, i32 noundef 72, ptr noundef null, i32 noundef 0) #16
  ret ptr %2
}

; Function Attrs: optsize
declare void @Perl_push_scope() local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_save_pushptr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSVhek(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_magic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_SvREFCNT_dec_NN(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !57
  %4 = icmp ugt i32 %3, 1
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 8, !tbaa !57
  br label %8

7:                                                ; preds = %1
  tail call void @Perl_sv_free2(ptr noundef nonnull %0, i32 noundef %3) #16
  br label %8

8:                                                ; preds = %7, %5
  ret void
}

; Function Attrs: optsize
declare void @Perl_pop_scope() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_hv_free_ent(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call fastcc ptr @S_hv_free_ent_ret(ptr noundef %0, ptr noundef nonnull %1) #17
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %5) #17
  br label %6

6:                                                ; preds = %2, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @S_hv_free_ent_ret(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.he, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !31
  %5 = getelementptr inbounds %struct.he, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !9
  %7 = getelementptr inbounds %struct.hek, ptr %6, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !37
  %9 = icmp eq i32 %8, -2
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.hek, ptr %6, i64 0, i32 2
  %12 = load ptr, ptr %11, align 4, !tbaa !5
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %12) #17
  %13 = load ptr, ptr %5, align 8, !tbaa !9
  tail call void @Perl_safesysfree(ptr noundef %13) #16
  br label %21

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !16
  %17 = and i32 %16, 536870912
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  tail call void @Perl_unshare_hek(ptr noundef nonnull %6) #17
  br label %21

20:                                               ; preds = %14
  tail call void @Perl_safesysfree(ptr noundef nonnull %6) #16
  br label %21

21:                                               ; preds = %10, %20, %19
  %22 = load ptr, ptr @PL_body_roots, align 16, !tbaa !5
  store ptr %22, ptr %1, align 8, !tbaa !11
  store ptr %1, ptr @PL_body_roots, align 16, !tbaa !5
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_hv_delayfree_ent(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %20, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.he, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !31
  %7 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %6) #17
  %8 = tail call ptr @Perl_sv_2mortal(ptr noundef %6) #16
  %9 = getelementptr inbounds %struct.he, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !9
  %11 = getelementptr inbounds %struct.hek, ptr %10, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !37
  %13 = icmp eq i32 %12, -2
  br i1 %13, label %14, label %19

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.hek, ptr %10, i64 0, i32 2
  %16 = load ptr, ptr %15, align 4, !tbaa !5
  %17 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %16) #17
  %18 = tail call ptr @Perl_sv_2mortal(ptr noundef %16) #16
  br label %19

19:                                               ; preds = %14, %4
  tail call void @Perl_hv_free_ent(ptr noundef %0, ptr noundef nonnull %1) #17
  br label %20

20:                                               ; preds = %2, %19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @S_SvREFCNT_inc(ptr noundef returned %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !57
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 8, !tbaa !57
  br label %7

7:                                                ; preds = %1, %3
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_hv_clear(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %85, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  tail call void @Perl_push_scope() #16
  %5 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !84
  %7 = add i32 %6, 1
  store i32 %7, ptr %5, align 8, !tbaa !84
  tail call void @Perl_save_pushptr(ptr noundef nonnull %0, i32 noundef 11) #16
  %8 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !16
  %10 = and i32 %9, 134283264
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %52, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !31
  %15 = icmp eq ptr %14, null
  br i1 %15, label %52, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.xpvhv, ptr %4, i64 0, i32 3
  br label %18

18:                                               ; preds = %16, %48
  %19 = phi i64 [ 0, %16 ], [ %49, %48 ]
  %20 = load ptr, ptr %13, align 8, !tbaa !31
  %21 = getelementptr inbounds ptr, ptr %20, i64 %19
  %22 = load ptr, ptr %21, align 8, !tbaa !5
  %23 = icmp eq ptr %22, null
  br i1 %23, label %48, label %24

24:                                               ; preds = %18, %45
  %25 = phi ptr [ %46, %45 ], [ %22, %18 ]
  %26 = getelementptr inbounds %struct.he, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !31
  %28 = icmp eq ptr %27, @PL_sv_placeholder
  br i1 %28, label %45, label %29

29:                                               ; preds = %24
  %30 = icmp eq ptr %27, null
  br i1 %30, label %41, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.sv, ptr %27, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !26
  %34 = and i32 %33, 134283264
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = tail call ptr @Perl_hv_iterkeysv(ptr noundef nonnull %25) #17
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.5, ptr noundef %37) #16
  %38 = load ptr, ptr %26, align 8, !tbaa !31
  br label %39

39:                                               ; preds = %36, %31
  %40 = phi ptr [ %38, %36 ], [ %27, %31 ]
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef %40) #17
  br label %41

41:                                               ; preds = %39, %29
  store ptr @PL_sv_placeholder, ptr %26, align 8, !tbaa !31
  %42 = tail call ptr @Perl_hv_placeholders_p(ptr noundef nonnull %0) #17
  %43 = load i64, ptr %42, align 8, !tbaa !14
  %44 = add nsw i64 %43, 1
  store i64 %44, ptr %42, align 8, !tbaa !14
  br label %45

45:                                               ; preds = %24, %41
  %46 = load ptr, ptr %25, align 8, !tbaa !5
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %24, !llvm.loop !85

48:                                               ; preds = %45, %18
  %49 = add i64 %19, 1
  %50 = load i64, ptr %17, align 8, !tbaa !42
  %51 = icmp ugt i64 %49, %50
  br i1 %51, label %62, label %18, !llvm.loop !86

52:                                               ; preds = %12, %3
  tail call fastcc void @S_hfreeentries(ptr noundef nonnull %0) #17
  tail call void @Perl_hv_placeholders_set(ptr noundef nonnull %0, i32 noundef 0) #17
  %53 = load i32, ptr %8, align 4, !tbaa !16
  %54 = and i32 %53, 8388608
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  %57 = tail call i32 @Perl_mg_clear(ptr noundef nonnull %0) #16
  %58 = load i32, ptr %8, align 4, !tbaa !16
  br label %59

59:                                               ; preds = %56, %52
  %60 = phi i32 [ %58, %56 ], [ %53, %52 ]
  %61 = and i32 %60, 2147483647
  store i32 %61, ptr %8, align 4, !tbaa !16
  br label %64

62:                                               ; preds = %48
  %63 = load i32, ptr %8, align 4, !tbaa !16
  br label %64

64:                                               ; preds = %62, %59
  %65 = phi i32 [ %63, %62 ], [ %61, %59 ]
  %66 = and i32 %65, 33554432
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %84, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !31
  %71 = load ptr, ptr %0, align 8, !tbaa !34
  %72 = getelementptr inbounds %struct.xpvhv, ptr %71, i64 0, i32 3
  %73 = load i64, ptr %72, align 8, !tbaa !42
  %74 = getelementptr ptr, ptr %70, i64 %73
  %75 = getelementptr ptr, ptr %74, i64 1
  %76 = load ptr, ptr %75, align 8, !tbaa !31
  %77 = icmp eq ptr %76, null
  br i1 %77, label %83, label %78

78:                                               ; preds = %68
  %79 = getelementptr i8, ptr %74, i64 36
  %80 = load i32, ptr %79, align 4, !tbaa !52
  %81 = icmp eq i32 %80, -1
  br i1 %81, label %83, label %82

82:                                               ; preds = %78
  tail call void @Perl_mro_isa_changed_in(ptr noundef nonnull %0) #16
  br label %83

83:                                               ; preds = %68, %78, %82
  tail call void @Perl_hv_eiter_set(ptr noundef nonnull %0, ptr noundef null) #17
  br label %84

84:                                               ; preds = %83, %64
  tail call void @Perl_pop_scope() #16
  br label %85

85:                                               ; preds = %1, %84
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_hv_iterkeysv(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.he, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !9
  %4 = tail call ptr @Perl_newSVhek(ptr noundef %3) #16
  %5 = tail call ptr @Perl_sv_2mortal(ptr noundef %4) #16
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_hfreeentries(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  store i64 0, ptr %2, align 8, !tbaa !14
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.xpvhv, ptr %3, i64 0, i32 2
  br label %5

5:                                                ; preds = %11, %1
  %6 = call ptr @Perl_hfree_next_entry(ptr noundef nonnull %0, ptr noundef nonnull %2) #17
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = load i64, ptr %4, align 8, !tbaa !50
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %5, %8
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %6) #17
  br label %5, !llvm.loop !87

12:                                               ; preds = %8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_hv_placeholders_set(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @Perl_mg_find(ptr noundef %0, i32 noundef 37) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds %struct.magic, ptr %3, i64 0, i32 5
  store i64 %6, ptr %7, align 8, !tbaa !68
  br label %15

8:                                                ; preds = %2
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %8
  %11 = tail call ptr @Perl_sv_magicext(ptr noundef %0, ptr noundef null, i32 noundef 37, ptr noundef null, ptr noundef null, i32 noundef %1) #16
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.9) #16
  br label %15

15:                                               ; preds = %8, %13, %10, %5
  ret void
}

; Function Attrs: optsize
declare i32 @Perl_mg_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_mro_isa_changed_in(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_hv_clear_placeholders(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.xpvmg, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !31
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @Perl_hv_placeholders_get(ptr noundef nonnull %0) #17
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call fastcc void @S_clear_placeholders(ptr noundef nonnull %0, i32 noundef %7) #17
  br label %10

10:                                               ; preds = %1, %9, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_hfree_next_entry(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !16
  %6 = and i32 %5, 33554432
  %7 = icmp eq i32 %6, 0
  %8 = load ptr, ptr %0, align 8, !tbaa !34
  br i1 %7, label %47, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !31
  %12 = getelementptr inbounds %struct.xpvhv, ptr %8, i64 0, i32 3
  %13 = load i64, ptr %12, align 8, !tbaa !42
  %14 = getelementptr ptr, ptr %11, i64 %13
  %15 = getelementptr ptr, ptr %14, i64 1
  %16 = icmp eq ptr %15, null
  br i1 %16, label %47, label %17

17:                                               ; preds = %9
  %18 = getelementptr ptr, ptr %14, i64 3
  %19 = load ptr, ptr %18, align 8, !tbaa !60
  %20 = icmp eq ptr %19, null
  br i1 %20, label %40, label %21

21:                                               ; preds = %17
  %22 = and i32 %5, 1073741824
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = and i32 %5, -1073741825
  store i32 %25, ptr %4, align 4, !tbaa !16
  tail call void @Perl_hv_free_ent(ptr noundef nonnull %0, ptr noundef nonnull %19) #17
  %26 = load ptr, ptr %10, align 8, !tbaa !31
  %27 = load ptr, ptr %0, align 8, !tbaa !34
  %28 = getelementptr inbounds %struct.xpvhv, ptr %27, i64 0, i32 3
  %29 = load i64, ptr %28, align 8, !tbaa !42
  br label %30

30:                                               ; preds = %24, %21
  %31 = phi i64 [ %29, %24 ], [ %13, %21 ]
  %32 = phi ptr [ %27, %24 ], [ %8, %21 ]
  %33 = phi ptr [ %26, %24 ], [ %11, %21 ]
  %34 = getelementptr ptr, ptr %33, i64 %31
  %35 = getelementptr ptr, ptr %34, i64 4
  store i32 -1, ptr %35, align 8, !tbaa !77
  %36 = getelementptr ptr, ptr %34, i64 3
  store ptr null, ptr %36, align 8, !tbaa !60
  %37 = getelementptr ptr, ptr %34, i64 6
  %38 = load i32, ptr %37, align 8, !tbaa !49
  %39 = getelementptr i8, ptr %34, i64 52
  store i32 %38, ptr %39, align 4, !tbaa !80
  br label %40

40:                                               ; preds = %30, %17
  %41 = phi ptr [ %32, %30 ], [ %8, %17 ]
  %42 = phi ptr [ %34, %30 ], [ %14, %17 ]
  %43 = getelementptr ptr, ptr %42, i64 7
  %44 = load i32, ptr %43, align 8, !tbaa !47
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  store i32 0, ptr %43, align 8, !tbaa !47
  br label %47

47:                                               ; preds = %40, %46, %9, %2
  %48 = phi ptr [ %41, %40 ], [ %41, %46 ], [ %8, %9 ], [ %8, %2 ]
  %49 = getelementptr inbounds %struct.xpvhv, ptr %48, i64 0, i32 2
  %50 = load i64, ptr %49, align 8, !tbaa !50
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %184, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !31
  %55 = load i64, ptr %1, align 8, !tbaa !14
  %56 = getelementptr inbounds ptr, ptr %54, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !5
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %70

59:                                               ; preds = %52, %59
  %60 = phi i64 [ %66, %59 ], [ %55, %52 ]
  %61 = add i64 %60, 1
  store i64 %61, ptr %1, align 8, !tbaa !14
  %62 = load ptr, ptr %0, align 8, !tbaa !34
  %63 = getelementptr inbounds %struct.xpvhv, ptr %62, i64 0, i32 3
  %64 = load i64, ptr %63, align 8, !tbaa !42
  %65 = icmp ult i64 %60, %64
  %66 = select i1 %65, i64 %61, i64 0
  store i64 %66, ptr %1, align 8
  %67 = getelementptr inbounds ptr, ptr %54, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !5
  %69 = icmp eq ptr %68, null
  br i1 %69, label %59, label %70, !llvm.loop !88

70:                                               ; preds = %59, %52
  %71 = phi i64 [ %55, %52 ], [ %66, %59 ]
  %72 = phi ptr [ %57, %52 ], [ %68, %59 ]
  %73 = getelementptr inbounds ptr, ptr %54, i64 %71
  %74 = load ptr, ptr %72, align 8, !tbaa !11
  store ptr %74, ptr %73, align 8, !tbaa !5
  %75 = load ptr, ptr %0, align 8, !tbaa !34
  %76 = getelementptr inbounds %struct.xpvhv, ptr %75, i64 0, i32 2
  %77 = load i64, ptr %76, align 8, !tbaa !50
  %78 = add i64 %77, -1
  store i64 %78, ptr %76, align 8, !tbaa !50
  %79 = load i32, ptr @PL_phase, align 4, !tbaa !63
  %80 = icmp eq i32 %79, 6
  br i1 %80, label %182, label %81

81:                                               ; preds = %70
  %82 = load i32, ptr %4, align 4, !tbaa !16
  %83 = and i32 %82, 33554432
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %182, label %85

85:                                               ; preds = %81
  %86 = load ptr, ptr %53, align 8, !tbaa !31
  %87 = getelementptr inbounds %struct.xpvhv, ptr %75, i64 0, i32 3
  %88 = load i64, ptr %87, align 8, !tbaa !42
  %89 = getelementptr ptr, ptr %86, i64 %88
  %90 = getelementptr ptr, ptr %89, i64 1
  %91 = load ptr, ptr %90, align 8, !tbaa !31
  %92 = icmp eq ptr %91, null
  br i1 %92, label %182, label %93

93:                                               ; preds = %85
  %94 = getelementptr i8, ptr %89, i64 36
  %95 = load i32, ptr %94, align 4, !tbaa !52
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %182, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.he, ptr %72, i64 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !31
  %100 = icmp eq ptr %99, null
  br i1 %100, label %182, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.sv, ptr %99, i64 0, i32 2
  %103 = load i32, ptr %102, align 4, !tbaa !26
  %104 = and i32 %103, 255
  %105 = icmp eq i32 %104, 9
  br i1 %105, label %106, label %182

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.sv, ptr %99, i64 0, i32 3
  %108 = load ptr, ptr %107, align 8, !tbaa !31
  %109 = getelementptr inbounds %struct.gp, ptr %108, i64 0, i32 5
  %110 = load ptr, ptr %109, align 8, !tbaa !55
  %111 = icmp eq ptr %110, null
  br i1 %111, label %182, label %112

112:                                              ; preds = %106
  %113 = getelementptr inbounds %struct.hv, ptr %110, i64 0, i32 2
  %114 = load i32, ptr %113, align 4, !tbaa !16
  %115 = and i32 %114, 33554432
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %182, label %117

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.hv, ptr %110, i64 0, i32 3
  %119 = load ptr, ptr %118, align 8, !tbaa !31
  %120 = load ptr, ptr %110, align 8, !tbaa !34
  %121 = getelementptr inbounds %struct.xpvhv, ptr %120, i64 0, i32 3
  %122 = load i64, ptr %121, align 8, !tbaa !42
  %123 = getelementptr ptr, ptr %119, i64 %122
  %124 = getelementptr ptr, ptr %123, i64 1
  %125 = load ptr, ptr %124, align 8, !tbaa !31
  %126 = icmp eq ptr %125, null
  br i1 %126, label %182, label %127

127:                                              ; preds = %117
  %128 = getelementptr i8, ptr %123, i64 36
  %129 = load i32, ptr %128, align 4, !tbaa !52
  %130 = icmp eq i32 %129, -1
  br i1 %130, label %182, label %131

131:                                              ; preds = %127
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  %132 = getelementptr inbounds %struct.he, ptr %72, i64 0, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !9
  %134 = getelementptr inbounds %struct.hek, ptr %133, i64 0, i32 1
  %135 = load i32, ptr %134, align 4, !tbaa !37
  %136 = icmp eq i32 %135, -2
  br i1 %136, label %137, label %153

137:                                              ; preds = %131
  %138 = getelementptr inbounds %struct.hek, ptr %133, i64 0, i32 2
  %139 = load ptr, ptr %138, align 4, !tbaa !5
  %140 = getelementptr inbounds %struct.sv, ptr %139, i64 0, i32 2
  %141 = load i32, ptr %140, align 4, !tbaa !26
  %142 = and i32 %141, 2098176
  %143 = icmp eq i32 %142, 1024
  br i1 %143, label %144, label %150

144:                                              ; preds = %137
  %145 = load ptr, ptr %139, align 8, !tbaa !28
  %146 = getelementptr inbounds %struct.xpv, ptr %145, i64 0, i32 2
  %147 = load i64, ptr %146, align 8, !tbaa !29
  store i64 %147, ptr %3, align 8, !tbaa !14
  %148 = getelementptr inbounds %struct.sv, ptr %139, i64 0, i32 3
  %149 = load ptr, ptr %148, align 8, !tbaa !31
  br label %156

150:                                              ; preds = %137
  %151 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %139, ptr noundef nonnull %3, i32 noundef 2) #16
  %152 = load i64, ptr %3, align 8, !tbaa !14
  br label %156

153:                                              ; preds = %131
  %154 = sext i32 %135 to i64
  store i64 %154, ptr %3, align 8, !tbaa !14
  %155 = getelementptr inbounds %struct.hek, ptr %133, i64 0, i32 2
  br label %156

156:                                              ; preds = %144, %150, %153
  %157 = phi i64 [ %147, %144 ], [ %152, %150 ], [ %154, %153 ]
  %158 = phi ptr [ %149, %144 ], [ %151, %150 ], [ %155, %153 ]
  %159 = icmp ugt i64 %157, 1
  br i1 %159, label %160, label %170

160:                                              ; preds = %156
  %161 = add i64 %157, -1
  %162 = getelementptr inbounds i8, ptr %158, i64 %161
  %163 = load i8, ptr %162, align 1, !tbaa !31
  %164 = icmp eq i8 %163, 58
  br i1 %164, label %165, label %181

165:                                              ; preds = %160
  %166 = add i64 %157, -2
  %167 = getelementptr inbounds i8, ptr %158, i64 %166
  %168 = load i8, ptr %167, align 1, !tbaa !31
  %169 = icmp eq i8 %168, 58
  br i1 %169, label %175, label %181

170:                                              ; preds = %156
  %171 = icmp eq i64 %157, 1
  br i1 %171, label %172, label %181

172:                                              ; preds = %170
  %173 = load i8, ptr %158, align 1, !tbaa !31
  %174 = icmp eq i8 %173, 58
  br i1 %174, label %175, label %181

175:                                              ; preds = %172, %165
  %176 = load ptr, ptr %98, align 8, !tbaa !31
  %177 = getelementptr inbounds %struct.sv, ptr %176, i64 0, i32 3
  %178 = load ptr, ptr %177, align 8, !tbaa !31
  %179 = getelementptr inbounds %struct.gp, ptr %178, i64 0, i32 5
  %180 = load ptr, ptr %179, align 8, !tbaa !55
  call void @Perl_mro_package_moved(ptr noundef null, ptr noundef %180, ptr noundef %176, i32 noundef 0) #16
  br label %181

181:                                              ; preds = %160, %165, %175, %172, %170
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  br label %182

182:                                              ; preds = %112, %117, %127, %81, %85, %93, %181, %106, %101, %97, %70
  %183 = call fastcc ptr @S_hv_free_ent_ret(ptr noundef nonnull %0, ptr noundef nonnull %72) #17
  br label %184

184:                                              ; preds = %47, %182
  %185 = phi ptr [ %183, %182 ], [ null, %47 ]
  ret ptr %185
}

; Function Attrs: optsize
declare void @Perl_mro_package_moved(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_hv_undef_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %325, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !84
  %7 = icmp eq i32 %6, 0
  %8 = load ptr, ptr %0, align 8, !tbaa !34
  %9 = load i32, ptr @PL_phase, align 4, !tbaa !63
  %10 = icmp eq i32 %9, 6
  br i1 %10, label %63, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !16
  %14 = and i32 %13, 33554432
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %63, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !31
  %19 = getelementptr inbounds %struct.xpvhv, ptr %8, i64 0, i32 3
  %20 = load i64, ptr %19, align 8, !tbaa !42
  %21 = getelementptr ptr, ptr %18, i64 %20
  %22 = getelementptr ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !31
  %24 = icmp eq ptr %23, null
  br i1 %24, label %63, label %25

25:                                               ; preds = %16
  %26 = getelementptr i8, ptr %21, i64 36
  %27 = load i32, ptr %26, align 4, !tbaa !52
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %23, align 8, !tbaa !5
  %31 = icmp eq ptr %30, null
  br i1 %31, label %63, label %35

32:                                               ; preds = %25
  %33 = load ptr, ptr @PL_stashcache, align 8, !tbaa !5
  %34 = icmp eq ptr %33, null
  br i1 %34, label %62, label %38

35:                                               ; preds = %29
  %36 = load ptr, ptr @PL_stashcache, align 8, !tbaa !5
  %37 = icmp eq ptr %36, null
  br i1 %37, label %62, label %44

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.hek, ptr %23, i64 0, i32 1
  %40 = load i32, ptr %39, align 4, !tbaa !37
  %41 = getelementptr inbounds %struct.hek, ptr %23, i64 0, i32 2
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i8, ptr %41, i64 %42
  br label %50

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.hek, ptr %30, i64 0, i32 1
  %46 = load i32, ptr %45, align 4, !tbaa !37
  %47 = getelementptr inbounds %struct.hek, ptr %30, i64 0, i32 2
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i8, ptr %47, i64 %48
  br label %50

50:                                               ; preds = %38, %44
  %51 = phi i64 [ %42, %38 ], [ %48, %44 ]
  %52 = phi ptr [ %43, %38 ], [ %49, %44 ]
  %53 = phi ptr [ %33, %38 ], [ %36, %44 ]
  %54 = phi ptr [ %23, %38 ], [ %30, %44 ]
  %55 = getelementptr inbounds %struct.hek, ptr %54, i64 0, i32 2
  %56 = getelementptr inbounds i8, ptr %52, i64 1
  %57 = load i8, ptr %56, align 1, !tbaa !31
  %58 = and i8 %57, 1
  %59 = zext nneg i8 %58 to i32
  %60 = load i32, ptr %54, align 4, !tbaa !44
  %61 = tail call ptr @Perl_hv_common(ptr noundef nonnull %53, ptr noundef null, ptr noundef nonnull %55, i64 noundef %51, i32 noundef %59, i32 noundef 68, ptr noundef null, i32 noundef %60) #17
  br label %62

62:                                               ; preds = %35, %50, %32
  tail call void @Perl_hv_name_set(ptr noundef nonnull %0, ptr noundef null, i32 noundef 0, i32 noundef 0) #17
  br label %63

63:                                               ; preds = %11, %16, %29, %62, %4
  br i1 %7, label %67, label %64

64:                                               ; preds = %63
  tail call void @Perl_push_scope() #16
  %65 = load i32, ptr %5, align 8, !tbaa !84
  %66 = add i32 %65, 1
  store i32 %66, ptr %5, align 8, !tbaa !84
  tail call void @Perl_save_pushptr(ptr noundef nonnull %0, i32 noundef 11) #16
  br label %67

67:                                               ; preds = %64, %63
  tail call fastcc void @S_hfreeentries(ptr noundef nonnull %0) #17
  %68 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %69 = load i32, ptr %68, align 4, !tbaa !16
  %70 = and i32 %69, 33554432
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %305, label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !31
  %75 = load ptr, ptr %0, align 8, !tbaa !34
  %76 = getelementptr inbounds %struct.xpvhv, ptr %75, i64 0, i32 3
  %77 = load i64, ptr %76, align 8, !tbaa !42
  %78 = getelementptr ptr, ptr %74, i64 %77
  %79 = getelementptr ptr, ptr %78, i64 1
  %80 = load ptr, ptr %79, align 8, !tbaa !31
  %81 = icmp eq ptr %80, null
  br i1 %81, label %167, label %82

82:                                               ; preds = %72
  %83 = getelementptr i8, ptr %78, i64 36
  %84 = load i32, ptr %83, align 4, !tbaa !52
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %167, label %86

86:                                               ; preds = %82
  %87 = load i32, ptr @PL_phase, align 4, !tbaa !63
  %88 = icmp eq i32 %87, 6
  br i1 %88, label %91, label %89

89:                                               ; preds = %86
  tail call void @Perl_mro_isa_changed_in(ptr noundef nonnull %0) #16
  %90 = load i32, ptr %68, align 4, !tbaa !16
  br label %91

91:                                               ; preds = %89, %86
  %92 = phi i32 [ %90, %89 ], [ %69, %86 ]
  %93 = load ptr, ptr @PL_stashcache, align 8, !tbaa !5
  %94 = icmp eq ptr %93, null
  br i1 %94, label %167, label %95

95:                                               ; preds = %91
  %96 = and i32 %92, 33554432
  %97 = icmp eq i32 %96, 0
  %98 = load ptr, ptr %73, align 8, !tbaa !31
  %99 = load ptr, ptr %0, align 8, !tbaa !34
  %100 = getelementptr inbounds %struct.xpvhv, ptr %99, i64 0, i32 3
  %101 = load i64, ptr %100, align 8, !tbaa !42
  %102 = getelementptr ptr, ptr %98, i64 %101
  %103 = getelementptr ptr, ptr %102, i64 1
  %104 = load ptr, ptr %103, align 8, !tbaa !31
  br i1 %97, label %121, label %105

105:                                              ; preds = %95
  %106 = icmp eq ptr %104, null
  br i1 %106, label %121, label %107

107:                                              ; preds = %105
  %108 = getelementptr i8, ptr %102, i64 36
  %109 = load i32, ptr %108, align 4, !tbaa !52
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  %112 = load ptr, ptr %104, align 8, !tbaa !5
  br label %121

113:                                              ; preds = %107
  %114 = icmp slt i32 %109, -1
  br i1 %114, label %115, label %118

115:                                              ; preds = %113
  %116 = getelementptr inbounds ptr, ptr %104, i64 1
  %117 = load ptr, ptr %116, align 8, !tbaa !5
  br label %121

118:                                              ; preds = %113
  %119 = icmp eq i32 %109, -1
  %120 = select i1 %119, ptr null, ptr %104
  br label %121

121:                                              ; preds = %95, %118, %105, %111, %115
  %122 = phi ptr [ %104, %111 ], [ %104, %115 ], [ null, %105 ], [ %104, %118 ], [ %104, %95 ]
  %123 = phi ptr [ %112, %111 ], [ %117, %115 ], [ null, %105 ], [ %120, %118 ], [ null, %95 ]
  %124 = getelementptr inbounds %struct.hek, ptr %123, i64 0, i32 2
  %125 = icmp ne i32 %96, 0
  tail call void @llvm.assume(i1 %125)
  %126 = getelementptr ptr, ptr %98, i64 %101
  %127 = getelementptr i8, ptr %126, i64 36
  %128 = load i32, ptr %127, align 4, !tbaa !52
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %121
  %131 = icmp slt i32 %128, -1
  br i1 %131, label %140, label %149

132:                                              ; preds = %121
  %133 = load ptr, ptr %122, align 8, !tbaa !5
  %134 = getelementptr inbounds %struct.hek, ptr %133, i64 0, i32 1
  %135 = load i32, ptr %134, align 4, !tbaa !37
  %136 = getelementptr inbounds %struct.hek, ptr %133, i64 0, i32 2
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i8, ptr %136, i64 %137
  %139 = getelementptr inbounds i8, ptr %138, i64 1
  br label %157

140:                                              ; preds = %130
  %141 = getelementptr inbounds ptr, ptr %122, i64 1
  %142 = load ptr, ptr %141, align 8, !tbaa !5
  %143 = getelementptr inbounds %struct.hek, ptr %142, i64 0, i32 1
  %144 = load i32, ptr %143, align 4, !tbaa !37
  %145 = getelementptr inbounds %struct.hek, ptr %142, i64 0, i32 2
  %146 = sext i32 %144 to i64
  %147 = getelementptr inbounds i8, ptr %145, i64 %146
  %148 = getelementptr inbounds i8, ptr %147, i64 1
  br label %157

149:                                              ; preds = %130
  %150 = getelementptr inbounds %struct.hek, ptr %122, i64 0, i32 1
  %151 = load i32, ptr %150, align 4, !tbaa !37
  %152 = getelementptr inbounds %struct.hek, ptr %122, i64 0, i32 2
  %153 = sext i32 %151 to i64
  %154 = getelementptr inbounds i8, ptr %152, i64 %153
  %155 = getelementptr inbounds i8, ptr %154, i64 1
  %156 = icmp ne i32 %128, -1
  tail call void @llvm.assume(i1 %156)
  br label %157

157:                                              ; preds = %132, %149, %140
  %158 = phi i64 [ %137, %132 ], [ %153, %149 ], [ %146, %140 ]
  %159 = phi ptr [ %139, %132 ], [ %155, %149 ], [ %148, %140 ]
  %160 = phi ptr [ %133, %132 ], [ %122, %149 ], [ %142, %140 ]
  %161 = load i8, ptr %159, align 1, !tbaa !31
  %162 = and i8 %161, 1
  %163 = zext nneg i8 %162 to i32
  %164 = load i32, ptr %160, align 4, !tbaa !44
  %165 = tail call ptr @Perl_hv_common(ptr noundef nonnull %93, ptr noundef null, ptr noundef nonnull %124, i64 noundef %158, i32 noundef %163, i32 noundef 68, ptr noundef null, i32 noundef %164) #17
  %166 = load i32, ptr %68, align 4, !tbaa !16
  br label %167

167:                                              ; preds = %91, %157, %72, %82
  %168 = phi i32 [ %92, %91 ], [ %166, %157 ], [ %69, %72 ], [ %69, %82 ]
  %169 = and i32 %168, 33554432
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %190, label %171

171:                                              ; preds = %167
  %172 = load ptr, ptr %73, align 8, !tbaa !31
  %173 = load ptr, ptr %0, align 8, !tbaa !34
  %174 = getelementptr inbounds %struct.xpvhv, ptr %173, i64 0, i32 3
  %175 = load i64, ptr %174, align 8, !tbaa !42
  %176 = getelementptr ptr, ptr %172, i64 %175
  %177 = getelementptr ptr, ptr %176, i64 1
  %178 = load ptr, ptr %177, align 8, !tbaa !31
  %179 = icmp eq ptr %178, null
  br i1 %179, label %190, label %180

180:                                              ; preds = %171
  %181 = getelementptr i8, ptr %176, i64 36
  %182 = load i32, ptr %181, align 4, !tbaa !52
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %187, label %184

184:                                              ; preds = %180
  %185 = load ptr, ptr %178, align 8, !tbaa !31
  %186 = icmp eq ptr %185, null
  br i1 %186, label %190, label %187

187:                                              ; preds = %180, %184
  %188 = phi ptr [ %185, %184 ], [ %178, %180 ]
  %189 = getelementptr inbounds %struct.hek, ptr %188, i64 0, i32 2
  br label %190

190:                                              ; preds = %167, %171, %184, %187
  %191 = phi ptr [ %189, %187 ], [ null, %184 ], [ null, %171 ], [ null, %167 ]
  %192 = and i32 %1, 2
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %203, label %194

194:                                              ; preds = %190
  %195 = load ptr, ptr %73, align 8, !tbaa !31
  %196 = load ptr, ptr %0, align 8, !tbaa !34
  %197 = getelementptr inbounds %struct.xpvhv, ptr %196, i64 0, i32 3
  %198 = load i64, ptr %197, align 8, !tbaa !42
  %199 = getelementptr ptr, ptr %195, i64 %198
  %200 = getelementptr ptr, ptr %199, i64 1
  %201 = load ptr, ptr %200, align 8, !tbaa !31
  %202 = icmp eq ptr %201, null
  br i1 %202, label %259, label %205

203:                                              ; preds = %190
  %204 = icmp eq ptr %191, null
  br i1 %204, label %259, label %205

205:                                              ; preds = %203, %194
  %206 = icmp ne ptr %191, null
  %207 = load ptr, ptr @PL_stashcache, align 8
  %208 = icmp ne ptr %207, null
  %209 = select i1 %206, i1 %208, i1 false
  br i1 %209, label %210, label %258

210:                                              ; preds = %205
  %211 = load ptr, ptr %73, align 8, !tbaa !31
  %212 = load ptr, ptr %0, align 8, !tbaa !34
  %213 = getelementptr inbounds %struct.xpvhv, ptr %212, i64 0, i32 3
  %214 = load i64, ptr %213, align 8, !tbaa !42
  %215 = getelementptr ptr, ptr %211, i64 %214
  %216 = getelementptr ptr, ptr %215, i64 1
  %217 = load ptr, ptr %216, align 8, !tbaa !31
  br i1 %170, label %226, label %218

218:                                              ; preds = %210
  %219 = icmp eq ptr %217, null
  br i1 %219, label %226, label %220

220:                                              ; preds = %218
  %221 = getelementptr i8, ptr %215, i64 36
  %222 = load i32, ptr %221, align 4, !tbaa !52
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %226, label %224

224:                                              ; preds = %220
  %225 = load ptr, ptr %217, align 8, !tbaa !5
  br label %226

226:                                              ; preds = %210, %220, %218, %224
  %227 = phi ptr [ %217, %224 ], [ null, %218 ], [ %217, %220 ], [ %217, %210 ]
  %228 = phi ptr [ %225, %224 ], [ null, %218 ], [ %217, %220 ], [ null, %210 ]
  %229 = getelementptr inbounds %struct.hek, ptr %228, i64 0, i32 2
  %230 = icmp ne i32 %169, 0
  tail call void @llvm.assume(i1 %230)
  %231 = getelementptr ptr, ptr %211, i64 %214
  %232 = getelementptr i8, ptr %231, i64 36
  %233 = load i32, ptr %232, align 4, !tbaa !52
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %241

235:                                              ; preds = %226
  %236 = getelementptr inbounds %struct.hek, ptr %227, i64 0, i32 1
  %237 = load i32, ptr %236, align 4, !tbaa !37
  %238 = getelementptr inbounds %struct.hek, ptr %227, i64 0, i32 2
  %239 = sext i32 %237 to i64
  %240 = getelementptr inbounds i8, ptr %238, i64 %239
  br label %248

241:                                              ; preds = %226
  %242 = load ptr, ptr %227, align 8, !tbaa !5
  %243 = getelementptr inbounds %struct.hek, ptr %242, i64 0, i32 1
  %244 = load i32, ptr %243, align 4, !tbaa !37
  %245 = getelementptr inbounds %struct.hek, ptr %242, i64 0, i32 2
  %246 = sext i32 %244 to i64
  %247 = getelementptr inbounds i8, ptr %245, i64 %246
  br label %248

248:                                              ; preds = %235, %241
  %249 = phi i64 [ %239, %235 ], [ %246, %241 ]
  %250 = phi ptr [ %240, %235 ], [ %247, %241 ]
  %251 = phi ptr [ %227, %235 ], [ %242, %241 ]
  %252 = getelementptr inbounds i8, ptr %250, i64 1
  %253 = load i8, ptr %252, align 1, !tbaa !31
  %254 = and i8 %253, 1
  %255 = zext nneg i8 %254 to i32
  %256 = load i32, ptr %251, align 4, !tbaa !44
  %257 = tail call ptr @Perl_hv_common(ptr noundef nonnull %207, ptr noundef null, ptr noundef nonnull %229, i64 noundef %249, i32 noundef %255, i32 noundef 68, ptr noundef null, i32 noundef %256) #17
  br label %258

258:                                              ; preds = %248, %205
  tail call void @Perl_hv_name_set(ptr noundef nonnull %0, ptr noundef null, i32 noundef 0, i32 noundef %1) #17
  br label %259

259:                                              ; preds = %258, %203, %194
  %260 = load ptr, ptr %73, align 8, !tbaa !31
  %261 = load ptr, ptr %0, align 8, !tbaa !34
  %262 = getelementptr inbounds %struct.xpvhv, ptr %261, i64 0, i32 3
  %263 = load i64, ptr %262, align 8, !tbaa !42
  %264 = getelementptr ptr, ptr %260, i64 %263
  %265 = getelementptr ptr, ptr %264, i64 5
  %266 = load ptr, ptr %265, align 8, !tbaa !89
  %267 = icmp eq ptr %266, null
  br i1 %267, label %289, label %268

268:                                              ; preds = %259
  %269 = load ptr, ptr %266, align 8, !tbaa !90
  %270 = icmp eq ptr %269, null
  br i1 %270, label %272, label %271

271:                                              ; preds = %268
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %269) #17
  br label %275

272:                                              ; preds = %268
  %273 = getelementptr inbounds %struct.mro_meta, ptr %266, i64 0, i32 1
  %274 = load ptr, ptr %273, align 8, !tbaa !92
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %274) #17
  br label %275

275:                                              ; preds = %272, %271
  %276 = getelementptr inbounds %struct.mro_meta, ptr %266, i64 0, i32 2
  %277 = load ptr, ptr %276, align 8, !tbaa !93
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %277) #17
  %278 = getelementptr inbounds %struct.mro_meta, ptr %266, i64 0, i32 6
  %279 = load ptr, ptr %278, align 8, !tbaa !94
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %279) #17
  %280 = getelementptr inbounds %struct.mro_meta, ptr %266, i64 0, i32 7
  %281 = load ptr, ptr %280, align 8, !tbaa !95
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %281) #17
  tail call void @Perl_safesysfree(ptr noundef nonnull %266) #16
  %282 = load ptr, ptr %73, align 8, !tbaa !31
  %283 = load ptr, ptr %0, align 8, !tbaa !34
  %284 = getelementptr inbounds %struct.xpvhv, ptr %283, i64 0, i32 3
  %285 = load i64, ptr %284, align 8, !tbaa !42
  %286 = getelementptr ptr, ptr %282, i64 %285
  %287 = getelementptr ptr, ptr %286, i64 5
  store ptr null, ptr %287, align 8, !tbaa !89
  %288 = load ptr, ptr %73, align 8, !tbaa !31
  br label %289

289:                                              ; preds = %275, %259
  %290 = phi i64 [ %285, %275 ], [ %263, %259 ]
  %291 = phi ptr [ %288, %275 ], [ %260, %259 ]
  %292 = getelementptr ptr, ptr %291, i64 %290
  %293 = getelementptr ptr, ptr %292, i64 1
  %294 = load ptr, ptr %293, align 8, !tbaa !31
  %295 = icmp eq ptr %294, null
  br i1 %295, label %298, label %296

296:                                              ; preds = %289
  %297 = load i32, ptr %68, align 4, !tbaa !16
  br label %305

298:                                              ; preds = %289
  %299 = getelementptr ptr, ptr %292, i64 2
  %300 = load ptr, ptr %299, align 8, !tbaa !96
  %301 = icmp eq ptr %300, null
  %302 = load i32, ptr %68, align 4, !tbaa !16
  br i1 %301, label %303, label %305

303:                                              ; preds = %298
  %304 = and i32 %302, -33554433
  store i32 %304, ptr %68, align 4, !tbaa !16
  br label %305

305:                                              ; preds = %296, %298, %303, %67
  %306 = phi i32 [ %297, %296 ], [ %302, %298 ], [ %304, %303 ], [ %69, %67 ]
  %307 = and i32 %306, 33554432
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %313

309:                                              ; preds = %305
  %310 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %311 = load ptr, ptr %310, align 8, !tbaa !31
  tail call void @Perl_safesysfree(ptr noundef %311) #16
  %312 = getelementptr inbounds %struct.xpvhv, ptr %8, i64 0, i32 3
  store i64 7, ptr %312, align 8, !tbaa !42
  store ptr null, ptr %310, align 8, !tbaa !31
  br label %313

313:                                              ; preds = %309, %305
  %314 = load i32, ptr %5, align 8, !tbaa !84
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %317, label %316

316:                                              ; preds = %313
  tail call void @Perl_hv_placeholders_set(ptr noundef nonnull %0, i32 noundef 0) #17
  br label %317

317:                                              ; preds = %316, %313
  %318 = load i32, ptr %68, align 4, !tbaa !16
  %319 = and i32 %318, 8388608
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %323, label %321

321:                                              ; preds = %317
  %322 = tail call i32 @Perl_mg_clear(ptr noundef nonnull %0) #16
  br label %323

323:                                              ; preds = %321, %317
  br i1 %7, label %325, label %324

324:                                              ; preds = %323
  tail call void @Perl_pop_scope() #16
  br label %325

325:                                              ; preds = %323, %324, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_hv_name_set(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp slt i32 %2, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = zext i32 %2 to i64
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.6, i64 noundef %7) #16
  br label %8

8:                                                ; preds = %6, %4
  %9 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !16
  %11 = and i32 %10, 33554432
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %84, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !31
  %16 = load ptr, ptr %0, align 8, !tbaa !34
  %17 = getelementptr inbounds %struct.xpvhv, ptr %16, i64 0, i32 3
  %18 = load i64, ptr %17, align 8, !tbaa !42
  %19 = getelementptr ptr, ptr %15, i64 %18
  %20 = getelementptr ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !31
  %22 = icmp eq ptr %21, null
  %23 = getelementptr i8, ptr %19, i64 36
  br i1 %22, label %83, label %24

24:                                               ; preds = %13
  %25 = load i32, ptr %23, align 4, !tbaa !52
  %26 = icmp eq i32 %25, 0
  %27 = and i32 %3, 2
  %28 = icmp eq i32 %27, 0
  br i1 %26, label %72, label %29

29:                                               ; preds = %24
  br i1 %28, label %54, label %30

30:                                               ; preds = %29
  %31 = tail call i32 @llvm.abs.i32(i32 %25, i1 true)
  %32 = icmp ugt i32 %31, 1
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = zext nneg i32 %31 to i64
  %35 = shl nuw nsw i64 %34, 3
  br label %36

36:                                               ; preds = %33, %36
  %37 = phi i64 [ %38, %36 ], [ %35, %33 ]
  %38 = add nsw i64 %37, -8
  %39 = getelementptr inbounds i8, ptr %21, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !5
  tail call fastcc void @S_unshare_hek_or_pvn(ptr noundef %40, ptr noundef null, i32 noundef 0, i32 noundef 0) #17
  %41 = icmp ugt i64 %37, 16
  br i1 %41, label %36, label %42, !llvm.loop !97

42:                                               ; preds = %36, %30
  %43 = load ptr, ptr %21, align 8, !tbaa !5
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  tail call fastcc void @S_unshare_hek_or_pvn(ptr noundef nonnull %43, ptr noundef null, i32 noundef 0, i32 noundef 0) #17
  br label %46

46:                                               ; preds = %45, %42
  tail call void @Perl_safesysfree(ptr noundef nonnull %21) #16
  %47 = load ptr, ptr %14, align 8, !tbaa !31
  %48 = load ptr, ptr %0, align 8, !tbaa !34
  %49 = getelementptr inbounds %struct.xpvhv, ptr %48, i64 0, i32 3
  %50 = load i64, ptr %49, align 8, !tbaa !42
  %51 = getelementptr ptr, ptr %47, i64 %50
  %52 = getelementptr ptr, ptr %51, i64 1
  %53 = getelementptr i8, ptr %51, i64 36
  store i32 0, ptr %53, align 4, !tbaa !52
  br label %90

54:                                               ; preds = %29
  %55 = icmp sgt i32 %25, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %54
  %57 = add nuw nsw i32 %25, 1
  %58 = zext nneg i32 %57 to i64
  %59 = shl nuw nsw i64 %58, 3
  %60 = tail call ptr @Perl_safesysrealloc(ptr noundef nonnull %21, i64 noundef %59) #16
  store ptr %60, ptr %20, align 8, !tbaa !31
  %61 = getelementptr inbounds ptr, ptr %60, i64 1
  %62 = load ptr, ptr %61, align 8, !tbaa !5
  %63 = load i32, ptr %23, align 4, !tbaa !52
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds ptr, ptr %60, i64 %64
  store ptr %62, ptr %65, align 8, !tbaa !5
  %66 = load ptr, ptr %60, align 8, !tbaa !5
  store ptr %66, ptr %61, align 8, !tbaa !5
  %67 = xor i32 %63, -1
  store i32 %67, ptr %23, align 4, !tbaa !52
  br label %90

68:                                               ; preds = %54
  %69 = load ptr, ptr %21, align 8, !tbaa !5
  %70 = icmp eq ptr %69, null
  br i1 %70, label %90, label %71

71:                                               ; preds = %68
  tail call fastcc void @S_unshare_hek_or_pvn(ptr noundef nonnull %69, ptr noundef null, i32 noundef 0, i32 noundef 0) #17
  br label %90

72:                                               ; preds = %24
  br i1 %28, label %80, label %73

73:                                               ; preds = %72
  tail call fastcc void @S_unshare_hek_or_pvn(ptr noundef nonnull %21, ptr noundef null, i32 noundef 0, i32 noundef 0) #17
  %74 = load ptr, ptr %14, align 8, !tbaa !31
  %75 = load ptr, ptr %0, align 8, !tbaa !34
  %76 = getelementptr inbounds %struct.xpvhv, ptr %75, i64 0, i32 3
  %77 = load i64, ptr %76, align 8, !tbaa !42
  %78 = getelementptr ptr, ptr %74, i64 %77
  %79 = getelementptr ptr, ptr %78, i64 1
  br label %90

80:                                               ; preds = %72
  %81 = tail call ptr @Perl_safesysmalloc(i64 noundef 16) #16
  store ptr %81, ptr %20, align 8, !tbaa !31
  store i32 -2, ptr %23, align 4, !tbaa !52
  %82 = getelementptr inbounds ptr, ptr %81, i64 1
  store ptr %21, ptr %82, align 8, !tbaa !5
  br label %90

83:                                               ; preds = %13
  store i32 0, ptr %23, align 4, !tbaa !52
  br label %90

84:                                               ; preds = %8
  %85 = icmp eq ptr %1, null
  br i1 %85, label %106, label %86

86:                                               ; preds = %84
  %87 = tail call fastcc ptr @S_hv_auxinit(ptr noundef nonnull %0) #17
  %88 = zext i32 %2 to i64
  %89 = tail call fastcc i32 @S_perl_hash_one_at_a_time_hard(ptr noundef nonnull %1, i64 noundef %88) #17
  br label %95

90:                                               ; preds = %83, %73, %80, %46, %68, %71, %56
  %91 = phi ptr [ %52, %46 ], [ %60, %56 ], [ %21, %71 ], [ %21, %68 ], [ %79, %73 ], [ %81, %80 ], [ %20, %83 ]
  %92 = zext i32 %2 to i64
  %93 = tail call fastcc i32 @S_perl_hash_one_at_a_time_hard(ptr noundef %1, i64 noundef %92) #17
  %94 = icmp eq ptr %1, null
  br i1 %94, label %103, label %95

95:                                               ; preds = %86, %90
  %96 = phi i32 [ %89, %86 ], [ %93, %90 ]
  %97 = phi ptr [ %87, %86 ], [ %91, %90 ]
  %98 = and i32 %3, 536870912
  %99 = icmp eq i32 %98, 0
  %100 = sub nsw i32 0, %2
  %101 = select i1 %99, i32 %2, i32 %100
  %102 = tail call ptr @Perl_share_hek(ptr noundef nonnull %1, i32 noundef %101, i32 noundef %96) #17
  br label %103

103:                                              ; preds = %90, %95
  %104 = phi ptr [ %97, %95 ], [ %91, %90 ]
  %105 = phi ptr [ %102, %95 ], [ null, %90 ]
  store ptr %105, ptr %104, align 8, !tbaa !5
  br label %106

106:                                              ; preds = %84, %103
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @S_hv_auxinit(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !16
  %4 = and i32 %3, 33554432
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !31
  br i1 %5, label %8, label %46

8:                                                ; preds = %1
  %9 = icmp eq ptr %7, null
  %10 = load ptr, ptr %0, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct.xpvhv, ptr %10, i64 0, i32 3
  %12 = load i64, ptr %11, align 8, !tbaa !42
  %13 = shl i64 %12, 3
  %14 = add i64 %13, 64
  br i1 %9, label %15, label %17

15:                                               ; preds = %8
  %16 = tail call ptr @Perl_safesyscalloc(i64 noundef %14, i64 noundef 1) #16
  br label %19

17:                                               ; preds = %8
  %18 = tail call ptr @Perl_safesysrealloc(ptr noundef nonnull %7, i64 noundef %14) #16
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi ptr [ %18, %17 ], [ %16, %15 ]
  store ptr %20, ptr %6, align 8, !tbaa !31
  %21 = load i32, ptr %2, align 4, !tbaa !16
  %22 = or i32 %21, 33554432
  store i32 %22, ptr %2, align 4, !tbaa !16
  %23 = load ptr, ptr %0, align 8, !tbaa !34
  %24 = getelementptr inbounds %struct.xpvhv, ptr %23, i64 0, i32 3
  %25 = load i64, ptr %24, align 8, !tbaa !42
  %26 = add i64 %25, 1
  %27 = getelementptr inbounds ptr, ptr %20, i64 %26
  %28 = load i8, ptr @PL_hash_rand_bits_enabled, align 1, !tbaa !31
  switch i8 %28, label %31 [
    i8 0, label %29
    i8 1, label %33
  ]

29:                                               ; preds = %19
  %30 = load i64, ptr @PL_hash_rand_bits, align 8, !tbaa !14
  br label %42

31:                                               ; preds = %19
  %32 = load i64, ptr @PL_hash_rand_bits, align 8, !tbaa !14
  br label %39

33:                                               ; preds = %19
  %34 = ptrtoint ptr %20 to i64
  %35 = tail call fastcc i32 @S_ptr_hash(i64 noundef %34) #17
  %36 = zext i32 %35 to i64
  %37 = load i64, ptr @PL_hash_rand_bits, align 8, !tbaa !14
  %38 = add i64 %37, %36
  br label %39

39:                                               ; preds = %31, %33
  %40 = phi i64 [ %32, %31 ], [ %38, %33 ]
  %41 = tail call i64 @llvm.fshl.i64(i64 %40, i64 %40, i64 1)
  store i64 %41, ptr @PL_hash_rand_bits, align 8, !tbaa !14
  br label %42

42:                                               ; preds = %29, %39
  %43 = phi i64 [ %30, %29 ], [ %41, %39 ]
  %44 = trunc i64 %43 to i32
  %45 = getelementptr inbounds %struct.xpvhv_aux, ptr %27, i64 0, i32 6
  store i32 %44, ptr %45, align 8, !tbaa !49
  br label %52

46:                                               ; preds = %1
  %47 = load ptr, ptr %0, align 8, !tbaa !34
  %48 = getelementptr inbounds %struct.xpvhv, ptr %47, i64 0, i32 3
  %49 = load i64, ptr %48, align 8, !tbaa !42
  %50 = getelementptr ptr, ptr %7, i64 %49
  %51 = getelementptr ptr, ptr %50, i64 1
  br label %52

52:                                               ; preds = %46, %42
  %53 = phi ptr [ %51, %46 ], [ %27, %42 ]
  %54 = tail call fastcc ptr @S_hv_auxinit_internal(ptr noundef %53) #17
  ret ptr %53
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local nonnull ptr @Perl_hv_riter_p(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !16
  %4 = and i32 %3, 33554432
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !31
  %9 = load ptr, ptr %0, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.xpvhv, ptr %9, i64 0, i32 3
  %11 = load i64, ptr %10, align 8, !tbaa !42
  %12 = getelementptr ptr, ptr %8, i64 %11
  %13 = getelementptr ptr, ptr %12, i64 1
  br label %16

14:                                               ; preds = %1
  %15 = tail call fastcc ptr @S_hv_auxinit(ptr noundef nonnull %0) #17
  br label %16

16:                                               ; preds = %14, %6
  %17 = phi ptr [ %13, %6 ], [ %15, %14 ]
  %18 = getelementptr inbounds %struct.xpvhv_aux, ptr %17, i64 0, i32 3
  ret ptr %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local nonnull ptr @Perl_hv_eiter_p(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !16
  %4 = and i32 %3, 33554432
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !31
  %9 = load ptr, ptr %0, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.xpvhv, ptr %9, i64 0, i32 3
  %11 = load i64, ptr %10, align 8, !tbaa !42
  %12 = getelementptr ptr, ptr %8, i64 %11
  %13 = getelementptr ptr, ptr %12, i64 1
  br label %16

14:                                               ; preds = %1
  %15 = tail call fastcc ptr @S_hv_auxinit(ptr noundef nonnull %0) #17
  br label %16

16:                                               ; preds = %14, %6
  %17 = phi ptr [ %13, %6 ], [ %15, %14 ]
  %18 = getelementptr inbounds %struct.xpvhv_aux, ptr %17, i64 0, i32 2
  ret ptr %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_hv_rand_set(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !16
  %5 = and i32 %4, 33554432
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !31
  %10 = load ptr, ptr %0, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct.xpvhv, ptr %10, i64 0, i32 3
  %12 = load i64, ptr %11, align 8, !tbaa !42
  %13 = getelementptr ptr, ptr %9, i64 %12
  %14 = getelementptr ptr, ptr %13, i64 1
  br label %17

15:                                               ; preds = %2
  %16 = tail call fastcc ptr @S_hv_auxinit(ptr noundef nonnull %0) #17
  br label %17

17:                                               ; preds = %15, %7
  %18 = phi ptr [ %14, %7 ], [ %16, %15 ]
  %19 = getelementptr inbounds %struct.xpvhv_aux, ptr %18, i64 0, i32 6
  store i32 %1, ptr %19, align 8, !tbaa !49
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_unshare_hek_or_pvn(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #18
  store i8 0, ptr %5, align 1, !tbaa !32
  %7 = icmp eq ptr %0, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds i8, ptr %0, i64 -8
  %10 = load i64, ptr %9, align 8, !tbaa !31
  %11 = icmp eq i64 %10, 1
  br i1 %11, label %27, label %12

12:                                               ; preds = %8
  %13 = add i64 %10, -1
  store i64 %13, ptr %9, align 8, !tbaa !31
  br label %120

14:                                               ; preds = %4
  %15 = icmp slt i32 %2, 0
  br i1 %15, label %16, label %40

16:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  %17 = sub nsw i32 0, %2
  %18 = zext nneg i32 %17 to i64
  store i64 %18, ptr %6, align 8, !tbaa !14
  store i8 1, ptr %5, align 1, !tbaa !32
  %19 = call ptr @Perl_bytes_from_utf8(ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %5) #16
  %20 = load i64, ptr %6, align 8, !tbaa !14
  %21 = trunc i64 %20 to i32
  %22 = load i8, ptr %5, align 1, !tbaa !32, !range !35, !noundef !36
  %23 = zext nneg i8 %22 to i32
  %24 = icmp eq ptr %19, %1
  %25 = or disjoint i32 %23, 258
  %26 = select i1 %24, i32 %23, i32 %25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  br label %40

27:                                               ; preds = %8
  %28 = getelementptr inbounds i8, ptr %0, i64 -24
  %29 = load i32, ptr %0, align 4, !tbaa !44
  %30 = load ptr, ptr @PL_strtab, align 8, !tbaa !5
  %31 = load ptr, ptr %30, align 8, !tbaa !34
  %32 = getelementptr inbounds %struct.hv, ptr %30, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !31
  %34 = getelementptr inbounds %struct.xpvhv, ptr %31, i64 0, i32 3
  %35 = load i64, ptr %34, align 8, !tbaa !42
  %36 = trunc i64 %35 to i32
  %37 = and i32 %29, %36
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds ptr, ptr %33, i64 %38
  br label %59

40:                                               ; preds = %16, %14
  %41 = phi i32 [ 0, %14 ], [ %26, %16 ]
  %42 = phi i32 [ %2, %14 ], [ %21, %16 ]
  %43 = phi ptr [ %1, %14 ], [ %19, %16 ]
  %44 = load ptr, ptr @PL_strtab, align 8, !tbaa !5
  %45 = load ptr, ptr %44, align 8, !tbaa !34
  %46 = getelementptr inbounds %struct.hv, ptr %44, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !31
  %48 = getelementptr inbounds %struct.xpvhv, ptr %45, i64 0, i32 3
  %49 = load i64, ptr %48, align 8, !tbaa !42
  %50 = trunc i64 %49 to i32
  %51 = and i32 %50, %3
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds ptr, ptr %47, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !5
  %55 = icmp eq ptr %54, null
  br i1 %55, label %106, label %56

56:                                               ; preds = %40
  %57 = sext i32 %42 to i64
  %58 = trunc i32 %41 to i8
  br label %65

59:                                               ; preds = %27, %59
  %60 = phi ptr [ %61, %59 ], [ %39, %27 ]
  %61 = load ptr, ptr %60, align 8, !tbaa !5
  %62 = icmp eq ptr %61, null
  %63 = icmp eq ptr %61, %28
  %64 = or i1 %62, %63
  br i1 %64, label %90, label %59, !llvm.loop !98

65:                                               ; preds = %56, %87
  %66 = phi ptr [ %54, %56 ], [ %88, %87 ]
  %67 = phi ptr [ %53, %56 ], [ %66, %87 ]
  %68 = getelementptr inbounds %struct.he, ptr %66, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !9
  %70 = load i32, ptr %69, align 4, !tbaa !44
  %71 = icmp eq i32 %70, %3
  br i1 %71, label %72, label %87

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.hek, ptr %69, i64 0, i32 1
  %74 = load i32, ptr %73, align 4, !tbaa !37
  %75 = icmp eq i32 %74, %42
  br i1 %75, label %76, label %87

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.hek, ptr %69, i64 0, i32 2
  %78 = icmp eq ptr %77, %43
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = call i32 @bcmp(ptr nonnull %77, ptr %43, i64 %57)
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %79, %76
  %83 = getelementptr inbounds i8, ptr %77, i64 %57
  %84 = getelementptr inbounds i8, ptr %83, i64 1
  %85 = load i8, ptr %84, align 1, !tbaa !31
  %86 = icmp eq i8 %85, %58
  br i1 %86, label %91, label %87

87:                                               ; preds = %82, %79, %72, %65
  %88 = load ptr, ptr %66, align 8, !tbaa !5
  %89 = icmp eq ptr %88, null
  br i1 %89, label %106, label %65, !llvm.loop !99

90:                                               ; preds = %59
  br i1 %62, label %106, label %91

91:                                               ; preds = %82, %90
  %92 = phi ptr [ %31, %90 ], [ %45, %82 ]
  %93 = phi ptr [ %1, %90 ], [ %43, %82 ]
  %94 = phi i32 [ 0, %90 ], [ %41, %82 ]
  %95 = phi ptr [ %60, %90 ], [ %67, %82 ]
  %96 = phi ptr [ %61, %90 ], [ %66, %82 ]
  %97 = getelementptr inbounds %struct.he, ptr %96, i64 0, i32 2
  %98 = load i64, ptr %97, align 8, !tbaa !31
  %99 = add i64 %98, -1
  store i64 %99, ptr %97, align 8, !tbaa !31
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %91
  %102 = load ptr, ptr %96, align 8, !tbaa !11
  store ptr %102, ptr %95, align 8, !tbaa !5
  call void @Perl_safesysfree(ptr noundef nonnull %96) #16
  %103 = getelementptr inbounds %struct.xpvhv, ptr %92, i64 0, i32 2
  %104 = load i64, ptr %103, align 8, !tbaa !50
  %105 = add i64 %104, -1
  store i64 %105, ptr %103, align 8, !tbaa !50
  br label %114

106:                                              ; preds = %87, %40, %90
  %107 = phi ptr [ %43, %40 ], [ %1, %90 ], [ %43, %87 ]
  %108 = phi i32 [ %41, %40 ], [ 0, %90 ], [ %41, %87 ]
  %109 = getelementptr inbounds %struct.hek, ptr %0, i64 0, i32 2
  %110 = select i1 %7, ptr %107, ptr %109
  %111 = and i32 %108, 1
  %112 = icmp eq i32 %111, 0
  %113 = select i1 %112, ptr @.str.22, ptr @.str.21
  call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 24, ptr noundef nonnull @.str.20, ptr noundef %110, ptr noundef nonnull %113) #16
  br label %114

114:                                              ; preds = %101, %91, %106
  %115 = phi ptr [ %93, %101 ], [ %93, %91 ], [ %107, %106 ]
  %116 = phi i32 [ %94, %101 ], [ %94, %91 ], [ %108, %106 ]
  %117 = and i32 %116, 256
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %114
  call void @Perl_safesysfree(ptr noundef %115) #16
  br label %120

120:                                              ; preds = %114, %119, %12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #18
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_safesysrealloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_share_hek(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #18
  store i8 0, ptr %4, align 1, !tbaa !32
  %6 = icmp slt i32 %1, 0
  br i1 %6, label %7, label %24

7:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  %8 = sub nsw i32 0, %1
  %9 = zext nneg i32 %8 to i64
  store i64 %9, ptr %5, align 8, !tbaa !14
  store i8 1, ptr %4, align 1, !tbaa !32
  %10 = call ptr @Perl_bytes_from_utf8(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %4) #16
  %11 = load i64, ptr %5, align 8, !tbaa !14
  %12 = trunc i64 %11 to i32
  %13 = load i8, ptr %4, align 1, !tbaa !32, !range !35, !noundef !36
  %14 = zext nneg i8 %13 to i32
  %15 = icmp eq ptr %10, %0
  br i1 %15, label %21, label %16

16:                                               ; preds = %7
  %17 = shl i64 %11, 32
  %18 = ashr exact i64 %17, 32
  %19 = call fastcc i32 @S_perl_hash_one_at_a_time_hard(ptr noundef %10, i64 noundef %18) #17
  %20 = or disjoint i32 %14, 258
  br label %21

21:                                               ; preds = %16, %7
  %22 = phi i32 [ %19, %16 ], [ %2, %7 ]
  %23 = phi i32 [ %20, %16 ], [ %14, %7 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  br label %24

24:                                               ; preds = %21, %3
  %25 = phi i32 [ %12, %21 ], [ %1, %3 ]
  %26 = phi i32 [ %22, %21 ], [ %2, %3 ]
  %27 = phi i32 [ %23, %21 ], [ 0, %3 ]
  %28 = phi ptr [ %10, %21 ], [ %0, %3 ]
  %29 = call fastcc ptr @S_share_hek_flags(ptr noundef %28, i32 noundef %25, i32 noundef %26, i32 noundef %27) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #18
  ret ptr %29
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_hv_ename_add(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !16
  %7 = and i32 %6, 33554432
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !31
  %12 = load ptr, ptr %0, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.xpvhv, ptr %12, i64 0, i32 3
  %14 = load i64, ptr %13, align 8, !tbaa !42
  %15 = getelementptr ptr, ptr %11, i64 %14
  %16 = getelementptr ptr, ptr %15, i64 1
  br label %19

17:                                               ; preds = %4
  %18 = tail call fastcc ptr @S_hv_auxinit(ptr noundef nonnull %0) #17
  br label %19

19:                                               ; preds = %17, %9
  %20 = phi ptr [ %16, %9 ], [ %18, %17 ]
  %21 = icmp slt i32 %2, 0
  %22 = zext i32 %2 to i64
  br i1 %21, label %23, label %24

23:                                               ; preds = %19
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.6, i64 noundef %22) #16
  br label %24

24:                                               ; preds = %19, %23
  %25 = tail call fastcc i32 @S_perl_hash_one_at_a_time_hard(ptr noundef %1, i64 noundef %22) #17
  %26 = getelementptr inbounds %struct.xpvhv_aux, ptr %20, i64 0, i32 4
  %27 = load i32, ptr %26, align 4, !tbaa !52
  %28 = icmp eq i32 %27, 0
  %29 = load ptr, ptr %20, align 8, !tbaa !31
  br i1 %28, label %90, label %30

30:                                               ; preds = %24
  %31 = icmp slt i32 %27, 0
  %32 = lshr i32 %27, 31
  %33 = zext nneg i32 %32 to i64
  %34 = getelementptr inbounds ptr, ptr %29, i64 %33
  %35 = sub nsw i32 0, %27
  %36 = ashr i32 %27, 31
  %37 = xor i32 %36, %27
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %72

39:                                               ; preds = %30
  %40 = zext nneg i32 %37 to i64
  %41 = getelementptr inbounds ptr, ptr %34, i64 %40
  %42 = and i32 %3, 536870912
  %43 = icmp eq i32 %42, 0
  br label %44

44:                                               ; preds = %39, %70
  %45 = phi ptr [ %41, %39 ], [ %46, %70 ]
  %46 = getelementptr inbounds ptr, ptr %45, i64 -1
  %47 = load ptr, ptr %46, align 8, !tbaa !5
  %48 = getelementptr inbounds %struct.hek, ptr %47, i64 0, i32 2
  %49 = getelementptr inbounds %struct.hek, ptr %47, i64 0, i32 1
  %50 = load i32, ptr %49, align 4, !tbaa !37
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, ptr %48, i64 %51
  %53 = getelementptr inbounds i8, ptr %52, i64 1
  %54 = load i8, ptr %53, align 1, !tbaa !31
  %55 = and i8 %54, 1
  %56 = icmp eq i8 %55, 0
  %57 = and i1 %43, %56
  br i1 %57, label %61, label %58

58:                                               ; preds = %44
  %59 = tail call fastcc i32 @hek_eq_pvn_flags(ptr noundef nonnull %47, ptr noundef %1, i32 noundef %2, i32 noundef %3) #17, !range !100
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %70, label %66

61:                                               ; preds = %44
  %62 = icmp eq i32 %50, %2
  br i1 %62, label %63, label %70

63:                                               ; preds = %61
  %64 = tail call i32 @bcmp(ptr nonnull %48, ptr %1, i64 %22)
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %63, %58
  %67 = icmp eq ptr %46, %34
  %68 = and i1 %31, %67
  br i1 %68, label %69, label %125

69:                                               ; preds = %66
  store i32 %35, ptr %26, align 4, !tbaa !52
  br label %125

70:                                               ; preds = %63, %61, %58
  %71 = icmp ugt ptr %46, %34
  br i1 %71, label %44, label %72, !llvm.loop !101

72:                                               ; preds = %70, %30
  %73 = load i32, ptr %26, align 4, !tbaa !52
  %74 = select i1 %31, i32 -1, i32 1
  %75 = select i1 %31, i32 %35, i32 %27
  %76 = add nsw i32 %73, %74
  store i32 %76, ptr %26, align 4, !tbaa !52
  %77 = load ptr, ptr %20, align 8, !tbaa !31
  %78 = add nuw nsw i32 %75, 1
  %79 = sext i32 %78 to i64
  %80 = shl nsw i64 %79, 3
  %81 = tail call ptr @Perl_safesysrealloc(ptr noundef %77, i64 noundef %80) #16
  store ptr %81, ptr %20, align 8, !tbaa !31
  %82 = and i32 %3, 536870912
  %83 = icmp eq i32 %82, 0
  %84 = sub nsw i32 0, %2
  %85 = select i1 %83, i32 %2, i32 %84
  %86 = tail call ptr @Perl_share_hek(ptr noundef %1, i32 noundef %85, i32 noundef %25) #17
  %87 = load ptr, ptr %20, align 8, !tbaa !31
  %88 = sext i32 %75 to i64
  %89 = getelementptr inbounds ptr, ptr %87, i64 %88
  store ptr %86, ptr %89, align 8, !tbaa !5
  br label %125

90:                                               ; preds = %24
  %91 = icmp eq ptr %29, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %90
  %93 = and i32 %3, 536870912
  br label %115

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.hek, ptr %29, i64 0, i32 2
  %96 = getelementptr inbounds %struct.hek, ptr %29, i64 0, i32 1
  %97 = load i32, ptr %96, align 4, !tbaa !37
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, ptr %95, i64 %98
  %100 = getelementptr inbounds i8, ptr %99, i64 1
  %101 = load i8, ptr %100, align 1, !tbaa !31
  %102 = and i8 %101, 1
  %103 = icmp eq i8 %102, 0
  %104 = and i32 %3, 536870912
  %105 = icmp eq i32 %104, 0
  %106 = and i1 %105, %103
  br i1 %106, label %110, label %107

107:                                              ; preds = %94
  %108 = tail call fastcc i32 @hek_eq_pvn_flags(ptr noundef nonnull %29, ptr noundef %1, i32 noundef %2, i32 noundef %3) #17, !range !100
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %115, label %125

110:                                              ; preds = %94
  %111 = icmp eq i32 %97, %2
  br i1 %111, label %112, label %115

112:                                              ; preds = %110
  %113 = tail call i32 @bcmp(ptr nonnull %95, ptr %1, i64 %22)
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %125, label %115

115:                                              ; preds = %92, %112, %110, %107
  %116 = phi i32 [ %93, %92 ], [ 0, %112 ], [ 0, %110 ], [ %104, %107 ]
  %117 = phi i32 [ -2, %92 ], [ 2, %112 ], [ 2, %110 ], [ 2, %107 ]
  %118 = tail call ptr @Perl_safesysmalloc(i64 noundef 16) #16
  store ptr %118, ptr %20, align 8, !tbaa !31
  store i32 %117, ptr %26, align 4, !tbaa !52
  store ptr %29, ptr %118, align 8, !tbaa !5
  %119 = icmp eq i32 %116, 0
  %120 = sub nsw i32 0, %2
  %121 = select i1 %119, i32 %2, i32 %120
  %122 = tail call ptr @Perl_share_hek(ptr noundef %1, i32 noundef %121, i32 noundef %25) #17
  %123 = load ptr, ptr %20, align 8, !tbaa !31
  %124 = getelementptr inbounds ptr, ptr %123, i64 1
  store ptr %122, ptr %124, align 8, !tbaa !5
  br label %125

125:                                              ; preds = %72, %69, %66, %115, %112, %107
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @hek_eq_pvn_flags(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.hek, ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %struct.hek, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !37
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i8, ptr %5, i64 %8
  %10 = getelementptr inbounds i8, ptr %9, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !31
  %12 = and i8 %11, 1
  %13 = zext nneg i8 %12 to i32
  %14 = and i32 %3, 536870912
  %15 = lshr exact i32 %14, 29
  %16 = icmp eq i32 %15, %13
  br i1 %16, label %26, label %17

17:                                               ; preds = %4
  %18 = icmp eq i32 %14, 0
  %19 = sext i32 %2 to i64
  br i1 %18, label %23, label %20

20:                                               ; preds = %17
  %21 = tail call i32 @Perl_bytes_cmp_utf8(ptr noundef nonnull %5, i64 noundef %8, ptr noundef %1, i64 noundef %19) #16
  %22 = icmp eq i32 %21, 0
  br label %34

23:                                               ; preds = %17
  %24 = tail call i32 @Perl_bytes_cmp_utf8(ptr noundef %1, i64 noundef %19, ptr noundef nonnull %5, i64 noundef %8) #16
  %25 = icmp eq i32 %24, 0
  br label %34

26:                                               ; preds = %4
  %27 = icmp eq i32 %7, %2
  br i1 %27, label %28, label %34

28:                                               ; preds = %26
  %29 = icmp eq ptr %5, %1
  br i1 %29, label %34, label %30

30:                                               ; preds = %28
  %31 = sext i32 %2 to i64
  %32 = tail call i32 @bcmp(ptr nonnull %5, ptr %1, i64 %31)
  %33 = icmp eq i32 %32, 0
  br label %34

34:                                               ; preds = %26, %30, %28, %23, %20
  %35 = phi i1 [ %22, %20 ], [ %25, %23 ], [ false, %26 ], [ true, %28 ], [ %33, %30 ]
  %36 = zext i1 %35 to i32
  ret i32 %36
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_hv_ename_delete(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp slt i32 %2, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = zext i32 %2 to i64
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.6, i64 noundef %7) #16
  br label %8

8:                                                ; preds = %6, %4
  %9 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !16
  %11 = and i32 %10, 33554432
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %148, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !31
  %16 = load ptr, ptr %0, align 8, !tbaa !34
  %17 = getelementptr inbounds %struct.xpvhv, ptr %16, i64 0, i32 3
  %18 = load i64, ptr %17, align 8, !tbaa !42
  %19 = getelementptr ptr, ptr %15, i64 %18
  %20 = getelementptr ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !31
  %22 = icmp eq ptr %21, null
  br i1 %22, label %148, label %23

23:                                               ; preds = %13
  %24 = getelementptr i8, ptr %19, i64 36
  %25 = load i32, ptr %24, align 4, !tbaa !52
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %121, label %27

27:                                               ; preds = %23
  %28 = icmp slt i32 %25, 0
  %29 = sub nsw i32 0, %25
  %30 = select i1 %28, i32 %29, i32 %25
  %31 = sext i32 %30 to i64
  %32 = shl nsw i64 %31, 3
  %33 = getelementptr inbounds i8, ptr %21, i64 %32
  %34 = icmp slt i32 %30, 2
  br i1 %34, label %90, label %35

35:                                               ; preds = %27
  %36 = and i32 %3, 536870912
  %37 = icmp eq i32 %36, 0
  %38 = zext i32 %2 to i64
  br label %39

39:                                               ; preds = %35, %88
  %40 = phi i64 [ %32, %35 ], [ %41, %88 ]
  %41 = add nsw i64 %40, -8
  %42 = getelementptr inbounds i8, ptr %21, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !5
  %44 = getelementptr inbounds %struct.hek, ptr %43, i64 0, i32 2
  %45 = getelementptr inbounds %struct.hek, ptr %43, i64 0, i32 1
  %46 = load i32, ptr %45, align 4, !tbaa !37
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, ptr %44, i64 %47
  %49 = getelementptr inbounds i8, ptr %48, i64 1
  %50 = load i8, ptr %49, align 1, !tbaa !31
  %51 = and i8 %50, 1
  %52 = icmp eq i8 %51, 0
  %53 = and i1 %37, %52
  br i1 %53, label %60, label %54

54:                                               ; preds = %39
  %55 = tail call fastcc i32 @hek_eq_pvn_flags(ptr noundef nonnull %43, ptr noundef %1, i32 noundef %2, i32 noundef %3) #17, !range !100
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %88, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds i8, ptr %21, i64 %41
  %59 = load ptr, ptr %58, align 8, !tbaa !5
  br label %67

60:                                               ; preds = %39
  %61 = icmp eq i32 %46, %2
  br i1 %61, label %62, label %88

62:                                               ; preds = %60
  %63 = tail call i32 @bcmp(ptr nonnull %44, ptr %1, i64 %38)
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %88

65:                                               ; preds = %62
  %66 = getelementptr inbounds i8, ptr %21, i64 %41
  br label %67

67:                                               ; preds = %65, %57
  %68 = phi ptr [ %58, %57 ], [ %66, %65 ]
  %69 = phi ptr [ %59, %57 ], [ %43, %65 ]
  tail call fastcc void @S_unshare_hek_or_pvn(ptr noundef %69, ptr noundef null, i32 noundef 0, i32 noundef 0) #17
  %70 = load ptr, ptr %14, align 8, !tbaa !31
  %71 = load ptr, ptr %0, align 8, !tbaa !34
  %72 = getelementptr inbounds %struct.xpvhv, ptr %71, i64 0, i32 3
  %73 = load i64, ptr %72, align 8, !tbaa !42
  %74 = getelementptr ptr, ptr %70, i64 %73
  %75 = getelementptr ptr, ptr %74, i64 1
  %76 = getelementptr i8, ptr %74, i64 36
  %77 = load i32, ptr %76, align 4, !tbaa !52
  %78 = select i1 %28, i32 1, i32 -1
  %79 = add nsw i32 %77, %78
  store i32 %79, ptr %76, align 4, !tbaa !52
  %80 = getelementptr i8, ptr %74, i64 36
  switch i32 %79, label %85 [
    i32 1, label %81
    i32 -1, label %81
  ]

81:                                               ; preds = %67, %67
  %82 = load ptr, ptr %21, align 8, !tbaa !5
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  tail call void @Perl_safesysfree(ptr noundef nonnull %21) #16
  store ptr null, ptr %75, align 8, !tbaa !31
  store i32 0, ptr %80, align 4, !tbaa !52
  br label %148

85:                                               ; preds = %67, %81
  %86 = getelementptr inbounds ptr, ptr %33, i64 -1
  %87 = load ptr, ptr %86, align 8, !tbaa !5
  store ptr %87, ptr %68, align 8, !tbaa !5
  br label %148

88:                                               ; preds = %62, %60, %54
  %89 = icmp slt i64 %40, 17
  br i1 %89, label %90, label %39, !llvm.loop !102

90:                                               ; preds = %88, %27
  %91 = icmp sgt i32 %25, 0
  %92 = load ptr, ptr %21, align 8, !tbaa !5
  br i1 %91, label %96, label %93

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.hek, ptr %92, i64 0, i32 1
  %95 = load i32, ptr %94, align 4, !tbaa !37
  br label %112

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.hek, ptr %92, i64 0, i32 2
  %98 = getelementptr inbounds %struct.hek, ptr %92, i64 0, i32 1
  %99 = load i32, ptr %98, align 4, !tbaa !37
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, ptr %97, i64 %100
  %102 = getelementptr inbounds i8, ptr %101, i64 1
  %103 = load i8, ptr %102, align 1, !tbaa !31
  %104 = and i8 %103, 1
  %105 = icmp eq i8 %104, 0
  %106 = and i32 %3, 536870912
  %107 = icmp eq i32 %106, 0
  %108 = and i1 %107, %105
  br i1 %108, label %112, label %109

109:                                              ; preds = %96
  %110 = tail call fastcc i32 @hek_eq_pvn_flags(ptr noundef nonnull %92, ptr noundef %1, i32 noundef %2, i32 noundef %3) #17, !range !100
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %148, label %120

112:                                              ; preds = %93, %96
  %113 = phi i32 [ %95, %93 ], [ %99, %96 ]
  %114 = icmp eq i32 %113, %2
  br i1 %114, label %115, label %148

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.hek, ptr %92, i64 0, i32 2
  %117 = zext i32 %2 to i64
  %118 = tail call i32 @bcmp(ptr nonnull %116, ptr %1, i64 %117)
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %148

120:                                              ; preds = %115, %109
  store i32 %29, ptr %24, align 4, !tbaa !52
  br label %148

121:                                              ; preds = %23
  %122 = getelementptr inbounds %struct.hek, ptr %21, i64 0, i32 2
  %123 = getelementptr inbounds %struct.hek, ptr %21, i64 0, i32 1
  %124 = load i32, ptr %123, align 4, !tbaa !37
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, ptr %122, i64 %125
  %127 = getelementptr inbounds i8, ptr %126, i64 1
  %128 = load i8, ptr %127, align 1, !tbaa !31
  %129 = and i8 %128, 1
  %130 = icmp eq i8 %129, 0
  %131 = and i32 %3, 536870912
  %132 = icmp eq i32 %131, 0
  %133 = and i1 %132, %130
  br i1 %133, label %139, label %134

134:                                              ; preds = %121
  %135 = tail call fastcc i32 @hek_eq_pvn_flags(ptr noundef nonnull %21, ptr noundef %1, i32 noundef %2, i32 noundef %3) #17, !range !100
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %148, label %137

137:                                              ; preds = %134
  %138 = load ptr, ptr %20, align 8, !tbaa !31
  br label %145

139:                                              ; preds = %121
  %140 = icmp eq i32 %124, %2
  br i1 %140, label %141, label %148

141:                                              ; preds = %139
  %142 = zext i32 %2 to i64
  %143 = tail call i32 @bcmp(ptr nonnull %122, ptr %1, i64 %142)
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %137, %141
  %146 = phi ptr [ %138, %137 ], [ %21, %141 ]
  %147 = tail call ptr @Perl_safesysmalloc(i64 noundef 8) #16
  store ptr %147, ptr %20, align 8, !tbaa !31
  store ptr %146, ptr %147, align 8, !tbaa !5
  store i32 -1, ptr %24, align 4, !tbaa !52
  br label %148

148:                                              ; preds = %85, %84, %120, %115, %112, %109, %145, %141, %139, %134, %13, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local nonnull ptr @Perl_hv_backreferences_p(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !16
  %4 = and i32 %3, 33554432
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !31
  %9 = load ptr, ptr %0, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.xpvhv, ptr %9, i64 0, i32 3
  %11 = load i64, ptr %10, align 8, !tbaa !42
  %12 = getelementptr ptr, ptr %8, i64 %11
  %13 = getelementptr ptr, ptr %12, i64 1
  br label %16

14:                                               ; preds = %1
  %15 = tail call fastcc ptr @S_hv_auxinit(ptr noundef nonnull %0) #17
  br label %16

16:                                               ; preds = %14, %6
  %17 = phi ptr [ %13, %6 ], [ %15, %14 ]
  %18 = getelementptr inbounds %struct.xpvhv_aux, ptr %17, i64 0, i32 1
  ret ptr %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_hv_kill_backrefs(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !16
  %4 = and i32 %3, 33554432
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %22, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !31
  %9 = load ptr, ptr %0, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.xpvhv, ptr %9, i64 0, i32 3
  %11 = load i64, ptr %10, align 8, !tbaa !42
  %12 = getelementptr ptr, ptr %8, i64 %11
  %13 = getelementptr ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8, !tbaa !96
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %6
  store ptr null, ptr %13, align 8, !tbaa !96
  tail call void @Perl_sv_kill_backrefs(ptr noundef nonnull %0, ptr noundef nonnull %14) #16
  %17 = getelementptr inbounds %struct.av, ptr %14, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !103
  %19 = and i32 %18, 255
  %20 = icmp eq i32 %19, 11
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %14) #17
  br label %22

22:                                               ; preds = %6, %21, %16, %1
  ret void
}

; Function Attrs: optsize
declare void @Perl_sv_kill_backrefs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_setsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: optsize
declare i32 @Perl_magic_nextpack(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_ck_warner_d(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_hv_iterkey(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds %struct.he, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !9
  %6 = getelementptr inbounds %struct.hek, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !37
  %8 = icmp eq i32 %7, -2
  %9 = getelementptr inbounds %struct.hek, ptr %5, i64 0, i32 2
  br i1 %8, label %10, label %28

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  %11 = load ptr, ptr %9, align 4, !tbaa !5
  %12 = getelementptr inbounds %struct.sv, ptr %11, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !26
  %14 = and i32 %13, 2098176
  %15 = icmp eq i32 %14, 1024
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  %17 = load ptr, ptr %11, align 8, !tbaa !28
  %18 = getelementptr inbounds %struct.xpv, ptr %17, i64 0, i32 2
  %19 = getelementptr inbounds %struct.sv, ptr %11, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !31
  br label %23

21:                                               ; preds = %10
  %22 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %11, ptr noundef nonnull %3, i32 noundef 2) #16
  br label %23

23:                                               ; preds = %21, %16
  %24 = phi ptr [ %18, %16 ], [ %3, %21 ]
  %25 = phi ptr [ %20, %16 ], [ %22, %21 ]
  %26 = load i64, ptr %24, align 8, !tbaa !14
  %27 = trunc i64 %26 to i32
  store i32 %27, ptr %1, align 4, !tbaa !63
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  br label %29

28:                                               ; preds = %2
  store i32 %7, ptr %1, align 4, !tbaa !63
  br label %29

29:                                               ; preds = %28, %23
  %30 = phi ptr [ %25, %23 ], [ %9, %28 ]
  ret ptr %30
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_hv_iternextsv(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = tail call ptr @Perl_hv_iternext_flags(ptr noundef %0, i32 noundef 0) #17
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @Perl_hv_iterkey(ptr noundef nonnull %4, ptr noundef %2) #17
  store ptr %7, ptr %1, align 8, !tbaa !5
  %8 = tail call ptr @Perl_hv_iterval(ptr noundef %0, ptr noundef nonnull %4) #17
  br label %9

9:                                                ; preds = %3, %6
  %10 = phi ptr [ %8, %6 ], [ null, %3 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_unsharepvn(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @S_unshare_hek_or_pvn(ptr noundef null, ptr noundef %0, i32 noundef %1, i32 noundef %2) #17
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_sv_magicext(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_die(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @Perl_refcounted_he_chain_2hv(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.10, i64 noundef %5) #16
  br label %6

6:                                                ; preds = %4, %2
  %7 = tail call ptr @Perl_newSV_type(i32 noundef 12) #16
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.xpvhv, ptr %8, i64 0, i32 3
  %10 = load i64, ptr %9, align 8, !tbaa !42
  %11 = trunc i64 %10 to i32
  %12 = getelementptr inbounds %struct.hv, ptr %7, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !31
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %6
  %16 = shl i64 %10, 3
  %17 = add i64 %16, 8
  %18 = and i64 %17, 34359738360
  %19 = tail call ptr @Perl_safesyscalloc(i64 noundef %18, i64 noundef 1) #16
  store ptr %19, ptr %12, align 8, !tbaa !31
  br label %20

20:                                               ; preds = %15, %6
  %21 = icmp eq ptr %0, null
  br i1 %21, label %98, label %22

22:                                               ; preds = %20, %86
  %23 = phi ptr [ %88, %86 ], [ %0, %20 ]
  %24 = phi i32 [ %87, %86 ], [ 0, %20 ]
  %25 = getelementptr inbounds %struct.refcounted_he, ptr %23, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !105
  %27 = load i32, ptr %26, align 4, !tbaa !44
  %28 = load ptr, ptr %12, align 8, !tbaa !31
  %29 = and i32 %27, %11
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds ptr, ptr %28, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !5
  %33 = icmp eq ptr %32, null
  br i1 %33, label %68, label %34

34:                                               ; preds = %22
  %35 = getelementptr inbounds %struct.hek, ptr %26, i64 0, i32 1
  %36 = getelementptr inbounds %struct.hek, ptr %26, i64 0, i32 2
  %37 = getelementptr %struct.hek, ptr %26, i64 0, i32 2, i64 1
  br label %38

38:                                               ; preds = %34, %65
  %39 = phi ptr [ %32, %34 ], [ %66, %65 ]
  %40 = getelementptr inbounds %struct.he, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !9
  %42 = load i32, ptr %41, align 4, !tbaa !44
  %43 = icmp eq i32 %42, %27
  br i1 %43, label %44, label %65

44:                                               ; preds = %38
  %45 = icmp eq ptr %41, %26
  br i1 %45, label %86, label %46

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.hek, ptr %41, i64 0, i32 1
  %48 = load i32, ptr %47, align 4, !tbaa !37
  %49 = load i32, ptr %35, align 4, !tbaa !37
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.hek, ptr %41, i64 0, i32 2
  %53 = sext i32 %48 to i64
  %54 = getelementptr inbounds i8, ptr %52, i64 %53
  %55 = getelementptr inbounds i8, ptr %54, i64 1
  %56 = load i8, ptr %55, align 1, !tbaa !31
  %57 = getelementptr i8, ptr %37, i64 %53
  %58 = load i8, ptr %57, align 1, !tbaa !31
  %59 = xor i8 %58, %56
  %60 = and i8 %59, 1
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %51
  %63 = tail call i32 @bcmp(ptr nonnull %52, ptr nonnull %36, i64 %53)
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %86, label %65

65:                                               ; preds = %38, %62, %51, %46
  %66 = load ptr, ptr %39, align 8, !tbaa !5
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %38, !llvm.loop !107

68:                                               ; preds = %65, %22
  %69 = tail call fastcc ptr @S_new_he() #17
  %70 = load ptr, ptr %25, align 8, !tbaa !105
  %71 = getelementptr inbounds i8, ptr %70, i64 -8
  %72 = load i64, ptr %71, align 8, !tbaa !31
  %73 = add i64 %72, 1
  store i64 %73, ptr %71, align 8, !tbaa !31
  %74 = load ptr, ptr %25, align 8, !tbaa !105
  %75 = getelementptr inbounds %struct.he, ptr %69, i64 0, i32 1
  store ptr %74, ptr %75, align 8, !tbaa !9
  %76 = tail call fastcc ptr @S_refcounted_he_value(ptr noundef nonnull %23) #17
  %77 = icmp eq ptr %76, @PL_sv_placeholder
  %78 = zext i1 %77 to i32
  %79 = add i32 %24, %78
  %80 = getelementptr inbounds %struct.he, ptr %69, i64 0, i32 2
  store ptr %76, ptr %80, align 8, !tbaa !31
  %81 = load ptr, ptr %31, align 8, !tbaa !5
  store ptr %81, ptr %69, align 8, !tbaa !11
  store ptr %69, ptr %31, align 8, !tbaa !5
  %82 = load ptr, ptr %7, align 8, !tbaa !34
  %83 = getelementptr inbounds %struct.xpvhv, ptr %82, i64 0, i32 2
  %84 = load i64, ptr %83, align 8, !tbaa !50
  %85 = add i64 %84, 1
  store i64 %85, ptr %83, align 8, !tbaa !50
  br label %86

86:                                               ; preds = %62, %44, %68
  %87 = phi i32 [ %79, %68 ], [ %24, %44 ], [ %24, %62 ]
  %88 = load ptr, ptr %23, align 8, !tbaa !108
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %22, !llvm.loop !109

90:                                               ; preds = %86
  %91 = icmp eq i32 %87, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %90
  tail call fastcc void @S_clear_placeholders(ptr noundef nonnull %7, i32 noundef %87) #17
  %93 = zext i32 %87 to i64
  %94 = load ptr, ptr %7, align 8, !tbaa !34
  %95 = getelementptr inbounds %struct.xpvhv, ptr %94, i64 0, i32 2
  %96 = load i64, ptr %95, align 8, !tbaa !50
  %97 = sub i64 %96, %93
  store i64 %97, ptr %95, align 8, !tbaa !50
  br label %98

98:                                               ; preds = %20, %92, %90
  %99 = getelementptr inbounds %struct.hv, ptr %7, i64 0, i32 2
  %100 = load i32, ptr %99, align 4, !tbaa !16
  %101 = or i32 %100, -2147483648
  store i32 %101, ptr %99, align 4, !tbaa !16
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @S_refcounted_he_value(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.refcounted_he, ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 4, !tbaa !31
  %4 = lshr i8 %3, 4
  %5 = and i8 %4, 7
  switch i8 %5, label %33 [
    i8 0, label %6
    i8 1, label %35
    i8 2, label %8
    i8 3, label %12
    i8 4, label %16
    i8 5, label %16
  ]

6:                                                ; preds = %1
  %7 = tail call ptr @Perl_newSV(i64 noundef 0) #16
  br label %35

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.refcounted_he, ptr %0, i64 0, i32 2
  %10 = load i64, ptr %9, align 8, !tbaa !31
  %11 = tail call ptr @Perl_newSViv(i64 noundef %10) #16
  br label %35

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.refcounted_he, ptr %0, i64 0, i32 2
  %14 = load i64, ptr %13, align 8, !tbaa !31
  %15 = tail call ptr @Perl_newSVuv(i64 noundef %14) #16
  br label %35

16:                                               ; preds = %1, %1
  %17 = tail call ptr @Perl_newSV_type(i32 noundef 3) #16
  %18 = getelementptr inbounds %struct.refcounted_he, ptr %0, i64 0, i32 4, i64 1
  %19 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 3
  store ptr %18, ptr %19, align 8, !tbaa !31
  %20 = getelementptr inbounds %struct.refcounted_he, ptr %0, i64 0, i32 2
  %21 = load i64, ptr %20, align 8, !tbaa !31
  %22 = load ptr, ptr %17, align 8, !tbaa !28
  %23 = getelementptr inbounds %struct.xpv, ptr %22, i64 0, i32 2
  store i64 %21, ptr %23, align 8, !tbaa !29
  %24 = getelementptr inbounds %struct.xpv, ptr %22, i64 0, i32 3
  store i64 0, ptr %24, align 8, !tbaa !31
  %25 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !26
  %27 = or i32 %26, 134300672
  store i32 %27, ptr %25, align 4, !tbaa !26
  %28 = load i8, ptr %2, align 4, !tbaa !31
  %29 = and i8 %28, 112
  %30 = icmp eq i8 %29, 80
  br i1 %30, label %31, label %35

31:                                               ; preds = %16
  %32 = or i32 %26, 671171584
  store i32 %32, ptr %25, align 4, !tbaa !26
  br label %35

33:                                               ; preds = %1
  %34 = sext i8 %3 to i64
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.23, i64 noundef %34) #16
  br label %35

35:                                               ; preds = %1, %16, %31, %33, %12, %8, %6
  %36 = phi ptr [ null, %33 ], [ %17, %31 ], [ %17, %16 ], [ %15, %12 ], [ %11, %8 ], [ %7, %6 ], [ @PL_sv_placeholder, %1 ]
  ret ptr %36
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_refcounted_he_fetch_pvn(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = icmp ult i32 %4, 4
  br i1 %6, label %9, label %7

7:                                                ; preds = %5
  %8 = zext i32 %4 to i64
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.11, i64 noundef %8) #16
  br label %9

9:                                                ; preds = %7, %5
  %10 = icmp eq ptr %0, null
  br i1 %10, label %116, label %11

11:                                               ; preds = %9
  %12 = and i32 %4, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %69, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds i8, ptr %1, i64 %2
  %16 = icmp eq i64 %2, 0
  br i1 %16, label %65, label %17

17:                                               ; preds = %14
  %18 = ptrtoint ptr %15 to i64
  br label %19

19:                                               ; preds = %17, %38
  %20 = phi i64 [ 0, %17 ], [ %40, %38 ]
  %21 = phi ptr [ %1, %17 ], [ %41, %38 ]
  %22 = load i8, ptr %21, align 1, !tbaa !31
  %23 = icmp sgt i8 %22, -1
  br i1 %23, label %38, label %24

24:                                               ; preds = %19
  %25 = and i8 %22, -2
  %26 = icmp eq i8 %25, -62
  %27 = ptrtoint ptr %21 to i64
  %28 = sub i64 %18, %27
  %29 = icmp sgt i64 %28, 1
  %30 = and i1 %29, %26
  br i1 %30, label %31, label %69

31:                                               ; preds = %24
  %32 = getelementptr inbounds i8, ptr %21, i64 1
  %33 = load i8, ptr %32, align 1, !tbaa !31
  %34 = and i8 %33, -64
  %35 = icmp eq i8 %34, -128
  br i1 %35, label %36, label %69

36:                                               ; preds = %31
  %37 = add i64 %20, 1
  br label %38

38:                                               ; preds = %19, %36
  %39 = phi ptr [ %21, %19 ], [ %32, %36 ]
  %40 = phi i64 [ %20, %19 ], [ %37, %36 ]
  %41 = getelementptr inbounds i8, ptr %39, i64 1
  %42 = icmp eq ptr %41, %15
  br i1 %42, label %43, label %19, !llvm.loop !110

43:                                               ; preds = %38
  %44 = icmp eq i64 %40, 0
  br i1 %44, label %65, label %45

45:                                               ; preds = %43
  %46 = sub i64 %2, %40
  %47 = tail call ptr @Perl_safesysmalloc(i64 noundef %46) #16
  tail call void @Perl_save_pushptr(ptr noundef %47, i32 noundef 10) #16
  br i1 %16, label %65, label %48

48:                                               ; preds = %45, %59
  %49 = phi ptr [ %62, %59 ], [ %1, %45 ]
  %50 = phi ptr [ %63, %59 ], [ %47, %45 ]
  %51 = load i8, ptr %49, align 1, !tbaa !31
  %52 = icmp sgt i8 %51, -1
  br i1 %52, label %59, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds i8, ptr %49, i64 1
  %55 = shl i8 %51, 6
  %56 = load i8, ptr %54, align 1, !tbaa !31
  %57 = and i8 %56, 63
  %58 = or disjoint i8 %57, %55
  br label %59

59:                                               ; preds = %48, %53
  %60 = phi i8 [ %58, %53 ], [ %51, %48 ]
  %61 = phi ptr [ %54, %53 ], [ %49, %48 ]
  store i8 %60, ptr %50, align 1, !tbaa !31
  %62 = getelementptr inbounds i8, ptr %61, i64 1
  %63 = getelementptr inbounds i8, ptr %50, i64 1
  %64 = icmp eq ptr %62, %15
  br i1 %64, label %65, label %48, !llvm.loop !111

65:                                               ; preds = %59, %14, %45, %43
  %66 = phi i64 [ %2, %43 ], [ %46, %45 ], [ 0, %14 ], [ %46, %59 ]
  %67 = phi ptr [ %1, %43 ], [ %47, %45 ], [ %1, %14 ], [ %47, %59 ]
  %68 = and i32 %4, -2
  br label %69

69:                                               ; preds = %31, %24, %65, %11
  %70 = phi i32 [ 0, %65 ], [ 0, %11 ], [ %12, %24 ], [ %12, %31 ]
  %71 = phi i32 [ %68, %65 ], [ %4, %11 ], [ %4, %24 ], [ %4, %31 ]
  %72 = phi i64 [ %66, %65 ], [ %2, %11 ], [ %2, %24 ], [ %2, %31 ]
  %73 = phi ptr [ %67, %65 ], [ %1, %11 ], [ %1, %24 ], [ %1, %31 ]
  %74 = icmp eq i32 %3, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = tail call fastcc i32 @S_perl_hash_one_at_a_time_hard(ptr noundef %73, i64 noundef %72) #17
  br label %77

77:                                               ; preds = %75, %69
  %78 = phi i32 [ %3, %69 ], [ %76, %75 ]
  br label %79

79:                                               ; preds = %77, %113
  %80 = phi ptr [ %0, %77 ], [ %114, %113 ]
  %81 = getelementptr inbounds %struct.refcounted_he, ptr %80, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !105
  %83 = load i32, ptr %82, align 4, !tbaa !44
  %84 = icmp eq i32 %78, %83
  br i1 %84, label %85, label %113

85:                                               ; preds = %79
  %86 = getelementptr inbounds %struct.hek, ptr %82, i64 0, i32 1
  %87 = load i32, ptr %86, align 4, !tbaa !37
  %88 = sext i32 %87 to i64
  %89 = icmp eq i64 %72, %88
  br i1 %89, label %90, label %113

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.hek, ptr %82, i64 0, i32 2
  %92 = tail call i32 @bcmp(ptr nonnull %91, ptr %73, i64 %72)
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %113

94:                                               ; preds = %90
  %95 = getelementptr inbounds i8, ptr %91, i64 %72
  %96 = getelementptr inbounds i8, ptr %95, i64 1
  %97 = load i8, ptr %96, align 1, !tbaa !31
  %98 = and i8 %97, 1
  %99 = zext nneg i8 %98 to i32
  %100 = icmp eq i32 %70, %99
  br i1 %100, label %101, label %113

101:                                              ; preds = %94
  %102 = and i32 %71, 2
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %101
  %105 = getelementptr inbounds %struct.refcounted_he, ptr %80, i64 0, i32 4
  %106 = load i8, ptr %105, align 4, !tbaa !31
  %107 = and i8 %106, 112
  %108 = icmp eq i8 %107, 16
  %109 = select i1 %108, ptr null, ptr @PL_sv_yes
  br label %121

110:                                              ; preds = %101
  %111 = tail call fastcc ptr @S_refcounted_he_value(ptr noundef nonnull %80) #17
  %112 = tail call ptr @Perl_sv_2mortal(ptr noundef %111) #16
  br label %121

113:                                              ; preds = %79, %85, %90, %94
  %114 = load ptr, ptr %80, align 8, !tbaa !108
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %79, !llvm.loop !112

116:                                              ; preds = %113, %9
  %117 = phi i32 [ %4, %9 ], [ %71, %113 ]
  %118 = and i32 %117, 2
  %119 = icmp eq i32 %118, 0
  %120 = select i1 %119, ptr @PL_sv_placeholder, ptr null
  br label %121

121:                                              ; preds = %116, %110, %104
  %122 = phi ptr [ %109, %104 ], [ %112, %110 ], [ %120, %116 ]
  ret ptr %122
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_refcounted_he_fetch_pv(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19
  %6 = tail call ptr @Perl_refcounted_he_fetch_pvn(ptr noundef %0, ptr noundef %1, i64 noundef %5, i32 noundef %2, i32 noundef %3) #17
  ret ptr %6
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_refcounted_he_fetch_sv(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  %6 = and i32 %3, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = zext i32 %3 to i64
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.12, i64 noundef %9) #16
  br label %10

10:                                               ; preds = %8, %4
  %11 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !26
  %13 = and i32 %12, 2098176
  %14 = icmp eq i32 %13, 1024
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load ptr, ptr %1, align 8, !tbaa !28
  %17 = getelementptr inbounds %struct.xpv, ptr %16, i64 0, i32 2
  %18 = load i64, ptr %17, align 8, !tbaa !29
  store i64 %18, ptr %5, align 8, !tbaa !14
  %19 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !31
  br label %24

21:                                               ; preds = %10
  %22 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %1, ptr noundef nonnull %5, i32 noundef 34) #16
  %23 = load i32, ptr %11, align 4, !tbaa !26
  br label %24

24:                                               ; preds = %21, %15
  %25 = phi i32 [ %12, %15 ], [ %23, %21 ]
  %26 = phi ptr [ %20, %15 ], [ %22, %21 ]
  %27 = icmp eq i32 %2, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %24
  %29 = and i32 %25, 268435456
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr %1, align 8, !tbaa !28
  %33 = getelementptr inbounds %struct.xpv, ptr %32, i64 0, i32 3
  %34 = load i64, ptr %33, align 8, !tbaa !31
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !31
  %39 = getelementptr inbounds i8, ptr %38, i64 -8
  %40 = load i32, ptr %39, align 4, !tbaa !44
  br label %41

41:                                               ; preds = %36, %31, %28, %24
  %42 = phi i32 [ %2, %24 ], [ %40, %36 ], [ 0, %31 ], [ 0, %28 ]
  %43 = lshr i32 %25, 29
  %44 = and i32 %43, 1
  %45 = or i32 %44, %3
  %46 = load i64, ptr %5, align 8, !tbaa !14
  %47 = call ptr @Perl_refcounted_he_fetch_pvn(ptr noundef %0, ptr noundef %26, i64 noundef %46, i32 noundef %42, i32 noundef %45) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  ret ptr %47
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @Perl_refcounted_he_new_pvn(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  store i64 0, ptr %7, align 8, !tbaa !14
  %8 = icmp eq ptr %4, null
  %9 = icmp eq ptr %4, @PL_sv_placeholder
  %10 = or i1 %8, %9
  br i1 %10, label %53, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !26
  %14 = and i32 %13, 1024
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %11
  %17 = and i32 %13, 256
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = and i32 %13, -2147483392
  %21 = icmp eq i32 %20, -2147483392
  %22 = select i1 %21, i8 48, i8 32
  br label %53

23:                                               ; preds = %16
  %24 = and i32 %13, 64000
  %25 = icmp ne i32 %24, 0
  %26 = and i32 %13, 255
  %27 = icmp eq i32 %26, 8
  %28 = or i1 %25, %27
  %29 = and i32 %13, 16777471
  %30 = icmp eq i32 %29, 16777226
  %31 = or i1 %30, %28
  br i1 %31, label %32, label %53

32:                                               ; preds = %23, %11
  %33 = and i32 %13, 2098176
  %34 = icmp eq i32 %33, 1024
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load ptr, ptr %4, align 8, !tbaa !28
  %37 = getelementptr inbounds %struct.xpv, ptr %36, i64 0, i32 2
  %38 = load i64, ptr %37, align 8, !tbaa !29
  store i64 %38, ptr %7, align 8, !tbaa !14
  %39 = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !31
  br label %45

41:                                               ; preds = %32
  %42 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %4, ptr noundef nonnull %7, i32 noundef 34) #16
  %43 = load i32, ptr %12, align 4, !tbaa !26
  %44 = load i64, ptr %7, align 8, !tbaa !14
  br label %45

45:                                               ; preds = %41, %35
  %46 = phi i64 [ %38, %35 ], [ %44, %41 ]
  %47 = phi i32 [ %13, %35 ], [ %43, %41 ]
  %48 = phi ptr [ %40, %35 ], [ %42, %41 ]
  %49 = and i32 %47, 536870912
  %50 = icmp eq i32 %49, 0
  %51 = select i1 %50, i8 64, i8 80
  %52 = add i64 %46, 33
  br label %53

53:                                               ; preds = %23, %6, %19, %45
  %54 = phi i1 [ true, %45 ], [ false, %19 ], [ false, %6 ], [ false, %23 ]
  %55 = phi ptr [ %48, %45 ], [ null, %19 ], [ null, %6 ], [ null, %23 ]
  %56 = phi i8 [ %51, %45 ], [ %22, %19 ], [ 16, %6 ], [ 0, %23 ]
  %57 = phi i64 [ %52, %45 ], [ 32, %19 ], [ 32, %6 ], [ 32, %23 ]
  %58 = and i32 %5, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %111, label %60

60:                                               ; preds = %53
  %61 = getelementptr inbounds i8, ptr %1, i64 %2
  %62 = icmp eq i64 %2, 0
  br i1 %62, label %111, label %63

63:                                               ; preds = %60
  %64 = ptrtoint ptr %61 to i64
  br label %65

65:                                               ; preds = %63, %84
  %66 = phi i64 [ 0, %63 ], [ %86, %84 ]
  %67 = phi ptr [ %1, %63 ], [ %87, %84 ]
  %68 = load i8, ptr %67, align 1, !tbaa !31
  %69 = icmp sgt i8 %68, -1
  br i1 %69, label %84, label %70

70:                                               ; preds = %65
  %71 = and i8 %68, -2
  %72 = icmp eq i8 %71, -62
  %73 = ptrtoint ptr %67 to i64
  %74 = sub i64 %64, %73
  %75 = icmp sgt i64 %74, 1
  %76 = and i1 %75, %72
  br i1 %76, label %77, label %111

77:                                               ; preds = %70
  %78 = getelementptr inbounds i8, ptr %67, i64 1
  %79 = load i8, ptr %78, align 1, !tbaa !31
  %80 = and i8 %79, -64
  %81 = icmp eq i8 %80, -128
  br i1 %81, label %82, label %111

82:                                               ; preds = %77
  %83 = add i64 %66, 1
  br label %84

84:                                               ; preds = %65, %82
  %85 = phi ptr [ %67, %65 ], [ %78, %82 ]
  %86 = phi i64 [ %66, %65 ], [ %83, %82 ]
  %87 = getelementptr inbounds i8, ptr %85, i64 1
  %88 = icmp eq ptr %87, %61
  br i1 %88, label %89, label %65, !llvm.loop !113

89:                                               ; preds = %84
  %90 = icmp eq i64 %86, 0
  br i1 %90, label %111, label %91

91:                                               ; preds = %89
  %92 = sub i64 %2, %86
  %93 = call ptr @Perl_safesysmalloc(i64 noundef %92) #16
  call void @Perl_save_pushptr(ptr noundef %93, i32 noundef 10) #16
  br i1 %62, label %111, label %94

94:                                               ; preds = %91, %105
  %95 = phi ptr [ %108, %105 ], [ %1, %91 ]
  %96 = phi ptr [ %109, %105 ], [ %93, %91 ]
  %97 = load i8, ptr %95, align 1, !tbaa !31
  %98 = icmp sgt i8 %97, -1
  br i1 %98, label %105, label %99

99:                                               ; preds = %94
  %100 = getelementptr inbounds i8, ptr %95, i64 1
  %101 = shl i8 %97, 6
  %102 = load i8, ptr %100, align 1, !tbaa !31
  %103 = and i8 %102, 63
  %104 = or disjoint i8 %103, %101
  br label %105

105:                                              ; preds = %94, %99
  %106 = phi i8 [ %104, %99 ], [ %97, %94 ]
  %107 = phi ptr [ %100, %99 ], [ %95, %94 ]
  store i8 %106, ptr %96, align 1, !tbaa !31
  %108 = getelementptr inbounds i8, ptr %107, i64 1
  %109 = getelementptr inbounds i8, ptr %96, i64 1
  %110 = icmp eq ptr %108, %61
  br i1 %110, label %111, label %94, !llvm.loop !114

111:                                              ; preds = %77, %70, %105, %60, %89, %91, %53
  %112 = phi i32 [ %5, %53 ], [ 0, %91 ], [ 0, %89 ], [ 0, %60 ], [ 0, %105 ], [ %5, %70 ], [ %5, %77 ]
  %113 = phi i64 [ %2, %53 ], [ %92, %91 ], [ %2, %89 ], [ 0, %60 ], [ %92, %105 ], [ %2, %70 ], [ %2, %77 ]
  %114 = phi ptr [ %1, %53 ], [ %93, %91 ], [ %1, %89 ], [ %1, %60 ], [ %93, %105 ], [ %1, %70 ], [ %1, %77 ]
  %115 = icmp eq i32 %3, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = call fastcc i32 @S_perl_hash_one_at_a_time_hard(ptr noundef %114, i64 noundef %113) #17
  br label %118

118:                                              ; preds = %116, %111
  %119 = phi i32 [ %3, %111 ], [ %117, %116 ]
  %120 = call noalias ptr @malloc(i64 noundef %57) #20
  store ptr %0, ptr %120, align 8, !tbaa !108
  br i1 %54, label %121, label %125

121:                                              ; preds = %118
  %122 = getelementptr inbounds %struct.refcounted_he, ptr %120, i64 0, i32 4, i64 1
  %123 = load i64, ptr %7, align 8, !tbaa !14
  %124 = add i64 %123, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %122, ptr align 1 %55, i64 %124, i1 false)
  br label %134

125:                                              ; preds = %118
  switch i8 %56, label %137 [
    i8 32, label %126
    i8 48, label %130
  ]

126:                                              ; preds = %125
  %127 = load ptr, ptr %4, align 8, !tbaa !28
  %128 = getelementptr inbounds %struct.xpviv, ptr %127, i64 0, i32 4
  %129 = load i64, ptr %128, align 8, !tbaa !31
  br label %134

130:                                              ; preds = %125
  %131 = load ptr, ptr %4, align 8, !tbaa !28
  %132 = getelementptr inbounds %struct.xpvuv, ptr %131, i64 0, i32 4
  %133 = load i64, ptr %132, align 8, !tbaa !31
  br label %134

134:                                              ; preds = %121, %130, %126
  %135 = phi i64 [ %129, %126 ], [ %133, %130 ], [ %123, %121 ]
  %136 = getelementptr inbounds %struct.refcounted_he, ptr %120, i64 0, i32 2
  store i64 %135, ptr %136, align 8, !tbaa !31
  br label %137

137:                                              ; preds = %134, %125
  %138 = trunc i32 %112 to i8
  %139 = and i8 %138, 1
  %140 = or disjoint i8 %139, %56
  %141 = trunc i64 %113 to i32
  %142 = zext nneg i8 %140 to i32
  %143 = call fastcc ptr @S_share_hek_flags(ptr noundef %114, i32 noundef %141, i32 noundef %119, i32 noundef %142) #17
  %144 = getelementptr inbounds %struct.refcounted_he, ptr %120, i64 0, i32 1
  store ptr %143, ptr %144, align 8, !tbaa !105
  %145 = getelementptr inbounds %struct.refcounted_he, ptr %120, i64 0, i32 4
  store i8 %140, ptr %145, align 4, !tbaa !31
  %146 = getelementptr inbounds %struct.refcounted_he, ptr %120, i64 0, i32 3
  store i32 1, ptr %146, align 8, !tbaa !115
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  ret ptr %120
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @Perl_refcounted_he_new_pv(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19
  %7 = tail call ptr @Perl_refcounted_he_new_pvn(ptr noundef %0, ptr noundef %1, i64 noundef %6, i32 noundef %2, ptr noundef %3, i32 noundef %4) #17
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @Perl_refcounted_he_new_sv(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  %7 = and i32 %4, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = zext i32 %4 to i64
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.13, i64 noundef %10) #16
  br label %11

11:                                               ; preds = %9, %5
  %12 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !26
  %14 = and i32 %13, 2098176
  %15 = icmp eq i32 %14, 1024
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load ptr, ptr %1, align 8, !tbaa !28
  %18 = getelementptr inbounds %struct.xpv, ptr %17, i64 0, i32 2
  %19 = load i64, ptr %18, align 8, !tbaa !29
  store i64 %19, ptr %6, align 8, !tbaa !14
  %20 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !31
  br label %25

22:                                               ; preds = %11
  %23 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %1, ptr noundef nonnull %6, i32 noundef 34) #16
  %24 = load i32, ptr %12, align 4, !tbaa !26
  br label %25

25:                                               ; preds = %22, %16
  %26 = phi i32 [ %13, %16 ], [ %24, %22 ]
  %27 = phi ptr [ %21, %16 ], [ %23, %22 ]
  %28 = icmp eq i32 %2, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %25
  %30 = and i32 %26, 268435456
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr %1, align 8, !tbaa !28
  %34 = getelementptr inbounds %struct.xpv, ptr %33, i64 0, i32 3
  %35 = load i64, ptr %34, align 8, !tbaa !31
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !31
  %40 = getelementptr inbounds i8, ptr %39, i64 -8
  %41 = load i32, ptr %40, align 4, !tbaa !44
  br label %42

42:                                               ; preds = %37, %32, %29, %25
  %43 = phi i32 [ %2, %25 ], [ %41, %37 ], [ 0, %32 ], [ 0, %29 ]
  %44 = lshr i32 %26, 29
  %45 = and i32 %44, 1
  %46 = or i32 %45, %4
  %47 = load i64, ptr %6, align 8, !tbaa !14
  %48 = call ptr @Perl_refcounted_he_new_pvn(ptr noundef %0, ptr noundef %27, i64 noundef %47, i32 noundef %43, ptr noundef %3, i32 noundef %46) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  ret ptr %48
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_refcounted_he_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1, %9
  %4 = phi ptr [ %12, %9 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.refcounted_he, ptr %4, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !115
  %7 = add i32 %6, -1
  store i32 %7, ptr %5, align 8, !tbaa !115
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.refcounted_he, ptr %4, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !105
  tail call fastcc void @S_unshare_hek_or_pvn(ptr noundef %11, ptr noundef null, i32 noundef 0, i32 noundef 0) #17
  %12 = load ptr, ptr %4, align 8, !tbaa !108
  tail call void @free(ptr noundef nonnull %4) #16
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %3

14:                                               ; preds = %9, %3, %1
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef ptr @Perl_refcounted_he_inc(ptr noundef returned %0) local_unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.refcounted_he, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !115
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 8, !tbaa !115
  br label %7

7:                                                ; preds = %3, %1
  ret ptr %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @Perl_cop_fetch_label(ptr nocapture noundef readonly %0, ptr noundef writeonly %1, ptr noundef writeonly %2) local_unnamed_addr #11 {
  %4 = getelementptr inbounds %struct.cop, ptr %0, i64 0, i32 13
  %5 = load ptr, ptr %4, align 8, !tbaa !116
  %6 = icmp eq ptr %5, null
  br i1 %6, label %35, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.refcounted_he, ptr %5, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !105
  %10 = getelementptr inbounds %struct.hek, ptr %9, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !37
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %35

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.hek, ptr %9, i64 0, i32 2
  %15 = load i8, ptr %14, align 4, !tbaa !31
  %16 = icmp eq i8 %15, 58
  br i1 %16, label %17, label %35

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.refcounted_he, ptr %5, i64 0, i32 4
  %19 = load i8, ptr %18, align 4, !tbaa !31
  %20 = and i8 %19, 112
  switch i8 %20, label %35 [
    i8 64, label %21
    i8 80, label %21
  ]

21:                                               ; preds = %17, %17
  %22 = icmp eq ptr %1, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.refcounted_he, ptr %5, i64 0, i32 2
  %25 = load i64, ptr %24, align 8, !tbaa !31
  store i64 %25, ptr %1, align 8, !tbaa !14
  br label %26

26:                                               ; preds = %23, %21
  %27 = icmp eq ptr %2, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %26
  %29 = load i8, ptr %18, align 4, !tbaa !31
  %30 = and i8 %29, 112
  %31 = icmp eq i8 %30, 80
  %32 = select i1 %31, i32 536870912, i32 0
  store i32 %32, ptr %2, align 4, !tbaa !63
  br label %33

33:                                               ; preds = %28, %26
  %34 = getelementptr inbounds %struct.refcounted_he, ptr %5, i64 0, i32 4, i64 1
  br label %35

35:                                               ; preds = %17, %13, %7, %3, %33
  %36 = phi ptr [ %34, %33 ], [ null, %3 ], [ null, %7 ], [ null, %13 ], [ null, %17 ]
  ret ptr %36
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_cop_store_label(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = and i32 %3, -536870913
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = zext i32 %3 to i64
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.14, i64 noundef %8) #16
  br label %9

9:                                                ; preds = %7, %4
  %10 = tail call ptr @Perl_newSVpvn_flags(ptr noundef %1, i64 noundef %2, i32 noundef 524288) #16
  %11 = and i32 %3, 536870912
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.sv, ptr %10, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !26
  %16 = or i32 %15, 536870912
  store i32 %16, ptr %14, align 4, !tbaa !26
  br label %17

17:                                               ; preds = %13, %9
  %18 = getelementptr inbounds %struct.cop, ptr %0, i64 0, i32 13
  %19 = load ptr, ptr %18, align 8, !tbaa !116
  %20 = tail call ptr @Perl_refcounted_he_new_pvn(ptr noundef %19, ptr noundef nonnull @.str.15, i64 noundef 1, i32 noundef 0, ptr noundef %10, i32 noundef 0) #17
  store ptr %20, ptr %18, align 8, !tbaa !116
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_more_bodies(i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_setpvn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_usepvn_flags(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_sv_unmagic(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @Perl_mro_method_changed_in(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @S_ptr_hash(i64 noundef %0) unnamed_addr #12 {
  %2 = xor i64 %0, -1
  %3 = shl i64 %0, 18
  %4 = add i64 %3, %2
  %5 = lshr i64 %4, 31
  %6 = xor i64 %5, %4
  %7 = mul i64 %6, 21
  %8 = lshr i64 %7, 11
  %9 = xor i64 %8, %7
  %10 = mul i64 %9, 65
  %11 = lshr i64 %10, 22
  %12 = xor i64 %11, %10
  %13 = trunc i64 %12 to i32
  ret i32 %13
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @S_hv_auxinit_internal(ptr noundef returned %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.xpvhv_aux, ptr %0, i64 0, i32 3
  store i32 -1, ptr %2, align 8, !tbaa !77
  %3 = getelementptr inbounds %struct.xpvhv_aux, ptr %0, i64 0, i32 2
  store ptr null, ptr %3, align 8, !tbaa !60
  %4 = getelementptr inbounds %struct.xpvhv_aux, ptr %0, i64 0, i32 6
  %5 = load i32, ptr %4, align 8, !tbaa !49
  %6 = getelementptr inbounds %struct.xpvhv_aux, ptr %0, i64 0, i32 7
  store i32 %5, ptr %6, align 4, !tbaa !80
  %7 = getelementptr inbounds %struct.xpvhv_aux, ptr %0, i64 0, i32 8
  store i32 0, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.xpvhv_aux, ptr %0, i64 0, i32 4
  store i32 0, ptr %8, align 4, !tbaa !52
  %9 = getelementptr inbounds %struct.xpvhv_aux, ptr %0, i64 0, i32 5
  store ptr null, ptr %9, align 8, !tbaa !89
  %10 = getelementptr inbounds %struct.xpvhv_aux, ptr %0, i64 0, i32 9
  store i32 0, ptr %10, align 4, !tbaa !118
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret ptr %0
}

; Function Attrs: optsize
declare i32 @Perl_bytes_cmp_utf8(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSViv(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSVuv(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #14

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #14

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nofree nounwind willreturn memory(argmem: read) }
attributes #16 = { nounwind optsize }
attributes #17 = { optsize }
attributes #18 = { nounwind }
attributes #19 = { nounwind optsize willreturn memory(read) }
attributes #20 = { nounwind optsize allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 8}
!10 = !{!"he", !6, i64 0, !6, i64 8, !7, i64 16}
!11 = !{!10, !6, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!15, !15, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!17, !18, i64 12}
!17 = !{!"hv", !6, i64 0, !18, i64 8, !18, i64 12, !7, i64 16}
!18 = !{!"int", !7, i64 0}
!19 = !{!20, !6, i64 40}
!20 = !{!"magic", !6, i64 0, !6, i64 8, !21, i64 16, !7, i64 18, !7, i64 19, !15, i64 24, !6, i64 32, !6, i64 40}
!21 = !{!"short", !7, i64 0}
!22 = !{!23, !6, i64 8}
!23 = !{!"ufuncs", !6, i64 0, !6, i64 8, !15, i64 16}
!24 = !{!20, !6, i64 32}
!25 = !{!23, !15, i64 16}
!26 = !{!27, !18, i64 12}
!27 = !{!"sv", !6, i64 0, !18, i64 8, !18, i64 12, !7, i64 16}
!28 = !{!27, !6, i64 0}
!29 = !{!30, !15, i64 16}
!30 = !{!"xpv", !6, i64 0, !7, i64 8, !15, i64 16, !7, i64 24}
!31 = !{!7, !7, i64 0}
!32 = !{!33, !33, i64 0}
!33 = !{!"_Bool", !7, i64 0}
!34 = !{!17, !6, i64 0}
!35 = !{i8 0, i8 2}
!36 = !{}
!37 = !{!38, !18, i64 4}
!38 = !{!"hek", !18, i64 0, !18, i64 4, !7, i64 8}
!39 = !{!40, !7, i64 72}
!40 = !{!"xpvlv", !6, i64 0, !7, i64 8, !15, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !15, i64 56, !6, i64 64, !7, i64 72, !7, i64 73}
!41 = !{!40, !6, i64 64}
!42 = !{!43, !15, i64 24}
!43 = !{!"xpvhv", !6, i64 0, !7, i64 8, !15, i64 16, !15, i64 24}
!44 = !{!38, !18, i64 0}
!45 = distinct !{!45, !13}
!46 = distinct !{!46, !13}
!47 = !{!48, !18, i64 48}
!48 = !{!"xpvhv_aux", !7, i64 0, !6, i64 8, !6, i64 16, !18, i64 24, !18, i64 28, !6, i64 32, !18, i64 40, !18, i64 44, !18, i64 48, !18, i64 52}
!49 = !{!48, !18, i64 40}
!50 = !{!43, !15, i64 16}
!51 = distinct !{!51, !13}
!52 = !{!48, !18, i64 28}
!53 = !{!54, !18, i64 12}
!54 = !{!"gv", !6, i64 0, !18, i64 8, !18, i64 12, !7, i64 16}
!55 = !{!56, !6, i64 32}
!56 = !{!"gp", !6, i64 0, !6, i64 8, !6, i64 16, !18, i64 24, !18, i64 28, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !18, i64 64, !18, i64 67, !6, i64 72}
!57 = !{!27, !18, i64 8}
!58 = !{!56, !18, i64 24}
!59 = !{!56, !6, i64 16}
!60 = !{!48, !6, i64 16}
!61 = distinct !{!61, !13}
!62 = !{!20, !7, i64 18}
!63 = !{!18, !18, i64 0}
!64 = !{!20, !6, i64 0}
!65 = distinct !{!65, !13}
!66 = distinct !{!66, !13}
!67 = distinct !{!67, !13}
!68 = !{!20, !15, i64 24}
!69 = distinct !{!69, !13}
!70 = distinct !{!70, !13}
!71 = distinct !{!71, !13}
!72 = distinct !{!72, !13}
!73 = distinct !{!73, !13}
!74 = distinct !{!74, !13}
!75 = distinct !{!75, !13}
!76 = distinct !{!76, !13}
!77 = !{!48, !18, i64 24}
!78 = distinct !{!78, !13}
!79 = distinct !{!79, !13}
!80 = !{!48, !18, i64 44}
!81 = distinct !{!81, !13}
!82 = distinct !{!82, !13}
!83 = distinct !{!83, !13}
!84 = !{!17, !18, i64 8}
!85 = distinct !{!85, !13}
!86 = distinct !{!86, !13}
!87 = distinct !{!87, !13}
!88 = distinct !{!88, !13}
!89 = !{!48, !6, i64 32}
!90 = !{!91, !6, i64 0}
!91 = !{!"mro_meta", !6, i64 0, !6, i64 8, !6, i64 16, !18, i64 24, !18, i64 28, !6, i64 32, !6, i64 40, !6, i64 48, !18, i64 56}
!92 = !{!91, !6, i64 8}
!93 = !{!91, !6, i64 16}
!94 = !{!91, !6, i64 40}
!95 = !{!91, !6, i64 48}
!96 = !{!48, !6, i64 8}
!97 = distinct !{!97, !13}
!98 = distinct !{!98, !13}
!99 = distinct !{!99, !13}
!100 = !{i32 0, i32 2}
!101 = distinct !{!101, !13}
!102 = distinct !{!102, !13}
!103 = !{!104, !18, i64 12}
!104 = !{!"av", !6, i64 0, !18, i64 8, !18, i64 12, !7, i64 16}
!105 = !{!106, !6, i64 8}
!106 = !{!"refcounted_he", !6, i64 0, !6, i64 8, !7, i64 16, !18, i64 24, !7, i64 28}
!107 = distinct !{!107, !13}
!108 = !{!106, !6, i64 0}
!109 = distinct !{!109, !13}
!110 = distinct !{!110, !13}
!111 = distinct !{!111, !13}
!112 = distinct !{!112, !13}
!113 = distinct !{!113, !13}
!114 = distinct !{!114, !13}
!115 = !{!106, !18, i64 24}
!116 = !{!117, !6, i64 72}
!117 = !{!"cop", !6, i64 0, !6, i64 8, !6, i64 16, !15, i64 24, !18, i64 32, !18, i64 33, !18, i64 33, !18, i64 33, !18, i64 33, !18, i64 33, !18, i64 33, !18, i64 33, !7, i64 34, !7, i64 35, !18, i64 36, !6, i64 40, !6, i64 48, !18, i64 56, !18, i64 60, !6, i64 64, !6, i64 72}
!118 = !{!48, !18, i64 52}
