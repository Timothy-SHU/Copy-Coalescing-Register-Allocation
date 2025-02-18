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
%struct.xpvmg = type { ptr, %union._xmgu, i64, %union.anon.7, %union._xivu, %union._xnvu }
%union.anon.7 = type { i64 }
%union._xivu = type { i64 }
%union._xnvu = type { double }
%struct.xpvhv = type { ptr, %union._xmgu, i64, i64 }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.gv = type { ptr, i32, i32, %union.anon.11 }
%union.anon.11 = type { ptr }
%struct.gp = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr }
%struct.xpvlv = type { ptr, %union._xmgu, i64, %union.anon.3, %union._xivu, %union._xnvu, %union.anon.4, i64, ptr, i8, i8 }
%union.anon.3 = type { i64 }
%union.anon.4 = type { i64 }
%struct.xpviv = type { ptr, %union._xmgu, i64, %union.anon.5, %union._xivu }
%union.anon.5 = type { i64 }
%struct.xpvnv = type { ptr, %union._xmgu, i64, %union.anon.6, %union._xivu, %union._xnvu }
%union.anon.6 = type { i64 }
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

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_free_tied_hv_pool() local_unnamed_addr #0 !prof !116 {
  %1 = load ptr, ptr @PL_hv_fetch_ent_mh, align 8, !tbaa !117
  %2 = icmp eq ptr %1, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %0, %3
  %4 = phi ptr [ %7, %3 ], [ %1, %0 ]
  %5 = getelementptr inbounds %struct.he, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !121
  tail call void @Perl_safesysfree(ptr noundef %6) #16
  %7 = load ptr, ptr %4, align 8, !tbaa !123
  %8 = load ptr, ptr @PL_body_roots, align 16, !tbaa !117
  store ptr %8, ptr %4, align 8, !tbaa !123
  store ptr %4, ptr @PL_body_roots, align 16, !tbaa !117
  %9 = icmp eq ptr %7, null
  br i1 %9, label %10, label %3, !llvm.loop !124

10:                                               ; preds = %3, %0
  store ptr null, ptr @PL_hv_fetch_ent_mh, align 8, !tbaa !117
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @Perl_safesysfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_hv_common_key_len(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #3 !prof !127 {
  %7 = tail call i32 @llvm.abs.i32(i32 %2, i1 true)
  %8 = lshr i32 %2, 31
  %9 = zext nneg i32 %7 to i64
  %10 = tail call ptr @Perl_hv_common(ptr noundef %0, ptr noundef null, ptr noundef %1, i64 noundef %9, i32 noundef %8, i32 noundef %3, ptr noundef %4, i32 noundef %5)
  ret ptr %10
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @Perl_hv_common(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7) local_unnamed_addr #4 !prof !128 {
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  store i64 %3, ptr %11, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #16
  %13 = and i32 %5, 32
  %14 = icmp eq ptr %0, null
  br i1 %14, label %1319, label %15, !prof !131

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !132
  %18 = and i32 %17, 255
  %19 = icmp eq i32 %18, 255
  br i1 %19, label %1319, label %20, !prof !131

20:                                               ; preds = %15
  %21 = and i32 %17, 6291456
  %22 = icmp eq i32 %21, 6291456
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = and i1 %24, %22
  br i1 %25, label %26, label %51, !prof !131

26:                                               ; preds = %20
  %27 = tail call ptr @Perl_mg_find(ptr noundef %0, i32 noundef 85) #16
  %28 = icmp eq ptr %27, null
  br i1 %28, label %51, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.magic, ptr %27, i64 0, i32 7
  %31 = load ptr, ptr %30, align 8, !tbaa !135
  %32 = getelementptr inbounds %struct.ufuncs, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !138
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %51

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.magic, ptr %27, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !140
  %38 = icmp eq ptr %1, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load i64, ptr %11, align 8, !tbaa !129
  %41 = shl i32 %4, 29
  %42 = and i32 %41, 536870912
  %43 = or disjoint i32 %42, 524288
  %44 = tail call ptr @Perl_newSVpvn_flags(ptr noundef %2, i64 noundef %40, i32 noundef %43) #16
  br label %45

45:                                               ; preds = %39, %35
  %46 = phi ptr [ %1, %35 ], [ %44, %39 ]
  store ptr %46, ptr %36, align 8, !tbaa !140
  %47 = sext i32 %5 to i64
  %48 = getelementptr inbounds %struct.ufuncs, ptr %31, i64 0, i32 2
  store i64 %47, ptr %48, align 8, !tbaa !141
  %49 = tail call i32 @Perl_magic_getuvar(ptr noundef %0, ptr noundef nonnull %27) #16
  %50 = load ptr, ptr %36, align 8, !tbaa !140
  store ptr %37, ptr %36, align 8, !tbaa !140
  br label %51

51:                                               ; preds = %26, %45, %29, %20
  %52 = phi i32 [ %7, %20 ], [ %7, %26 ], [ 0, %45 ], [ %7, %29 ]
  %53 = phi ptr [ %1, %20 ], [ %1, %26 ], [ %50, %45 ], [ %1, %29 ]
  %54 = icmp eq ptr %53, null
  br i1 %54, label %87, label %55, !prof !142

55:                                               ; preds = %51
  %56 = and i32 %4, 256
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %59, label %58, !prof !143

58:                                               ; preds = %55
  tail call void @Perl_safesysfree(ptr noundef %2) #16
  br label %59

59:                                               ; preds = %58, %55
  %60 = getelementptr inbounds %struct.sv, ptr %53, i64 0, i32 2
  %61 = load i32, ptr %60, align 4, !tbaa !144
  %62 = and i32 %61, 2098176
  %63 = icmp eq i32 %62, 1024
  br i1 %63, label %64, label %70, !prof !146

64:                                               ; preds = %59
  %65 = load ptr, ptr %53, align 8, !tbaa !147
  %66 = getelementptr inbounds %struct.xpv, ptr %65, i64 0, i32 2
  %67 = load i64, ptr %66, align 8, !tbaa !148
  store i64 %67, ptr %11, align 8, !tbaa !129
  %68 = getelementptr inbounds %struct.sv, ptr %53, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !150
  br label %72

70:                                               ; preds = %59
  %71 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %53, ptr noundef nonnull %11, i32 noundef 34) #16
  br label %72

72:                                               ; preds = %70, %64
  %73 = phi ptr [ %69, %64 ], [ %71, %70 ]
  %74 = load i32, ptr %60, align 4, !tbaa !144
  %75 = lshr i32 %74, 29
  %76 = and i32 %75, 1
  %77 = trunc i32 %76 to i8
  store i8 %77, ptr %12, align 1, !tbaa !151
  %78 = and i32 %74, 268435456
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %90, label %80, !prof !153

80:                                               ; preds = %72
  %81 = load ptr, ptr %53, align 8, !tbaa !147
  %82 = getelementptr inbounds %struct.xpv, ptr %81, i64 0, i32 3
  %83 = load i64, ptr %82, align 8, !tbaa !150
  %84 = icmp eq i64 %83, 0
  %85 = or disjoint i32 %76, 1024
  %86 = select i1 %84, i32 %85, i32 %76, !prof !154
  br label %90

87:                                               ; preds = %51
  %88 = trunc i32 %4 to i8
  %89 = and i8 %88, 1
  store i8 %89, ptr %12, align 1, !tbaa !151
  br label %90

90:                                               ; preds = %80, %72, %87
  %91 = phi i32 [ %4, %87 ], [ %76, %72 ], [ %86, %80 ]
  %92 = phi ptr [ %2, %87 ], [ %73, %72 ], [ %73, %80 ]
  %93 = and i32 %5, 64
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %622, label %95, !prof !155

95:                                               ; preds = %90
  %96 = load i64, ptr %11, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9)
  store i64 %96, ptr %9, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #16
  %97 = trunc i32 %91 to i8
  %98 = and i8 %97, 1
  store i8 %98, ptr %10, align 1, !tbaa !151
  %99 = load i32, ptr %16, align 4, !tbaa !132
  %100 = and i32 %99, 8388608
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %154, label %102, !prof !156

102:                                              ; preds = %95
  %103 = load ptr, ptr %0, align 8, !tbaa !157
  %104 = getelementptr inbounds %struct.xpvmg, ptr %103, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !150
  %106 = icmp eq ptr %105, null
  br i1 %106, label %124, label %107, !prof !158

107:                                              ; preds = %102, %120
  %108 = phi i1 [ %123, %120 ], [ %106, %102 ]
  %109 = phi ptr [ %122, %120 ], [ %105, %102 ]
  %110 = phi i8 [ %121, %120 ], [ 0, %102 ]
  %111 = getelementptr inbounds %struct.magic, ptr %109, i64 0, i32 3
  %112 = load i8, ptr %111, align 2, !tbaa !159
  %113 = zext i8 %112 to i64
  %114 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %113
  %115 = load i32, ptr %114, align 4, !tbaa !160
  %116 = and i32 %115, 16400
  %117 = icmp eq i32 %116, 16400
  br i1 %117, label %118, label %120, !prof !161

118:                                              ; preds = %107
  %119 = icmp eq i8 %112, 80
  br i1 %119, label %124, label %120, !prof !162

120:                                              ; preds = %118, %107
  %121 = phi i8 [ 1, %118 ], [ %110, %107 ]
  %122 = load ptr, ptr %109, align 8, !tbaa !150
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %107, !prof !163, !llvm.loop !164

124:                                              ; preds = %120, %118, %102
  %125 = phi i1 [ %106, %102 ], [ %123, %120 ], [ %108, %118 ]
  %126 = phi i8 [ 0, %102 ], [ %121, %120 ], [ 1, %118 ]
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %151, label %128, !prof !162

128:                                              ; preds = %124
  %129 = and i32 %91, -257
  %130 = call ptr @Perl_hv_common(ptr noundef nonnull %0, ptr noundef %53, ptr noundef %92, i64 noundef %96, i32 noundef %129, i32 noundef 17, ptr noundef null, i32 noundef %52)
  %131 = icmp eq ptr %130, null
  br i1 %131, label %135, label %132, !prof !162

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.he, ptr %130, i64 0, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !150
  br label %135

135:                                              ; preds = %132, %128
  %136 = phi ptr [ %134, %132 ], [ null, %128 ]
  %137 = icmp eq ptr %136, null
  br i1 %137, label %151, label %138, !prof !162

138:                                              ; preds = %135
  %139 = getelementptr inbounds %struct.sv, ptr %136, i64 0, i32 2
  %140 = load i32, ptr %139, align 4, !tbaa !144
  %141 = and i32 %140, 14680064
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %145, label %143, !prof !162

143:                                              ; preds = %138
  %144 = call i32 @Perl_mg_clear(ptr noundef nonnull %136) #16
  br label %145

145:                                              ; preds = %143, %138
  br i1 %125, label %151, label %146, !prof !161

146:                                              ; preds = %145
  %147 = call ptr @Perl_mg_find(ptr noundef nonnull %136, i32 noundef 112) #16
  %148 = icmp eq ptr %147, null
  br i1 %148, label %151, label %149

149:                                              ; preds = %146
  %150 = call i32 @Perl_sv_unmagic(ptr noundef nonnull %136, i32 noundef 112) #16
  br label %151

151:                                              ; preds = %135, %145, %146, %149, %124
  %152 = phi i1 [ true, %124 ], [ false, %149 ], [ false, %146 ], [ true, %145 ], [ true, %135 ]
  %153 = phi ptr [ undef, %124 ], [ %136, %149 ], [ null, %146 ], [ undef, %145 ], [ undef, %135 ]
  br i1 %152, label %154, label %620, !prof !161

154:                                              ; preds = %151, %95
  %155 = phi ptr [ %153, %151 ], [ undef, %95 ]
  %156 = load ptr, ptr %0, align 8, !tbaa !157
  %157 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %158 = load ptr, ptr %157, align 8, !tbaa !150
  %159 = icmp eq ptr %158, null
  br i1 %159, label %620, label %160, !prof !165

160:                                              ; preds = %154
  %161 = load i8, ptr %10, align 1, !tbaa !151, !range !166, !noundef !167
  %162 = icmp ne i8 %161, 0
  %163 = and i32 %91, 1024
  %164 = icmp eq i32 %163, 0
  %165 = and i1 %164, %162
  br i1 %165, label %166, label %184, !prof !168

166:                                              ; preds = %160
  %167 = call ptr @Perl_bytes_from_utf8(ptr noundef %92, ptr noundef nonnull %9, ptr noundef nonnull %10) #16
  %168 = load i8, ptr %10, align 1, !tbaa !151, !range !166, !noundef !167
  %169 = icmp eq i8 %168, 0
  %170 = or i32 %91, 1
  %171 = and i32 %91, -1026
  %172 = select i1 %169, i32 %171, i32 %170
  %173 = icmp eq ptr %167, %92
  br i1 %173, label %180, label %174

174:                                              ; preds = %166
  %175 = and i32 %172, 256
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %178, label %177

177:                                              ; preds = %174
  call void @Perl_safesysfree(ptr noundef %92) #16
  br label %178

178:                                              ; preds = %177, %174
  %179 = or i32 %172, 258
  br label %180

180:                                              ; preds = %178, %166
  %181 = phi i32 [ %179, %178 ], [ %172, %166 ]
  %182 = load i32, ptr %16, align 4, !tbaa !144
  %183 = or i32 %182, -2147483648
  store i32 %183, ptr %16, align 4, !tbaa !144
  br label %184

184:                                              ; preds = %180, %160
  %185 = phi i32 [ %181, %180 ], [ %91, %160 ]
  %186 = phi ptr [ %167, %180 ], [ %92, %160 ]
  br i1 %54, label %211, label %187, !prof !169

187:                                              ; preds = %184
  %188 = getelementptr inbounds %struct.sv, ptr %53, i64 0, i32 2
  %189 = load i32, ptr %188, align 4, !tbaa !144
  %190 = and i32 %189, 268435456
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %211, label %192, !prof !170

192:                                              ; preds = %187
  %193 = load ptr, ptr %53, align 8, !tbaa !147
  %194 = getelementptr inbounds %struct.xpv, ptr %193, i64 0, i32 3
  %195 = load i64, ptr %194, align 8, !tbaa !150
  %196 = icmp eq i64 %195, 0
  br i1 %196, label %197, label %211, !prof !171

197:                                              ; preds = %192
  %198 = load i32, ptr %16, align 4, !tbaa !132
  %199 = and i32 %198, 536870912
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %205, label %201, !prof !172

201:                                              ; preds = %197
  %202 = getelementptr inbounds %struct.sv, ptr %53, i64 0, i32 3
  %203 = load ptr, ptr %202, align 8, !tbaa !150
  %204 = getelementptr inbounds i8, ptr %203, i64 -8
  br label %205

205:                                              ; preds = %201, %197
  %206 = phi ptr [ %204, %201 ], [ null, %197 ]
  %207 = getelementptr inbounds %struct.sv, ptr %53, i64 0, i32 3
  %208 = load ptr, ptr %207, align 8, !tbaa !150
  %209 = getelementptr inbounds i8, ptr %208, i64 -8
  %210 = load i32, ptr %209, align 4, !tbaa !173
  br label %255

211:                                              ; preds = %192, %187, %184
  %212 = icmp eq i32 %52, 0
  br i1 %212, label %213, label %255, !prof !175

213:                                              ; preds = %211
  %214 = load i64, ptr %9, align 8, !tbaa !129
  %215 = getelementptr inbounds i8, ptr %186, i64 %214
  %216 = trunc i64 %214 to i32
  %217 = add i32 %216, 544173908
  %218 = icmp sgt i64 %214, 0
  br i1 %218, label %219, label %230, !prof !176

219:                                              ; preds = %213, %219
  %220 = phi i32 [ %228, %219 ], [ %217, %213 ]
  %221 = phi ptr [ %225, %219 ], [ %186, %213 ]
  %222 = mul i32 %220, 1025
  %223 = lshr i32 %222, 6
  %224 = xor i32 %223, %222
  %225 = getelementptr inbounds i8, ptr %221, i64 1
  %226 = load i8, ptr %221, align 1, !tbaa !150
  %227 = zext i8 %226 to i32
  %228 = add i32 %224, %227
  %229 = icmp ult ptr %225, %215
  br i1 %229, label %219, label %230, !prof !177, !llvm.loop !178

230:                                              ; preds = %219, %213
  %231 = phi i32 [ %217, %213 ], [ %228, %219 ]
  %232 = mul i32 %231, 1025
  %233 = lshr i32 %232, 6
  %234 = xor i32 %233, %232
  %235 = mul i32 %234, 1025
  %236 = add i32 %235, 73800
  %237 = lshr i32 %236, 6
  %238 = xor i32 %237, %236
  %239 = mul i32 %238, 1025
  %240 = add i32 %239, 113775
  %241 = lshr i32 %240, 6
  %242 = xor i32 %241, %240
  %243 = mul i32 %242, 1025
  %244 = add i32 %243, 118900
  %245 = lshr i32 %244, 6
  %246 = xor i32 %245, %244
  %247 = mul i32 %246, 1025
  %248 = add i32 %247, 32800
  %249 = lshr i32 %248, 6
  %250 = xor i32 %249, %248
  %251 = mul i32 %250, 9
  %252 = lshr i32 %251, 11
  %253 = xor i32 %252, %251
  %254 = mul i32 %253, 32769
  br label %255

255:                                              ; preds = %230, %211, %205
  %256 = phi ptr [ %206, %205 ], [ null, %211 ], [ null, %230 ]
  %257 = phi i32 [ %210, %205 ], [ %52, %211 ], [ %254, %230 ]
  %258 = load ptr, ptr %157, align 8, !tbaa !150
  %259 = load ptr, ptr %0, align 8, !tbaa !157
  %260 = getelementptr inbounds %struct.xpvhv, ptr %259, i64 0, i32 3
  %261 = load i64, ptr %260, align 8, !tbaa !179
  %262 = trunc i64 %261 to i32
  %263 = and i32 %257, %262
  %264 = zext i32 %263 to i64
  %265 = getelementptr inbounds ptr, ptr %258, i64 %264
  %266 = load ptr, ptr %265, align 8, !tbaa !117
  %267 = icmp eq ptr %266, null
  br i1 %267, label %609, label %268, !prof !181

268:                                              ; preds = %255
  %269 = icmp eq ptr %256, null
  br i1 %269, label %303, label %270, !prof !182

270:                                              ; preds = %268, %295
  %271 = phi ptr [ %296, %295 ], [ %266, %268 ]
  %272 = phi ptr [ %271, %295 ], [ %265, %268 ]
  %273 = getelementptr inbounds %struct.he, ptr %271, i64 0, i32 1
  %274 = load ptr, ptr %273, align 8, !tbaa !121
  %275 = icmp eq ptr %274, %256
  br i1 %275, label %293, label %276, !prof !183

276:                                              ; preds = %270
  %277 = getelementptr inbounds %struct.hek, ptr %256, i64 0, i32 2
  %278 = getelementptr inbounds %struct.hek, ptr %256, i64 0, i32 1
  %279 = load i32, ptr %278, align 4, !tbaa !184
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i8, ptr %277, i64 %280
  %282 = getelementptr inbounds i8, ptr %281, i64 1
  %283 = load i8, ptr %282, align 1, !tbaa !150
  %284 = getelementptr inbounds %struct.hek, ptr %274, i64 0, i32 2
  %285 = getelementptr inbounds %struct.hek, ptr %274, i64 0, i32 1
  %286 = load i32, ptr %285, align 4, !tbaa !184
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i8, ptr %284, i64 %287
  %289 = getelementptr inbounds i8, ptr %288, i64 1
  %290 = load i8, ptr %289, align 1, !tbaa !150
  %291 = icmp eq i8 %290, %283
  %292 = select i1 %291, i32 0, i32 3, !prof !185
  br label %293

293:                                              ; preds = %276, %270
  %294 = phi i32 [ 6, %270 ], [ %292, %276 ]
  switch i32 %294, label %299 [
    i32 0, label %295
    i32 3, label %298
  ], !prof !186

295:                                              ; preds = %293
  %296 = load ptr, ptr %271, align 8, !tbaa !117
  %297 = icmp eq ptr %296, null
  br i1 %297, label %299, label %270, !prof !187, !llvm.loop !188

298:                                              ; preds = %293
  br label %299

299:                                              ; preds = %295, %293, %298
  %300 = phi ptr [ %272, %293 ], [ %271, %295 ], [ %265, %298 ]
  %301 = phi ptr [ %271, %293 ], [ null, %295 ], [ %266, %298 ]
  %302 = phi i32 [ %294, %293 ], [ 2, %295 ], [ 0, %298 ]
  switch i32 %302, label %620 [
    i32 0, label %303
    i32 6, label %334
    i32 2, label %609
  ], !prof !189

303:                                              ; preds = %299, %268
  %304 = phi ptr [ %300, %299 ], [ %265, %268 ]
  %305 = phi ptr [ %301, %299 ], [ %266, %268 ]
  %306 = icmp eq ptr %305, null
  br i1 %306, label %609, label %307, !prof !190

307:                                              ; preds = %303
  %308 = load i64, ptr %9, align 8
  %309 = trunc i64 %308 to i32
  br label %310

310:                                              ; preds = %307, %606
  %311 = phi ptr [ %305, %307 ], [ %607, %606 ]
  %312 = phi ptr [ %304, %307 ], [ %311, %606 ]
  %313 = getelementptr inbounds %struct.he, ptr %311, i64 0, i32 1
  %314 = load ptr, ptr %313, align 8, !tbaa !121
  %315 = load i32, ptr %314, align 4, !tbaa !173
  %316 = icmp eq i32 %315, %257
  br i1 %316, label %317, label %606, !prof !191

317:                                              ; preds = %310
  %318 = getelementptr inbounds %struct.hek, ptr %314, i64 0, i32 1
  %319 = load i32, ptr %318, align 4, !tbaa !184
  %320 = icmp eq i32 %319, %309
  br i1 %320, label %321, label %606, !prof !192

321:                                              ; preds = %317
  %322 = getelementptr inbounds %struct.hek, ptr %314, i64 0, i32 2
  %323 = call i32 @bcmp(ptr nonnull %322, ptr %186, i64 %308), !prof !193
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %325, label %606, !prof !192

325:                                              ; preds = %321
  %326 = sext i32 %319 to i64
  %327 = getelementptr inbounds i8, ptr %322, i64 %326
  %328 = getelementptr inbounds i8, ptr %327, i64 1
  %329 = load i8, ptr %328, align 1, !tbaa !150
  %330 = zext i8 %329 to i32
  %331 = xor i32 %185, %330
  %332 = and i32 %331, 1
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %334, label %606, !prof !192

334:                                              ; preds = %325, %299
  %335 = phi ptr [ %300, %299 ], [ %312, %325 ]
  %336 = phi ptr [ %301, %299 ], [ %311, %325 ]
  %337 = load ptr, ptr @PL_strtab, align 8, !tbaa !117
  %338 = icmp eq ptr %337, %0
  br i1 %338, label %339, label %344, !prof !194

339:                                              ; preds = %334
  %340 = and i32 %185, 256
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %343, label %342

342:                                              ; preds = %339
  call void @Perl_safesysfree(ptr noundef %186) #16
  br label %343

343:                                              ; preds = %342, %339
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @S_strtab_error, ptr noundef nonnull @.str.16) #16
  br label %344

344:                                              ; preds = %343, %334
  %345 = getelementptr inbounds %struct.he, ptr %336, i64 0, i32 2
  %346 = load ptr, ptr %345, align 8, !tbaa !150
  %347 = icmp eq ptr %346, @PL_sv_placeholder
  br i1 %347, label %348, label %352, !prof !194

348:                                              ; preds = %344
  %349 = and i32 %185, 256
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %620, label %351

351:                                              ; preds = %348
  call void @Perl_safesysfree(ptr noundef %186) #16
  br label %620

352:                                              ; preds = %344
  %353 = load i32, ptr %16, align 4, !tbaa !132
  %354 = and i32 %353, 134283264
  %355 = icmp eq i32 %354, 0
  %356 = icmp eq ptr %346, null
  %357 = or i1 %356, %355
  br i1 %357, label %366, label %358, !prof !195

358:                                              ; preds = %352
  %359 = getelementptr inbounds %struct.sv, ptr %346, i64 0, i32 2
  %360 = load i32, ptr %359, align 4, !tbaa !144
  %361 = and i32 %360, 134283264
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %366, label %363

363:                                              ; preds = %358
  %364 = load i64, ptr %9, align 8, !tbaa !129
  %365 = trunc i64 %364 to i32
  call fastcc void @S_hv_notallowed(i32 noundef %185, ptr noundef %186, i32 noundef %365, ptr noundef nonnull @.str.5)
  br label %366

366:                                              ; preds = %363, %358, %352
  %367 = and i32 %185, 256
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %370, label %369, !prof !195

369:                                              ; preds = %366
  call void @Perl_safesysfree(ptr noundef %186) #16
  br label %370

370:                                              ; preds = %369, %366
  %371 = load ptr, ptr %345, align 8, !tbaa !150
  %372 = icmp eq ptr %371, null
  br i1 %372, label %472, label %373, !prof !194

373:                                              ; preds = %370
  %374 = load i32, ptr %16, align 4, !tbaa !132
  %375 = and i32 %374, 33554432
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %472, label %377, !prof !196

377:                                              ; preds = %373
  %378 = load ptr, ptr %157, align 8, !tbaa !150
  %379 = load ptr, ptr %0, align 8, !tbaa !157
  %380 = getelementptr inbounds %struct.xpvhv, ptr %379, i64 0, i32 3
  %381 = load i64, ptr %380, align 8, !tbaa !179
  %382 = getelementptr ptr, ptr %378, i64 %381
  %383 = getelementptr ptr, ptr %382, i64 1
  %384 = load ptr, ptr %383, align 8, !tbaa !150
  %385 = icmp eq ptr %384, null
  br i1 %385, label %472, label %386, !prof !197

386:                                              ; preds = %377
  %387 = getelementptr i8, ptr %382, i64 36
  %388 = load i32, ptr %387, align 4, !tbaa !198
  %389 = icmp eq i32 %388, -1
  br i1 %389, label %472, label %390, !prof !200

390:                                              ; preds = %386
  br i1 %54, label %404, label %391, !prof !201

391:                                              ; preds = %390
  %392 = getelementptr inbounds %struct.sv, ptr %53, i64 0, i32 2
  %393 = load i32, ptr %392, align 4, !tbaa !144
  %394 = and i32 %393, 2098176
  %395 = icmp eq i32 %394, 1024
  br i1 %395, label %396, label %402, !prof !202

396:                                              ; preds = %391
  %397 = load ptr, ptr %53, align 8, !tbaa !147
  %398 = getelementptr inbounds %struct.xpv, ptr %397, i64 0, i32 2
  %399 = load i64, ptr %398, align 8, !tbaa !148
  store i64 %399, ptr %9, align 8, !tbaa !129
  %400 = getelementptr inbounds %struct.sv, ptr %53, i64 0, i32 3
  %401 = load ptr, ptr %400, align 8, !tbaa !150
  br label %404

402:                                              ; preds = %391
  %403 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %53, ptr noundef nonnull %9, i32 noundef 2) #16
  br label %404

404:                                              ; preds = %402, %396, %390
  %405 = phi ptr [ %186, %390 ], [ %401, %396 ], [ %403, %402 ]
  %406 = load i64, ptr %9, align 8, !tbaa !129
  %407 = icmp ugt i64 %406, 1
  br i1 %407, label %408, label %418, !prof !203

408:                                              ; preds = %404
  %409 = add i64 %406, -2
  %410 = getelementptr inbounds i8, ptr %405, i64 %409
  %411 = load i8, ptr %410, align 1, !tbaa !150
  %412 = icmp eq i8 %411, 58
  br i1 %412, label %413, label %418, !prof !200

413:                                              ; preds = %408
  %414 = add i64 %406, -1
  %415 = getelementptr inbounds i8, ptr %405, i64 %414
  %416 = load i8, ptr %415, align 1, !tbaa !150
  %417 = icmp eq i8 %416, 58
  br i1 %417, label %423, label %418

418:                                              ; preds = %413, %408, %404
  %419 = icmp eq i64 %406, 1
  br i1 %419, label %420, label %466, !prof !200

420:                                              ; preds = %418
  %421 = load i8, ptr %405, align 1, !tbaa !150
  %422 = icmp eq i8 %421, 58
  br i1 %422, label %423, label %466

423:                                              ; preds = %420, %413
  %424 = icmp eq i64 %406, 6
  %425 = load ptr, ptr @PL_defstash, align 8
  %426 = icmp eq ptr %425, %0
  %427 = select i1 %424, i1 %426, i1 false
  br i1 %427, label %428, label %431

428:                                              ; preds = %423
  %429 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %405, ptr noundef nonnull dereferenceable(6) @.str.17, i64 6)
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %466, label %431

431:                                              ; preds = %428, %423
  %432 = getelementptr inbounds %struct.gv, ptr %371, i64 0, i32 2
  %433 = load i32, ptr %432, align 4, !tbaa !204
  %434 = and i32 %433, 255
  %435 = icmp eq i32 %434, 9
  br i1 %435, label %436, label %466

436:                                              ; preds = %431
  %437 = getelementptr inbounds %struct.gv, ptr %371, i64 0, i32 3
  %438 = load ptr, ptr %437, align 8, !tbaa !150
  %439 = getelementptr inbounds %struct.gp, ptr %438, i64 0, i32 5
  %440 = load ptr, ptr %439, align 8, !tbaa !206
  %441 = icmp eq ptr %440, null
  br i1 %441, label %466, label %442

442:                                              ; preds = %436
  %443 = getelementptr inbounds %struct.hv, ptr %440, i64 0, i32 2
  %444 = load i32, ptr %443, align 4, !tbaa !132
  %445 = and i32 %444, 33554432
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %466, label %447

447:                                              ; preds = %442
  %448 = getelementptr inbounds %struct.hv, ptr %440, i64 0, i32 3
  %449 = load ptr, ptr %448, align 8, !tbaa !150
  %450 = load ptr, ptr %440, align 8, !tbaa !157
  %451 = getelementptr inbounds %struct.xpvhv, ptr %450, i64 0, i32 3
  %452 = load i64, ptr %451, align 8, !tbaa !179
  %453 = getelementptr ptr, ptr %449, i64 %452
  %454 = getelementptr ptr, ptr %453, i64 1
  %455 = load ptr, ptr %454, align 8, !tbaa !150
  %456 = icmp eq ptr %455, null
  br i1 %456, label %466, label %457

457:                                              ; preds = %447
  %458 = getelementptr i8, ptr %453, i64 36
  %459 = load i32, ptr %458, align 4, !tbaa !198
  %460 = icmp eq i32 %459, -1
  br i1 %460, label %466, label %461

461:                                              ; preds = %457
  %462 = call ptr @Perl_sv_2mortal(ptr noundef nonnull %371) #16
  %463 = getelementptr inbounds %struct.sv, ptr %462, i64 0, i32 1
  %464 = load i32, ptr %463, align 8, !tbaa !208
  %465 = add i32 %464, 1
  store i32 %465, ptr %463, align 8, !tbaa !208
  br label %472

466:                                              ; preds = %431, %428, %457, %447, %442, %436, %420, %418
  %467 = phi ptr [ %440, %457 ], [ %440, %447 ], [ %440, %442 ], [ null, %436 ], [ null, %420 ], [ null, %418 ], [ null, %428 ], [ null, %431 ]
  %468 = icmp eq i64 %406, 3
  br i1 %468, label %469, label %472, !prof !200

469:                                              ; preds = %466
  %470 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %405, ptr noundef nonnull dereferenceable(4) @.str.18, i64 noundef 3) #17
  %471 = icmp eq i32 %470, 0
  br label %472

472:                                              ; preds = %469, %466, %461, %386, %377, %373, %370
  %473 = phi i1 [ false, %461 ], [ false, %466 ], [ false, %386 ], [ false, %377 ], [ false, %373 ], [ false, %370 ], [ %471, %469 ]
  %474 = phi i1 [ true, %461 ], [ false, %466 ], [ false, %386 ], [ false, %377 ], [ false, %373 ], [ false, %370 ], [ false, %469 ]
  %475 = phi ptr [ %371, %461 ], [ %371, %466 ], [ null, %386 ], [ null, %377 ], [ null, %373 ], [ null, %370 ], [ %371, %469 ]
  %476 = phi ptr [ %440, %461 ], [ %467, %466 ], [ null, %386 ], [ null, %377 ], [ null, %373 ], [ null, %370 ], [ %467, %469 ]
  %477 = and i32 %5, 4
  %478 = icmp eq i32 %477, 0
  %479 = load ptr, ptr %345, align 8, !tbaa !150
  br i1 %478, label %480, label %482, !prof !209

480:                                              ; preds = %472
  %481 = call ptr @Perl_sv_2mortal(ptr noundef %479) #16
  br label %482

482:                                              ; preds = %472, %480
  %483 = phi ptr [ %481, %480 ], [ null, %472 ]
  %484 = phi ptr [ %481, %480 ], [ %479, %472 ]
  store ptr @PL_sv_placeholder, ptr %345, align 8, !tbaa !150
  %485 = icmp eq ptr %484, null
  br i1 %485, label %519, label %486, !prof !194

486:                                              ; preds = %482
  %487 = getelementptr inbounds %struct.sv, ptr %484, i64 0, i32 2
  %488 = load i32, ptr %487, align 4, !tbaa !144
  %489 = and i32 %488, 49407
  %490 = icmp eq i32 %489, 32777
  br i1 %490, label %491, label %519, !prof !210

491:                                              ; preds = %486
  %492 = getelementptr inbounds %struct.sv, ptr %484, i64 0, i32 3
  %493 = load ptr, ptr %492, align 8, !tbaa !150
  %494 = getelementptr inbounds %struct.gp, ptr %493, i64 0, i32 3
  %495 = load i32, ptr %494, align 8, !tbaa !211
  %496 = icmp eq i32 %495, 0
  br i1 %496, label %497, label %519, !prof !203

497:                                              ; preds = %491
  %498 = getelementptr inbounds %struct.gp, ptr %493, i64 0, i32 2
  %499 = load ptr, ptr %498, align 8, !tbaa !212
  %500 = icmp eq ptr %499, null
  br i1 %500, label %519, label %501, !prof !213

501:                                              ; preds = %497
  %502 = load i32, ptr %16, align 4, !tbaa !132
  %503 = and i32 %502, 33554432
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %519, label %505, !prof !214

505:                                              ; preds = %501
  %506 = load ptr, ptr %157, align 8, !tbaa !150
  %507 = load ptr, ptr %0, align 8, !tbaa !157
  %508 = getelementptr inbounds %struct.xpvhv, ptr %507, i64 0, i32 3
  %509 = load i64, ptr %508, align 8, !tbaa !179
  %510 = getelementptr ptr, ptr %506, i64 %509
  %511 = getelementptr ptr, ptr %510, i64 1
  %512 = load ptr, ptr %511, align 8, !tbaa !150
  %513 = icmp eq ptr %512, null
  br i1 %513, label %519, label %514, !prof !214

514:                                              ; preds = %505
  %515 = getelementptr i8, ptr %510, i64 36
  %516 = load i32, ptr %515, align 4, !tbaa !198
  %517 = icmp eq i32 %516, -1
  br i1 %517, label %519, label %518, !prof !214

518:                                              ; preds = %514
  call void @Perl_mro_method_changed_in(ptr noundef nonnull %0) #16
  br label %519

519:                                              ; preds = %518, %514, %505, %501, %497, %491, %486, %482
  %520 = load i32, ptr %16, align 4, !tbaa !132
  %521 = and i32 %520, 134283264
  %522 = icmp eq i32 %521, 0
  br i1 %522, label %527, label %523, !prof !195

523:                                              ; preds = %519
  %524 = call ptr @Perl_hv_placeholders_p(ptr noundef nonnull %0)
  %525 = load i64, ptr %524, align 8, !tbaa !129
  %526 = add nsw i64 %525, 1
  store i64 %526, ptr %524, align 8, !tbaa !129
  br label %592

527:                                              ; preds = %519
  %528 = load ptr, ptr %336, align 8, !tbaa !123
  store ptr %528, ptr %335, align 8, !tbaa !117
  %529 = load ptr, ptr %265, align 8, !tbaa !117
  %530 = icmp ne ptr %529, null
  %531 = and i32 %520, 33554432
  %532 = icmp eq i32 %531, 0
  %533 = or i1 %532, %530
  br i1 %533, label %545, label %534, !prof !215

534:                                              ; preds = %527
  %535 = load ptr, ptr %157, align 8, !tbaa !150
  %536 = load ptr, ptr %0, align 8, !tbaa !157
  %537 = getelementptr inbounds %struct.xpvhv, ptr %536, i64 0, i32 3
  %538 = load i64, ptr %537, align 8, !tbaa !179
  %539 = getelementptr ptr, ptr %535, i64 %538
  %540 = getelementptr ptr, ptr %539, i64 7
  %541 = load i32, ptr %540, align 8, !tbaa !216
  %542 = icmp eq i32 %541, 0
  br i1 %542, label %545, label %543, !prof !217

543:                                              ; preds = %534
  %544 = add i32 %541, -1
  store i32 %544, ptr %540, align 8, !tbaa !216
  br label %545

545:                                              ; preds = %543, %534, %527
  %546 = and i32 %520, 33554432
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %559, label %548, !prof !196

548:                                              ; preds = %545
  %549 = load ptr, ptr %157, align 8, !tbaa !150
  %550 = load ptr, ptr %0, align 8, !tbaa !157
  %551 = getelementptr inbounds %struct.xpvhv, ptr %550, i64 0, i32 3
  %552 = load i64, ptr %551, align 8, !tbaa !179
  %553 = getelementptr ptr, ptr %549, i64 %552
  %554 = getelementptr ptr, ptr %553, i64 3
  %555 = load ptr, ptr %554, align 8, !tbaa !218
  %556 = icmp eq ptr %336, %555
  br i1 %556, label %557, label %559, !prof !219

557:                                              ; preds = %548
  %558 = or i32 %520, 1073741824
  store i32 %558, ptr %16, align 4, !tbaa !132
  br label %584

559:                                              ; preds = %548, %545
  %560 = and i32 %520, 1107296256
  %561 = icmp eq i32 %560, 1107296256
  br i1 %561, label %562, label %574, !prof !194

562:                                              ; preds = %559
  %563 = load ptr, ptr %157, align 8, !tbaa !150
  %564 = load ptr, ptr %0, align 8, !tbaa !157
  %565 = getelementptr inbounds %struct.xpvhv, ptr %564, i64 0, i32 3
  %566 = load i64, ptr %565, align 8, !tbaa !179
  %567 = getelementptr ptr, ptr %563, i64 %566
  %568 = getelementptr ptr, ptr %567, i64 3
  %569 = load ptr, ptr %568, align 8, !tbaa !218
  %570 = load ptr, ptr %569, align 8, !tbaa !123
  %571 = icmp eq ptr %336, %570
  br i1 %571, label %572, label %574

572:                                              ; preds = %562
  %573 = load ptr, ptr %336, align 8, !tbaa !123
  store ptr %573, ptr %569, align 8, !tbaa !123
  br label %574

574:                                              ; preds = %559, %562, %572
  %575 = call fastcc ptr @S_hv_free_ent_ret(ptr noundef nonnull %0, ptr noundef nonnull %336)
  %576 = icmp eq ptr %575, null
  br i1 %576, label %584, label %577, !prof !194

577:                                              ; preds = %574
  %578 = getelementptr inbounds %struct.sv, ptr %575, i64 0, i32 1
  %579 = load i32, ptr %578, align 8, !tbaa !208
  %580 = icmp ugt i32 %579, 1
  br i1 %580, label %581, label %583, !prof !195

581:                                              ; preds = %577
  %582 = add i32 %579, -1
  store i32 %582, ptr %578, align 8, !tbaa !208
  br label %584

583:                                              ; preds = %577
  call void @Perl_sv_free2(ptr noundef nonnull %575, i32 noundef %579) #16
  br label %584

584:                                              ; preds = %583, %581, %574, %557
  %585 = getelementptr inbounds %struct.xpvhv, ptr %156, i64 0, i32 2
  %586 = load i64, ptr %585, align 8, !tbaa !220
  %587 = add i64 %586, -1
  store i64 %587, ptr %585, align 8, !tbaa !220
  %588 = icmp eq i64 %587, 0
  br i1 %588, label %589, label %592, !prof !221

589:                                              ; preds = %584
  %590 = load i32, ptr %16, align 4, !tbaa !132
  %591 = and i32 %590, 2147483647
  store i32 %591, ptr %16, align 4, !tbaa !132
  br label %592

592:                                              ; preds = %589, %584, %523
  %593 = or i1 %478, %485
  br i1 %593, label %601, label %594, !prof !209

594:                                              ; preds = %592
  %595 = getelementptr inbounds %struct.sv, ptr %484, i64 0, i32 1
  %596 = load i32, ptr %595, align 8, !tbaa !208
  %597 = icmp ugt i32 %596, 1
  br i1 %597, label %598, label %600, !prof !222

598:                                              ; preds = %594
  %599 = add i32 %596, -1
  store i32 %599, ptr %595, align 8, !tbaa !208
  br label %601

600:                                              ; preds = %594
  call void @Perl_sv_free2(ptr noundef nonnull %484, i32 noundef %596) #16
  br label %601

601:                                              ; preds = %592, %600, %598
  %602 = phi ptr [ %483, %592 ], [ null, %598 ], [ null, %600 ]
  br i1 %473, label %603, label %604, !prof !194

603:                                              ; preds = %601
  call void @Perl_mro_isa_changed_in(ptr noundef nonnull %0) #16
  br label %620

604:                                              ; preds = %601
  br i1 %474, label %605, label %620, !prof !194

605:                                              ; preds = %604
  call void @Perl_mro_package_moved(ptr noundef null, ptr noundef %476, ptr noundef %475, i32 noundef 1) #16
  br label %620

606:                                              ; preds = %325, %321, %317, %310
  %607 = load ptr, ptr %311, align 8, !tbaa !117
  %608 = icmp eq ptr %607, null
  br i1 %608, label %609, label %310, !prof !223, !llvm.loop !224

609:                                              ; preds = %606, %303, %299, %255
  %610 = load i32, ptr %16, align 4, !tbaa !132
  %611 = and i32 %610, 134283264
  %612 = icmp eq i32 %611, 0
  br i1 %612, label %616, label %613, !prof !225

613:                                              ; preds = %609
  %614 = load i64, ptr %9, align 8, !tbaa !129
  %615 = trunc i64 %614 to i32
  call fastcc void @S_hv_notallowed(i32 noundef %185, ptr noundef %186, i32 noundef %615, ptr noundef nonnull @.str.19)
  br label %616

616:                                              ; preds = %613, %609
  %617 = and i32 %185, 256
  %618 = icmp eq i32 %617, 0
  br i1 %618, label %620, label %619, !prof !225

619:                                              ; preds = %616
  call void @Perl_safesysfree(ptr noundef %186) #16
  br label %620

620:                                              ; preds = %151, %154, %299, %348, %351, %603, %604, %605, %616, %619
  %621 = phi ptr [ %155, %299 ], [ null, %154 ], [ null, %351 ], [ null, %348 ], [ %602, %604 ], [ %602, %605 ], [ %602, %603 ], [ null, %619 ], [ null, %616 ], [ %153, %151 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9)
  br label %1319

622:                                              ; preds = %90
  %623 = load ptr, ptr %0, align 8, !tbaa !157
  %624 = load i32, ptr %16, align 4, !tbaa !132
  %625 = and i32 %624, 14680064
  %626 = icmp eq i32 %625, 0
  br i1 %626, label %849, label %627, !prof !226

627:                                              ; preds = %622
  %628 = and i32 %624, 8388608
  %629 = icmp ne i32 %628, 0
  %630 = and i32 %5, 12
  %631 = icmp eq i32 %630, 0
  %632 = and i1 %631, %629
  br i1 %632, label %633, label %683, !prof !227

633:                                              ; preds = %627
  %634 = call ptr @Perl_mg_find(ptr noundef nonnull %0, i32 noundef 80) #16
  %635 = icmp eq ptr %634, null
  br i1 %635, label %636, label %640, !prof !228

636:                                              ; preds = %633
  %637 = load i32, ptr %16, align 4, !tbaa !144
  %638 = and i32 %637, 2097152
  %639 = icmp eq i32 %638, 0
  br i1 %639, label %849, label %640, !prof !229

640:                                              ; preds = %636, %633
  br i1 %54, label %641, label %647, !prof !230

641:                                              ; preds = %640
  %642 = load i64, ptr %11, align 8, !tbaa !129
  %643 = load i8, ptr %12, align 1, !tbaa !151, !range !166, !noundef !167
  %644 = icmp eq i8 %643, 0
  %645 = select i1 %644, i32 0, i32 536870912
  %646 = call ptr @Perl_newSVpvn_flags(ptr noundef %92, i64 noundef %642, i32 noundef %645) #16
  br label %649

647:                                              ; preds = %640
  %648 = call ptr @Perl_newSVsv(ptr noundef nonnull %53) #16
  br label %649

649:                                              ; preds = %647, %641
  %650 = phi ptr [ %648, %647 ], [ %646, %641 ]
  %651 = call ptr @Perl_sv_newmortal() #16
  %652 = call i32 @Perl_mg_copy(ptr noundef nonnull %0, ptr noundef %651, ptr noundef %650, i32 noundef -2) #16
  %653 = load ptr, ptr @PL_hv_fetch_ent_mh, align 8, !tbaa !117
  %654 = icmp eq ptr %653, null
  br i1 %654, label %657, label %655, !prof !231

655:                                              ; preds = %649
  %656 = load ptr, ptr %653, align 8, !tbaa !123
  store ptr %656, ptr @PL_hv_fetch_ent_mh, align 8, !tbaa !117
  br label %667

657:                                              ; preds = %649
  %658 = load ptr, ptr @PL_body_roots, align 16, !tbaa !117
  %659 = icmp eq ptr %658, null
  br i1 %659, label %660, label %662, !prof !214

660:                                              ; preds = %657
  %661 = call ptr @Perl_more_bodies(i32 noundef 0, i64 noundef 24, i64 noundef 4080) #16
  br label %662

662:                                              ; preds = %657, %660
  %663 = load ptr, ptr @PL_body_roots, align 16, !tbaa !117
  %664 = load ptr, ptr %663, align 8, !tbaa !123
  store ptr %664, ptr @PL_body_roots, align 16, !tbaa !117
  %665 = call ptr @Perl_safesysmalloc(i64 noundef 16) #16
  %666 = getelementptr inbounds %struct.he, ptr %663, i64 0, i32 1
  store ptr %665, ptr %666, align 8, !tbaa !121
  br label %667

667:                                              ; preds = %662, %655
  %668 = phi ptr [ %653, %655 ], [ %663, %662 ]
  store ptr null, ptr %668, align 8, !tbaa !123
  %669 = getelementptr inbounds %struct.he, ptr %668, i64 0, i32 1
  %670 = load ptr, ptr %669, align 8, !tbaa !121
  %671 = getelementptr inbounds %struct.hek, ptr %670, i64 0, i32 1
  store i32 -2, ptr %671, align 4, !tbaa !184
  %672 = getelementptr inbounds %struct.hek, ptr %670, i64 0, i32 2
  store ptr %650, ptr %672, align 4, !tbaa !117
  %673 = getelementptr inbounds %struct.he, ptr %668, i64 0, i32 2
  store ptr %651, ptr %673, align 8, !tbaa !150
  call void @Perl_sv_upgrade(ptr noundef %651, i32 noundef 10) #16
  %674 = load ptr, ptr %651, align 8, !tbaa !147
  %675 = getelementptr inbounds %struct.xpvlv, ptr %674, i64 0, i32 9
  store i8 84, ptr %675, align 8, !tbaa !232
  %676 = getelementptr inbounds %struct.xpvlv, ptr %674, i64 0, i32 8
  store ptr %668, ptr %676, align 8, !tbaa !234
  %677 = and i32 %91, 256
  %678 = icmp eq i32 %677, 0
  br i1 %678, label %680, label %679, !prof !235

679:                                              ; preds = %667
  call void @Perl_safesysfree(ptr noundef %92) #16
  br label %680

680:                                              ; preds = %679, %667
  %681 = icmp eq i32 %13, 0
  %682 = select i1 %681, ptr %668, ptr %673, !prof !235
  br label %1319

683:                                              ; preds = %627
  %684 = icmp eq i32 %628, 0
  %685 = and i32 %5, 8
  %686 = icmp eq i32 %685, 0
  %687 = or i1 %686, %684
  br i1 %687, label %778, label %688, !prof !236

688:                                              ; preds = %683
  %689 = call ptr @Perl_mg_find(ptr noundef nonnull %0, i32 noundef 80) #16
  %690 = icmp eq ptr %689, null
  br i1 %690, label %691, label %695, !prof !237

691:                                              ; preds = %688
  %692 = load i32, ptr %16, align 4, !tbaa !144
  %693 = and i32 %692, 2097152
  %694 = icmp eq i32 %693, 0
  br i1 %694, label %849, label %695, !prof !237

695:                                              ; preds = %691, %688
  %696 = call ptr @Perl_sv_newmortal() #16
  %697 = call ptr @Perl_sv_newmortal() #16
  %698 = load i8, ptr %12, align 1, !range !166
  %699 = icmp eq i8 %698, 0
  %700 = select i1 %54, i1 %699, i1 false
  br i1 %700, label %711, label %701

701:                                              ; preds = %695
  br i1 %54, label %702, label %705

702:                                              ; preds = %701
  %703 = load i64, ptr %11, align 8, !tbaa !129
  %704 = call ptr @Perl_newSVpvn_flags(ptr noundef %92, i64 noundef %703, i32 noundef 536870912) #16
  br label %707

705:                                              ; preds = %701
  %706 = call ptr @Perl_newSVsv(ptr noundef nonnull %53) #16
  br label %707

707:                                              ; preds = %705, %702
  %708 = phi ptr [ %706, %705 ], [ %704, %702 ]
  %709 = call ptr @Perl_sv_2mortal(ptr noundef %708) #16
  %710 = call i32 @Perl_mg_copy(ptr noundef nonnull %0, ptr noundef %697, ptr noundef %709, i32 noundef -2) #16
  br label %715

711:                                              ; preds = %695
  %712 = load i64, ptr %11, align 8, !tbaa !129
  %713 = trunc i64 %712 to i32
  %714 = call i32 @Perl_mg_copy(ptr noundef nonnull %0, ptr noundef %697, ptr noundef %92, i32 noundef %713) #16
  br label %715

715:                                              ; preds = %711, %707
  %716 = and i32 %91, 256
  %717 = icmp eq i32 %716, 0
  br i1 %717, label %719, label %718

718:                                              ; preds = %715
  call void @Perl_safesysfree(ptr noundef %92) #16
  br label %719

719:                                              ; preds = %718, %715
  %720 = call ptr @Perl_mg_find(ptr noundef %697, i32 noundef 112) #16
  %721 = call i32 @Perl_magic_existspack(ptr noundef %696, ptr noundef %720) #16
  %722 = icmp eq ptr %696, null
  br i1 %722, label %1319, label %723

723:                                              ; preds = %719
  %724 = getelementptr inbounds %struct.sv, ptr %696, i64 0, i32 2
  %725 = load i32, ptr %724, align 4, !tbaa !144
  %726 = and i32 %725, 2097152
  %727 = icmp eq i32 %726, 0
  br i1 %727, label %730, label %728

728:                                              ; preds = %723
  %729 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %696, i32 noundef 2) #16
  br i1 %729, label %777, label %1319

730:                                              ; preds = %723
  %731 = and i32 %725, 65280
  %732 = icmp ne i32 %731, 0
  %733 = and i32 %725, 255
  %734 = icmp eq i32 %733, 8
  %735 = or i1 %732, %734
  %736 = and i32 %725, 16777471
  %737 = icmp eq i32 %736, 16777226
  %738 = or i1 %737, %735
  br i1 %738, label %739, label %1319

739:                                              ; preds = %730
  %740 = and i32 %725, 1024
  %741 = icmp eq i32 %740, 0
  br i1 %741, label %756, label %742

742:                                              ; preds = %739
  %743 = load ptr, ptr %696, align 8, !tbaa !147
  %744 = icmp eq ptr %743, null
  br i1 %744, label %1319, label %745

745:                                              ; preds = %742
  %746 = getelementptr inbounds %struct.xpv, ptr %743, i64 0, i32 2
  %747 = load i64, ptr %746, align 8, !tbaa !148
  %748 = icmp ugt i64 %747, 1
  br i1 %748, label %777, label %749

749:                                              ; preds = %745
  %750 = icmp eq i64 %747, 0
  br i1 %750, label %1319, label %751

751:                                              ; preds = %749
  %752 = getelementptr inbounds %struct.sv, ptr %696, i64 0, i32 3
  %753 = load ptr, ptr %752, align 8, !tbaa !150
  %754 = load i8, ptr %753, align 1, !tbaa !150
  %755 = icmp eq i8 %754, 48
  br i1 %755, label %1319, label %777

756:                                              ; preds = %739
  %757 = and i32 %725, 768
  %758 = icmp eq i32 %757, 0
  br i1 %758, label %775, label %759

759:                                              ; preds = %756
  %760 = and i32 %725, 256
  %761 = icmp eq i32 %760, 0
  br i1 %761, label %767, label %762

762:                                              ; preds = %759
  %763 = load ptr, ptr %696, align 8, !tbaa !147
  %764 = getelementptr inbounds %struct.xpviv, ptr %763, i64 0, i32 4
  %765 = load i64, ptr %764, align 8, !tbaa !150
  %766 = icmp eq i64 %765, 0
  br i1 %766, label %767, label %777

767:                                              ; preds = %762, %759
  %768 = and i32 %725, 512
  %769 = icmp eq i32 %768, 0
  br i1 %769, label %1319, label %770

770:                                              ; preds = %767
  %771 = load ptr, ptr %696, align 8, !tbaa !147
  %772 = getelementptr inbounds %struct.xpvnv, ptr %771, i64 0, i32 5
  %773 = load double, ptr %772, align 8, !tbaa !150
  %774 = fcmp une double %773, 0.000000e+00
  br i1 %774, label %777, label %1319

775:                                              ; preds = %756
  %776 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %696, i32 noundef 0) #16
  br i1 %776, label %777, label %1319

777:                                              ; preds = %751, %775, %770, %762, %745, %728
  br label %1319

778:                                              ; preds = %683
  %779 = and i32 %5, 4
  %780 = icmp eq i32 %779, 0
  br i1 %780, label %849, label %781, !prof !238

781:                                              ; preds = %778
  %782 = getelementptr inbounds %struct.xpvmg, ptr %623, i64 0, i32 1
  %783 = load ptr, ptr %782, align 8, !tbaa !150
  %784 = icmp eq ptr %783, null
  br i1 %784, label %802, label %785, !prof !239

785:                                              ; preds = %781, %798
  %786 = phi i1 [ %801, %798 ], [ %784, %781 ]
  %787 = phi ptr [ %800, %798 ], [ %783, %781 ]
  %788 = phi i8 [ %799, %798 ], [ 0, %781 ]
  %789 = getelementptr inbounds %struct.magic, ptr %787, i64 0, i32 3
  %790 = load i8, ptr %789, align 2, !tbaa !159
  %791 = zext i8 %790 to i64
  %792 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %791
  %793 = load i32, ptr %792, align 4, !tbaa !160
  %794 = and i32 %793, 16400
  %795 = icmp eq i32 %794, 16400
  br i1 %795, label %796, label %798, !prof !240

796:                                              ; preds = %785
  %797 = icmp eq i8 %790, 80
  br i1 %797, label %802, label %798, !prof !241

798:                                              ; preds = %796, %785
  %799 = phi i8 [ 1, %796 ], [ %788, %785 ]
  %800 = load ptr, ptr %787, align 8, !tbaa !150
  %801 = icmp eq ptr %800, null
  br i1 %801, label %802, label %785, !prof !242, !llvm.loop !164

802:                                              ; preds = %798, %796, %781
  %803 = phi i1 [ %784, %781 ], [ %801, %798 ], [ %786, %796 ]
  %804 = phi i8 [ 0, %781 ], [ %799, %798 ], [ 1, %796 ]
  %805 = icmp eq i8 %804, 0
  br i1 %805, label %846, label %806, !prof !243

806:                                              ; preds = %802
  %807 = load i8, ptr @PL_tainted, align 1, !tbaa !151, !range !166, !noundef !167
  %808 = icmp eq i8 %807, 0
  %809 = load i8, ptr %12, align 1, !range !166
  %810 = icmp eq i8 %809, 0
  %811 = select i1 %54, i1 %810, i1 false, !prof !244
  br i1 %811, label %834, label %812, !prof !244

812:                                              ; preds = %806
  br i1 %54, label %813, label %816, !prof !245

813:                                              ; preds = %812
  %814 = load i64, ptr %11, align 8, !tbaa !129
  %815 = call ptr @Perl_newSVpvn_flags(ptr noundef %92, i64 noundef %814, i32 noundef 536870912) #16
  br label %816

816:                                              ; preds = %813, %812
  %817 = phi ptr [ %53, %812 ], [ %815, %813 ]
  %818 = load i8, ptr @PL_tainting, align 1, !tbaa !151, !range !166, !noundef !167
  %819 = icmp eq i8 %818, 0
  br i1 %819, label %830, label %820, !prof !246

820:                                              ; preds = %816
  %821 = getelementptr inbounds %struct.sv, ptr %817, i64 0, i32 2
  %822 = load i32, ptr %821, align 4, !tbaa !144
  %823 = and i32 %822, 14680064
  %824 = icmp eq i32 %823, 0
  br i1 %824, label %827, label %825

825:                                              ; preds = %820
  %826 = call zeroext i1 @Perl_sv_tainted(ptr noundef %817) #16
  br label %827

827:                                              ; preds = %825, %820
  %828 = phi i1 [ false, %820 ], [ %826, %825 ]
  %829 = zext i1 %828 to i8
  store i8 %829, ptr @PL_tainted, align 1, !tbaa !151
  br label %830

830:                                              ; preds = %827, %816
  %831 = call ptr @Perl_newSVsv(ptr noundef %817) #16
  %832 = call ptr @Perl_sv_2mortal(ptr noundef %831) #16
  %833 = call i32 @Perl_mg_copy(ptr noundef nonnull %0, ptr noundef %6, ptr noundef %832, i32 noundef -2) #16
  br label %838

834:                                              ; preds = %806
  %835 = load i64, ptr %11, align 8, !tbaa !129
  %836 = trunc i64 %835 to i32
  %837 = call i32 @Perl_mg_copy(ptr noundef nonnull %0, ptr noundef %6, ptr noundef %92, i32 noundef %836) #16
  br label %838

838:                                              ; preds = %834, %830
  %839 = phi ptr [ %832, %830 ], [ null, %834 ]
  br i1 %808, label %841, label %840, !prof !247

840:                                              ; preds = %838
  store i8 1, ptr @PL_tainted, align 1, !tbaa !151
  br label %841

841:                                              ; preds = %838, %840
  br i1 %803, label %846, label %842, !prof !248

842:                                              ; preds = %841
  %843 = and i32 %91, 256
  %844 = icmp eq i32 %843, 0
  br i1 %844, label %846, label %845

845:                                              ; preds = %842
  call void @Perl_safesysfree(ptr noundef %92) #16
  br label %846

846:                                              ; preds = %845, %842, %841, %802
  %847 = phi i1 [ true, %802 ], [ true, %841 ], [ false, %842 ], [ false, %845 ]
  %848 = phi ptr [ %53, %802 ], [ %839, %841 ], [ %839, %842 ], [ %839, %845 ]
  br i1 %847, label %849, label %1319, !prof !249

849:                                              ; preds = %636, %778, %846, %691, %622
  %850 = phi ptr [ %53, %691 ], [ %848, %846 ], [ %53, %778 ], [ %53, %636 ], [ %53, %622 ]
  %851 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %852 = load ptr, ptr %851, align 8, !tbaa !150
  %853 = icmp eq ptr %852, null
  br i1 %853, label %854, label %867, !prof !250

854:                                              ; preds = %849
  %855 = and i32 %5, 20
  %856 = icmp eq i32 %855, 0
  br i1 %856, label %863, label %857, !prof !251

857:                                              ; preds = %854
  %858 = getelementptr inbounds %struct.xpvhv, ptr %623, i64 0, i32 3
  %859 = load i64, ptr %858, align 8, !tbaa !179
  %860 = shl i64 %859, 3
  %861 = add i64 %860, 8
  %862 = call ptr @Perl_safesyscalloc(i64 noundef %861, i64 noundef 1) #16
  store ptr %862, ptr %851, align 8, !tbaa !150
  br label %867

863:                                              ; preds = %854
  %864 = and i32 %91, 256
  %865 = icmp eq i32 %864, 0
  br i1 %865, label %1319, label %866, !prof !252

866:                                              ; preds = %863
  call void @Perl_safesysfree(ptr noundef %92) #16
  br label %1319

867:                                              ; preds = %857, %849
  %868 = load i8, ptr %12, align 1, !tbaa !151, !range !166, !noundef !167
  %869 = icmp ne i8 %868, 0
  %870 = and i32 %91, 1024
  %871 = icmp eq i32 %870, 0
  %872 = select i1 %869, i1 %871, i1 false, !prof !253
  br i1 %872, label %873, label %887, !prof !253

873:                                              ; preds = %867
  %874 = call ptr @Perl_bytes_from_utf8(ptr noundef %92, ptr noundef nonnull %11, ptr noundef nonnull %12) #16
  %875 = load i8, ptr %12, align 1, !tbaa !151, !range !166, !noundef !167
  %876 = icmp eq i8 %875, 0
  %877 = or i32 %91, 1
  %878 = and i32 %91, -1026
  %879 = select i1 %876, i32 %878, i32 %877
  %880 = icmp eq ptr %874, %92
  br i1 %880, label %887, label %881

881:                                              ; preds = %873
  %882 = and i32 %879, 256
  %883 = icmp eq i32 %882, 0
  br i1 %883, label %885, label %884

884:                                              ; preds = %881
  call void @Perl_safesysfree(ptr noundef %92) #16
  br label %885

885:                                              ; preds = %884, %881
  %886 = or i32 %879, 258
  br label %887

887:                                              ; preds = %873, %885, %867
  %888 = phi i32 [ %52, %867 ], [ 0, %885 ], [ %52, %873 ]
  %889 = phi i32 [ %91, %867 ], [ %886, %885 ], [ %879, %873 ]
  %890 = phi ptr [ %92, %867 ], [ %874, %885 ], [ %874, %873 ]
  %891 = icmp eq ptr %850, null
  br i1 %891, label %916, label %892, !prof !254

892:                                              ; preds = %887
  %893 = getelementptr inbounds %struct.sv, ptr %850, i64 0, i32 2
  %894 = load i32, ptr %893, align 4, !tbaa !144
  %895 = and i32 %894, 268435456
  %896 = icmp eq i32 %895, 0
  br i1 %896, label %916, label %897, !prof !255

897:                                              ; preds = %892
  %898 = load ptr, ptr %850, align 8, !tbaa !147
  %899 = getelementptr inbounds %struct.xpv, ptr %898, i64 0, i32 3
  %900 = load i64, ptr %899, align 8, !tbaa !150
  %901 = icmp eq i64 %900, 0
  br i1 %901, label %902, label %916, !prof !256

902:                                              ; preds = %897
  %903 = load i32, ptr %16, align 4, !tbaa !132
  %904 = and i32 %903, 536870912
  %905 = icmp eq i32 %904, 0
  br i1 %905, label %910, label %906, !prof !257

906:                                              ; preds = %902
  %907 = getelementptr inbounds %struct.sv, ptr %850, i64 0, i32 3
  %908 = load ptr, ptr %907, align 8, !tbaa !150
  %909 = getelementptr inbounds i8, ptr %908, i64 -8
  br label %910

910:                                              ; preds = %906, %902
  %911 = phi ptr [ %909, %906 ], [ null, %902 ]
  %912 = getelementptr inbounds %struct.sv, ptr %850, i64 0, i32 3
  %913 = load ptr, ptr %912, align 8, !tbaa !150
  %914 = getelementptr inbounds i8, ptr %913, i64 -8
  %915 = load i32, ptr %914, align 4, !tbaa !173
  br label %960

916:                                              ; preds = %897, %892, %887
  %917 = icmp eq i32 %888, 0
  br i1 %917, label %918, label %960, !prof !258

918:                                              ; preds = %916
  %919 = load i64, ptr %11, align 8, !tbaa !129
  %920 = getelementptr inbounds i8, ptr %890, i64 %919
  %921 = trunc i64 %919 to i32
  %922 = add i32 %921, 544173908
  %923 = icmp sgt i64 %919, 0
  br i1 %923, label %924, label %935, !prof !176

924:                                              ; preds = %918, %924
  %925 = phi i32 [ %933, %924 ], [ %922, %918 ]
  %926 = phi ptr [ %930, %924 ], [ %890, %918 ]
  %927 = mul i32 %925, 1025
  %928 = lshr i32 %927, 6
  %929 = xor i32 %928, %927
  %930 = getelementptr inbounds i8, ptr %926, i64 1
  %931 = load i8, ptr %926, align 1, !tbaa !150
  %932 = zext i8 %931 to i32
  %933 = add i32 %929, %932
  %934 = icmp ult ptr %930, %920
  br i1 %934, label %924, label %935, !prof !177, !llvm.loop !178

935:                                              ; preds = %924, %918
  %936 = phi i32 [ %922, %918 ], [ %933, %924 ]
  %937 = mul i32 %936, 1025
  %938 = lshr i32 %937, 6
  %939 = xor i32 %938, %937
  %940 = mul i32 %939, 1025
  %941 = add i32 %940, 73800
  %942 = lshr i32 %941, 6
  %943 = xor i32 %942, %941
  %944 = mul i32 %943, 1025
  %945 = add i32 %944, 113775
  %946 = lshr i32 %945, 6
  %947 = xor i32 %946, %945
  %948 = mul i32 %947, 1025
  %949 = add i32 %948, 118900
  %950 = lshr i32 %949, 6
  %951 = xor i32 %950, %949
  %952 = mul i32 %951, 1025
  %953 = add i32 %952, 32800
  %954 = lshr i32 %953, 6
  %955 = xor i32 %954, %953
  %956 = mul i32 %955, 9
  %957 = lshr i32 %956, 11
  %958 = xor i32 %957, %956
  %959 = mul i32 %958, 32769
  br label %960

960:                                              ; preds = %916, %935, %910
  %961 = phi ptr [ %911, %910 ], [ null, %916 ], [ null, %935 ]
  %962 = phi i32 [ %915, %910 ], [ %888, %916 ], [ %959, %935 ]
  %963 = and i32 %889, 255
  %964 = load ptr, ptr %851, align 8, !tbaa !150
  %965 = load ptr, ptr %0, align 8, !tbaa !157
  %966 = getelementptr inbounds %struct.xpvhv, ptr %965, i64 0, i32 3
  %967 = load i64, ptr %966, align 8, !tbaa !179
  %968 = trunc i64 %967 to i32
  %969 = and i32 %962, %968
  %970 = zext i32 %969 to i64
  %971 = getelementptr inbounds ptr, ptr %964, i64 %970
  %972 = load ptr, ptr %971, align 8, !tbaa !117
  %973 = icmp eq ptr %972, null
  br i1 %973, label %1129, label %974, !prof !259

974:                                              ; preds = %960
  %975 = icmp eq ptr %961, null
  br i1 %975, label %1007, label %976, !prof !260

976:                                              ; preds = %974, %1000
  %977 = phi ptr [ %1001, %1000 ], [ %972, %974 ]
  %978 = getelementptr inbounds %struct.he, ptr %977, i64 0, i32 1
  %979 = load ptr, ptr %978, align 8, !tbaa !121
  %980 = icmp eq ptr %979, %961
  br i1 %980, label %998, label %981, !prof !261

981:                                              ; preds = %976
  %982 = getelementptr inbounds %struct.hek, ptr %961, i64 0, i32 2
  %983 = getelementptr inbounds %struct.hek, ptr %961, i64 0, i32 1
  %984 = load i32, ptr %983, align 4, !tbaa !184
  %985 = sext i32 %984 to i64
  %986 = getelementptr inbounds i8, ptr %982, i64 %985
  %987 = getelementptr inbounds i8, ptr %986, i64 1
  %988 = load i8, ptr %987, align 1, !tbaa !150
  %989 = getelementptr inbounds %struct.hek, ptr %979, i64 0, i32 2
  %990 = getelementptr inbounds %struct.hek, ptr %979, i64 0, i32 1
  %991 = load i32, ptr %990, align 4, !tbaa !184
  %992 = sext i32 %991 to i64
  %993 = getelementptr inbounds i8, ptr %989, i64 %992
  %994 = getelementptr inbounds i8, ptr %993, i64 1
  %995 = load i8, ptr %994, align 1, !tbaa !150
  %996 = icmp eq i8 %995, %988
  %997 = select i1 %996, i32 0, i32 3, !prof !262
  br label %998

998:                                              ; preds = %981, %976
  %999 = phi i32 [ 6, %976 ], [ %997, %981 ]
  switch i32 %999, label %1004 [
    i32 0, label %1000
    i32 3, label %1003
  ], !prof !263

1000:                                             ; preds = %998
  %1001 = load ptr, ptr %977, align 8, !tbaa !123
  %1002 = icmp eq ptr %1001, null
  br i1 %1002, label %1004, label %976, !prof !264, !llvm.loop !265

1003:                                             ; preds = %998
  br label %1004

1004:                                             ; preds = %1000, %998, %1003
  %1005 = phi i32 [ %999, %998 ], [ 2, %1000 ], [ 0, %1003 ]
  %1006 = phi ptr [ %977, %998 ], [ null, %1000 ], [ %972, %1003 ]
  switch i32 %1005, label %1319 [
    i32 0, label %1007
    i32 6, label %1035
    i32 2, label %1129
  ], !prof !266

1007:                                             ; preds = %1004, %974
  %1008 = phi ptr [ %1006, %1004 ], [ %972, %974 ]
  %1009 = icmp eq ptr %1008, null
  br i1 %1009, label %1129, label %1010, !prof !267

1010:                                             ; preds = %1007, %1126
  %1011 = phi ptr [ %1127, %1126 ], [ %1008, %1007 ]
  %1012 = getelementptr inbounds %struct.he, ptr %1011, i64 0, i32 1
  %1013 = load ptr, ptr %1012, align 8, !tbaa !121
  %1014 = load i32, ptr %1013, align 4, !tbaa !173
  %1015 = icmp eq i32 %1014, %962
  br i1 %1015, label %1016, label %1126, !prof !268

1016:                                             ; preds = %1010
  %1017 = load i64, ptr %11, align 8
  %1018 = trunc i64 %1017 to i32
  %1019 = getelementptr inbounds %struct.hek, ptr %1013, i64 0, i32 1
  %1020 = load i32, ptr %1019, align 4, !tbaa !184
  %1021 = icmp eq i32 %1020, %1018
  br i1 %1021, label %1022, label %1126, !prof !269

1022:                                             ; preds = %1016
  %1023 = getelementptr inbounds %struct.hek, ptr %1013, i64 0, i32 2
  %1024 = call i32 @bcmp(ptr nonnull %1023, ptr %890, i64 %1017), !prof !270
  %1025 = icmp eq i32 %1024, 0
  br i1 %1025, label %1026, label %1126, !prof !269

1026:                                             ; preds = %1022
  %1027 = sext i32 %1020 to i64
  %1028 = getelementptr inbounds i8, ptr %1023, i64 %1027
  %1029 = getelementptr inbounds i8, ptr %1028, i64 1
  %1030 = load i8, ptr %1029, align 1, !tbaa !150
  %1031 = zext i8 %1030 to i32
  %1032 = xor i32 %889, %1031
  %1033 = and i32 %1032, 1
  %1034 = icmp eq i32 %1033, 0
  br i1 %1034, label %1035, label %1126, !prof !269

1035:                                             ; preds = %1026, %1004
  %1036 = phi ptr [ %1006, %1004 ], [ %1011, %1026 ]
  %1037 = and i32 %5, 20
  %1038 = icmp eq i32 %1037, 0
  br i1 %1038, label %1110, label %1039, !prof !271

1039:                                             ; preds = %1035
  %1040 = getelementptr inbounds %struct.he, ptr %1036, i64 0, i32 1
  %1041 = load ptr, ptr %1040, align 8, !tbaa !121
  %1042 = getelementptr inbounds %struct.hek, ptr %1041, i64 0, i32 2
  %1043 = getelementptr inbounds %struct.hek, ptr %1041, i64 0, i32 1
  %1044 = load i32, ptr %1043, align 4, !tbaa !184
  %1045 = sext i32 %1044 to i64
  %1046 = getelementptr inbounds i8, ptr %1042, i64 %1045
  %1047 = getelementptr inbounds i8, ptr %1046, i64 1
  %1048 = load i8, ptr %1047, align 1, !tbaa !150
  %1049 = trunc i32 %889 to i8
  %1050 = icmp eq i8 %1048, %1049
  br i1 %1050, label %1078, label %1051, !prof !272

1051:                                             ; preds = %1039
  %1052 = load i32, ptr %16, align 4, !tbaa !132
  %1053 = and i32 %1052, 536870912
  %1054 = icmp eq i32 %1053, 0
  br i1 %1054, label %1060, label %1055

1055:                                             ; preds = %1051
  %1056 = load i64, ptr %11, align 8, !tbaa !129
  %1057 = trunc i64 %1056 to i32
  %1058 = call fastcc ptr @S_share_hek_flags(ptr noundef %890, i32 noundef %1057, i32 noundef %962, i32 noundef %963)
  %1059 = load ptr, ptr %1040, align 8, !tbaa !121
  call fastcc void @S_unshare_hek_or_pvn(ptr noundef %1059, ptr noundef null, i32 noundef 0, i32 noundef 0)
  store ptr %1058, ptr %1040, align 8, !tbaa !121
  br label %1072

1060:                                             ; preds = %1051
  %1061 = load ptr, ptr @PL_strtab, align 8, !tbaa !117
  %1062 = icmp eq ptr %1061, %0
  br i1 %1062, label %1063, label %1071

1063:                                             ; preds = %1060
  %1064 = and i32 %889, 256
  %1065 = icmp eq i32 %1064, 0
  br i1 %1065, label %1067, label %1066

1066:                                             ; preds = %1063
  call void @Perl_safesysfree(ptr noundef %890) #16
  br label %1067

1067:                                             ; preds = %1066, %1063
  %1068 = and i32 %5, 16
  %1069 = icmp eq i32 %1068, 0
  %1070 = select i1 %1069, ptr @.str.2, ptr @.str.1
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @S_strtab_error, ptr noundef nonnull %1070) #16
  br label %1072

1071:                                             ; preds = %1060
  store i8 %1049, ptr %1047, align 1, !tbaa !150
  br label %1072

1072:                                             ; preds = %1067, %1071, %1055
  %1073 = and i32 %889, 247
  %1074 = icmp eq i32 %1073, 0
  br i1 %1074, label %1078, label %1075

1075:                                             ; preds = %1072
  %1076 = load i32, ptr %16, align 4, !tbaa !132
  %1077 = or i32 %1076, -2147483648
  store i32 %1077, ptr %16, align 4, !tbaa !132
  br label %1078

1078:                                             ; preds = %1072, %1075, %1039
  %1079 = getelementptr inbounds %struct.he, ptr %1036, i64 0, i32 2
  %1080 = load ptr, ptr %1079, align 8, !tbaa !150
  %1081 = icmp eq ptr %1080, @PL_sv_placeholder
  br i1 %1081, label %1082, label %1098, !prof !273

1082:                                             ; preds = %1078
  %1083 = and i32 %5, 16
  %1084 = icmp eq i32 %1083, 0
  br i1 %1084, label %1091, label %1085

1085:                                             ; preds = %1082
  %1086 = load i32, ptr %16, align 4, !tbaa !132
  %1087 = and i32 %1086, 14680064
  %1088 = icmp eq i32 %1087, 0
  br i1 %1088, label %1089, label %1129

1089:                                             ; preds = %1085
  %1090 = call ptr @Perl_newSV(i64 noundef 0) #16
  br label %1093

1091:                                             ; preds = %1082
  %1092 = icmp eq ptr %6, @PL_sv_placeholder
  br i1 %1092, label %1114, label %1093

1093:                                             ; preds = %1091, %1089
  %1094 = phi ptr [ %1090, %1089 ], [ %6, %1091 ]
  %1095 = call ptr @Perl_hv_placeholders_p(ptr noundef nonnull %0)
  %1096 = load i64, ptr %1095, align 8, !tbaa !129
  %1097 = add nsw i64 %1096, -1
  store i64 %1097, ptr %1095, align 8, !tbaa !129
  br label %1114

1098:                                             ; preds = %1078
  %1099 = and i32 %5, 4
  %1100 = icmp eq i32 %1099, 0
  br i1 %1100, label %1116, label %1101, !prof !274

1101:                                             ; preds = %1098
  %1102 = icmp eq ptr %1080, null
  br i1 %1102, label %1114, label %1103, !prof !275

1103:                                             ; preds = %1101
  %1104 = getelementptr inbounds %struct.sv, ptr %1080, i64 0, i32 1
  %1105 = load i32, ptr %1104, align 8, !tbaa !208
  %1106 = icmp ugt i32 %1105, 1
  br i1 %1106, label %1107, label %1109, !prof !276

1107:                                             ; preds = %1103
  %1108 = add i32 %1105, -1
  store i32 %1108, ptr %1104, align 8, !tbaa !208
  br label %1114

1109:                                             ; preds = %1103
  call void @Perl_sv_free2(ptr noundef nonnull %1080, i32 noundef %1105) #16
  br label %1114

1110:                                             ; preds = %1035
  %1111 = getelementptr inbounds %struct.he, ptr %1036, i64 0, i32 2
  %1112 = load ptr, ptr %1111, align 8, !tbaa !150
  %1113 = icmp eq ptr %1112, @PL_sv_placeholder
  br i1 %1113, label %1129, label %1116, !prof !277

1114:                                             ; preds = %1109, %1107, %1101, %1091, %1093
  %1115 = phi ptr [ @PL_sv_placeholder, %1091 ], [ %1094, %1093 ], [ %6, %1101 ], [ %6, %1107 ], [ %6, %1109 ]
  store ptr %1115, ptr %1079, align 8, !tbaa !150
  br label %1116

1116:                                             ; preds = %1114, %1110, %1098
  %1117 = and i32 %889, 256
  %1118 = icmp eq i32 %1117, 0
  br i1 %1118, label %1120, label %1119, !prof !278

1119:                                             ; preds = %1116
  call void @Perl_safesysfree(ptr noundef %890) #16
  br label %1120

1120:                                             ; preds = %1119, %1116
  %1121 = icmp eq i32 %13, 0
  br i1 %1121, label %1319, label %1122, !prof !279

1122:                                             ; preds = %1120
  %1123 = icmp eq ptr %1036, null
  %1124 = getelementptr inbounds %struct.he, ptr %1036, i64 0, i32 2
  %1125 = select i1 %1123, ptr null, ptr %1124, !prof !280
  br label %1319

1126:                                             ; preds = %1026, %1022, %1016, %1010
  %1127 = load ptr, ptr %1011, align 8, !tbaa !123
  %1128 = icmp eq ptr %1127, null
  br i1 %1128, label %1129, label %1010, !prof !281, !llvm.loop !282

1129:                                             ; preds = %1126, %1007, %1110, %1085, %960, %1004
  %1130 = phi ptr [ %1006, %1004 ], [ %1036, %1085 ], [ null, %960 ], [ %1036, %1110 ], [ null, %1007 ], [ null, %1126 ]
  %1131 = icmp eq ptr %1130, null
  br i1 %1131, label %1132, label %1142, !prof !283

1132:                                             ; preds = %1129
  %1133 = load i32, ptr %16, align 4, !tbaa !132
  %1134 = and i32 %1133, 134283264
  %1135 = icmp ne i32 %1134, 0
  %1136 = and i32 %5, 8
  %1137 = icmp eq i32 %1136, 0
  %1138 = and i1 %1137, %1135
  br i1 %1138, label %1139, label %1142, !prof !284

1139:                                             ; preds = %1132
  %1140 = load i64, ptr %11, align 8, !tbaa !129
  %1141 = trunc i64 %1140 to i32
  call fastcc void @S_hv_notallowed(i32 noundef %889, ptr noundef %890, i32 noundef %1141, ptr noundef nonnull @.str.3)
  br label %1142

1142:                                             ; preds = %1139, %1132, %1129
  %1143 = and i32 %5, 20
  %1144 = icmp eq i32 %1143, 0
  br i1 %1144, label %1145, label %1149, !prof !285

1145:                                             ; preds = %1142
  %1146 = and i32 %889, 256
  %1147 = icmp eq i32 %1146, 0
  br i1 %1147, label %1319, label %1148, !prof !286

1148:                                             ; preds = %1145
  call void @Perl_safesysfree(ptr noundef %890) #16
  br label %1319

1149:                                             ; preds = %1142
  %1150 = and i32 %5, 16
  %1151 = icmp eq i32 %1150, 0
  br i1 %1151, label %1166, label %1152, !prof !287

1152:                                             ; preds = %1149
  %1153 = and i32 %5, 128
  %1154 = icmp eq i32 %1153, 0
  br i1 %1154, label %1155, label %1157, !prof !288

1155:                                             ; preds = %1152
  %1156 = call ptr @Perl_newSV(i64 noundef 0) #16
  br label %1157

1157:                                             ; preds = %1152, %1155
  %1158 = phi ptr [ %1156, %1155 ], [ null, %1152 ]
  %1159 = load i32, ptr %16, align 4, !tbaa !132
  %1160 = and i32 %1159, 14680064
  %1161 = icmp eq i32 %1160, 0
  br i1 %1161, label %1166, label %1162, !prof !289

1162:                                             ; preds = %1157
  %1163 = load i64, ptr %11, align 8, !tbaa !129
  %1164 = or disjoint i32 %13, 5
  %1165 = call ptr @Perl_hv_common(ptr noundef nonnull %0, ptr noundef %850, ptr noundef %890, i64 noundef %1163, i32 noundef %889, i32 noundef %1164, ptr noundef %1158, i32 noundef %962)
  br label %1319

1166:                                             ; preds = %1157, %1149
  %1167 = phi ptr [ %1158, %1157 ], [ %6, %1149 ]
  %1168 = load ptr, ptr %851, align 8, !tbaa !150
  %1169 = icmp eq ptr %1168, null
  br i1 %1169, label %1170, label %1176, !prof !290

1170:                                             ; preds = %1166
  %1171 = getelementptr inbounds %struct.xpvhv, ptr %623, i64 0, i32 3
  %1172 = load i64, ptr %1171, align 8, !tbaa !179
  %1173 = shl i64 %1172, 3
  %1174 = add i64 %1173, 8
  %1175 = call ptr @Perl_safesyscalloc(i64 noundef %1174, i64 noundef 1) #16
  store ptr %1175, ptr %851, align 8, !tbaa !150
  br label %1176

1176:                                             ; preds = %1170, %1166
  %1177 = load ptr, ptr %851, align 8, !tbaa !150
  %1178 = getelementptr inbounds %struct.xpvhv, ptr %623, i64 0, i32 3
  %1179 = load i64, ptr %1178, align 8, !tbaa !179
  %1180 = trunc i64 %1179 to i32
  %1181 = and i32 %962, %1180
  %1182 = zext i32 %1181 to i64
  %1183 = getelementptr inbounds ptr, ptr %1177, i64 %1182
  %1184 = load ptr, ptr @PL_body_roots, align 16, !tbaa !117
  %1185 = icmp eq ptr %1184, null
  br i1 %1185, label %1186, label %1188, !prof !291

1186:                                             ; preds = %1176
  %1187 = call ptr @Perl_more_bodies(i32 noundef 0, i64 noundef 24, i64 noundef 4080) #16
  br label %1188

1188:                                             ; preds = %1176, %1186
  %1189 = load ptr, ptr @PL_body_roots, align 16, !tbaa !117
  %1190 = load ptr, ptr %1189, align 8, !tbaa !123
  store ptr %1190, ptr @PL_body_roots, align 16, !tbaa !117
  %1191 = load i32, ptr %16, align 4, !tbaa !132
  %1192 = and i32 %1191, 536870912
  %1193 = icmp eq i32 %1192, 0
  br i1 %1193, label %1199, label %1194, !prof !290

1194:                                             ; preds = %1188
  %1195 = load i64, ptr %11, align 8, !tbaa !129
  %1196 = trunc i64 %1195 to i32
  %1197 = call fastcc ptr @S_share_hek_flags(ptr noundef %890, i32 noundef %1196, i32 noundef %962, i32 noundef %889)
  %1198 = getelementptr inbounds %struct.he, ptr %1189, i64 0, i32 1
  store ptr %1197, ptr %1198, align 8, !tbaa !121
  br label %1213

1199:                                             ; preds = %1188
  %1200 = load ptr, ptr @PL_strtab, align 8, !tbaa !117
  %1201 = icmp eq ptr %1200, %0
  br i1 %1201, label %1202, label %1208

1202:                                             ; preds = %1199
  %1203 = and i32 %889, 256
  %1204 = icmp eq i32 %1203, 0
  br i1 %1204, label %1206, label %1205

1205:                                             ; preds = %1202
  call void @Perl_safesysfree(ptr noundef %890) #16
  br label %1206

1206:                                             ; preds = %1205, %1202
  %1207 = select i1 %1151, ptr @.str.2, ptr @.str.1
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @S_strtab_error, ptr noundef nonnull %1207) #16
  br label %1213

1208:                                             ; preds = %1199
  %1209 = load i64, ptr %11, align 8, !tbaa !129
  %1210 = trunc i64 %1209 to i32
  %1211 = call fastcc ptr @S_save_hek_flags(ptr noundef %890, i32 noundef %1210, i32 noundef %962, i32 noundef %889)
  %1212 = getelementptr inbounds %struct.he, ptr %1189, i64 0, i32 1
  store ptr %1211, ptr %1212, align 8, !tbaa !121
  br label %1213

1213:                                             ; preds = %1206, %1208, %1194
  %1214 = getelementptr inbounds %struct.he, ptr %1189, i64 0, i32 2
  store ptr %1167, ptr %1214, align 8, !tbaa !150
  %1215 = load ptr, ptr %1183, align 8, !tbaa !117
  %1216 = icmp eq ptr %1215, null
  br i1 %1216, label %1217, label %1232, !prof !292

1217:                                             ; preds = %1213
  %1218 = load i32, ptr %16, align 4, !tbaa !132
  %1219 = and i32 %1218, 33554432
  %1220 = icmp eq i32 %1219, 0
  br i1 %1220, label %1232, label %1221, !prof !293

1221:                                             ; preds = %1217
  %1222 = load ptr, ptr %851, align 8, !tbaa !150
  %1223 = load ptr, ptr %0, align 8, !tbaa !157
  %1224 = getelementptr inbounds %struct.xpvhv, ptr %1223, i64 0, i32 3
  %1225 = load i64, ptr %1224, align 8, !tbaa !179
  %1226 = getelementptr ptr, ptr %1222, i64 %1225
  %1227 = getelementptr ptr, ptr %1226, i64 7
  %1228 = load i32, ptr %1227, align 8, !tbaa !216
  %1229 = icmp eq i32 %1228, 0
  br i1 %1229, label %1232, label %1230, !prof !294

1230:                                             ; preds = %1221
  %1231 = add i32 %1228, 1
  store i32 %1231, ptr %1227, align 8, !tbaa !216
  br label %1232

1232:                                             ; preds = %1221, %1230, %1217, %1213
  %1233 = icmp ne ptr %1215, null
  %1234 = load i8, ptr @PL_hash_rand_bits_enabled, align 1
  %1235 = icmp ne i8 %1234, 0
  %1236 = select i1 %1233, i1 %1235, i1 false, !prof !295
  br i1 %1236, label %1237, label %1247, !prof !290

1237:                                             ; preds = %1232
  %1238 = load i64, ptr @PL_hash_rand_bits, align 8, !tbaa !129
  %1239 = add i64 %1238, 1
  %1240 = call i64 @llvm.fshl.i64(i64 %1239, i64 %1239, i64 1)
  store i64 %1240, ptr @PL_hash_rand_bits, align 8, !tbaa !129
  %1241 = and i64 %1240, 1
  %1242 = icmp eq i64 %1241, 0
  br i1 %1242, label %1246, label %1243

1243:                                             ; preds = %1237
  %1244 = load ptr, ptr %1215, align 8, !tbaa !123
  store ptr %1244, ptr %1189, align 8, !tbaa !123
  %1245 = load ptr, ptr %1183, align 8, !tbaa !117
  br label %1248

1246:                                             ; preds = %1237
  store ptr %1215, ptr %1189, align 8, !tbaa !123
  br label %1248

1247:                                             ; preds = %1232
  store ptr %1215, ptr %1189, align 8, !tbaa !123
  br label %1248

1248:                                             ; preds = %1243, %1246, %1247
  %1249 = phi ptr [ %1245, %1243 ], [ %1183, %1246 ], [ %1183, %1247 ]
  store ptr %1189, ptr %1249, align 8, !tbaa !117
  %1250 = load i32, ptr %16, align 4, !tbaa !132
  %1251 = and i32 %1250, 33554432
  %1252 = icmp eq i32 %1251, 0
  br i1 %1252, label %1272, label %1253, !prof !296

1253:                                             ; preds = %1248
  %1254 = load i8, ptr @PL_hash_rand_bits_enabled, align 1, !tbaa !150
  switch i8 %1254, label %1260 [
    i8 0, label %1263
    i8 1, label %1255
  ], !prof !297

1255:                                             ; preds = %1253
  %1256 = ptrtoint ptr %1189 to i64
  %1257 = add i64 %1256, 1
  %1258 = load i64, ptr @PL_hash_rand_bits, align 8, !tbaa !129
  %1259 = add i64 %1257, %1258
  store i64 %1259, ptr @PL_hash_rand_bits, align 8, !tbaa !129
  br label %1260

1260:                                             ; preds = %1253, %1255
  %1261 = load i64, ptr @PL_hash_rand_bits, align 8, !tbaa !129
  %1262 = call i64 @llvm.fshl.i64(i64 %1261, i64 %1261, i64 1)
  store i64 %1262, ptr @PL_hash_rand_bits, align 8, !tbaa !129
  br label %1263

1263:                                             ; preds = %1253, %1260
  %1264 = load i64, ptr @PL_hash_rand_bits, align 8, !tbaa !129
  %1265 = trunc i64 %1264 to i32
  %1266 = load ptr, ptr %851, align 8, !tbaa !150
  %1267 = load ptr, ptr %0, align 8, !tbaa !157
  %1268 = getelementptr inbounds %struct.xpvhv, ptr %1267, i64 0, i32 3
  %1269 = load i64, ptr %1268, align 8, !tbaa !179
  %1270 = getelementptr ptr, ptr %1266, i64 %1269
  %1271 = getelementptr ptr, ptr %1270, i64 6
  store i32 %1265, ptr %1271, align 8, !tbaa !298
  br label %1272

1272:                                             ; preds = %1263, %1248
  %1273 = icmp eq ptr %1167, @PL_sv_placeholder
  br i1 %1273, label %1274, label %1278, !prof !290

1274:                                             ; preds = %1272
  %1275 = call ptr @Perl_hv_placeholders_p(ptr noundef nonnull %0)
  %1276 = load i64, ptr %1275, align 8, !tbaa !129
  %1277 = add nsw i64 %1276, 1
  store i64 %1277, ptr %1275, align 8, !tbaa !129
  br label %1278

1278:                                             ; preds = %1274, %1272
  %1279 = and i32 %889, 247
  %1280 = icmp eq i32 %1279, 0
  br i1 %1280, label %1284, label %1281, !prof !299

1281:                                             ; preds = %1278
  %1282 = load i32, ptr %16, align 4, !tbaa !132
  %1283 = or i32 %1282, -2147483648
  store i32 %1283, ptr %16, align 4, !tbaa !132
  br label %1284

1284:                                             ; preds = %1281, %1278
  %1285 = getelementptr inbounds %struct.xpvhv, ptr %623, i64 0, i32 2
  %1286 = load i64, ptr %1285, align 8, !tbaa !220
  %1287 = add i64 %1286, 1
  store i64 %1287, ptr %1285, align 8, !tbaa !220
  %1288 = load i64, ptr %1178, align 8, !tbaa !179
  %1289 = icmp ugt i64 %1287, %1288
  br i1 %1289, label %1290, label %1316, !prof !300

1290:                                             ; preds = %1284
  %1291 = add i64 %1288, 1
  %1292 = load ptr, ptr %0, align 8, !tbaa !157
  %1293 = getelementptr inbounds %struct.xpvmg, ptr %1292, i64 0, i32 1
  %1294 = load ptr, ptr %1293, align 8, !tbaa !150
  %1295 = icmp eq ptr %1294, null
  br i1 %1295, label %1303, label %1296, !prof !301

1296:                                             ; preds = %1290
  %1297 = call ptr @Perl_mg_find(ptr noundef %0, i32 noundef 37) #16
  %1298 = icmp eq ptr %1297, null
  br i1 %1298, label %1303, label %1299, !prof !302

1299:                                             ; preds = %1296
  %1300 = getelementptr inbounds %struct.magic, ptr %1297, i64 0, i32 5
  %1301 = load i64, ptr %1300, align 8, !tbaa !303
  %1302 = trunc i64 %1301 to i32
  br label %1303

1303:                                             ; preds = %1299, %1296, %1290
  %1304 = phi i32 [ 0, %1290 ], [ %1302, %1299 ], [ 0, %1296 ]
  %1305 = icmp eq i32 %1304, 0
  br i1 %1305, label %1314, label %1306, !prof !304

1306:                                             ; preds = %1303
  %1307 = load i32, ptr %16, align 4, !tbaa !132
  %1308 = and i32 %1307, 134283264
  %1309 = icmp eq i32 %1308, 0
  br i1 %1309, label %1310, label %1314

1310:                                             ; preds = %1306
  call fastcc void @S_clear_placeholders(ptr noundef nonnull %0, i32 noundef %1304)
  %1311 = load i64, ptr %1285, align 8, !tbaa !220
  %1312 = load i64, ptr %1178, align 8, !tbaa !179
  %1313 = icmp ugt i64 %1311, %1312
  br i1 %1313, label %1314, label %1316

1314:                                             ; preds = %1303, %1306, %1310
  %1315 = shl i64 %1291, 1
  call fastcc void @S_hsplit(ptr noundef nonnull %0, i64 noundef %1291, i64 noundef %1315)
  br label %1316

1316:                                             ; preds = %1314, %1310, %1284
  %1317 = icmp eq i32 %13, 0
  %1318 = select i1 %1317, ptr %1189, ptr %1214, !prof !305
  br label %1319

1319:                                             ; preds = %846, %775, %770, %1316, %1145, %1148, %1120, %863, %866, %777, %719, %767, %751, %749, %742, %728, %730, %680, %15, %8, %1162, %1122, %1004, %620
  %1320 = phi ptr [ %621, %620 ], [ null, %1004 ], [ %1165, %1162 ], [ %1125, %1122 ], [ null, %8 ], [ null, %15 ], [ %682, %680 ], [ %0, %777 ], [ null, %719 ], [ null, %767 ], [ null, %751 ], [ null, %749 ], [ null, %742 ], [ null, %728 ], [ null, %730 ], [ null, %866 ], [ null, %863 ], [ %1036, %1120 ], [ null, %1148 ], [ null, %1145 ], [ %1318, %1316 ], [ null, %770 ], [ null, %775 ], [ null, %846 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #16
  ret ptr %1320
}

declare ptr @Perl_mg_find(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_newSVpvn_flags(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Perl_magic_getuvar(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_newSVsv(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_sv_newmortal() local_unnamed_addr #2

declare i32 @Perl_mg_copy(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_safesysmalloc(i64 noundef) local_unnamed_addr #2

declare void @Perl_sv_upgrade(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #2

declare i32 @Perl_magic_existspack(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @Perl_sv_2bool_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @Perl_sv_tainted(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_safesyscalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_bytes_from_utf8(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @S_perl_hash_one_at_a_time_hard(ptr noundef readonly %0, i64 noundef %1) unnamed_addr #5 !prof !306 !PGOFuncName !307 {
  %3 = getelementptr inbounds i8, ptr %0, i64 %1
  %4 = trunc i64 %1 to i32
  %5 = add i32 %4, 544173908
  %6 = icmp sgt i64 %1, 0
  br i1 %6, label %7, label %18, !prof !176

7:                                                ; preds = %2, %7
  %8 = phi i32 [ %16, %7 ], [ %5, %2 ]
  %9 = phi ptr [ %13, %7 ], [ %0, %2 ]
  %10 = mul i32 %8, 1025
  %11 = lshr i32 %10, 6
  %12 = xor i32 %11, %10
  %13 = getelementptr inbounds i8, ptr %9, i64 1
  %14 = load i8, ptr %9, align 1, !tbaa !150
  %15 = zext i8 %14 to i32
  %16 = add i32 %12, %15
  %17 = icmp ult ptr %13, %3
  br i1 %17, label %7, label %18, !prof !177, !llvm.loop !178

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

; Function Attrs: nounwind uwtable
define internal fastcc ptr @S_share_hek_flags(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #3 !prof !308 !PGOFuncName !309 {
  %5 = load ptr, ptr @PL_strtab, align 8, !tbaa !117
  %6 = load ptr, ptr %5, align 8, !tbaa !157
  %7 = getelementptr inbounds %struct.xpvhv, ptr %6, i64 0, i32 3
  %8 = load i64, ptr %7, align 8, !tbaa !179
  %9 = trunc i64 %8 to i32
  %10 = and i32 %9, %2
  %11 = getelementptr inbounds %struct.hv, ptr %5, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !150
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !117
  %16 = icmp eq ptr %15, null
  br i1 %16, label %44, label %17, !prof !310

17:                                               ; preds = %4, %41
  %18 = phi ptr [ %42, %41 ], [ %15, %4 ]
  %19 = getelementptr inbounds %struct.he, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !121
  %21 = load i32, ptr %20, align 4, !tbaa !173
  %22 = icmp eq i32 %21, %2
  br i1 %22, label %23, label %41, !prof !311

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.hek, ptr %20, i64 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !184
  %26 = icmp eq i32 %25, %1
  br i1 %26, label %27, label %41, !prof !312

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.hek, ptr %20, i64 0, i32 2
  %29 = icmp eq ptr %28, %0
  br i1 %29, label %34, label %30, !prof !313

30:                                               ; preds = %27
  %31 = sext i32 %1 to i64
  %32 = tail call i32 @bcmp(ptr nonnull %28, ptr %0, i64 %31), !prof !314
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %41, !prof !315

34:                                               ; preds = %30, %27
  %35 = trunc i32 %3 to i8
  %36 = sext i32 %25 to i64
  %37 = getelementptr inbounds i8, ptr %28, i64 %36
  %38 = getelementptr inbounds i8, ptr %37, i64 1
  %39 = load i8, ptr %38, align 1, !tbaa !150
  %40 = icmp eq i8 %39, %35
  br i1 %40, label %69, label %41, !prof !316

41:                                               ; preds = %34, %30, %23, %17
  %42 = load ptr, ptr %18, align 8, !tbaa !117
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %17, !prof !317, !llvm.loop !318

44:                                               ; preds = %41, %4
  %45 = load ptr, ptr %14, align 8, !tbaa !117
  %46 = sext i32 %1 to i64
  %47 = add nsw i64 %46, 34
  %48 = tail call ptr @Perl_safesysmalloc(i64 noundef %47) #16
  %49 = getelementptr inbounds %struct.shared_he, ptr %48, i64 0, i32 1
  %50 = getelementptr inbounds %struct.shared_he, ptr %48, i64 0, i32 1, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %50, ptr align 1 %0, i64 %46, i1 false), !prof !319
  %51 = getelementptr inbounds %struct.shared_he, ptr %48, i64 0, i32 1, i32 2, i64 %46
  store i8 0, ptr %51, align 1, !tbaa !150
  %52 = getelementptr inbounds %struct.shared_he, ptr %48, i64 0, i32 1, i32 1
  store i32 %1, ptr %52, align 4, !tbaa !184
  store i32 %2, ptr %49, align 4, !tbaa !173
  %53 = trunc i32 %3 to i8
  %54 = getelementptr inbounds i8, ptr %50, i64 %46
  %55 = getelementptr inbounds i8, ptr %54, i64 1
  store i8 %53, ptr %55, align 1, !tbaa !150
  %56 = getelementptr inbounds %struct.he, ptr %48, i64 0, i32 1
  store ptr %49, ptr %56, align 8, !tbaa !121
  %57 = getelementptr inbounds %struct.he, ptr %48, i64 0, i32 2
  store i64 0, ptr %57, align 8, !tbaa !150
  store ptr %45, ptr %48, align 8, !tbaa !123
  store ptr %48, ptr %14, align 8, !tbaa !117
  %58 = getelementptr inbounds %struct.xpvhv, ptr %6, i64 0, i32 2
  %59 = load i64, ptr %58, align 8, !tbaa !220
  %60 = add i64 %59, 1
  store i64 %60, ptr %58, align 8, !tbaa !220
  %61 = icmp eq ptr %45, null
  br i1 %61, label %69, label %62, !prof !320

62:                                               ; preds = %44
  %63 = load i64, ptr %7, align 8, !tbaa !179
  %64 = icmp ugt i64 %60, %63
  br i1 %64, label %65, label %69, !prof !321

65:                                               ; preds = %62
  %66 = add i64 %63, 1
  %67 = load ptr, ptr @PL_strtab, align 8, !tbaa !117
  %68 = shl i64 %66, 1
  tail call fastcc void @S_hsplit(ptr noundef %67, i64 noundef %66, i64 noundef %68)
  br label %69

69:                                               ; preds = %34, %44, %65, %62
  %70 = phi ptr [ %48, %62 ], [ %48, %65 ], [ %48, %44 ], [ %18, %34 ]
  %71 = getelementptr inbounds %struct.he, ptr %70, i64 0, i32 2
  %72 = load i64, ptr %71, align 8, !tbaa !150
  %73 = add i64 %72, 1
  store i64 %73, ptr %71, align 8, !tbaa !150
  %74 = and i32 %3, 256
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %77, label %76, !prof !322

76:                                               ; preds = %69
  tail call void @Perl_safesysfree(ptr noundef %0) #16
  br label %77

77:                                               ; preds = %76, %69
  %78 = getelementptr inbounds %struct.he, ptr %70, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !121
  ret ptr %79
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @Perl_unshare_hek(ptr noundef %0) local_unnamed_addr #4 !prof !323 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3, !prof !324

3:                                                ; preds = %1
  %4 = getelementptr inbounds i8, ptr %0, i64 -8
  %5 = load i64, ptr %4, align 8, !tbaa !150
  %6 = icmp eq i64 %5, 1
  br i1 %6, label %9, label %7, !prof !325

7:                                                ; preds = %3
  %8 = add i64 %5, -1
  store i64 %8, ptr %4, align 8, !tbaa !150
  br label %73

9:                                                ; preds = %3
  %10 = getelementptr inbounds i8, ptr %0, i64 -24
  %11 = load i32, ptr %0, align 4, !tbaa !173
  br label %12

12:                                               ; preds = %1, %9
  %13 = phi i32 [ %11, %9 ], [ 0, %1 ]
  %14 = phi ptr [ %10, %9 ], [ null, %1 ]
  %15 = load ptr, ptr @PL_strtab, align 8, !tbaa !117
  %16 = load ptr, ptr %15, align 8, !tbaa !157
  %17 = getelementptr inbounds %struct.hv, ptr %15, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !150
  %19 = getelementptr inbounds %struct.xpvhv, ptr %16, i64 0, i32 3
  %20 = load i64, ptr %19, align 8, !tbaa !179
  %21 = trunc i64 %20 to i32
  %22 = and i32 %13, %21
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds ptr, ptr %18, i64 %23
  %25 = icmp eq ptr %14, null
  br i1 %25, label %26, label %29, !prof !326

26:                                               ; preds = %12
  %27 = load ptr, ptr %24, align 8, !tbaa !117
  %28 = icmp eq ptr %27, null
  br i1 %28, label %56, label %35

29:                                               ; preds = %12, %29
  %30 = phi ptr [ %31, %29 ], [ %24, %12 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !117
  %32 = icmp eq ptr %31, null
  %33 = icmp eq ptr %31, %14
  %34 = or i1 %32, %33
  br i1 %34, label %56, label %29, !prof !327, !llvm.loop !328

35:                                               ; preds = %26, %53
  %36 = phi ptr [ %54, %53 ], [ %27, %26 ]
  %37 = phi ptr [ %36, %53 ], [ %24, %26 ]
  %38 = getelementptr inbounds %struct.he, ptr %36, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !121
  %40 = load i32, ptr %39, align 4, !tbaa !173
  %41 = icmp eq i32 %40, %13
  br i1 %41, label %42, label %53

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.hek, ptr %39, i64 0, i32 1
  %44 = load i32, ptr %43, align 4, !tbaa !184
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.hek, ptr %39, i64 0, i32 2
  %48 = zext nneg i32 %44 to i64
  %49 = getelementptr inbounds i8, ptr %47, i64 %48
  %50 = getelementptr inbounds i8, ptr %49, i64 1
  %51 = load i8, ptr %50, align 1, !tbaa !150
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %46, %42, %35
  %54 = load ptr, ptr %36, align 8, !tbaa !117
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %35, !llvm.loop !329

56:                                               ; preds = %29, %53, %46, %26
  %57 = phi ptr [ %27, %26 ], [ %54, %53 ], [ %36, %46 ], [ %31, %29 ]
  %58 = phi ptr [ %24, %26 ], [ %36, %53 ], [ %37, %46 ], [ %30, %29 ]
  %59 = icmp eq ptr %57, null
  br i1 %59, label %70, label %60, !prof !326

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.he, ptr %57, i64 0, i32 2
  %62 = load i64, ptr %61, align 8, !tbaa !150
  %63 = add i64 %62, -1
  store i64 %63, ptr %61, align 8, !tbaa !150
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %73, !prof !330

65:                                               ; preds = %60
  %66 = load ptr, ptr %57, align 8, !tbaa !123
  store ptr %66, ptr %58, align 8, !tbaa !117
  tail call void @Perl_safesysfree(ptr noundef nonnull %57) #16
  %67 = getelementptr inbounds %struct.xpvhv, ptr %16, i64 0, i32 2
  %68 = load i64, ptr %67, align 8, !tbaa !220
  %69 = add i64 %68, -1
  store i64 %69, ptr %67, align 8, !tbaa !220
  br label %73

70:                                               ; preds = %56
  %71 = getelementptr inbounds %struct.hek, ptr %0, i64 0, i32 2
  %72 = select i1 %2, ptr null, ptr %71
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 24, ptr noundef nonnull @.str.20, ptr noundef %72, ptr noundef nonnull @.str.22) #16
  br label %73

73:                                               ; preds = %60, %65, %70, %7
  ret void
}

declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #2

declare ptr @Perl_newSV(i64 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local nonnull ptr @Perl_hv_placeholders_p(ptr noundef %0) local_unnamed_addr #0 !prof !116 {
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

; Function Attrs: cold nounwind uwtable
define internal fastcc void @S_hv_notallowed(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 !prof !116 {
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
  %16 = load i32, ptr %15, align 4, !tbaa !144
  %17 = or i32 %16, 536870912
  store i32 %17, ptr %15, align 4, !tbaa !144
  br label %18

18:                                               ; preds = %14, %11
  tail call void (ptr, ...) @Perl_croak(ptr noundef %3, ptr noundef %5) #16
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef ptr @S_save_hek_flags(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !prof !116 {
  %5 = sext i32 %1 to i64
  %6 = add nsw i64 %5, 10
  %7 = tail call ptr @Perl_safesysmalloc(i64 noundef %6) #16
  %8 = getelementptr inbounds %struct.hek, ptr %7, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %8, ptr align 1 %0, i64 %5, i1 false)
  %9 = getelementptr inbounds %struct.hek, ptr %7, i64 0, i32 2, i64 %5
  store i8 0, ptr %9, align 1, !tbaa !150
  %10 = getelementptr inbounds %struct.hek, ptr %7, i64 0, i32 1
  store i32 %1, ptr %10, align 4, !tbaa !184
  store i32 %2, ptr %7, align 4, !tbaa !173
  %11 = trunc i32 %3 to i8
  %12 = or i8 %11, 8
  %13 = getelementptr inbounds i8, ptr %8, i64 %5
  %14 = getelementptr inbounds i8, ptr %13, i64 1
  store i8 %12, ptr %14, align 1, !tbaa !150
  %15 = and i32 %3, 256
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  tail call void @Perl_safesysfree(ptr noundef %0) #16
  br label %18

18:                                               ; preds = %17, %4
  ret ptr %7
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @Perl_hv_placeholders_get(ptr noundef %0) local_unnamed_addr #0 !prof !116 {
  %2 = tail call ptr @Perl_mg_find(ptr noundef %0, i32 noundef 37) #16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.magic, ptr %2, i64 0, i32 5
  %6 = load i64, ptr %5, align 8, !tbaa !303
  %7 = trunc i64 %6 to i32
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi i32 [ %7, %4 ], [ 0, %1 ]
  ret i32 %9
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @S_clear_placeholders(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !116 {
  %3 = load ptr, ptr %0, align 8, !tbaa !157
  %4 = getelementptr inbounds %struct.xpvhv, ptr %3, i64 0, i32 3
  %5 = load i64, ptr %4, align 8, !tbaa !179
  %6 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %8 = shl i64 %5, 32
  %9 = ashr exact i64 %8, 32
  br label %10

10:                                               ; preds = %95, %2
  %11 = phi i64 [ %98, %95 ], [ %9, %2 ]
  %12 = phi i32 [ %97, %95 ], [ %1, %2 ]
  %13 = load ptr, ptr %6, align 8, !tbaa !150
  %14 = getelementptr inbounds ptr, ptr %13, i64 %11
  %15 = load ptr, ptr %14, align 8, !tbaa !117
  %16 = icmp eq ptr %15, null
  br i1 %16, label %95, label %17

17:                                               ; preds = %10, %90
  %18 = phi i1 [ %94, %90 ], [ %16, %10 ]
  %19 = phi ptr [ %93, %90 ], [ %15, %10 ]
  %20 = phi i32 [ %92, %90 ], [ %12, %10 ]
  %21 = phi ptr [ %91, %90 ], [ %14, %10 ]
  %22 = getelementptr inbounds %struct.he, ptr %19, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !150
  %24 = icmp eq ptr %23, @PL_sv_placeholder
  br i1 %24, label %25, label %90

25:                                               ; preds = %17
  %26 = load ptr, ptr %19, align 8, !tbaa !123
  store ptr %26, ptr %21, align 8, !tbaa !117
  %27 = load i32, ptr %7, align 4, !tbaa !132
  %28 = and i32 %27, 33554432
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %25
  %31 = load ptr, ptr %6, align 8, !tbaa !150
  %32 = load ptr, ptr %0, align 8, !tbaa !157
  %33 = getelementptr inbounds %struct.xpvhv, ptr %32, i64 0, i32 3
  %34 = load i64, ptr %33, align 8, !tbaa !179
  %35 = getelementptr ptr, ptr %31, i64 %34
  %36 = getelementptr ptr, ptr %35, i64 3
  %37 = load ptr, ptr %36, align 8, !tbaa !218
  br label %38

38:                                               ; preds = %25, %30
  %39 = phi ptr [ %37, %30 ], [ null, %25 ]
  %40 = icmp eq ptr %19, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = or i32 %27, 1073741824
  store i32 %42, ptr %7, align 4, !tbaa !132
  br label %59

43:                                               ; preds = %38
  %44 = and i32 %27, 1107296256
  %45 = icmp eq i32 %44, 1107296256
  br i1 %45, label %46, label %58

46:                                               ; preds = %43
  %47 = load ptr, ptr %6, align 8, !tbaa !150
  %48 = load ptr, ptr %0, align 8, !tbaa !157
  %49 = getelementptr inbounds %struct.xpvhv, ptr %48, i64 0, i32 3
  %50 = load i64, ptr %49, align 8, !tbaa !179
  %51 = getelementptr ptr, ptr %47, i64 %50
  %52 = getelementptr ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8, !tbaa !218
  %54 = load ptr, ptr %53, align 8, !tbaa !123
  %55 = icmp eq ptr %19, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %46
  %57 = load ptr, ptr %19, align 8, !tbaa !123
  store ptr %57, ptr %53, align 8, !tbaa !123
  br label %58

58:                                               ; preds = %56, %46, %43
  tail call void @Perl_hv_free_ent(ptr noundef nonnull %0, ptr noundef nonnull %19)
  br label %59

59:                                               ; preds = %58, %41
  %60 = add i32 %20, -1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %90

62:                                               ; preds = %59
  %63 = load ptr, ptr %0, align 8, !tbaa !157
  %64 = getelementptr inbounds %struct.xpvmg, ptr %63, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !150
  %66 = icmp eq ptr %65, null
  br i1 %66, label %73, label %67

67:                                               ; preds = %62
  %68 = tail call ptr @Perl_mg_find(ptr noundef nonnull %0, i32 noundef 37) #16
  %69 = icmp eq ptr %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.magic, ptr %68, i64 0, i32 5
  %72 = load i64, ptr %71, align 8, !tbaa !303
  br label %73

73:                                               ; preds = %70, %67, %62
  %74 = phi i64 [ 0, %62 ], [ %72, %70 ], [ 0, %67 ]
  %75 = shl i64 %74, 32
  %76 = ashr exact i64 %75, 32
  %77 = load ptr, ptr %0, align 8, !tbaa !157
  %78 = getelementptr inbounds %struct.xpvhv, ptr %77, i64 0, i32 2
  %79 = load i64, ptr %78, align 8, !tbaa !220
  %80 = sub i64 %79, %76
  store i64 %80, ptr %78, align 8, !tbaa !220
  %81 = icmp eq i64 %80, %76
  br i1 %81, label %82, label %85

82:                                               ; preds = %73
  %83 = load i32, ptr %7, align 4, !tbaa !132
  %84 = and i32 %83, 2147483647
  store i32 %84, ptr %7, align 4, !tbaa !132
  br label %85

85:                                               ; preds = %82, %73
  %86 = tail call ptr @Perl_mg_find(ptr noundef nonnull %0, i32 noundef 37) #16
  %87 = icmp eq ptr %86, null
  br i1 %87, label %95, label %88

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.magic, ptr %86, i64 0, i32 5
  store i64 0, ptr %89, align 8, !tbaa !303
  br label %95

90:                                               ; preds = %17, %59
  %91 = phi ptr [ %21, %59 ], [ %19, %17 ]
  %92 = phi i32 [ %60, %59 ], [ %20, %17 ]
  %93 = load ptr, ptr %91, align 8, !tbaa !117
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %17, !llvm.loop !331

95:                                               ; preds = %90, %10, %88, %85
  %96 = phi i1 [ %18, %85 ], [ %18, %88 ], [ %16, %10 ], [ %94, %90 ]
  %97 = phi i32 [ 0, %85 ], [ 0, %88 ], [ %12, %10 ], [ %92, %90 ]
  %98 = add nsw i64 %11, -1
  %99 = icmp sgt i64 %11, 0
  %100 = and i1 %96, %99
  br i1 %100, label %10, label %101, !llvm.loop !332

101:                                              ; preds = %95
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @S_hsplit(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #3 !prof !333 !PGOFuncName !334 {
  %4 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !150
  %6 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !132
  %8 = and i32 %7, 33554432
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15, !prof !335

10:                                               ; preds = %3
  %11 = load ptr, ptr @PL_strtab, align 8, !tbaa !117
  %12 = icmp ne ptr %11, %0
  %13 = icmp ugt i64 %2, 511
  %14 = and i1 %13, %12
  br label %15

15:                                               ; preds = %10, %3
  %16 = phi i1 [ true, %3 ], [ %14, %10 ]
  store i8 1, ptr @PL_nomemok, align 1, !tbaa !151
  %17 = shl i64 %2, 3
  %18 = select i1 %16, i64 56, i64 0, !prof !336
  %19 = add i64 %18, %17
  %20 = tail call ptr @Perl_safesysrealloc(ptr noundef %5, i64 noundef %19) #16
  store i8 0, ptr @PL_nomemok, align 1, !tbaa !151
  %21 = icmp eq ptr %20, null
  br i1 %21, label %140, label %22, !prof !337

22:                                               ; preds = %15
  %23 = load i8, ptr @PL_hash_rand_bits_enabled, align 1, !tbaa !150
  switch i8 %23, label %40 [
    i8 0, label %43
    i8 1, label %24
  ], !prof !338

24:                                               ; preds = %22
  %25 = ptrtoint ptr %20 to i64
  %26 = xor i64 %25, -1
  %27 = shl i64 %25, 18
  %28 = add i64 %27, %26
  %29 = lshr i64 %28, 31
  %30 = xor i64 %29, %28
  %31 = mul i64 %30, 21
  %32 = lshr i64 %31, 11
  %33 = xor i64 %32, %31
  %34 = mul i64 %33, 65
  %35 = lshr i64 %34, 22
  %36 = xor i64 %35, %34
  %37 = and i64 %36, 4294967295
  %38 = load i64, ptr @PL_hash_rand_bits, align 8, !tbaa !129
  %39 = add i64 %38, %37
  store i64 %39, ptr @PL_hash_rand_bits, align 8, !tbaa !129
  br label %40

40:                                               ; preds = %22, %24
  %41 = load i64, ptr @PL_hash_rand_bits, align 8, !tbaa !129
  %42 = tail call i64 @llvm.fshl.i64(i64 %41, i64 %41, i64 1)
  store i64 %42, ptr @PL_hash_rand_bits, align 8, !tbaa !129
  br label %43

43:                                               ; preds = %22, %40
  store ptr %20, ptr %4, align 8, !tbaa !150
  %44 = add i64 %2, -1
  %45 = load ptr, ptr %0, align 8, !tbaa !157
  %46 = getelementptr inbounds %struct.xpvhv, ptr %45, i64 0, i32 3
  store i64 %44, ptr %46, align 8, !tbaa !179
  br i1 %16, label %47, label %72, !prof !336

47:                                               ; preds = %43
  %48 = getelementptr inbounds i8, ptr %20, i64 %17
  %49 = load i32, ptr %6, align 4, !tbaa !132
  %50 = and i32 %49, 33554432
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %59, label %52, !prof !339

52:                                               ; preds = %47
  %53 = shl i64 %1, 3
  %54 = getelementptr inbounds i8, ptr %20, i64 %53
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %48, ptr noundef nonnull align 1 dereferenceable(56) %54, i64 56, i1 false)
  %55 = load i64, ptr @PL_hash_rand_bits, align 8, !tbaa !129
  %56 = trunc i64 %55 to i32
  %57 = getelementptr inbounds %struct.xpvhv_aux, ptr %48, i64 0, i32 6
  store i32 %56, ptr %57, align 8, !tbaa !298
  %58 = getelementptr inbounds %struct.xpvhv_aux, ptr %48, i64 0, i32 8
  store i32 0, ptr %58, align 8, !tbaa !216
  br label %72

59:                                               ; preds = %47
  %60 = load i64, ptr @PL_hash_rand_bits, align 8, !tbaa !129
  %61 = trunc i64 %60 to i32
  %62 = getelementptr inbounds %struct.xpvhv_aux, ptr %48, i64 0, i32 6
  store i32 %61, ptr %62, align 8, !tbaa !298
  %63 = getelementptr inbounds %struct.xpvhv_aux, ptr %48, i64 0, i32 3
  store i32 -1, ptr %63, align 8, !tbaa !340
  %64 = getelementptr inbounds %struct.xpvhv_aux, ptr %48, i64 0, i32 2
  store ptr null, ptr %64, align 8, !tbaa !218
  %65 = getelementptr inbounds %struct.xpvhv_aux, ptr %48, i64 0, i32 7
  store i32 %61, ptr %65, align 4, !tbaa !341
  %66 = getelementptr inbounds %struct.xpvhv_aux, ptr %48, i64 0, i32 8
  store i32 0, ptr %66, align 8, !tbaa !216
  %67 = getelementptr inbounds %struct.xpvhv_aux, ptr %48, i64 0, i32 4
  store i32 0, ptr %67, align 4, !tbaa !198
  %68 = getelementptr inbounds %struct.xpvhv_aux, ptr %48, i64 0, i32 5
  store ptr null, ptr %68, align 8, !tbaa !342
  %69 = getelementptr inbounds %struct.xpvhv_aux, ptr %48, i64 0, i32 9
  store i32 0, ptr %69, align 4, !tbaa !343
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %48, i8 0, i64 16, i1 false)
  %70 = load i32, ptr %6, align 4, !tbaa !132
  %71 = or i32 %70, 33554432
  store i32 %71, ptr %6, align 4, !tbaa !132
  br label %72

72:                                               ; preds = %52, %59, %43
  %73 = shl i64 %1, 3
  %74 = getelementptr inbounds i8, ptr %20, i64 %73
  %75 = sub i64 %2, %1
  %76 = shl i64 %75, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %74, i8 0, i64 %76, i1 false), !prof !344
  %77 = load ptr, ptr %0, align 8, !tbaa !157
  %78 = getelementptr inbounds %struct.xpvhv, ptr %77, i64 0, i32 2
  %79 = load i64, ptr %78, align 8, !tbaa !220
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %140, label %81, !prof !337

81:                                               ; preds = %72
  %82 = load i64, ptr @PL_hash_rand_bits, align 8, !tbaa !129
  %83 = trunc i64 %2 to i32
  %84 = add i32 %83, -1
  br label %85

85:                                               ; preds = %81, %136
  %86 = phi i64 [ %137, %136 ], [ %82, %81 ]
  %87 = phi i64 [ %138, %136 ], [ 0, %81 ]
  %88 = getelementptr inbounds ptr, ptr %20, i64 %87
  %89 = load ptr, ptr %88, align 8, !tbaa !117
  %90 = icmp eq ptr %89, null
  br i1 %90, label %136, label %91, !prof !345

91:                                               ; preds = %85
  %92 = trunc i64 %87 to i32
  br label %93

93:                                               ; preds = %91, %130
  %94 = phi i64 [ %131, %130 ], [ %86, %91 ]
  %95 = phi i64 [ %132, %130 ], [ %86, %91 ]
  %96 = phi ptr [ %133, %130 ], [ %88, %91 ]
  %97 = phi ptr [ %134, %130 ], [ %89, %91 ]
  %98 = getelementptr inbounds %struct.he, ptr %97, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !121
  %100 = load i32, ptr %99, align 4, !tbaa !173
  %101 = and i32 %100, %84
  %102 = icmp eq i32 %101, %92
  br i1 %102, label %130, label %103, !prof !346

103:                                              ; preds = %93
  %104 = load ptr, ptr %97, align 8, !tbaa !123
  store ptr %104, ptr %96, align 8, !tbaa !117
  %105 = zext i32 %101 to i64
  %106 = getelementptr inbounds ptr, ptr %20, i64 %105
  %107 = load ptr, ptr %106, align 8, !tbaa !117
  %108 = icmp ne ptr %107, null
  %109 = load i8, ptr @PL_hash_rand_bits_enabled, align 1
  %110 = icmp ne i8 %109, 0
  %111 = select i1 %108, i1 %110, i1 false, !prof !347
  br i1 %111, label %112, label %125, !prof !348

112:                                              ; preds = %103
  %113 = load ptr, ptr %98, align 8, !tbaa !121
  %114 = load i32, ptr %113, align 4, !tbaa !173
  %115 = tail call i32 @llvm.fshl.i32(i32 %114, i32 %114, i32 17)
  %116 = zext i32 %115 to i64
  %117 = add i64 %95, %116
  %118 = tail call i64 @llvm.fshl.i64(i64 %117, i64 %117, i64 1)
  store i64 %118, ptr @PL_hash_rand_bits, align 8, !tbaa !129
  %119 = and i64 %118, 1
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %112
  %122 = load ptr, ptr %107, align 8, !tbaa !123
  store ptr %122, ptr %97, align 8, !tbaa !123
  %123 = load ptr, ptr %106, align 8, !tbaa !117
  br label %126

124:                                              ; preds = %112
  store ptr %107, ptr %97, align 8, !tbaa !123
  br label %126

125:                                              ; preds = %103
  store ptr %107, ptr %97, align 8, !tbaa !123
  br label %126

126:                                              ; preds = %121, %124, %125
  %127 = phi ptr [ %106, %125 ], [ %106, %124 ], [ %123, %121 ]
  %128 = phi i64 [ %94, %125 ], [ %118, %124 ], [ %118, %121 ]
  %129 = phi i64 [ %95, %125 ], [ %118, %124 ], [ %118, %121 ]
  store ptr %97, ptr %127, align 8, !tbaa !117
  br label %130

130:                                              ; preds = %126, %93
  %131 = phi i64 [ %94, %93 ], [ %128, %126 ]
  %132 = phi i64 [ %95, %93 ], [ %129, %126 ]
  %133 = phi ptr [ %97, %93 ], [ %96, %126 ]
  %134 = load ptr, ptr %133, align 8, !tbaa !117
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %93, !prof !349, !llvm.loop !350

136:                                              ; preds = %130, %85
  %137 = phi i64 [ %86, %85 ], [ %131, %130 ]
  %138 = add i64 %87, 1
  %139 = icmp eq i64 %87, %1
  br i1 %139, label %140, label %85, !prof !351, !llvm.loop !352

140:                                              ; preds = %136, %72, %15
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_hv_scalar(ptr noundef %0) local_unnamed_addr #0 !prof !353 {
  %2 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !132
  %4 = and i32 %3, 8388608
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %13, label %6, !prof !354

6:                                                ; preds = %1
  %7 = tail call ptr @Perl_mg_find(ptr noundef %0, i32 noundef 80) #16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call ptr @Perl_magic_scalarpack(ptr noundef %0, ptr noundef nonnull %7) #16
  br label %11

11:                                               ; preds = %6, %9
  %12 = phi ptr [ %10, %9 ], [ undef, %6 ]
  br i1 %8, label %13, label %26

13:                                               ; preds = %11, %1
  %14 = tail call ptr @Perl_sv_newmortal() #16
  %15 = load ptr, ptr %0, align 8, !tbaa !157
  %16 = getelementptr inbounds %struct.xpvhv, ptr %15, i64 0, i32 2
  %17 = load i64, ptr %16, align 8, !tbaa !220
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %25, label %19, !prof !190

19:                                               ; preds = %13
  %20 = tail call i64 @Perl_hv_fill(ptr noundef nonnull %0)
  %21 = load ptr, ptr %0, align 8, !tbaa !157
  %22 = getelementptr inbounds %struct.xpvhv, ptr %21, i64 0, i32 3
  %23 = load i64, ptr %22, align 8, !tbaa !179
  %24 = add nsw i64 %23, 1
  tail call void (ptr, ptr, ...) @Perl_sv_setpvf(ptr noundef %14, ptr noundef nonnull @.str.4, i64 noundef %20, i64 noundef %24) #16
  br label %26

25:                                               ; preds = %13
  tail call void @Perl_sv_setiv(ptr noundef %14, i64 noundef 0) #16
  br label %26

26:                                               ; preds = %19, %25, %11
  %27 = phi ptr [ %12, %11 ], [ %14, %25 ], [ %14, %19 ]
  ret ptr %27
}

declare ptr @Perl_magic_scalarpack(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Perl_sv_setpvf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local i64 @Perl_hv_fill(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !353 {
  %2 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !150
  %4 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !132
  %6 = and i32 %5, 33554432
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %14, label %8, !prof !190

8:                                                ; preds = %1
  %9 = load ptr, ptr %0, align 8, !tbaa !157
  %10 = getelementptr inbounds %struct.xpvhv, ptr %9, i64 0, i32 3
  %11 = load i64, ptr %10, align 8, !tbaa !179
  %12 = getelementptr ptr, ptr %3, i64 %11
  %13 = getelementptr ptr, ptr %12, i64 1
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  %16 = load ptr, ptr %0, align 8, !tbaa !157
  %17 = getelementptr inbounds %struct.xpvhv, ptr %16, i64 0, i32 2
  %18 = load i64, ptr %17, align 8, !tbaa !220
  %19 = icmp ult i64 %18, 2
  br i1 %19, label %61, label %20, !prof !190

20:                                               ; preds = %14
  %21 = icmp eq ptr %15, null
  br i1 %21, label %28, label %22, !prof !190

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.xpvhv_aux, ptr %15, i64 0, i32 8
  %24 = load i32, ptr %23, align 8, !tbaa !216
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26, !prof !354

26:                                               ; preds = %22
  %27 = zext i32 %24 to i64
  br label %61

28:                                               ; preds = %22, %20
  %29 = icmp eq ptr %3, null
  br i1 %29, label %48, label %30, !prof !190

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.xpvhv, ptr %16, i64 0, i32 3
  %32 = load i64, ptr %31, align 8, !tbaa !179
  %33 = getelementptr inbounds ptr, ptr %3, i64 %32
  %34 = getelementptr inbounds ptr, ptr %33, i64 1
  %35 = ptrtoint ptr %34 to i64
  %36 = ptrtoint ptr %3 to i64
  %37 = sub i64 %35, %36
  %38 = ashr exact i64 %37, 3
  br label %39

39:                                               ; preds = %39, %30
  %40 = phi i64 [ %38, %30 ], [ %45, %39 ]
  %41 = phi ptr [ %3, %30 ], [ %46, %39 ]
  %42 = load ptr, ptr %41, align 8, !tbaa !117
  %43 = icmp eq ptr %42, null
  %44 = sext i1 %43 to i64
  %45 = add i64 %40, %44
  %46 = getelementptr inbounds ptr, ptr %41, i64 1
  %47 = icmp ugt ptr %46, %33
  br i1 %47, label %48, label %39, !prof !355, !llvm.loop !356

48:                                               ; preds = %39, %28
  %49 = phi i64 [ 0, %28 ], [ %45, %39 ]
  br i1 %21, label %53, label %50, !prof !190

50:                                               ; preds = %48
  %51 = trunc i64 %49 to i32
  %52 = getelementptr inbounds %struct.xpvhv_aux, ptr %15, i64 0, i32 8
  store i32 %51, ptr %52, align 8, !tbaa !216
  br label %61

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.xpvhv, ptr %16, i64 0, i32 3
  %55 = load i64, ptr %54, align 8, !tbaa !179
  %56 = icmp ugt i64 %55, 30
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = tail call fastcc ptr @S_hv_auxinit(ptr noundef nonnull %0)
  %59 = trunc i64 %49 to i32
  %60 = getelementptr inbounds %struct.xpvhv_aux, ptr %58, i64 0, i32 8
  store i32 %59, ptr %60, align 8, !tbaa !216
  br label %61

61:                                               ; preds = %50, %57, %53, %14, %26
  %62 = phi i64 [ %27, %26 ], [ %18, %14 ], [ %49, %53 ], [ %49, %57 ], [ %49, %50 ]
  ret i64 %62
}

declare void @Perl_sv_setiv(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_hv_ksplit(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 !prof !353 {
  %3 = load ptr, ptr %0, align 8, !tbaa !157
  %4 = getelementptr inbounds %struct.xpvhv, ptr %3, i64 0, i32 3
  %5 = add i64 %1, 2147483648
  %6 = icmp ult i64 %5, 4294967296
  br i1 %6, label %7, label %38, !prof !354

7:                                                ; preds = %2
  %8 = load i64, ptr %4, align 8, !tbaa !179
  %9 = shl i64 %8, 32
  %10 = add i64 %9, 4294967296
  %11 = ashr exact i64 %10, 32
  %12 = icmp slt i64 %11, %1
  br i1 %12, label %13, label %38, !prof !354

13:                                               ; preds = %7
  %14 = trunc i64 %1 to i32
  br label %15

15:                                               ; preds = %13, %15
  %16 = phi i32 [ %20, %15 ], [ %14, %13 ]
  %17 = sub nsw i32 0, %16
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, %16
  %20 = xor i32 %18, %16
  br i1 %19, label %21, label %15, !prof !354, !llvm.loop !357

21:                                               ; preds = %15
  %22 = sext i32 %16 to i64
  %23 = icmp slt i64 %22, %1
  %24 = zext i1 %23 to i32
  %25 = shl nsw i32 %16, %24
  %26 = sext i32 %25 to i64
  %27 = icmp slt i64 %26, %1
  br i1 %27, label %38, label %28, !prof !190

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !150
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32, !prof !354

32:                                               ; preds = %28
  tail call fastcc void @S_hsplit(ptr noundef nonnull %0, i64 noundef %11, i64 noundef %26)
  br label %38

33:                                               ; preds = %28
  %34 = shl nsw i64 %26, 3
  %35 = tail call ptr @Perl_safesyscalloc(i64 noundef %34, i64 noundef 1) #16
  %36 = add nsw i32 %25, -1
  %37 = sext i32 %36 to i64
  store i64 %37, ptr %4, align 8, !tbaa !179
  store ptr %35, ptr %29, align 8, !tbaa !150
  br label %38

38:                                               ; preds = %32, %33, %21, %2, %7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_newHVhv(ptr noundef %0) local_unnamed_addr #3 !prof !358 {
  %2 = tail call ptr @Perl_newSV_type(i32 noundef 12) #16
  %3 = icmp eq ptr %0, null
  br i1 %3, label %221, label %4, !prof !359

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !157
  %6 = getelementptr inbounds %struct.xpvhv, ptr %5, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !220
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %14, !prof !359

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !144
  %12 = and i32 %11, 14680064
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %221, label %14

14:                                               ; preds = %9, %4
  %15 = getelementptr inbounds %struct.xpvhv, ptr %5, i64 0, i32 3
  %16 = load i64, ptr %15, align 8, !tbaa !179
  %17 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !160
  %19 = and i32 %18, 14680064
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %98, !prof !360

21:                                               ; preds = %14
  %22 = and i32 %18, 536870912
  %23 = icmp eq i32 %22, 0
  %24 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !150
  %26 = shl i64 %16, 3
  %27 = add i64 %26, 8
  %28 = tail call ptr @Perl_safesysmalloc(i64 noundef %27) #16
  br label %29

29:                                               ; preds = %21, %87
  %30 = phi i64 [ 0, %21 ], [ %88, %87 ]
  %31 = getelementptr inbounds ptr, ptr %25, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !117
  %33 = icmp eq ptr %32, null
  %34 = getelementptr inbounds ptr, ptr %28, i64 %30
  br i1 %33, label %35, label %36, !prof !361

35:                                               ; preds = %29
  store ptr null, ptr %34, align 8, !tbaa !117
  br label %87

36:                                               ; preds = %29, %80
  %37 = phi ptr [ %55, %80 ], [ null, %29 ]
  %38 = phi ptr [ %85, %80 ], [ %32, %29 ]
  %39 = getelementptr inbounds %struct.he, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !121
  %41 = load i32, ptr %40, align 4, !tbaa !173
  %42 = getelementptr inbounds %struct.hek, ptr %40, i64 0, i32 2
  %43 = getelementptr inbounds %struct.hek, ptr %40, i64 0, i32 1
  %44 = load i32, ptr %43, align 4, !tbaa !184
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, ptr %42, i64 %45
  %47 = getelementptr inbounds i8, ptr %46, i64 1
  %48 = load i8, ptr %47, align 1, !tbaa !150
  %49 = zext i8 %48 to i32
  %50 = load ptr, ptr @PL_body_roots, align 16, !tbaa !117
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %54, !prof !362

52:                                               ; preds = %36
  %53 = tail call ptr @Perl_more_bodies(i32 noundef 0, i64 noundef 24, i64 noundef 4080) #16
  br label %54

54:                                               ; preds = %36, %52
  %55 = load ptr, ptr @PL_body_roots, align 16, !tbaa !117
  %56 = load ptr, ptr %55, align 8, !tbaa !123
  store ptr %56, ptr @PL_body_roots, align 16, !tbaa !117
  %57 = getelementptr inbounds %struct.he, ptr %38, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !150
  %59 = getelementptr inbounds %struct.sv, ptr %58, i64 0, i32 2
  %60 = load i32, ptr %59, align 4, !tbaa !144
  %61 = and i32 %60, 134283264
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %71, label %63, !prof !362

63:                                               ; preds = %54
  %64 = icmp eq ptr %58, @PL_sv_undef
  %65 = icmp eq ptr %58, @PL_sv_yes
  %66 = or i1 %64, %65
  %67 = icmp eq ptr %58, @PL_sv_no
  %68 = or i1 %67, %66
  %69 = icmp eq ptr %58, @PL_sv_placeholder
  %70 = or i1 %69, %68
  br i1 %70, label %73, label %71, !prof !363

71:                                               ; preds = %63, %54
  %72 = tail call ptr @Perl_newSVsv(ptr noundef %58) #16
  br label %73

73:                                               ; preds = %63, %71
  %74 = phi ptr [ %72, %71 ], [ %58, %63 ]
  %75 = getelementptr inbounds %struct.he, ptr %55, i64 0, i32 2
  store ptr %74, ptr %75, align 8, !tbaa !150
  br i1 %23, label %78, label %76, !prof !362

76:                                               ; preds = %73
  %77 = tail call fastcc ptr @S_share_hek_flags(ptr noundef nonnull %42, i32 noundef %44, i32 noundef %41, i32 noundef %49)
  br label %80

78:                                               ; preds = %73
  %79 = tail call fastcc ptr @S_save_hek_flags(ptr noundef nonnull %42, i32 noundef %44, i32 noundef %41, i32 noundef %49)
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi ptr [ %77, %76 ], [ %79, %78 ]
  %82 = getelementptr inbounds %struct.he, ptr %55, i64 0, i32 1
  store ptr %81, ptr %82, align 8, !tbaa !121
  %83 = icmp eq ptr %37, null
  %84 = select i1 %83, ptr %34, ptr %37, !prof !363
  store ptr %55, ptr %84, align 8, !tbaa !117
  store ptr null, ptr %55, align 8, !tbaa !123
  %85 = load ptr, ptr %38, align 8, !tbaa !123
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %36, !prof !363, !llvm.loop !364

87:                                               ; preds = %80, %35
  %88 = add i64 %30, 1
  %89 = icmp ugt i64 %88, %16
  br i1 %89, label %90, label %29, !prof !365, !llvm.loop !366

90:                                               ; preds = %87
  %91 = load ptr, ptr %2, align 8, !tbaa !157
  %92 = getelementptr inbounds %struct.xpvhv, ptr %91, i64 0, i32 3
  store i64 %16, ptr %92, align 8, !tbaa !179
  %93 = load ptr, ptr %0, align 8, !tbaa !157
  %94 = getelementptr inbounds %struct.xpvhv, ptr %93, i64 0, i32 2
  %95 = load i64, ptr %94, align 8, !tbaa !220
  %96 = getelementptr inbounds %struct.xpvhv, ptr %91, i64 0, i32 2
  store i64 %95, ptr %96, align 8, !tbaa !220
  %97 = getelementptr inbounds %struct.hv, ptr %2, i64 0, i32 3
  store ptr %28, ptr %97, align 8, !tbaa !150
  br label %221

98:                                               ; preds = %14
  %99 = and i32 %18, 33554432
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %103 = load ptr, ptr %102, align 8, !tbaa !150
  %104 = getelementptr ptr, ptr %103, i64 %16
  %105 = getelementptr ptr, ptr %104, i64 4
  %106 = load i32, ptr %105, align 8, !tbaa !340
  br label %107

107:                                              ; preds = %98, %101
  %108 = phi i32 [ %106, %101 ], [ -1, %98 ]
  br i1 %100, label %115, label %109

109:                                              ; preds = %107
  %110 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %111 = load ptr, ptr %110, align 8, !tbaa !150
  %112 = getelementptr ptr, ptr %111, i64 %16
  %113 = getelementptr ptr, ptr %112, i64 3
  %114 = load ptr, ptr %113, align 8, !tbaa !218
  br label %115

115:                                              ; preds = %107, %109
  %116 = phi ptr [ %114, %109 ], [ null, %107 ]
  %117 = icmp ult i64 %16, 7
  br i1 %117, label %129, label %118

118:                                              ; preds = %115
  %119 = icmp eq i64 %16, 7
  br i1 %119, label %129, label %120

120:                                              ; preds = %118
  %121 = shl i64 %7, 1
  br label %122

122:                                              ; preds = %120, %126
  %123 = phi i64 [ %16, %120 ], [ %127, %126 ]
  %124 = add i64 %123, 1
  %125 = icmp ult i64 %124, %121
  br i1 %125, label %129, label %126

126:                                              ; preds = %122
  %127 = lshr i64 %123, 1
  %128 = icmp ugt i64 %123, 15
  br i1 %128, label %122, label %129, !llvm.loop !367

129:                                              ; preds = %122, %126, %118, %115
  %130 = phi i64 [ 7, %115 ], [ %16, %118 ], [ %127, %126 ], [ %123, %122 ]
  %131 = load ptr, ptr %2, align 8, !tbaa !157
  %132 = getelementptr inbounds %struct.xpvhv, ptr %131, i64 0, i32 3
  store i64 %130, ptr %132, align 8, !tbaa !179
  %133 = tail call i32 @Perl_hv_iterinit(ptr noundef nonnull %0)
  %134 = tail call ptr @Perl_hv_iternext_flags(ptr noundef nonnull %0, i32 noundef 0)
  %135 = icmp eq ptr %134, null
  br i1 %135, label %183, label %136

136:                                              ; preds = %129, %180
  %137 = phi ptr [ %181, %180 ], [ %134, %129 ]
  %138 = tail call ptr @Perl_hv_iterval(ptr noundef nonnull %0, ptr noundef nonnull %137)
  %139 = getelementptr inbounds %struct.he, ptr %137, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !121
  %141 = getelementptr inbounds %struct.hek, ptr %140, i64 0, i32 1
  %142 = load i32, ptr %141, align 4, !tbaa !184
  %143 = icmp eq i32 %142, -2
  br i1 %143, label %144, label %147

144:                                              ; preds = %136
  %145 = getelementptr inbounds %struct.hek, ptr %140, i64 0, i32 2
  %146 = load ptr, ptr %145, align 4, !tbaa !117
  br label %147

147:                                              ; preds = %136, %144
  %148 = phi ptr [ %146, %144 ], [ null, %136 ]
  %149 = getelementptr inbounds %struct.sv, ptr %138, i64 0, i32 2
  %150 = load i32, ptr %149, align 4, !tbaa !144
  %151 = and i32 %150, 134283264
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %161, label %153

153:                                              ; preds = %147
  %154 = icmp eq ptr %138, @PL_sv_undef
  %155 = icmp eq ptr %138, @PL_sv_yes
  %156 = or i1 %154, %155
  %157 = icmp eq ptr %138, @PL_sv_no
  %158 = or i1 %157, %156
  %159 = icmp eq ptr %138, @PL_sv_placeholder
  %160 = or i1 %159, %158
  br i1 %160, label %163, label %161

161:                                              ; preds = %153, %147
  %162 = tail call ptr @Perl_newSVsv(ptr noundef %138) #16
  br label %163

163:                                              ; preds = %153, %161
  %164 = phi ptr [ %162, %161 ], [ %138, %153 ]
  %165 = icmp eq ptr %148, null
  br i1 %165, label %168, label %166

166:                                              ; preds = %163
  %167 = tail call ptr @Perl_hv_common(ptr noundef nonnull %2, ptr noundef nonnull %148, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 4, ptr noundef %164, i32 noundef 0)
  br label %180

168:                                              ; preds = %163
  %169 = load ptr, ptr %139, align 8, !tbaa !121
  %170 = getelementptr inbounds %struct.hek, ptr %169, i64 0, i32 2
  %171 = getelementptr inbounds %struct.hek, ptr %169, i64 0, i32 1
  %172 = load i32, ptr %171, align 4, !tbaa !184
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8, ptr %170, i64 %173
  %175 = getelementptr inbounds i8, ptr %174, i64 1
  %176 = load i8, ptr %175, align 1, !tbaa !150
  %177 = zext i8 %176 to i32
  %178 = load i32, ptr %169, align 4, !tbaa !173
  %179 = tail call ptr @Perl_hv_common(ptr noundef nonnull %2, ptr noundef null, ptr noundef nonnull %170, i64 noundef %173, i32 noundef %177, i32 noundef 36, ptr noundef %164, i32 noundef %178)
  br label %180

180:                                              ; preds = %168, %166
  %181 = tail call ptr @Perl_hv_iternext_flags(ptr noundef nonnull %0, i32 noundef 0)
  %182 = icmp eq ptr %181, null
  br i1 %182, label %183, label %136, !llvm.loop !368

183:                                              ; preds = %180, %129
  %184 = load i32, ptr %17, align 4, !tbaa !132
  %185 = and i32 %184, 33554432
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %195, label %187

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %189 = load ptr, ptr %188, align 8, !tbaa !150
  %190 = load ptr, ptr %0, align 8, !tbaa !157
  %191 = getelementptr inbounds %struct.xpvhv, ptr %190, i64 0, i32 3
  %192 = load i64, ptr %191, align 8, !tbaa !179
  %193 = getelementptr ptr, ptr %189, i64 %192
  %194 = getelementptr ptr, ptr %193, i64 1
  br label %199

195:                                              ; preds = %183
  %196 = icmp eq i32 %108, -1
  br i1 %196, label %202, label %197

197:                                              ; preds = %195
  %198 = tail call fastcc ptr @S_hv_auxinit(ptr noundef nonnull %0)
  br label %199

199:                                              ; preds = %197, %187
  %200 = phi ptr [ %194, %187 ], [ %198, %197 ]
  %201 = getelementptr inbounds %struct.xpvhv_aux, ptr %200, i64 0, i32 3
  store i32 %108, ptr %201, align 8, !tbaa !340
  br label %202

202:                                              ; preds = %195, %199
  %203 = load i32, ptr %17, align 4, !tbaa !132
  %204 = and i32 %203, 33554432
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %214, label %206

206:                                              ; preds = %202
  %207 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %208 = load ptr, ptr %207, align 8, !tbaa !150
  %209 = load ptr, ptr %0, align 8, !tbaa !157
  %210 = getelementptr inbounds %struct.xpvhv, ptr %209, i64 0, i32 3
  %211 = load i64, ptr %210, align 8, !tbaa !179
  %212 = getelementptr ptr, ptr %208, i64 %211
  %213 = getelementptr ptr, ptr %212, i64 1
  br label %218

214:                                              ; preds = %202
  %215 = icmp eq ptr %116, null
  br i1 %215, label %221, label %216

216:                                              ; preds = %214
  %217 = tail call fastcc ptr @S_hv_auxinit(ptr noundef nonnull %0)
  br label %218

218:                                              ; preds = %216, %206
  %219 = phi ptr [ %213, %206 ], [ %217, %216 ]
  %220 = getelementptr inbounds %struct.xpvhv_aux, ptr %219, i64 0, i32 2
  store ptr %116, ptr %220, align 8, !tbaa !218
  br label %221

221:                                              ; preds = %218, %214, %90, %1, %9
  ret ptr %2
}

declare ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @Perl_hv_iterinit(ptr nocapture noundef %0) local_unnamed_addr #3 !prof !369 {
  %2 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !132
  %4 = and i32 %3, 33554432
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %32, label %6, !prof !370

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !150
  %9 = load ptr, ptr %0, align 8, !tbaa !157
  %10 = getelementptr inbounds %struct.xpvhv, ptr %9, i64 0, i32 3
  %11 = load i64, ptr %10, align 8, !tbaa !179
  %12 = getelementptr ptr, ptr %8, i64 %11
  %13 = getelementptr ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8, !tbaa !218
  %15 = icmp eq ptr %14, null
  %16 = and i32 %3, 1073741824
  %17 = icmp eq i32 %16, 0
  %18 = or i1 %17, %15
  br i1 %18, label %21, label %19, !prof !371

19:                                               ; preds = %6
  %20 = and i32 %3, -1073741825
  store i32 %20, ptr %2, align 4, !tbaa !132
  tail call void @Perl_hv_free_ent(ptr noundef nonnull %0, ptr noundef nonnull %14)
  br label %21

21:                                               ; preds = %19, %6
  %22 = load ptr, ptr %7, align 8, !tbaa !150
  %23 = load ptr, ptr %0, align 8, !tbaa !157
  %24 = getelementptr inbounds %struct.xpvhv, ptr %23, i64 0, i32 3
  %25 = load i64, ptr %24, align 8, !tbaa !179
  %26 = getelementptr ptr, ptr %22, i64 %25
  %27 = getelementptr ptr, ptr %26, i64 4
  store i32 -1, ptr %27, align 8, !tbaa !340
  %28 = getelementptr ptr, ptr %26, i64 3
  store ptr null, ptr %28, align 8, !tbaa !218
  %29 = getelementptr ptr, ptr %26, i64 6
  %30 = load i32, ptr %29, align 8, !tbaa !298
  %31 = getelementptr i8, ptr %26, i64 52
  store i32 %30, ptr %31, align 4, !tbaa !341
  br label %34

32:                                               ; preds = %1
  %33 = tail call fastcc ptr @S_hv_auxinit(ptr noundef %0)
  br label %34

34:                                               ; preds = %32, %21
  %35 = load ptr, ptr %0, align 8, !tbaa !157
  %36 = getelementptr inbounds %struct.xpvhv, ptr %35, i64 0, i32 2
  %37 = load i64, ptr %36, align 8, !tbaa !220
  %38 = trunc i64 %37 to i32
  ret i32 %38
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @Perl_hv_iternext_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 !prof !372 {
  %3 = load ptr, ptr %0, align 8, !tbaa !157
  %4 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !132
  %6 = and i32 %5, 33554432
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10, !prof !373

8:                                                ; preds = %2
  %9 = tail call i32 @Perl_hv_iterinit(ptr noundef nonnull %0)
  br label %10

10:                                               ; preds = %8, %2
  %11 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !150
  %13 = load ptr, ptr %0, align 8, !tbaa !157
  %14 = getelementptr inbounds %struct.xpvhv, ptr %13, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !179
  %16 = getelementptr ptr, ptr %12, i64 %15
  %17 = getelementptr ptr, ptr %16, i64 3
  %18 = load ptr, ptr %17, align 8, !tbaa !218
  %19 = load i32, ptr %4, align 4, !tbaa !132
  %20 = and i32 %19, 8388608
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %127, label %22, !prof !374

22:                                               ; preds = %10
  %23 = tail call ptr @Perl_mg_find(ptr noundef nonnull %0, i32 noundef 80) #16
  %24 = icmp eq ptr %23, null
  br i1 %24, label %127, label %25, !prof !375

25:                                               ; preds = %22
  %26 = tail call ptr @Perl_sv_newmortal() #16
  %27 = icmp eq ptr %18, null
  br i1 %27, label %70, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.he, ptr %18, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !121
  %31 = getelementptr inbounds %struct.hek, ptr %30, i64 0, i32 2
  %32 = getelementptr inbounds %struct.hek, ptr %30, i64 0, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !184
  %34 = icmp eq i32 %33, -2
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load ptr, ptr %31, align 4, !tbaa !117
  br label %47

37:                                               ; preds = %28
  %38 = sext i32 %33 to i64
  %39 = getelementptr inbounds i8, ptr %31, i64 %38
  %40 = getelementptr inbounds i8, ptr %39, i64 1
  %41 = load i8, ptr %40, align 1, !tbaa !150
  %42 = and i8 %41, 1
  %43 = zext nneg i8 %42 to i32
  %44 = shl nuw nsw i32 %43, 29
  %45 = or disjoint i32 %44, 524288
  %46 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull %31, i64 noundef %38, i32 noundef %45) #16
  br label %47

47:                                               ; preds = %35, %37
  %48 = phi ptr [ %36, %35 ], [ %46, %37 ]
  tail call void @Perl_sv_setsv_flags(ptr noundef %26, ptr noundef %48, i32 noundef 1538) #16
  %49 = load ptr, ptr %29, align 8, !tbaa !121
  %50 = getelementptr inbounds %struct.hek, ptr %49, i64 0, i32 1
  %51 = load i32, ptr %50, align 4, !tbaa !184
  %52 = icmp eq i32 %51, -2
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.hek, ptr %49, i64 0, i32 2
  %55 = load ptr, ptr %54, align 4, !tbaa !117
  br label %56

56:                                               ; preds = %47, %53
  %57 = phi ptr [ %55, %53 ], [ null, %47 ]
  %58 = icmp eq ptr %57, null
  br i1 %58, label %66, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.sv, ptr %57, i64 0, i32 1
  %61 = load i32, ptr %60, align 8, !tbaa !208
  %62 = icmp ugt i32 %61, 1
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = add i32 %61, -1
  store i32 %64, ptr %60, align 8, !tbaa !208
  br label %66

65:                                               ; preds = %59
  tail call void @Perl_sv_free2(ptr noundef nonnull %57, i32 noundef %61) #16
  br label %66

66:                                               ; preds = %56, %63, %65
  %67 = load ptr, ptr %29, align 8, !tbaa !121
  %68 = getelementptr inbounds %struct.hek, ptr %67, i64 0, i32 1
  store i32 -2, ptr %68, align 4, !tbaa !184
  %69 = getelementptr inbounds %struct.hek, ptr %67, i64 0, i32 2
  store ptr null, ptr %69, align 4, !tbaa !117
  br label %83

70:                                               ; preds = %25
  %71 = load ptr, ptr @PL_body_roots, align 16, !tbaa !117
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = tail call ptr @Perl_more_bodies(i32 noundef 0, i64 noundef 24, i64 noundef 4080) #16
  br label %75

75:                                               ; preds = %70, %73
  %76 = load ptr, ptr @PL_body_roots, align 16, !tbaa !117
  %77 = load ptr, ptr %76, align 8, !tbaa !123
  store ptr %77, ptr @PL_body_roots, align 16, !tbaa !117
  store ptr %76, ptr %17, align 8, !tbaa !218
  %78 = load i32, ptr %4, align 4, !tbaa !132
  %79 = or i32 %78, 1073741824
  store i32 %79, ptr %4, align 4, !tbaa !132
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %76, i8 0, i64 24, i1 false)
  %80 = tail call ptr @Perl_safesyscalloc(i64 noundef 16, i64 noundef 1) #16
  %81 = getelementptr inbounds %struct.he, ptr %76, i64 0, i32 1
  store ptr %80, ptr %81, align 8, !tbaa !121
  %82 = getelementptr inbounds %struct.hek, ptr %80, i64 0, i32 1
  store i32 -2, ptr %82, align 4, !tbaa !184
  br label %83

83:                                               ; preds = %75, %66
  %84 = phi ptr [ %18, %66 ], [ %76, %75 ]
  %85 = tail call i32 @Perl_magic_nextpack(ptr noundef nonnull %0, ptr noundef nonnull %23, ptr noundef %26) #16
  %86 = getelementptr inbounds %struct.sv, ptr %26, i64 0, i32 2
  %87 = load i32, ptr %86, align 4, !tbaa !144
  %88 = and i32 %87, 65280
  %89 = icmp ne i32 %88, 0
  %90 = and i32 %87, 255
  %91 = icmp eq i32 %90, 8
  %92 = or i1 %89, %91
  %93 = and i32 %87, 16777471
  %94 = icmp eq i32 %93, 16777226
  %95 = or i1 %94, %92
  br i1 %95, label %96, label %104

96:                                               ; preds = %83
  %97 = getelementptr inbounds %struct.he, ptr %84, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !121
  %99 = getelementptr inbounds %struct.hek, ptr %98, i64 0, i32 1
  store i32 -2, ptr %99, align 4, !tbaa !184
  %100 = getelementptr inbounds %struct.sv, ptr %26, i64 0, i32 1
  %101 = load i32, ptr %100, align 8, !tbaa !208
  %102 = add i32 %101, 1
  store i32 %102, ptr %100, align 8, !tbaa !208
  %103 = getelementptr inbounds %struct.hek, ptr %98, i64 0, i32 2
  store ptr %26, ptr %103, align 4, !tbaa !117
  br label %247

104:                                              ; preds = %83
  %105 = getelementptr inbounds %struct.he, ptr %84, i64 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !150
  %107 = icmp eq ptr %106, null
  br i1 %107, label %115, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.sv, ptr %106, i64 0, i32 1
  %110 = load i32, ptr %109, align 8, !tbaa !208
  %111 = icmp ugt i32 %110, 1
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  %113 = add i32 %110, -1
  store i32 %113, ptr %109, align 8, !tbaa !208
  br label %115

114:                                              ; preds = %108
  tail call void @Perl_sv_free2(ptr noundef nonnull %106, i32 noundef %110) #16
  br label %115

115:                                              ; preds = %104, %112, %114
  %116 = getelementptr inbounds %struct.he, ptr %84, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !121
  tail call void @Perl_safesysfree(ptr noundef %117) #16
  %118 = load ptr, ptr @PL_body_roots, align 16, !tbaa !117
  store ptr %118, ptr %84, align 8, !tbaa !123
  store ptr %84, ptr @PL_body_roots, align 16, !tbaa !117
  %119 = load ptr, ptr %11, align 8, !tbaa !150
  %120 = load ptr, ptr %0, align 8, !tbaa !157
  %121 = getelementptr inbounds %struct.xpvhv, ptr %120, i64 0, i32 3
  %122 = load i64, ptr %121, align 8, !tbaa !179
  %123 = getelementptr ptr, ptr %119, i64 %122
  %124 = getelementptr ptr, ptr %123, i64 3
  store ptr null, ptr %124, align 8, !tbaa !218
  %125 = load i32, ptr %4, align 4, !tbaa !132
  %126 = and i32 %125, -1073741825
  store i32 %126, ptr %4, align 4, !tbaa !132
  br label %247

127:                                              ; preds = %22, %10
  %128 = icmp eq ptr %18, null
  br i1 %128, label %143, label %129, !prof !376

129:                                              ; preds = %127
  %130 = load ptr, ptr %18, align 8, !tbaa !123
  %131 = and i32 %1, 1
  %132 = icmp eq i32 %131, 0
  %133 = icmp ne ptr %130, null
  %134 = select i1 %132, i1 %133, i1 false, !prof !377
  br i1 %134, label %135, label %143, !prof !378

135:                                              ; preds = %129, %140
  %136 = phi ptr [ %141, %140 ], [ %130, %129 ]
  %137 = getelementptr inbounds %struct.he, ptr %136, i64 0, i32 2
  %138 = load ptr, ptr %137, align 8, !tbaa !150
  %139 = icmp eq ptr %138, @PL_sv_placeholder
  br i1 %139, label %140, label %143, !prof !379

140:                                              ; preds = %135
  %141 = load ptr, ptr %136, align 8, !tbaa !123
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %135

143:                                              ; preds = %140, %135, %129, %127
  %144 = phi ptr [ %130, %129 ], [ null, %127 ], [ %136, %135 ], [ null, %140 ]
  %145 = getelementptr i8, ptr %16, i64 52
  %146 = load i32, ptr %145, align 4, !tbaa !341
  %147 = getelementptr ptr, ptr %16, i64 6
  %148 = load i32, ptr %147, align 8, !tbaa !298
  %149 = icmp eq i32 %146, %148
  br i1 %149, label %164, label %150, !prof !380

150:                                              ; preds = %143
  %151 = getelementptr ptr, ptr %16, i64 4
  %152 = load i32, ptr %151, align 8, !tbaa !340
  %153 = icmp eq i32 %152, -1
  br i1 %153, label %155, label %154

154:                                              ; preds = %150
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 24, ptr noundef nonnull @.str.7) #16
  br label %155

155:                                              ; preds = %154, %150
  %156 = load ptr, ptr %11, align 8, !tbaa !150
  %157 = load ptr, ptr %0, align 8, !tbaa !157
  %158 = getelementptr inbounds %struct.xpvhv, ptr %157, i64 0, i32 3
  %159 = load i64, ptr %158, align 8, !tbaa !179
  %160 = getelementptr ptr, ptr %156, i64 %159
  %161 = getelementptr ptr, ptr %160, i64 6
  %162 = load i32, ptr %161, align 8, !tbaa !298
  %163 = getelementptr i8, ptr %160, i64 52
  store i32 %162, ptr %163, align 4, !tbaa !341
  br label %164

164:                                              ; preds = %155, %143
  %165 = phi ptr [ %160, %155 ], [ %16, %143 ]
  %166 = and i32 %1, 1
  %167 = icmp eq i32 %166, 0
  %168 = load ptr, ptr %0, align 8, !tbaa !157
  %169 = getelementptr inbounds %struct.xpvhv, ptr %168, i64 0, i32 2
  %170 = load i64, ptr %169, align 8, !tbaa !220
  br i1 %167, label %173, label %171, !prof !380

171:                                              ; preds = %164
  %172 = icmp eq i64 %170, 0
  br i1 %172, label %226, label %188

173:                                              ; preds = %164
  %174 = getelementptr inbounds %struct.xpvmg, ptr %168, i64 0, i32 1
  %175 = load ptr, ptr %174, align 8, !tbaa !150
  %176 = icmp eq ptr %175, null
  br i1 %176, label %185, label %177, !prof !374

177:                                              ; preds = %173
  %178 = tail call ptr @Perl_mg_find(ptr noundef nonnull %0, i32 noundef 37) #16
  %179 = icmp eq ptr %178, null
  br i1 %179, label %185, label %180, !prof !375

180:                                              ; preds = %177
  %181 = getelementptr inbounds %struct.magic, ptr %178, i64 0, i32 5
  %182 = load i64, ptr %181, align 8, !tbaa !303
  %183 = shl i64 %182, 32
  %184 = ashr exact i64 %183, 32
  br label %185

185:                                              ; preds = %180, %177, %173
  %186 = phi i64 [ 0, %173 ], [ %184, %180 ], [ 0, %177 ]
  %187 = icmp eq i64 %170, %186
  br i1 %187, label %226, label %188, !prof !381

188:                                              ; preds = %185, %171
  %189 = icmp eq ptr %144, null
  br i1 %189, label %190, label %232, !prof !382

190:                                              ; preds = %188
  %191 = getelementptr ptr, ptr %165, i64 4
  %192 = getelementptr inbounds %struct.xpvhv, ptr %3, i64 0, i32 3
  %193 = load i64, ptr %192, align 8, !tbaa !179
  %194 = trunc i64 %193 to i32
  %195 = getelementptr ptr, ptr %165, i64 6
  %196 = load i32, ptr %191, align 8, !tbaa !340
  %197 = add nsw i32 %196, 1
  store i32 %197, ptr %191, align 8, !tbaa !340
  %198 = icmp slt i32 %196, %194
  br i1 %198, label %199, label %226, !prof !383

199:                                              ; preds = %190
  %200 = load i32, ptr %195, align 8, !tbaa !298
  br label %205

201:                                              ; preds = %223
  %202 = load i32, ptr %191, align 8, !tbaa !340
  %203 = add nsw i32 %202, 1
  store i32 %203, ptr %191, align 8, !tbaa !340
  %204 = icmp slt i32 %202, %194
  br i1 %204, label %205, label %226, !prof !384, !llvm.loop !385

205:                                              ; preds = %199, %201
  %206 = phi i32 [ %203, %201 ], [ %197, %199 ]
  %207 = load ptr, ptr %11, align 8, !tbaa !150
  %208 = xor i32 %200, %206
  %209 = zext i32 %208 to i64
  %210 = and i64 %193, %209
  %211 = getelementptr inbounds ptr, ptr %207, i64 %210
  %212 = load ptr, ptr %211, align 8, !tbaa !117
  %213 = icmp ne ptr %212, null
  %214 = select i1 %167, i1 %213, i1 false, !prof !386
  br i1 %214, label %215, label %223, !prof !387

215:                                              ; preds = %205, %220
  %216 = phi ptr [ %221, %220 ], [ %212, %205 ]
  %217 = getelementptr inbounds %struct.he, ptr %216, i64 0, i32 2
  %218 = load ptr, ptr %217, align 8, !tbaa !150
  %219 = icmp eq ptr %218, @PL_sv_placeholder
  br i1 %219, label %220, label %223, !prof !388

220:                                              ; preds = %215
  %221 = load ptr, ptr %216, align 8, !tbaa !123
  %222 = icmp eq ptr %221, null
  br i1 %222, label %223, label %215

223:                                              ; preds = %220, %215, %205
  %224 = phi ptr [ %212, %205 ], [ %216, %215 ], [ null, %220 ]
  %225 = icmp eq ptr %224, null
  br i1 %225, label %201, label %232, !prof !389, !llvm.loop !385

226:                                              ; preds = %201, %185, %171, %190
  %227 = phi ptr [ %144, %190 ], [ %144, %171 ], [ %144, %185 ], [ %224, %201 ]
  %228 = getelementptr ptr, ptr %165, i64 4
  store i32 -1, ptr %228, align 8, !tbaa !340
  %229 = getelementptr ptr, ptr %165, i64 6
  %230 = load i32, ptr %229, align 8, !tbaa !298
  %231 = getelementptr i8, ptr %165, i64 52
  store i32 %230, ptr %231, align 4, !tbaa !341
  br label %232

232:                                              ; preds = %223, %226, %188
  %233 = phi ptr [ %144, %188 ], [ %227, %226 ], [ %224, %223 ]
  br i1 %128, label %240, label %234, !prof !376

234:                                              ; preds = %232
  %235 = load i32, ptr %4, align 4, !tbaa !132
  %236 = and i32 %235, 1073741824
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %240, label %238, !prof !377

238:                                              ; preds = %234
  %239 = and i32 %235, -1073741825
  store i32 %239, ptr %4, align 4, !tbaa !132
  tail call void @Perl_hv_free_ent(ptr noundef nonnull %0, ptr noundef nonnull %18)
  br label %240

240:                                              ; preds = %238, %234, %232
  %241 = load ptr, ptr %11, align 8, !tbaa !150
  %242 = load ptr, ptr %0, align 8, !tbaa !157
  %243 = getelementptr inbounds %struct.xpvhv, ptr %242, i64 0, i32 3
  %244 = load i64, ptr %243, align 8, !tbaa !179
  %245 = getelementptr ptr, ptr %241, i64 %244
  %246 = getelementptr ptr, ptr %245, i64 3
  store ptr %233, ptr %246, align 8, !tbaa !218
  br label %247

247:                                              ; preds = %96, %115, %240
  %248 = phi ptr [ %233, %240 ], [ %84, %96 ], [ null, %115 ]
  ret ptr %248
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_hv_iterval(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 !prof !390 {
  %3 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !132
  %5 = and i32 %4, 8388608
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %23, label %7, !prof !391

7:                                                ; preds = %2
  %8 = tail call ptr @Perl_mg_find(ptr noundef %0, i32 noundef 80) #16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %23, label %10, !prof !392

10:                                               ; preds = %7
  %11 = tail call ptr @Perl_sv_newmortal() #16
  %12 = getelementptr inbounds %struct.he, ptr %1, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !121
  %14 = getelementptr inbounds %struct.hek, ptr %13, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !184
  %16 = icmp eq i32 %15, -2
  %17 = getelementptr inbounds %struct.hek, ptr %13, i64 0, i32 2
  br i1 %16, label %18, label %21

18:                                               ; preds = %10
  %19 = load ptr, ptr %17, align 4, !tbaa !117
  %20 = tail call i32 @Perl_mg_copy(ptr noundef %0, ptr noundef %11, ptr noundef %19, i32 noundef -2) #16
  br label %26

21:                                               ; preds = %10
  %22 = tail call i32 @Perl_mg_copy(ptr noundef %0, ptr noundef %11, ptr noundef nonnull %17, i32 noundef %15) #16
  br label %26

23:                                               ; preds = %7, %2
  %24 = getelementptr inbounds %struct.he, ptr %1, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !150
  br label %26

26:                                               ; preds = %18, %21, %23
  %27 = phi ptr [ %25, %23 ], [ %11, %21 ], [ %11, %18 ]
  ret ptr %27
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_hv_riter_set(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !116 {
  %3 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !132
  %5 = and i32 %4, 33554432
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !150
  %10 = load ptr, ptr %0, align 8, !tbaa !157
  %11 = getelementptr inbounds %struct.xpvhv, ptr %10, i64 0, i32 3
  %12 = load i64, ptr %11, align 8, !tbaa !179
  %13 = getelementptr ptr, ptr %9, i64 %12
  %14 = getelementptr ptr, ptr %13, i64 1
  br label %19

15:                                               ; preds = %2
  %16 = icmp eq i32 %1, -1
  br i1 %16, label %22, label %17

17:                                               ; preds = %15
  %18 = tail call fastcc ptr @S_hv_auxinit(ptr noundef %0)
  br label %19

19:                                               ; preds = %17, %7
  %20 = phi ptr [ %14, %7 ], [ %18, %17 ]
  %21 = getelementptr inbounds %struct.xpvhv_aux, ptr %20, i64 0, i32 3
  store i32 %1, ptr %21, align 8, !tbaa !340
  br label %22

22:                                               ; preds = %15, %19
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_hv_eiter_set(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !393 {
  %3 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !132
  %5 = and i32 %4, 33554432
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %15, label %7, !prof !394

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !150
  %10 = load ptr, ptr %0, align 8, !tbaa !157
  %11 = getelementptr inbounds %struct.xpvhv, ptr %10, i64 0, i32 3
  %12 = load i64, ptr %11, align 8, !tbaa !179
  %13 = getelementptr ptr, ptr %9, i64 %12
  %14 = getelementptr ptr, ptr %13, i64 1
  br label %19

15:                                               ; preds = %2
  %16 = icmp eq ptr %1, null
  br i1 %16, label %22, label %17, !prof !394

17:                                               ; preds = %15
  %18 = tail call fastcc ptr @S_hv_auxinit(ptr noundef %0)
  br label %19

19:                                               ; preds = %17, %7
  %20 = phi ptr [ %14, %7 ], [ %18, %17 ]
  %21 = getelementptr inbounds %struct.xpvhv_aux, ptr %20, i64 0, i32 2
  store ptr %1, ptr %21, align 8, !tbaa !218
  br label %22

22:                                               ; preds = %15, %19
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_hv_copy_hints_hv(ptr noundef %0) local_unnamed_addr #0 !prof !395 {
  %2 = tail call ptr @Perl_newSV_type(i32 noundef 12) #16
  %3 = icmp eq ptr %0, null
  br i1 %3, label %143, label %4, !prof !396

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !157
  %6 = getelementptr inbounds %struct.xpvhv, ptr %5, i64 0, i32 3
  %7 = load i64, ptr %6, align 8, !tbaa !179
  %8 = getelementptr inbounds %struct.xpvhv, ptr %5, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !220
  %10 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !132
  %12 = and i32 %11, 33554432
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %20, label %14, !prof !397

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !150
  %17 = getelementptr ptr, ptr %16, i64 %7
  %18 = getelementptr ptr, ptr %17, i64 4
  %19 = load i32, ptr %18, align 8, !tbaa !340
  br label %20

20:                                               ; preds = %4, %14
  %21 = phi i32 [ %19, %14 ], [ -1, %4 ]
  br i1 %13, label %28, label %22, !prof !397

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !150
  %25 = getelementptr ptr, ptr %24, i64 %7
  %26 = getelementptr ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8, !tbaa !218
  br label %28

28:                                               ; preds = %20, %22
  %29 = phi ptr [ %27, %22 ], [ null, %20 ]
  tail call void @Perl_push_scope() #16
  tail call void @Perl_save_pushptr(ptr noundef %2, i32 noundef 11) #16
  %30 = icmp ult i64 %7, 7
  br i1 %30, label %41, label %31, !prof !396

31:                                               ; preds = %28
  %32 = icmp eq i64 %7, 7
  br i1 %32, label %41, label %33, !prof !354

33:                                               ; preds = %31, %38
  %34 = phi i64 [ %39, %38 ], [ %7, %31 ]
  %35 = shl i64 %9, 1
  %36 = add i64 %34, 1
  %37 = icmp ult i64 %36, %35
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = lshr i64 %34, 1
  %40 = icmp ugt i64 %34, 15
  br i1 %40, label %33, label %41, !prof !190, !llvm.loop !398

41:                                               ; preds = %33, %38, %31, %28
  %42 = phi i64 [ 7, %28 ], [ %7, %31 ], [ %39, %38 ], [ %34, %33 ]
  %43 = load ptr, ptr %2, align 8, !tbaa !157
  %44 = getelementptr inbounds %struct.xpvhv, ptr %43, i64 0, i32 3
  store i64 %42, ptr %44, align 8, !tbaa !179
  %45 = tail call i32 @Perl_hv_iterinit(ptr noundef nonnull %0)
  %46 = tail call ptr @Perl_hv_iternext_flags(ptr noundef nonnull %0, i32 noundef 0)
  %47 = icmp eq ptr %46, null
  br i1 %47, label %101, label %48, !prof !399

48:                                               ; preds = %41, %98
  %49 = phi ptr [ %99, %98 ], [ %46, %41 ]
  %50 = tail call ptr @Perl_hv_iterval(ptr noundef nonnull %0, ptr noundef nonnull %49)
  %51 = tail call ptr @Perl_newSVsv(ptr noundef %50) #16
  %52 = getelementptr inbounds %struct.he, ptr %49, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !121
  %54 = getelementptr inbounds %struct.hek, ptr %53, i64 0, i32 1
  %55 = load i32, ptr %54, align 4, !tbaa !184
  %56 = icmp eq i32 %55, -2
  br i1 %56, label %57, label %60, !prof !400

57:                                               ; preds = %48
  %58 = getelementptr inbounds %struct.hek, ptr %53, i64 0, i32 2
  %59 = load ptr, ptr %58, align 4, !tbaa !117
  br label %60

60:                                               ; preds = %48, %57
  %61 = phi ptr [ %59, %57 ], [ null, %48 ]
  %62 = icmp eq ptr %61, null
  %63 = icmp ne ptr %51, null
  %64 = select i1 %62, i1 %63, i1 false, !prof !392
  br i1 %64, label %65, label %67, !prof !392

65:                                               ; preds = %60
  %66 = tail call ptr @Perl_newSVhek(ptr noundef %53) #16
  br label %67

67:                                               ; preds = %65, %60
  %68 = phi ptr [ %66, %65 ], [ %61, %60 ]
  br i1 %63, label %69, label %70, !prof !392

69:                                               ; preds = %67
  tail call void @Perl_sv_magic(ptr noundef nonnull %51, ptr noundef null, i32 noundef 104, ptr noundef %68, i32 noundef -2) #16
  br label %70

70:                                               ; preds = %69, %67
  %71 = load ptr, ptr %52, align 8, !tbaa !121
  %72 = getelementptr inbounds %struct.hek, ptr %71, i64 0, i32 1
  %73 = load i32, ptr %72, align 4, !tbaa !184
  %74 = icmp eq i32 %73, -2
  br i1 %74, label %75, label %78, !prof !400

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.hek, ptr %71, i64 0, i32 2
  %77 = load ptr, ptr %76, align 4, !tbaa !117
  br label %78

78:                                               ; preds = %70, %75
  %79 = phi ptr [ %77, %75 ], [ null, %70 ]
  %80 = icmp eq ptr %68, %79
  br i1 %80, label %81, label %83, !prof !400

81:                                               ; preds = %78
  %82 = tail call ptr @Perl_hv_common(ptr noundef nonnull %2, ptr noundef %68, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 4, ptr noundef %51, i32 noundef 0)
  br label %98

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.hek, ptr %71, i64 0, i32 2
  %85 = sext i32 %73 to i64
  %86 = getelementptr inbounds i8, ptr %84, i64 %85
  %87 = getelementptr inbounds i8, ptr %86, i64 1
  %88 = load i8, ptr %87, align 1, !tbaa !150
  %89 = zext i8 %88 to i32
  %90 = load i32, ptr %71, align 4, !tbaa !173
  %91 = tail call ptr @Perl_hv_common(ptr noundef nonnull %2, ptr noundef %68, ptr noundef nonnull %84, i64 noundef %85, i32 noundef %89, i32 noundef 36, ptr noundef %51, i32 noundef %90)
  %92 = getelementptr inbounds %struct.sv, ptr %68, i64 0, i32 1
  %93 = load i32, ptr %92, align 8, !tbaa !208
  %94 = icmp ugt i32 %93, 1
  br i1 %94, label %95, label %97, !prof !392

95:                                               ; preds = %83
  %96 = add i32 %93, -1
  store i32 %96, ptr %92, align 8, !tbaa !208
  br label %98

97:                                               ; preds = %83
  tail call void @Perl_sv_free2(ptr noundef %68, i32 noundef %93) #16
  br label %98

98:                                               ; preds = %97, %95, %81
  %99 = tail call ptr @Perl_hv_iternext_flags(ptr noundef nonnull %0, i32 noundef 0)
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %48, !prof !392, !llvm.loop !401

101:                                              ; preds = %98, %41
  %102 = load i32, ptr %10, align 4, !tbaa !132
  %103 = and i32 %102, 33554432
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %113, label %105, !prof !396

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %107 = load ptr, ptr %106, align 8, !tbaa !150
  %108 = load ptr, ptr %0, align 8, !tbaa !157
  %109 = getelementptr inbounds %struct.xpvhv, ptr %108, i64 0, i32 3
  %110 = load i64, ptr %109, align 8, !tbaa !179
  %111 = getelementptr ptr, ptr %107, i64 %110
  %112 = getelementptr ptr, ptr %111, i64 1
  br label %117

113:                                              ; preds = %101
  %114 = icmp eq i32 %21, -1
  br i1 %114, label %120, label %115

115:                                              ; preds = %113
  %116 = tail call fastcc ptr @S_hv_auxinit(ptr noundef nonnull %0)
  br label %117

117:                                              ; preds = %115, %105
  %118 = phi ptr [ %112, %105 ], [ %116, %115 ]
  %119 = getelementptr inbounds %struct.xpvhv_aux, ptr %118, i64 0, i32 3
  store i32 %21, ptr %119, align 8, !tbaa !340
  br label %120

120:                                              ; preds = %113, %117
  %121 = load i32, ptr %10, align 4, !tbaa !132
  %122 = and i32 %121, 33554432
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %132, label %124, !prof !396

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %126 = load ptr, ptr %125, align 8, !tbaa !150
  %127 = load ptr, ptr %0, align 8, !tbaa !157
  %128 = getelementptr inbounds %struct.xpvhv, ptr %127, i64 0, i32 3
  %129 = load i64, ptr %128, align 8, !tbaa !179
  %130 = getelementptr ptr, ptr %126, i64 %129
  %131 = getelementptr ptr, ptr %130, i64 1
  br label %136

132:                                              ; preds = %120
  %133 = icmp eq ptr %29, null
  br i1 %133, label %139, label %134

134:                                              ; preds = %132
  %135 = tail call fastcc ptr @S_hv_auxinit(ptr noundef nonnull %0)
  br label %136

136:                                              ; preds = %134, %124
  %137 = phi ptr [ %131, %124 ], [ %135, %134 ]
  %138 = getelementptr inbounds %struct.xpvhv_aux, ptr %137, i64 0, i32 2
  store ptr %29, ptr %138, align 8, !tbaa !218
  br label %139

139:                                              ; preds = %132, %136
  %140 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 1
  %141 = load i32, ptr %140, align 8, !tbaa !208
  %142 = add i32 %141, 1
  store i32 %142, ptr %140, align 8, !tbaa !208
  tail call void @Perl_pop_scope() #16
  br label %143

143:                                              ; preds = %139, %1
  tail call void @Perl_sv_magic(ptr noundef %2, ptr noundef null, i32 noundef 72, ptr noundef null, i32 noundef 0) #16
  ret ptr %2
}

declare void @Perl_push_scope() local_unnamed_addr #2

declare void @Perl_save_pushptr(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_newSVhek(ptr noundef) local_unnamed_addr #2

declare void @Perl_sv_magic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_pop_scope() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @Perl_hv_free_ent(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #3 !prof !116 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %14, label %4, !prof !194

4:                                                ; preds = %2
  %5 = tail call fastcc ptr @S_hv_free_ent_ret(ptr noundef %0, ptr noundef nonnull %1)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7, !prof !194

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.sv, ptr %5, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !208
  %10 = icmp ugt i32 %9, 1
  br i1 %10, label %11, label %13, !prof !195

11:                                               ; preds = %7
  %12 = add i32 %9, -1
  store i32 %12, ptr %8, align 8, !tbaa !208
  br label %14

13:                                               ; preds = %7
  tail call void @Perl_sv_free2(ptr noundef nonnull %5, i32 noundef %9) #16
  br label %14

14:                                               ; preds = %13, %11, %4, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @S_hv_free_ent_ret(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #3 !prof !402 !PGOFuncName !403 {
  %3 = getelementptr inbounds %struct.he, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !150
  %5 = getelementptr inbounds %struct.he, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !121
  %7 = getelementptr inbounds %struct.hek, ptr %6, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !184
  %9 = icmp eq i32 %8, -2
  br i1 %9, label %10, label %23, !prof !404

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.hek, ptr %6, i64 0, i32 2
  %12 = load ptr, ptr %11, align 4, !tbaa !117
  %13 = icmp eq ptr %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.sv, ptr %12, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !208
  %17 = icmp ugt i32 %16, 1
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = add i32 %16, -1
  store i32 %19, ptr %15, align 8, !tbaa !208
  br label %21

20:                                               ; preds = %14
  tail call void @Perl_sv_free2(ptr noundef nonnull %12, i32 noundef %16) #16
  br label %21

21:                                               ; preds = %10, %18, %20
  %22 = load ptr, ptr %5, align 8, !tbaa !121
  tail call void @Perl_safesysfree(ptr noundef %22) #16
  br label %30

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !132
  %26 = and i32 %25, 536870912
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28, !prof !404

28:                                               ; preds = %23
  tail call fastcc void @S_unshare_hek_or_pvn(ptr noundef %6, ptr noundef null, i32 noundef 0, i32 noundef 0)
  br label %30

29:                                               ; preds = %23
  tail call void @Perl_safesysfree(ptr noundef %6) #16
  br label %30

30:                                               ; preds = %21, %29, %28
  %31 = load ptr, ptr @PL_body_roots, align 16, !tbaa !117
  store ptr %31, ptr %1, align 8, !tbaa !123
  store ptr %1, ptr @PL_body_roots, align 16, !tbaa !117
  ret ptr %4
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_hv_delayfree_ent(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !116 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %30, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.he, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !150
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !208
  %11 = add i32 %10, 1
  store i32 %11, ptr %9, align 8, !tbaa !208
  br label %12

12:                                               ; preds = %4, %8
  %13 = tail call ptr @Perl_sv_2mortal(ptr noundef %6) #16
  %14 = getelementptr inbounds %struct.he, ptr %1, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !121
  %16 = getelementptr inbounds %struct.hek, ptr %15, i64 0, i32 1
  %17 = load i32, ptr %16, align 4, !tbaa !184
  %18 = icmp eq i32 %17, -2
  br i1 %18, label %19, label %29

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.hek, ptr %15, i64 0, i32 2
  %21 = load ptr, ptr %20, align 4, !tbaa !117
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !208
  %26 = add i32 %25, 1
  store i32 %26, ptr %24, align 8, !tbaa !208
  br label %27

27:                                               ; preds = %19, %23
  %28 = tail call ptr @Perl_sv_2mortal(ptr noundef %21) #16
  br label %29

29:                                               ; preds = %27, %12
  tail call void @Perl_hv_free_ent(ptr noundef %0, ptr noundef nonnull %1)
  br label %30

30:                                               ; preds = %2, %29
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_hv_clear(ptr noundef %0) local_unnamed_addr #3 !prof !405 {
  %2 = alloca i64, align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %123, label %4, !prof !406

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !157
  tail call void @Perl_push_scope() #16
  %6 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !407
  %8 = add i32 %7, 1
  store i32 %8, ptr %6, align 8, !tbaa !407
  tail call void @Perl_save_pushptr(ptr noundef nonnull %0, i32 noundef 11) #16
  %9 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !132
  %11 = and i32 %10, 134283264
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %61, label %13, !prof !408

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !150
  %16 = icmp eq ptr %15, null
  br i1 %16, label %61, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.xpvhv, ptr %5, i64 0, i32 3
  br label %19

19:                                               ; preds = %17, %57
  %20 = phi i64 [ 0, %17 ], [ %58, %57 ]
  %21 = load ptr, ptr %14, align 8, !tbaa !150
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  %23 = load ptr, ptr %22, align 8, !tbaa !117
  %24 = icmp eq ptr %23, null
  br i1 %24, label %57, label %25

25:                                               ; preds = %19, %54
  %26 = phi ptr [ %55, %54 ], [ %23, %19 ]
  %27 = getelementptr inbounds %struct.he, ptr %26, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !150
  %29 = icmp eq ptr %28, @PL_sv_placeholder
  br i1 %29, label %54, label %30

30:                                               ; preds = %25
  %31 = icmp eq ptr %28, null
  br i1 %31, label %50, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.sv, ptr %28, i64 0, i32 2
  %34 = load i32, ptr %33, align 4, !tbaa !144
  %35 = and i32 %34, 134283264
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.he, ptr %26, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !121
  %40 = tail call ptr @Perl_newSVhek(ptr noundef %39) #16
  %41 = tail call ptr @Perl_sv_2mortal(ptr noundef %40) #16
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.5, ptr noundef %41) #16
  br label %42

42:                                               ; preds = %37, %32
  %43 = load ptr, ptr %27, align 8, !tbaa !150
  %44 = getelementptr inbounds %struct.sv, ptr %43, i64 0, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !208
  %46 = icmp ugt i32 %45, 1
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = add i32 %45, -1
  store i32 %48, ptr %44, align 8, !tbaa !208
  br label %50

49:                                               ; preds = %42
  tail call void @Perl_sv_free2(ptr noundef %43, i32 noundef %45) #16
  br label %50

50:                                               ; preds = %49, %47, %30
  store ptr @PL_sv_placeholder, ptr %27, align 8, !tbaa !150
  %51 = tail call ptr @Perl_hv_placeholders_p(ptr noundef nonnull %0)
  %52 = load i64, ptr %51, align 8, !tbaa !129
  %53 = add nsw i64 %52, 1
  store i64 %53, ptr %51, align 8, !tbaa !129
  br label %54

54:                                               ; preds = %25, %50
  %55 = load ptr, ptr %26, align 8, !tbaa !117
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %25, !llvm.loop !409

57:                                               ; preds = %54, %19
  %58 = add i64 %20, 1
  %59 = load i64, ptr %18, align 8, !tbaa !179
  %60 = icmp ugt i64 %58, %59
  br i1 %60, label %92, label %19, !llvm.loop !410

61:                                               ; preds = %13, %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  store i64 0, ptr %2, align 8, !tbaa !129
  %62 = load ptr, ptr %0, align 8, !tbaa !157
  %63 = getelementptr inbounds %struct.xpvhv, ptr %62, i64 0, i32 2
  br label %64

64:                                               ; preds = %77, %61
  %65 = call ptr @Perl_hfree_next_entry(ptr noundef nonnull %0, ptr noundef nonnull %2)
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %70, !prof !411

67:                                               ; preds = %64
  %68 = load i64, ptr %63, align 8, !tbaa !220
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %78, label %77, !prof !412

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.sv, ptr %65, i64 0, i32 1
  %72 = load i32, ptr %71, align 8, !tbaa !208
  %73 = icmp ugt i32 %72, 1
  br i1 %73, label %74, label %76, !prof !413

74:                                               ; preds = %70
  %75 = add i32 %72, -1
  store i32 %75, ptr %71, align 8, !tbaa !208
  br label %77

76:                                               ; preds = %70
  tail call void @Perl_sv_free2(ptr noundef nonnull %65, i32 noundef %72) #16
  br label %77

77:                                               ; preds = %76, %74, %67
  br label %64, !llvm.loop !414

78:                                               ; preds = %67
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  %79 = tail call ptr @Perl_mg_find(ptr noundef nonnull %0, i32 noundef 37) #16
  %80 = icmp eq ptr %79, null
  br i1 %80, label %83, label %81, !prof !408

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.magic, ptr %79, i64 0, i32 5
  store i64 0, ptr %82, align 8, !tbaa !303
  br label %83

83:                                               ; preds = %78, %81
  %84 = load i32, ptr %9, align 4, !tbaa !132
  %85 = and i32 %84, 8388608
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %89, label %87, !prof !415

87:                                               ; preds = %83
  %88 = tail call i32 @Perl_mg_clear(ptr noundef nonnull %0) #16
  br label %89

89:                                               ; preds = %87, %83
  %90 = load i32, ptr %9, align 4, !tbaa !132
  %91 = and i32 %90, 2147483647
  store i32 %91, ptr %9, align 4, !tbaa !132
  br label %92

92:                                               ; preds = %57, %89
  %93 = load i32, ptr %9, align 4, !tbaa !132
  %94 = and i32 %93, 33554432
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %122, label %96, !prof !416

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %98 = load ptr, ptr %97, align 8, !tbaa !150
  %99 = load ptr, ptr %0, align 8, !tbaa !157
  %100 = getelementptr inbounds %struct.xpvhv, ptr %99, i64 0, i32 3
  %101 = load i64, ptr %100, align 8, !tbaa !179
  %102 = getelementptr ptr, ptr %98, i64 %101
  %103 = getelementptr ptr, ptr %102, i64 1
  %104 = load ptr, ptr %103, align 8, !tbaa !150
  %105 = icmp eq ptr %104, null
  br i1 %105, label %111, label %106, !prof !417

106:                                              ; preds = %96
  %107 = getelementptr i8, ptr %102, i64 36
  %108 = load i32, ptr %107, align 4, !tbaa !198
  %109 = icmp eq i32 %108, -1
  br i1 %109, label %111, label %110

110:                                              ; preds = %106
  tail call void @Perl_mro_isa_changed_in(ptr noundef nonnull %0) #16
  br label %111

111:                                              ; preds = %96, %106, %110
  %112 = load i32, ptr %9, align 4, !tbaa !132
  %113 = and i32 %112, 33554432
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %122, label %115, !prof !418

115:                                              ; preds = %111
  %116 = load ptr, ptr %97, align 8, !tbaa !150
  %117 = load ptr, ptr %0, align 8, !tbaa !157
  %118 = getelementptr inbounds %struct.xpvhv, ptr %117, i64 0, i32 3
  %119 = load i64, ptr %118, align 8, !tbaa !179
  %120 = getelementptr ptr, ptr %116, i64 %119
  %121 = getelementptr ptr, ptr %120, i64 3
  store ptr null, ptr %121, align 8, !tbaa !218
  br label %122

122:                                              ; preds = %115, %111, %92
  tail call void @Perl_pop_scope() #16
  br label %123

123:                                              ; preds = %1, %122
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @Perl_hv_iterkeysv(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !419 {
  %2 = getelementptr inbounds %struct.he, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !121
  %4 = tail call ptr @Perl_newSVhek(ptr noundef %3) #16
  %5 = tail call ptr @Perl_sv_2mortal(ptr noundef %4) #16
  ret ptr %5
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_hv_placeholders_set(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !116 {
  %3 = tail call ptr @Perl_mg_find(ptr noundef %0, i32 noundef 37) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds %struct.magic, ptr %3, i64 0, i32 5
  store i64 %6, ptr %7, align 8, !tbaa !303
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

declare i32 @Perl_mg_clear(ptr noundef) local_unnamed_addr #2

declare void @Perl_mro_isa_changed_in(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_hv_clear_placeholders(ptr noundef %0) local_unnamed_addr #0 !prof !116 {
  %2 = load ptr, ptr %0, align 8, !tbaa !157
  %3 = getelementptr inbounds %struct.xpvmg, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !150
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @Perl_mg_find(ptr noundef nonnull %0, i32 noundef 37) #16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.magic, ptr %7, i64 0, i32 5
  %11 = load i64, ptr %10, align 8, !tbaa !303
  %12 = trunc i64 %11 to i32
  br label %13

13:                                               ; preds = %9, %6, %1
  %14 = phi i32 [ 0, %1 ], [ %12, %9 ], [ 0, %6 ]
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  tail call fastcc void @S_clear_placeholders(ptr noundef nonnull %0, i32 noundef %14)
  br label %17

17:                                               ; preds = %16, %13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_hfree_next_entry(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #3 !prof !420 {
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !132
  %6 = and i32 %5, 33554432
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %43, label %8, !prof !421

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !150
  %11 = load ptr, ptr %0, align 8, !tbaa !157
  %12 = getelementptr inbounds %struct.xpvhv, ptr %11, i64 0, i32 3
  %13 = load i64, ptr %12, align 8, !tbaa !179
  %14 = getelementptr ptr, ptr %10, i64 %13
  %15 = getelementptr ptr, ptr %14, i64 1
  %16 = icmp eq ptr %15, null
  br i1 %16, label %43, label %17, !prof !422

17:                                               ; preds = %8
  %18 = getelementptr ptr, ptr %14, i64 3
  %19 = load ptr, ptr %18, align 8, !tbaa !218
  %20 = icmp eq ptr %19, null
  br i1 %20, label %37, label %21, !prof !423

21:                                               ; preds = %17
  %22 = and i32 %5, 1073741824
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = and i32 %5, -1073741825
  store i32 %25, ptr %4, align 4, !tbaa !132
  tail call void @Perl_hv_free_ent(ptr noundef nonnull %0, ptr noundef nonnull %19)
  br label %26

26:                                               ; preds = %24, %21
  %27 = load ptr, ptr %9, align 8, !tbaa !150
  %28 = load ptr, ptr %0, align 8, !tbaa !157
  %29 = getelementptr inbounds %struct.xpvhv, ptr %28, i64 0, i32 3
  %30 = load i64, ptr %29, align 8, !tbaa !179
  %31 = getelementptr ptr, ptr %27, i64 %30
  %32 = getelementptr ptr, ptr %31, i64 4
  store i32 -1, ptr %32, align 8, !tbaa !340
  %33 = getelementptr ptr, ptr %31, i64 3
  store ptr null, ptr %33, align 8, !tbaa !218
  %34 = getelementptr ptr, ptr %31, i64 6
  %35 = load i32, ptr %34, align 8, !tbaa !298
  %36 = getelementptr i8, ptr %31, i64 52
  store i32 %35, ptr %36, align 4, !tbaa !341
  br label %37

37:                                               ; preds = %26, %17
  %38 = phi ptr [ %31, %26 ], [ %14, %17 ]
  %39 = getelementptr ptr, ptr %38, i64 7
  %40 = load i32, ptr %39, align 8, !tbaa !216
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42, !prof !423

42:                                               ; preds = %37
  store i32 0, ptr %39, align 8, !tbaa !216
  br label %43

43:                                               ; preds = %37, %42, %8, %2
  %44 = load ptr, ptr %0, align 8, !tbaa !157
  %45 = getelementptr inbounds %struct.xpvhv, ptr %44, i64 0, i32 2
  %46 = load i64, ptr %45, align 8, !tbaa !220
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %179, label %48, !prof !424

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !150
  %51 = load i64, ptr %1, align 8, !tbaa !129
  %52 = getelementptr inbounds ptr, ptr %50, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !117
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %66, !prof !425

55:                                               ; preds = %48, %55
  %56 = phi i64 [ %62, %55 ], [ %51, %48 ]
  %57 = add i64 %56, 1
  store i64 %57, ptr %1, align 8, !tbaa !129
  %58 = load ptr, ptr %0, align 8, !tbaa !157
  %59 = getelementptr inbounds %struct.xpvhv, ptr %58, i64 0, i32 3
  %60 = load i64, ptr %59, align 8, !tbaa !179
  %61 = icmp ult i64 %56, %60
  %62 = select i1 %61, i64 %57, i64 0, !prof !426
  store i64 %62, ptr %1, align 8
  %63 = getelementptr inbounds ptr, ptr %50, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !117
  %65 = icmp eq ptr %64, null
  br i1 %65, label %55, label %66, !prof !427, !llvm.loop !428

66:                                               ; preds = %55, %48
  %67 = phi i64 [ %51, %48 ], [ %62, %55 ]
  %68 = phi ptr [ %53, %48 ], [ %64, %55 ]
  %69 = getelementptr inbounds ptr, ptr %50, i64 %67
  %70 = load ptr, ptr %68, align 8, !tbaa !123
  store ptr %70, ptr %69, align 8, !tbaa !117
  %71 = load ptr, ptr %0, align 8, !tbaa !157
  %72 = getelementptr inbounds %struct.xpvhv, ptr %71, i64 0, i32 2
  %73 = load i64, ptr %72, align 8, !tbaa !220
  %74 = add i64 %73, -1
  store i64 %74, ptr %72, align 8, !tbaa !220
  %75 = load i32, ptr @PL_phase, align 4, !tbaa !160
  %76 = icmp eq i32 %75, 6
  br i1 %76, label %177, label %77, !prof !429

77:                                               ; preds = %66
  %78 = load i32, ptr %4, align 4, !tbaa !132
  %79 = and i32 %78, 33554432
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %177, label %81, !prof !430

81:                                               ; preds = %77
  %82 = load ptr, ptr %49, align 8, !tbaa !150
  %83 = getelementptr inbounds %struct.xpvhv, ptr %71, i64 0, i32 3
  %84 = load i64, ptr %83, align 8, !tbaa !179
  %85 = getelementptr ptr, ptr %82, i64 %84
  %86 = getelementptr ptr, ptr %85, i64 1
  %87 = load ptr, ptr %86, align 8, !tbaa !150
  %88 = icmp eq ptr %87, null
  br i1 %88, label %177, label %89, !prof !431

89:                                               ; preds = %81
  %90 = getelementptr i8, ptr %85, i64 36
  %91 = load i32, ptr %90, align 4, !tbaa !198
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %177, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.he, ptr %68, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !150
  %96 = icmp eq ptr %95, null
  br i1 %96, label %177, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.sv, ptr %95, i64 0, i32 2
  %99 = load i32, ptr %98, align 4, !tbaa !144
  %100 = and i32 %99, 255
  %101 = icmp eq i32 %100, 9
  br i1 %101, label %102, label %177

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.sv, ptr %95, i64 0, i32 3
  %104 = load ptr, ptr %103, align 8, !tbaa !150
  %105 = getelementptr inbounds %struct.gp, ptr %104, i64 0, i32 5
  %106 = load ptr, ptr %105, align 8, !tbaa !206
  %107 = icmp eq ptr %106, null
  br i1 %107, label %177, label %108

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct.hv, ptr %106, i64 0, i32 2
  %110 = load i32, ptr %109, align 4, !tbaa !132
  %111 = and i32 %110, 33554432
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %177, label %113

113:                                              ; preds = %108
  %114 = getelementptr inbounds %struct.hv, ptr %106, i64 0, i32 3
  %115 = load ptr, ptr %114, align 8, !tbaa !150
  %116 = load ptr, ptr %106, align 8, !tbaa !157
  %117 = getelementptr inbounds %struct.xpvhv, ptr %116, i64 0, i32 3
  %118 = load i64, ptr %117, align 8, !tbaa !179
  %119 = getelementptr ptr, ptr %115, i64 %118
  %120 = getelementptr ptr, ptr %119, i64 1
  %121 = load ptr, ptr %120, align 8, !tbaa !150
  %122 = icmp eq ptr %121, null
  br i1 %122, label %177, label %123

123:                                              ; preds = %113
  %124 = getelementptr i8, ptr %119, i64 36
  %125 = load i32, ptr %124, align 4, !tbaa !198
  %126 = icmp eq i32 %125, -1
  br i1 %126, label %177, label %127

127:                                              ; preds = %123
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %128 = getelementptr inbounds %struct.he, ptr %68, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !121
  %130 = getelementptr inbounds %struct.hek, ptr %129, i64 0, i32 1
  %131 = load i32, ptr %130, align 4, !tbaa !184
  %132 = icmp eq i32 %131, -2
  br i1 %132, label %133, label %148

133:                                              ; preds = %127
  %134 = getelementptr inbounds %struct.hek, ptr %129, i64 0, i32 2
  %135 = load ptr, ptr %134, align 4, !tbaa !117
  %136 = getelementptr inbounds %struct.sv, ptr %135, i64 0, i32 2
  %137 = load i32, ptr %136, align 4, !tbaa !144
  %138 = and i32 %137, 2098176
  %139 = icmp eq i32 %138, 1024
  br i1 %139, label %140, label %146

140:                                              ; preds = %133
  %141 = load ptr, ptr %135, align 8, !tbaa !147
  %142 = getelementptr inbounds %struct.xpv, ptr %141, i64 0, i32 2
  %143 = load i64, ptr %142, align 8, !tbaa !148
  store i64 %143, ptr %3, align 8, !tbaa !129
  %144 = getelementptr inbounds %struct.sv, ptr %135, i64 0, i32 3
  %145 = load ptr, ptr %144, align 8, !tbaa !150
  br label %151

146:                                              ; preds = %133
  %147 = call ptr @Perl_sv_2pv_flags(ptr noundef %135, ptr noundef nonnull %3, i32 noundef 2) #16
  br label %151

148:                                              ; preds = %127
  %149 = sext i32 %131 to i64
  store i64 %149, ptr %3, align 8, !tbaa !129
  %150 = getelementptr inbounds %struct.hek, ptr %129, i64 0, i32 2
  br label %151

151:                                              ; preds = %140, %146, %148
  %152 = phi ptr [ %150, %148 ], [ %145, %140 ], [ %147, %146 ]
  %153 = load i64, ptr %3, align 8, !tbaa !129
  %154 = icmp ugt i64 %153, 1
  br i1 %154, label %155, label %165

155:                                              ; preds = %151
  %156 = add i64 %153, -1
  %157 = getelementptr inbounds i8, ptr %152, i64 %156
  %158 = load i8, ptr %157, align 1, !tbaa !150
  %159 = icmp eq i8 %158, 58
  br i1 %159, label %160, label %165

160:                                              ; preds = %155
  %161 = add i64 %153, -2
  %162 = getelementptr inbounds i8, ptr %152, i64 %161
  %163 = load i8, ptr %162, align 1, !tbaa !150
  %164 = icmp eq i8 %163, 58
  br i1 %164, label %170, label %165

165:                                              ; preds = %160, %155, %151
  %166 = icmp eq i64 %153, 1
  br i1 %166, label %167, label %176

167:                                              ; preds = %165
  %168 = load i8, ptr %152, align 1, !tbaa !150
  %169 = icmp eq i8 %168, 58
  br i1 %169, label %170, label %176

170:                                              ; preds = %167, %160
  %171 = load ptr, ptr %94, align 8, !tbaa !150
  %172 = getelementptr inbounds %struct.sv, ptr %171, i64 0, i32 3
  %173 = load ptr, ptr %172, align 8, !tbaa !150
  %174 = getelementptr inbounds %struct.gp, ptr %173, i64 0, i32 5
  %175 = load ptr, ptr %174, align 8, !tbaa !206
  call void @Perl_mro_package_moved(ptr noundef null, ptr noundef %175, ptr noundef %171, i32 noundef 0) #16
  br label %176

176:                                              ; preds = %170, %167, %165
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  br label %177

177:                                              ; preds = %108, %113, %123, %77, %81, %89, %176, %102, %97, %93, %66
  %178 = call fastcc ptr @S_hv_free_ent_ret(ptr noundef nonnull %0, ptr noundef nonnull %68)
  br label %179

179:                                              ; preds = %43, %177
  %180 = phi ptr [ %178, %177 ], [ null, %43 ]
  ret ptr %180
}

declare void @Perl_mro_package_moved(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @Perl_hv_undef_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 !prof !432 {
  %3 = alloca i64, align 8
  %4 = icmp eq ptr %0, null
  br i1 %4, label %435, label %5, !prof !433

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !407
  %8 = icmp eq i32 %7, 0
  %9 = load ptr, ptr %0, align 8, !tbaa !157
  %10 = load i32, ptr @PL_phase, align 4, !tbaa !160
  %11 = icmp eq i32 %10, 6
  br i1 %11, label %73, label %12, !prof !434

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !132
  %15 = and i32 %14, 33554432
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %73, label %17, !prof !435

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !150
  %20 = getelementptr inbounds %struct.xpvhv, ptr %9, i64 0, i32 3
  %21 = load i64, ptr %20, align 8, !tbaa !179
  %22 = getelementptr ptr, ptr %19, i64 %21
  %23 = getelementptr ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !150
  %25 = icmp eq ptr %24, null
  br i1 %25, label %73, label %26, !prof !436

26:                                               ; preds = %17
  %27 = getelementptr i8, ptr %22, i64 36
  %28 = load i32, ptr %27, align 4, !tbaa !198
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %24, align 8, !tbaa !117
  %32 = icmp eq ptr %31, null
  br i1 %32, label %73, label %33

33:                                               ; preds = %26, %30
  %34 = load ptr, ptr @PL_stashcache, align 8, !tbaa !117
  %35 = icmp eq ptr %34, null
  br i1 %35, label %72, label %36

36:                                               ; preds = %33
  br i1 %29, label %39, label %37

37:                                               ; preds = %36
  %38 = load ptr, ptr %24, align 8, !tbaa !117
  br label %39

39:                                               ; preds = %36, %37
  %40 = phi ptr [ %38, %37 ], [ %24, %36 ]
  %41 = getelementptr inbounds %struct.hek, ptr %40, i64 0, i32 2
  br i1 %29, label %44, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr %24, align 8, !tbaa !117
  br label %44

44:                                               ; preds = %39, %42
  %45 = phi ptr [ %43, %42 ], [ %24, %39 ]
  %46 = getelementptr inbounds %struct.hek, ptr %45, i64 0, i32 1
  %47 = load i32, ptr %46, align 4, !tbaa !184
  %48 = sext i32 %47 to i64
  br i1 %29, label %51, label %49

49:                                               ; preds = %44
  %50 = load ptr, ptr %24, align 8, !tbaa !117
  br label %51

51:                                               ; preds = %44, %49
  %52 = phi ptr [ %50, %49 ], [ %24, %44 ]
  %53 = getelementptr inbounds %struct.hek, ptr %52, i64 0, i32 2
  br i1 %29, label %56, label %54

54:                                               ; preds = %51
  %55 = load ptr, ptr %24, align 8, !tbaa !117
  br label %56

56:                                               ; preds = %51, %54
  %57 = phi ptr [ %55, %54 ], [ %24, %51 ]
  %58 = getelementptr inbounds %struct.hek, ptr %57, i64 0, i32 1
  %59 = load i32, ptr %58, align 4, !tbaa !184
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, ptr %53, i64 %60
  %62 = getelementptr inbounds i8, ptr %61, i64 1
  %63 = load i8, ptr %62, align 1, !tbaa !150
  %64 = and i8 %63, 1
  %65 = zext nneg i8 %64 to i32
  br i1 %29, label %68, label %66

66:                                               ; preds = %56
  %67 = load ptr, ptr %24, align 8, !tbaa !117
  br label %68

68:                                               ; preds = %56, %66
  %69 = phi ptr [ %67, %66 ], [ %24, %56 ]
  %70 = load i32, ptr %69, align 4, !tbaa !173
  %71 = tail call ptr @Perl_hv_common(ptr noundef nonnull %34, ptr noundef null, ptr noundef nonnull %41, i64 noundef %48, i32 noundef %65, i32 noundef 68, ptr noundef null, i32 noundef %70)
  br label %72

72:                                               ; preds = %68, %33
  tail call void @Perl_hv_name_set(ptr noundef nonnull %0, ptr noundef null, i32 noundef 0, i32 noundef 0)
  br label %73

73:                                               ; preds = %12, %17, %30, %72, %5
  br i1 %8, label %77, label %74, !prof !437

74:                                               ; preds = %73
  tail call void @Perl_push_scope() #16
  %75 = load i32, ptr %6, align 8, !tbaa !407
  %76 = add i32 %75, 1
  store i32 %76, ptr %6, align 8, !tbaa !407
  tail call void @Perl_save_pushptr(ptr noundef nonnull %0, i32 noundef 11) #16
  br label %77

77:                                               ; preds = %74, %73
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  store i64 0, ptr %3, align 8, !tbaa !129
  %78 = load ptr, ptr %0, align 8, !tbaa !157
  %79 = getelementptr inbounds %struct.xpvhv, ptr %78, i64 0, i32 2
  br label %80

80:                                               ; preds = %93, %77
  %81 = call ptr @Perl_hfree_next_entry(ptr noundef nonnull %0, ptr noundef nonnull %3)
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %86, !prof !411

83:                                               ; preds = %80
  %84 = load i64, ptr %79, align 8, !tbaa !220
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %94, label %93, !prof !412

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.sv, ptr %81, i64 0, i32 1
  %88 = load i32, ptr %87, align 8, !tbaa !208
  %89 = icmp ugt i32 %88, 1
  br i1 %89, label %90, label %92, !prof !413

90:                                               ; preds = %86
  %91 = add i32 %88, -1
  store i32 %91, ptr %87, align 8, !tbaa !208
  br label %93

92:                                               ; preds = %86
  tail call void @Perl_sv_free2(ptr noundef nonnull %81, i32 noundef %88) #16
  br label %93

93:                                               ; preds = %92, %90, %83
  br label %80, !llvm.loop !414

94:                                               ; preds = %83
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  %95 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %96 = load i32, ptr %95, align 4, !tbaa !132
  %97 = and i32 %96, 33554432
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %411, label %99, !prof !438

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %101 = load ptr, ptr %100, align 8, !tbaa !150
  %102 = load ptr, ptr %0, align 8, !tbaa !157
  %103 = getelementptr inbounds %struct.xpvhv, ptr %102, i64 0, i32 3
  %104 = load i64, ptr %103, align 8, !tbaa !179
  %105 = getelementptr ptr, ptr %101, i64 %104
  %106 = getelementptr ptr, ptr %105, i64 1
  %107 = load ptr, ptr %106, align 8, !tbaa !150
  %108 = icmp eq ptr %107, null
  br i1 %108, label %220, label %109, !prof !436

109:                                              ; preds = %99
  %110 = getelementptr i8, ptr %105, i64 36
  %111 = load i32, ptr %110, align 4, !tbaa !198
  %112 = icmp eq i32 %111, -1
  br i1 %112, label %220, label %113

113:                                              ; preds = %109
  %114 = load i32, ptr @PL_phase, align 4, !tbaa !160
  %115 = icmp eq i32 %114, 6
  br i1 %115, label %117, label %116

116:                                              ; preds = %113
  tail call void @Perl_mro_isa_changed_in(ptr noundef nonnull %0) #16
  br label %117

117:                                              ; preds = %116, %113
  %118 = load ptr, ptr @PL_stashcache, align 8, !tbaa !117
  %119 = icmp eq ptr %118, null
  br i1 %119, label %220, label %120

120:                                              ; preds = %117
  %121 = load i32, ptr %95, align 4, !tbaa !132
  %122 = and i32 %121, 33554432
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %147, label %124

124:                                              ; preds = %120
  %125 = load ptr, ptr %100, align 8, !tbaa !150
  %126 = load ptr, ptr %0, align 8, !tbaa !157
  %127 = getelementptr inbounds %struct.xpvhv, ptr %126, i64 0, i32 3
  %128 = load i64, ptr %127, align 8, !tbaa !179
  %129 = getelementptr ptr, ptr %125, i64 %128
  %130 = getelementptr ptr, ptr %129, i64 1
  %131 = load ptr, ptr %130, align 8, !tbaa !150
  %132 = icmp eq ptr %131, null
  br i1 %132, label %147, label %133

133:                                              ; preds = %124
  %134 = getelementptr i8, ptr %129, i64 36
  %135 = load i32, ptr %134, align 4, !tbaa !198
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %133
  %138 = load ptr, ptr %131, align 8, !tbaa !117
  br label %147

139:                                              ; preds = %133
  %140 = icmp slt i32 %135, -1
  br i1 %140, label %141, label %144

141:                                              ; preds = %139
  %142 = getelementptr inbounds ptr, ptr %131, i64 1
  %143 = load ptr, ptr %142, align 8, !tbaa !117
  br label %147

144:                                              ; preds = %139
  %145 = icmp eq i32 %135, -1
  %146 = select i1 %145, ptr null, ptr %131
  br label %147

147:                                              ; preds = %144, %120, %124, %137, %141
  %148 = phi ptr [ %138, %137 ], [ %143, %141 ], [ null, %124 ], [ null, %120 ], [ %146, %144 ]
  %149 = getelementptr inbounds %struct.hek, ptr %148, i64 0, i32 2
  %150 = icmp ne i32 %122, 0
  tail call void @llvm.assume(i1 %150)
  %151 = load ptr, ptr %100, align 8, !tbaa !150
  %152 = load ptr, ptr %0, align 8, !tbaa !157
  %153 = getelementptr inbounds %struct.xpvhv, ptr %152, i64 0, i32 3
  %154 = load i64, ptr %153, align 8, !tbaa !179
  %155 = getelementptr ptr, ptr %151, i64 %154
  %156 = getelementptr ptr, ptr %155, i64 1
  %157 = load ptr, ptr %156, align 8, !tbaa !150, !nonnull !167, !noundef !167
  %158 = getelementptr i8, ptr %155, i64 36
  %159 = load i32, ptr %158, align 4, !tbaa !198
  %160 = icmp sgt i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %147
  %162 = load ptr, ptr %157, align 8, !tbaa !117
  br label %170

163:                                              ; preds = %147
  %164 = icmp slt i32 %159, -1
  br i1 %164, label %165, label %168

165:                                              ; preds = %163
  %166 = getelementptr inbounds ptr, ptr %157, i64 1
  %167 = load ptr, ptr %166, align 8, !tbaa !117
  br label %170

168:                                              ; preds = %163
  %169 = icmp ne i32 %159, -1
  tail call void @llvm.assume(i1 %169)
  br label %170

170:                                              ; preds = %161, %168, %165
  %171 = phi ptr [ %162, %161 ], [ %167, %165 ], [ %157, %168 ]
  %172 = getelementptr inbounds %struct.hek, ptr %171, i64 0, i32 1
  %173 = load i32, ptr %172, align 4, !tbaa !184
  %174 = sext i32 %173 to i64
  br i1 %160, label %175, label %177

175:                                              ; preds = %170
  %176 = load ptr, ptr %157, align 8, !tbaa !117
  br label %185

177:                                              ; preds = %170
  %178 = icmp slt i32 %159, -1
  br i1 %178, label %179, label %182

179:                                              ; preds = %177
  %180 = getelementptr inbounds ptr, ptr %157, i64 1
  %181 = load ptr, ptr %180, align 8, !tbaa !117
  br label %185

182:                                              ; preds = %177
  %183 = icmp eq i32 %159, -1
  %184 = select i1 %183, ptr null, ptr %157
  br label %185

185:                                              ; preds = %182, %175, %179
  %186 = phi ptr [ %176, %175 ], [ %181, %179 ], [ %184, %182 ]
  %187 = getelementptr inbounds %struct.hek, ptr %186, i64 0, i32 2
  br i1 %160, label %188, label %190

188:                                              ; preds = %185
  %189 = load ptr, ptr %157, align 8, !tbaa !117
  br label %197

190:                                              ; preds = %185
  %191 = icmp slt i32 %159, -1
  br i1 %191, label %192, label %195

192:                                              ; preds = %190
  %193 = getelementptr inbounds ptr, ptr %157, i64 1
  %194 = load ptr, ptr %193, align 8, !tbaa !117
  br label %197

195:                                              ; preds = %190
  %196 = icmp ne i32 %159, -1
  tail call void @llvm.assume(i1 %196)
  br label %197

197:                                              ; preds = %188, %195, %192
  %198 = phi ptr [ %189, %188 ], [ %194, %192 ], [ %157, %195 ]
  %199 = getelementptr inbounds %struct.hek, ptr %198, i64 0, i32 1
  %200 = load i32, ptr %199, align 4, !tbaa !184
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8, ptr %187, i64 %201
  %203 = getelementptr inbounds i8, ptr %202, i64 1
  %204 = load i8, ptr %203, align 1, !tbaa !150
  %205 = and i8 %204, 1
  %206 = zext nneg i8 %205 to i32
  br i1 %160, label %207, label %209

207:                                              ; preds = %197
  %208 = load ptr, ptr %157, align 8, !tbaa !117
  br label %216

209:                                              ; preds = %197
  %210 = icmp slt i32 %159, -1
  br i1 %210, label %211, label %214

211:                                              ; preds = %209
  %212 = getelementptr inbounds ptr, ptr %157, i64 1
  %213 = load ptr, ptr %212, align 8, !tbaa !117
  br label %216

214:                                              ; preds = %209
  %215 = icmp ne i32 %159, -1
  tail call void @llvm.assume(i1 %215)
  br label %216

216:                                              ; preds = %207, %214, %211
  %217 = phi ptr [ %208, %207 ], [ %213, %211 ], [ %157, %214 ]
  %218 = load i32, ptr %217, align 4, !tbaa !173
  %219 = tail call ptr @Perl_hv_common(ptr noundef nonnull %118, ptr noundef null, ptr noundef nonnull %149, i64 noundef %174, i32 noundef %206, i32 noundef 68, ptr noundef null, i32 noundef %218)
  br label %220

220:                                              ; preds = %117, %216, %99, %109
  %221 = load i32, ptr %95, align 4, !tbaa !132
  %222 = and i32 %221, 33554432
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %244, label %224, !prof !439

224:                                              ; preds = %220
  %225 = load ptr, ptr %100, align 8, !tbaa !150
  %226 = load ptr, ptr %0, align 8, !tbaa !157
  %227 = getelementptr inbounds %struct.xpvhv, ptr %226, i64 0, i32 3
  %228 = load i64, ptr %227, align 8, !tbaa !179
  %229 = getelementptr ptr, ptr %225, i64 %228
  %230 = getelementptr ptr, ptr %229, i64 1
  %231 = load ptr, ptr %230, align 8, !tbaa !150
  %232 = icmp eq ptr %231, null
  br i1 %232, label %244, label %233, !prof !436

233:                                              ; preds = %224
  %234 = getelementptr i8, ptr %229, i64 36
  %235 = load i32, ptr %234, align 4, !tbaa !198
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %240, label %237

237:                                              ; preds = %233
  %238 = load ptr, ptr %231, align 8, !tbaa !117
  %239 = icmp eq ptr %238, null
  br i1 %239, label %244, label %240

240:                                              ; preds = %233, %237
  %241 = phi ptr [ %230, %233 ], [ %231, %237 ]
  %242 = load ptr, ptr %241, align 8, !tbaa !150
  %243 = getelementptr inbounds %struct.hek, ptr %242, i64 0, i32 2
  br label %244

244:                                              ; preds = %220, %224, %237, %240
  %245 = phi ptr [ %243, %240 ], [ null, %237 ], [ null, %224 ], [ null, %220 ]
  %246 = and i32 %1, 2
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %257, label %248, !prof !439

248:                                              ; preds = %244
  %249 = load ptr, ptr %100, align 8, !tbaa !150
  %250 = load ptr, ptr %0, align 8, !tbaa !157
  %251 = getelementptr inbounds %struct.xpvhv, ptr %250, i64 0, i32 3
  %252 = load i64, ptr %251, align 8, !tbaa !179
  %253 = getelementptr ptr, ptr %249, i64 %252
  %254 = getelementptr ptr, ptr %253, i64 1
  %255 = load ptr, ptr %254, align 8, !tbaa !150
  %256 = icmp eq ptr %255, null
  br i1 %256, label %325, label %259, !prof !436

257:                                              ; preds = %244
  %258 = icmp eq ptr %245, null
  br i1 %258, label %325, label %259

259:                                              ; preds = %257, %248
  %260 = icmp ne ptr %245, null
  %261 = load ptr, ptr @PL_stashcache, align 8
  %262 = icmp ne ptr %261, null
  %263 = select i1 %260, i1 %262, i1 false
  br i1 %263, label %264, label %324

264:                                              ; preds = %259
  br i1 %223, label %280, label %265

265:                                              ; preds = %264
  %266 = load ptr, ptr %100, align 8, !tbaa !150
  %267 = load ptr, ptr %0, align 8, !tbaa !157
  %268 = getelementptr inbounds %struct.xpvhv, ptr %267, i64 0, i32 3
  %269 = load i64, ptr %268, align 8, !tbaa !179
  %270 = getelementptr ptr, ptr %266, i64 %269
  %271 = getelementptr ptr, ptr %270, i64 1
  %272 = load ptr, ptr %271, align 8, !tbaa !150
  %273 = icmp eq ptr %272, null
  br i1 %273, label %280, label %274

274:                                              ; preds = %265
  %275 = getelementptr i8, ptr %270, i64 36
  %276 = load i32, ptr %275, align 4, !tbaa !198
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %280, label %278

278:                                              ; preds = %274
  %279 = load ptr, ptr %272, align 8, !tbaa !117
  br label %280

280:                                              ; preds = %274, %264, %265, %278
  %281 = phi ptr [ %279, %278 ], [ null, %265 ], [ null, %264 ], [ %272, %274 ]
  %282 = getelementptr inbounds %struct.hek, ptr %281, i64 0, i32 2
  %283 = icmp ne i32 %222, 0
  tail call void @llvm.assume(i1 %283)
  %284 = load ptr, ptr %100, align 8, !tbaa !150
  %285 = load ptr, ptr %0, align 8, !tbaa !157
  %286 = getelementptr inbounds %struct.xpvhv, ptr %285, i64 0, i32 3
  %287 = load i64, ptr %286, align 8, !tbaa !179
  %288 = getelementptr ptr, ptr %284, i64 %287
  %289 = getelementptr ptr, ptr %288, i64 1
  %290 = load ptr, ptr %289, align 8, !tbaa !150, !nonnull !167, !noundef !167
  %291 = getelementptr i8, ptr %288, i64 36
  %292 = load i32, ptr %291, align 4, !tbaa !198
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %296, label %294

294:                                              ; preds = %280
  %295 = load ptr, ptr %290, align 8, !tbaa !117
  br label %296

296:                                              ; preds = %280, %294
  %297 = phi ptr [ %295, %294 ], [ %290, %280 ]
  %298 = getelementptr inbounds %struct.hek, ptr %297, i64 0, i32 1
  %299 = load i32, ptr %298, align 4, !tbaa !184
  %300 = sext i32 %299 to i64
  br i1 %293, label %303, label %301

301:                                              ; preds = %296
  %302 = load ptr, ptr %290, align 8, !tbaa !117
  br label %303

303:                                              ; preds = %296, %301
  %304 = phi ptr [ %302, %301 ], [ %290, %296 ]
  %305 = getelementptr inbounds %struct.hek, ptr %304, i64 0, i32 2
  br i1 %293, label %308, label %306

306:                                              ; preds = %303
  %307 = load ptr, ptr %290, align 8, !tbaa !117
  br label %308

308:                                              ; preds = %303, %306
  %309 = phi ptr [ %307, %306 ], [ %290, %303 ]
  %310 = getelementptr inbounds %struct.hek, ptr %309, i64 0, i32 1
  %311 = load i32, ptr %310, align 4, !tbaa !184
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i8, ptr %305, i64 %312
  %314 = getelementptr inbounds i8, ptr %313, i64 1
  %315 = load i8, ptr %314, align 1, !tbaa !150
  %316 = and i8 %315, 1
  %317 = zext nneg i8 %316 to i32
  br i1 %293, label %320, label %318

318:                                              ; preds = %308
  %319 = load ptr, ptr %290, align 8, !tbaa !117
  br label %320

320:                                              ; preds = %308, %318
  %321 = phi ptr [ %319, %318 ], [ %290, %308 ]
  %322 = load i32, ptr %321, align 4, !tbaa !173
  %323 = tail call ptr @Perl_hv_common(ptr noundef nonnull %261, ptr noundef null, ptr noundef nonnull %282, i64 noundef %300, i32 noundef %317, i32 noundef 68, ptr noundef null, i32 noundef %322)
  br label %324

324:                                              ; preds = %320, %259
  tail call void @Perl_hv_name_set(ptr noundef nonnull %0, ptr noundef null, i32 noundef 0, i32 noundef %1)
  br label %325

325:                                              ; preds = %257, %324, %248
  %326 = load ptr, ptr %100, align 8, !tbaa !150
  %327 = load ptr, ptr %0, align 8, !tbaa !157
  %328 = getelementptr inbounds %struct.xpvhv, ptr %327, i64 0, i32 3
  %329 = load i64, ptr %328, align 8, !tbaa !179
  %330 = getelementptr ptr, ptr %326, i64 %329
  %331 = getelementptr ptr, ptr %330, i64 5
  %332 = load ptr, ptr %331, align 8, !tbaa !342
  %333 = icmp eq ptr %332, null
  br i1 %333, label %395, label %334, !prof !436

334:                                              ; preds = %325
  %335 = load ptr, ptr %332, align 8, !tbaa !440
  %336 = icmp eq ptr %335, null
  br i1 %336, label %344, label %337

337:                                              ; preds = %334
  %338 = getelementptr inbounds %struct.sv, ptr %335, i64 0, i32 1
  %339 = load i32, ptr %338, align 8, !tbaa !208
  %340 = icmp ugt i32 %339, 1
  br i1 %340, label %341, label %343

341:                                              ; preds = %337
  %342 = add i32 %339, -1
  store i32 %342, ptr %338, align 8, !tbaa !208
  br label %355

343:                                              ; preds = %337
  tail call void @Perl_sv_free2(ptr noundef nonnull %335, i32 noundef %339) #16
  br label %355

344:                                              ; preds = %334
  %345 = getelementptr inbounds %struct.mro_meta, ptr %332, i64 0, i32 1
  %346 = load ptr, ptr %345, align 8, !tbaa !442
  %347 = icmp eq ptr %346, null
  br i1 %347, label %355, label %348

348:                                              ; preds = %344
  %349 = getelementptr inbounds %struct.sv, ptr %346, i64 0, i32 1
  %350 = load i32, ptr %349, align 8, !tbaa !208
  %351 = icmp ugt i32 %350, 1
  br i1 %351, label %352, label %354

352:                                              ; preds = %348
  %353 = add i32 %350, -1
  store i32 %353, ptr %349, align 8, !tbaa !208
  br label %355

354:                                              ; preds = %348
  tail call void @Perl_sv_free2(ptr noundef nonnull %346, i32 noundef %350) #16
  br label %355

355:                                              ; preds = %354, %352, %344, %343, %341
  %356 = getelementptr inbounds %struct.mro_meta, ptr %332, i64 0, i32 2
  %357 = load ptr, ptr %356, align 8, !tbaa !443
  %358 = icmp eq ptr %357, null
  br i1 %358, label %366, label %359

359:                                              ; preds = %355
  %360 = getelementptr inbounds %struct.sv, ptr %357, i64 0, i32 1
  %361 = load i32, ptr %360, align 8, !tbaa !208
  %362 = icmp ugt i32 %361, 1
  br i1 %362, label %363, label %365

363:                                              ; preds = %359
  %364 = add i32 %361, -1
  store i32 %364, ptr %360, align 8, !tbaa !208
  br label %366

365:                                              ; preds = %359
  tail call void @Perl_sv_free2(ptr noundef nonnull %357, i32 noundef %361) #16
  br label %366

366:                                              ; preds = %355, %363, %365
  %367 = getelementptr inbounds %struct.mro_meta, ptr %332, i64 0, i32 6
  %368 = load ptr, ptr %367, align 8, !tbaa !444
  %369 = icmp eq ptr %368, null
  br i1 %369, label %377, label %370

370:                                              ; preds = %366
  %371 = getelementptr inbounds %struct.sv, ptr %368, i64 0, i32 1
  %372 = load i32, ptr %371, align 8, !tbaa !208
  %373 = icmp ugt i32 %372, 1
  br i1 %373, label %374, label %376

374:                                              ; preds = %370
  %375 = add i32 %372, -1
  store i32 %375, ptr %371, align 8, !tbaa !208
  br label %377

376:                                              ; preds = %370
  tail call void @Perl_sv_free2(ptr noundef nonnull %368, i32 noundef %372) #16
  br label %377

377:                                              ; preds = %366, %374, %376
  %378 = getelementptr inbounds %struct.mro_meta, ptr %332, i64 0, i32 7
  %379 = load ptr, ptr %378, align 8, !tbaa !445
  %380 = icmp eq ptr %379, null
  br i1 %380, label %388, label %381

381:                                              ; preds = %377
  %382 = getelementptr inbounds %struct.sv, ptr %379, i64 0, i32 1
  %383 = load i32, ptr %382, align 8, !tbaa !208
  %384 = icmp ugt i32 %383, 1
  br i1 %384, label %385, label %387

385:                                              ; preds = %381
  %386 = add i32 %383, -1
  store i32 %386, ptr %382, align 8, !tbaa !208
  br label %388

387:                                              ; preds = %381
  tail call void @Perl_sv_free2(ptr noundef nonnull %379, i32 noundef %383) #16
  br label %388

388:                                              ; preds = %377, %385, %387
  tail call void @Perl_safesysfree(ptr noundef nonnull %332) #16
  %389 = load ptr, ptr %100, align 8, !tbaa !150
  %390 = load ptr, ptr %0, align 8, !tbaa !157
  %391 = getelementptr inbounds %struct.xpvhv, ptr %390, i64 0, i32 3
  %392 = load i64, ptr %391, align 8, !tbaa !179
  %393 = getelementptr ptr, ptr %389, i64 %392
  %394 = getelementptr ptr, ptr %393, i64 5
  store ptr null, ptr %394, align 8, !tbaa !342
  br label %395

395:                                              ; preds = %388, %325
  %396 = load ptr, ptr %100, align 8, !tbaa !150
  %397 = load ptr, ptr %0, align 8, !tbaa !157
  %398 = getelementptr inbounds %struct.xpvhv, ptr %397, i64 0, i32 3
  %399 = load i64, ptr %398, align 8, !tbaa !179
  %400 = getelementptr ptr, ptr %396, i64 %399
  %401 = getelementptr ptr, ptr %400, i64 1
  %402 = load ptr, ptr %401, align 8, !tbaa !150
  %403 = icmp eq ptr %402, null
  br i1 %403, label %404, label %411, !prof !436

404:                                              ; preds = %395
  %405 = getelementptr ptr, ptr %400, i64 2
  %406 = load ptr, ptr %405, align 8, !tbaa !446
  %407 = icmp eq ptr %406, null
  br i1 %407, label %408, label %411, !prof !436

408:                                              ; preds = %404
  %409 = load i32, ptr %95, align 4, !tbaa !132
  %410 = and i32 %409, -33554433
  store i32 %410, ptr %95, align 4, !tbaa !132
  br label %411

411:                                              ; preds = %395, %404, %408, %94
  %412 = load i32, ptr %95, align 4, !tbaa !132
  %413 = and i32 %412, 33554432
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %415, label %419, !prof !447

415:                                              ; preds = %411
  %416 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %417 = load ptr, ptr %416, align 8, !tbaa !150
  tail call void @Perl_safesysfree(ptr noundef %417) #16
  %418 = getelementptr inbounds %struct.xpvhv, ptr %9, i64 0, i32 3
  store i64 7, ptr %418, align 8, !tbaa !179
  store ptr null, ptr %416, align 8, !tbaa !150
  br label %419

419:                                              ; preds = %415, %411
  %420 = load i32, ptr %6, align 8, !tbaa !407
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %427, label %422, !prof !437

422:                                              ; preds = %419
  %423 = tail call ptr @Perl_mg_find(ptr noundef nonnull %0, i32 noundef 37) #16
  %424 = icmp eq ptr %423, null
  br i1 %424, label %427, label %425, !prof !448

425:                                              ; preds = %422
  %426 = getelementptr inbounds %struct.magic, ptr %423, i64 0, i32 5
  store i64 0, ptr %426, align 8, !tbaa !303
  br label %427

427:                                              ; preds = %425, %422, %419
  %428 = load i32, ptr %95, align 4, !tbaa !132
  %429 = and i32 %428, 8388608
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %433, label %431, !prof !447

431:                                              ; preds = %427
  %432 = tail call i32 @Perl_mg_clear(ptr noundef nonnull %0) #16
  br label %433

433:                                              ; preds = %431, %427
  br i1 %8, label %435, label %434, !prof !437

434:                                              ; preds = %433
  tail call void @Perl_pop_scope() #16
  br label %435

435:                                              ; preds = %433, %434, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_hv_name_set(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 !prof !449 {
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  %7 = icmp slt i32 %2, 0
  br i1 %7, label %8, label %10, !prof !450

8:                                                ; preds = %4
  %9 = zext i32 %2 to i64
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.6, i64 noundef %9) #16
  br label %10

10:                                               ; preds = %8, %4
  %11 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !132
  %13 = and i32 %12, 33554432
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %86, label %15, !prof !451

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !150
  %18 = load ptr, ptr %0, align 8, !tbaa !157
  %19 = getelementptr inbounds %struct.xpvhv, ptr %18, i64 0, i32 3
  %20 = load i64, ptr %19, align 8, !tbaa !179
  %21 = getelementptr ptr, ptr %17, i64 %20
  %22 = getelementptr ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !150
  %24 = icmp eq ptr %23, null
  %25 = getelementptr i8, ptr %21, i64 36
  br i1 %24, label %85, label %26, !prof !354

26:                                               ; preds = %15
  %27 = load i32, ptr %25, align 4, !tbaa !198
  %28 = icmp eq i32 %27, 0
  %29 = and i32 %3, 2
  %30 = icmp eq i32 %29, 0
  br i1 %28, label %74, label %31

31:                                               ; preds = %26
  br i1 %30, label %56, label %32

32:                                               ; preds = %31
  %33 = tail call i32 @llvm.abs.i32(i32 %27, i1 true)
  %34 = icmp ugt i32 %33, 1
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = zext nneg i32 %33 to i64
  %37 = shl nuw nsw i64 %36, 3
  br label %38

38:                                               ; preds = %35, %38
  %39 = phi i64 [ %40, %38 ], [ %37, %35 ]
  %40 = add nsw i64 %39, -8
  %41 = getelementptr inbounds i8, ptr %23, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !117
  tail call fastcc void @S_unshare_hek_or_pvn(ptr noundef %42, ptr noundef null, i32 noundef 0, i32 noundef 0)
  %43 = icmp sgt i64 %39, 16
  br i1 %43, label %38, label %44, !llvm.loop !452

44:                                               ; preds = %38, %32
  %45 = load ptr, ptr %23, align 8, !tbaa !117
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  tail call fastcc void @S_unshare_hek_or_pvn(ptr noundef nonnull %45, ptr noundef null, i32 noundef 0, i32 noundef 0)
  br label %48

48:                                               ; preds = %47, %44
  tail call void @Perl_safesysfree(ptr noundef nonnull %23) #16
  %49 = load ptr, ptr %16, align 8, !tbaa !150
  %50 = load ptr, ptr %0, align 8, !tbaa !157
  %51 = getelementptr inbounds %struct.xpvhv, ptr %50, i64 0, i32 3
  %52 = load i64, ptr %51, align 8, !tbaa !179
  %53 = getelementptr ptr, ptr %49, i64 %52
  %54 = getelementptr ptr, ptr %53, i64 1
  %55 = getelementptr i8, ptr %53, i64 36
  store i32 0, ptr %55, align 4, !tbaa !198
  br label %90

56:                                               ; preds = %31
  %57 = icmp sgt i32 %27, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %56
  %59 = add nuw nsw i32 %27, 1
  %60 = zext nneg i32 %59 to i64
  %61 = shl nuw nsw i64 %60, 3
  %62 = tail call ptr @Perl_safesysrealloc(ptr noundef nonnull %23, i64 noundef %61) #16
  store ptr %62, ptr %22, align 8, !tbaa !150
  %63 = getelementptr inbounds ptr, ptr %62, i64 1
  %64 = load ptr, ptr %63, align 8, !tbaa !117
  %65 = load i32, ptr %25, align 4, !tbaa !198
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds ptr, ptr %62, i64 %66
  store ptr %64, ptr %67, align 8, !tbaa !117
  %68 = load ptr, ptr %62, align 8, !tbaa !117
  store ptr %68, ptr %63, align 8, !tbaa !117
  %69 = xor i32 %65, -1
  store i32 %69, ptr %25, align 4, !tbaa !198
  br label %90

70:                                               ; preds = %56
  %71 = load ptr, ptr %23, align 8, !tbaa !117
  %72 = icmp eq ptr %71, null
  br i1 %72, label %90, label %73

73:                                               ; preds = %70
  tail call fastcc void @S_unshare_hek_or_pvn(ptr noundef nonnull %71, ptr noundef null, i32 noundef 0, i32 noundef 0)
  br label %90

74:                                               ; preds = %26
  br i1 %30, label %82, label %75

75:                                               ; preds = %74
  tail call fastcc void @S_unshare_hek_or_pvn(ptr noundef nonnull %23, ptr noundef null, i32 noundef 0, i32 noundef 0)
  %76 = load ptr, ptr %16, align 8, !tbaa !150
  %77 = load ptr, ptr %0, align 8, !tbaa !157
  %78 = getelementptr inbounds %struct.xpvhv, ptr %77, i64 0, i32 3
  %79 = load i64, ptr %78, align 8, !tbaa !179
  %80 = getelementptr ptr, ptr %76, i64 %79
  %81 = getelementptr ptr, ptr %80, i64 1
  br label %90

82:                                               ; preds = %74
  %83 = tail call ptr @Perl_safesysmalloc(i64 noundef 16) #16
  store ptr %83, ptr %22, align 8, !tbaa !150
  store i32 -2, ptr %25, align 4, !tbaa !198
  %84 = getelementptr inbounds ptr, ptr %83, i64 1
  store ptr %23, ptr %84, align 8, !tbaa !117
  br label %90

85:                                               ; preds = %15
  store i32 0, ptr %25, align 4, !tbaa !198
  br label %90

86:                                               ; preds = %10
  %87 = icmp eq ptr %1, null
  br i1 %87, label %164, label %88, !prof !453

88:                                               ; preds = %86
  %89 = tail call fastcc ptr @S_hv_auxinit(ptr noundef %0)
  br label %90

90:                                               ; preds = %85, %75, %82, %48, %70, %73, %58, %88
  %91 = phi ptr [ %54, %48 ], [ %62, %58 ], [ %23, %73 ], [ %23, %70 ], [ %81, %75 ], [ %83, %82 ], [ %22, %85 ], [ %89, %88 ]
  %92 = zext i32 %2 to i64
  %93 = getelementptr inbounds i8, ptr %1, i64 %92
  %94 = add i32 %2, 544173908
  %95 = icmp eq i32 %2, 0
  br i1 %95, label %107, label %96, !prof !454

96:                                               ; preds = %90, %96
  %97 = phi i32 [ %105, %96 ], [ %94, %90 ]
  %98 = phi ptr [ %102, %96 ], [ %1, %90 ]
  %99 = mul i32 %97, 1025
  %100 = lshr i32 %99, 6
  %101 = xor i32 %100, %99
  %102 = getelementptr inbounds i8, ptr %98, i64 1
  %103 = load i8, ptr %98, align 1, !tbaa !150
  %104 = zext i8 %103 to i32
  %105 = add i32 %101, %104
  %106 = icmp ult ptr %102, %93
  br i1 %106, label %96, label %107, !prof !177, !llvm.loop !178

107:                                              ; preds = %96, %90
  %108 = phi i32 [ %94, %90 ], [ %105, %96 ]
  %109 = mul i32 %108, 1025
  %110 = lshr i32 %109, 6
  %111 = xor i32 %110, %109
  %112 = mul i32 %111, 1025
  %113 = add i32 %112, 73800
  %114 = lshr i32 %113, 6
  %115 = xor i32 %114, %113
  %116 = mul i32 %115, 1025
  %117 = add i32 %116, 113775
  %118 = lshr i32 %117, 6
  %119 = xor i32 %118, %117
  %120 = mul i32 %119, 1025
  %121 = add i32 %120, 118900
  %122 = lshr i32 %121, 6
  %123 = xor i32 %122, %121
  %124 = mul i32 %123, 1025
  %125 = add i32 %124, 32800
  %126 = lshr i32 %125, 6
  %127 = xor i32 %126, %125
  %128 = mul i32 %127, 9
  %129 = lshr i32 %128, 11
  %130 = xor i32 %129, %128
  %131 = mul i32 %130, 32769
  %132 = icmp eq ptr %1, null
  br i1 %132, label %162, label %133, !prof !450

133:                                              ; preds = %107
  %134 = and i32 %3, 536870912
  %135 = icmp eq i32 %134, 0
  %136 = sub nsw i32 0, %2
  %137 = select i1 %135, i32 %2, i32 %136, !prof !455
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #16
  store i8 0, ptr %5, align 1, !tbaa !151
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %156, !prof !456

139:                                              ; preds = %133
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  %140 = sub nsw i32 0, %137
  %141 = zext nneg i32 %140 to i64
  store i64 %141, ptr %6, align 8, !tbaa !129
  store i8 1, ptr %5, align 1, !tbaa !151
  %142 = call ptr @Perl_bytes_from_utf8(ptr noundef nonnull %1, ptr noundef nonnull %6, ptr noundef nonnull %5) #16
  %143 = load i64, ptr %6, align 8, !tbaa !129
  %144 = trunc i64 %143 to i32
  %145 = load i8, ptr %5, align 1, !tbaa !151, !range !166, !noundef !167
  %146 = zext nneg i8 %145 to i32
  %147 = icmp eq ptr %142, %1
  br i1 %147, label %153, label %148

148:                                              ; preds = %139
  %149 = shl i64 %143, 32
  %150 = ashr exact i64 %149, 32
  %151 = call fastcc i32 @S_perl_hash_one_at_a_time_hard(ptr noundef %142, i64 noundef %150)
  %152 = or disjoint i32 %146, 258
  br label %153

153:                                              ; preds = %148, %139
  %154 = phi i32 [ %151, %148 ], [ %131, %139 ]
  %155 = phi i32 [ %152, %148 ], [ %146, %139 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  br label %156

156:                                              ; preds = %133, %153
  %157 = phi i32 [ %144, %153 ], [ %137, %133 ]
  %158 = phi i32 [ %154, %153 ], [ %131, %133 ]
  %159 = phi i32 [ %155, %153 ], [ 0, %133 ]
  %160 = phi ptr [ %142, %153 ], [ %1, %133 ]
  %161 = call fastcc ptr @S_share_hek_flags(ptr noundef %160, i32 noundef %157, i32 noundef %158, i32 noundef %159)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #16
  br label %162

162:                                              ; preds = %107, %156
  %163 = phi ptr [ %161, %156 ], [ null, %107 ]
  store ptr %163, ptr %91, align 8, !tbaa !117
  br label %164

164:                                              ; preds = %86, %162
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @S_hv_auxinit(ptr nocapture noundef %0) unnamed_addr #3 !prof !457 !PGOFuncName !458 {
  %2 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !132
  %4 = and i32 %3, 33554432
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !150
  br i1 %5, label %8, label %52, !prof !459

8:                                                ; preds = %1
  %9 = icmp eq ptr %7, null
  %10 = load ptr, ptr %0, align 8, !tbaa !157
  %11 = getelementptr inbounds %struct.xpvhv, ptr %10, i64 0, i32 3
  %12 = load i64, ptr %11, align 8, !tbaa !179
  %13 = shl i64 %12, 3
  %14 = add i64 %13, 64
  br i1 %9, label %15, label %17, !prof !460

15:                                               ; preds = %8
  %16 = tail call ptr @Perl_safesyscalloc(i64 noundef %14, i64 noundef 1) #16
  br label %19

17:                                               ; preds = %8
  %18 = tail call ptr @Perl_safesysrealloc(ptr noundef nonnull %7, i64 noundef %14) #16
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi ptr [ %18, %17 ], [ %16, %15 ]
  store ptr %20, ptr %6, align 8, !tbaa !150
  %21 = load i32, ptr %2, align 4, !tbaa !132
  %22 = or i32 %21, 33554432
  store i32 %22, ptr %2, align 4, !tbaa !132
  %23 = load ptr, ptr %0, align 8, !tbaa !157
  %24 = getelementptr inbounds %struct.xpvhv, ptr %23, i64 0, i32 3
  %25 = load i64, ptr %24, align 8, !tbaa !179
  %26 = add i64 %25, 1
  %27 = getelementptr inbounds ptr, ptr %20, i64 %26
  %28 = load i8, ptr @PL_hash_rand_bits_enabled, align 1, !tbaa !150
  switch i8 %28, label %45 [
    i8 0, label %48
    i8 1, label %29
  ], !prof !461

29:                                               ; preds = %19
  %30 = ptrtoint ptr %20 to i64
  %31 = xor i64 %30, -1
  %32 = shl i64 %30, 18
  %33 = add i64 %32, %31
  %34 = lshr i64 %33, 31
  %35 = xor i64 %34, %33
  %36 = mul i64 %35, 21
  %37 = lshr i64 %36, 11
  %38 = xor i64 %37, %36
  %39 = mul i64 %38, 65
  %40 = lshr i64 %39, 22
  %41 = xor i64 %40, %39
  %42 = and i64 %41, 4294967295
  %43 = load i64, ptr @PL_hash_rand_bits, align 8, !tbaa !129
  %44 = add i64 %43, %42
  store i64 %44, ptr @PL_hash_rand_bits, align 8, !tbaa !129
  br label %45

45:                                               ; preds = %19, %29
  %46 = load i64, ptr @PL_hash_rand_bits, align 8, !tbaa !129
  %47 = tail call i64 @llvm.fshl.i64(i64 %46, i64 %46, i64 1)
  store i64 %47, ptr @PL_hash_rand_bits, align 8, !tbaa !129
  br label %48

48:                                               ; preds = %19, %45
  %49 = load i64, ptr @PL_hash_rand_bits, align 8, !tbaa !129
  %50 = trunc i64 %49 to i32
  %51 = getelementptr inbounds %struct.xpvhv_aux, ptr %27, i64 0, i32 6
  store i32 %50, ptr %51, align 8, !tbaa !298
  br label %58

52:                                               ; preds = %1
  %53 = load ptr, ptr %0, align 8, !tbaa !157
  %54 = getelementptr inbounds %struct.xpvhv, ptr %53, i64 0, i32 3
  %55 = load i64, ptr %54, align 8, !tbaa !179
  %56 = getelementptr ptr, ptr %7, i64 %55
  %57 = getelementptr ptr, ptr %56, i64 1
  br label %58

58:                                               ; preds = %52, %48
  %59 = phi ptr [ %57, %52 ], [ %27, %48 ]
  %60 = getelementptr inbounds %struct.xpvhv_aux, ptr %59, i64 0, i32 3
  store i32 -1, ptr %60, align 8, !tbaa !340
  %61 = getelementptr inbounds %struct.xpvhv_aux, ptr %59, i64 0, i32 2
  store ptr null, ptr %61, align 8, !tbaa !218
  %62 = getelementptr inbounds %struct.xpvhv_aux, ptr %59, i64 0, i32 6
  %63 = load i32, ptr %62, align 8, !tbaa !298
  %64 = getelementptr inbounds %struct.xpvhv_aux, ptr %59, i64 0, i32 7
  store i32 %63, ptr %64, align 4, !tbaa !341
  %65 = getelementptr inbounds %struct.xpvhv_aux, ptr %59, i64 0, i32 8
  store i32 0, ptr %65, align 8, !tbaa !216
  %66 = getelementptr inbounds %struct.xpvhv_aux, ptr %59, i64 0, i32 4
  store i32 0, ptr %66, align 4, !tbaa !198
  %67 = getelementptr inbounds %struct.xpvhv_aux, ptr %59, i64 0, i32 5
  store ptr null, ptr %67, align 8, !tbaa !342
  %68 = getelementptr inbounds %struct.xpvhv_aux, ptr %59, i64 0, i32 9
  store i32 0, ptr %68, align 4, !tbaa !343
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %59, i8 0, i64 16, i1 false)
  ret ptr %59
}

; Function Attrs: cold nounwind uwtable
define dso_local nonnull ptr @Perl_hv_riter_p(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !116 {
  %2 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !132
  %4 = and i32 %3, 33554432
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !150
  %9 = load ptr, ptr %0, align 8, !tbaa !157
  %10 = getelementptr inbounds %struct.xpvhv, ptr %9, i64 0, i32 3
  %11 = load i64, ptr %10, align 8, !tbaa !179
  %12 = getelementptr ptr, ptr %8, i64 %11
  %13 = getelementptr ptr, ptr %12, i64 1
  br label %16

14:                                               ; preds = %1
  %15 = tail call fastcc ptr @S_hv_auxinit(ptr noundef %0)
  br label %16

16:                                               ; preds = %14, %6
  %17 = phi ptr [ %13, %6 ], [ %15, %14 ]
  %18 = getelementptr inbounds %struct.xpvhv_aux, ptr %17, i64 0, i32 3
  ret ptr %18
}

; Function Attrs: cold nounwind uwtable
define dso_local nonnull ptr @Perl_hv_eiter_p(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !116 {
  %2 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !132
  %4 = and i32 %3, 33554432
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !150
  %9 = load ptr, ptr %0, align 8, !tbaa !157
  %10 = getelementptr inbounds %struct.xpvhv, ptr %9, i64 0, i32 3
  %11 = load i64, ptr %10, align 8, !tbaa !179
  %12 = getelementptr ptr, ptr %8, i64 %11
  %13 = getelementptr ptr, ptr %12, i64 1
  br label %16

14:                                               ; preds = %1
  %15 = tail call fastcc ptr @S_hv_auxinit(ptr noundef %0)
  br label %16

16:                                               ; preds = %14, %6
  %17 = phi ptr [ %13, %6 ], [ %15, %14 ]
  %18 = getelementptr inbounds %struct.xpvhv_aux, ptr %17, i64 0, i32 2
  ret ptr %18
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_hv_rand_set(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !116 {
  %3 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !132
  %5 = and i32 %4, 33554432
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !150
  %10 = load ptr, ptr %0, align 8, !tbaa !157
  %11 = getelementptr inbounds %struct.xpvhv, ptr %10, i64 0, i32 3
  %12 = load i64, ptr %11, align 8, !tbaa !179
  %13 = getelementptr ptr, ptr %9, i64 %12
  %14 = getelementptr ptr, ptr %13, i64 1
  br label %17

15:                                               ; preds = %2
  %16 = tail call fastcc ptr @S_hv_auxinit(ptr noundef %0)
  br label %17

17:                                               ; preds = %15, %7
  %18 = phi ptr [ %14, %7 ], [ %16, %15 ]
  %19 = getelementptr inbounds %struct.xpvhv_aux, ptr %18, i64 0, i32 6
  store i32 %1, ptr %19, align 8, !tbaa !298
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @S_unshare_hek_or_pvn(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #4 !prof !462 !PGOFuncName !463 {
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #16
  store i8 0, ptr %5, align 1, !tbaa !151
  %7 = icmp eq ptr %0, null
  br i1 %7, label %17, label %8, !prof !324

8:                                                ; preds = %4
  %9 = getelementptr inbounds i8, ptr %0, i64 -8
  %10 = load i64, ptr %9, align 8, !tbaa !150
  %11 = icmp eq i64 %10, 1
  br i1 %11, label %14, label %12, !prof !325

12:                                               ; preds = %8
  %13 = add i64 %10, -1
  store i64 %13, ptr %9, align 8, !tbaa !150
  br label %109

14:                                               ; preds = %8
  %15 = getelementptr inbounds i8, ptr %0, i64 -24
  %16 = load i32, ptr %0, align 4, !tbaa !173
  br label %30

17:                                               ; preds = %4
  %18 = icmp slt i32 %2, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  %20 = sub nsw i32 0, %2
  %21 = zext nneg i32 %20 to i64
  store i64 %21, ptr %6, align 8, !tbaa !129
  store i8 1, ptr %5, align 1, !tbaa !151
  %22 = call ptr @Perl_bytes_from_utf8(ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %5) #16
  %23 = load i64, ptr %6, align 8, !tbaa !129
  %24 = trunc i64 %23 to i32
  %25 = load i8, ptr %5, align 1, !tbaa !151, !range !166, !noundef !167
  %26 = zext nneg i8 %25 to i32
  %27 = icmp eq ptr %22, %1
  %28 = or disjoint i32 %26, 258
  %29 = select i1 %27, i32 %26, i32 %28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  br label %30

30:                                               ; preds = %17, %19, %14
  %31 = phi i32 [ 0, %14 ], [ %29, %19 ], [ 0, %17 ]
  %32 = phi i32 [ %16, %14 ], [ %3, %19 ], [ %3, %17 ]
  %33 = phi ptr [ %15, %14 ], [ null, %19 ], [ null, %17 ]
  %34 = phi i32 [ %2, %14 ], [ %24, %19 ], [ %2, %17 ]
  %35 = phi ptr [ %1, %14 ], [ %22, %19 ], [ %1, %17 ]
  %36 = load ptr, ptr @PL_strtab, align 8, !tbaa !117
  %37 = load ptr, ptr %36, align 8, !tbaa !157
  %38 = getelementptr inbounds %struct.hv, ptr %36, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !150
  %40 = getelementptr inbounds %struct.xpvhv, ptr %37, i64 0, i32 3
  %41 = load i64, ptr %40, align 8, !tbaa !179
  %42 = trunc i64 %41 to i32
  %43 = and i32 %32, %42
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds ptr, ptr %39, i64 %44
  %46 = icmp eq ptr %33, null
  br i1 %46, label %47, label %53, !prof !326

47:                                               ; preds = %30
  %48 = load ptr, ptr %45, align 8, !tbaa !117
  %49 = icmp eq ptr %48, null
  br i1 %49, label %85, label %50

50:                                               ; preds = %47
  %51 = sext i32 %34 to i64
  %52 = trunc i32 %31 to i8
  br label %59

53:                                               ; preds = %30, %53
  %54 = phi ptr [ %55, %53 ], [ %45, %30 ]
  %55 = load ptr, ptr %54, align 8, !tbaa !117
  %56 = icmp eq ptr %55, null
  %57 = icmp eq ptr %55, %33
  %58 = or i1 %56, %57
  br i1 %58, label %85, label %53, !prof !327, !llvm.loop !328

59:                                               ; preds = %50, %82
  %60 = phi ptr [ %48, %50 ], [ %83, %82 ]
  %61 = phi ptr [ %45, %50 ], [ %60, %82 ]
  %62 = getelementptr inbounds %struct.he, ptr %60, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !121
  %64 = load i32, ptr %63, align 4, !tbaa !173
  %65 = icmp eq i32 %64, %32
  br i1 %65, label %66, label %82

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.hek, ptr %63, i64 0, i32 1
  %68 = load i32, ptr %67, align 4, !tbaa !184
  %69 = icmp eq i32 %68, %34
  br i1 %69, label %70, label %82

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.hek, ptr %63, i64 0, i32 2
  %72 = icmp eq ptr %71, %35
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = call i32 @bcmp(ptr nonnull %71, ptr %35, i64 %51)
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %73, %70
  %77 = sext i32 %68 to i64
  %78 = getelementptr inbounds i8, ptr %71, i64 %77
  %79 = getelementptr inbounds i8, ptr %78, i64 1
  %80 = load i8, ptr %79, align 1, !tbaa !150
  %81 = icmp eq i8 %80, %52
  br i1 %81, label %85, label %82

82:                                               ; preds = %76, %73, %66, %59
  %83 = load ptr, ptr %60, align 8, !tbaa !117
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %59, !llvm.loop !329

85:                                               ; preds = %53, %76, %82, %47
  %86 = phi ptr [ %48, %47 ], [ %83, %82 ], [ %60, %76 ], [ %55, %53 ]
  %87 = phi ptr [ %45, %47 ], [ %60, %82 ], [ %61, %76 ], [ %54, %53 ]
  %88 = icmp eq ptr %86, null
  br i1 %88, label %99, label %89, !prof !326

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.he, ptr %86, i64 0, i32 2
  %91 = load i64, ptr %90, align 8, !tbaa !150
  %92 = add i64 %91, -1
  store i64 %92, ptr %90, align 8, !tbaa !150
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %105, !prof !330

94:                                               ; preds = %89
  %95 = load ptr, ptr %86, align 8, !tbaa !123
  store ptr %95, ptr %87, align 8, !tbaa !117
  call void @Perl_safesysfree(ptr noundef nonnull %86) #16
  %96 = getelementptr inbounds %struct.xpvhv, ptr %37, i64 0, i32 2
  %97 = load i64, ptr %96, align 8, !tbaa !220
  %98 = add i64 %97, -1
  store i64 %98, ptr %96, align 8, !tbaa !220
  br label %105

99:                                               ; preds = %85
  %100 = getelementptr inbounds %struct.hek, ptr %0, i64 0, i32 2
  %101 = select i1 %7, ptr %35, ptr %100
  %102 = and i32 %31, 1
  %103 = icmp eq i32 %102, 0
  %104 = select i1 %103, ptr @.str.22, ptr @.str.21
  call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 24, ptr noundef nonnull @.str.20, ptr noundef %101, ptr noundef nonnull %104) #16
  br label %105

105:                                              ; preds = %94, %89, %99
  %106 = and i32 %31, 256
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %109, label %108, !prof !330

108:                                              ; preds = %105
  call void @Perl_safesysfree(ptr noundef %35) #16
  br label %109

109:                                              ; preds = %105, %108, %12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #16
  ret void
}

declare ptr @Perl_safesysrealloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_share_hek(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 !prof !464 {
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #16
  store i8 0, ptr %4, align 1, !tbaa !151
  %6 = icmp slt i32 %1, 0
  br i1 %6, label %7, label %24, !prof !456

7:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %8 = sub nsw i32 0, %1
  %9 = zext nneg i32 %8 to i64
  store i64 %9, ptr %5, align 8, !tbaa !129
  store i8 1, ptr %4, align 1, !tbaa !151
  %10 = call ptr @Perl_bytes_from_utf8(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %4) #16
  %11 = load i64, ptr %5, align 8, !tbaa !129
  %12 = trunc i64 %11 to i32
  %13 = load i8, ptr %4, align 1, !tbaa !151, !range !166, !noundef !167
  %14 = zext nneg i8 %13 to i32
  %15 = icmp eq ptr %10, %0
  br i1 %15, label %21, label %16

16:                                               ; preds = %7
  %17 = shl i64 %11, 32
  %18 = ashr exact i64 %17, 32
  %19 = call fastcc i32 @S_perl_hash_one_at_a_time_hard(ptr noundef %10, i64 noundef %18)
  %20 = or disjoint i32 %14, 258
  br label %21

21:                                               ; preds = %16, %7
  %22 = phi i32 [ %19, %16 ], [ %2, %7 ]
  %23 = phi i32 [ %20, %16 ], [ %14, %7 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  br label %24

24:                                               ; preds = %21, %3
  %25 = phi i32 [ %12, %21 ], [ %1, %3 ]
  %26 = phi i32 [ %22, %21 ], [ %2, %3 ]
  %27 = phi i32 [ %23, %21 ], [ 0, %3 ]
  %28 = phi ptr [ %10, %21 ], [ %0, %3 ]
  %29 = call fastcc ptr @S_share_hek_flags(ptr noundef %28, i32 noundef %25, i32 noundef %26, i32 noundef %27)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #16
  ret ptr %29
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_hv_ename_add(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !116 {
  %5 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !132
  %7 = and i32 %6, 33554432
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !150
  %12 = load ptr, ptr %0, align 8, !tbaa !157
  %13 = getelementptr inbounds %struct.xpvhv, ptr %12, i64 0, i32 3
  %14 = load i64, ptr %13, align 8, !tbaa !179
  %15 = getelementptr ptr, ptr %11, i64 %14
  %16 = getelementptr ptr, ptr %15, i64 1
  br label %19

17:                                               ; preds = %4
  %18 = tail call fastcc ptr @S_hv_auxinit(ptr noundef %0)
  br label %19

19:                                               ; preds = %17, %9
  %20 = phi ptr [ %16, %9 ], [ %18, %17 ]
  %21 = icmp slt i32 %2, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = zext i32 %2 to i64
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.6, i64 noundef %23) #16
  br label %24

24:                                               ; preds = %22, %19
  %25 = zext i32 %2 to i64
  %26 = tail call fastcc i32 @S_perl_hash_one_at_a_time_hard(ptr noundef %1, i64 noundef %25)
  %27 = getelementptr inbounds %struct.xpvhv_aux, ptr %20, i64 0, i32 4
  %28 = load i32, ptr %27, align 4, !tbaa !198
  %29 = icmp eq i32 %28, 0
  %30 = load ptr, ptr %20, align 8, !tbaa !150
  br i1 %29, label %91, label %31

31:                                               ; preds = %24
  %32 = icmp slt i32 %28, 0
  %33 = lshr i32 %28, 31
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds ptr, ptr %30, i64 %34
  %36 = sub nsw i32 0, %28
  %37 = ashr i32 %28, 31
  %38 = xor i32 %37, %28
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %73

40:                                               ; preds = %31
  %41 = zext nneg i32 %38 to i64
  %42 = getelementptr inbounds ptr, ptr %35, i64 %41
  %43 = and i32 %3, 536870912
  %44 = icmp eq i32 %43, 0
  br label %45

45:                                               ; preds = %40, %71
  %46 = phi ptr [ %42, %40 ], [ %47, %71 ]
  %47 = getelementptr inbounds ptr, ptr %46, i64 -1
  %48 = load ptr, ptr %47, align 8, !tbaa !117
  %49 = getelementptr inbounds %struct.hek, ptr %48, i64 0, i32 2
  %50 = getelementptr inbounds %struct.hek, ptr %48, i64 0, i32 1
  %51 = load i32, ptr %50, align 4, !tbaa !184
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, ptr %49, i64 %52
  %54 = getelementptr inbounds i8, ptr %53, i64 1
  %55 = load i8, ptr %54, align 1, !tbaa !150
  %56 = and i8 %55, 1
  %57 = icmp eq i8 %56, 0
  %58 = and i1 %44, %57
  br i1 %58, label %62, label %59

59:                                               ; preds = %45
  %60 = tail call fastcc i32 @hek_eq_pvn_flags(ptr noundef %48, ptr noundef %1, i32 noundef %2, i32 noundef %3), !range !465
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %71, label %67

62:                                               ; preds = %45
  %63 = icmp eq i32 %51, %2
  br i1 %63, label %64, label %71

64:                                               ; preds = %62
  %65 = tail call i32 @bcmp(ptr nonnull %49, ptr %1, i64 %25)
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %64, %59
  %68 = icmp eq ptr %47, %35
  %69 = and i1 %32, %68
  br i1 %69, label %70, label %124

70:                                               ; preds = %67
  store i32 %36, ptr %27, align 4, !tbaa !198
  br label %124

71:                                               ; preds = %64, %62, %59
  %72 = icmp ugt ptr %47, %35
  br i1 %72, label %45, label %73, !llvm.loop !466

73:                                               ; preds = %71, %31
  %74 = load i32, ptr %27, align 4, !tbaa !198
  %75 = select i1 %32, i32 -1, i32 1
  %76 = select i1 %32, i32 %36, i32 %28
  %77 = add nsw i32 %74, %75
  store i32 %77, ptr %27, align 4, !tbaa !198
  %78 = load ptr, ptr %20, align 8, !tbaa !150
  %79 = add nuw nsw i32 %76, 1
  %80 = sext i32 %79 to i64
  %81 = shl nsw i64 %80, 3
  %82 = tail call ptr @Perl_safesysrealloc(ptr noundef %78, i64 noundef %81) #16
  store ptr %82, ptr %20, align 8, !tbaa !150
  %83 = and i32 %3, 536870912
  %84 = icmp eq i32 %83, 0
  %85 = sub nsw i32 0, %2
  %86 = select i1 %84, i32 %2, i32 %85
  %87 = tail call ptr @Perl_share_hek(ptr noundef %1, i32 noundef %86, i32 noundef %26)
  %88 = load ptr, ptr %20, align 8, !tbaa !150
  %89 = sext i32 %76 to i64
  %90 = getelementptr inbounds ptr, ptr %88, i64 %89
  store ptr %87, ptr %90, align 8, !tbaa !117
  br label %124

91:                                               ; preds = %24
  %92 = icmp eq ptr %30, null
  br i1 %92, label %114, label %93

93:                                               ; preds = %91
  %94 = getelementptr inbounds %struct.hek, ptr %30, i64 0, i32 2
  %95 = getelementptr inbounds %struct.hek, ptr %30, i64 0, i32 1
  %96 = load i32, ptr %95, align 4, !tbaa !184
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, ptr %94, i64 %97
  %99 = getelementptr inbounds i8, ptr %98, i64 1
  %100 = load i8, ptr %99, align 1, !tbaa !150
  %101 = and i8 %100, 1
  %102 = icmp eq i8 %101, 0
  %103 = and i32 %3, 536870912
  %104 = icmp eq i32 %103, 0
  %105 = and i1 %104, %102
  br i1 %105, label %109, label %106

106:                                              ; preds = %93
  %107 = tail call fastcc i32 @hek_eq_pvn_flags(ptr noundef nonnull %30, ptr noundef %1, i32 noundef %2, i32 noundef %3), !range !465
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %114, label %124

109:                                              ; preds = %93
  %110 = icmp eq i32 %96, %2
  br i1 %110, label %111, label %114

111:                                              ; preds = %109
  %112 = tail call i32 @bcmp(ptr nonnull %94, ptr %1, i64 %25)
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %124, label %114

114:                                              ; preds = %111, %109, %106, %91
  %115 = phi i32 [ 2, %111 ], [ 2, %109 ], [ 2, %106 ], [ -2, %91 ]
  %116 = tail call ptr @Perl_safesysmalloc(i64 noundef 16) #16
  store ptr %116, ptr %20, align 8, !tbaa !150
  store i32 %115, ptr %27, align 4, !tbaa !198
  store ptr %30, ptr %116, align 8, !tbaa !117
  %117 = and i32 %3, 536870912
  %118 = icmp eq i32 %117, 0
  %119 = sub nsw i32 0, %2
  %120 = select i1 %118, i32 %2, i32 %119
  %121 = tail call ptr @Perl_share_hek(ptr noundef %1, i32 noundef %120, i32 noundef %26)
  %122 = load ptr, ptr %20, align 8, !tbaa !150
  %123 = getelementptr inbounds ptr, ptr %122, i64 1
  store ptr %121, ptr %123, align 8, !tbaa !117
  br label %124

124:                                              ; preds = %111, %73, %70, %67, %114, %106
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @hek_eq_pvn_flags(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !prof !116 {
  %5 = getelementptr inbounds %struct.hek, ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %struct.hek, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !184
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i8, ptr %5, i64 %8
  %10 = getelementptr inbounds i8, ptr %9, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !150
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

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_hv_ename_delete(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !116 {
  %5 = icmp slt i32 %2, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = zext i32 %2 to i64
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.6, i64 noundef %7) #16
  br label %8

8:                                                ; preds = %6, %4
  %9 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !132
  %11 = and i32 %10, 33554432
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %140, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !150
  %16 = load ptr, ptr %0, align 8, !tbaa !157
  %17 = getelementptr inbounds %struct.xpvhv, ptr %16, i64 0, i32 3
  %18 = load i64, ptr %17, align 8, !tbaa !179
  %19 = getelementptr ptr, ptr %15, i64 %18
  %20 = getelementptr ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !150
  %22 = icmp eq ptr %21, null
  br i1 %22, label %140, label %23

23:                                               ; preds = %13
  %24 = getelementptr i8, ptr %19, i64 36
  %25 = load i32, ptr %24, align 4, !tbaa !198
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %115, label %27

27:                                               ; preds = %23
  %28 = icmp slt i32 %25, 0
  %29 = sub nsw i32 0, %25
  %30 = select i1 %28, i32 %29, i32 %25
  %31 = sext i32 %30 to i64
  %32 = shl nsw i64 %31, 3
  %33 = getelementptr inbounds i8, ptr %21, i64 %32
  %34 = icmp slt i32 %30, 2
  br i1 %34, label %85, label %35

35:                                               ; preds = %27
  %36 = and i32 %3, 536870912
  %37 = icmp eq i32 %36, 0
  %38 = zext i32 %2 to i64
  br label %39

39:                                               ; preds = %35, %83
  %40 = phi i64 [ %32, %35 ], [ %41, %83 ]
  %41 = add nsw i64 %40, -8
  %42 = getelementptr inbounds i8, ptr %21, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !117
  %44 = getelementptr inbounds %struct.hek, ptr %43, i64 0, i32 2
  %45 = getelementptr inbounds %struct.hek, ptr %43, i64 0, i32 1
  %46 = load i32, ptr %45, align 4, !tbaa !184
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, ptr %44, i64 %47
  %49 = getelementptr inbounds i8, ptr %48, i64 1
  %50 = load i8, ptr %49, align 1, !tbaa !150
  %51 = and i8 %50, 1
  %52 = icmp eq i8 %51, 0
  %53 = and i1 %37, %52
  br i1 %53, label %57, label %54

54:                                               ; preds = %39
  %55 = tail call fastcc i32 @hek_eq_pvn_flags(ptr noundef %43, ptr noundef %1, i32 noundef %2, i32 noundef %3), !range !465
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %83, label %62

57:                                               ; preds = %39
  %58 = icmp eq i32 %46, %2
  br i1 %58, label %59, label %83

59:                                               ; preds = %57
  %60 = tail call i32 @bcmp(ptr nonnull %44, ptr %1, i64 %38)
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %83

62:                                               ; preds = %59, %54
  %63 = getelementptr inbounds i8, ptr %21, i64 %41
  %64 = load ptr, ptr %63, align 8, !tbaa !117
  tail call fastcc void @S_unshare_hek_or_pvn(ptr noundef %64, ptr noundef null, i32 noundef 0, i32 noundef 0)
  %65 = load ptr, ptr %14, align 8, !tbaa !150
  %66 = load ptr, ptr %0, align 8, !tbaa !157
  %67 = getelementptr inbounds %struct.xpvhv, ptr %66, i64 0, i32 3
  %68 = load i64, ptr %67, align 8, !tbaa !179
  %69 = getelementptr ptr, ptr %65, i64 %68
  %70 = getelementptr ptr, ptr %69, i64 1
  %71 = getelementptr i8, ptr %69, i64 36
  %72 = load i32, ptr %71, align 4, !tbaa !198
  %73 = select i1 %28, i32 1, i32 -1
  %74 = add nsw i32 %72, %73
  store i32 %74, ptr %71, align 4, !tbaa !198
  %75 = getelementptr i8, ptr %69, i64 36
  switch i32 %74, label %80 [
    i32 1, label %76
    i32 -1, label %76
  ]

76:                                               ; preds = %62, %62
  %77 = load ptr, ptr %21, align 8, !tbaa !117
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  tail call void @Perl_safesysfree(ptr noundef nonnull %21) #16
  store ptr null, ptr %70, align 8, !tbaa !150
  store i32 0, ptr %75, align 4, !tbaa !198
  br label %140

80:                                               ; preds = %62, %76
  %81 = getelementptr inbounds ptr, ptr %33, i64 -1
  %82 = load ptr, ptr %81, align 8, !tbaa !117
  store ptr %82, ptr %63, align 8, !tbaa !117
  br label %140

83:                                               ; preds = %59, %57, %54
  %84 = icmp slt i64 %40, 17
  br i1 %84, label %85, label %39, !llvm.loop !467

85:                                               ; preds = %83, %27
  %86 = icmp sgt i32 %25, 0
  br i1 %86, label %87, label %104

87:                                               ; preds = %85
  %88 = load ptr, ptr %21, align 8, !tbaa !117
  %89 = getelementptr inbounds %struct.hek, ptr %88, i64 0, i32 2
  %90 = getelementptr inbounds %struct.hek, ptr %88, i64 0, i32 1
  %91 = load i32, ptr %90, align 4, !tbaa !184
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, ptr %89, i64 %92
  %94 = getelementptr inbounds i8, ptr %93, i64 1
  %95 = load i8, ptr %94, align 1, !tbaa !150
  %96 = and i8 %95, 1
  %97 = icmp eq i8 %96, 0
  %98 = and i32 %3, 536870912
  %99 = icmp eq i32 %98, 0
  %100 = and i1 %99, %97
  br i1 %100, label %104, label %101

101:                                              ; preds = %87
  %102 = tail call fastcc i32 @hek_eq_pvn_flags(ptr noundef %88, ptr noundef %1, i32 noundef %2, i32 noundef %3), !range !465
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %140, label %114

104:                                              ; preds = %87, %85
  %105 = load ptr, ptr %21, align 8, !tbaa !117
  %106 = getelementptr inbounds %struct.hek, ptr %105, i64 0, i32 1
  %107 = load i32, ptr %106, align 4, !tbaa !184
  %108 = icmp eq i32 %107, %2
  br i1 %108, label %109, label %140

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.hek, ptr %105, i64 0, i32 2
  %111 = zext i32 %2 to i64
  %112 = tail call i32 @bcmp(ptr nonnull %110, ptr %1, i64 %111)
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %140

114:                                              ; preds = %109, %101
  store i32 %29, ptr %24, align 4, !tbaa !198
  br label %140

115:                                              ; preds = %23
  %116 = getelementptr inbounds %struct.hek, ptr %21, i64 0, i32 2
  %117 = getelementptr inbounds %struct.hek, ptr %21, i64 0, i32 1
  %118 = load i32, ptr %117, align 4, !tbaa !184
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, ptr %116, i64 %119
  %121 = getelementptr inbounds i8, ptr %120, i64 1
  %122 = load i8, ptr %121, align 1, !tbaa !150
  %123 = and i8 %122, 1
  %124 = icmp eq i8 %123, 0
  %125 = and i32 %3, 536870912
  %126 = icmp eq i32 %125, 0
  %127 = and i1 %126, %124
  br i1 %127, label %131, label %128

128:                                              ; preds = %115
  %129 = tail call fastcc i32 @hek_eq_pvn_flags(ptr noundef nonnull %21, ptr noundef %1, i32 noundef %2, i32 noundef %3), !range !465
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %140, label %137

131:                                              ; preds = %115
  %132 = icmp eq i32 %118, %2
  br i1 %132, label %133, label %140

133:                                              ; preds = %131
  %134 = zext i32 %2 to i64
  %135 = tail call i32 @bcmp(ptr nonnull %116, ptr %1, i64 %134)
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %133, %128
  %138 = load ptr, ptr %20, align 8, !tbaa !150
  %139 = tail call ptr @Perl_safesysmalloc(i64 noundef 8) #16
  store ptr %139, ptr %20, align 8, !tbaa !150
  store ptr %138, ptr %139, align 8, !tbaa !117
  store i32 -1, ptr %24, align 4, !tbaa !198
  br label %140

140:                                              ; preds = %101, %80, %79, %114, %109, %104, %137, %133, %131, %128, %13, %8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @Perl_hv_backreferences_p(ptr nocapture noundef %0) local_unnamed_addr #3 !prof !468 {
  %2 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !132
  %4 = and i32 %3, 33554432
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %14, label %6, !prof !469

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !150
  %9 = load ptr, ptr %0, align 8, !tbaa !157
  %10 = getelementptr inbounds %struct.xpvhv, ptr %9, i64 0, i32 3
  %11 = load i64, ptr %10, align 8, !tbaa !179
  %12 = getelementptr ptr, ptr %8, i64 %11
  %13 = getelementptr ptr, ptr %12, i64 1
  br label %16

14:                                               ; preds = %1
  %15 = tail call fastcc ptr @S_hv_auxinit(ptr noundef %0)
  br label %16

16:                                               ; preds = %14, %6
  %17 = phi ptr [ %13, %6 ], [ %15, %14 ]
  %18 = getelementptr inbounds %struct.xpvhv_aux, ptr %17, i64 0, i32 1
  ret ptr %18
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_hv_kill_backrefs(ptr noundef %0) local_unnamed_addr #3 !prof !470 {
  %2 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !132
  %4 = and i32 %3, 33554432
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %28, label %6, !prof !471

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !150
  %9 = load ptr, ptr %0, align 8, !tbaa !157
  %10 = getelementptr inbounds %struct.xpvhv, ptr %9, i64 0, i32 3
  %11 = load i64, ptr %10, align 8, !tbaa !179
  %12 = getelementptr ptr, ptr %8, i64 %11
  %13 = getelementptr ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8, !tbaa !446
  %15 = icmp eq ptr %14, null
  br i1 %15, label %28, label %16, !prof !472

16:                                               ; preds = %6
  store ptr null, ptr %13, align 8, !tbaa !446
  tail call void @Perl_sv_kill_backrefs(ptr noundef nonnull %0, ptr noundef nonnull %14) #16
  %17 = getelementptr inbounds %struct.av, ptr %14, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !473
  %19 = and i32 %18, 255
  %20 = icmp eq i32 %19, 11
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.sv, ptr %14, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !208
  %24 = icmp ugt i32 %23, 1
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = add i32 %23, -1
  store i32 %26, ptr %22, align 8, !tbaa !208
  br label %28

27:                                               ; preds = %21
  tail call void @Perl_sv_free2(ptr noundef nonnull %14, i32 noundef %23) #16
  br label %28

28:                                               ; preds = %27, %25, %6, %16, %1
  ret void
}

declare void @Perl_sv_kill_backrefs(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Perl_sv_setsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

declare i32 @Perl_magic_nextpack(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Perl_ck_warner_d(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_hv_iterkey(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !prof !475 {
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds %struct.he, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !121
  %6 = getelementptr inbounds %struct.hek, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !184
  %8 = icmp eq i32 %7, -2
  %9 = getelementptr inbounds %struct.hek, ptr %5, i64 0, i32 2
  br i1 %8, label %10, label %28, !prof !476

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %11 = load ptr, ptr %9, align 4, !tbaa !117
  %12 = getelementptr inbounds %struct.sv, ptr %11, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !144
  %14 = and i32 %13, 2098176
  %15 = icmp eq i32 %14, 1024
  br i1 %15, label %16, label %22

16:                                               ; preds = %10
  %17 = load ptr, ptr %11, align 8, !tbaa !147
  %18 = getelementptr inbounds %struct.xpv, ptr %17, i64 0, i32 2
  %19 = load i64, ptr %18, align 8, !tbaa !148
  store i64 %19, ptr %3, align 8, !tbaa !129
  %20 = getelementptr inbounds %struct.sv, ptr %11, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !150
  br label %24

22:                                               ; preds = %10
  %23 = call ptr @Perl_sv_2pv_flags(ptr noundef %11, ptr noundef nonnull %3, i32 noundef 2) #16
  br label %24

24:                                               ; preds = %22, %16
  %25 = phi ptr [ %21, %16 ], [ %23, %22 ]
  %26 = load i64, ptr %3, align 8, !tbaa !129
  %27 = trunc i64 %26 to i32
  store i32 %27, ptr %1, align 4, !tbaa !160
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  br label %29

28:                                               ; preds = %2
  store i32 %7, ptr %1, align 4, !tbaa !160
  br label %29

29:                                               ; preds = %28, %24
  %30 = phi ptr [ %25, %24 ], [ %9, %28 ]
  ret ptr %30
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_hv_iternextsv(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !prof !116 {
  %4 = tail call ptr @Perl_hv_iternext_flags(ptr noundef %0, i32 noundef 0)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @Perl_hv_iterkey(ptr noundef nonnull %4, ptr noundef %2)
  store ptr %7, ptr %1, align 8, !tbaa !117
  %8 = tail call ptr @Perl_hv_iterval(ptr noundef %0, ptr noundef nonnull %4)
  br label %9

9:                                                ; preds = %3, %6
  %10 = phi ptr [ %8, %6 ], [ null, %3 ]
  ret ptr %10
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_unsharepvn(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !116 {
  tail call fastcc void @S_unshare_hek_or_pvn(ptr noundef null, ptr noundef %0, i32 noundef %1, i32 noundef %2)
  ret void
}

declare ptr @Perl_sv_magicext(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_die(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @Perl_refcounted_he_chain_2hv(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !116 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.10, i64 noundef %5) #16
  br label %6

6:                                                ; preds = %4, %2
  %7 = tail call ptr @Perl_newSV_type(i32 noundef 12) #16
  %8 = load ptr, ptr %7, align 8, !tbaa !157
  %9 = getelementptr inbounds %struct.xpvhv, ptr %8, i64 0, i32 3
  %10 = load i64, ptr %9, align 8, !tbaa !179
  %11 = trunc i64 %10 to i32
  %12 = getelementptr inbounds %struct.hv, ptr %7, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !150
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %6
  %16 = shl i64 %10, 3
  %17 = add i64 %16, 8
  %18 = and i64 %17, 34359738360
  %19 = tail call ptr @Perl_safesyscalloc(i64 noundef %18, i64 noundef 1) #16
  store ptr %19, ptr %12, align 8, !tbaa !150
  br label %20

20:                                               ; preds = %15, %6
  %21 = icmp eq ptr %0, null
  br i1 %21, label %97, label %22

22:                                               ; preds = %20, %93
  %23 = phi ptr [ %95, %93 ], [ %0, %20 ]
  %24 = phi i32 [ %94, %93 ], [ 0, %20 ]
  %25 = getelementptr inbounds %struct.refcounted_he, ptr %23, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !477
  %27 = load i32, ptr %26, align 4, !tbaa !173
  %28 = load ptr, ptr %12, align 8, !tbaa !150
  %29 = and i32 %27, %11
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds ptr, ptr %28, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !117
  %33 = icmp eq ptr %32, null
  br i1 %33, label %69, label %34

34:                                               ; preds = %22
  %35 = getelementptr inbounds %struct.hek, ptr %26, i64 0, i32 1
  %36 = getelementptr inbounds %struct.hek, ptr %26, i64 0, i32 2
  %37 = getelementptr %struct.hek, ptr %26, i64 0, i32 2, i64 1
  br label %38

38:                                               ; preds = %34, %66
  %39 = phi ptr [ %32, %34 ], [ %67, %66 ]
  %40 = getelementptr inbounds %struct.he, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !121
  %42 = load i32, ptr %41, align 4, !tbaa !173
  %43 = icmp eq i32 %42, %27
  br i1 %43, label %44, label %66

44:                                               ; preds = %38
  %45 = icmp eq ptr %41, %26
  br i1 %45, label %93, label %46

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.hek, ptr %41, i64 0, i32 1
  %48 = load i32, ptr %47, align 4, !tbaa !184
  %49 = load i32, ptr %35, align 4, !tbaa !184
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.hek, ptr %41, i64 0, i32 2
  %53 = sext i32 %48 to i64
  %54 = getelementptr inbounds i8, ptr %52, i64 %53
  %55 = getelementptr inbounds i8, ptr %54, i64 1
  %56 = load i8, ptr %55, align 1, !tbaa !150
  %57 = sext i32 %49 to i64
  %58 = getelementptr i8, ptr %37, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !150
  %60 = xor i8 %59, %56
  %61 = and i8 %60, 1
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %51
  %64 = tail call i32 @bcmp(ptr nonnull %52, ptr nonnull %36, i64 %53)
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %93, label %66

66:                                               ; preds = %38, %63, %51, %46
  %67 = load ptr, ptr %39, align 8, !tbaa !117
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %38, !llvm.loop !479

69:                                               ; preds = %66, %22
  %70 = load ptr, ptr @PL_body_roots, align 16, !tbaa !117
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = tail call ptr @Perl_more_bodies(i32 noundef 0, i64 noundef 24, i64 noundef 4080) #16
  br label %74

74:                                               ; preds = %69, %72
  %75 = load ptr, ptr @PL_body_roots, align 16, !tbaa !117
  %76 = load ptr, ptr %75, align 8, !tbaa !123
  store ptr %76, ptr @PL_body_roots, align 16, !tbaa !117
  %77 = load ptr, ptr %25, align 8, !tbaa !477
  %78 = getelementptr inbounds i8, ptr %77, i64 -8
  %79 = load i64, ptr %78, align 8, !tbaa !150
  %80 = add i64 %79, 1
  store i64 %80, ptr %78, align 8, !tbaa !150
  %81 = load ptr, ptr %25, align 8, !tbaa !477
  %82 = getelementptr inbounds %struct.he, ptr %75, i64 0, i32 1
  store ptr %81, ptr %82, align 8, !tbaa !121
  %83 = tail call fastcc ptr @S_refcounted_he_value(ptr noundef nonnull %23)
  %84 = icmp eq ptr %83, @PL_sv_placeholder
  %85 = zext i1 %84 to i32
  %86 = add i32 %24, %85
  %87 = getelementptr inbounds %struct.he, ptr %75, i64 0, i32 2
  store ptr %83, ptr %87, align 8, !tbaa !150
  %88 = load ptr, ptr %31, align 8, !tbaa !117
  store ptr %88, ptr %75, align 8, !tbaa !123
  store ptr %75, ptr %31, align 8, !tbaa !117
  %89 = load ptr, ptr %7, align 8, !tbaa !157
  %90 = getelementptr inbounds %struct.xpvhv, ptr %89, i64 0, i32 2
  %91 = load i64, ptr %90, align 8, !tbaa !220
  %92 = add i64 %91, 1
  store i64 %92, ptr %90, align 8, !tbaa !220
  br label %93

93:                                               ; preds = %63, %44, %74
  %94 = phi i32 [ %86, %74 ], [ %24, %44 ], [ %24, %63 ]
  %95 = load ptr, ptr %23, align 8, !tbaa !480
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %22, !llvm.loop !481

97:                                               ; preds = %93, %20
  %98 = phi i32 [ 0, %20 ], [ %94, %93 ]
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %97
  tail call fastcc void @S_clear_placeholders(ptr noundef nonnull %7, i32 noundef %98)
  %101 = zext i32 %98 to i64
  %102 = load ptr, ptr %7, align 8, !tbaa !157
  %103 = getelementptr inbounds %struct.xpvhv, ptr %102, i64 0, i32 2
  %104 = load i64, ptr %103, align 8, !tbaa !220
  %105 = sub i64 %104, %101
  store i64 %105, ptr %103, align 8, !tbaa !220
  br label %106

106:                                              ; preds = %100, %97
  %107 = getelementptr inbounds %struct.hv, ptr %7, i64 0, i32 2
  %108 = load i32, ptr %107, align 4, !tbaa !132
  %109 = or i32 %108, -2147483648
  store i32 %109, ptr %107, align 4, !tbaa !132
  ret ptr %7
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @S_refcounted_he_value(ptr noundef %0) unnamed_addr #0 !prof !116 {
  %2 = getelementptr inbounds %struct.refcounted_he, ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 4, !tbaa !150
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
  %10 = load i64, ptr %9, align 8, !tbaa !150
  %11 = tail call ptr @Perl_newSViv(i64 noundef %10) #16
  br label %35

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.refcounted_he, ptr %0, i64 0, i32 2
  %14 = load i64, ptr %13, align 8, !tbaa !150
  %15 = tail call ptr @Perl_newSVuv(i64 noundef %14) #16
  br label %35

16:                                               ; preds = %1, %1
  %17 = tail call ptr @Perl_newSV_type(i32 noundef 3) #16
  %18 = getelementptr inbounds %struct.refcounted_he, ptr %0, i64 0, i32 4, i64 1
  %19 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 3
  store ptr %18, ptr %19, align 8, !tbaa !150
  %20 = getelementptr inbounds %struct.refcounted_he, ptr %0, i64 0, i32 2
  %21 = load i64, ptr %20, align 8, !tbaa !150
  %22 = load ptr, ptr %17, align 8, !tbaa !147
  %23 = getelementptr inbounds %struct.xpv, ptr %22, i64 0, i32 2
  store i64 %21, ptr %23, align 8, !tbaa !148
  %24 = getelementptr inbounds %struct.xpv, ptr %22, i64 0, i32 3
  store i64 0, ptr %24, align 8, !tbaa !150
  %25 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !144
  %27 = or i32 %26, 134300672
  store i32 %27, ptr %25, align 4, !tbaa !144
  %28 = load i8, ptr %2, align 4, !tbaa !150
  %29 = and i8 %28, 112
  %30 = icmp eq i8 %29, 80
  br i1 %30, label %31, label %35

31:                                               ; preds = %16
  %32 = or i32 %26, 671171584
  store i32 %32, ptr %25, align 4, !tbaa !144
  br label %35

33:                                               ; preds = %1
  %34 = sext i8 %3 to i64
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.23, i64 noundef %34) #16
  br label %35

35:                                               ; preds = %1, %16, %31, %33, %12, %8, %6
  %36 = phi ptr [ null, %33 ], [ %17, %31 ], [ %17, %16 ], [ %15, %12 ], [ %11, %8 ], [ %7, %6 ], [ @PL_sv_placeholder, %1 ]
  ret ptr %36
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_refcounted_he_fetch_pvn(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 !prof !482 {
  %6 = icmp ult i32 %4, 4
  br i1 %6, label %9, label %7, !prof !483

7:                                                ; preds = %5
  %8 = zext i32 %4 to i64
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.11, i64 noundef %8) #16
  br label %9

9:                                                ; preds = %7, %5
  %10 = icmp eq ptr %0, null
  br i1 %10, label %118, label %11, !prof !483

11:                                               ; preds = %9
  %12 = and i32 %4, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %71, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds i8, ptr %1, i64 %2
  %16 = icmp eq i64 %2, 0
  br i1 %16, label %43, label %17

17:                                               ; preds = %14
  %18 = ptrtoint ptr %15 to i64
  br label %19

19:                                               ; preds = %17, %38
  %20 = phi i64 [ 0, %17 ], [ %40, %38 ]
  %21 = phi ptr [ %1, %17 ], [ %41, %38 ]
  %22 = load i8, ptr %21, align 1, !tbaa !150
  %23 = icmp sgt i8 %22, -1
  br i1 %23, label %38, label %24

24:                                               ; preds = %19
  %25 = and i8 %22, -2
  %26 = icmp eq i8 %25, -62
  %27 = ptrtoint ptr %21 to i64
  %28 = sub i64 %18, %27
  %29 = icmp sgt i64 %28, 1
  %30 = and i1 %29, %26
  br i1 %30, label %31, label %71

31:                                               ; preds = %24
  %32 = getelementptr inbounds i8, ptr %21, i64 1
  %33 = load i8, ptr %32, align 1, !tbaa !150
  %34 = and i8 %33, -64
  %35 = icmp eq i8 %34, -128
  br i1 %35, label %36, label %71

36:                                               ; preds = %31
  %37 = add i64 %20, 1
  br label %38

38:                                               ; preds = %19, %36
  %39 = phi ptr [ %21, %19 ], [ %32, %36 ]
  %40 = phi i64 [ %20, %19 ], [ %37, %36 ]
  %41 = getelementptr inbounds i8, ptr %39, i64 1
  %42 = icmp eq ptr %41, %15
  br i1 %42, label %43, label %19, !llvm.loop !484

43:                                               ; preds = %38, %14
  %44 = phi i64 [ 0, %14 ], [ %40, %38 ]
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %67, label %46

46:                                               ; preds = %43
  %47 = sub i64 %2, %44
  %48 = tail call ptr @Perl_safesysmalloc(i64 noundef %47) #16
  tail call void @Perl_save_pushptr(ptr noundef %48, i32 noundef 10) #16
  %49 = icmp eq i64 %2, 0
  br i1 %49, label %67, label %50

50:                                               ; preds = %46, %61
  %51 = phi ptr [ %64, %61 ], [ %1, %46 ]
  %52 = phi ptr [ %65, %61 ], [ %48, %46 ]
  %53 = load i8, ptr %51, align 1, !tbaa !150
  %54 = icmp sgt i8 %53, -1
  br i1 %54, label %61, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds i8, ptr %51, i64 1
  %57 = shl i8 %53, 6
  %58 = load i8, ptr %56, align 1, !tbaa !150
  %59 = and i8 %58, 63
  %60 = or disjoint i8 %59, %57
  br label %61

61:                                               ; preds = %50, %55
  %62 = phi i8 [ %60, %55 ], [ %53, %50 ]
  %63 = phi ptr [ %56, %55 ], [ %51, %50 ]
  store i8 %62, ptr %52, align 1, !tbaa !150
  %64 = getelementptr inbounds i8, ptr %63, i64 1
  %65 = getelementptr inbounds i8, ptr %52, i64 1
  %66 = icmp eq ptr %64, %15
  br i1 %66, label %67, label %50, !llvm.loop !485

67:                                               ; preds = %61, %46, %43
  %68 = phi i64 [ %2, %43 ], [ %47, %46 ], [ %47, %61 ]
  %69 = phi ptr [ %1, %43 ], [ %48, %46 ], [ %48, %61 ]
  %70 = and i32 %4, -2
  br label %71

71:                                               ; preds = %31, %24, %67, %11
  %72 = phi i32 [ %4, %11 ], [ %70, %67 ], [ %4, %24 ], [ %4, %31 ]
  %73 = phi i64 [ %2, %11 ], [ %68, %67 ], [ %2, %24 ], [ %2, %31 ]
  %74 = phi ptr [ %1, %11 ], [ %69, %67 ], [ %1, %24 ], [ %1, %31 ]
  %75 = and i32 %72, 1
  %76 = icmp eq i32 %3, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = tail call fastcc i32 @S_perl_hash_one_at_a_time_hard(ptr noundef %74, i64 noundef %73)
  br label %79

79:                                               ; preds = %77, %71
  %80 = phi i32 [ %3, %71 ], [ %78, %77 ]
  br label %81

81:                                               ; preds = %79, %115
  %82 = phi ptr [ %0, %79 ], [ %116, %115 ]
  %83 = getelementptr inbounds %struct.refcounted_he, ptr %82, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !477
  %85 = load i32, ptr %84, align 4, !tbaa !173
  %86 = icmp eq i32 %80, %85
  br i1 %86, label %87, label %115

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.hek, ptr %84, i64 0, i32 1
  %89 = load i32, ptr %88, align 4, !tbaa !184
  %90 = sext i32 %89 to i64
  %91 = icmp eq i64 %73, %90
  br i1 %91, label %92, label %115

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.hek, ptr %84, i64 0, i32 2
  %94 = tail call i32 @bcmp(ptr nonnull %93, ptr %74, i64 %73)
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %115

96:                                               ; preds = %92
  %97 = getelementptr inbounds i8, ptr %93, i64 %90
  %98 = getelementptr inbounds i8, ptr %97, i64 1
  %99 = load i8, ptr %98, align 1, !tbaa !150
  %100 = and i8 %99, 1
  %101 = zext nneg i8 %100 to i32
  %102 = icmp eq i32 %75, %101
  br i1 %102, label %103, label %115

103:                                              ; preds = %96
  %104 = and i32 %72, 2
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %112, label %106

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.refcounted_he, ptr %82, i64 0, i32 4
  %108 = load i8, ptr %107, align 4, !tbaa !150
  %109 = and i8 %108, 112
  %110 = icmp eq i8 %109, 16
  %111 = select i1 %110, ptr null, ptr @PL_sv_yes
  br label %123

112:                                              ; preds = %103
  %113 = tail call fastcc ptr @S_refcounted_he_value(ptr noundef nonnull %82)
  %114 = tail call ptr @Perl_sv_2mortal(ptr noundef %113) #16
  br label %123

115:                                              ; preds = %81, %87, %92, %96
  %116 = load ptr, ptr %82, align 8, !tbaa !480
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %81, !llvm.loop !486

118:                                              ; preds = %115, %9
  %119 = phi i32 [ %4, %9 ], [ %72, %115 ]
  %120 = and i32 %119, 2
  %121 = icmp eq i32 %120, 0
  %122 = select i1 %121, ptr @PL_sv_placeholder, ptr null, !prof !483
  br label %123

123:                                              ; preds = %118, %112, %106
  %124 = phi ptr [ %111, %106 ], [ %114, %112 ], [ %122, %118 ]
  ret ptr %124
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_refcounted_he_fetch_pv(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !116 {
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17
  %6 = tail call ptr @Perl_refcounted_he_fetch_pvn(ptr noundef %0, ptr noundef %1, i64 noundef %5, i32 noundef %2, i32 noundef %3)
  ret ptr %6
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_refcounted_he_fetch_sv(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !116 {
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %6 = and i32 %3, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = zext i32 %3 to i64
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.12, i64 noundef %9) #16
  br label %10

10:                                               ; preds = %8, %4
  %11 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !144
  %13 = and i32 %12, 2098176
  %14 = icmp eq i32 %13, 1024
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load ptr, ptr %1, align 8, !tbaa !147
  %17 = getelementptr inbounds %struct.xpv, ptr %16, i64 0, i32 2
  %18 = load i64, ptr %17, align 8, !tbaa !148
  store i64 %18, ptr %5, align 8, !tbaa !129
  %19 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !150
  br label %23

21:                                               ; preds = %10
  %22 = call ptr @Perl_sv_2pv_flags(ptr noundef %1, ptr noundef nonnull %5, i32 noundef 34) #16
  br label %23

23:                                               ; preds = %21, %15
  %24 = phi ptr [ %20, %15 ], [ %22, %21 ]
  %25 = load i32, ptr %11, align 4, !tbaa !144
  %26 = icmp eq i32 %2, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %23
  %28 = and i32 %25, 268435456
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr %1, align 8, !tbaa !147
  %32 = getelementptr inbounds %struct.xpv, ptr %31, i64 0, i32 3
  %33 = load i64, ptr %32, align 8, !tbaa !150
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !150
  %38 = getelementptr inbounds i8, ptr %37, i64 -8
  %39 = load i32, ptr %38, align 4, !tbaa !173
  br label %40

40:                                               ; preds = %35, %30, %27, %23
  %41 = phi i32 [ %2, %23 ], [ %39, %35 ], [ 0, %30 ], [ 0, %27 ]
  %42 = lshr i32 %25, 29
  %43 = and i32 %42, 1
  %44 = or i32 %43, %3
  %45 = load i64, ptr %5, align 8, !tbaa !129
  %46 = call ptr @Perl_refcounted_he_fetch_pvn(ptr noundef %0, ptr noundef %24, i64 noundef %45, i32 noundef %41, i32 noundef %44)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  ret ptr %46
}

; Function Attrs: cold nounwind uwtable
define dso_local noalias noundef ptr @Perl_refcounted_he_new_pvn(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 !prof !306 {
  %7 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  store i64 0, ptr %7, align 8, !tbaa !129
  %8 = icmp eq ptr %4, null
  %9 = icmp eq ptr %4, @PL_sv_placeholder
  %10 = or i1 %8, %9
  br i1 %10, label %33, label %11, !prof !487

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !144
  %14 = and i32 %13, 1024
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %33, !prof !488

16:                                               ; preds = %11
  %17 = and i32 %13, 256
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19, !prof !489

19:                                               ; preds = %16
  %20 = and i32 %13, -2147483392
  %21 = icmp eq i32 %20, -2147483392
  %22 = select i1 %21, i8 48, i8 32, !prof !489
  br label %33

23:                                               ; preds = %16
  %24 = and i32 %13, 64000
  %25 = icmp ne i32 %24, 0
  %26 = and i32 %13, 255
  %27 = icmp eq i32 %26, 8
  %28 = or i1 %25, %27
  %29 = and i32 %13, 16777471
  %30 = icmp eq i32 %29, 16777226
  %31 = or i1 %30, %28
  %32 = select i1 %31, i8 64, i8 0
  br label %33

33:                                               ; preds = %23, %11, %6, %19
  %34 = phi i8 [ %22, %19 ], [ 16, %6 ], [ 64, %11 ], [ %32, %23 ]
  %35 = icmp eq i8 %34, 64
  br i1 %35, label %36, label %57, !prof !490

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !144
  %39 = and i32 %38, 2098176
  %40 = icmp eq i32 %39, 1024
  br i1 %40, label %41, label %47, !prof !491

41:                                               ; preds = %36
  %42 = load ptr, ptr %4, align 8, !tbaa !147
  %43 = getelementptr inbounds %struct.xpv, ptr %42, i64 0, i32 2
  %44 = load i64, ptr %43, align 8, !tbaa !148
  store i64 %44, ptr %7, align 8, !tbaa !129
  %45 = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !150
  br label %49

47:                                               ; preds = %36
  %48 = call ptr @Perl_sv_2pv_flags(ptr noundef %4, ptr noundef nonnull %7, i32 noundef 34) #16
  br label %49

49:                                               ; preds = %47, %41
  %50 = phi ptr [ %46, %41 ], [ %48, %47 ]
  %51 = load i32, ptr %37, align 4, !tbaa !144
  %52 = and i32 %51, 536870912
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %53, i8 %34, i8 80, !prof !491
  %55 = load i64, ptr %7, align 8, !tbaa !129
  %56 = add i64 %55, 33
  br label %57

57:                                               ; preds = %49, %33
  %58 = phi ptr [ %50, %49 ], [ null, %33 ]
  %59 = phi i8 [ %54, %49 ], [ %34, %33 ]
  %60 = phi i64 [ %56, %49 ], [ 32, %33 ]
  %61 = and i32 %5, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %116, label %63, !prof !492

63:                                               ; preds = %57
  %64 = getelementptr inbounds i8, ptr %1, i64 %2
  %65 = icmp eq i64 %2, 0
  br i1 %65, label %92, label %66

66:                                               ; preds = %63
  %67 = ptrtoint ptr %64 to i64
  br label %68

68:                                               ; preds = %66, %87
  %69 = phi i64 [ 0, %66 ], [ %89, %87 ]
  %70 = phi ptr [ %1, %66 ], [ %90, %87 ]
  %71 = load i8, ptr %70, align 1, !tbaa !150
  %72 = icmp sgt i8 %71, -1
  br i1 %72, label %87, label %73

73:                                               ; preds = %68
  %74 = and i8 %71, -2
  %75 = icmp eq i8 %74, -62
  %76 = ptrtoint ptr %70 to i64
  %77 = sub i64 %67, %76
  %78 = icmp sgt i64 %77, 1
  %79 = and i1 %78, %75
  br i1 %79, label %80, label %116

80:                                               ; preds = %73
  %81 = getelementptr inbounds i8, ptr %70, i64 1
  %82 = load i8, ptr %81, align 1, !tbaa !150
  %83 = and i8 %82, -64
  %84 = icmp eq i8 %83, -128
  br i1 %84, label %85, label %116

85:                                               ; preds = %80
  %86 = add i64 %69, 1
  br label %87

87:                                               ; preds = %68, %85
  %88 = phi ptr [ %70, %68 ], [ %81, %85 ]
  %89 = phi i64 [ %69, %68 ], [ %86, %85 ]
  %90 = getelementptr inbounds i8, ptr %88, i64 1
  %91 = icmp eq ptr %90, %64
  br i1 %91, label %92, label %68, !llvm.loop !493

92:                                               ; preds = %87, %63
  %93 = phi i64 [ 0, %63 ], [ %89, %87 ]
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %116, label %95

95:                                               ; preds = %92
  %96 = sub i64 %2, %93
  %97 = call ptr @Perl_safesysmalloc(i64 noundef %96) #16
  call void @Perl_save_pushptr(ptr noundef %97, i32 noundef 10) #16
  %98 = icmp eq i64 %2, 0
  br i1 %98, label %116, label %99

99:                                               ; preds = %95, %110
  %100 = phi ptr [ %113, %110 ], [ %1, %95 ]
  %101 = phi ptr [ %114, %110 ], [ %97, %95 ]
  %102 = load i8, ptr %100, align 1, !tbaa !150
  %103 = icmp sgt i8 %102, -1
  br i1 %103, label %110, label %104

104:                                              ; preds = %99
  %105 = getelementptr inbounds i8, ptr %100, i64 1
  %106 = shl i8 %102, 6
  %107 = load i8, ptr %105, align 1, !tbaa !150
  %108 = and i8 %107, 63
  %109 = or disjoint i8 %108, %106
  br label %110

110:                                              ; preds = %99, %104
  %111 = phi i8 [ %109, %104 ], [ %102, %99 ]
  %112 = phi ptr [ %105, %104 ], [ %100, %99 ]
  store i8 %111, ptr %101, align 1, !tbaa !150
  %113 = getelementptr inbounds i8, ptr %112, i64 1
  %114 = getelementptr inbounds i8, ptr %101, i64 1
  %115 = icmp eq ptr %113, %64
  br i1 %115, label %116, label %99, !llvm.loop !494

116:                                              ; preds = %80, %73, %110, %92, %95, %57
  %117 = phi i32 [ %5, %57 ], [ 0, %95 ], [ 0, %92 ], [ 0, %110 ], [ %5, %73 ], [ %5, %80 ]
  %118 = phi i64 [ %2, %57 ], [ %96, %95 ], [ %2, %92 ], [ %96, %110 ], [ %2, %73 ], [ %2, %80 ]
  %119 = phi ptr [ %1, %57 ], [ %97, %95 ], [ %1, %92 ], [ %97, %110 ], [ %1, %73 ], [ %1, %80 ]
  %120 = icmp eq i32 %3, 0
  br i1 %120, label %121, label %123, !prof !492

121:                                              ; preds = %116
  %122 = call fastcc i32 @S_perl_hash_one_at_a_time_hard(ptr noundef %119, i64 noundef %118)
  br label %123

123:                                              ; preds = %121, %116
  %124 = phi i32 [ %3, %116 ], [ %122, %121 ]
  %125 = call noalias ptr @malloc(i64 noundef %60) #18
  store ptr %0, ptr %125, align 8, !tbaa !480
  br i1 %35, label %126, label %130, !prof !490

126:                                              ; preds = %123
  %127 = getelementptr inbounds %struct.refcounted_he, ptr %125, i64 0, i32 4, i64 1
  %128 = load i64, ptr %7, align 8, !tbaa !129
  %129 = add i64 %128, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %127, ptr align 1 %58, i64 %129, i1 false), !prof !495
  br label %139

130:                                              ; preds = %123
  switch i8 %59, label %142 [
    i8 32, label %131
    i8 48, label %135
  ], !prof !496

131:                                              ; preds = %130
  %132 = load ptr, ptr %4, align 8, !tbaa !147
  %133 = getelementptr inbounds %struct.xpviv, ptr %132, i64 0, i32 4
  %134 = load i64, ptr %133, align 8, !tbaa !150
  br label %139

135:                                              ; preds = %130
  %136 = load ptr, ptr %4, align 8, !tbaa !147
  %137 = getelementptr inbounds %struct.xpvuv, ptr %136, i64 0, i32 4
  %138 = load i64, ptr %137, align 8, !tbaa !150
  br label %139

139:                                              ; preds = %126, %135, %131
  %140 = phi i64 [ %134, %131 ], [ %138, %135 ], [ %128, %126 ]
  %141 = getelementptr inbounds %struct.refcounted_he, ptr %125, i64 0, i32 2
  store i64 %140, ptr %141, align 8, !tbaa !150
  br label %142

142:                                              ; preds = %139, %130
  %143 = trunc i32 %117 to i8
  %144 = and i8 %143, 1
  %145 = or i8 %144, %59
  %146 = trunc i64 %118 to i32
  %147 = sext i8 %145 to i32
  %148 = call fastcc ptr @S_share_hek_flags(ptr noundef %119, i32 noundef %146, i32 noundef %124, i32 noundef %147)
  %149 = getelementptr inbounds %struct.refcounted_he, ptr %125, i64 0, i32 1
  store ptr %148, ptr %149, align 8, !tbaa !477
  %150 = getelementptr inbounds %struct.refcounted_he, ptr %125, i64 0, i32 4
  store i8 %145, ptr %150, align 4, !tbaa !150
  %151 = getelementptr inbounds %struct.refcounted_he, ptr %125, i64 0, i32 3
  store i32 1, ptr %151, align 8, !tbaa !497
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  ret ptr %125
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: cold nounwind uwtable
define dso_local noalias noundef ptr @Perl_refcounted_he_new_pv(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 !prof !116 {
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17
  %7 = tail call ptr @Perl_refcounted_he_new_pvn(ptr noundef %0, ptr noundef %1, i64 noundef %6, i32 noundef %2, ptr noundef %3, i32 noundef %4)
  ret ptr %7
}

; Function Attrs: cold nounwind uwtable
define dso_local noalias noundef ptr @Perl_refcounted_he_new_sv(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 !prof !498 {
  %6 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  %7 = and i32 %4, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9, !prof !499

9:                                                ; preds = %5
  %10 = zext i32 %4 to i64
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.13, i64 noundef %10) #16
  br label %11

11:                                               ; preds = %9, %5
  %12 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !144
  %14 = and i32 %13, 2098176
  %15 = icmp eq i32 %14, 1024
  br i1 %15, label %16, label %22, !prof !499

16:                                               ; preds = %11
  %17 = load ptr, ptr %1, align 8, !tbaa !147
  %18 = getelementptr inbounds %struct.xpv, ptr %17, i64 0, i32 2
  %19 = load i64, ptr %18, align 8, !tbaa !148
  store i64 %19, ptr %6, align 8, !tbaa !129
  %20 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !150
  br label %24

22:                                               ; preds = %11
  %23 = call ptr @Perl_sv_2pv_flags(ptr noundef %1, ptr noundef nonnull %6, i32 noundef 34) #16
  br label %24

24:                                               ; preds = %22, %16
  %25 = phi ptr [ %21, %16 ], [ %23, %22 ]
  %26 = load i32, ptr %12, align 4, !tbaa !144
  %27 = icmp eq i32 %2, 0
  br i1 %27, label %28, label %41, !prof !499

28:                                               ; preds = %24
  %29 = and i32 %26, 268435456
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %41, label %31, !prof !499

31:                                               ; preds = %28
  %32 = load ptr, ptr %1, align 8, !tbaa !147
  %33 = getelementptr inbounds %struct.xpv, ptr %32, i64 0, i32 3
  %34 = load i64, ptr %33, align 8, !tbaa !150
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !150
  %39 = getelementptr inbounds i8, ptr %38, i64 -8
  %40 = load i32, ptr %39, align 4, !tbaa !173
  br label %41

41:                                               ; preds = %36, %31, %28, %24
  %42 = phi i32 [ %2, %24 ], [ %40, %36 ], [ 0, %31 ], [ 0, %28 ]
  %43 = lshr i32 %26, 29
  %44 = and i32 %43, 1
  %45 = or i32 %44, %4
  %46 = load i64, ptr %6, align 8, !tbaa !129
  %47 = call ptr @Perl_refcounted_he_new_pvn(ptr noundef %0, ptr noundef %25, i64 noundef %46, i32 noundef %42, ptr noundef %3, i32 noundef %45)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  ret ptr %47
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_refcounted_he_free(ptr noundef %0) local_unnamed_addr #3 !prof !500 {
  br label %2

2:                                                ; preds = %14, %1
  %3 = phi ptr [ %0, %1 ], [ %15, %14 ]
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5, !prof !501

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.refcounted_he, ptr %3, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !497
  %8 = add i32 %7, -1
  store i32 %8, ptr %6, align 8, !tbaa !497
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14, !prof !502

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.refcounted_he, ptr %3, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !477
  tail call fastcc void @S_unshare_hek_or_pvn(ptr noundef %12, ptr noundef null, i32 noundef 0, i32 noundef 0)
  %13 = load ptr, ptr %3, align 8, !tbaa !480
  tail call void @free(ptr noundef %3) #16
  br label %14

14:                                               ; preds = %5, %10
  %15 = phi ptr [ %13, %10 ], [ %3, %5 ]
  br i1 %9, label %2, label %16, !prof !502

16:                                               ; preds = %14, %2
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef ptr @Perl_refcounted_he_inc(ptr noundef returned %0) local_unnamed_addr #11 !prof !503 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3, !prof !504

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.refcounted_he, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !497
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 8, !tbaa !497
  br label %7

7:                                                ; preds = %3, %1
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @Perl_cop_fetch_label(ptr nocapture noundef readonly %0, ptr noundef writeonly %1, ptr noundef writeonly %2) local_unnamed_addr #12 !prof !505 {
  %4 = getelementptr inbounds %struct.cop, ptr %0, i64 0, i32 13
  %5 = load ptr, ptr %4, align 8, !tbaa !506
  %6 = icmp eq ptr %5, null
  br i1 %6, label %35, label %7, !prof !508

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.refcounted_he, ptr %5, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !477
  %10 = getelementptr inbounds %struct.hek, ptr %9, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !184
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %35, !prof !509

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.hek, ptr %9, i64 0, i32 2
  %15 = load i8, ptr %14, align 4, !tbaa !150
  %16 = icmp eq i8 %15, 58
  br i1 %16, label %17, label %35, !prof !510

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.refcounted_he, ptr %5, i64 0, i32 4
  %19 = load i8, ptr %18, align 4, !tbaa !150
  %20 = and i8 %19, 112
  switch i8 %20, label %35 [
    i8 64, label %21
    i8 80, label %21
  ], !prof !511

21:                                               ; preds = %17, %17
  %22 = icmp eq ptr %1, null
  br i1 %22, label %26, label %23, !prof !512

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.refcounted_he, ptr %5, i64 0, i32 2
  %25 = load i64, ptr %24, align 8, !tbaa !150
  store i64 %25, ptr %1, align 8, !tbaa !129
  br label %26

26:                                               ; preds = %23, %21
  %27 = icmp eq ptr %2, null
  br i1 %27, label %33, label %28, !prof !512

28:                                               ; preds = %26
  %29 = load i8, ptr %18, align 4, !tbaa !150
  %30 = and i8 %29, 112
  %31 = icmp eq i8 %30, 80
  %32 = select i1 %31, i32 536870912, i32 0, !prof !513
  store i32 %32, ptr %2, align 4, !tbaa !160
  br label %33

33:                                               ; preds = %28, %26
  %34 = getelementptr inbounds %struct.refcounted_he, ptr %5, i64 0, i32 4, i64 1
  br label %35

35:                                               ; preds = %17, %13, %7, %3, %33
  %36 = phi ptr [ %34, %33 ], [ null, %3 ], [ null, %7 ], [ null, %13 ], [ null, %17 ]
  ret ptr %36
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_cop_store_label(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !514 {
  %5 = and i32 %3, -536870913
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7, !prof !491

7:                                                ; preds = %4
  %8 = zext i32 %3 to i64
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.14, i64 noundef %8) #16
  br label %9

9:                                                ; preds = %7, %4
  %10 = tail call ptr @Perl_newSVpvn_flags(ptr noundef %1, i64 noundef %2, i32 noundef 524288) #16
  %11 = and i32 %3, 536870912
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13, !prof !491

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.sv, ptr %10, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !144
  %16 = or i32 %15, 536870912
  store i32 %16, ptr %14, align 4, !tbaa !144
  br label %17

17:                                               ; preds = %13, %9
  %18 = getelementptr inbounds %struct.cop, ptr %0, i64 0, i32 13
  %19 = load ptr, ptr %18, align 8, !tbaa !506
  %20 = tail call ptr @Perl_refcounted_he_new_pvn(ptr noundef %19, ptr noundef nonnull @.str.15, i64 noundef 1, i32 noundef 0, ptr noundef %10, i32 noundef 0)
  store ptr %20, ptr %18, align 8, !tbaa !506
  ret void
}

declare ptr @Perl_more_bodies(i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_sv_setpvn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @Perl_sv_usepvn_flags(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Perl_sv_unmagic(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #7

declare void @Perl_mro_method_changed_in(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #9

declare i32 @Perl_bytes_cmp_utf8(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_newSViv(i64 noundef) local_unnamed_addr #2

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

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nofree nounwind willreturn memory(argmem: read) }
attributes #16 = { nounwind }
attributes #17 = { nounwind willreturn memory(read) }
attributes #18 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!115}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 53336217263}
!8 = !{!"MaxCount", i64 1126593358}
!9 = !{!"MaxInternalCount", i64 1126593358}
!10 = !{!"MaxFunctionCount", i64 465576726}
!11 = !{!"NumCounts", i64 53216}
!12 = !{!"NumFunctions", i64 2490}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1126593358, i32 1}
!18 = !{i32 100000, i64 852534058, i32 6}
!19 = !{i32 200000, i64 504831111, i32 16}
!20 = !{i32 300000, i64 482068791, i32 26}
!21 = !{i32 400000, i64 459921484, i32 39}
!22 = !{i32 500000, i64 444801476, i32 50}
!23 = !{i32 600000, i64 426267029, i32 64}
!24 = !{i32 700000, i64 422040304, i32 74}
!25 = !{i32 800000, i64 220037356, i32 89}
!26 = !{i32 900000, i64 39885265, i32 162}
!27 = !{i32 950000, i64 20973884, i32 262}
!28 = !{i32 990000, i64 1545742, i32 632}
!29 = !{i32 999000, i64 97988, i32 1692}
!30 = !{i32 999900, i64 9981, i32 2885}
!31 = !{i32 999990, i64 671, i32 4392}
!32 = !{i32 999999, i64 57, i32 6648}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114}
!35 = !{ptr @Perl_hv_common_key_len, ptr @Perl_hv_common, i64 633472}
!36 = !{ptr @Perl_hv_common, ptr @Perl_sv_2pv_flags, i64 118389}
!37 = !{ptr @Perl_hv_common, ptr @Perl_hv_common, i64 28143}
!38 = !{ptr @Perl_hv_common, ptr @Perl_mg_clear, i64 14109}
!39 = !{ptr @Perl_hv_common, ptr @bcmp, i64 1966438}
!40 = !{ptr @Perl_hv_common, ptr @Perl_sv_2mortal, i64 20512}
!41 = !{ptr @Perl_hv_common, ptr @Perl_mro_method_changed_in, i64 3}
!42 = !{ptr @Perl_hv_common, ptr @S_hv_free_ent_ret, i64 118495}
!43 = !{ptr @Perl_hv_common, ptr @Perl_sv_free2, i64 100739}
!44 = !{ptr @Perl_hv_common, ptr @Perl_mg_find, i64 245829}
!45 = !{ptr @Perl_hv_common, ptr @Perl_newSVsv, i64 14121}
!46 = !{ptr @Perl_hv_common, ptr @Perl_sv_newmortal, i64 10}
!47 = !{ptr @Perl_hv_common, ptr @Perl_mg_copy, i64 14200}
!48 = !{ptr @Perl_hv_common, ptr @Perl_safesysmalloc, i64 3}
!49 = !{ptr @Perl_hv_common, ptr @Perl_sv_upgrade, i64 10}
!50 = !{ptr @Perl_hv_common, ptr @Perl_safesyscalloc, i64 25977}
!51 = !{ptr @Perl_hv_common, ptr @Perl_newSV, i64 548785}
!52 = !{ptr @Perl_hv_common, ptr @Perl_more_bodies, i64 180}
!53 = !{ptr @Perl_hv_common, ptr @S_share_hek_flags, i64 739774}
!54 = !{ptr @Perl_hv_common, ptr @S_hsplit, i64 29581}
!55 = !{ptr @S_share_hek_flags, ptr @bcmp, i64 355633}
!56 = !{ptr @S_share_hek_flags, ptr @Perl_safesysmalloc, i64 21802}
!57 = !{ptr @S_share_hek_flags, ptr @S_hsplit, i64 1}
!58 = !{ptr @Perl_unshare_hek, ptr @Perl_safesysfree, i64 67061}
!59 = !{ptr @S_hsplit, ptr @Perl_safesysrealloc, i64 29799}
!60 = !{ptr @Perl_hv_scalar, ptr @Perl_sv_newmortal, i64 1}
!61 = !{ptr @Perl_hv_scalar, ptr @Perl_hv_fill, i64 1}
!62 = !{ptr @Perl_hv_scalar, ptr @Perl_sv_setpvf, i64 1}
!63 = !{ptr @Perl_hv_ksplit, ptr @Perl_safesyscalloc, i64 1}
!64 = !{ptr @Perl_newHVhv, ptr @Perl_newSV_type, i64 26}
!65 = !{ptr @Perl_newHVhv, ptr @Perl_safesysmalloc, i64 26}
!66 = !{ptr @Perl_newHVhv, ptr @S_share_hek_flags, i64 55}
!67 = !{ptr @Perl_hv_iterinit, ptr @S_hv_auxinit, i64 12102}
!68 = !{ptr @Perl_hv_iternext_flags, ptr @Perl_hv_iterinit, i64 25}
!69 = !{ptr @Perl_hv_iternext_flags, ptr @Perl_mg_find, i64 86}
!70 = !{ptr @Perl_hv_iterval, ptr @Perl_mg_find, i64 21}
!71 = !{ptr @Perl_hv_copy_hints_hv, ptr @Perl_newSV_type, i64 22}
!72 = !{ptr @Perl_hv_copy_hints_hv, ptr @Perl_push_scope, i64 22}
!73 = !{ptr @Perl_hv_copy_hints_hv, ptr @Perl_save_pushptr, i64 22}
!74 = !{ptr @Perl_hv_copy_hints_hv, ptr @Perl_hv_iterinit, i64 22}
!75 = !{ptr @Perl_hv_copy_hints_hv, ptr @Perl_hv_iternext_flags, i64 43}
!76 = !{ptr @Perl_hv_copy_hints_hv, ptr @Perl_hv_iterval, i64 21}
!77 = !{ptr @Perl_hv_copy_hints_hv, ptr @Perl_newSVsv, i64 21}
!78 = !{ptr @Perl_hv_copy_hints_hv, ptr @Perl_newSVhek, i64 21}
!79 = !{ptr @Perl_hv_copy_hints_hv, ptr @Perl_sv_magic, i64 43}
!80 = !{ptr @Perl_hv_copy_hints_hv, ptr @Perl_hv_common, i64 21}
!81 = !{ptr @Perl_hv_copy_hints_hv, ptr @Perl_pop_scope, i64 22}
!82 = !{ptr @S_hv_free_ent_ret, ptr @S_unshare_hek_or_pvn, i64 722646}
!83 = !{ptr @Perl_hv_clear, ptr @Perl_push_scope, i64 42748}
!84 = !{ptr @Perl_hv_clear, ptr @Perl_save_pushptr, i64 42748}
!85 = !{ptr @Perl_hv_clear, ptr @Perl_hfree_next_entry, i64 214161}
!86 = !{ptr @Perl_hv_clear, ptr @Perl_sv_free2, i64 171413}
!87 = !{ptr @Perl_hv_clear, ptr @Perl_mg_find, i64 42748}
!88 = !{ptr @Perl_hv_clear, ptr @Perl_mg_clear, i64 63}
!89 = !{ptr @Perl_hv_clear, ptr @Perl_pop_scope, i64 42748}
!90 = !{ptr @Perl_hv_iterkeysv, ptr @Perl_newSVhek, i64 20846600}
!91 = !{ptr @Perl_hv_iterkeysv, ptr @Perl_sv_2mortal, i64 20846600}
!92 = !{ptr @Perl_hfree_next_entry, ptr @S_hv_free_ent_ret, i64 604151}
!93 = !{ptr @Perl_hv_undef_flags, ptr @Perl_push_scope, i64 6400}
!94 = !{ptr @Perl_hv_undef_flags, ptr @Perl_save_pushptr, i64 6400}
!95 = !{ptr @Perl_hv_undef_flags, ptr @Perl_hfree_next_entry, i64 193686}
!96 = !{ptr @Perl_hv_undef_flags, ptr @Perl_sv_free2, i64 155025}
!97 = !{ptr @Perl_hv_undef_flags, ptr @Perl_safesysfree, i64 38661}
!98 = !{ptr @Perl_hv_undef_flags, ptr @Perl_mg_find, i64 6400}
!99 = !{ptr @Perl_hv_undef_flags, ptr @Perl_pop_scope, i64 6400}
!100 = !{ptr @Perl_hv_name_set, ptr @S_hv_auxinit, i64 131}
!101 = !{ptr @Perl_hv_name_set, ptr @S_share_hek_flags, i64 132}
!102 = !{ptr @S_hv_auxinit, ptr @Perl_safesyscalloc, i64 140}
!103 = !{ptr @S_hv_auxinit, ptr @Perl_safesysrealloc, i64 12094}
!104 = !{ptr @S_unshare_hek_or_pvn, ptr @Perl_safesysfree, i64 2143}
!105 = !{ptr @Perl_share_hek, ptr @S_share_hek_flags, i64 30621}
!106 = !{ptr @Perl_hv_backreferences_p, ptr @S_hv_auxinit, i64 1}
!107 = !{ptr @Perl_refcounted_he_new_pvn, ptr @S_perl_hash_one_at_a_time_hard, i64 57}
!108 = !{ptr @Perl_refcounted_he_new_pvn, ptr @malloc, i64 57}
!109 = !{ptr @Perl_refcounted_he_new_pvn, ptr @S_share_hek_flags, i64 57}
!110 = !{ptr @Perl_refcounted_he_new_sv, ptr @Perl_refcounted_he_new_pvn, i64 4}
!111 = !{ptr @Perl_refcounted_he_free, ptr @S_unshare_hek_or_pvn, i64 17}
!112 = !{ptr @Perl_refcounted_he_free, ptr @free, i64 17}
!113 = !{ptr @Perl_cop_store_label, ptr @Perl_newSVpvn_flags, i64 53}
!114 = !{ptr @Perl_cop_store_label, ptr @Perl_refcounted_he_new_pvn, i64 53}
!115 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!116 = !{!"function_entry_count", i64 0}
!117 = !{!118, !118, i64 0}
!118 = !{!"any pointer", !119, i64 0}
!119 = !{!"omnipotent char", !120, i64 0}
!120 = !{!"Simple C/C++ TBAA"}
!121 = !{!122, !118, i64 8}
!122 = !{!"he", !118, i64 0, !118, i64 8, !119, i64 16}
!123 = !{!122, !118, i64 0}
!124 = distinct !{!124, !125, !126}
!125 = !{!"llvm.loop.mustprogress"}
!126 = !{!"llvm.loop.unroll.disable"}
!127 = !{!"function_entry_count", i64 633472}
!128 = !{!"function_entry_count", i64 506604495}
!129 = !{!130, !130, i64 0}
!130 = !{!"long", !119, i64 0}
!131 = !{!"branch_weights", i32 0, i32 506604495}
!132 = !{!133, !134, i64 12}
!133 = !{!"hv", !118, i64 0, !134, i64 8, !134, i64 12, !119, i64 16}
!134 = !{!"int", !119, i64 0}
!135 = !{!136, !118, i64 40}
!136 = !{!"magic", !118, i64 0, !118, i64 8, !137, i64 16, !119, i64 18, !119, i64 19, !130, i64 24, !118, i64 32, !118, i64 40}
!137 = !{!"short", !119, i64 0}
!138 = !{!139, !118, i64 8}
!139 = !{!"ufuncs", !118, i64 0, !118, i64 8, !130, i64 16}
!140 = !{!136, !118, i64 32}
!141 = !{!139, !130, i64 16}
!142 = !{!"branch_weights", i32 676300, i32 505928195}
!143 = !{!"branch_weights", i32 505928195, i32 0}
!144 = !{!145, !134, i64 12}
!145 = !{!"sv", !118, i64 0, !134, i64 8, !134, i64 12, !119, i64 16}
!146 = !{!"branch_weights", i32 505809806, i32 118389}
!147 = !{!145, !118, i64 0}
!148 = !{!149, !130, i64 16}
!149 = !{!"xpv", !118, i64 0, !119, i64 8, !130, i64 16, !119, i64 24}
!150 = !{!119, !119, i64 0}
!151 = !{!152, !152, i64 0}
!152 = !{!"_Bool", !119, i64 0}
!153 = !{!"branch_weights", i32 1511742, i32 504416453}
!154 = !{!"branch_weights", i32 503674347, i32 742106}
!155 = !{!"branch_weights", i32 506479472, i32 125023}
!156 = !{!"branch_weights", i32 110914, i32 14109}
!157 = !{!133, !118, i64 0}
!158 = !{!"branch_weights", i32 1, i32 14108}
!159 = !{!136, !119, i64 18}
!160 = !{!134, !134, i64 0}
!161 = !{!"branch_weights", i32 14109, i32 0}
!162 = !{!"branch_weights", i32 0, i32 14109}
!163 = !{!"branch_weights", i32 14108, i32 1}
!164 = distinct !{!164, !125, !126}
!165 = !{!"branch_weights", i32 22, i32 125001}
!166 = !{i8 0, i8 2}
!167 = !{}
!168 = !{!"branch_weights", i32 0, i32 125001}
!169 = !{!"branch_weights", i32 14231, i32 110770}
!170 = !{!"branch_weights", i32 11283, i32 99487}
!171 = !{!"branch_weights", i32 71585, i32 27902}
!172 = !{!"branch_weights", i32 0, i32 71585}
!173 = !{!174, !134, i64 0}
!174 = !{!"hek", !134, i64 0, !134, i64 4, !119, i64 8}
!175 = !{!"branch_weights", i32 53413, i32 3}
!176 = !{!"branch_weights", i32 2649566, i32 1}
!177 = !{!"branch_weights", i32 18873934, i32 2649566}
!178 = distinct !{!178, !125, !126}
!179 = !{!180, !130, i64 24}
!180 = !{!"xpvhv", !118, i64 0, !119, i64 8, !130, i64 16, !130, i64 24}
!181 = !{!"branch_weights", i32 6490, i32 118511}
!182 = !{!"branch_weights", i32 53416, i32 65095}
!183 = !{!"branch_weights", i32 65079, i32 5242}
!184 = !{!174, !134, i64 4}
!185 = !{!"branch_weights", i32 5242, i32 0}
!186 = !{!"branch_weights", i32 65079, i32 5242, i32 0}
!187 = !{!"branch_weights", i32 16, i32 70305}
!188 = distinct !{!188, !125, !126}
!189 = !{!"branch_weights", i32 0, i32 0, i32 65079, i32 16}
!190 = !{!"branch_weights", i32 0, i32 1}
!191 = !{!"branch_weights", i32 53416, i32 5476}
!192 = !{!"branch_weights", i32 53416, i32 0}
!193 = !{!"VP", i32 1, i64 53416, i64 7, i64 28633, i64 4, i64 11150, i64 17, i64 5634, i64 2, i64 5570}
!194 = !{!"branch_weights", i32 0, i32 118495}
!195 = !{!"branch_weights", i32 118495, i32 0}
!196 = !{!"branch_weights", i32 20782, i32 97713}
!197 = !{!"branch_weights", i32 86318, i32 11395}
!198 = !{!199, !134, i64 28}
!199 = !{!"xpvhv_aux", !119, i64 0, !118, i64 8, !118, i64 16, !134, i64 24, !134, i64 28, !118, i64 32, !134, i64 40, !134, i64 44, !134, i64 48, !134, i64 52}
!200 = !{!"branch_weights", i32 0, i32 11395}
!201 = !{!"branch_weights", i32 124, i32 11271}
!202 = !{!"branch_weights", i32 11271, i32 0}
!203 = !{!"branch_weights", i32 11395, i32 0}
!204 = !{!205, !134, i64 12}
!205 = !{!"gv", !118, i64 0, !134, i64 8, !134, i64 12, !119, i64 16}
!206 = !{!207, !118, i64 32}
!207 = !{!"gp", !118, i64 0, !118, i64 8, !118, i64 16, !134, i64 24, !134, i64 28, !118, i64 32, !118, i64 40, !118, i64 48, !118, i64 56, !134, i64 64, !134, i64 67, !118, i64 72}
!208 = !{!145, !134, i64 8}
!209 = !{!"branch_weights", i32 6401, i32 112094}
!210 = !{!"branch_weights", i32 11395, i32 107100}
!211 = !{!207, !134, i64 24}
!212 = !{!207, !118, i64 16}
!213 = !{!"branch_weights", i32 11392, i32 3}
!214 = !{!"branch_weights", i32 0, i32 3}
!215 = !{!"branch_weights", i32 -2064682780, i32 -1255719915}
!216 = !{!199, !134, i64 48}
!217 = !{!"branch_weights", i32 68343, i32 0}
!218 = !{!199, !118, i64 16}
!219 = !{!"branch_weights", i32 0, i32 97713}
!220 = !{!180, !130, i64 16}
!221 = !{!"branch_weights", i32 6420, i32 112075}
!222 = !{!"branch_weights", i32 11389, i32 100705}
!223 = !{!"branch_weights", i32 0, i32 58892}
!224 = distinct !{!224, !125, !126}
!225 = !{!"branch_weights", i32 6506, i32 0}
!226 = !{!"branch_weights", i32 506219450, i32 260022}
!227 = !{!"branch_weights", i32 231713, i32 28309}
!228 = !{!"branch_weights", i32 231703, i32 10}
!229 = !{!"branch_weights", i32 231703, i32 0}
!230 = !{!"branch_weights", i32 0, i32 10}
!231 = !{!"branch_weights", i32 3, i32 7}
!232 = !{!233, !119, i64 72}
!233 = !{!"xpvlv", !118, i64 0, !119, i64 8, !130, i64 16, !119, i64 24, !119, i64 32, !119, i64 40, !119, i64 48, !130, i64 56, !118, i64 64, !119, i64 72, !119, i64 73}
!234 = !{!233, !118, i64 64}
!235 = !{!"branch_weights", i32 10, i32 0}
!236 = !{!"branch_weights", i32 14199, i32 14110}
!237 = !{!"branch_weights", i32 14110, i32 0}
!238 = !{!"branch_weights", i32 0, i32 14199}
!239 = !{!"branch_weights", i32 1, i32 14198}
!240 = !{!"branch_weights", i32 14190, i32 9}
!241 = !{!"branch_weights", i32 0, i32 14190}
!242 = !{!"branch_weights", i32 14198, i32 1}
!243 = !{!"branch_weights", i32 9, i32 14190}
!244 = !{!"branch_weights", i32 79, i32 14111}
!245 = !{!"branch_weights", i32 0, i32 14111}
!246 = !{!"branch_weights", i32 14111, i32 0}
!247 = !{!"branch_weights", i32 14126, i32 64}
!248 = !{!"branch_weights", i32 14190, i32 0}
!249 = !{!"branch_weights", i32 14199, i32 0}
!250 = !{!"branch_weights", i32 363562, i32 506115900}
!251 = !{!"branch_weights", i32 337585, i32 25977}
!252 = !{!"branch_weights", i32 337585, i32 0}
!253 = !{!"branch_weights", i32 0, i32 506141877}
!254 = !{!"branch_weights", i32 661780, i32 505480097}
!255 = !{!"branch_weights", i32 1277253, i32 504202844}
!256 = !{!"branch_weights", i32 503529904, i32 672940}
!257 = !{!"branch_weights", i32 0, i32 503529904}
!258 = !{!"branch_weights", i32 2595965, i32 16008}
!259 = !{!"branch_weights", i32 11222213, i32 494919664}
!260 = !{!"branch_weights", i32 2018200, i32 492901464}
!261 = !{!"branch_weights", i32 482341361, i32 140789863}
!262 = !{!"branch_weights", i32 140789863, i32 0}
!263 = !{!"branch_weights", i32 482341361, i32 140789863, i32 0}
!264 = !{!"branch_weights", i32 10560103, i32 612571121}
!265 = distinct !{!265, !125, !126}
!266 = !{!"branch_weights", i32 0, i32 0, i32 482341361, i32 10560103}
!267 = !{!"branch_weights", i32 1, i32 262636}
!268 = !{!"branch_weights", i32 1755563, i32 1019955}
!269 = !{!"branch_weights", i32 1755563, i32 0}
!270 = !{!"VP", i32 1, i64 1755563, i64 9, i64 489003, i64 7, i64 334607, i64 8, i64 306951, i64 5, i64 188434}
!271 = !{!"branch_weights", i32 23815640, i32 460281284}
!272 = !{!"branch_weights", i32 460281284, i32 0}
!273 = !{!"branch_weights", i32 0, i32 460281284}
!274 = !{!"branch_weights", i32 460281238, i32 46}
!275 = !{!"branch_weights", i32 0, i32 46}
!276 = !{!"branch_weights", i32 12, i32 34}
!277 = !{!"branch_weights", i32 0, i32 23815640}
!278 = !{!"branch_weights", i32 484096924, i32 0}
!279 = !{!"branch_weights", i32 483497286, i32 599638}
!280 = !{!"branch_weights", i32 0, i32 599638}
!281 = !{!"branch_weights", i32 262636, i32 2512882}
!282 = distinct !{!282, !125, !126}
!283 = !{!"branch_weights", i32 22044953, i32 0}
!284 = !{!"branch_weights", i32 0, i32 22044953}
!285 = !{!"branch_weights", i32 21285722, i32 759231}
!286 = !{!"branch_weights", i32 21285722, i32 0}
!287 = !{!"branch_weights", i32 206498, i32 552733}
!288 = !{!"branch_weights", i32 552733, i32 0}
!289 = !{!"branch_weights", i32 538598, i32 14135}
!290 = !{!"branch_weights", i32 0, i32 745096}
!291 = !{!"branch_weights", i32 181, i32 744915}
!292 = !{!"branch_weights", i32 505330, i32 239766}
!293 = !{!"branch_weights", i32 327224, i32 178106}
!294 = !{!"branch_weights", i32 178106, i32 0}
!295 = !{!"branch_weights", i32 239766, i32 505330}
!296 = !{!"branch_weights", i32 488601, i32 256495}
!297 = !{!"branch_weights", i32 0, i32 256495, i32 0}
!298 = !{!199, !134, i64 40}
!299 = !{!"branch_weights", i32 745096, i32 0}
!300 = !{!"branch_weights", i32 29794, i32 715302}
!301 = !{!"branch_weights", i32 29788, i32 6}
!302 = !{!"branch_weights", i32 6, i32 0}
!303 = !{!136, !130, i64 24}
!304 = !{!"branch_weights", i32 29794, i32 0}
!305 = !{!"branch_weights", i32 730547, i32 14549}
!306 = !{!"function_entry_count", i64 57}
!307 = !{!"hv.c;S_perl_hash_one_at_a_time_hard"}
!308 = !{!"function_entry_count", i64 775961}
!309 = !{!"hv.c;S_share_hek_flags"}
!310 = !{!"branch_weights", i32 1, i32 84633}
!311 = !{!"branch_weights", i32 691363, i32 213571}
!312 = !{!"branch_weights", i32 691363, i32 0}
!313 = !{!"branch_weights", i32 365359, i32 326004}
!314 = !{!"VP", i32 1, i64 326004, i64 9, i64 139573, i64 4, i64 38891, i64 7, i64 32796, i64 8, i64 30291}
!315 = !{!"branch_weights", i32 326004, i32 0}
!316 = !{!"branch_weights", i32 691327, i32 36}
!317 = !{!"branch_weights", i32 84633, i32 820301}
!318 = distinct !{!318, !125, !126}
!319 = !{!"VP", i32 1, i64 84634, i64 9, i64 24150, i64 17, i64 21888, i64 7, i64 11380, i64 65, i64 6704}
!320 = !{!"branch_weights", i32 31017, i32 53617}
!321 = !{!"branch_weights", i32 5, i32 53612}
!322 = !{!"branch_weights", i32 775961, i32 0}
!323 = !{!"function_entry_count", i64 22613172}
!324 = !{!"branch_weights", i32 0, i32 23335835}
!325 = !{!"branch_weights", i32 69204, i32 23266631}
!326 = !{!"branch_weights", i32 0, i32 69204}
!327 = !{!"branch_weights", i32 69204, i32 219}
!328 = distinct !{!328, !125, !126}
!329 = distinct !{!329, !125, !126}
!330 = !{!"branch_weights", i32 69204, i32 0}
!331 = distinct !{!331, !125, !126}
!332 = distinct !{!332, !125, !126}
!333 = !{!"function_entry_count", i64 29799}
!334 = !{!"hv.c;S_hsplit"}
!335 = !{!"branch_weights", i32 28582, i32 1217}
!336 = !{!"branch_weights", i32 1287, i32 28512}
!337 = !{!"branch_weights", i32 0, i32 29799}
!338 = !{!"branch_weights", i32 0, i32 29799, i32 0}
!339 = !{!"branch_weights", i32 70, i32 1217}
!340 = !{!199, !134, i64 24}
!341 = !{!199, !134, i64 44}
!342 = !{!199, !118, i64 32}
!343 = !{!199, !134, i64 52}
!344 = !{!"VP", i32 1, i64 29799, i64 64, i64 19401, i64 128, i64 9946, i64 513, i64 204, i64 256, i64 144}
!345 = !{!"branch_weights", i32 161641, i32 280999}
!346 = !{!"branch_weights", i32 225965, i32 198912}
!347 = !{!"branch_weights", i32 39492, i32 159420}
!348 = !{!"branch_weights", i32 0, i32 198912}
!349 = !{!"branch_weights", i32 280999, i32 143878}
!350 = distinct !{!350, !125, !126}
!351 = !{!"branch_weights", i32 29799, i32 412841}
!352 = distinct !{!352, !125, !126}
!353 = !{!"function_entry_count", i64 1}
!354 = !{!"branch_weights", i32 1, i32 0}
!355 = !{!"branch_weights", i32 1, i32 31}
!356 = distinct !{!356, !125, !126}
!357 = distinct !{!357, !125, !126}
!358 = !{!"function_entry_count", i64 26}
!359 = !{!"branch_weights", i32 0, i32 26}
!360 = !{!"branch_weights", i32 26, i32 0}
!361 = !{!"branch_weights", i32 153, i32 55}
!362 = !{!"branch_weights", i32 0, i32 55}
!363 = !{!"branch_weights", i32 55, i32 0}
!364 = distinct !{!364, !125, !126}
!365 = !{!"branch_weights", i32 26, i32 182}
!366 = distinct !{!366, !125, !126}
!367 = distinct !{!367, !125, !126}
!368 = distinct !{!368, !125, !126}
!369 = !{!"function_entry_count", i64 29921}
!370 = !{!"branch_weights", i32 12102, i32 17819}
!371 = !{!"branch_weights", i32 17819, i32 0}
!372 = !{!"function_entry_count", i64 20876923}
!373 = !{!"branch_weights", i32 25, i32 20876898}
!374 = !{!"branch_weights", i32 20876880, i32 43}
!375 = !{!"branch_weights", i32 43, i32 0}
!376 = !{!"branch_weights", i32 30263, i32 20846660}
!377 = !{!"branch_weights", i32 20846660, i32 0}
!378 = !{!"branch_weights", i32 4543134, i32 16303526}
!379 = !{!"branch_weights", i32 0, i32 4543134}
!380 = !{!"branch_weights", i32 20876923, i32 0}
!381 = !{!"branch_weights", i32 5717, i32 20871206}
!382 = !{!"branch_weights", i32 20846659, i32 1}
!383 = !{!"branch_weights", i32 24545, i32 1}
!384 = !{!"branch_weights", i32 53040167, i32 24545}
!385 = distinct !{!385, !125, !126}
!386 = !{!"branch_weights", i32 53064712, i32 0}
!387 = !{!"branch_weights", i32 16303526, i32 36761186}
!388 = !{!"branch_weights", i32 0, i32 16303526}
!389 = !{!"branch_weights", i32 32242599, i32 20846659}
!390 = !{!"function_entry_count", i64 154228}
!391 = !{!"branch_weights", i32 154207, i32 21}
!392 = !{!"branch_weights", i32 21, i32 0}
!393 = !{!"function_entry_count", i64 2}
!394 = !{!"branch_weights", i32 2, i32 0}
!395 = !{!"function_entry_count", i64 22}
!396 = !{!"branch_weights", i32 0, i32 22}
!397 = !{!"branch_weights", i32 15, i32 7}
!398 = distinct !{!398, !125, !126}
!399 = !{!"branch_weights", i32 1, i32 21}
!400 = !{!"branch_weights", i32 0, i32 21}
!401 = distinct !{!401, !125, !126}
!402 = !{!"function_entry_count", i64 722646}
!403 = !{!"hv.c;S_hv_free_ent_ret"}
!404 = !{!"branch_weights", i32 0, i32 722646}
!405 = !{!"function_entry_count", i64 42748}
!406 = !{!"branch_weights", i32 0, i32 42748}
!407 = !{!133, !134, i64 8}
!408 = !{!"branch_weights", i32 42748, i32 0}
!409 = distinct !{!409, !125, !126}
!410 = distinct !{!410, !125, !126}
!411 = !{!"branch_weights", i32 81409, i32 326438}
!412 = !{!"branch_weights", i32 81409, i32 0}
!413 = !{!"branch_weights", i32 0, i32 326438}
!414 = distinct !{!414, !125, !126}
!415 = !{!"branch_weights", i32 42685, i32 63}
!416 = !{!"branch_weights", i32 31042, i32 11706}
!417 = !{!"branch_weights", i32 11706, i32 0}
!418 = !{!"branch_weights", i32 0, i32 11706}
!419 = !{!"function_entry_count", i64 20846600}
!420 = !{!"function_entry_count", i64 705013}
!421 = !{!"branch_weights", i32 317381, i32 387632}
!422 = !{!"branch_weights", i32 0, i32 387632}
!423 = !{!"branch_weights", i32 387632, i32 0}
!424 = !{!"branch_weights", i32 100862, i32 604151}
!425 = !{!"branch_weights", i32 604150, i32 1}
!426 = !{!"branch_weights", i32 1034334, i32 0}
!427 = !{!"branch_weights", i32 430184, i32 604150}
!428 = distinct !{!428, !125, !126}
!429 = !{!"branch_weights", i32 31, i32 604120}
!430 = !{!"branch_weights", i32 252424, i32 351696}
!431 = !{!"branch_weights", i32 351696, i32 0}
!432 = !{!"function_entry_count", i64 38661}
!433 = !{!"branch_weights", i32 0, i32 38661}
!434 = !{!"branch_weights", i32 4, i32 38657}
!435 = !{!"branch_weights", i32 26541, i32 12116}
!436 = !{!"branch_weights", i32 12116, i32 0}
!437 = !{!"branch_weights", i32 32261, i32 6400}
!438 = !{!"branch_weights", i32 26545, i32 12116}
!439 = !{!"branch_weights", i32 0, i32 12116}
!440 = !{!441, !118, i64 0}
!441 = !{!"mro_meta", !118, i64 0, !118, i64 8, !118, i64 16, !134, i64 24, !134, i64 28, !118, i64 32, !118, i64 40, !118, i64 48, !134, i64 56}
!442 = !{!441, !118, i64 8}
!443 = !{!441, !118, i64 16}
!444 = !{!441, !118, i64 40}
!445 = !{!441, !118, i64 48}
!446 = !{!199, !118, i64 8}
!447 = !{!"branch_weights", i32 38661, i32 0}
!448 = !{!"branch_weights", i32 6400, i32 0}
!449 = !{!"function_entry_count", i64 132}
!450 = !{!"branch_weights", i32 0, i32 132}
!451 = !{!"branch_weights", i32 131, i32 1}
!452 = distinct !{!452, !125, !126}
!453 = !{!"branch_weights", i32 0, i32 131}
!454 = !{!"branch_weights", i32 1, i32 2649566}
!455 = !{!"branch_weights", i32 132, i32 0}
!456 = !{!"branch_weights", i32 0, i32 30753}
!457 = !{!"function_entry_count", i64 12234}
!458 = !{!"hv.c;S_hv_auxinit"}
!459 = !{!"branch_weights", i32 12234, i32 0}
!460 = !{!"branch_weights", i32 140, i32 12094}
!461 = !{!"branch_weights", i32 0, i32 12234, i32 0}
!462 = !{!"function_entry_count", i64 722663}
!463 = !{!"hv.c;S_unshare_hek_or_pvn"}
!464 = !{!"function_entry_count", i64 30621}
!465 = !{i32 0, i32 2}
!466 = distinct !{!466, !125, !126}
!467 = distinct !{!467, !125, !126}
!468 = !{!"function_entry_count", i64 26864}
!469 = !{!"branch_weights", i32 1, i32 26863}
!470 = !{!"function_entry_count", i64 37869}
!471 = !{!"branch_weights", i32 20145, i32 17724}
!472 = !{!"branch_weights", i32 17724, i32 0}
!473 = !{!474, !134, i64 12}
!474 = !{!"av", !118, i64 0, !134, i64 8, !134, i64 12, !119, i64 16}
!475 = !{!"function_entry_count", i64 27}
!476 = !{!"branch_weights", i32 0, i32 27}
!477 = !{!478, !118, i64 8}
!478 = !{!"refcounted_he", !118, i64 0, !118, i64 8, !119, i64 16, !134, i64 24, !119, i64 28}
!479 = distinct !{!479, !125, !126}
!480 = !{!478, !118, i64 0}
!481 = distinct !{!481, !125, !126}
!482 = !{!"function_entry_count", i64 517908}
!483 = !{!"branch_weights", i32 517908, i32 0}
!484 = distinct !{!484, !125, !126}
!485 = distinct !{!485, !125, !126}
!486 = distinct !{!486, !125, !126}
!487 = !{!"branch_weights", i32 2, i32 55}
!488 = !{!"branch_weights", i32 2, i32 53}
!489 = !{!"branch_weights", i32 0, i32 2}
!490 = !{!"branch_weights", i32 53, i32 4}
!491 = !{!"branch_weights", i32 53, i32 0}
!492 = !{!"branch_weights", i32 57, i32 0}
!493 = distinct !{!493, !125, !126}
!494 = distinct !{!494, !125, !126}
!495 = !{!"VP", i32 1, i64 53, i64 9, i64 26, i64 7, i64 8, i64 3, i64 5, i64 4, i64 4}
!496 = !{!"branch_weights", i32 2, i32 2, i32 0}
!497 = !{!478, !134, i64 24}
!498 = !{!"function_entry_count", i64 4}
!499 = !{!"branch_weights", i32 4, i32 0}
!500 = !{!"function_entry_count", i64 10461}
!501 = !{!"branch_weights", i32 10435, i32 43}
!502 = !{!"branch_weights", i32 17, i32 26}
!503 = !{!"function_entry_count", i64 21044}
!504 = !{!"branch_weights", i32 20990, i32 54}
!505 = !{!"function_entry_count", i64 509332}
!506 = !{!507, !118, i64 72}
!507 = !{!"cop", !118, i64 0, !118, i64 8, !118, i64 16, !130, i64 24, !134, i64 32, !134, i64 33, !134, i64 33, !134, i64 33, !134, i64 33, !134, i64 33, !134, i64 33, !134, i64 33, !119, i64 34, !119, i64 35, !134, i64 36, !118, i64 40, !118, i64 48, !134, i64 56, !134, i64 60, !118, i64 64, !118, i64 72}
!508 = !{!"branch_weights", i32 12735, i32 496597}
!509 = !{!"branch_weights", i32 496573, i32 24}
!510 = !{!"branch_weights", i32 496573, i32 0}
!511 = !{!"branch_weights", i32 0, i32 496573, i32 0}
!512 = !{!"branch_weights", i32 52, i32 496521}
!513 = !{!"branch_weights", i32 0, i32 496521}
!514 = !{!"function_entry_count", i64 53}
