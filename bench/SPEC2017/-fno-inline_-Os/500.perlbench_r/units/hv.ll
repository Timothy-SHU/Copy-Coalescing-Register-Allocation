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
define dso_local void @Perl_free_tied_hv_pool() local_unnamed_addr #0 !prof !108 {
  %1 = load ptr, ptr @PL_hv_fetch_ent_mh, align 8, !tbaa !109
  %2 = icmp eq ptr %1, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %0, %3
  %4 = phi ptr [ %7, %3 ], [ %1, %0 ]
  %5 = getelementptr inbounds %struct.he, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !113
  tail call void @Perl_safesysfree(ptr noundef %6) #16
  %7 = load ptr, ptr %4, align 8, !tbaa !115
  %8 = load ptr, ptr @PL_body_roots, align 16, !tbaa !109
  store ptr %8, ptr %4, align 8, !tbaa !115
  store ptr %4, ptr @PL_body_roots, align 16, !tbaa !109
  %9 = icmp eq ptr %7, null
  br i1 %9, label %10, label %3, !llvm.loop !116

10:                                               ; preds = %3, %0
  store ptr null, ptr @PL_hv_fetch_ent_mh, align 8, !tbaa !109
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @Perl_safesysfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_hv_common_key_len(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 !prof !118 {
  %7 = icmp slt i32 %2, 0
  br i1 %7, label %8, label %10, !prof !119

8:                                                ; preds = %6
  %9 = sub nsw i32 0, %2
  br label %10

10:                                               ; preds = %6, %8
  %11 = phi i32 [ %9, %8 ], [ %2, %6 ]
  %12 = phi i32 [ 1, %8 ], [ 0, %6 ]
  %13 = zext nneg i32 %11 to i64
  %14 = tail call ptr @Perl_hv_common(ptr noundef %0, ptr noundef null, ptr noundef %1, i64 noundef %13, i32 noundef %12, i32 noundef %3, ptr noundef %4, i32 noundef %5) #17
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_hv_common(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7) local_unnamed_addr #0 !prof !108 {
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  store i64 %3, ptr %9, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #18
  %13 = and i32 %5, 32
  %14 = icmp eq ptr %0, null
  br i1 %14, label %696, label %15, !prof !122

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !123
  %18 = and i32 %17, 255
  %19 = icmp eq i32 %18, 255
  br i1 %19, label %696, label %20, !prof !122

20:                                               ; preds = %15
  %21 = and i32 %17, 4194304
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %53, label %23, !prof !126

23:                                               ; preds = %20
  %24 = and i32 %17, 2097152
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %53, label %26, !prof !127

26:                                               ; preds = %23
  %27 = and i32 %5, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %53

29:                                               ; preds = %26
  %30 = tail call ptr @Perl_mg_find(ptr noundef nonnull %0, i32 noundef 85) #16
  %31 = icmp eq ptr %30, null
  br i1 %31, label %53, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.magic, ptr %30, i64 0, i32 7
  %34 = load ptr, ptr %33, align 8, !tbaa !128
  %35 = getelementptr inbounds %struct.ufuncs, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !131
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %53

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.magic, ptr %30, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !133
  %41 = icmp eq ptr %1, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = shl i32 %4, 29
  %44 = and i32 %43, 536870912
  %45 = or disjoint i32 %44, 524288
  %46 = tail call ptr @Perl_newSVpvn_flags(ptr noundef %2, i64 noundef %3, i32 noundef %45) #16
  br label %47

47:                                               ; preds = %42, %38
  %48 = phi ptr [ %1, %38 ], [ %46, %42 ]
  store ptr %48, ptr %39, align 8, !tbaa !133
  %49 = sext i32 %5 to i64
  %50 = getelementptr inbounds %struct.ufuncs, ptr %34, i64 0, i32 2
  store i64 %49, ptr %50, align 8, !tbaa !134
  %51 = tail call i32 @Perl_magic_getuvar(ptr noundef nonnull %0, ptr noundef nonnull %30) #16
  %52 = load ptr, ptr %39, align 8, !tbaa !133
  store ptr %40, ptr %39, align 8, !tbaa !133
  br label %53

53:                                               ; preds = %29, %47, %32, %26, %23, %20
  %54 = phi i32 [ %7, %26 ], [ %7, %23 ], [ %7, %20 ], [ %7, %29 ], [ 0, %47 ], [ %7, %32 ]
  %55 = phi ptr [ %1, %26 ], [ %1, %23 ], [ %1, %20 ], [ %1, %29 ], [ %52, %47 ], [ %1, %32 ]
  %56 = icmp eq ptr %55, null
  br i1 %56, label %90, label %57, !prof !135

57:                                               ; preds = %53
  %58 = and i32 %4, 256
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %61, label %60, !prof !136

60:                                               ; preds = %57
  tail call void @Perl_safesysfree(ptr noundef %2) #16
  br label %61

61:                                               ; preds = %60, %57
  %62 = getelementptr inbounds %struct.sv, ptr %55, i64 0, i32 2
  %63 = load i32, ptr %62, align 4, !tbaa !137
  %64 = and i32 %63, 2098176
  %65 = icmp eq i32 %64, 1024
  br i1 %65, label %66, label %72, !prof !139

66:                                               ; preds = %61
  %67 = load ptr, ptr %55, align 8, !tbaa !140
  %68 = getelementptr inbounds %struct.xpv, ptr %67, i64 0, i32 2
  %69 = load i64, ptr %68, align 8, !tbaa !141
  store i64 %69, ptr %9, align 8, !tbaa !120
  %70 = getelementptr inbounds %struct.sv, ptr %55, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !143
  br label %75

72:                                               ; preds = %61
  %73 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %55, ptr noundef nonnull %9, i32 noundef 34) #16
  %74 = load i32, ptr %62, align 4, !tbaa !137
  br label %75

75:                                               ; preds = %72, %66
  %76 = phi i32 [ %63, %66 ], [ %74, %72 ]
  %77 = phi ptr [ %71, %66 ], [ %73, %72 ]
  %78 = lshr i32 %76, 29
  %79 = and i32 %78, 1
  %80 = trunc i32 %79 to i8
  store i8 %80, ptr %10, align 1, !tbaa !144
  %81 = and i32 %76, 268435456
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %93, label %83, !prof !146

83:                                               ; preds = %75
  %84 = load ptr, ptr %55, align 8, !tbaa !140
  %85 = getelementptr inbounds %struct.xpv, ptr %84, i64 0, i32 3
  %86 = load i64, ptr %85, align 8, !tbaa !143
  %87 = icmp eq i64 %86, 0
  %88 = or disjoint i32 %79, 1024
  %89 = select i1 %87, i32 %88, i32 %79, !prof !147
  br label %93

90:                                               ; preds = %53
  %91 = trunc i32 %4 to i8
  %92 = and i8 %91, 1
  store i8 %92, ptr %10, align 1, !tbaa !144
  br label %93

93:                                               ; preds = %83, %75, %90
  %94 = phi i8 [ %92, %90 ], [ %80, %75 ], [ %80, %83 ]
  %95 = phi i32 [ %4, %90 ], [ %79, %75 ], [ %89, %83 ]
  %96 = phi ptr [ %2, %90 ], [ %77, %75 ], [ %77, %83 ]
  %97 = and i32 %5, 64
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %102, label %99, !prof !148

99:                                               ; preds = %93
  %100 = load i64, ptr %9, align 8, !tbaa !120
  %101 = call fastcc ptr @S_hv_delete_common(ptr noundef nonnull %0, ptr noundef %55, ptr noundef %96, i64 noundef %100, i32 noundef %95, i32 noundef %5, i32 noundef %54) #17
  br label %696

102:                                              ; preds = %93
  %103 = load ptr, ptr %0, align 8, !tbaa !149
  %104 = load i32, ptr %16, align 4, !tbaa !123
  %105 = and i32 %104, 14680064
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %301, label %107, !prof !150

107:                                              ; preds = %102
  %108 = and i32 %104, 8388608
  %109 = icmp ne i32 %108, 0
  %110 = and i32 %5, 12
  %111 = icmp eq i32 %110, 0
  %112 = and i1 %111, %109
  br i1 %112, label %113, label %158, !prof !151

113:                                              ; preds = %107
  %114 = call ptr @Perl_mg_find(ptr noundef nonnull %0, i32 noundef 80) #16
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %120, !prof !152

116:                                              ; preds = %113
  %117 = load i32, ptr %16, align 4, !tbaa !137
  %118 = and i32 %117, 2097152
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %301, label %120, !prof !153

120:                                              ; preds = %116, %113
  br i1 %56, label %121, label %127, !prof !154

121:                                              ; preds = %120
  %122 = load i64, ptr %9, align 8, !tbaa !120
  %123 = load i8, ptr %10, align 1, !tbaa !144, !range !155, !noundef !156
  %124 = icmp eq i8 %123, 0
  %125 = select i1 %124, i32 0, i32 536870912
  %126 = call ptr @Perl_newSVpvn_flags(ptr noundef %96, i64 noundef %122, i32 noundef %125) #16
  br label %129

127:                                              ; preds = %120
  %128 = call ptr @Perl_newSVsv(ptr noundef nonnull %55) #16
  br label %129

129:                                              ; preds = %127, %121
  %130 = phi ptr [ %128, %127 ], [ %126, %121 ]
  %131 = call ptr @Perl_sv_newmortal() #16
  %132 = call i32 @Perl_mg_copy(ptr noundef nonnull %0, ptr noundef %131, ptr noundef %130, i32 noundef -2) #16
  %133 = load ptr, ptr @PL_hv_fetch_ent_mh, align 8, !tbaa !109
  %134 = icmp eq ptr %133, null
  br i1 %134, label %139, label %135, !prof !157

135:                                              ; preds = %129
  %136 = load ptr, ptr %133, align 8, !tbaa !115
  store ptr %136, ptr @PL_hv_fetch_ent_mh, align 8, !tbaa !109
  %137 = getelementptr inbounds %struct.he, ptr %133, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !113
  br label %143

139:                                              ; preds = %129
  %140 = call fastcc ptr @S_new_he() #17
  %141 = call ptr @Perl_safesysmalloc(i64 noundef 16) #16
  %142 = getelementptr inbounds %struct.he, ptr %140, i64 0, i32 1
  store ptr %141, ptr %142, align 8, !tbaa !113
  br label %143

143:                                              ; preds = %139, %135
  %144 = phi ptr [ %138, %135 ], [ %141, %139 ]
  %145 = phi ptr [ %133, %135 ], [ %140, %139 ]
  store ptr null, ptr %145, align 8, !tbaa !115
  %146 = getelementptr inbounds %struct.hek, ptr %144, i64 0, i32 1
  store i32 -2, ptr %146, align 4, !tbaa !158
  %147 = getelementptr inbounds %struct.hek, ptr %144, i64 0, i32 2
  store ptr %130, ptr %147, align 4, !tbaa !109
  %148 = getelementptr inbounds %struct.he, ptr %145, i64 0, i32 2
  store ptr %131, ptr %148, align 8, !tbaa !143
  call void @Perl_sv_upgrade(ptr noundef %131, i32 noundef 10) #16
  %149 = load ptr, ptr %131, align 8, !tbaa !140
  %150 = getelementptr inbounds %struct.xpvlv, ptr %149, i64 0, i32 9
  store i8 84, ptr %150, align 8, !tbaa !160
  %151 = getelementptr inbounds %struct.xpvlv, ptr %149, i64 0, i32 8
  store ptr %145, ptr %151, align 8, !tbaa !162
  %152 = and i32 %95, 256
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %155, label %154, !prof !163

154:                                              ; preds = %143
  call void @Perl_safesysfree(ptr noundef %96) #16
  br label %155

155:                                              ; preds = %154, %143
  %156 = icmp eq i32 %13, 0
  %157 = select i1 %156, ptr %145, ptr %148, !prof !163
  br label %696

158:                                              ; preds = %107
  %159 = icmp eq i32 %108, 0
  %160 = and i32 %5, 8
  %161 = icmp eq i32 %160, 0
  %162 = or i1 %161, %159
  br i1 %162, label %253, label %163, !prof !164

163:                                              ; preds = %158
  %164 = call ptr @Perl_mg_find(ptr noundef nonnull %0, i32 noundef 80) #16
  %165 = icmp eq ptr %164, null
  br i1 %165, label %166, label %170, !prof !165

166:                                              ; preds = %163
  %167 = load i32, ptr %16, align 4, !tbaa !137
  %168 = and i32 %167, 2097152
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %301, label %170, !prof !165

170:                                              ; preds = %166, %163
  %171 = call ptr @Perl_sv_newmortal() #16
  %172 = call ptr @Perl_sv_newmortal() #16
  %173 = load i8, ptr %10, align 1, !range !155
  %174 = icmp eq i8 %173, 0
  %175 = select i1 %56, i1 %174, i1 false
  br i1 %175, label %186, label %176

176:                                              ; preds = %170
  br i1 %56, label %177, label %180

177:                                              ; preds = %176
  %178 = load i64, ptr %9, align 8, !tbaa !120
  %179 = call ptr @Perl_newSVpvn_flags(ptr noundef %96, i64 noundef %178, i32 noundef 536870912) #16
  br label %182

180:                                              ; preds = %176
  %181 = call ptr @Perl_newSVsv(ptr noundef nonnull %55) #16
  br label %182

182:                                              ; preds = %180, %177
  %183 = phi ptr [ %181, %180 ], [ %179, %177 ]
  %184 = call ptr @Perl_sv_2mortal(ptr noundef %183) #16
  %185 = call i32 @Perl_mg_copy(ptr noundef nonnull %0, ptr noundef %172, ptr noundef %184, i32 noundef -2) #16
  br label %190

186:                                              ; preds = %170
  %187 = load i64, ptr %9, align 8, !tbaa !120
  %188 = trunc i64 %187 to i32
  %189 = call i32 @Perl_mg_copy(ptr noundef nonnull %0, ptr noundef %172, ptr noundef %96, i32 noundef %188) #16
  br label %190

190:                                              ; preds = %186, %182
  %191 = and i32 %95, 256
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %194, label %193

193:                                              ; preds = %190
  call void @Perl_safesysfree(ptr noundef %96) #16
  br label %194

194:                                              ; preds = %193, %190
  %195 = call ptr @Perl_mg_find(ptr noundef %172, i32 noundef 112) #16
  %196 = call i32 @Perl_magic_existspack(ptr noundef %171, ptr noundef %195) #16
  %197 = icmp eq ptr %171, null
  br i1 %197, label %696, label %198

198:                                              ; preds = %194
  %199 = getelementptr inbounds %struct.sv, ptr %171, i64 0, i32 2
  %200 = load i32, ptr %199, align 4, !tbaa !137
  %201 = and i32 %200, 2097152
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %205, label %203

203:                                              ; preds = %198
  %204 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %171, i32 noundef 2) #16
  br i1 %204, label %252, label %696

205:                                              ; preds = %198
  %206 = and i32 %200, 65280
  %207 = icmp ne i32 %206, 0
  %208 = and i32 %200, 255
  %209 = icmp eq i32 %208, 8
  %210 = or i1 %207, %209
  %211 = and i32 %200, 16777471
  %212 = icmp eq i32 %211, 16777226
  %213 = or i1 %212, %210
  br i1 %213, label %214, label %696

214:                                              ; preds = %205
  %215 = and i32 %200, 1024
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %231, label %217

217:                                              ; preds = %214
  %218 = load ptr, ptr %171, align 8, !tbaa !140
  %219 = icmp eq ptr %218, null
  br i1 %219, label %696, label %220

220:                                              ; preds = %217
  %221 = getelementptr inbounds %struct.xpv, ptr %218, i64 0, i32 2
  %222 = load i64, ptr %221, align 8, !tbaa !141
  %223 = icmp ugt i64 %222, 1
  br i1 %223, label %252, label %224

224:                                              ; preds = %220
  %225 = icmp eq i64 %222, 0
  br i1 %225, label %696, label %226

226:                                              ; preds = %224
  %227 = getelementptr inbounds %struct.sv, ptr %171, i64 0, i32 3
  %228 = load ptr, ptr %227, align 8, !tbaa !143
  %229 = load i8, ptr %228, align 1, !tbaa !143
  %230 = icmp eq i8 %229, 48
  br i1 %230, label %696, label %252

231:                                              ; preds = %214
  %232 = and i32 %200, 768
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %250, label %234

234:                                              ; preds = %231
  %235 = and i32 %200, 256
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %242, label %237

237:                                              ; preds = %234
  %238 = load ptr, ptr %171, align 8, !tbaa !140
  %239 = getelementptr inbounds %struct.xpviv, ptr %238, i64 0, i32 4
  %240 = load i64, ptr %239, align 8, !tbaa !143
  %241 = icmp eq i64 %240, 0
  br i1 %241, label %242, label %252

242:                                              ; preds = %237, %234
  %243 = and i32 %200, 512
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %696, label %245

245:                                              ; preds = %242
  %246 = load ptr, ptr %171, align 8, !tbaa !140
  %247 = getelementptr inbounds %struct.xpvnv, ptr %246, i64 0, i32 5
  %248 = load double, ptr %247, align 8, !tbaa !143
  %249 = fcmp une double %248, 0.000000e+00
  br i1 %249, label %252, label %696

250:                                              ; preds = %231
  %251 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %171, i32 noundef 0) #16
  br i1 %251, label %252, label %696

252:                                              ; preds = %250, %245, %237, %226, %220, %203
  br label %696

253:                                              ; preds = %158
  %254 = and i32 %5, 4
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %301, label %256, !prof !166

256:                                              ; preds = %253
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #18
  call fastcc void @S_hv_magic_check(ptr noundef nonnull %0, ptr noundef nonnull %11, ptr noundef nonnull %12) #17
  %257 = load i8, ptr %11, align 1, !tbaa !144, !range !155, !noundef !156
  %258 = icmp eq i8 %257, 0
  br i1 %258, label %298, label %259, !prof !167

259:                                              ; preds = %256
  %260 = load i8, ptr @PL_tainted, align 1, !tbaa !144, !range !155, !noundef !156
  %261 = icmp eq i8 %260, 0
  br i1 %56, label %262, label %267, !prof !168

262:                                              ; preds = %259
  %263 = icmp eq i8 %94, 0
  %264 = load i64, ptr %9, align 8, !tbaa !120
  br i1 %263, label %285, label %265, !prof !169

265:                                              ; preds = %262
  %266 = call ptr @Perl_newSVpvn_flags(ptr noundef %96, i64 noundef %264, i32 noundef 536870912) #16
  br label %267

267:                                              ; preds = %259, %265
  %268 = phi ptr [ %266, %265 ], [ %55, %259 ]
  %269 = load i8, ptr @PL_tainting, align 1, !tbaa !144, !range !155, !noundef !156
  %270 = icmp eq i8 %269, 0
  br i1 %270, label %281, label %271, !prof !170

271:                                              ; preds = %267
  %272 = getelementptr inbounds %struct.sv, ptr %268, i64 0, i32 2
  %273 = load i32, ptr %272, align 4, !tbaa !137
  %274 = and i32 %273, 14680064
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %278, label %276

276:                                              ; preds = %271
  %277 = call zeroext i1 @Perl_sv_tainted(ptr noundef nonnull %268) #16
  br label %278

278:                                              ; preds = %276, %271
  %279 = phi i1 [ false, %271 ], [ %277, %276 ]
  %280 = zext i1 %279 to i8
  store i8 %280, ptr @PL_tainted, align 1, !tbaa !144
  br label %281

281:                                              ; preds = %278, %267
  %282 = call ptr @Perl_newSVsv(ptr noundef %268) #16
  %283 = call ptr @Perl_sv_2mortal(ptr noundef %282) #16
  %284 = call i32 @Perl_mg_copy(ptr noundef nonnull %0, ptr noundef %6, ptr noundef %283, i32 noundef -2) #16
  br label %288

285:                                              ; preds = %262
  %286 = trunc i64 %264 to i32
  %287 = call i32 @Perl_mg_copy(ptr noundef nonnull %0, ptr noundef %6, ptr noundef %96, i32 noundef %286) #16
  br label %288

288:                                              ; preds = %285, %281
  %289 = phi ptr [ %283, %281 ], [ null, %285 ]
  br i1 %261, label %291, label %290, !prof !171

290:                                              ; preds = %288
  store i8 1, ptr @PL_tainted, align 1, !tbaa !144
  br label %291

291:                                              ; preds = %288, %290
  %292 = load i8, ptr %12, align 1, !tbaa !144, !range !155, !noundef !156
  %293 = icmp eq i8 %292, 0
  br i1 %293, label %294, label %298, !prof !172

294:                                              ; preds = %291
  %295 = and i32 %95, 256
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %300, label %297

297:                                              ; preds = %294
  call void @Perl_safesysfree(ptr noundef %96) #16
  br label %300

298:                                              ; preds = %256, %291
  %299 = phi ptr [ %289, %291 ], [ %55, %256 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #18
  br label %301

300:                                              ; preds = %297, %294
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #18
  br label %696

301:                                              ; preds = %298, %116, %253, %166, %102
  %302 = phi ptr [ %55, %166 ], [ %55, %253 ], [ %55, %116 ], [ %55, %102 ], [ %299, %298 ]
  %303 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %304 = load ptr, ptr %303, align 8, !tbaa !143
  %305 = icmp eq ptr %304, null
  br i1 %305, label %306, label %319, !prof !173

306:                                              ; preds = %301
  %307 = and i32 %5, 20
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %315, label %309, !prof !174

309:                                              ; preds = %306
  %310 = getelementptr inbounds %struct.xpvhv, ptr %103, i64 0, i32 3
  %311 = load i64, ptr %310, align 8, !tbaa !175
  %312 = shl i64 %311, 3
  %313 = add i64 %312, 8
  %314 = call ptr @Perl_safesyscalloc(i64 noundef %313, i64 noundef 1) #16
  store ptr %314, ptr %303, align 8, !tbaa !143
  br label %319

315:                                              ; preds = %306
  %316 = and i32 %95, 256
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %696, label %318, !prof !177

318:                                              ; preds = %315
  call void @Perl_safesysfree(ptr noundef %96) #16
  br label %696

319:                                              ; preds = %309, %301
  %320 = load i8, ptr %10, align 1, !tbaa !144, !range !155, !noundef !156
  %321 = icmp eq i8 %320, 0
  br i1 %321, label %339, label %322, !prof !178

322:                                              ; preds = %319
  %323 = and i32 %95, 1024
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %325, label %339

325:                                              ; preds = %322
  %326 = call ptr @Perl_bytes_from_utf8(ptr noundef %96, ptr noundef nonnull %9, ptr noundef nonnull %10) #16
  %327 = load i8, ptr %10, align 1, !tbaa !144, !range !155, !noundef !156
  %328 = icmp eq i8 %327, 0
  %329 = or i32 %95, 1
  %330 = and i32 %95, -1026
  %331 = select i1 %328, i32 %330, i32 %329
  %332 = icmp eq ptr %326, %96
  br i1 %332, label %339, label %333

333:                                              ; preds = %325
  %334 = and i32 %331, 256
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %337, label %336

336:                                              ; preds = %333
  call void @Perl_safesysfree(ptr noundef %96) #16
  br label %337

337:                                              ; preds = %336, %333
  %338 = or i32 %331, 258
  br label %339

339:                                              ; preds = %325, %337, %322, %319
  %340 = phi i32 [ %54, %322 ], [ %54, %319 ], [ 0, %337 ], [ %54, %325 ]
  %341 = phi i32 [ %95, %322 ], [ %95, %319 ], [ %338, %337 ], [ %331, %325 ]
  %342 = phi ptr [ %96, %322 ], [ %96, %319 ], [ %326, %337 ], [ %96, %325 ]
  %343 = icmp eq ptr %302, null
  br i1 %343, label %364, label %344, !prof !179

344:                                              ; preds = %339
  %345 = getelementptr inbounds %struct.sv, ptr %302, i64 0, i32 2
  %346 = load i32, ptr %345, align 4, !tbaa !137
  %347 = and i32 %346, 268435456
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %364, label %349, !prof !180

349:                                              ; preds = %344
  %350 = load ptr, ptr %302, align 8, !tbaa !140
  %351 = getelementptr inbounds %struct.xpv, ptr %350, i64 0, i32 3
  %352 = load i64, ptr %351, align 8, !tbaa !143
  %353 = icmp eq i64 %352, 0
  br i1 %353, label %354, label %364, !prof !181

354:                                              ; preds = %349
  %355 = load i32, ptr %16, align 4, !tbaa !123
  %356 = and i32 %355, 536870912
  %357 = icmp eq i32 %356, 0
  %358 = getelementptr inbounds %struct.sv, ptr %302, i64 0, i32 3
  %359 = load ptr, ptr %358, align 8, !tbaa !143
  %360 = getelementptr inbounds i8, ptr %359, i64 -8
  %361 = select i1 %357, ptr null, ptr %360, !prof !182
  %362 = getelementptr inbounds i8, ptr %359, i64 -8
  %363 = load i32, ptr %362, align 4, !tbaa !183
  br label %369

364:                                              ; preds = %349, %344, %339
  %365 = icmp eq i32 %340, 0
  br i1 %365, label %366, label %369, !prof !184

366:                                              ; preds = %364
  %367 = load i64, ptr %9, align 8, !tbaa !120
  %368 = call fastcc i32 @S_perl_hash_one_at_a_time_hard(ptr noundef %342, i64 noundef %367) #17
  br label %369

369:                                              ; preds = %364, %366, %354
  %370 = phi ptr [ %361, %354 ], [ null, %364 ], [ null, %366 ]
  %371 = phi i32 [ %363, %354 ], [ %340, %364 ], [ %368, %366 ]
  %372 = and i32 %341, 255
  %373 = load ptr, ptr %303, align 8, !tbaa !143
  %374 = load ptr, ptr %0, align 8, !tbaa !149
  %375 = getelementptr inbounds %struct.xpvhv, ptr %374, i64 0, i32 3
  %376 = load i64, ptr %375, align 8, !tbaa !175
  %377 = trunc i64 %376 to i32
  %378 = and i32 %371, %377
  %379 = zext i32 %378 to i64
  %380 = getelementptr inbounds ptr, ptr %373, i64 %379
  %381 = load ptr, ptr %380, align 8, !tbaa !109
  %382 = icmp eq ptr %381, null
  br i1 %382, label %520, label %383, !prof !185

383:                                              ; preds = %369
  %384 = icmp eq ptr %370, null
  br i1 %384, label %410, label %385, !prof !186

385:                                              ; preds = %383
  %386 = getelementptr inbounds %struct.hek, ptr %370, i64 0, i32 2
  %387 = getelementptr inbounds %struct.hek, ptr %370, i64 0, i32 1
  %388 = load i32, ptr %387, align 4, !tbaa !158
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i8, ptr %386, i64 %389
  %391 = getelementptr inbounds i8, ptr %390, i64 1
  %392 = load i8, ptr %391, align 1, !tbaa !143
  br label %393

393:                                              ; preds = %385, %407
  %394 = phi ptr [ %381, %385 ], [ %408, %407 ]
  %395 = getelementptr inbounds %struct.he, ptr %394, i64 0, i32 1
  %396 = load ptr, ptr %395, align 8, !tbaa !113
  %397 = icmp eq ptr %396, %370
  br i1 %397, label %437, label %398, !prof !187

398:                                              ; preds = %393
  %399 = getelementptr inbounds %struct.hek, ptr %396, i64 0, i32 2
  %400 = getelementptr inbounds %struct.hek, ptr %396, i64 0, i32 1
  %401 = load i32, ptr %400, align 4, !tbaa !158
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds i8, ptr %399, i64 %402
  %404 = getelementptr inbounds i8, ptr %403, i64 1
  %405 = load i8, ptr %404, align 1, !tbaa !143
  %406 = icmp eq i8 %405, %392
  br i1 %406, label %407, label %410, !prof !188

407:                                              ; preds = %398
  %408 = load ptr, ptr %394, align 8, !tbaa !115
  %409 = icmp eq ptr %408, null
  br i1 %409, label %520, label %393, !prof !189, !llvm.loop !190

410:                                              ; preds = %398, %383
  %411 = load i64, ptr %9, align 8
  %412 = trunc i64 %411 to i32
  br label %413

413:                                              ; preds = %410, %517
  %414 = phi ptr [ %381, %410 ], [ %518, %517 ]
  %415 = getelementptr inbounds %struct.he, ptr %414, i64 0, i32 1
  %416 = load ptr, ptr %415, align 8, !tbaa !113
  %417 = load i32, ptr %416, align 4, !tbaa !183
  %418 = icmp eq i32 %417, %371
  br i1 %418, label %419, label %517, !prof !191

419:                                              ; preds = %413
  %420 = getelementptr inbounds %struct.hek, ptr %416, i64 0, i32 1
  %421 = load i32, ptr %420, align 4, !tbaa !158
  %422 = icmp eq i32 %421, %412
  br i1 %422, label %423, label %517, !prof !192

423:                                              ; preds = %419
  %424 = getelementptr inbounds %struct.hek, ptr %416, i64 0, i32 2
  %425 = call i32 @bcmp(ptr nonnull %424, ptr %342, i64 %411)
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %427, label %517, !prof !192

427:                                              ; preds = %423
  %428 = shl i64 %411, 32
  %429 = ashr exact i64 %428, 32
  %430 = getelementptr inbounds i8, ptr %424, i64 %429
  %431 = getelementptr inbounds i8, ptr %430, i64 1
  %432 = load i8, ptr %431, align 1, !tbaa !143
  %433 = zext i8 %432 to i32
  %434 = xor i32 %341, %433
  %435 = and i32 %434, 1
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %437, label %517, !prof !192

437:                                              ; preds = %393, %427
  %438 = phi i8 [ %432, %427 ], [ %392, %393 ]
  %439 = phi i32 [ %412, %427 ], [ %388, %393 ]
  %440 = phi ptr [ %416, %427 ], [ %370, %393 ]
  %441 = phi ptr [ %414, %427 ], [ %394, %393 ]
  %442 = and i32 %5, 20
  %443 = icmp eq i32 %442, 0
  br i1 %443, label %503, label %444, !prof !193

444:                                              ; preds = %437
  %445 = getelementptr inbounds %struct.he, ptr %441, i64 0, i32 1
  %446 = getelementptr inbounds %struct.hek, ptr %440, i64 0, i32 2
  %447 = sext i32 %439 to i64
  %448 = getelementptr inbounds i8, ptr %446, i64 %447
  %449 = getelementptr inbounds i8, ptr %448, i64 1
  %450 = trunc i32 %341 to i8
  %451 = icmp eq i8 %438, %450
  br i1 %451, label %479, label %452, !prof !194

452:                                              ; preds = %444
  %453 = load i32, ptr %16, align 4, !tbaa !123
  %454 = and i32 %453, 536870912
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %461, label %456

456:                                              ; preds = %452
  %457 = load i64, ptr %9, align 8, !tbaa !120
  %458 = trunc i64 %457 to i32
  %459 = call fastcc ptr @S_share_hek_flags(ptr noundef %342, i32 noundef %458, i32 noundef %371, i32 noundef %372) #17
  %460 = load ptr, ptr %445, align 8, !tbaa !113
  call void @Perl_unshare_hek(ptr noundef %460) #17
  store ptr %459, ptr %445, align 8, !tbaa !113
  br label %473

461:                                              ; preds = %452
  %462 = load ptr, ptr @PL_strtab, align 8, !tbaa !109
  %463 = icmp eq ptr %462, %0
  br i1 %463, label %464, label %472

464:                                              ; preds = %461
  %465 = and i32 %341, 256
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %468, label %467

467:                                              ; preds = %464
  call void @Perl_safesysfree(ptr noundef %342) #16
  br label %468

468:                                              ; preds = %467, %464
  %469 = and i32 %5, 16
  %470 = icmp eq i32 %469, 0
  %471 = select i1 %470, ptr @.str.2, ptr @.str.1
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @S_strtab_error, ptr noundef nonnull %471) #16
  br label %473

472:                                              ; preds = %461
  store i8 %450, ptr %449, align 1, !tbaa !143
  br label %473

473:                                              ; preds = %468, %472, %456
  %474 = and i32 %341, 247
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %479, label %476

476:                                              ; preds = %473
  %477 = load i32, ptr %16, align 4, !tbaa !123
  %478 = or i32 %477, -2147483648
  store i32 %478, ptr %16, align 4, !tbaa !123
  br label %479

479:                                              ; preds = %473, %476, %444
  %480 = getelementptr inbounds %struct.he, ptr %441, i64 0, i32 2
  %481 = load ptr, ptr %480, align 8, !tbaa !143
  %482 = icmp eq ptr %481, @PL_sv_placeholder
  br i1 %482, label %483, label %499, !prof !195

483:                                              ; preds = %479
  %484 = and i32 %5, 16
  %485 = icmp eq i32 %484, 0
  br i1 %485, label %492, label %486

486:                                              ; preds = %483
  %487 = load i32, ptr %16, align 4, !tbaa !123
  %488 = and i32 %487, 14680064
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %490, label %530

490:                                              ; preds = %486
  %491 = call ptr @Perl_newSV(i64 noundef 0) #16
  br label %494

492:                                              ; preds = %483
  %493 = icmp eq ptr %6, @PL_sv_placeholder
  br i1 %493, label %507, label %494

494:                                              ; preds = %492, %490
  %495 = phi ptr [ %491, %490 ], [ %6, %492 ]
  %496 = call ptr @Perl_hv_placeholders_p(ptr noundef nonnull %0) #17
  %497 = load i64, ptr %496, align 8, !tbaa !120
  %498 = add nsw i64 %497, -1
  store i64 %498, ptr %496, align 8, !tbaa !120
  br label %507

499:                                              ; preds = %479
  %500 = and i32 %5, 4
  %501 = icmp eq i32 %500, 0
  br i1 %501, label %509, label %502, !prof !196

502:                                              ; preds = %499
  call fastcc void @S_SvREFCNT_dec(ptr noundef %481) #17
  br label %507

503:                                              ; preds = %437
  %504 = getelementptr inbounds %struct.he, ptr %441, i64 0, i32 2
  %505 = load ptr, ptr %504, align 8, !tbaa !143
  %506 = icmp eq ptr %505, @PL_sv_placeholder
  br i1 %506, label %530, label %509, !prof !197

507:                                              ; preds = %492, %494, %502
  %508 = phi ptr [ %6, %502 ], [ @PL_sv_placeholder, %492 ], [ %495, %494 ]
  store ptr %508, ptr %480, align 8, !tbaa !143
  br label %509

509:                                              ; preds = %507, %503, %499
  %510 = and i32 %341, 256
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %513, label %512, !prof !198

512:                                              ; preds = %509
  call void @Perl_safesysfree(ptr noundef %342) #16
  br label %513

513:                                              ; preds = %512, %509
  %514 = icmp eq i32 %13, 0
  br i1 %514, label %696, label %515, !prof !199

515:                                              ; preds = %513
  %516 = getelementptr inbounds %struct.he, ptr %441, i64 0, i32 2
  br label %696

517:                                              ; preds = %427, %423, %419, %413
  %518 = load ptr, ptr %414, align 8, !tbaa !115
  %519 = icmp eq ptr %518, null
  br i1 %519, label %520, label %413, !prof !200, !llvm.loop !201

520:                                              ; preds = %407, %517, %369
  %521 = load i32, ptr %16, align 4, !tbaa !123
  %522 = and i32 %521, 134283264
  %523 = icmp eq i32 %522, 0
  br i1 %523, label %530, label %524, !prof !202

524:                                              ; preds = %520
  %525 = and i32 %5, 8
  %526 = icmp eq i32 %525, 0
  br i1 %526, label %527, label %530, !prof !203

527:                                              ; preds = %524
  %528 = load i64, ptr %9, align 8, !tbaa !120
  %529 = trunc i64 %528 to i32
  call fastcc void @S_hv_notallowed(i32 noundef %341, ptr noundef %342, i32 noundef %529, ptr noundef nonnull @.str.3) #17
  br label %530

530:                                              ; preds = %503, %486, %527, %524, %520
  %531 = and i32 %5, 20
  %532 = icmp eq i32 %531, 0
  br i1 %532, label %533, label %537, !prof !204

533:                                              ; preds = %530
  %534 = and i32 %341, 256
  %535 = icmp eq i32 %534, 0
  br i1 %535, label %696, label %536, !prof !205

536:                                              ; preds = %533
  call void @Perl_safesysfree(ptr noundef %342) #16
  br label %696

537:                                              ; preds = %530
  %538 = and i32 %5, 16
  %539 = icmp eq i32 %538, 0
  br i1 %539, label %554, label %540, !prof !206

540:                                              ; preds = %537
  %541 = and i32 %5, 128
  %542 = icmp eq i32 %541, 0
  br i1 %542, label %543, label %545, !prof !207

543:                                              ; preds = %540
  %544 = call ptr @Perl_newSV(i64 noundef 0) #16
  br label %545

545:                                              ; preds = %540, %543
  %546 = phi ptr [ %544, %543 ], [ null, %540 ]
  %547 = load i32, ptr %16, align 4, !tbaa !123
  %548 = and i32 %547, 14680064
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %554, label %550, !prof !208

550:                                              ; preds = %545
  %551 = load i64, ptr %9, align 8, !tbaa !120
  %552 = or disjoint i32 %13, 5
  %553 = call ptr @Perl_hv_common(ptr noundef nonnull %0, ptr noundef %302, ptr noundef %342, i64 noundef %551, i32 noundef %341, i32 noundef %552, ptr noundef %546, i32 noundef %371) #17
  br label %696

554:                                              ; preds = %545, %537
  %555 = phi ptr [ %546, %545 ], [ %6, %537 ]
  %556 = load ptr, ptr %303, align 8, !tbaa !143
  %557 = icmp eq ptr %556, null
  br i1 %557, label %558, label %564, !prof !209

558:                                              ; preds = %554
  %559 = getelementptr inbounds %struct.xpvhv, ptr %103, i64 0, i32 3
  %560 = load i64, ptr %559, align 8, !tbaa !175
  %561 = shl i64 %560, 3
  %562 = add i64 %561, 8
  %563 = call ptr @Perl_safesyscalloc(i64 noundef %562, i64 noundef 1) #16
  store ptr %563, ptr %303, align 8, !tbaa !143
  br label %564

564:                                              ; preds = %558, %554
  %565 = phi ptr [ %563, %558 ], [ %556, %554 ]
  %566 = getelementptr inbounds %struct.xpvhv, ptr %103, i64 0, i32 3
  %567 = load i64, ptr %566, align 8, !tbaa !175
  %568 = trunc i64 %567 to i32
  %569 = and i32 %371, %568
  %570 = zext i32 %569 to i64
  %571 = getelementptr inbounds ptr, ptr %565, i64 %570
  %572 = call fastcc ptr @S_new_he() #17
  %573 = load i32, ptr %16, align 4, !tbaa !123
  %574 = and i32 %573, 536870912
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %581, label %576, !prof !209

576:                                              ; preds = %564
  %577 = load i64, ptr %9, align 8, !tbaa !120
  %578 = trunc i64 %577 to i32
  %579 = call fastcc ptr @S_share_hek_flags(ptr noundef %342, i32 noundef %578, i32 noundef %371, i32 noundef %341) #17
  %580 = getelementptr inbounds %struct.he, ptr %572, i64 0, i32 1
  store ptr %579, ptr %580, align 8, !tbaa !113
  br label %595

581:                                              ; preds = %564
  %582 = load ptr, ptr @PL_strtab, align 8, !tbaa !109
  %583 = icmp eq ptr %582, %0
  br i1 %583, label %584, label %590

584:                                              ; preds = %581
  %585 = and i32 %341, 256
  %586 = icmp eq i32 %585, 0
  br i1 %586, label %588, label %587

587:                                              ; preds = %584
  call void @Perl_safesysfree(ptr noundef %342) #16
  br label %588

588:                                              ; preds = %587, %584
  %589 = select i1 %539, ptr @.str.2, ptr @.str.1
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @S_strtab_error, ptr noundef nonnull %589) #16
  br label %595

590:                                              ; preds = %581
  %591 = load i64, ptr %9, align 8, !tbaa !120
  %592 = trunc i64 %591 to i32
  %593 = call fastcc ptr @S_save_hek_flags(ptr noundef %342, i32 noundef %592, i32 noundef %371, i32 noundef %341) #17
  %594 = getelementptr inbounds %struct.he, ptr %572, i64 0, i32 1
  store ptr %593, ptr %594, align 8, !tbaa !113
  br label %595

595:                                              ; preds = %588, %590, %576
  %596 = getelementptr inbounds %struct.he, ptr %572, i64 0, i32 2
  store ptr %555, ptr %596, align 8, !tbaa !143
  %597 = load ptr, ptr %571, align 8, !tbaa !109
  %598 = icmp eq ptr %597, null
  br i1 %598, label %599, label %614, !prof !210

599:                                              ; preds = %595
  %600 = load i32, ptr %16, align 4, !tbaa !123
  %601 = and i32 %600, 33554432
  %602 = icmp eq i32 %601, 0
  br i1 %602, label %627, label %603, !prof !211

603:                                              ; preds = %599
  %604 = load ptr, ptr %303, align 8, !tbaa !143
  %605 = load ptr, ptr %0, align 8, !tbaa !149
  %606 = getelementptr inbounds %struct.xpvhv, ptr %605, i64 0, i32 3
  %607 = load i64, ptr %606, align 8, !tbaa !175
  %608 = getelementptr ptr, ptr %604, i64 %607
  %609 = getelementptr ptr, ptr %608, i64 7
  %610 = load i32, ptr %609, align 8, !tbaa !212
  %611 = icmp eq i32 %610, 0
  br i1 %611, label %627, label %612, !prof !214

612:                                              ; preds = %603
  %613 = add i32 %610, 1
  store i32 %613, ptr %609, align 8, !tbaa !212
  br label %627

614:                                              ; preds = %595
  %615 = load i8, ptr @PL_hash_rand_bits_enabled, align 1
  %616 = icmp eq i8 %615, 0
  br i1 %616, label %627, label %617, !prof !215

617:                                              ; preds = %614
  %618 = load i64, ptr @PL_hash_rand_bits, align 8, !tbaa !120
  %619 = add i64 %618, 1
  %620 = call i64 @llvm.fshl.i64(i64 %619, i64 %619, i64 1)
  store i64 %620, ptr @PL_hash_rand_bits, align 8, !tbaa !120
  %621 = and i64 %620, 1
  %622 = icmp eq i64 %621, 0
  br i1 %622, label %626, label %623

623:                                              ; preds = %617
  %624 = load ptr, ptr %597, align 8, !tbaa !115
  store ptr %624, ptr %572, align 8, !tbaa !115
  %625 = load ptr, ptr %571, align 8, !tbaa !109
  br label %628

626:                                              ; preds = %617
  store ptr %597, ptr %572, align 8, !tbaa !115
  br label %628

627:                                              ; preds = %599, %612, %603, %614
  store ptr %597, ptr %572, align 8, !tbaa !115
  br label %628

628:                                              ; preds = %623, %626, %627
  %629 = phi ptr [ %625, %623 ], [ %571, %626 ], [ %571, %627 ]
  store ptr %572, ptr %629, align 8, !tbaa !109
  %630 = load i32, ptr %16, align 4, !tbaa !123
  %631 = and i32 %630, 33554432
  %632 = icmp eq i32 %631, 0
  br i1 %632, label %656, label %633, !prof !216

633:                                              ; preds = %628
  %634 = load i8, ptr @PL_hash_rand_bits_enabled, align 1, !tbaa !143
  switch i8 %634, label %637 [
    i8 0, label %635
    i8 1, label %639
  ], !prof !217

635:                                              ; preds = %633
  %636 = load i64, ptr @PL_hash_rand_bits, align 8, !tbaa !120
  br label %647

637:                                              ; preds = %633
  %638 = load i64, ptr @PL_hash_rand_bits, align 8, !tbaa !120
  br label %644

639:                                              ; preds = %633
  %640 = ptrtoint ptr %572 to i64
  %641 = add i64 %640, 1
  %642 = load i64, ptr @PL_hash_rand_bits, align 8, !tbaa !120
  %643 = add i64 %641, %642
  br label %644

644:                                              ; preds = %637, %639
  %645 = phi i64 [ %638, %637 ], [ %643, %639 ]
  %646 = call i64 @llvm.fshl.i64(i64 %645, i64 %645, i64 1)
  store i64 %646, ptr @PL_hash_rand_bits, align 8, !tbaa !120
  br label %647

647:                                              ; preds = %635, %644
  %648 = phi i64 [ %636, %635 ], [ %646, %644 ]
  %649 = trunc i64 %648 to i32
  %650 = load ptr, ptr %303, align 8, !tbaa !143
  %651 = load ptr, ptr %0, align 8, !tbaa !149
  %652 = getelementptr inbounds %struct.xpvhv, ptr %651, i64 0, i32 3
  %653 = load i64, ptr %652, align 8, !tbaa !175
  %654 = getelementptr ptr, ptr %650, i64 %653
  %655 = getelementptr ptr, ptr %654, i64 6
  store i32 %649, ptr %655, align 8, !tbaa !218
  br label %656

656:                                              ; preds = %647, %628
  %657 = icmp eq ptr %555, @PL_sv_placeholder
  br i1 %657, label %658, label %662, !prof !209

658:                                              ; preds = %656
  %659 = call ptr @Perl_hv_placeholders_p(ptr noundef nonnull %0) #17
  %660 = load i64, ptr %659, align 8, !tbaa !120
  %661 = add nsw i64 %660, 1
  store i64 %661, ptr %659, align 8, !tbaa !120
  br label %662

662:                                              ; preds = %658, %656
  %663 = and i32 %341, 247
  %664 = icmp eq i32 %663, 0
  br i1 %664, label %668, label %665, !prof !219

665:                                              ; preds = %662
  %666 = load i32, ptr %16, align 4, !tbaa !123
  %667 = or i32 %666, -2147483648
  store i32 %667, ptr %16, align 4, !tbaa !123
  br label %668

668:                                              ; preds = %665, %662
  %669 = getelementptr inbounds %struct.xpvhv, ptr %103, i64 0, i32 2
  %670 = load i64, ptr %669, align 8, !tbaa !220
  %671 = add i64 %670, 1
  store i64 %671, ptr %669, align 8, !tbaa !220
  %672 = load i64, ptr %566, align 8, !tbaa !175
  %673 = icmp ugt i64 %671, %672
  br i1 %673, label %674, label %693, !prof !221

674:                                              ; preds = %668
  %675 = add nuw i64 %672, 1
  %676 = load ptr, ptr %0, align 8, !tbaa !149
  %677 = getelementptr inbounds %struct.xpvmg, ptr %676, i64 0, i32 1
  %678 = load ptr, ptr %677, align 8, !tbaa !143
  %679 = icmp eq ptr %678, null
  br i1 %679, label %691, label %680, !prof !222

680:                                              ; preds = %674
  %681 = call i32 @Perl_hv_placeholders_get(ptr noundef nonnull %0) #17
  %682 = icmp eq i32 %681, 0
  br i1 %682, label %691, label %683, !prof !223

683:                                              ; preds = %680
  %684 = load i32, ptr %16, align 4, !tbaa !123
  %685 = and i32 %684, 134283264
  %686 = icmp eq i32 %685, 0
  br i1 %686, label %687, label %691

687:                                              ; preds = %683
  call fastcc void @S_clear_placeholders(ptr noundef nonnull %0, i32 noundef %681) #17
  %688 = load i64, ptr %669, align 8, !tbaa !220
  %689 = load i64, ptr %566, align 8, !tbaa !175
  %690 = icmp ugt i64 %688, %689
  br i1 %690, label %691, label %693

691:                                              ; preds = %680, %683, %674, %687
  %692 = shl i64 %675, 1
  call fastcc void @S_hsplit(ptr noundef nonnull %0, i64 noundef %675, i64 noundef %692) #17
  br label %693

693:                                              ; preds = %691, %687, %668
  %694 = icmp eq i32 %13, 0
  %695 = select i1 %694, ptr %572, ptr %596, !prof !224
  br label %696

696:                                              ; preds = %693, %300, %533, %536, %513, %315, %318, %252, %194, %250, %242, %226, %224, %217, %203, %205, %245, %155, %15, %8, %550, %515, %99
  %697 = phi ptr [ %101, %99 ], [ %553, %550 ], [ %516, %515 ], [ null, %300 ], [ null, %8 ], [ null, %15 ], [ %157, %155 ], [ %0, %252 ], [ null, %194 ], [ null, %250 ], [ null, %242 ], [ null, %226 ], [ null, %224 ], [ null, %217 ], [ null, %203 ], [ null, %205 ], [ null, %245 ], [ null, %318 ], [ null, %315 ], [ %441, %513 ], [ null, %536 ], [ null, %533 ], [ %695, %693 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #18
  ret ptr %697
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
define internal fastcc ptr @S_hv_delete_common(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 !prof !108 !PGOFuncName !225 {
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  store i64 %3, ptr %8, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #18
  %12 = trunc i32 %4 to i8
  %13 = and i8 %12, 1
  store i8 %13, ptr %9, align 1, !tbaa !144
  %14 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !123
  %16 = and i32 %15, 8388608
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %47, label %18, !prof !226

18:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #18
  call fastcc void @S_hv_magic_check(ptr noundef nonnull %0, ptr noundef nonnull %10, ptr noundef nonnull %11) #17
  %19 = load i8, ptr %10, align 1, !tbaa !144, !range !155, !noundef !156
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %44, label %21, !prof !227

21:                                               ; preds = %18
  %22 = and i32 %4, -257
  %23 = tail call ptr @Perl_hv_common(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %22, i32 noundef 17, ptr noundef null, i32 noundef %6) #17
  %24 = icmp eq ptr %23, null
  br i1 %24, label %44, label %25, !prof !227

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.he, ptr %23, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !143
  %28 = icmp eq ptr %27, null
  br i1 %28, label %44, label %29, !prof !228

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.sv, ptr %27, i64 0, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !137
  %32 = and i32 %31, 14680064
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34, !prof !227

34:                                               ; preds = %29
  %35 = tail call i32 @Perl_mg_clear(ptr noundef nonnull %27) #16
  br label %36

36:                                               ; preds = %34, %29
  %37 = load i8, ptr %11, align 1, !tbaa !144, !range !155, !noundef !156
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %44, !prof !227

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
  %48 = load ptr, ptr %0, align 8, !tbaa !149
  %49 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !143
  %51 = icmp eq ptr %50, null
  br i1 %51, label %438, label %52, !prof !229

52:                                               ; preds = %47
  %53 = icmp eq i8 %13, 0
  br i1 %53, label %75, label %54, !prof !230

54:                                               ; preds = %52
  %55 = and i32 %4, 1024
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %75

57:                                               ; preds = %54
  %58 = call ptr @Perl_bytes_from_utf8(ptr noundef %2, ptr noundef nonnull %8, ptr noundef nonnull %9) #16
  %59 = load i8, ptr %9, align 1, !tbaa !144, !range !155, !noundef !156
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
  %73 = load i32, ptr %14, align 4, !tbaa !137
  %74 = or i32 %73, -2147483648
  store i32 %74, ptr %14, align 4, !tbaa !137
  br label %75

75:                                               ; preds = %71, %54, %52
  %76 = phi i32 [ %4, %54 ], [ %72, %71 ], [ %4, %52 ]
  %77 = phi ptr [ %2, %54 ], [ %58, %71 ], [ %2, %52 ]
  %78 = icmp eq ptr %1, null
  br i1 %78, label %99, label %79, !prof !231

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %81 = load i32, ptr %80, align 4, !tbaa !137
  %82 = and i32 %81, 268435456
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %99, label %84, !prof !232

84:                                               ; preds = %79
  %85 = load ptr, ptr %1, align 8, !tbaa !140
  %86 = getelementptr inbounds %struct.xpv, ptr %85, i64 0, i32 3
  %87 = load i64, ptr %86, align 8, !tbaa !143
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %99, !prof !233

89:                                               ; preds = %84
  %90 = load i32, ptr %14, align 4, !tbaa !123
  %91 = and i32 %90, 536870912
  %92 = icmp eq i32 %91, 0
  %93 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !143
  %95 = getelementptr inbounds i8, ptr %94, i64 -8
  %96 = select i1 %92, ptr null, ptr %95, !prof !234
  %97 = getelementptr inbounds i8, ptr %94, i64 -8
  %98 = load i32, ptr %97, align 4, !tbaa !183
  br label %104

99:                                               ; preds = %84, %79, %75
  %100 = icmp eq i32 %6, 0
  br i1 %100, label %101, label %104, !prof !235

101:                                              ; preds = %99
  %102 = load i64, ptr %8, align 8, !tbaa !120
  %103 = call fastcc i32 @S_perl_hash_one_at_a_time_hard(ptr noundef %77, i64 noundef %102) #17
  br label %104

104:                                              ; preds = %99, %101, %89
  %105 = phi ptr [ %96, %89 ], [ null, %99 ], [ null, %101 ]
  %106 = phi i32 [ %98, %89 ], [ %6, %99 ], [ %103, %101 ]
  %107 = load ptr, ptr %49, align 8, !tbaa !143
  %108 = load ptr, ptr %0, align 8, !tbaa !149
  %109 = getelementptr inbounds %struct.xpvhv, ptr %108, i64 0, i32 3
  %110 = load i64, ptr %109, align 8, !tbaa !175
  %111 = trunc i64 %110 to i32
  %112 = and i32 %106, %111
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds ptr, ptr %107, i64 %113
  %115 = load ptr, ptr %114, align 8, !tbaa !109
  %116 = icmp eq ptr %115, null
  br i1 %116, label %427, label %117, !prof !236

117:                                              ; preds = %104
  %118 = icmp eq ptr %105, null
  br i1 %118, label %148, label %119, !prof !237

119:                                              ; preds = %117
  %120 = getelementptr inbounds %struct.hek, ptr %105, i64 0, i32 2
  %121 = getelementptr inbounds %struct.hek, ptr %105, i64 0, i32 1
  %122 = load i32, ptr %121, align 4, !tbaa !158
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, ptr %120, i64 %123
  %125 = getelementptr inbounds i8, ptr %124, i64 1
  %126 = load i8, ptr %125, align 1, !tbaa !143
  %127 = getelementptr inbounds %struct.he, ptr %115, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !113
  %129 = icmp eq ptr %128, %105
  br i1 %129, label %176, label %134, !prof !238

130:                                              ; preds = %145
  %131 = getelementptr inbounds %struct.he, ptr %146, i64 0, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !113
  %133 = icmp eq ptr %132, %105
  br i1 %133, label %176, label %134, !prof !239, !llvm.loop !240

134:                                              ; preds = %119, %130
  %135 = phi ptr [ %132, %130 ], [ %128, %119 ]
  %136 = phi ptr [ %146, %130 ], [ %115, %119 ]
  %137 = getelementptr inbounds %struct.hek, ptr %135, i64 0, i32 2
  %138 = getelementptr inbounds %struct.hek, ptr %135, i64 0, i32 1
  %139 = load i32, ptr %138, align 4, !tbaa !158
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, ptr %137, i64 %140
  %142 = getelementptr inbounds i8, ptr %141, i64 1
  %143 = load i8, ptr %142, align 1, !tbaa !143
  %144 = icmp eq i8 %143, %126
  br i1 %144, label %145, label %148, !prof !241

145:                                              ; preds = %134
  %146 = load ptr, ptr %136, align 8, !tbaa !109
  %147 = icmp eq ptr %146, null
  br i1 %147, label %427, label %130, !prof !242, !llvm.loop !240

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
  %157 = load ptr, ptr %156, align 8, !tbaa !113
  %158 = load i32, ptr %157, align 4, !tbaa !183
  %159 = icmp eq i32 %158, %106
  br i1 %159, label %160, label %424, !prof !243

160:                                              ; preds = %153
  %161 = getelementptr inbounds %struct.hek, ptr %157, i64 0, i32 1
  %162 = load i32, ptr %161, align 4, !tbaa !158
  %163 = icmp eq i32 %162, %150
  br i1 %163, label %164, label %424, !prof !244

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.hek, ptr %157, i64 0, i32 2
  %166 = call i32 @bcmp(ptr nonnull %165, ptr %77, i64 %149)
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %424, !prof !244

168:                                              ; preds = %164
  %169 = getelementptr inbounds i8, ptr %165, i64 %152
  %170 = getelementptr inbounds i8, ptr %169, i64 1
  %171 = load i8, ptr %170, align 1, !tbaa !143
  %172 = zext i8 %171 to i32
  %173 = xor i32 %76, %172
  %174 = and i32 %173, 1
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %424, !prof !244

176:                                              ; preds = %130, %168, %119
  %177 = phi ptr [ %114, %119 ], [ %155, %168 ], [ %136, %130 ]
  %178 = phi ptr [ %115, %119 ], [ %154, %168 ], [ %146, %130 ]
  %179 = load ptr, ptr @PL_strtab, align 8, !tbaa !109
  %180 = icmp eq ptr %179, %0
  br i1 %180, label %181, label %186, !prof !245

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
  %188 = load ptr, ptr %187, align 8, !tbaa !143
  %189 = icmp eq ptr %188, @PL_sv_placeholder
  br i1 %189, label %190, label %194, !prof !245

190:                                              ; preds = %186
  %191 = and i32 %76, 256
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %438, label %193

193:                                              ; preds = %190
  call void @Perl_safesysfree(ptr noundef %77) #16
  br label %438

194:                                              ; preds = %186
  %195 = load i32, ptr %14, align 4, !tbaa !123
  %196 = and i32 %195, 134283264
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %208, label %198, !prof !246

198:                                              ; preds = %194
  %199 = icmp eq ptr %188, null
  br i1 %199, label %208, label %200

200:                                              ; preds = %198
  %201 = getelementptr inbounds %struct.sv, ptr %188, i64 0, i32 2
  %202 = load i32, ptr %201, align 4, !tbaa !137
  %203 = and i32 %202, 134283264
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %208, label %205

205:                                              ; preds = %200
  %206 = load i64, ptr %8, align 8, !tbaa !120
  %207 = trunc i64 %206 to i32
  call fastcc void @S_hv_notallowed(i32 noundef %76, ptr noundef %77, i32 noundef %207, ptr noundef nonnull @.str.5) #17
  br label %208

208:                                              ; preds = %205, %200, %198, %194
  %209 = and i32 %76, 256
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %212, label %211, !prof !246

211:                                              ; preds = %208
  call void @Perl_safesysfree(ptr noundef %77) #16
  br label %212

212:                                              ; preds = %211, %208
  %213 = load ptr, ptr %187, align 8, !tbaa !143
  %214 = icmp eq ptr %213, null
  br i1 %214, label %317, label %215, !prof !245

215:                                              ; preds = %212
  %216 = load i32, ptr %14, align 4, !tbaa !123
  %217 = and i32 %216, 33554432
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %317, label %219, !prof !247

219:                                              ; preds = %215
  %220 = load ptr, ptr %49, align 8, !tbaa !143
  %221 = load ptr, ptr %0, align 8, !tbaa !149
  %222 = getelementptr inbounds %struct.xpvhv, ptr %221, i64 0, i32 3
  %223 = load i64, ptr %222, align 8, !tbaa !175
  %224 = getelementptr ptr, ptr %220, i64 %223
  %225 = getelementptr ptr, ptr %224, i64 1
  %226 = load ptr, ptr %225, align 8, !tbaa !143
  %227 = icmp eq ptr %226, null
  br i1 %227, label %317, label %228, !prof !248

228:                                              ; preds = %219
  %229 = getelementptr i8, ptr %224, i64 36
  %230 = load i32, ptr %229, align 4, !tbaa !249
  %231 = icmp eq i32 %230, -1
  br i1 %231, label %317, label %232, !prof !250

232:                                              ; preds = %228
  br i1 %78, label %246, label %233, !prof !251

233:                                              ; preds = %232
  %234 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %235 = load i32, ptr %234, align 4, !tbaa !137
  %236 = and i32 %235, 2098176
  %237 = icmp eq i32 %236, 1024
  br i1 %237, label %238, label %244, !prof !252

238:                                              ; preds = %233
  %239 = load ptr, ptr %1, align 8, !tbaa !140
  %240 = getelementptr inbounds %struct.xpv, ptr %239, i64 0, i32 2
  %241 = load i64, ptr %240, align 8, !tbaa !141
  store i64 %241, ptr %8, align 8, !tbaa !120
  %242 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %243 = load ptr, ptr %242, align 8, !tbaa !143
  br label %249

244:                                              ; preds = %233
  %245 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %1, ptr noundef nonnull %8, i32 noundef 2) #16
  br label %246

246:                                              ; preds = %232, %244
  %247 = phi ptr [ %245, %244 ], [ %77, %232 ]
  %248 = load i64, ptr %8, align 8, !tbaa !120
  br label %249

249:                                              ; preds = %246, %238
  %250 = phi i64 [ %248, %246 ], [ %241, %238 ]
  %251 = phi ptr [ %247, %246 ], [ %243, %238 ]
  %252 = icmp ugt i64 %250, 1
  br i1 %252, label %253, label %263, !prof !250

253:                                              ; preds = %249
  %254 = add i64 %250, -2
  %255 = getelementptr inbounds i8, ptr %251, i64 %254
  %256 = load i8, ptr %255, align 1, !tbaa !143
  %257 = icmp eq i8 %256, 58
  br i1 %257, label %258, label %311, !prof !253

258:                                              ; preds = %253
  %259 = add i64 %250, -1
  %260 = getelementptr inbounds i8, ptr %251, i64 %259
  %261 = load i8, ptr %260, align 1, !tbaa !143
  %262 = icmp eq i8 %261, 58
  br i1 %262, label %268, label %311

263:                                              ; preds = %249
  %264 = icmp eq i64 %250, 1
  br i1 %264, label %265, label %317, !prof !254

265:                                              ; preds = %263
  %266 = load i8, ptr %251, align 1, !tbaa !143
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
  %278 = load i32, ptr %277, align 4, !tbaa !255
  %279 = and i32 %278, 255
  %280 = icmp eq i32 %279, 9
  br i1 %280, label %281, label %311

281:                                              ; preds = %276
  %282 = getelementptr inbounds %struct.gv, ptr %213, i64 0, i32 3
  %283 = load ptr, ptr %282, align 8, !tbaa !143
  %284 = getelementptr inbounds %struct.gp, ptr %283, i64 0, i32 5
  %285 = load ptr, ptr %284, align 8, !tbaa !257
  %286 = icmp eq ptr %285, null
  br i1 %286, label %311, label %287

287:                                              ; preds = %281
  %288 = getelementptr inbounds %struct.hv, ptr %285, i64 0, i32 2
  %289 = load i32, ptr %288, align 4, !tbaa !123
  %290 = and i32 %289, 33554432
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %311, label %292

292:                                              ; preds = %287
  %293 = getelementptr inbounds %struct.hv, ptr %285, i64 0, i32 3
  %294 = load ptr, ptr %293, align 8, !tbaa !143
  %295 = load ptr, ptr %285, align 8, !tbaa !149
  %296 = getelementptr inbounds %struct.xpvhv, ptr %295, i64 0, i32 3
  %297 = load i64, ptr %296, align 8, !tbaa !175
  %298 = getelementptr ptr, ptr %294, i64 %297
  %299 = getelementptr ptr, ptr %298, i64 1
  %300 = load ptr, ptr %299, align 8, !tbaa !143
  %301 = icmp eq ptr %300, null
  br i1 %301, label %311, label %302

302:                                              ; preds = %292
  %303 = getelementptr i8, ptr %298, i64 36
  %304 = load i32, ptr %303, align 4, !tbaa !249
  %305 = icmp eq i32 %304, -1
  br i1 %305, label %311, label %306

306:                                              ; preds = %302
  %307 = call ptr @Perl_sv_2mortal(ptr noundef nonnull %213) #16
  %308 = getelementptr inbounds %struct.sv, ptr %307, i64 0, i32 1
  %309 = load i32, ptr %308, align 8, !tbaa !259
  %310 = add i32 %309, 1
  store i32 %310, ptr %308, align 8, !tbaa !259
  br label %317

311:                                              ; preds = %253, %258, %287, %292, %302, %281, %276
  %312 = phi ptr [ %285, %302 ], [ %285, %292 ], [ %285, %287 ], [ null, %281 ], [ null, %276 ], [ null, %258 ], [ null, %253 ]
  %313 = icmp eq i64 %250, 3
  br i1 %313, label %314, label %317, !prof !260

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
  %324 = load ptr, ptr %187, align 8, !tbaa !143
  br i1 %323, label %325, label %327, !prof !261

325:                                              ; preds = %317
  %326 = call ptr @Perl_sv_2mortal(ptr noundef %324) #16
  br label %327

327:                                              ; preds = %317, %325
  %328 = phi ptr [ %326, %325 ], [ %324, %317 ]
  store ptr @PL_sv_placeholder, ptr %187, align 8, !tbaa !143
  %329 = icmp eq ptr %328, null
  br i1 %329, label %363, label %330, !prof !245

330:                                              ; preds = %327
  %331 = getelementptr inbounds %struct.sv, ptr %328, i64 0, i32 2
  %332 = load i32, ptr %331, align 4, !tbaa !137
  %333 = and i32 %332, 49407
  %334 = icmp eq i32 %333, 32777
  br i1 %334, label %335, label %363, !prof !262

335:                                              ; preds = %330
  %336 = getelementptr inbounds %struct.sv, ptr %328, i64 0, i32 3
  %337 = load ptr, ptr %336, align 8, !tbaa !143
  %338 = getelementptr inbounds %struct.gp, ptr %337, i64 0, i32 3
  %339 = load i32, ptr %338, align 8, !tbaa !263
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %363, !prof !250

341:                                              ; preds = %335
  %342 = getelementptr inbounds %struct.gp, ptr %337, i64 0, i32 2
  %343 = load ptr, ptr %342, align 8, !tbaa !264
  %344 = icmp eq ptr %343, null
  br i1 %344, label %363, label %345, !prof !265

345:                                              ; preds = %341
  %346 = load i32, ptr %14, align 4, !tbaa !123
  %347 = and i32 %346, 33554432
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %363, label %349, !prof !266

349:                                              ; preds = %345
  %350 = load ptr, ptr %49, align 8, !tbaa !143
  %351 = load ptr, ptr %0, align 8, !tbaa !149
  %352 = getelementptr inbounds %struct.xpvhv, ptr %351, i64 0, i32 3
  %353 = load i64, ptr %352, align 8, !tbaa !175
  %354 = getelementptr ptr, ptr %350, i64 %353
  %355 = getelementptr ptr, ptr %354, i64 1
  %356 = load ptr, ptr %355, align 8, !tbaa !143
  %357 = icmp eq ptr %356, null
  br i1 %357, label %363, label %358, !prof !266

358:                                              ; preds = %349
  %359 = getelementptr i8, ptr %354, i64 36
  %360 = load i32, ptr %359, align 4, !tbaa !249
  %361 = icmp eq i32 %360, -1
  br i1 %361, label %363, label %362, !prof !267

362:                                              ; preds = %358
  call void @Perl_mro_method_changed_in(ptr noundef nonnull %0) #16
  br label %363

363:                                              ; preds = %330, %341, %362, %335, %358, %349, %345, %327
  %364 = load i32, ptr %14, align 4, !tbaa !123
  %365 = and i32 %364, 134283264
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %371, label %367, !prof !246

367:                                              ; preds = %363
  %368 = call ptr @Perl_hv_placeholders_p(ptr noundef nonnull %0) #17
  %369 = load i64, ptr %368, align 8, !tbaa !120
  %370 = add nsw i64 %369, 1
  store i64 %370, ptr %368, align 8, !tbaa !120
  br label %417

371:                                              ; preds = %363
  %372 = load ptr, ptr %178, align 8, !tbaa !115
  store ptr %372, ptr %177, align 8, !tbaa !109
  %373 = load ptr, ptr %114, align 8, !tbaa !109
  %374 = icmp ne ptr %373, null
  %375 = and i32 %364, 33554432
  %376 = icmp eq i32 %375, 0
  %377 = or i1 %376, %374
  br i1 %377, label %389, label %378, !prof !268

378:                                              ; preds = %371
  %379 = load ptr, ptr %49, align 8, !tbaa !143
  %380 = load ptr, ptr %0, align 8, !tbaa !149
  %381 = getelementptr inbounds %struct.xpvhv, ptr %380, i64 0, i32 3
  %382 = load i64, ptr %381, align 8, !tbaa !175
  %383 = getelementptr ptr, ptr %379, i64 %382
  %384 = getelementptr ptr, ptr %383, i64 7
  %385 = load i32, ptr %384, align 8, !tbaa !212
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %390, label %387, !prof !269

387:                                              ; preds = %378
  %388 = add i32 %385, -1
  store i32 %388, ptr %384, align 8, !tbaa !212
  br label %390

389:                                              ; preds = %371
  br i1 %376, label %408, label %390, !prof !270

390:                                              ; preds = %387, %378, %389
  %391 = load ptr, ptr %49, align 8, !tbaa !143
  %392 = load ptr, ptr %0, align 8, !tbaa !149
  %393 = getelementptr inbounds %struct.xpvhv, ptr %392, i64 0, i32 3
  %394 = load i64, ptr %393, align 8, !tbaa !175
  %395 = getelementptr ptr, ptr %391, i64 %394
  %396 = getelementptr ptr, ptr %395, i64 3
  %397 = load ptr, ptr %396, align 8, !tbaa !271
  %398 = icmp eq ptr %178, %397
  br i1 %398, label %399, label %401, !prof !272

399:                                              ; preds = %390
  %400 = or i32 %364, 1073741824
  store i32 %400, ptr %14, align 4, !tbaa !123
  br label %409

401:                                              ; preds = %390
  %402 = and i32 %364, 1107296256
  %403 = icmp eq i32 %402, 1107296256
  br i1 %403, label %404, label %408, !prof !273

404:                                              ; preds = %401
  %405 = load ptr, ptr %397, align 8, !tbaa !115
  %406 = icmp eq ptr %178, %405
  br i1 %406, label %407, label %408

407:                                              ; preds = %404
  store ptr %372, ptr %397, align 8, !tbaa !115
  br label %408

408:                                              ; preds = %389, %407, %404, %401
  call void @Perl_hv_free_ent(ptr noundef nonnull %0, ptr noundef nonnull %178) #17
  br label %409

409:                                              ; preds = %408, %399
  %410 = getelementptr inbounds %struct.xpvhv, ptr %48, i64 0, i32 2
  %411 = load i64, ptr %410, align 8, !tbaa !220
  %412 = add i64 %411, -1
  store i64 %412, ptr %410, align 8, !tbaa !220
  %413 = icmp eq i64 %412, 0
  br i1 %413, label %414, label %417, !prof !274

414:                                              ; preds = %409
  %415 = load i32, ptr %14, align 4, !tbaa !123
  %416 = and i32 %415, 2147483647
  store i32 %416, ptr %14, align 4, !tbaa !123
  br label %417

417:                                              ; preds = %409, %414, %367
  br i1 %323, label %419, label %418, !prof !261

418:                                              ; preds = %417
  call fastcc void @S_SvREFCNT_dec(ptr noundef %328) #17
  br label %419

419:                                              ; preds = %418, %417
  %420 = phi ptr [ null, %418 ], [ %328, %417 ]
  br i1 %318, label %421, label %422, !prof !245

421:                                              ; preds = %419
  call void @Perl_mro_isa_changed_in(ptr noundef nonnull %0) #16
  br label %438

422:                                              ; preds = %419
  br i1 %319, label %423, label %438, !prof !245

423:                                              ; preds = %422
  call void @Perl_mro_package_moved(ptr noundef null, ptr noundef %321, ptr noundef %320, i32 noundef 1) #16
  br label %438

424:                                              ; preds = %168, %164, %160, %153
  %425 = load ptr, ptr %154, align 8, !tbaa !109
  %426 = icmp eq ptr %425, null
  br i1 %426, label %427, label %153, !prof !275, !llvm.loop !276

427:                                              ; preds = %145, %424, %104
  %428 = load i32, ptr %14, align 4, !tbaa !123
  %429 = and i32 %428, 134283264
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %434, label %431, !prof !277

431:                                              ; preds = %427
  %432 = load i64, ptr %8, align 8, !tbaa !120
  %433 = trunc i64 %432 to i32
  call fastcc void @S_hv_notallowed(i32 noundef %76, ptr noundef %77, i32 noundef %433, ptr noundef nonnull @.str.19) #17
  br label %434

434:                                              ; preds = %431, %427
  %435 = and i32 %76, 256
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %438, label %437, !prof !277

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
define internal fastcc noundef ptr @S_new_he() unnamed_addr #0 !prof !278 !PGOFuncName !279 {
  %1 = load ptr, ptr @PL_body_roots, align 16, !tbaa !109
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %6, !prof !280

3:                                                ; preds = %0
  %4 = tail call ptr @Perl_more_bodies(i32 noundef 0, i64 noundef 24, i64 noundef 4080) #16
  %5 = load ptr, ptr @PL_body_roots, align 16, !tbaa !109
  br label %6

6:                                                ; preds = %3, %0
  %7 = phi ptr [ %5, %3 ], [ %1, %0 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !115
  store ptr %8, ptr @PL_body_roots, align 16, !tbaa !109
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
define internal fastcc void @S_hv_magic_check(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #3 !prof !281 !PGOFuncName !282 {
  %4 = load ptr, ptr %0, align 8, !tbaa !149
  %5 = getelementptr inbounds %struct.xpvmg, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !143
  store i8 0, ptr %1, align 1, !tbaa !144
  store i8 1, ptr %2, align 1, !tbaa !144
  %7 = icmp eq ptr %6, null
  br i1 %7, label %23, label %8, !prof !283

8:                                                ; preds = %3, %20
  %9 = phi ptr [ %21, %20 ], [ %6, %3 ]
  %10 = getelementptr inbounds %struct.magic, ptr %9, i64 0, i32 3
  %11 = load i8, ptr %10, align 2, !tbaa !284
  %12 = zext i8 %11 to i64
  %13 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !285
  %15 = and i32 %14, 16400
  %16 = icmp eq i32 %15, 16400
  br i1 %16, label %17, label %20, !prof !286

17:                                               ; preds = %8
  store i8 1, ptr %1, align 1, !tbaa !144
  %18 = icmp eq i8 %11, 80
  br i1 %18, label %19, label %20, !prof !287

19:                                               ; preds = %17
  store i8 0, ptr %2, align 1, !tbaa !144
  br label %23

20:                                               ; preds = %17, %8
  %21 = load ptr, ptr %9, align 8, !tbaa !288
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %8, !prof !289, !llvm.loop !290

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
define internal fastcc i32 @S_perl_hash_one_at_a_time_hard(ptr noundef readonly %0, i64 noundef %1) unnamed_addr #4 !prof !291 !PGOFuncName !292 {
  %3 = getelementptr inbounds i8, ptr %0, i64 %1
  %4 = trunc i64 %1 to i32
  %5 = add i32 %4, 544173908
  %6 = icmp sgt i64 %1, 0
  br i1 %6, label %7, label %18, !prof !293

7:                                                ; preds = %2, %7
  %8 = phi i32 [ %16, %7 ], [ %5, %2 ]
  %9 = phi ptr [ %13, %7 ], [ %0, %2 ]
  %10 = mul i32 %8, 1025
  %11 = lshr i32 %10, 6
  %12 = xor i32 %11, %10
  %13 = getelementptr inbounds i8, ptr %9, i64 1
  %14 = load i8, ptr %9, align 1, !tbaa !143
  %15 = zext i8 %14 to i32
  %16 = add i32 %12, %15
  %17 = icmp ult ptr %13, %3
  br i1 %17, label %7, label %18, !prof !294, !llvm.loop !295

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
define internal fastcc ptr @S_share_hek_flags(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !prof !296 !PGOFuncName !297 {
  %5 = load ptr, ptr @PL_strtab, align 8, !tbaa !109
  %6 = load ptr, ptr %5, align 8, !tbaa !149
  %7 = getelementptr inbounds %struct.xpvhv, ptr %6, i64 0, i32 3
  %8 = load i64, ptr %7, align 8, !tbaa !175
  %9 = trunc i64 %8 to i32
  %10 = and i32 %9, %2
  %11 = getelementptr inbounds %struct.hv, ptr %5, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !143
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !109
  %16 = icmp eq ptr %15, null
  %17 = sext i32 %1 to i64
  %18 = trunc i32 %3 to i8
  br i1 %16, label %43, label %19, !prof !298

19:                                               ; preds = %4, %40
  %20 = phi ptr [ %41, %40 ], [ %15, %4 ]
  %21 = getelementptr inbounds %struct.he, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !113
  %23 = load i32, ptr %22, align 4, !tbaa !183
  %24 = icmp eq i32 %23, %2
  br i1 %24, label %25, label %40, !prof !299

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.hek, ptr %22, i64 0, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !158
  %28 = icmp eq i32 %27, %1
  br i1 %28, label %29, label %40, !prof !300

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.hek, ptr %22, i64 0, i32 2
  %31 = icmp eq ptr %30, %0
  br i1 %31, label %35, label %32, !prof !301

32:                                               ; preds = %29
  %33 = tail call i32 @bcmp(ptr nonnull %30, ptr %0, i64 %17)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40, !prof !302

35:                                               ; preds = %32, %29
  %36 = getelementptr inbounds i8, ptr %30, i64 %17
  %37 = getelementptr inbounds i8, ptr %36, i64 1
  %38 = load i8, ptr %37, align 1, !tbaa !143
  %39 = icmp eq i8 %38, %18
  br i1 %39, label %64, label %40, !prof !303

40:                                               ; preds = %35, %32, %25, %19
  %41 = load ptr, ptr %20, align 8, !tbaa !109
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %19, !prof !304, !llvm.loop !305

43:                                               ; preds = %40, %4
  %44 = add nsw i64 %17, 34
  %45 = tail call ptr @Perl_safesysmalloc(i64 noundef %44) #16
  %46 = getelementptr inbounds %struct.shared_he, ptr %45, i64 0, i32 1
  %47 = getelementptr inbounds %struct.shared_he, ptr %45, i64 0, i32 1, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %47, ptr align 1 %0, i64 %17, i1 false)
  %48 = getelementptr inbounds %struct.shared_he, ptr %45, i64 0, i32 1, i32 2, i64 %17
  store i8 0, ptr %48, align 1, !tbaa !143
  %49 = getelementptr inbounds %struct.shared_he, ptr %45, i64 0, i32 1, i32 1
  store i32 %1, ptr %49, align 4, !tbaa !158
  store i32 %2, ptr %46, align 4, !tbaa !183
  %50 = getelementptr inbounds i8, ptr %47, i64 %17
  %51 = getelementptr inbounds i8, ptr %50, i64 1
  store i8 %18, ptr %51, align 1, !tbaa !143
  %52 = getelementptr inbounds %struct.he, ptr %45, i64 0, i32 1
  store ptr %46, ptr %52, align 8, !tbaa !113
  %53 = getelementptr inbounds %struct.he, ptr %45, i64 0, i32 2
  store i64 0, ptr %53, align 8, !tbaa !143
  store ptr %15, ptr %45, align 8, !tbaa !115
  store ptr %45, ptr %14, align 8, !tbaa !109
  %54 = getelementptr inbounds %struct.xpvhv, ptr %6, i64 0, i32 2
  %55 = load i64, ptr %54, align 8, !tbaa !220
  %56 = add i64 %55, 1
  store i64 %56, ptr %54, align 8, !tbaa !220
  br i1 %16, label %64, label %57, !prof !306

57:                                               ; preds = %43
  %58 = load i64, ptr %7, align 8, !tbaa !175
  %59 = icmp ugt i64 %56, %58
  br i1 %59, label %60, label %64, !prof !307

60:                                               ; preds = %57
  %61 = add nuw i64 %58, 1
  %62 = load ptr, ptr @PL_strtab, align 8, !tbaa !109
  %63 = shl i64 %61, 1
  tail call fastcc void @S_hsplit(ptr noundef %62, i64 noundef %61, i64 noundef %63) #17
  br label %64

64:                                               ; preds = %35, %43, %60, %57
  %65 = phi ptr [ %45, %57 ], [ %45, %60 ], [ %45, %43 ], [ %20, %35 ]
  %66 = getelementptr inbounds %struct.he, ptr %65, i64 0, i32 2
  %67 = load i64, ptr %66, align 8, !tbaa !143
  %68 = add i64 %67, 1
  store i64 %68, ptr %66, align 8, !tbaa !143
  %69 = and i32 %3, 256
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %72, label %71, !prof !308

71:                                               ; preds = %64
  tail call void @Perl_safesysfree(ptr noundef %0) #16
  br label %72

72:                                               ; preds = %71, %64
  %73 = getelementptr inbounds %struct.he, ptr %65, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !113
  ret ptr %74
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_unshare_hek(ptr noundef %0) local_unnamed_addr #0 !prof !309 {
  tail call fastcc void @S_unshare_hek_or_pvn(ptr noundef %0, ptr noundef null, i32 noundef 0, i32 noundef 0) #17
  ret void
}

; Function Attrs: optsize
declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSV(i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local nonnull ptr @Perl_hv_placeholders_p(ptr noundef %0) local_unnamed_addr #0 !prof !108 {
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
define internal fastcc void @S_SvREFCNT_dec(ptr noundef %0) unnamed_addr #0 !prof !310 !PGOFuncName !311 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3, !prof !312

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !259
  %6 = icmp ugt i32 %5, 1
  br i1 %6, label %7, label %9, !prof !313

7:                                                ; preds = %3
  %8 = add i32 %5, -1
  store i32 %8, ptr %4, align 8, !tbaa !259
  br label %10

9:                                                ; preds = %3
  tail call void @Perl_sv_free2(ptr noundef nonnull %0, i32 noundef %5) #16
  br label %10

10:                                               ; preds = %7, %9, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_hv_notallowed(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 !prof !108 !PGOFuncName !314 {
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
  %16 = load i32, ptr %15, align 4, !tbaa !137
  %17 = or i32 %16, 536870912
  store i32 %17, ptr %15, align 4, !tbaa !137
  br label %18

18:                                               ; preds = %14, %11
  tail call void (ptr, ...) @Perl_croak(ptr noundef %3, ptr noundef %5) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @S_save_hek_flags(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !prof !108 !PGOFuncName !315 {
  %5 = sext i32 %1 to i64
  %6 = add nsw i64 %5, 10
  %7 = tail call ptr @Perl_safesysmalloc(i64 noundef %6) #16
  %8 = getelementptr inbounds %struct.hek, ptr %7, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %8, ptr align 1 %0, i64 %5, i1 false)
  %9 = getelementptr inbounds %struct.hek, ptr %7, i64 0, i32 2, i64 %5
  store i8 0, ptr %9, align 1, !tbaa !143
  %10 = getelementptr inbounds %struct.hek, ptr %7, i64 0, i32 1
  store i32 %1, ptr %10, align 4, !tbaa !158
  store i32 %2, ptr %7, align 4, !tbaa !183
  %11 = trunc i32 %3 to i8
  %12 = or i8 %11, 8
  %13 = getelementptr inbounds i8, ptr %8, i64 %5
  %14 = getelementptr inbounds i8, ptr %13, i64 1
  store i8 %12, ptr %14, align 1, !tbaa !143
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
define dso_local i32 @Perl_hv_placeholders_get(ptr noundef %0) local_unnamed_addr #0 !prof !316 {
  %2 = tail call ptr @Perl_mg_find(ptr noundef %0, i32 noundef 37) #16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4, !prof !317

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.magic, ptr %2, i64 0, i32 5
  %6 = load i64, ptr %5, align 8, !tbaa !318
  %7 = trunc i64 %6 to i32
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi i32 [ %7, %4 ], [ 0, %1 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_clear_placeholders(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !108 !PGOFuncName !319 {
  %3 = load ptr, ptr %0, align 8, !tbaa !149
  %4 = getelementptr inbounds %struct.xpvhv, ptr %3, i64 0, i32 3
  %5 = load i64, ptr %4, align 8, !tbaa !175
  %6 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %8 = shl i64 %5, 32
  %9 = ashr exact i64 %8, 32
  br label %10

10:                                               ; preds = %76, %2
  %11 = phi i64 [ %78, %76 ], [ %9, %2 ]
  %12 = phi i32 [ %77, %76 ], [ %1, %2 ]
  %13 = load ptr, ptr %6, align 8, !tbaa !143
  %14 = getelementptr inbounds ptr, ptr %13, i64 %11
  %15 = load ptr, ptr %14, align 8, !tbaa !109
  %16 = icmp eq ptr %15, null
  br i1 %16, label %76, label %17

17:                                               ; preds = %10, %71
  %18 = phi ptr [ %74, %71 ], [ %15, %10 ]
  %19 = phi i32 [ %73, %71 ], [ %12, %10 ]
  %20 = phi ptr [ %72, %71 ], [ %14, %10 ]
  %21 = getelementptr inbounds %struct.he, ptr %18, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !143
  %23 = icmp eq ptr %22, @PL_sv_placeholder
  br i1 %23, label %24, label %71

24:                                               ; preds = %17
  %25 = load ptr, ptr %18, align 8, !tbaa !115
  store ptr %25, ptr %20, align 8, !tbaa !109
  %26 = load i32, ptr %7, align 4, !tbaa !123
  %27 = and i32 %26, 33554432
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %47, label %29

29:                                               ; preds = %24
  %30 = load ptr, ptr %6, align 8, !tbaa !143
  %31 = load ptr, ptr %0, align 8, !tbaa !149
  %32 = getelementptr inbounds %struct.xpvhv, ptr %31, i64 0, i32 3
  %33 = load i64, ptr %32, align 8, !tbaa !175
  %34 = getelementptr ptr, ptr %30, i64 %33
  %35 = getelementptr ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8, !tbaa !271
  %37 = icmp eq ptr %18, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = or i32 %26, 1073741824
  store i32 %39, ptr %7, align 4, !tbaa !123
  br label %48

40:                                               ; preds = %29
  %41 = and i32 %26, 1107296256
  %42 = icmp eq i32 %41, 1107296256
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load ptr, ptr %36, align 8, !tbaa !115
  %45 = icmp eq ptr %18, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store ptr %25, ptr %36, align 8, !tbaa !115
  br label %47

47:                                               ; preds = %24, %46, %43, %40
  tail call void @Perl_hv_free_ent(ptr noundef nonnull %0, ptr noundef nonnull %18) #17
  br label %48

48:                                               ; preds = %47, %38
  %49 = add i32 %19, -1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %48
  %52 = load ptr, ptr %0, align 8, !tbaa !149
  %53 = getelementptr inbounds %struct.xpvmg, ptr %52, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !143
  %55 = icmp eq ptr %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %51
  %57 = tail call i32 @Perl_hv_placeholders_get(ptr noundef nonnull %0) #17
  %58 = sext i32 %57 to i64
  %59 = load ptr, ptr %0, align 8, !tbaa !149
  br label %60

60:                                               ; preds = %51, %56
  %61 = phi ptr [ %59, %56 ], [ %52, %51 ]
  %62 = phi i64 [ %58, %56 ], [ 0, %51 ]
  %63 = getelementptr inbounds %struct.xpvhv, ptr %61, i64 0, i32 2
  %64 = load i64, ptr %63, align 8, !tbaa !220
  %65 = sub i64 %64, %62
  store i64 %65, ptr %63, align 8, !tbaa !220
  %66 = icmp eq i64 %65, %62
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load i32, ptr %7, align 4, !tbaa !123
  %69 = and i32 %68, 2147483647
  store i32 %69, ptr %7, align 4, !tbaa !123
  br label %70

70:                                               ; preds = %60, %67
  tail call void @Perl_hv_placeholders_set(ptr noundef nonnull %0, i32 noundef 0) #17
  br label %80

71:                                               ; preds = %17, %48
  %72 = phi ptr [ %20, %48 ], [ %18, %17 ]
  %73 = phi i32 [ %49, %48 ], [ %19, %17 ]
  %74 = load ptr, ptr %72, align 8, !tbaa !109
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %17, !llvm.loop !320

76:                                               ; preds = %71, %10
  %77 = phi i32 [ %12, %10 ], [ %73, %71 ]
  %78 = add nsw i64 %11, -1
  %79 = icmp sgt i64 %11, 0
  br i1 %79, label %10, label %80, !llvm.loop !321

80:                                               ; preds = %76, %70
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_hsplit(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 !prof !322 !PGOFuncName !323 {
  %4 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !143
  %6 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !123
  %8 = and i32 %7, 33554432
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17, !prof !324

10:                                               ; preds = %3
  %11 = load ptr, ptr @PL_strtab, align 8, !tbaa !109
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
  store i8 0, ptr @PL_nomemok, align 1, !tbaa !144
  %23 = icmp eq ptr %22, null
  br i1 %23, label %128, label %24, !prof !325

24:                                               ; preds = %17
  %25 = load i8, ptr @PL_hash_rand_bits_enabled, align 1, !tbaa !143
  switch i8 %25, label %26 [
    i8 0, label %37
    i8 1, label %28
  ], !prof !326

26:                                               ; preds = %24
  %27 = load i64, ptr @PL_hash_rand_bits, align 8, !tbaa !120
  br label %34

28:                                               ; preds = %24
  %29 = ptrtoint ptr %22 to i64
  %30 = tail call fastcc i32 @S_ptr_hash(i64 noundef %29) #17
  %31 = zext i32 %30 to i64
  %32 = load i64, ptr @PL_hash_rand_bits, align 8, !tbaa !120
  %33 = add i64 %32, %31
  br label %34

34:                                               ; preds = %26, %28
  %35 = phi i64 [ %27, %26 ], [ %33, %28 ]
  %36 = tail call i64 @llvm.fshl.i64(i64 %35, i64 %35, i64 1)
  store i64 %36, ptr @PL_hash_rand_bits, align 8, !tbaa !120
  br label %37

37:                                               ; preds = %24, %34
  store ptr %22, ptr %4, align 8, !tbaa !143
  %38 = add i64 %2, -1
  %39 = load ptr, ptr %0, align 8, !tbaa !149
  %40 = getelementptr inbounds %struct.xpvhv, ptr %39, i64 0, i32 3
  store i64 %38, ptr %40, align 8, !tbaa !175
  br i1 %18, label %41, label %60, !prof !327

41:                                               ; preds = %37
  %42 = getelementptr inbounds i8, ptr %22, i64 %20
  %43 = load i32, ptr %6, align 4, !tbaa !123
  %44 = and i32 %43, 33554432
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %53, label %46, !prof !328

46:                                               ; preds = %41
  %47 = shl i64 %1, 3
  %48 = getelementptr inbounds i8, ptr %22, i64 %47
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %42, ptr noundef nonnull align 1 dereferenceable(56) %48, i64 56, i1 false)
  %49 = load i64, ptr @PL_hash_rand_bits, align 8, !tbaa !120
  %50 = trunc i64 %49 to i32
  %51 = getelementptr inbounds %struct.xpvhv_aux, ptr %42, i64 0, i32 6
  store i32 %50, ptr %51, align 8, !tbaa !218
  %52 = getelementptr inbounds %struct.xpvhv_aux, ptr %42, i64 0, i32 8
  store i32 0, ptr %52, align 8, !tbaa !212
  br label %60

53:                                               ; preds = %41
  %54 = load i64, ptr @PL_hash_rand_bits, align 8, !tbaa !120
  %55 = trunc i64 %54 to i32
  %56 = getelementptr inbounds %struct.xpvhv_aux, ptr %42, i64 0, i32 6
  store i32 %55, ptr %56, align 8, !tbaa !218
  %57 = tail call fastcc ptr @S_hv_auxinit_internal(ptr noundef nonnull %42) #17
  %58 = load i32, ptr %6, align 4, !tbaa !123
  %59 = or i32 %58, 33554432
  store i32 %59, ptr %6, align 4, !tbaa !123
  br label %60

60:                                               ; preds = %46, %53, %37
  %61 = shl i64 %1, 3
  %62 = getelementptr inbounds i8, ptr %22, i64 %61
  %63 = sub i64 %2, %1
  %64 = shl i64 %63, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %62, i8 0, i64 %64, i1 false)
  %65 = load ptr, ptr %0, align 8, !tbaa !149
  %66 = getelementptr inbounds %struct.xpvhv, ptr %65, i64 0, i32 2
  %67 = load i64, ptr %66, align 8, !tbaa !220
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %128, label %69, !prof !325

69:                                               ; preds = %60
  %70 = load i64, ptr @PL_hash_rand_bits, align 8, !tbaa !120
  %71 = trunc i64 %2 to i32
  %72 = add i32 %71, -1
  br label %73

73:                                               ; preds = %69, %124
  %74 = phi i64 [ %125, %124 ], [ %70, %69 ]
  %75 = phi i64 [ %126, %124 ], [ 0, %69 ]
  %76 = getelementptr inbounds ptr, ptr %22, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !109
  %78 = icmp eq ptr %77, null
  br i1 %78, label %124, label %79, !prof !329

79:                                               ; preds = %73
  %80 = trunc i64 %75 to i32
  br label %81

81:                                               ; preds = %79, %118
  %82 = phi i64 [ %119, %118 ], [ %74, %79 ]
  %83 = phi i64 [ %120, %118 ], [ %74, %79 ]
  %84 = phi ptr [ %121, %118 ], [ %76, %79 ]
  %85 = phi ptr [ %122, %118 ], [ %77, %79 ]
  %86 = getelementptr inbounds %struct.he, ptr %85, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !113
  %88 = load i32, ptr %87, align 4, !tbaa !183
  %89 = and i32 %88, %72
  %90 = icmp eq i32 %89, %80
  br i1 %90, label %118, label %91, !prof !330

91:                                               ; preds = %81
  %92 = load ptr, ptr %85, align 8, !tbaa !115
  store ptr %92, ptr %84, align 8, !tbaa !109
  %93 = zext i32 %89 to i64
  %94 = getelementptr inbounds ptr, ptr %22, i64 %93
  %95 = load ptr, ptr %94, align 8, !tbaa !109
  %96 = icmp ne ptr %95, null
  %97 = load i8, ptr @PL_hash_rand_bits_enabled, align 1
  %98 = icmp ne i8 %97, 0
  %99 = select i1 %96, i1 %98, i1 false
  br i1 %99, label %100, label %113, !prof !331

100:                                              ; preds = %91
  %101 = load ptr, ptr %86, align 8, !tbaa !113
  %102 = load i32, ptr %101, align 4, !tbaa !183
  %103 = tail call i32 @llvm.fshl.i32(i32 %102, i32 %102, i32 17)
  %104 = zext i32 %103 to i64
  %105 = add i64 %83, %104
  %106 = tail call i64 @llvm.fshl.i64(i64 %105, i64 %105, i64 1)
  store i64 %106, ptr @PL_hash_rand_bits, align 8, !tbaa !120
  %107 = and i64 %106, 1
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %100
  %110 = load ptr, ptr %95, align 8, !tbaa !115
  store ptr %110, ptr %85, align 8, !tbaa !115
  %111 = load ptr, ptr %94, align 8, !tbaa !109
  br label %114

112:                                              ; preds = %100
  store ptr %95, ptr %85, align 8, !tbaa !115
  br label %114

113:                                              ; preds = %91
  store ptr %95, ptr %85, align 8, !tbaa !115
  br label %114

114:                                              ; preds = %109, %112, %113
  %115 = phi ptr [ %94, %113 ], [ %94, %112 ], [ %111, %109 ]
  %116 = phi i64 [ %82, %113 ], [ %106, %112 ], [ %106, %109 ]
  %117 = phi i64 [ %83, %113 ], [ %106, %112 ], [ %106, %109 ]
  store ptr %85, ptr %115, align 8, !tbaa !109
  br label %118

118:                                              ; preds = %114, %81
  %119 = phi i64 [ %82, %81 ], [ %116, %114 ]
  %120 = phi i64 [ %83, %81 ], [ %117, %114 ]
  %121 = phi ptr [ %85, %81 ], [ %84, %114 ]
  %122 = load ptr, ptr %121, align 8, !tbaa !109
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %81, !prof !332, !llvm.loop !333

124:                                              ; preds = %118, %73
  %125 = phi i64 [ %74, %73 ], [ %119, %118 ]
  %126 = add i64 %75, 1
  %127 = icmp eq i64 %75, %1
  br i1 %127, label %128, label %73, !prof !334, !llvm.loop !335

128:                                              ; preds = %124, %60, %17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_hv_scalar(ptr noundef %0) local_unnamed_addr #0 !prof !336 {
  %2 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !123
  %4 = and i32 %3, 8388608
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6, !prof !337

6:                                                ; preds = %1
  %7 = tail call ptr @Perl_mg_find(ptr noundef nonnull %0, i32 noundef 80) #16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call ptr @Perl_magic_scalarpack(ptr noundef nonnull %0, ptr noundef nonnull %7) #16
  br label %24

11:                                               ; preds = %6, %1
  %12 = tail call ptr @Perl_sv_newmortal() #16
  %13 = load ptr, ptr %0, align 8, !tbaa !149
  %14 = getelementptr inbounds %struct.xpvhv, ptr %13, i64 0, i32 2
  %15 = load i64, ptr %14, align 8, !tbaa !220
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %23, label %17, !prof !338

17:                                               ; preds = %11
  %18 = tail call i64 @Perl_hv_fill(ptr noundef nonnull %0) #17
  %19 = load ptr, ptr %0, align 8, !tbaa !149
  %20 = getelementptr inbounds %struct.xpvhv, ptr %19, i64 0, i32 3
  %21 = load i64, ptr %20, align 8, !tbaa !175
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
define dso_local i64 @Perl_hv_fill(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !336 {
  %2 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !143
  %4 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !123
  %6 = and i32 %5, 33554432
  %7 = icmp eq i32 %6, 0
  %8 = load ptr, ptr %0, align 8, !tbaa !149
  br i1 %7, label %17, label %9, !prof !338

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.xpvhv, ptr %8, i64 0, i32 3
  %11 = load i64, ptr %10, align 8, !tbaa !175
  %12 = getelementptr ptr, ptr %3, i64 %11
  %13 = getelementptr ptr, ptr %12, i64 1
  %14 = getelementptr inbounds %struct.xpvhv, ptr %8, i64 0, i32 2
  %15 = load i64, ptr %14, align 8, !tbaa !220
  %16 = icmp ult i64 %15, 2
  br i1 %16, label %64, label %21, !prof !338

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.xpvhv, ptr %8, i64 0, i32 2
  %19 = load i64, ptr %18, align 8, !tbaa !220
  %20 = icmp ult i64 %19, 2
  br i1 %20, label %64, label %29, !prof !338

21:                                               ; preds = %9
  %22 = icmp eq ptr %13, null
  br i1 %22, label %29, label %23, !prof !228

23:                                               ; preds = %21
  %24 = getelementptr ptr, ptr %12, i64 7
  %25 = load i32, ptr %24, align 8, !tbaa !212
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %33, label %27, !prof !337

27:                                               ; preds = %23
  %28 = zext i32 %25 to i64
  br label %64

29:                                               ; preds = %17, %21
  %30 = icmp eq ptr %3, null
  %31 = getelementptr inbounds %struct.xpvhv, ptr %8, i64 0, i32 3
  %32 = load i64, ptr %31, align 8, !tbaa !175
  br i1 %30, label %56, label %33, !prof !339

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
  %46 = load ptr, ptr %45, align 8, !tbaa !109
  %47 = icmp eq ptr %46, null
  %48 = sext i1 %47 to i64
  %49 = add i64 %44, %48
  %50 = getelementptr inbounds ptr, ptr %45, i64 1
  %51 = icmp ugt ptr %50, %37
  br i1 %51, label %52, label %43, !prof !340, !llvm.loop !341

52:                                               ; preds = %43
  br i1 %36, label %56, label %53, !prof !228

53:                                               ; preds = %52
  %54 = trunc i64 %49 to i32
  %55 = getelementptr inbounds %struct.xpvhv_aux, ptr %35, i64 0, i32 8
  store i32 %54, ptr %55, align 8, !tbaa !212
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
  store i32 %62, ptr %63, align 8, !tbaa !212
  br label %64

64:                                               ; preds = %17, %53, %60, %56, %9, %27
  %65 = phi i64 [ %28, %27 ], [ %15, %9 ], [ %58, %56 ], [ %58, %60 ], [ %49, %53 ], [ %19, %17 ]
  ret i64 %65
}

; Function Attrs: optsize
declare void @Perl_sv_setiv(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_hv_ksplit(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 !prof !336 {
  %3 = load ptr, ptr %0, align 8, !tbaa !149
  %4 = getelementptr inbounds %struct.xpvhv, ptr %3, i64 0, i32 3
  %5 = add i64 %1, 2147483648
  %6 = icmp ult i64 %5, 4294967296
  br i1 %6, label %7, label %38, !prof !337

7:                                                ; preds = %2
  %8 = load i64, ptr %4, align 8, !tbaa !175
  %9 = shl i64 %8, 32
  %10 = add i64 %9, 4294967296
  %11 = ashr exact i64 %10, 32
  %12 = icmp slt i64 %11, %1
  br i1 %12, label %13, label %38, !prof !337

13:                                               ; preds = %7
  %14 = trunc i64 %1 to i32
  br label %15

15:                                               ; preds = %13, %15
  %16 = phi i32 [ %20, %15 ], [ %14, %13 ]
  %17 = sub nsw i32 0, %16
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, %16
  %20 = xor i32 %18, %16
  br i1 %19, label %21, label %15, !prof !337, !llvm.loop !342

21:                                               ; preds = %15
  %22 = sext i32 %16 to i64
  %23 = icmp slt i64 %22, %1
  %24 = zext i1 %23 to i32
  %25 = shl nsw i32 %16, %24
  %26 = sext i32 %25 to i64
  %27 = icmp slt i64 %26, %1
  br i1 %27, label %38, label %28, !prof !338

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !143
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32, !prof !337

32:                                               ; preds = %28
  tail call fastcc void @S_hsplit(ptr noundef nonnull %0, i64 noundef %11, i64 noundef %26) #17
  br label %38

33:                                               ; preds = %28
  %34 = shl nsw i64 %26, 3
  %35 = tail call ptr @Perl_safesyscalloc(i64 noundef %34, i64 noundef 1) #16
  %36 = add nsw i32 %25, -1
  %37 = sext i32 %36 to i64
  store i64 %37, ptr %4, align 8, !tbaa !175
  store ptr %35, ptr %29, align 8, !tbaa !143
  br label %38

38:                                               ; preds = %32, %33, %21, %2, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_newHVhv(ptr noundef %0) local_unnamed_addr #0 !prof !108 {
  %2 = tail call ptr @Perl_newSV_type(i32 noundef 12) #16
  %3 = icmp eq ptr %0, null
  br i1 %3, label %169, label %4, !prof !343

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !149
  %6 = getelementptr inbounds %struct.xpvhv, ptr %5, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !220
  %8 = icmp eq i64 %7, 0
  %9 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !285
  %11 = and i32 %10, 14680064
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %8, i1 %12, i1 false
  br i1 %13, label %169, label %14, !prof !344

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.xpvhv, ptr %5, i64 0, i32 3
  %16 = load i64, ptr %15, align 8, !tbaa !175
  %17 = and i32 %10, 14680064
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %90, !prof !345

19:                                               ; preds = %14
  %20 = and i32 %10, 536870912
  %21 = icmp eq i32 %20, 0
  %22 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !143
  %24 = shl i64 %16, 3
  %25 = add i64 %24, 8
  %26 = tail call ptr @Perl_safesysmalloc(i64 noundef %25) #16
  br label %27

27:                                               ; preds = %19, %79
  %28 = phi i64 [ 0, %19 ], [ %80, %79 ]
  %29 = getelementptr inbounds ptr, ptr %23, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !109
  %31 = icmp eq ptr %30, null
  %32 = getelementptr inbounds ptr, ptr %26, i64 %28
  br i1 %31, label %33, label %34, !prof !346

33:                                               ; preds = %27
  store ptr null, ptr %32, align 8, !tbaa !109
  br label %79

34:                                               ; preds = %27, %72
  %35 = phi ptr [ %48, %72 ], [ null, %27 ]
  %36 = phi ptr [ %77, %72 ], [ %30, %27 ]
  %37 = getelementptr inbounds %struct.he, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !113
  %39 = load i32, ptr %38, align 4, !tbaa !183
  %40 = getelementptr inbounds %struct.hek, ptr %38, i64 0, i32 2
  %41 = getelementptr inbounds %struct.hek, ptr %38, i64 0, i32 1
  %42 = load i32, ptr %41, align 4, !tbaa !158
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, ptr %40, i64 %43
  %45 = getelementptr inbounds i8, ptr %44, i64 1
  %46 = load i8, ptr %45, align 1, !tbaa !143
  %47 = zext i8 %46 to i32
  %48 = tail call fastcc ptr @S_new_he() #17
  %49 = getelementptr inbounds %struct.he, ptr %36, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !143
  %51 = getelementptr inbounds %struct.sv, ptr %50, i64 0, i32 2
  %52 = load i32, ptr %51, align 4, !tbaa !137
  %53 = and i32 %52, 134283264
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %63, label %55, !prof !347

55:                                               ; preds = %34
  %56 = icmp eq ptr %50, @PL_sv_undef
  %57 = icmp eq ptr %50, @PL_sv_yes
  %58 = or i1 %56, %57
  br i1 %58, label %65, label %59, !prof !348

59:                                               ; preds = %55
  %60 = icmp eq ptr %50, @PL_sv_no
  %61 = icmp eq ptr %50, @PL_sv_placeholder
  %62 = or i1 %60, %61
  br i1 %62, label %65, label %63

63:                                               ; preds = %59, %34
  %64 = tail call ptr @Perl_newSVsv(ptr noundef %50) #16
  br label %65

65:                                               ; preds = %55, %59, %63
  %66 = phi ptr [ %64, %63 ], [ %50, %59 ], [ %50, %55 ]
  %67 = getelementptr inbounds %struct.he, ptr %48, i64 0, i32 2
  store ptr %66, ptr %67, align 8, !tbaa !143
  br i1 %21, label %70, label %68, !prof !347

68:                                               ; preds = %65
  %69 = tail call fastcc ptr @S_share_hek_flags(ptr noundef nonnull %40, i32 noundef %42, i32 noundef %39, i32 noundef %47) #17
  br label %72

70:                                               ; preds = %65
  %71 = tail call fastcc ptr @S_save_hek_flags(ptr noundef nonnull %40, i32 noundef %42, i32 noundef %39, i32 noundef %47) #17
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi ptr [ %69, %68 ], [ %71, %70 ]
  %74 = getelementptr inbounds %struct.he, ptr %48, i64 0, i32 1
  store ptr %73, ptr %74, align 8, !tbaa !113
  %75 = icmp eq ptr %35, null
  %76 = select i1 %75, ptr %32, ptr %35, !prof !349
  store ptr %48, ptr %76, align 8, !tbaa !109
  store ptr null, ptr %48, align 8, !tbaa !115
  %77 = load ptr, ptr %36, align 8, !tbaa !115
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %34, !prof !350, !llvm.loop !351

79:                                               ; preds = %72, %33
  %80 = add i64 %28, 1
  %81 = icmp ugt i64 %80, %16
  br i1 %81, label %82, label %27, !prof !352, !llvm.loop !353

82:                                               ; preds = %79
  %83 = load ptr, ptr %2, align 8, !tbaa !149
  %84 = getelementptr inbounds %struct.xpvhv, ptr %83, i64 0, i32 3
  store i64 %16, ptr %84, align 8, !tbaa !175
  %85 = load ptr, ptr %0, align 8, !tbaa !149
  %86 = getelementptr inbounds %struct.xpvhv, ptr %85, i64 0, i32 2
  %87 = load i64, ptr %86, align 8, !tbaa !220
  %88 = getelementptr inbounds %struct.xpvhv, ptr %83, i64 0, i32 2
  store i64 %87, ptr %88, align 8, !tbaa !220
  %89 = getelementptr inbounds %struct.hv, ptr %2, i64 0, i32 3
  store ptr %26, ptr %89, align 8, !tbaa !143
  br label %169

90:                                               ; preds = %14
  %91 = and i32 %10, 33554432
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %101, label %93

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %95 = load ptr, ptr %94, align 8, !tbaa !143
  %96 = getelementptr ptr, ptr %95, i64 %16
  %97 = getelementptr ptr, ptr %96, i64 4
  %98 = load i32, ptr %97, align 8, !tbaa !354
  %99 = getelementptr ptr, ptr %96, i64 3
  %100 = load ptr, ptr %99, align 8, !tbaa !271
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
  br i1 %113, label %107, label %114, !llvm.loop !355

114:                                              ; preds = %111, %107, %101
  %115 = phi i64 [ 7, %101 ], [ %112, %111 ], [ %108, %107 ]
  %116 = load ptr, ptr %2, align 8, !tbaa !149
  %117 = getelementptr inbounds %struct.xpvhv, ptr %116, i64 0, i32 3
  store i64 %115, ptr %117, align 8, !tbaa !175
  %118 = tail call i32 @Perl_hv_iterinit(ptr noundef nonnull %0) #17
  %119 = tail call ptr @Perl_hv_iternext_flags(ptr noundef nonnull %0, i32 noundef 0) #17
  %120 = icmp eq ptr %119, null
  br i1 %120, label %168, label %121

121:                                              ; preds = %114, %165
  %122 = phi ptr [ %166, %165 ], [ %119, %114 ]
  %123 = tail call ptr @Perl_hv_iterval(ptr noundef nonnull %0, ptr noundef nonnull %122) #17
  %124 = getelementptr inbounds %struct.he, ptr %122, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !113
  %126 = getelementptr inbounds %struct.hek, ptr %125, i64 0, i32 1
  %127 = load i32, ptr %126, align 4, !tbaa !158
  %128 = icmp eq i32 %127, -2
  br i1 %128, label %129, label %132

129:                                              ; preds = %121
  %130 = getelementptr inbounds %struct.hek, ptr %125, i64 0, i32 2
  %131 = load ptr, ptr %130, align 4, !tbaa !109
  br label %132

132:                                              ; preds = %121, %129
  %133 = phi ptr [ %131, %129 ], [ null, %121 ]
  %134 = getelementptr inbounds %struct.sv, ptr %123, i64 0, i32 2
  %135 = load i32, ptr %134, align 4, !tbaa !137
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
  %154 = load ptr, ptr %124, align 8, !tbaa !113
  %155 = getelementptr inbounds %struct.hek, ptr %154, i64 0, i32 2
  %156 = getelementptr inbounds %struct.hek, ptr %154, i64 0, i32 1
  %157 = load i32, ptr %156, align 4, !tbaa !158
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, ptr %155, i64 %158
  %160 = getelementptr inbounds i8, ptr %159, i64 1
  %161 = load i8, ptr %160, align 1, !tbaa !143
  %162 = zext i8 %161 to i32
  %163 = load i32, ptr %154, align 4, !tbaa !183
  %164 = tail call ptr @Perl_hv_common(ptr noundef nonnull %2, ptr noundef null, ptr noundef nonnull %155, i64 noundef %158, i32 noundef %162, i32 noundef 36, ptr noundef %149, i32 noundef %163) #17
  br label %165

165:                                              ; preds = %153, %151
  %166 = tail call ptr @Perl_hv_iternext_flags(ptr noundef nonnull %0, i32 noundef 0) #17
  %167 = icmp eq ptr %166, null
  br i1 %167, label %168, label %121, !llvm.loop !356

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
define dso_local i32 @Perl_hv_iterinit(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !357 {
  %2 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !123
  %4 = and i32 %3, 33554432
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %35, label %6, !prof !358

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !143
  %9 = load ptr, ptr %0, align 8, !tbaa !149
  %10 = getelementptr inbounds %struct.xpvhv, ptr %9, i64 0, i32 3
  %11 = load i64, ptr %10, align 8, !tbaa !175
  %12 = getelementptr ptr, ptr %8, i64 %11
  %13 = getelementptr ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8, !tbaa !271
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16, !prof !359

16:                                               ; preds = %6
  %17 = and i32 %3, 1073741824
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = and i32 %3, -1073741825
  store i32 %20, ptr %2, align 4, !tbaa !123
  tail call void @Perl_hv_free_ent(ptr noundef nonnull %0, ptr noundef nonnull %14) #17
  %21 = load ptr, ptr %7, align 8, !tbaa !143
  %22 = load ptr, ptr %0, align 8, !tbaa !149
  %23 = getelementptr inbounds %struct.xpvhv, ptr %22, i64 0, i32 3
  %24 = load i64, ptr %23, align 8, !tbaa !175
  br label %25

25:                                               ; preds = %19, %16, %6
  %26 = phi i64 [ %24, %19 ], [ %11, %16 ], [ %11, %6 ]
  %27 = phi ptr [ %22, %19 ], [ %9, %16 ], [ %9, %6 ]
  %28 = phi ptr [ %21, %19 ], [ %8, %16 ], [ %8, %6 ]
  %29 = getelementptr ptr, ptr %28, i64 %26
  %30 = getelementptr ptr, ptr %29, i64 4
  store i32 -1, ptr %30, align 8, !tbaa !354
  %31 = getelementptr ptr, ptr %29, i64 3
  store ptr null, ptr %31, align 8, !tbaa !271
  %32 = getelementptr ptr, ptr %29, i64 6
  %33 = load i32, ptr %32, align 8, !tbaa !218
  %34 = getelementptr i8, ptr %29, i64 52
  store i32 %33, ptr %34, align 4, !tbaa !360
  br label %38

35:                                               ; preds = %1
  %36 = tail call fastcc ptr @S_hv_auxinit(ptr noundef nonnull %0) #17
  %37 = load ptr, ptr %0, align 8, !tbaa !149
  br label %38

38:                                               ; preds = %35, %25
  %39 = phi ptr [ %37, %35 ], [ %27, %25 ]
  %40 = getelementptr inbounds %struct.xpvhv, ptr %39, i64 0, i32 2
  %41 = load i64, ptr %40, align 8, !tbaa !220
  %42 = trunc i64 %41 to i32
  ret i32 %42
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_hv_iternext_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !108 {
  %3 = load ptr, ptr %0, align 8, !tbaa !149
  %4 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !123
  %6 = and i32 %5, 33554432
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12, !prof !361

8:                                                ; preds = %2
  %9 = tail call i32 @Perl_hv_iterinit(ptr noundef nonnull %0) #17
  %10 = load ptr, ptr %0, align 8, !tbaa !149
  %11 = load i32, ptr %4, align 4, !tbaa !123
  br label %12

12:                                               ; preds = %8, %2
  %13 = phi i32 [ %11, %8 ], [ %5, %2 ]
  %14 = phi ptr [ %10, %8 ], [ %3, %2 ]
  %15 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !143
  %17 = getelementptr inbounds %struct.xpvhv, ptr %14, i64 0, i32 3
  %18 = load i64, ptr %17, align 8, !tbaa !175
  %19 = getelementptr ptr, ptr %16, i64 %18
  %20 = getelementptr ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8, !tbaa !271
  %22 = and i32 %13, 14680064
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %108, label %24, !prof !362

24:                                               ; preds = %12
  %25 = and i32 %13, 8388608
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %108, label %27, !prof !363

27:                                               ; preds = %24
  %28 = tail call ptr @Perl_mg_find(ptr noundef nonnull %0, i32 noundef 80) #16
  %29 = icmp eq ptr %28, null
  br i1 %29, label %108, label %30, !prof !364

30:                                               ; preds = %27
  %31 = tail call ptr @Perl_sv_newmortal() #16
  %32 = icmp eq ptr %21, null
  br i1 %32, label %66, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.he, ptr %21, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !113
  %36 = getelementptr inbounds %struct.hek, ptr %35, i64 0, i32 2
  %37 = getelementptr inbounds %struct.hek, ptr %35, i64 0, i32 1
  %38 = load i32, ptr %37, align 4, !tbaa !158
  %39 = icmp eq i32 %38, -2
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load ptr, ptr %36, align 4, !tbaa !109
  br label %52

42:                                               ; preds = %33
  %43 = sext i32 %38 to i64
  %44 = getelementptr inbounds i8, ptr %36, i64 %43
  %45 = getelementptr inbounds i8, ptr %44, i64 1
  %46 = load i8, ptr %45, align 1, !tbaa !143
  %47 = and i8 %46, 1
  %48 = zext nneg i8 %47 to i32
  %49 = shl nuw nsw i32 %48, 29
  %50 = or disjoint i32 %49, 524288
  %51 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull %36, i64 noundef %43, i32 noundef %50) #16
  br label %52

52:                                               ; preds = %40, %42
  %53 = phi ptr [ %41, %40 ], [ %51, %42 ]
  tail call void @Perl_sv_setsv_flags(ptr noundef %31, ptr noundef %53, i32 noundef 1538) #16
  %54 = load ptr, ptr %34, align 8, !tbaa !113
  %55 = getelementptr inbounds %struct.hek, ptr %54, i64 0, i32 1
  %56 = load i32, ptr %55, align 4, !tbaa !158
  %57 = icmp eq i32 %56, -2
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.hek, ptr %54, i64 0, i32 2
  %60 = load ptr, ptr %59, align 4, !tbaa !109
  br label %61

61:                                               ; preds = %52, %58
  %62 = phi ptr [ %60, %58 ], [ null, %52 ]
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %62) #17
  %63 = load ptr, ptr %34, align 8, !tbaa !113
  %64 = getelementptr inbounds %struct.hek, ptr %63, i64 0, i32 1
  store i32 -2, ptr %64, align 4, !tbaa !158
  %65 = getelementptr inbounds %struct.hek, ptr %63, i64 0, i32 2
  store ptr null, ptr %65, align 4, !tbaa !109
  br label %73

66:                                               ; preds = %30
  %67 = tail call fastcc ptr @S_new_he() #17
  store ptr %67, ptr %20, align 8, !tbaa !271
  %68 = load i32, ptr %4, align 4, !tbaa !123
  %69 = or i32 %68, 1073741824
  store i32 %69, ptr %4, align 4, !tbaa !123
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %67, i8 0, i64 24, i1 false)
  %70 = tail call ptr @Perl_safesyscalloc(i64 noundef 16, i64 noundef 1) #16
  %71 = getelementptr inbounds %struct.he, ptr %67, i64 0, i32 1
  store ptr %70, ptr %71, align 8, !tbaa !113
  %72 = getelementptr inbounds %struct.hek, ptr %70, i64 0, i32 1
  store i32 -2, ptr %72, align 4, !tbaa !158
  br label %73

73:                                               ; preds = %66, %61
  %74 = phi ptr [ %21, %61 ], [ %67, %66 ]
  %75 = tail call i32 @Perl_magic_nextpack(ptr noundef nonnull %0, ptr noundef nonnull %28, ptr noundef %31) #16
  %76 = getelementptr inbounds %struct.sv, ptr %31, i64 0, i32 2
  %77 = load i32, ptr %76, align 4, !tbaa !137
  %78 = and i32 %77, 65280
  %79 = icmp ne i32 %78, 0
  %80 = and i32 %77, 255
  %81 = icmp eq i32 %80, 8
  %82 = or i1 %79, %81
  %83 = and i32 %77, 16777471
  %84 = icmp eq i32 %83, 16777226
  %85 = or i1 %84, %82
  br i1 %85, label %86, label %94

86:                                               ; preds = %73
  %87 = getelementptr inbounds %struct.he, ptr %74, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !113
  %89 = getelementptr inbounds %struct.hek, ptr %88, i64 0, i32 1
  store i32 -2, ptr %89, align 4, !tbaa !158
  %90 = getelementptr inbounds %struct.sv, ptr %31, i64 0, i32 1
  %91 = load i32, ptr %90, align 8, !tbaa !259
  %92 = add i32 %91, 1
  store i32 %92, ptr %90, align 8, !tbaa !259
  %93 = getelementptr inbounds %struct.hek, ptr %88, i64 0, i32 2
  store ptr %31, ptr %93, align 4, !tbaa !109
  br label %226

94:                                               ; preds = %73
  %95 = getelementptr inbounds %struct.he, ptr %74, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !143
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %96) #17
  %97 = getelementptr inbounds %struct.he, ptr %74, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !113
  tail call void @Perl_safesysfree(ptr noundef %98) #16
  %99 = load ptr, ptr @PL_body_roots, align 16, !tbaa !109
  store ptr %99, ptr %74, align 8, !tbaa !115
  store ptr %74, ptr @PL_body_roots, align 16, !tbaa !109
  %100 = load ptr, ptr %15, align 8, !tbaa !143
  %101 = load ptr, ptr %0, align 8, !tbaa !149
  %102 = getelementptr inbounds %struct.xpvhv, ptr %101, i64 0, i32 3
  %103 = load i64, ptr %102, align 8, !tbaa !175
  %104 = getelementptr ptr, ptr %100, i64 %103
  %105 = getelementptr ptr, ptr %104, i64 3
  store ptr null, ptr %105, align 8, !tbaa !271
  %106 = load i32, ptr %4, align 4, !tbaa !123
  %107 = and i32 %106, -1073741825
  store i32 %107, ptr %4, align 4, !tbaa !123
  br label %226

108:                                              ; preds = %27, %24, %12
  %109 = icmp eq ptr %21, null
  br i1 %109, label %124, label %110, !prof !365

110:                                              ; preds = %108
  %111 = load ptr, ptr %21, align 8, !tbaa !115
  %112 = and i32 %1, 1
  %113 = icmp eq i32 %112, 0
  %114 = icmp ne ptr %111, null
  %115 = select i1 %113, i1 %114, i1 false
  br i1 %115, label %116, label %124, !prof !366

116:                                              ; preds = %110, %121
  %117 = phi ptr [ %122, %121 ], [ %111, %110 ]
  %118 = getelementptr inbounds %struct.he, ptr %117, i64 0, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !143
  %120 = icmp eq ptr %119, @PL_sv_placeholder
  br i1 %120, label %121, label %124, !prof !367

121:                                              ; preds = %116
  %122 = load ptr, ptr %117, align 8, !tbaa !115
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %116, !prof !368

124:                                              ; preds = %121, %116, %110, %108
  %125 = phi ptr [ %111, %110 ], [ null, %108 ], [ %117, %116 ], [ null, %121 ]
  %126 = getelementptr i8, ptr %19, i64 52
  %127 = load i32, ptr %126, align 4, !tbaa !360
  %128 = getelementptr ptr, ptr %19, i64 6
  %129 = load i32, ptr %128, align 8, !tbaa !218
  %130 = icmp eq i32 %127, %129
  br i1 %130, label %145, label %131, !prof !369

131:                                              ; preds = %124
  %132 = getelementptr ptr, ptr %19, i64 4
  %133 = load i32, ptr %132, align 8, !tbaa !354
  %134 = icmp eq i32 %133, -1
  br i1 %134, label %136, label %135

135:                                              ; preds = %131
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 24, ptr noundef nonnull @.str.7) #16
  br label %136

136:                                              ; preds = %135, %131
  %137 = load ptr, ptr %15, align 8, !tbaa !143
  %138 = load ptr, ptr %0, align 8, !tbaa !149
  %139 = getelementptr inbounds %struct.xpvhv, ptr %138, i64 0, i32 3
  %140 = load i64, ptr %139, align 8, !tbaa !175
  %141 = getelementptr ptr, ptr %137, i64 %140
  %142 = getelementptr ptr, ptr %141, i64 6
  %143 = load i32, ptr %142, align 8, !tbaa !218
  %144 = getelementptr i8, ptr %141, i64 52
  store i32 %143, ptr %144, align 4, !tbaa !360
  br label %145

145:                                              ; preds = %136, %124
  %146 = phi i32 [ %143, %136 ], [ %127, %124 ]
  %147 = phi ptr [ %141, %136 ], [ %19, %124 ]
  %148 = and i32 %1, 1
  %149 = icmp eq i32 %148, 0
  %150 = load ptr, ptr %0, align 8, !tbaa !149
  %151 = getelementptr inbounds %struct.xpvhv, ptr %150, i64 0, i32 2
  %152 = load i64, ptr %151, align 8, !tbaa !220
  br i1 %149, label %155, label %153, !prof !369

153:                                              ; preds = %145
  %154 = icmp eq i64 %152, 0
  br i1 %154, label %204, label %168

155:                                              ; preds = %145
  %156 = getelementptr inbounds %struct.xpvmg, ptr %150, i64 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !143
  %158 = icmp eq ptr %157, null
  br i1 %158, label %162, label %159, !prof !363

159:                                              ; preds = %155
  %160 = tail call i32 @Perl_hv_placeholders_get(ptr noundef nonnull %0) #17
  %161 = sext i32 %160 to i64
  br label %162

162:                                              ; preds = %155, %159
  %163 = phi i64 [ %161, %159 ], [ 0, %155 ]
  %164 = icmp eq i64 %152, %163
  br i1 %164, label %165, label %168, !prof !370

165:                                              ; preds = %162
  %166 = getelementptr ptr, ptr %147, i64 6
  %167 = load i32, ptr %166, align 8, !tbaa !218
  br label %204

168:                                              ; preds = %162, %153
  %169 = icmp eq ptr %125, null
  br i1 %169, label %170, label %211, !prof !371

170:                                              ; preds = %168
  %171 = getelementptr ptr, ptr %147, i64 4
  %172 = getelementptr inbounds %struct.xpvhv, ptr %3, i64 0, i32 3
  %173 = load i64, ptr %172, align 8, !tbaa !175
  %174 = trunc i64 %173 to i32
  %175 = getelementptr ptr, ptr %147, i64 6
  %176 = load i32, ptr %171, align 8, !tbaa !354
  br label %177

177:                                              ; preds = %170, %201
  %178 = phi i32 [ %176, %170 ], [ %179, %201 ]
  %179 = add nsw i32 %178, 1
  store i32 %179, ptr %171, align 8, !tbaa !354
  %180 = icmp slt i32 %178, %174
  br i1 %180, label %183, label %181, !prof !372

181:                                              ; preds = %177
  store i32 -1, ptr %171, align 8, !tbaa !354
  %182 = load i32, ptr %175, align 8, !tbaa !218
  br label %207

183:                                              ; preds = %177
  %184 = load ptr, ptr %15, align 8, !tbaa !143
  %185 = load i32, ptr %175, align 8, !tbaa !218
  %186 = xor i32 %185, %179
  %187 = zext i32 %186 to i64
  %188 = and i64 %173, %187
  %189 = getelementptr inbounds ptr, ptr %184, i64 %188
  %190 = load ptr, ptr %189, align 8, !tbaa !109
  %191 = icmp ne ptr %190, null
  %192 = select i1 %149, i1 %191, i1 false
  br i1 %192, label %193, label %201, !prof !373

193:                                              ; preds = %183, %198
  %194 = phi ptr [ %199, %198 ], [ %190, %183 ]
  %195 = getelementptr inbounds %struct.he, ptr %194, i64 0, i32 2
  %196 = load ptr, ptr %195, align 8, !tbaa !143
  %197 = icmp eq ptr %196, @PL_sv_placeholder
  br i1 %197, label %198, label %211, !prof !374

198:                                              ; preds = %193
  %199 = load ptr, ptr %194, align 8, !tbaa !115
  %200 = icmp eq ptr %199, null
  br i1 %200, label %201, label %193, !prof !375

201:                                              ; preds = %198, %183
  %202 = phi ptr [ %190, %183 ], [ null, %198 ]
  %203 = icmp eq ptr %202, null
  br i1 %203, label %177, label %211, !prof !376, !llvm.loop !377

204:                                              ; preds = %165, %153
  %205 = phi i32 [ %167, %165 ], [ %146, %153 ]
  %206 = getelementptr ptr, ptr %147, i64 4
  store i32 -1, ptr %206, align 8, !tbaa !354
  br label %207

207:                                              ; preds = %204, %181
  %208 = phi i32 [ %182, %181 ], [ %205, %204 ]
  %209 = phi ptr [ null, %181 ], [ %125, %204 ]
  %210 = getelementptr i8, ptr %147, i64 52
  store i32 %208, ptr %210, align 4, !tbaa !360
  br label %211

211:                                              ; preds = %201, %193, %207, %168
  %212 = phi ptr [ %125, %168 ], [ %209, %207 ], [ %194, %193 ], [ %202, %201 ]
  br i1 %109, label %219, label %213, !prof !365

213:                                              ; preds = %211
  %214 = load i32, ptr %4, align 4, !tbaa !123
  %215 = and i32 %214, 1073741824
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %219, label %217, !prof !378

217:                                              ; preds = %213
  %218 = and i32 %214, -1073741825
  store i32 %218, ptr %4, align 4, !tbaa !123
  tail call void @Perl_hv_free_ent(ptr noundef nonnull %0, ptr noundef nonnull %21) #17
  br label %219

219:                                              ; preds = %217, %213, %211
  %220 = load ptr, ptr %15, align 8, !tbaa !143
  %221 = load ptr, ptr %0, align 8, !tbaa !149
  %222 = getelementptr inbounds %struct.xpvhv, ptr %221, i64 0, i32 3
  %223 = load i64, ptr %222, align 8, !tbaa !175
  %224 = getelementptr ptr, ptr %220, i64 %223
  %225 = getelementptr ptr, ptr %224, i64 3
  store ptr %212, ptr %225, align 8, !tbaa !271
  br label %226

226:                                              ; preds = %86, %94, %219
  %227 = phi ptr [ %212, %219 ], [ %74, %86 ], [ null, %94 ]
  ret ptr %227
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_hv_iterval(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !379 {
  %3 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !123
  %5 = and i32 %4, 8388608
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %23, label %7, !prof !380

7:                                                ; preds = %2
  %8 = tail call ptr @Perl_mg_find(ptr noundef nonnull %0, i32 noundef 80) #16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %23, label %10, !prof !381

10:                                               ; preds = %7
  %11 = tail call ptr @Perl_sv_newmortal() #16
  %12 = getelementptr inbounds %struct.he, ptr %1, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !113
  %14 = getelementptr inbounds %struct.hek, ptr %13, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !158
  %16 = icmp eq i32 %15, -2
  %17 = getelementptr inbounds %struct.hek, ptr %13, i64 0, i32 2
  br i1 %16, label %18, label %21

18:                                               ; preds = %10
  %19 = load ptr, ptr %17, align 4, !tbaa !109
  %20 = tail call i32 @Perl_mg_copy(ptr noundef nonnull %0, ptr noundef %11, ptr noundef %19, i32 noundef -2) #16
  br label %26

21:                                               ; preds = %10
  %22 = tail call i32 @Perl_mg_copy(ptr noundef nonnull %0, ptr noundef %11, ptr noundef nonnull %17, i32 noundef %15) #16
  br label %26

23:                                               ; preds = %7, %2
  %24 = getelementptr inbounds %struct.he, ptr %1, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !143
  br label %26

26:                                               ; preds = %18, %21, %23
  %27 = phi ptr [ %25, %23 ], [ %11, %21 ], [ %11, %18 ]
  ret ptr %27
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_hv_riter_set(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !382 {
  %3 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !123
  %5 = and i32 %4, 33554432
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %15, label %7, !prof !383

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !143
  %10 = load ptr, ptr %0, align 8, !tbaa !149
  %11 = getelementptr inbounds %struct.xpvhv, ptr %10, i64 0, i32 3
  %12 = load i64, ptr %11, align 8, !tbaa !175
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
  store i32 %1, ptr %21, align 8, !tbaa !354
  br label %22

22:                                               ; preds = %15, %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_hv_eiter_set(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !384 {
  %3 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !123
  %5 = and i32 %4, 33554432
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %15, label %7, !prof !385

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !143
  %10 = load ptr, ptr %0, align 8, !tbaa !149
  %11 = getelementptr inbounds %struct.xpvhv, ptr %10, i64 0, i32 3
  %12 = load i64, ptr %11, align 8, !tbaa !175
  %13 = getelementptr ptr, ptr %9, i64 %12
  %14 = getelementptr ptr, ptr %13, i64 1
  br label %19

15:                                               ; preds = %2
  %16 = icmp eq ptr %1, null
  br i1 %16, label %22, label %17, !prof !386

17:                                               ; preds = %15
  %18 = tail call fastcc ptr @S_hv_auxinit(ptr noundef nonnull %0) #17
  br label %19

19:                                               ; preds = %17, %7
  %20 = phi ptr [ %14, %7 ], [ %18, %17 ]
  %21 = getelementptr inbounds %struct.xpvhv_aux, ptr %20, i64 0, i32 2
  store ptr %1, ptr %21, align 8, !tbaa !271
  br label %22

22:                                               ; preds = %15, %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_hv_copy_hints_hv(ptr noundef %0) local_unnamed_addr #0 !prof !382 {
  %2 = tail call ptr @Perl_newSV_type(i32 noundef 12) #16
  %3 = icmp eq ptr %0, null
  br i1 %3, label %95, label %4, !prof !383

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !149
  %6 = getelementptr inbounds %struct.xpvhv, ptr %5, i64 0, i32 3
  %7 = load i64, ptr %6, align 8, !tbaa !175
  %8 = getelementptr inbounds %struct.xpvhv, ptr %5, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !220
  %10 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !123
  %12 = and i32 %11, 33554432
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %22, label %14, !prof !387

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !143
  %17 = getelementptr ptr, ptr %16, i64 %7
  %18 = getelementptr ptr, ptr %17, i64 4
  %19 = load i32, ptr %18, align 8, !tbaa !354
  %20 = getelementptr ptr, ptr %17, i64 3
  %21 = load ptr, ptr %20, align 8, !tbaa !271
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
  br i1 %31, label %35, label %32, !prof !388

32:                                               ; preds = %28
  %33 = lshr i64 %29, 1
  %34 = icmp ugt i64 %29, 15
  br i1 %34, label %28, label %35, !prof !389, !llvm.loop !390

35:                                               ; preds = %32, %28, %22
  %36 = phi i64 [ 7, %22 ], [ %33, %32 ], [ %29, %28 ]
  %37 = load ptr, ptr %2, align 8, !tbaa !149
  %38 = getelementptr inbounds %struct.xpvhv, ptr %37, i64 0, i32 3
  store i64 %36, ptr %38, align 8, !tbaa !175
  %39 = tail call i32 @Perl_hv_iterinit(ptr noundef nonnull %0) #17
  %40 = tail call ptr @Perl_hv_iternext_flags(ptr noundef nonnull %0, i32 noundef 0) #17
  %41 = icmp eq ptr %40, null
  br i1 %41, label %91, label %42, !prof !391

42:                                               ; preds = %35, %88
  %43 = phi ptr [ %89, %88 ], [ %40, %35 ]
  %44 = tail call ptr @Perl_hv_iterval(ptr noundef nonnull %0, ptr noundef nonnull %43) #17
  %45 = tail call ptr @Perl_newSVsv(ptr noundef %44) #16
  %46 = getelementptr inbounds %struct.he, ptr %43, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !113
  %48 = getelementptr inbounds %struct.hek, ptr %47, i64 0, i32 1
  %49 = load i32, ptr %48, align 4, !tbaa !158
  %50 = icmp eq i32 %49, -2
  br i1 %50, label %51, label %54, !prof !391

51:                                               ; preds = %42
  %52 = getelementptr inbounds %struct.hek, ptr %47, i64 0, i32 2
  %53 = load ptr, ptr %52, align 4, !tbaa !109
  br label %54

54:                                               ; preds = %42, %51
  %55 = phi ptr [ %53, %51 ], [ null, %42 ]
  %56 = icmp eq ptr %55, null
  %57 = icmp ne ptr %45, null
  %58 = select i1 %56, i1 %57, i1 false
  br i1 %58, label %59, label %61, !prof !392

59:                                               ; preds = %54
  %60 = tail call ptr @Perl_newSVhek(ptr noundef nonnull %47) #16
  br label %62

61:                                               ; preds = %54
  br i1 %57, label %62, label %67, !prof !393

62:                                               ; preds = %59, %61
  %63 = phi ptr [ %60, %59 ], [ %55, %61 ]
  tail call void @Perl_sv_magic(ptr noundef nonnull %45, ptr noundef null, i32 noundef 104, ptr noundef %63, i32 noundef -2) #16
  %64 = load ptr, ptr %46, align 8, !tbaa !113
  %65 = getelementptr inbounds %struct.hek, ptr %64, i64 0, i32 1
  %66 = load i32, ptr %65, align 4, !tbaa !158
  br label %67

67:                                               ; preds = %62, %61
  %68 = phi i32 [ %66, %62 ], [ %49, %61 ]
  %69 = phi ptr [ %64, %62 ], [ %47, %61 ]
  %70 = phi ptr [ %63, %62 ], [ %55, %61 ]
  %71 = getelementptr inbounds %struct.hek, ptr %69, i64 0, i32 2
  %72 = icmp eq i32 %68, -2
  br i1 %72, label %73, label %75, !prof !391

73:                                               ; preds = %67
  %74 = load ptr, ptr %71, align 4, !tbaa !109
  br label %75

75:                                               ; preds = %67, %73
  %76 = phi ptr [ %74, %73 ], [ null, %67 ]
  %77 = icmp eq ptr %70, %76
  br i1 %77, label %78, label %80, !prof !391

78:                                               ; preds = %75
  %79 = tail call ptr @Perl_hv_common(ptr noundef nonnull %2, ptr noundef %70, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 4, ptr noundef %45, i32 noundef 0) #17
  br label %88

80:                                               ; preds = %75
  %81 = sext i32 %68 to i64
  %82 = getelementptr inbounds i8, ptr %71, i64 %81
  %83 = getelementptr inbounds i8, ptr %82, i64 1
  %84 = load i8, ptr %83, align 1, !tbaa !143
  %85 = zext i8 %84 to i32
  %86 = load i32, ptr %69, align 4, !tbaa !183
  %87 = tail call ptr @Perl_hv_common(ptr noundef nonnull %2, ptr noundef %70, ptr noundef nonnull %71, i64 noundef %81, i32 noundef %85, i32 noundef 36, ptr noundef %45, i32 noundef %86) #17
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef %70) #17
  br label %88

88:                                               ; preds = %80, %78
  %89 = tail call ptr @Perl_hv_iternext_flags(ptr noundef nonnull %0, i32 noundef 0) #17
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %42, !prof !394, !llvm.loop !395

91:                                               ; preds = %88, %35
  tail call void @Perl_hv_riter_set(ptr noundef nonnull %0, i32 noundef %23) #17
  tail call void @Perl_hv_eiter_set(ptr noundef nonnull %0, ptr noundef %24) #17
  %92 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 1
  %93 = load i32, ptr %92, align 8, !tbaa !259
  %94 = add i32 %93, 1
  store i32 %94, ptr %92, align 8, !tbaa !259
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
define internal fastcc void @S_SvREFCNT_dec_NN(ptr noundef %0) unnamed_addr #0 !prof !396 !PGOFuncName !397 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !259
  %4 = icmp ugt i32 %3, 1
  br i1 %4, label %5, label %7, !prof !391

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 8, !tbaa !259
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
define dso_local void @Perl_hv_free_ent(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !398 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %6, label %4, !prof !245

4:                                                ; preds = %2
  %5 = tail call fastcc ptr @S_hv_free_ent_ret(ptr noundef %0, ptr noundef nonnull %1) #17
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %5) #17
  br label %6

6:                                                ; preds = %2, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @S_hv_free_ent_ret(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !399 !PGOFuncName !400 {
  %3 = getelementptr inbounds %struct.he, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !143
  %5 = getelementptr inbounds %struct.he, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !113
  %7 = getelementptr inbounds %struct.hek, ptr %6, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !158
  %9 = icmp eq i32 %8, -2
  br i1 %9, label %10, label %14, !prof !401

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.hek, ptr %6, i64 0, i32 2
  %12 = load ptr, ptr %11, align 4, !tbaa !109
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %12) #17
  %13 = load ptr, ptr %5, align 8, !tbaa !113
  tail call void @Perl_safesysfree(ptr noundef %13) #16
  br label %21

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !123
  %17 = and i32 %16, 536870912
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19, !prof !401

19:                                               ; preds = %14
  tail call void @Perl_unshare_hek(ptr noundef nonnull %6) #17
  br label %21

20:                                               ; preds = %14
  tail call void @Perl_safesysfree(ptr noundef nonnull %6) #16
  br label %21

21:                                               ; preds = %10, %20, %19
  %22 = load ptr, ptr @PL_body_roots, align 16, !tbaa !109
  store ptr %22, ptr %1, align 8, !tbaa !115
  store ptr %1, ptr @PL_body_roots, align 16, !tbaa !109
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_hv_delayfree_ent(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !108 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %20, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.he, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !143
  %7 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %6) #17
  %8 = tail call ptr @Perl_sv_2mortal(ptr noundef %6) #16
  %9 = getelementptr inbounds %struct.he, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !113
  %11 = getelementptr inbounds %struct.hek, ptr %10, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !158
  %13 = icmp eq i32 %12, -2
  br i1 %13, label %14, label %19

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.hek, ptr %10, i64 0, i32 2
  %16 = load ptr, ptr %15, align 4, !tbaa !109
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
define internal fastcc noundef ptr @S_SvREFCNT_inc(ptr noundef returned %0) unnamed_addr #5 !prof !108 !PGOFuncName !402 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !259
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 8, !tbaa !259
  br label %7

7:                                                ; preds = %1, %3
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_hv_clear(ptr noundef %0) local_unnamed_addr #0 !prof !108 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %85, label %3, !prof !403

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !149
  tail call void @Perl_push_scope() #16
  %5 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !404
  %7 = add i32 %6, 1
  store i32 %7, ptr %5, align 8, !tbaa !404
  tail call void @Perl_save_pushptr(ptr noundef nonnull %0, i32 noundef 11) #16
  %8 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !123
  %10 = and i32 %9, 134283264
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %52, label %12, !prof !405

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !143
  %15 = icmp eq ptr %14, null
  br i1 %15, label %52, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.xpvhv, ptr %4, i64 0, i32 3
  br label %18

18:                                               ; preds = %16, %48
  %19 = phi i64 [ 0, %16 ], [ %49, %48 ]
  %20 = load ptr, ptr %13, align 8, !tbaa !143
  %21 = getelementptr inbounds ptr, ptr %20, i64 %19
  %22 = load ptr, ptr %21, align 8, !tbaa !109
  %23 = icmp eq ptr %22, null
  br i1 %23, label %48, label %24

24:                                               ; preds = %18, %45
  %25 = phi ptr [ %46, %45 ], [ %22, %18 ]
  %26 = getelementptr inbounds %struct.he, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !143
  %28 = icmp eq ptr %27, @PL_sv_placeholder
  br i1 %28, label %45, label %29

29:                                               ; preds = %24
  %30 = icmp eq ptr %27, null
  br i1 %30, label %41, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.sv, ptr %27, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !137
  %34 = and i32 %33, 134283264
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = tail call ptr @Perl_hv_iterkeysv(ptr noundef nonnull %25) #17
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.5, ptr noundef %37) #16
  %38 = load ptr, ptr %26, align 8, !tbaa !143
  br label %39

39:                                               ; preds = %36, %31
  %40 = phi ptr [ %38, %36 ], [ %27, %31 ]
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef %40) #17
  br label %41

41:                                               ; preds = %39, %29
  store ptr @PL_sv_placeholder, ptr %26, align 8, !tbaa !143
  %42 = tail call ptr @Perl_hv_placeholders_p(ptr noundef nonnull %0) #17
  %43 = load i64, ptr %42, align 8, !tbaa !120
  %44 = add nsw i64 %43, 1
  store i64 %44, ptr %42, align 8, !tbaa !120
  br label %45

45:                                               ; preds = %24, %41
  %46 = load ptr, ptr %25, align 8, !tbaa !109
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %24, !llvm.loop !406

48:                                               ; preds = %45, %18
  %49 = add i64 %19, 1
  %50 = load i64, ptr %17, align 8, !tbaa !175
  %51 = icmp ugt i64 %49, %50
  br i1 %51, label %62, label %18, !llvm.loop !407

52:                                               ; preds = %12, %3
  tail call fastcc void @S_hfreeentries(ptr noundef nonnull %0) #17
  tail call void @Perl_hv_placeholders_set(ptr noundef nonnull %0, i32 noundef 0) #17
  %53 = load i32, ptr %8, align 4, !tbaa !123
  %54 = and i32 %53, 8388608
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56, !prof !408

56:                                               ; preds = %52
  %57 = tail call i32 @Perl_mg_clear(ptr noundef nonnull %0) #16
  %58 = load i32, ptr %8, align 4, !tbaa !123
  br label %59

59:                                               ; preds = %56, %52
  %60 = phi i32 [ %58, %56 ], [ %53, %52 ]
  %61 = and i32 %60, 2147483647
  store i32 %61, ptr %8, align 4, !tbaa !123
  br label %64

62:                                               ; preds = %48
  %63 = load i32, ptr %8, align 4, !tbaa !123
  br label %64

64:                                               ; preds = %62, %59
  %65 = phi i32 [ %63, %62 ], [ %61, %59 ]
  %66 = and i32 %65, 33554432
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %84, label %68, !prof !409

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !143
  %71 = load ptr, ptr %0, align 8, !tbaa !149
  %72 = getelementptr inbounds %struct.xpvhv, ptr %71, i64 0, i32 3
  %73 = load i64, ptr %72, align 8, !tbaa !175
  %74 = getelementptr ptr, ptr %70, i64 %73
  %75 = getelementptr ptr, ptr %74, i64 1
  %76 = load ptr, ptr %75, align 8, !tbaa !143
  %77 = icmp eq ptr %76, null
  br i1 %77, label %83, label %78, !prof !410

78:                                               ; preds = %68
  %79 = getelementptr i8, ptr %74, i64 36
  %80 = load i32, ptr %79, align 4, !tbaa !249
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
define dso_local ptr @Perl_hv_iterkeysv(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !411 {
  %2 = getelementptr inbounds %struct.he, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !113
  %4 = tail call ptr @Perl_newSVhek(ptr noundef %3) #16
  %5 = tail call ptr @Perl_sv_2mortal(ptr noundef %4) #16
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_hfreeentries(ptr nocapture noundef %0) unnamed_addr #0 !prof !412 !PGOFuncName !413 {
  %2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  store i64 0, ptr %2, align 8, !tbaa !120
  %3 = load ptr, ptr %0, align 8, !tbaa !149
  %4 = getelementptr inbounds %struct.xpvhv, ptr %3, i64 0, i32 2
  br label %5

5:                                                ; preds = %11, %1
  %6 = call ptr @Perl_hfree_next_entry(ptr noundef nonnull %0, ptr noundef nonnull %2) #17
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11, !prof !414

8:                                                ; preds = %5
  %9 = load i64, ptr %4, align 8, !tbaa !220
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %12, label %11, !prof !414

11:                                               ; preds = %5, %8
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %6) #17
  br label %5, !llvm.loop !415

12:                                               ; preds = %8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_hv_placeholders_set(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !416 {
  %3 = tail call ptr @Perl_mg_find(ptr noundef %0, i32 noundef 37) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !417

5:                                                ; preds = %2
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds %struct.magic, ptr %3, i64 0, i32 5
  store i64 %6, ptr %7, align 8, !tbaa !318
  br label %15

8:                                                ; preds = %2
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %15, label %10, !prof !417

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
define dso_local void @Perl_hv_clear_placeholders(ptr noundef %0) local_unnamed_addr #0 !prof !108 {
  %2 = load ptr, ptr %0, align 8, !tbaa !149
  %3 = getelementptr inbounds %struct.xpvmg, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !143
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
define dso_local ptr @Perl_hfree_next_entry(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 !prof !418 {
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !123
  %6 = and i32 %5, 33554432
  %7 = icmp eq i32 %6, 0
  %8 = load ptr, ptr %0, align 8, !tbaa !149
  br i1 %7, label %47, label %9, !prof !419

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !143
  %12 = getelementptr inbounds %struct.xpvhv, ptr %8, i64 0, i32 3
  %13 = load i64, ptr %12, align 8, !tbaa !175
  %14 = getelementptr ptr, ptr %11, i64 %13
  %15 = getelementptr ptr, ptr %14, i64 1
  %16 = icmp eq ptr %15, null
  br i1 %16, label %47, label %17, !prof !420

17:                                               ; preds = %9
  %18 = getelementptr ptr, ptr %14, i64 3
  %19 = load ptr, ptr %18, align 8, !tbaa !271
  %20 = icmp eq ptr %19, null
  br i1 %20, label %40, label %21, !prof !421

21:                                               ; preds = %17
  %22 = and i32 %5, 1073741824
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = and i32 %5, -1073741825
  store i32 %25, ptr %4, align 4, !tbaa !123
  tail call void @Perl_hv_free_ent(ptr noundef nonnull %0, ptr noundef nonnull %19) #17
  %26 = load ptr, ptr %10, align 8, !tbaa !143
  %27 = load ptr, ptr %0, align 8, !tbaa !149
  %28 = getelementptr inbounds %struct.xpvhv, ptr %27, i64 0, i32 3
  %29 = load i64, ptr %28, align 8, !tbaa !175
  br label %30

30:                                               ; preds = %24, %21
  %31 = phi i64 [ %29, %24 ], [ %13, %21 ]
  %32 = phi ptr [ %27, %24 ], [ %8, %21 ]
  %33 = phi ptr [ %26, %24 ], [ %11, %21 ]
  %34 = getelementptr ptr, ptr %33, i64 %31
  %35 = getelementptr ptr, ptr %34, i64 4
  store i32 -1, ptr %35, align 8, !tbaa !354
  %36 = getelementptr ptr, ptr %34, i64 3
  store ptr null, ptr %36, align 8, !tbaa !271
  %37 = getelementptr ptr, ptr %34, i64 6
  %38 = load i32, ptr %37, align 8, !tbaa !218
  %39 = getelementptr i8, ptr %34, i64 52
  store i32 %38, ptr %39, align 4, !tbaa !360
  br label %40

40:                                               ; preds = %30, %17
  %41 = phi ptr [ %32, %30 ], [ %8, %17 ]
  %42 = phi ptr [ %34, %30 ], [ %14, %17 ]
  %43 = getelementptr ptr, ptr %42, i64 7
  %44 = load i32, ptr %43, align 8, !tbaa !212
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46, !prof !421

46:                                               ; preds = %40
  store i32 0, ptr %43, align 8, !tbaa !212
  br label %47

47:                                               ; preds = %40, %46, %9, %2
  %48 = phi ptr [ %41, %40 ], [ %41, %46 ], [ %8, %9 ], [ %8, %2 ]
  %49 = getelementptr inbounds %struct.xpvhv, ptr %48, i64 0, i32 2
  %50 = load i64, ptr %49, align 8, !tbaa !220
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %186, label %52, !prof !422

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !143
  %55 = load i64, ptr %1, align 8, !tbaa !120
  %56 = getelementptr inbounds ptr, ptr %54, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !109
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %72, !prof !423

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.xpvhv, ptr %48, i64 0, i32 3
  br label %61

61:                                               ; preds = %59, %67
  %62 = phi i64 [ %55, %59 ], [ %68, %67 ]
  %63 = add i64 %62, 1
  store i64 %63, ptr %1, align 8, !tbaa !120
  %64 = load i64, ptr %60, align 8, !tbaa !175
  %65 = icmp ult i64 %62, %64
  br i1 %65, label %67, label %66, !prof !424

66:                                               ; preds = %61
  store i64 0, ptr %1, align 8, !tbaa !120
  br label %67

67:                                               ; preds = %66, %61
  %68 = phi i64 [ 0, %66 ], [ %63, %61 ]
  %69 = getelementptr inbounds ptr, ptr %54, i64 %68
  %70 = load ptr, ptr %69, align 8, !tbaa !109
  %71 = icmp eq ptr %70, null
  br i1 %71, label %61, label %72, !prof !425, !llvm.loop !426

72:                                               ; preds = %67, %52
  %73 = phi i64 [ %55, %52 ], [ %68, %67 ]
  %74 = phi ptr [ %57, %52 ], [ %70, %67 ]
  %75 = getelementptr inbounds ptr, ptr %54, i64 %73
  %76 = load ptr, ptr %74, align 8, !tbaa !115
  store ptr %76, ptr %75, align 8, !tbaa !109
  %77 = load ptr, ptr %0, align 8, !tbaa !149
  %78 = getelementptr inbounds %struct.xpvhv, ptr %77, i64 0, i32 2
  %79 = load i64, ptr %78, align 8, !tbaa !220
  %80 = add i64 %79, -1
  store i64 %80, ptr %78, align 8, !tbaa !220
  %81 = load i32, ptr @PL_phase, align 4, !tbaa !285
  %82 = icmp eq i32 %81, 6
  br i1 %82, label %184, label %83, !prof !427

83:                                               ; preds = %72
  %84 = load i32, ptr %4, align 4, !tbaa !123
  %85 = and i32 %84, 33554432
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %184, label %87, !prof !428

87:                                               ; preds = %83
  %88 = load ptr, ptr %53, align 8, !tbaa !143
  %89 = getelementptr inbounds %struct.xpvhv, ptr %77, i64 0, i32 3
  %90 = load i64, ptr %89, align 8, !tbaa !175
  %91 = getelementptr ptr, ptr %88, i64 %90
  %92 = getelementptr ptr, ptr %91, i64 1
  %93 = load ptr, ptr %92, align 8, !tbaa !143
  %94 = icmp eq ptr %93, null
  br i1 %94, label %184, label %95, !prof !429

95:                                               ; preds = %87
  %96 = getelementptr i8, ptr %91, i64 36
  %97 = load i32, ptr %96, align 4, !tbaa !249
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %184, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.he, ptr %74, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !143
  %102 = icmp eq ptr %101, null
  br i1 %102, label %184, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.sv, ptr %101, i64 0, i32 2
  %105 = load i32, ptr %104, align 4, !tbaa !137
  %106 = and i32 %105, 255
  %107 = icmp eq i32 %106, 9
  br i1 %107, label %108, label %184

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.sv, ptr %101, i64 0, i32 3
  %110 = load ptr, ptr %109, align 8, !tbaa !143
  %111 = getelementptr inbounds %struct.gp, ptr %110, i64 0, i32 5
  %112 = load ptr, ptr %111, align 8, !tbaa !257
  %113 = icmp eq ptr %112, null
  br i1 %113, label %184, label %114

114:                                              ; preds = %108
  %115 = getelementptr inbounds %struct.hv, ptr %112, i64 0, i32 2
  %116 = load i32, ptr %115, align 4, !tbaa !123
  %117 = and i32 %116, 33554432
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %184, label %119

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.hv, ptr %112, i64 0, i32 3
  %121 = load ptr, ptr %120, align 8, !tbaa !143
  %122 = load ptr, ptr %112, align 8, !tbaa !149
  %123 = getelementptr inbounds %struct.xpvhv, ptr %122, i64 0, i32 3
  %124 = load i64, ptr %123, align 8, !tbaa !175
  %125 = getelementptr ptr, ptr %121, i64 %124
  %126 = getelementptr ptr, ptr %125, i64 1
  %127 = load ptr, ptr %126, align 8, !tbaa !143
  %128 = icmp eq ptr %127, null
  br i1 %128, label %184, label %129

129:                                              ; preds = %119
  %130 = getelementptr i8, ptr %125, i64 36
  %131 = load i32, ptr %130, align 4, !tbaa !249
  %132 = icmp eq i32 %131, -1
  br i1 %132, label %184, label %133

133:                                              ; preds = %129
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  %134 = getelementptr inbounds %struct.he, ptr %74, i64 0, i32 1
  %135 = load ptr, ptr %134, align 8, !tbaa !113
  %136 = getelementptr inbounds %struct.hek, ptr %135, i64 0, i32 1
  %137 = load i32, ptr %136, align 4, !tbaa !158
  %138 = icmp eq i32 %137, -2
  br i1 %138, label %139, label %155

139:                                              ; preds = %133
  %140 = getelementptr inbounds %struct.hek, ptr %135, i64 0, i32 2
  %141 = load ptr, ptr %140, align 4, !tbaa !109
  %142 = getelementptr inbounds %struct.sv, ptr %141, i64 0, i32 2
  %143 = load i32, ptr %142, align 4, !tbaa !137
  %144 = and i32 %143, 2098176
  %145 = icmp eq i32 %144, 1024
  br i1 %145, label %146, label %152

146:                                              ; preds = %139
  %147 = load ptr, ptr %141, align 8, !tbaa !140
  %148 = getelementptr inbounds %struct.xpv, ptr %147, i64 0, i32 2
  %149 = load i64, ptr %148, align 8, !tbaa !141
  store i64 %149, ptr %3, align 8, !tbaa !120
  %150 = getelementptr inbounds %struct.sv, ptr %141, i64 0, i32 3
  %151 = load ptr, ptr %150, align 8, !tbaa !143
  br label %158

152:                                              ; preds = %139
  %153 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %141, ptr noundef nonnull %3, i32 noundef 2) #16
  %154 = load i64, ptr %3, align 8, !tbaa !120
  br label %158

155:                                              ; preds = %133
  %156 = sext i32 %137 to i64
  store i64 %156, ptr %3, align 8, !tbaa !120
  %157 = getelementptr inbounds %struct.hek, ptr %135, i64 0, i32 2
  br label %158

158:                                              ; preds = %146, %152, %155
  %159 = phi i64 [ %149, %146 ], [ %154, %152 ], [ %156, %155 ]
  %160 = phi ptr [ %151, %146 ], [ %153, %152 ], [ %157, %155 ]
  %161 = icmp ugt i64 %159, 1
  br i1 %161, label %162, label %172

162:                                              ; preds = %158
  %163 = add i64 %159, -1
  %164 = getelementptr inbounds i8, ptr %160, i64 %163
  %165 = load i8, ptr %164, align 1, !tbaa !143
  %166 = icmp eq i8 %165, 58
  br i1 %166, label %167, label %183

167:                                              ; preds = %162
  %168 = add i64 %159, -2
  %169 = getelementptr inbounds i8, ptr %160, i64 %168
  %170 = load i8, ptr %169, align 1, !tbaa !143
  %171 = icmp eq i8 %170, 58
  br i1 %171, label %177, label %183

172:                                              ; preds = %158
  %173 = icmp eq i64 %159, 1
  br i1 %173, label %174, label %183

174:                                              ; preds = %172
  %175 = load i8, ptr %160, align 1, !tbaa !143
  %176 = icmp eq i8 %175, 58
  br i1 %176, label %177, label %183

177:                                              ; preds = %174, %167
  %178 = load ptr, ptr %100, align 8, !tbaa !143
  %179 = getelementptr inbounds %struct.sv, ptr %178, i64 0, i32 3
  %180 = load ptr, ptr %179, align 8, !tbaa !143
  %181 = getelementptr inbounds %struct.gp, ptr %180, i64 0, i32 5
  %182 = load ptr, ptr %181, align 8, !tbaa !257
  call void @Perl_mro_package_moved(ptr noundef null, ptr noundef %182, ptr noundef %178, i32 noundef 0) #16
  br label %183

183:                                              ; preds = %162, %167, %177, %174, %172
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  br label %184

184:                                              ; preds = %114, %119, %129, %83, %87, %95, %183, %108, %103, %99, %72
  %185 = call fastcc ptr @S_hv_free_ent_ret(ptr noundef nonnull %0, ptr noundef nonnull %74) #17
  br label %186

186:                                              ; preds = %47, %184
  %187 = phi ptr [ %185, %184 ], [ null, %47 ]
  ret ptr %187
}

; Function Attrs: optsize
declare void @Perl_mro_package_moved(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_hv_undef_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !430 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %325, label %4, !prof !431

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !404
  %7 = icmp eq i32 %6, 0
  %8 = load ptr, ptr %0, align 8, !tbaa !149
  %9 = load i32, ptr @PL_phase, align 4, !tbaa !285
  %10 = icmp eq i32 %9, 6
  br i1 %10, label %63, label %11, !prof !432

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !123
  %14 = and i32 %13, 33554432
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %63, label %16, !prof !433

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !143
  %19 = getelementptr inbounds %struct.xpvhv, ptr %8, i64 0, i32 3
  %20 = load i64, ptr %19, align 8, !tbaa !175
  %21 = getelementptr ptr, ptr %18, i64 %20
  %22 = getelementptr ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !143
  %24 = icmp eq ptr %23, null
  br i1 %24, label %63, label %25, !prof !434

25:                                               ; preds = %16
  %26 = getelementptr i8, ptr %21, i64 36
  %27 = load i32, ptr %26, align 4, !tbaa !249
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %23, align 8, !tbaa !109
  %31 = icmp eq ptr %30, null
  br i1 %31, label %63, label %35

32:                                               ; preds = %25
  %33 = load ptr, ptr @PL_stashcache, align 8, !tbaa !109
  %34 = icmp eq ptr %33, null
  br i1 %34, label %62, label %38

35:                                               ; preds = %29
  %36 = load ptr, ptr @PL_stashcache, align 8, !tbaa !109
  %37 = icmp eq ptr %36, null
  br i1 %37, label %62, label %44

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.hek, ptr %23, i64 0, i32 1
  %40 = load i32, ptr %39, align 4, !tbaa !158
  %41 = getelementptr inbounds %struct.hek, ptr %23, i64 0, i32 2
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i8, ptr %41, i64 %42
  br label %50

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.hek, ptr %30, i64 0, i32 1
  %46 = load i32, ptr %45, align 4, !tbaa !158
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
  %57 = load i8, ptr %56, align 1, !tbaa !143
  %58 = and i8 %57, 1
  %59 = zext nneg i8 %58 to i32
  %60 = load i32, ptr %54, align 4, !tbaa !183
  %61 = tail call ptr @Perl_hv_common(ptr noundef nonnull %53, ptr noundef null, ptr noundef nonnull %55, i64 noundef %51, i32 noundef %59, i32 noundef 68, ptr noundef null, i32 noundef %60) #17
  br label %62

62:                                               ; preds = %35, %50, %32
  tail call void @Perl_hv_name_set(ptr noundef nonnull %0, ptr noundef null, i32 noundef 0, i32 noundef 0) #17
  br label %63

63:                                               ; preds = %11, %16, %29, %62, %4
  br i1 %7, label %67, label %64, !prof !435

64:                                               ; preds = %63
  tail call void @Perl_push_scope() #16
  %65 = load i32, ptr %5, align 8, !tbaa !404
  %66 = add i32 %65, 1
  store i32 %66, ptr %5, align 8, !tbaa !404
  tail call void @Perl_save_pushptr(ptr noundef nonnull %0, i32 noundef 11) #16
  br label %67

67:                                               ; preds = %64, %63
  tail call fastcc void @S_hfreeentries(ptr noundef nonnull %0) #17
  %68 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %69 = load i32, ptr %68, align 4, !tbaa !123
  %70 = and i32 %69, 33554432
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %305, label %72, !prof !436

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !143
  %75 = load ptr, ptr %0, align 8, !tbaa !149
  %76 = getelementptr inbounds %struct.xpvhv, ptr %75, i64 0, i32 3
  %77 = load i64, ptr %76, align 8, !tbaa !175
  %78 = getelementptr ptr, ptr %74, i64 %77
  %79 = getelementptr ptr, ptr %78, i64 1
  %80 = load ptr, ptr %79, align 8, !tbaa !143
  %81 = icmp eq ptr %80, null
  br i1 %81, label %167, label %82, !prof !434

82:                                               ; preds = %72
  %83 = getelementptr i8, ptr %78, i64 36
  %84 = load i32, ptr %83, align 4, !tbaa !249
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %167, label %86

86:                                               ; preds = %82
  %87 = load i32, ptr @PL_phase, align 4, !tbaa !285
  %88 = icmp eq i32 %87, 6
  br i1 %88, label %91, label %89

89:                                               ; preds = %86
  tail call void @Perl_mro_isa_changed_in(ptr noundef nonnull %0) #16
  %90 = load i32, ptr %68, align 4, !tbaa !123
  br label %91

91:                                               ; preds = %89, %86
  %92 = phi i32 [ %90, %89 ], [ %69, %86 ]
  %93 = load ptr, ptr @PL_stashcache, align 8, !tbaa !109
  %94 = icmp eq ptr %93, null
  br i1 %94, label %167, label %95

95:                                               ; preds = %91
  %96 = and i32 %92, 33554432
  %97 = icmp eq i32 %96, 0
  %98 = load ptr, ptr %73, align 8, !tbaa !143
  %99 = load ptr, ptr %0, align 8, !tbaa !149
  %100 = getelementptr inbounds %struct.xpvhv, ptr %99, i64 0, i32 3
  %101 = load i64, ptr %100, align 8, !tbaa !175
  %102 = getelementptr ptr, ptr %98, i64 %101
  %103 = getelementptr ptr, ptr %102, i64 1
  %104 = load ptr, ptr %103, align 8, !tbaa !143
  br i1 %97, label %121, label %105

105:                                              ; preds = %95
  %106 = icmp eq ptr %104, null
  br i1 %106, label %121, label %107

107:                                              ; preds = %105
  %108 = getelementptr i8, ptr %102, i64 36
  %109 = load i32, ptr %108, align 4, !tbaa !249
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  %112 = load ptr, ptr %104, align 8, !tbaa !109
  br label %121

113:                                              ; preds = %107
  %114 = icmp slt i32 %109, -1
  br i1 %114, label %115, label %118

115:                                              ; preds = %113
  %116 = getelementptr inbounds ptr, ptr %104, i64 1
  %117 = load ptr, ptr %116, align 8, !tbaa !109
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
  %128 = load i32, ptr %127, align 4, !tbaa !249
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %121
  %131 = icmp slt i32 %128, -1
  br i1 %131, label %140, label %149

132:                                              ; preds = %121
  %133 = load ptr, ptr %122, align 8, !tbaa !109
  %134 = getelementptr inbounds %struct.hek, ptr %133, i64 0, i32 1
  %135 = load i32, ptr %134, align 4, !tbaa !158
  %136 = getelementptr inbounds %struct.hek, ptr %133, i64 0, i32 2
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i8, ptr %136, i64 %137
  %139 = getelementptr inbounds i8, ptr %138, i64 1
  br label %157

140:                                              ; preds = %130
  %141 = getelementptr inbounds ptr, ptr %122, i64 1
  %142 = load ptr, ptr %141, align 8, !tbaa !109
  %143 = getelementptr inbounds %struct.hek, ptr %142, i64 0, i32 1
  %144 = load i32, ptr %143, align 4, !tbaa !158
  %145 = getelementptr inbounds %struct.hek, ptr %142, i64 0, i32 2
  %146 = sext i32 %144 to i64
  %147 = getelementptr inbounds i8, ptr %145, i64 %146
  %148 = getelementptr inbounds i8, ptr %147, i64 1
  br label %157

149:                                              ; preds = %130
  %150 = getelementptr inbounds %struct.hek, ptr %122, i64 0, i32 1
  %151 = load i32, ptr %150, align 4, !tbaa !158
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
  %161 = load i8, ptr %159, align 1, !tbaa !143
  %162 = and i8 %161, 1
  %163 = zext nneg i8 %162 to i32
  %164 = load i32, ptr %160, align 4, !tbaa !183
  %165 = tail call ptr @Perl_hv_common(ptr noundef nonnull %93, ptr noundef null, ptr noundef nonnull %124, i64 noundef %158, i32 noundef %163, i32 noundef 68, ptr noundef null, i32 noundef %164) #17
  %166 = load i32, ptr %68, align 4, !tbaa !123
  br label %167

167:                                              ; preds = %91, %157, %72, %82
  %168 = phi i32 [ %92, %91 ], [ %166, %157 ], [ %69, %72 ], [ %69, %82 ]
  %169 = and i32 %168, 33554432
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %190, label %171, !prof !437

171:                                              ; preds = %167
  %172 = load ptr, ptr %73, align 8, !tbaa !143
  %173 = load ptr, ptr %0, align 8, !tbaa !149
  %174 = getelementptr inbounds %struct.xpvhv, ptr %173, i64 0, i32 3
  %175 = load i64, ptr %174, align 8, !tbaa !175
  %176 = getelementptr ptr, ptr %172, i64 %175
  %177 = getelementptr ptr, ptr %176, i64 1
  %178 = load ptr, ptr %177, align 8, !tbaa !143
  %179 = icmp eq ptr %178, null
  br i1 %179, label %190, label %180, !prof !434

180:                                              ; preds = %171
  %181 = getelementptr i8, ptr %176, i64 36
  %182 = load i32, ptr %181, align 4, !tbaa !249
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %187, label %184

184:                                              ; preds = %180
  %185 = load ptr, ptr %178, align 8, !tbaa !143
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
  br i1 %193, label %203, label %194, !prof !434

194:                                              ; preds = %190
  %195 = load ptr, ptr %73, align 8, !tbaa !143
  %196 = load ptr, ptr %0, align 8, !tbaa !149
  %197 = getelementptr inbounds %struct.xpvhv, ptr %196, i64 0, i32 3
  %198 = load i64, ptr %197, align 8, !tbaa !175
  %199 = getelementptr ptr, ptr %195, i64 %198
  %200 = getelementptr ptr, ptr %199, i64 1
  %201 = load ptr, ptr %200, align 8, !tbaa !143
  %202 = icmp eq ptr %201, null
  br i1 %202, label %259, label %205, !prof !434

203:                                              ; preds = %190
  %204 = icmp eq ptr %191, null
  br i1 %204, label %259, label %205, !prof !434

205:                                              ; preds = %203, %194
  %206 = icmp ne ptr %191, null
  %207 = load ptr, ptr @PL_stashcache, align 8
  %208 = icmp ne ptr %207, null
  %209 = select i1 %206, i1 %208, i1 false
  br i1 %209, label %210, label %258

210:                                              ; preds = %205
  %211 = load ptr, ptr %73, align 8, !tbaa !143
  %212 = load ptr, ptr %0, align 8, !tbaa !149
  %213 = getelementptr inbounds %struct.xpvhv, ptr %212, i64 0, i32 3
  %214 = load i64, ptr %213, align 8, !tbaa !175
  %215 = getelementptr ptr, ptr %211, i64 %214
  %216 = getelementptr ptr, ptr %215, i64 1
  %217 = load ptr, ptr %216, align 8, !tbaa !143
  br i1 %170, label %226, label %218

218:                                              ; preds = %210
  %219 = icmp eq ptr %217, null
  br i1 %219, label %226, label %220

220:                                              ; preds = %218
  %221 = getelementptr i8, ptr %215, i64 36
  %222 = load i32, ptr %221, align 4, !tbaa !249
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %226, label %224

224:                                              ; preds = %220
  %225 = load ptr, ptr %217, align 8, !tbaa !109
  br label %226

226:                                              ; preds = %210, %220, %218, %224
  %227 = phi ptr [ %217, %224 ], [ null, %218 ], [ %217, %220 ], [ %217, %210 ]
  %228 = phi ptr [ %225, %224 ], [ null, %218 ], [ %217, %220 ], [ null, %210 ]
  %229 = getelementptr inbounds %struct.hek, ptr %228, i64 0, i32 2
  %230 = icmp ne i32 %169, 0
  tail call void @llvm.assume(i1 %230)
  %231 = getelementptr ptr, ptr %211, i64 %214
  %232 = getelementptr i8, ptr %231, i64 36
  %233 = load i32, ptr %232, align 4, !tbaa !249
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %241

235:                                              ; preds = %226
  %236 = getelementptr inbounds %struct.hek, ptr %227, i64 0, i32 1
  %237 = load i32, ptr %236, align 4, !tbaa !158
  %238 = getelementptr inbounds %struct.hek, ptr %227, i64 0, i32 2
  %239 = sext i32 %237 to i64
  %240 = getelementptr inbounds i8, ptr %238, i64 %239
  br label %248

241:                                              ; preds = %226
  %242 = load ptr, ptr %227, align 8, !tbaa !109
  %243 = getelementptr inbounds %struct.hek, ptr %242, i64 0, i32 1
  %244 = load i32, ptr %243, align 4, !tbaa !158
  %245 = getelementptr inbounds %struct.hek, ptr %242, i64 0, i32 2
  %246 = sext i32 %244 to i64
  %247 = getelementptr inbounds i8, ptr %245, i64 %246
  br label %248

248:                                              ; preds = %235, %241
  %249 = phi i64 [ %239, %235 ], [ %246, %241 ]
  %250 = phi ptr [ %240, %235 ], [ %247, %241 ]
  %251 = phi ptr [ %227, %235 ], [ %242, %241 ]
  %252 = getelementptr inbounds i8, ptr %250, i64 1
  %253 = load i8, ptr %252, align 1, !tbaa !143
  %254 = and i8 %253, 1
  %255 = zext nneg i8 %254 to i32
  %256 = load i32, ptr %251, align 4, !tbaa !183
  %257 = tail call ptr @Perl_hv_common(ptr noundef nonnull %207, ptr noundef null, ptr noundef nonnull %229, i64 noundef %249, i32 noundef %255, i32 noundef 68, ptr noundef null, i32 noundef %256) #17
  br label %258

258:                                              ; preds = %248, %205
  tail call void @Perl_hv_name_set(ptr noundef nonnull %0, ptr noundef null, i32 noundef 0, i32 noundef %1) #17
  br label %259

259:                                              ; preds = %258, %203, %194
  %260 = load ptr, ptr %73, align 8, !tbaa !143
  %261 = load ptr, ptr %0, align 8, !tbaa !149
  %262 = getelementptr inbounds %struct.xpvhv, ptr %261, i64 0, i32 3
  %263 = load i64, ptr %262, align 8, !tbaa !175
  %264 = getelementptr ptr, ptr %260, i64 %263
  %265 = getelementptr ptr, ptr %264, i64 5
  %266 = load ptr, ptr %265, align 8, !tbaa !438
  %267 = icmp eq ptr %266, null
  br i1 %267, label %289, label %268, !prof !434

268:                                              ; preds = %259
  %269 = load ptr, ptr %266, align 8, !tbaa !439
  %270 = icmp eq ptr %269, null
  br i1 %270, label %272, label %271

271:                                              ; preds = %268
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %269) #17
  br label %275

272:                                              ; preds = %268
  %273 = getelementptr inbounds %struct.mro_meta, ptr %266, i64 0, i32 1
  %274 = load ptr, ptr %273, align 8, !tbaa !441
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %274) #17
  br label %275

275:                                              ; preds = %272, %271
  %276 = getelementptr inbounds %struct.mro_meta, ptr %266, i64 0, i32 2
  %277 = load ptr, ptr %276, align 8, !tbaa !442
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %277) #17
  %278 = getelementptr inbounds %struct.mro_meta, ptr %266, i64 0, i32 6
  %279 = load ptr, ptr %278, align 8, !tbaa !443
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %279) #17
  %280 = getelementptr inbounds %struct.mro_meta, ptr %266, i64 0, i32 7
  %281 = load ptr, ptr %280, align 8, !tbaa !444
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %281) #17
  tail call void @Perl_safesysfree(ptr noundef nonnull %266) #16
  %282 = load ptr, ptr %73, align 8, !tbaa !143
  %283 = load ptr, ptr %0, align 8, !tbaa !149
  %284 = getelementptr inbounds %struct.xpvhv, ptr %283, i64 0, i32 3
  %285 = load i64, ptr %284, align 8, !tbaa !175
  %286 = getelementptr ptr, ptr %282, i64 %285
  %287 = getelementptr ptr, ptr %286, i64 5
  store ptr null, ptr %287, align 8, !tbaa !438
  %288 = load ptr, ptr %73, align 8, !tbaa !143
  br label %289

289:                                              ; preds = %275, %259
  %290 = phi i64 [ %285, %275 ], [ %263, %259 ]
  %291 = phi ptr [ %288, %275 ], [ %260, %259 ]
  %292 = getelementptr ptr, ptr %291, i64 %290
  %293 = getelementptr ptr, ptr %292, i64 1
  %294 = load ptr, ptr %293, align 8, !tbaa !143
  %295 = icmp eq ptr %294, null
  br i1 %295, label %298, label %296, !prof !434

296:                                              ; preds = %289
  %297 = load i32, ptr %68, align 4, !tbaa !123
  br label %305

298:                                              ; preds = %289
  %299 = getelementptr ptr, ptr %292, i64 2
  %300 = load ptr, ptr %299, align 8, !tbaa !445
  %301 = icmp eq ptr %300, null
  %302 = load i32, ptr %68, align 4, !tbaa !123
  br i1 %301, label %303, label %305, !prof !434

303:                                              ; preds = %298
  %304 = and i32 %302, -33554433
  store i32 %304, ptr %68, align 4, !tbaa !123
  br label %305

305:                                              ; preds = %296, %298, %303, %67
  %306 = phi i32 [ %297, %296 ], [ %302, %298 ], [ %304, %303 ], [ %69, %67 ]
  %307 = and i32 %306, 33554432
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %313, !prof !446

309:                                              ; preds = %305
  %310 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %311 = load ptr, ptr %310, align 8, !tbaa !143
  tail call void @Perl_safesysfree(ptr noundef %311) #16
  %312 = getelementptr inbounds %struct.xpvhv, ptr %8, i64 0, i32 3
  store i64 7, ptr %312, align 8, !tbaa !175
  store ptr null, ptr %310, align 8, !tbaa !143
  br label %313

313:                                              ; preds = %309, %305
  %314 = load i32, ptr %5, align 8, !tbaa !404
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %317, label %316, !prof !435

316:                                              ; preds = %313
  tail call void @Perl_hv_placeholders_set(ptr noundef nonnull %0, i32 noundef 0) #17
  br label %317

317:                                              ; preds = %316, %313
  %318 = load i32, ptr %68, align 4, !tbaa !123
  %319 = and i32 %318, 8388608
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %323, label %321, !prof !446

321:                                              ; preds = %317
  %322 = tail call i32 @Perl_mg_clear(ptr noundef nonnull %0) #16
  br label %323

323:                                              ; preds = %321, %317
  br i1 %7, label %325, label %324, !prof !435

324:                                              ; preds = %323
  tail call void @Perl_pop_scope() #16
  br label %325

325:                                              ; preds = %323, %324, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_hv_name_set(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !108 {
  %5 = icmp slt i32 %2, 0
  br i1 %5, label %6, label %8, !prof !447

6:                                                ; preds = %4
  %7 = zext i32 %2 to i64
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.6, i64 noundef %7) #16
  br label %8

8:                                                ; preds = %6, %4
  %9 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !123
  %11 = and i32 %10, 33554432
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %84, label %13, !prof !448

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !143
  %16 = load ptr, ptr %0, align 8, !tbaa !149
  %17 = getelementptr inbounds %struct.xpvhv, ptr %16, i64 0, i32 3
  %18 = load i64, ptr %17, align 8, !tbaa !175
  %19 = getelementptr ptr, ptr %15, i64 %18
  %20 = getelementptr ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !143
  %22 = icmp eq ptr %21, null
  %23 = getelementptr i8, ptr %19, i64 36
  br i1 %22, label %83, label %24, !prof !337

24:                                               ; preds = %13
  %25 = load i32, ptr %23, align 4, !tbaa !249
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
  %40 = load ptr, ptr %39, align 8, !tbaa !109
  tail call fastcc void @S_unshare_hek_or_pvn(ptr noundef %40, ptr noundef null, i32 noundef 0, i32 noundef 0) #17
  %41 = icmp ugt i64 %37, 16
  br i1 %41, label %36, label %42, !llvm.loop !449

42:                                               ; preds = %36, %30
  %43 = load ptr, ptr %21, align 8, !tbaa !109
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  tail call fastcc void @S_unshare_hek_or_pvn(ptr noundef nonnull %43, ptr noundef null, i32 noundef 0, i32 noundef 0) #17
  br label %46

46:                                               ; preds = %45, %42
  tail call void @Perl_safesysfree(ptr noundef nonnull %21) #16
  %47 = load ptr, ptr %14, align 8, !tbaa !143
  %48 = load ptr, ptr %0, align 8, !tbaa !149
  %49 = getelementptr inbounds %struct.xpvhv, ptr %48, i64 0, i32 3
  %50 = load i64, ptr %49, align 8, !tbaa !175
  %51 = getelementptr ptr, ptr %47, i64 %50
  %52 = getelementptr ptr, ptr %51, i64 1
  %53 = getelementptr i8, ptr %51, i64 36
  store i32 0, ptr %53, align 4, !tbaa !249
  br label %90

54:                                               ; preds = %29
  %55 = icmp sgt i32 %25, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %54
  %57 = add nuw nsw i32 %25, 1
  %58 = zext nneg i32 %57 to i64
  %59 = shl nuw nsw i64 %58, 3
  %60 = tail call ptr @Perl_safesysrealloc(ptr noundef nonnull %21, i64 noundef %59) #16
  store ptr %60, ptr %20, align 8, !tbaa !143
  %61 = getelementptr inbounds ptr, ptr %60, i64 1
  %62 = load ptr, ptr %61, align 8, !tbaa !109
  %63 = load i32, ptr %23, align 4, !tbaa !249
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds ptr, ptr %60, i64 %64
  store ptr %62, ptr %65, align 8, !tbaa !109
  %66 = load ptr, ptr %60, align 8, !tbaa !109
  store ptr %66, ptr %61, align 8, !tbaa !109
  %67 = xor i32 %63, -1
  store i32 %67, ptr %23, align 4, !tbaa !249
  br label %90

68:                                               ; preds = %54
  %69 = load ptr, ptr %21, align 8, !tbaa !109
  %70 = icmp eq ptr %69, null
  br i1 %70, label %90, label %71

71:                                               ; preds = %68
  tail call fastcc void @S_unshare_hek_or_pvn(ptr noundef nonnull %69, ptr noundef null, i32 noundef 0, i32 noundef 0) #17
  br label %90

72:                                               ; preds = %24
  br i1 %28, label %80, label %73

73:                                               ; preds = %72
  tail call fastcc void @S_unshare_hek_or_pvn(ptr noundef nonnull %21, ptr noundef null, i32 noundef 0, i32 noundef 0) #17
  %74 = load ptr, ptr %14, align 8, !tbaa !143
  %75 = load ptr, ptr %0, align 8, !tbaa !149
  %76 = getelementptr inbounds %struct.xpvhv, ptr %75, i64 0, i32 3
  %77 = load i64, ptr %76, align 8, !tbaa !175
  %78 = getelementptr ptr, ptr %74, i64 %77
  %79 = getelementptr ptr, ptr %78, i64 1
  br label %90

80:                                               ; preds = %72
  %81 = tail call ptr @Perl_safesysmalloc(i64 noundef 16) #16
  store ptr %81, ptr %20, align 8, !tbaa !143
  store i32 -2, ptr %23, align 4, !tbaa !249
  %82 = getelementptr inbounds ptr, ptr %81, i64 1
  store ptr %21, ptr %82, align 8, !tbaa !109
  br label %90

83:                                               ; preds = %13
  store i32 0, ptr %23, align 4, !tbaa !249
  br label %90

84:                                               ; preds = %8
  %85 = icmp eq ptr %1, null
  br i1 %85, label %108, label %86, !prof !450

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
  br i1 %94, label %105, label %95, !prof !451

95:                                               ; preds = %86, %90
  %96 = phi i32 [ %89, %86 ], [ %93, %90 ]
  %97 = phi ptr [ %87, %86 ], [ %91, %90 ]
  %98 = and i32 %3, 536870912
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %102, label %100, !prof !452

100:                                              ; preds = %95
  %101 = sub nsw i32 0, %2
  br label %102

102:                                              ; preds = %95, %100
  %103 = phi i32 [ %101, %100 ], [ %2, %95 ]
  %104 = tail call ptr @Perl_share_hek(ptr noundef nonnull %1, i32 noundef %103, i32 noundef %96) #17
  br label %105

105:                                              ; preds = %90, %102
  %106 = phi ptr [ %97, %102 ], [ %91, %90 ]
  %107 = phi ptr [ %104, %102 ], [ null, %90 ]
  store ptr %107, ptr %106, align 8, !tbaa !109
  br label %108

108:                                              ; preds = %84, %105
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @S_hv_auxinit(ptr nocapture noundef %0) unnamed_addr #0 !prof !453 !PGOFuncName !454 {
  %2 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !123
  %4 = and i32 %3, 33554432
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !143
  br i1 %5, label %8, label %46, !prof !455

8:                                                ; preds = %1
  %9 = icmp eq ptr %7, null
  %10 = load ptr, ptr %0, align 8, !tbaa !149
  %11 = getelementptr inbounds %struct.xpvhv, ptr %10, i64 0, i32 3
  %12 = load i64, ptr %11, align 8, !tbaa !175
  %13 = shl i64 %12, 3
  %14 = add i64 %13, 64
  br i1 %9, label %15, label %17, !prof !456

15:                                               ; preds = %8
  %16 = tail call ptr @Perl_safesyscalloc(i64 noundef %14, i64 noundef 1) #16
  br label %19

17:                                               ; preds = %8
  %18 = tail call ptr @Perl_safesysrealloc(ptr noundef nonnull %7, i64 noundef %14) #16
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi ptr [ %18, %17 ], [ %16, %15 ]
  store ptr %20, ptr %6, align 8, !tbaa !143
  %21 = load i32, ptr %2, align 4, !tbaa !123
  %22 = or i32 %21, 33554432
  store i32 %22, ptr %2, align 4, !tbaa !123
  %23 = load ptr, ptr %0, align 8, !tbaa !149
  %24 = getelementptr inbounds %struct.xpvhv, ptr %23, i64 0, i32 3
  %25 = load i64, ptr %24, align 8, !tbaa !175
  %26 = add i64 %25, 1
  %27 = getelementptr inbounds ptr, ptr %20, i64 %26
  %28 = load i8, ptr @PL_hash_rand_bits_enabled, align 1, !tbaa !143
  switch i8 %28, label %31 [
    i8 0, label %29
    i8 1, label %33
  ], !prof !457

29:                                               ; preds = %19
  %30 = load i64, ptr @PL_hash_rand_bits, align 8, !tbaa !120
  br label %42

31:                                               ; preds = %19
  %32 = load i64, ptr @PL_hash_rand_bits, align 8, !tbaa !120
  br label %39

33:                                               ; preds = %19
  %34 = ptrtoint ptr %20 to i64
  %35 = tail call fastcc i32 @S_ptr_hash(i64 noundef %34) #17
  %36 = zext i32 %35 to i64
  %37 = load i64, ptr @PL_hash_rand_bits, align 8, !tbaa !120
  %38 = add i64 %37, %36
  br label %39

39:                                               ; preds = %31, %33
  %40 = phi i64 [ %32, %31 ], [ %38, %33 ]
  %41 = tail call i64 @llvm.fshl.i64(i64 %40, i64 %40, i64 1)
  store i64 %41, ptr @PL_hash_rand_bits, align 8, !tbaa !120
  br label %42

42:                                               ; preds = %29, %39
  %43 = phi i64 [ %30, %29 ], [ %41, %39 ]
  %44 = trunc i64 %43 to i32
  %45 = getelementptr inbounds %struct.xpvhv_aux, ptr %27, i64 0, i32 6
  store i32 %44, ptr %45, align 8, !tbaa !218
  br label %52

46:                                               ; preds = %1
  %47 = load ptr, ptr %0, align 8, !tbaa !149
  %48 = getelementptr inbounds %struct.xpvhv, ptr %47, i64 0, i32 3
  %49 = load i64, ptr %48, align 8, !tbaa !175
  %50 = getelementptr ptr, ptr %7, i64 %49
  %51 = getelementptr ptr, ptr %50, i64 1
  br label %52

52:                                               ; preds = %46, %42
  %53 = phi ptr [ %51, %46 ], [ %27, %42 ]
  %54 = tail call fastcc ptr @S_hv_auxinit_internal(ptr noundef %53) #17
  ret ptr %53
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local nonnull ptr @Perl_hv_riter_p(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !108 {
  %2 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !123
  %4 = and i32 %3, 33554432
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !143
  %9 = load ptr, ptr %0, align 8, !tbaa !149
  %10 = getelementptr inbounds %struct.xpvhv, ptr %9, i64 0, i32 3
  %11 = load i64, ptr %10, align 8, !tbaa !175
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
define dso_local nonnull ptr @Perl_hv_eiter_p(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !108 {
  %2 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !123
  %4 = and i32 %3, 33554432
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !143
  %9 = load ptr, ptr %0, align 8, !tbaa !149
  %10 = getelementptr inbounds %struct.xpvhv, ptr %9, i64 0, i32 3
  %11 = load i64, ptr %10, align 8, !tbaa !175
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
define dso_local void @Perl_hv_rand_set(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !108 {
  %3 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !123
  %5 = and i32 %4, 33554432
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !143
  %10 = load ptr, ptr %0, align 8, !tbaa !149
  %11 = getelementptr inbounds %struct.xpvhv, ptr %10, i64 0, i32 3
  %12 = load i64, ptr %11, align 8, !tbaa !175
  %13 = getelementptr ptr, ptr %9, i64 %12
  %14 = getelementptr ptr, ptr %13, i64 1
  br label %17

15:                                               ; preds = %2
  %16 = tail call fastcc ptr @S_hv_auxinit(ptr noundef nonnull %0) #17
  br label %17

17:                                               ; preds = %15, %7
  %18 = phi ptr [ %14, %7 ], [ %16, %15 ]
  %19 = getelementptr inbounds %struct.xpvhv_aux, ptr %18, i64 0, i32 6
  store i32 %1, ptr %19, align 8, !tbaa !218
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_unshare_hek_or_pvn(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !prof !458 !PGOFuncName !459 {
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #18
  store i8 0, ptr %5, align 1, !tbaa !144
  %7 = icmp eq ptr %0, null
  br i1 %7, label %14, label %8, !prof !460

8:                                                ; preds = %4
  %9 = getelementptr inbounds i8, ptr %0, i64 -8
  %10 = load i64, ptr %9, align 8, !tbaa !143
  %11 = icmp eq i64 %10, 1
  br i1 %11, label %27, label %12, !prof !461

12:                                               ; preds = %8
  %13 = add i64 %10, -1
  store i64 %13, ptr %9, align 8, !tbaa !143
  br label %120

14:                                               ; preds = %4
  %15 = icmp slt i32 %2, 0
  br i1 %15, label %16, label %40

16:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  %17 = sub nsw i32 0, %2
  %18 = zext nneg i32 %17 to i64
  store i64 %18, ptr %6, align 8, !tbaa !120
  store i8 1, ptr %5, align 1, !tbaa !144
  %19 = call ptr @Perl_bytes_from_utf8(ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %5) #16
  %20 = load i64, ptr %6, align 8, !tbaa !120
  %21 = trunc i64 %20 to i32
  %22 = load i8, ptr %5, align 1, !tbaa !144, !range !155, !noundef !156
  %23 = zext nneg i8 %22 to i32
  %24 = icmp eq ptr %19, %1
  %25 = or disjoint i32 %23, 258
  %26 = select i1 %24, i32 %23, i32 %25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  br label %40

27:                                               ; preds = %8
  %28 = getelementptr inbounds i8, ptr %0, i64 -24
  %29 = load i32, ptr %0, align 4, !tbaa !183
  %30 = load ptr, ptr @PL_strtab, align 8, !tbaa !109
  %31 = load ptr, ptr %30, align 8, !tbaa !149
  %32 = getelementptr inbounds %struct.hv, ptr %30, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !143
  %34 = getelementptr inbounds %struct.xpvhv, ptr %31, i64 0, i32 3
  %35 = load i64, ptr %34, align 8, !tbaa !175
  %36 = trunc i64 %35 to i32
  %37 = and i32 %29, %36
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds ptr, ptr %33, i64 %38
  br label %59

40:                                               ; preds = %16, %14
  %41 = phi i32 [ 0, %14 ], [ %26, %16 ]
  %42 = phi i32 [ %2, %14 ], [ %21, %16 ]
  %43 = phi ptr [ %1, %14 ], [ %19, %16 ]
  %44 = load ptr, ptr @PL_strtab, align 8, !tbaa !109
  %45 = load ptr, ptr %44, align 8, !tbaa !149
  %46 = getelementptr inbounds %struct.hv, ptr %44, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !143
  %48 = getelementptr inbounds %struct.xpvhv, ptr %45, i64 0, i32 3
  %49 = load i64, ptr %48, align 8, !tbaa !175
  %50 = trunc i64 %49 to i32
  %51 = and i32 %50, %3
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds ptr, ptr %47, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !109
  %55 = icmp eq ptr %54, null
  br i1 %55, label %106, label %56

56:                                               ; preds = %40
  %57 = sext i32 %42 to i64
  %58 = trunc i32 %41 to i8
  br label %65

59:                                               ; preds = %27, %59
  %60 = phi ptr [ %61, %59 ], [ %39, %27 ]
  %61 = load ptr, ptr %60, align 8, !tbaa !109
  %62 = icmp eq ptr %61, null
  %63 = icmp eq ptr %61, %28
  %64 = or i1 %62, %63
  br i1 %64, label %90, label %59, !prof !462, !llvm.loop !463

65:                                               ; preds = %56, %87
  %66 = phi ptr [ %54, %56 ], [ %88, %87 ]
  %67 = phi ptr [ %53, %56 ], [ %66, %87 ]
  %68 = getelementptr inbounds %struct.he, ptr %66, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !113
  %70 = load i32, ptr %69, align 4, !tbaa !183
  %71 = icmp eq i32 %70, %3
  br i1 %71, label %72, label %87

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.hek, ptr %69, i64 0, i32 1
  %74 = load i32, ptr %73, align 4, !tbaa !158
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
  %85 = load i8, ptr %84, align 1, !tbaa !143
  %86 = icmp eq i8 %85, %58
  br i1 %86, label %91, label %87

87:                                               ; preds = %82, %79, %72, %65
  %88 = load ptr, ptr %66, align 8, !tbaa !109
  %89 = icmp eq ptr %88, null
  br i1 %89, label %106, label %65, !llvm.loop !464

90:                                               ; preds = %59
  br i1 %62, label %106, label %91, !prof !465

91:                                               ; preds = %82, %90
  %92 = phi ptr [ %31, %90 ], [ %45, %82 ]
  %93 = phi ptr [ %1, %90 ], [ %43, %82 ]
  %94 = phi i32 [ 0, %90 ], [ %41, %82 ]
  %95 = phi ptr [ %60, %90 ], [ %67, %82 ]
  %96 = phi ptr [ %61, %90 ], [ %66, %82 ]
  %97 = getelementptr inbounds %struct.he, ptr %96, i64 0, i32 2
  %98 = load i64, ptr %97, align 8, !tbaa !143
  %99 = add i64 %98, -1
  store i64 %99, ptr %97, align 8, !tbaa !143
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %114, !prof !466

101:                                              ; preds = %91
  %102 = load ptr, ptr %96, align 8, !tbaa !115
  store ptr %102, ptr %95, align 8, !tbaa !109
  call void @Perl_safesysfree(ptr noundef nonnull %96) #16
  %103 = getelementptr inbounds %struct.xpvhv, ptr %92, i64 0, i32 2
  %104 = load i64, ptr %103, align 8, !tbaa !220
  %105 = add i64 %104, -1
  store i64 %105, ptr %103, align 8, !tbaa !220
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
  br i1 %118, label %120, label %119, !prof !466

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
define dso_local ptr @Perl_share_hek(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !108 {
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #18
  store i8 0, ptr %4, align 1, !tbaa !144
  %6 = icmp slt i32 %1, 0
  br i1 %6, label %7, label %24, !prof !467

7:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  %8 = sub nsw i32 0, %1
  %9 = zext nneg i32 %8 to i64
  store i64 %9, ptr %5, align 8, !tbaa !120
  store i8 1, ptr %4, align 1, !tbaa !144
  %10 = call ptr @Perl_bytes_from_utf8(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %4) #16
  %11 = load i64, ptr %5, align 8, !tbaa !120
  %12 = trunc i64 %11 to i32
  %13 = load i8, ptr %4, align 1, !tbaa !144, !range !155, !noundef !156
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
define dso_local void @Perl_hv_ename_add(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !108 {
  %5 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !123
  %7 = and i32 %6, 33554432
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !143
  %12 = load ptr, ptr %0, align 8, !tbaa !149
  %13 = getelementptr inbounds %struct.xpvhv, ptr %12, i64 0, i32 3
  %14 = load i64, ptr %13, align 8, !tbaa !175
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
  %27 = load i32, ptr %26, align 4, !tbaa !249
  %28 = icmp eq i32 %27, 0
  %29 = load ptr, ptr %20, align 8, !tbaa !143
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
  %47 = load ptr, ptr %46, align 8, !tbaa !109
  %48 = getelementptr inbounds %struct.hek, ptr %47, i64 0, i32 2
  %49 = getelementptr inbounds %struct.hek, ptr %47, i64 0, i32 1
  %50 = load i32, ptr %49, align 4, !tbaa !158
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, ptr %48, i64 %51
  %53 = getelementptr inbounds i8, ptr %52, i64 1
  %54 = load i8, ptr %53, align 1, !tbaa !143
  %55 = and i8 %54, 1
  %56 = icmp eq i8 %55, 0
  %57 = and i1 %43, %56
  br i1 %57, label %61, label %58

58:                                               ; preds = %44
  %59 = tail call fastcc i32 @hek_eq_pvn_flags(ptr noundef nonnull %47, ptr noundef %1, i32 noundef %2, i32 noundef %3) #17, !range !468
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
  store i32 %35, ptr %26, align 4, !tbaa !249
  br label %125

70:                                               ; preds = %63, %61, %58
  %71 = icmp ugt ptr %46, %34
  br i1 %71, label %44, label %72, !llvm.loop !469

72:                                               ; preds = %70, %30
  %73 = load i32, ptr %26, align 4, !tbaa !249
  %74 = select i1 %31, i32 -1, i32 1
  %75 = select i1 %31, i32 %35, i32 %27
  %76 = add nsw i32 %73, %74
  store i32 %76, ptr %26, align 4, !tbaa !249
  %77 = load ptr, ptr %20, align 8, !tbaa !143
  %78 = add nuw nsw i32 %75, 1
  %79 = sext i32 %78 to i64
  %80 = shl nsw i64 %79, 3
  %81 = tail call ptr @Perl_safesysrealloc(ptr noundef %77, i64 noundef %80) #16
  store ptr %81, ptr %20, align 8, !tbaa !143
  %82 = and i32 %3, 536870912
  %83 = icmp eq i32 %82, 0
  %84 = sub nsw i32 0, %2
  %85 = select i1 %83, i32 %2, i32 %84
  %86 = tail call ptr @Perl_share_hek(ptr noundef %1, i32 noundef %85, i32 noundef %25) #17
  %87 = load ptr, ptr %20, align 8, !tbaa !143
  %88 = sext i32 %75 to i64
  %89 = getelementptr inbounds ptr, ptr %87, i64 %88
  store ptr %86, ptr %89, align 8, !tbaa !109
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
  %97 = load i32, ptr %96, align 4, !tbaa !158
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, ptr %95, i64 %98
  %100 = getelementptr inbounds i8, ptr %99, i64 1
  %101 = load i8, ptr %100, align 1, !tbaa !143
  %102 = and i8 %101, 1
  %103 = icmp eq i8 %102, 0
  %104 = and i32 %3, 536870912
  %105 = icmp eq i32 %104, 0
  %106 = and i1 %105, %103
  br i1 %106, label %110, label %107

107:                                              ; preds = %94
  %108 = tail call fastcc i32 @hek_eq_pvn_flags(ptr noundef nonnull %29, ptr noundef %1, i32 noundef %2, i32 noundef %3) #17, !range !468
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
  store ptr %118, ptr %20, align 8, !tbaa !143
  store i32 %117, ptr %26, align 4, !tbaa !249
  store ptr %29, ptr %118, align 8, !tbaa !109
  %119 = icmp eq i32 %116, 0
  %120 = sub nsw i32 0, %2
  %121 = select i1 %119, i32 %2, i32 %120
  %122 = tail call ptr @Perl_share_hek(ptr noundef %1, i32 noundef %121, i32 noundef %25) #17
  %123 = load ptr, ptr %20, align 8, !tbaa !143
  %124 = getelementptr inbounds ptr, ptr %123, i64 1
  store ptr %122, ptr %124, align 8, !tbaa !109
  br label %125

125:                                              ; preds = %72, %69, %66, %115, %112, %107
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @hek_eq_pvn_flags(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !prof !108 !PGOFuncName !470 {
  %5 = getelementptr inbounds %struct.hek, ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %struct.hek, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !158
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i8, ptr %5, i64 %8
  %10 = getelementptr inbounds i8, ptr %9, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !143
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
define dso_local void @Perl_hv_ename_delete(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !108 {
  %5 = icmp slt i32 %2, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = zext i32 %2 to i64
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.6, i64 noundef %7) #16
  br label %8

8:                                                ; preds = %6, %4
  %9 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !123
  %11 = and i32 %10, 33554432
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %148, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !143
  %16 = load ptr, ptr %0, align 8, !tbaa !149
  %17 = getelementptr inbounds %struct.xpvhv, ptr %16, i64 0, i32 3
  %18 = load i64, ptr %17, align 8, !tbaa !175
  %19 = getelementptr ptr, ptr %15, i64 %18
  %20 = getelementptr ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !143
  %22 = icmp eq ptr %21, null
  br i1 %22, label %148, label %23

23:                                               ; preds = %13
  %24 = getelementptr i8, ptr %19, i64 36
  %25 = load i32, ptr %24, align 4, !tbaa !249
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
  %43 = load ptr, ptr %42, align 8, !tbaa !109
  %44 = getelementptr inbounds %struct.hek, ptr %43, i64 0, i32 2
  %45 = getelementptr inbounds %struct.hek, ptr %43, i64 0, i32 1
  %46 = load i32, ptr %45, align 4, !tbaa !158
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, ptr %44, i64 %47
  %49 = getelementptr inbounds i8, ptr %48, i64 1
  %50 = load i8, ptr %49, align 1, !tbaa !143
  %51 = and i8 %50, 1
  %52 = icmp eq i8 %51, 0
  %53 = and i1 %37, %52
  br i1 %53, label %60, label %54

54:                                               ; preds = %39
  %55 = tail call fastcc i32 @hek_eq_pvn_flags(ptr noundef nonnull %43, ptr noundef %1, i32 noundef %2, i32 noundef %3) #17, !range !468
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %88, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds i8, ptr %21, i64 %41
  %59 = load ptr, ptr %58, align 8, !tbaa !109
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
  %70 = load ptr, ptr %14, align 8, !tbaa !143
  %71 = load ptr, ptr %0, align 8, !tbaa !149
  %72 = getelementptr inbounds %struct.xpvhv, ptr %71, i64 0, i32 3
  %73 = load i64, ptr %72, align 8, !tbaa !175
  %74 = getelementptr ptr, ptr %70, i64 %73
  %75 = getelementptr ptr, ptr %74, i64 1
  %76 = getelementptr i8, ptr %74, i64 36
  %77 = load i32, ptr %76, align 4, !tbaa !249
  %78 = select i1 %28, i32 1, i32 -1
  %79 = add nsw i32 %77, %78
  store i32 %79, ptr %76, align 4, !tbaa !249
  %80 = getelementptr i8, ptr %74, i64 36
  switch i32 %79, label %85 [
    i32 1, label %81
    i32 -1, label %81
  ]

81:                                               ; preds = %67, %67
  %82 = load ptr, ptr %21, align 8, !tbaa !109
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  tail call void @Perl_safesysfree(ptr noundef nonnull %21) #16
  store ptr null, ptr %75, align 8, !tbaa !143
  store i32 0, ptr %80, align 4, !tbaa !249
  br label %148

85:                                               ; preds = %67, %81
  %86 = getelementptr inbounds ptr, ptr %33, i64 -1
  %87 = load ptr, ptr %86, align 8, !tbaa !109
  store ptr %87, ptr %68, align 8, !tbaa !109
  br label %148

88:                                               ; preds = %62, %60, %54
  %89 = icmp slt i64 %40, 17
  br i1 %89, label %90, label %39, !llvm.loop !471

90:                                               ; preds = %88, %27
  %91 = icmp sgt i32 %25, 0
  %92 = load ptr, ptr %21, align 8, !tbaa !109
  br i1 %91, label %96, label %93

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.hek, ptr %92, i64 0, i32 1
  %95 = load i32, ptr %94, align 4, !tbaa !158
  br label %112

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.hek, ptr %92, i64 0, i32 2
  %98 = getelementptr inbounds %struct.hek, ptr %92, i64 0, i32 1
  %99 = load i32, ptr %98, align 4, !tbaa !158
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, ptr %97, i64 %100
  %102 = getelementptr inbounds i8, ptr %101, i64 1
  %103 = load i8, ptr %102, align 1, !tbaa !143
  %104 = and i8 %103, 1
  %105 = icmp eq i8 %104, 0
  %106 = and i32 %3, 536870912
  %107 = icmp eq i32 %106, 0
  %108 = and i1 %107, %105
  br i1 %108, label %112, label %109

109:                                              ; preds = %96
  %110 = tail call fastcc i32 @hek_eq_pvn_flags(ptr noundef nonnull %92, ptr noundef %1, i32 noundef %2, i32 noundef %3) #17, !range !468
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
  store i32 %29, ptr %24, align 4, !tbaa !249
  br label %148

121:                                              ; preds = %23
  %122 = getelementptr inbounds %struct.hek, ptr %21, i64 0, i32 2
  %123 = getelementptr inbounds %struct.hek, ptr %21, i64 0, i32 1
  %124 = load i32, ptr %123, align 4, !tbaa !158
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, ptr %122, i64 %125
  %127 = getelementptr inbounds i8, ptr %126, i64 1
  %128 = load i8, ptr %127, align 1, !tbaa !143
  %129 = and i8 %128, 1
  %130 = icmp eq i8 %129, 0
  %131 = and i32 %3, 536870912
  %132 = icmp eq i32 %131, 0
  %133 = and i1 %132, %130
  br i1 %133, label %139, label %134

134:                                              ; preds = %121
  %135 = tail call fastcc i32 @hek_eq_pvn_flags(ptr noundef nonnull %21, ptr noundef %1, i32 noundef %2, i32 noundef %3) #17, !range !468
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %148, label %137

137:                                              ; preds = %134
  %138 = load ptr, ptr %20, align 8, !tbaa !143
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
  store ptr %147, ptr %20, align 8, !tbaa !143
  store ptr %146, ptr %147, align 8, !tbaa !109
  store i32 -1, ptr %24, align 4, !tbaa !249
  br label %148

148:                                              ; preds = %85, %84, %120, %115, %112, %109, %145, %141, %139, %134, %13, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local nonnull ptr @Perl_hv_backreferences_p(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !472 {
  %2 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !123
  %4 = and i32 %3, 33554432
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %14, label %6, !prof !473

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !143
  %9 = load ptr, ptr %0, align 8, !tbaa !149
  %10 = getelementptr inbounds %struct.xpvhv, ptr %9, i64 0, i32 3
  %11 = load i64, ptr %10, align 8, !tbaa !175
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
define dso_local void @Perl_hv_kill_backrefs(ptr noundef %0) local_unnamed_addr #0 !prof !474 {
  %2 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !123
  %4 = and i32 %3, 33554432
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %22, label %6, !prof !475

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !143
  %9 = load ptr, ptr %0, align 8, !tbaa !149
  %10 = getelementptr inbounds %struct.xpvhv, ptr %9, i64 0, i32 3
  %11 = load i64, ptr %10, align 8, !tbaa !175
  %12 = getelementptr ptr, ptr %8, i64 %11
  %13 = getelementptr ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8, !tbaa !445
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16, !prof !476

16:                                               ; preds = %6
  store ptr null, ptr %13, align 8, !tbaa !445
  tail call void @Perl_sv_kill_backrefs(ptr noundef nonnull %0, ptr noundef nonnull %14) #16
  %17 = getelementptr inbounds %struct.av, ptr %14, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !477
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
define dso_local ptr @Perl_hv_iterkey(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !prof !479 {
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds %struct.he, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !113
  %6 = getelementptr inbounds %struct.hek, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !158
  %8 = icmp eq i32 %7, -2
  %9 = getelementptr inbounds %struct.hek, ptr %5, i64 0, i32 2
  br i1 %8, label %10, label %28, !prof !480

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  %11 = load ptr, ptr %9, align 4, !tbaa !109
  %12 = getelementptr inbounds %struct.sv, ptr %11, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !137
  %14 = and i32 %13, 2098176
  %15 = icmp eq i32 %14, 1024
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  %17 = load ptr, ptr %11, align 8, !tbaa !140
  %18 = getelementptr inbounds %struct.xpv, ptr %17, i64 0, i32 2
  %19 = getelementptr inbounds %struct.sv, ptr %11, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !143
  br label %23

21:                                               ; preds = %10
  %22 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %11, ptr noundef nonnull %3, i32 noundef 2) #16
  br label %23

23:                                               ; preds = %21, %16
  %24 = phi ptr [ %18, %16 ], [ %3, %21 ]
  %25 = phi ptr [ %20, %16 ], [ %22, %21 ]
  %26 = load i64, ptr %24, align 8, !tbaa !120
  %27 = trunc i64 %26 to i32
  store i32 %27, ptr %1, align 4, !tbaa !285
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  br label %29

28:                                               ; preds = %2
  store i32 %7, ptr %1, align 4, !tbaa !285
  br label %29

29:                                               ; preds = %28, %23
  %30 = phi ptr [ %25, %23 ], [ %9, %28 ]
  ret ptr %30
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_hv_iternextsv(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !prof !108 {
  %4 = tail call ptr @Perl_hv_iternext_flags(ptr noundef %0, i32 noundef 0) #17
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @Perl_hv_iterkey(ptr noundef nonnull %4, ptr noundef %2) #17
  store ptr %7, ptr %1, align 8, !tbaa !109
  %8 = tail call ptr @Perl_hv_iterval(ptr noundef %0, ptr noundef nonnull %4) #17
  br label %9

9:                                                ; preds = %3, %6
  %10 = phi ptr [ %8, %6 ], [ null, %3 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_unsharepvn(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !108 {
  tail call fastcc void @S_unshare_hek_or_pvn(ptr noundef null, ptr noundef %0, i32 noundef %1, i32 noundef %2) #17
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_sv_magicext(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_die(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @Perl_refcounted_he_chain_2hv(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !108 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.10, i64 noundef %5) #16
  br label %6

6:                                                ; preds = %4, %2
  %7 = tail call ptr @Perl_newSV_type(i32 noundef 12) #16
  %8 = load ptr, ptr %7, align 8, !tbaa !149
  %9 = getelementptr inbounds %struct.xpvhv, ptr %8, i64 0, i32 3
  %10 = load i64, ptr %9, align 8, !tbaa !175
  %11 = trunc i64 %10 to i32
  %12 = getelementptr inbounds %struct.hv, ptr %7, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !143
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %6
  %16 = shl i64 %10, 3
  %17 = add i64 %16, 8
  %18 = and i64 %17, 34359738360
  %19 = tail call ptr @Perl_safesyscalloc(i64 noundef %18, i64 noundef 1) #16
  store ptr %19, ptr %12, align 8, !tbaa !143
  br label %20

20:                                               ; preds = %15, %6
  %21 = icmp eq ptr %0, null
  br i1 %21, label %98, label %22

22:                                               ; preds = %20, %86
  %23 = phi ptr [ %88, %86 ], [ %0, %20 ]
  %24 = phi i32 [ %87, %86 ], [ 0, %20 ]
  %25 = getelementptr inbounds %struct.refcounted_he, ptr %23, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !481
  %27 = load i32, ptr %26, align 4, !tbaa !183
  %28 = load ptr, ptr %12, align 8, !tbaa !143
  %29 = and i32 %27, %11
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds ptr, ptr %28, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !109
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
  %41 = load ptr, ptr %40, align 8, !tbaa !113
  %42 = load i32, ptr %41, align 4, !tbaa !183
  %43 = icmp eq i32 %42, %27
  br i1 %43, label %44, label %65

44:                                               ; preds = %38
  %45 = icmp eq ptr %41, %26
  br i1 %45, label %86, label %46

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.hek, ptr %41, i64 0, i32 1
  %48 = load i32, ptr %47, align 4, !tbaa !158
  %49 = load i32, ptr %35, align 4, !tbaa !158
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.hek, ptr %41, i64 0, i32 2
  %53 = sext i32 %48 to i64
  %54 = getelementptr inbounds i8, ptr %52, i64 %53
  %55 = getelementptr inbounds i8, ptr %54, i64 1
  %56 = load i8, ptr %55, align 1, !tbaa !143
  %57 = getelementptr i8, ptr %37, i64 %53
  %58 = load i8, ptr %57, align 1, !tbaa !143
  %59 = xor i8 %58, %56
  %60 = and i8 %59, 1
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %51
  %63 = tail call i32 @bcmp(ptr nonnull %52, ptr nonnull %36, i64 %53)
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %86, label %65

65:                                               ; preds = %38, %62, %51, %46
  %66 = load ptr, ptr %39, align 8, !tbaa !109
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %38, !llvm.loop !483

68:                                               ; preds = %65, %22
  %69 = tail call fastcc ptr @S_new_he() #17
  %70 = load ptr, ptr %25, align 8, !tbaa !481
  %71 = getelementptr inbounds i8, ptr %70, i64 -8
  %72 = load i64, ptr %71, align 8, !tbaa !143
  %73 = add i64 %72, 1
  store i64 %73, ptr %71, align 8, !tbaa !143
  %74 = load ptr, ptr %25, align 8, !tbaa !481
  %75 = getelementptr inbounds %struct.he, ptr %69, i64 0, i32 1
  store ptr %74, ptr %75, align 8, !tbaa !113
  %76 = tail call fastcc ptr @S_refcounted_he_value(ptr noundef nonnull %23) #17
  %77 = icmp eq ptr %76, @PL_sv_placeholder
  %78 = zext i1 %77 to i32
  %79 = add i32 %24, %78
  %80 = getelementptr inbounds %struct.he, ptr %69, i64 0, i32 2
  store ptr %76, ptr %80, align 8, !tbaa !143
  %81 = load ptr, ptr %31, align 8, !tbaa !109
  store ptr %81, ptr %69, align 8, !tbaa !115
  store ptr %69, ptr %31, align 8, !tbaa !109
  %82 = load ptr, ptr %7, align 8, !tbaa !149
  %83 = getelementptr inbounds %struct.xpvhv, ptr %82, i64 0, i32 2
  %84 = load i64, ptr %83, align 8, !tbaa !220
  %85 = add i64 %84, 1
  store i64 %85, ptr %83, align 8, !tbaa !220
  br label %86

86:                                               ; preds = %62, %44, %68
  %87 = phi i32 [ %79, %68 ], [ %24, %44 ], [ %24, %62 ]
  %88 = load ptr, ptr %23, align 8, !tbaa !484
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %22, !llvm.loop !485

90:                                               ; preds = %86
  %91 = icmp eq i32 %87, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %90
  tail call fastcc void @S_clear_placeholders(ptr noundef nonnull %7, i32 noundef %87) #17
  %93 = zext i32 %87 to i64
  %94 = load ptr, ptr %7, align 8, !tbaa !149
  %95 = getelementptr inbounds %struct.xpvhv, ptr %94, i64 0, i32 2
  %96 = load i64, ptr %95, align 8, !tbaa !220
  %97 = sub i64 %96, %93
  store i64 %97, ptr %95, align 8, !tbaa !220
  br label %98

98:                                               ; preds = %20, %92, %90
  %99 = getelementptr inbounds %struct.hv, ptr %7, i64 0, i32 2
  %100 = load i32, ptr %99, align 4, !tbaa !123
  %101 = or i32 %100, -2147483648
  store i32 %101, ptr %99, align 4, !tbaa !123
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @S_refcounted_he_value(ptr noundef %0) unnamed_addr #0 !prof !108 !PGOFuncName !486 {
  %2 = getelementptr inbounds %struct.refcounted_he, ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 4, !tbaa !143
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
  %10 = load i64, ptr %9, align 8, !tbaa !143
  %11 = tail call ptr @Perl_newSViv(i64 noundef %10) #16
  br label %35

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.refcounted_he, ptr %0, i64 0, i32 2
  %14 = load i64, ptr %13, align 8, !tbaa !143
  %15 = tail call ptr @Perl_newSVuv(i64 noundef %14) #16
  br label %35

16:                                               ; preds = %1, %1
  %17 = tail call ptr @Perl_newSV_type(i32 noundef 3) #16
  %18 = getelementptr inbounds %struct.refcounted_he, ptr %0, i64 0, i32 4, i64 1
  %19 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 3
  store ptr %18, ptr %19, align 8, !tbaa !143
  %20 = getelementptr inbounds %struct.refcounted_he, ptr %0, i64 0, i32 2
  %21 = load i64, ptr %20, align 8, !tbaa !143
  %22 = load ptr, ptr %17, align 8, !tbaa !140
  %23 = getelementptr inbounds %struct.xpv, ptr %22, i64 0, i32 2
  store i64 %21, ptr %23, align 8, !tbaa !141
  %24 = getelementptr inbounds %struct.xpv, ptr %22, i64 0, i32 3
  store i64 0, ptr %24, align 8, !tbaa !143
  %25 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !137
  %27 = or i32 %26, 134300672
  store i32 %27, ptr %25, align 4, !tbaa !137
  %28 = load i8, ptr %2, align 4, !tbaa !143
  %29 = and i8 %28, 112
  %30 = icmp eq i8 %29, 80
  br i1 %30, label %31, label %35

31:                                               ; preds = %16
  %32 = or i32 %26, 671171584
  store i32 %32, ptr %25, align 4, !tbaa !137
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
define dso_local ptr @Perl_refcounted_he_fetch_pvn(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 !prof !108 {
  %6 = icmp ult i32 %4, 4
  br i1 %6, label %9, label %7, !prof !487

7:                                                ; preds = %5
  %8 = zext i32 %4 to i64
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.11, i64 noundef %8) #16
  br label %9

9:                                                ; preds = %7, %5
  %10 = icmp eq ptr %0, null
  br i1 %10, label %116, label %11, !prof !487

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
  %22 = load i8, ptr %21, align 1, !tbaa !143
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
  %33 = load i8, ptr %32, align 1, !tbaa !143
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
  br i1 %42, label %43, label %19, !llvm.loop !488

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
  %51 = load i8, ptr %49, align 1, !tbaa !143
  %52 = icmp sgt i8 %51, -1
  br i1 %52, label %59, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds i8, ptr %49, i64 1
  %55 = shl i8 %51, 6
  %56 = load i8, ptr %54, align 1, !tbaa !143
  %57 = and i8 %56, 63
  %58 = or disjoint i8 %57, %55
  br label %59

59:                                               ; preds = %48, %53
  %60 = phi i8 [ %58, %53 ], [ %51, %48 ]
  %61 = phi ptr [ %54, %53 ], [ %49, %48 ]
  store i8 %60, ptr %50, align 1, !tbaa !143
  %62 = getelementptr inbounds i8, ptr %61, i64 1
  %63 = getelementptr inbounds i8, ptr %50, i64 1
  %64 = icmp eq ptr %62, %15
  br i1 %64, label %65, label %48, !llvm.loop !489

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
  %82 = load ptr, ptr %81, align 8, !tbaa !481
  %83 = load i32, ptr %82, align 4, !tbaa !183
  %84 = icmp eq i32 %78, %83
  br i1 %84, label %85, label %113

85:                                               ; preds = %79
  %86 = getelementptr inbounds %struct.hek, ptr %82, i64 0, i32 1
  %87 = load i32, ptr %86, align 4, !tbaa !158
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
  %97 = load i8, ptr %96, align 1, !tbaa !143
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
  %106 = load i8, ptr %105, align 4, !tbaa !143
  %107 = and i8 %106, 112
  %108 = icmp eq i8 %107, 16
  %109 = select i1 %108, ptr null, ptr @PL_sv_yes
  br label %121

110:                                              ; preds = %101
  %111 = tail call fastcc ptr @S_refcounted_he_value(ptr noundef nonnull %80) #17
  %112 = tail call ptr @Perl_sv_2mortal(ptr noundef %111) #16
  br label %121

113:                                              ; preds = %79, %85, %90, %94
  %114 = load ptr, ptr %80, align 8, !tbaa !484
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %79, !llvm.loop !490

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
define dso_local ptr @Perl_refcounted_he_fetch_pv(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !108 {
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19
  %6 = tail call ptr @Perl_refcounted_he_fetch_pvn(ptr noundef %0, ptr noundef %1, i64 noundef %5, i32 noundef %2, i32 noundef %3) #17
  ret ptr %6
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_refcounted_he_fetch_sv(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !108 {
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
  %12 = load i32, ptr %11, align 4, !tbaa !137
  %13 = and i32 %12, 2098176
  %14 = icmp eq i32 %13, 1024
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load ptr, ptr %1, align 8, !tbaa !140
  %17 = getelementptr inbounds %struct.xpv, ptr %16, i64 0, i32 2
  %18 = load i64, ptr %17, align 8, !tbaa !141
  store i64 %18, ptr %5, align 8, !tbaa !120
  %19 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !143
  br label %24

21:                                               ; preds = %10
  %22 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %1, ptr noundef nonnull %5, i32 noundef 34) #16
  %23 = load i32, ptr %11, align 4, !tbaa !137
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
  %32 = load ptr, ptr %1, align 8, !tbaa !140
  %33 = getelementptr inbounds %struct.xpv, ptr %32, i64 0, i32 3
  %34 = load i64, ptr %33, align 8, !tbaa !143
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !143
  %39 = getelementptr inbounds i8, ptr %38, i64 -8
  %40 = load i32, ptr %39, align 4, !tbaa !183
  br label %41

41:                                               ; preds = %36, %31, %28, %24
  %42 = phi i32 [ %2, %24 ], [ %40, %36 ], [ 0, %31 ], [ 0, %28 ]
  %43 = lshr i32 %25, 29
  %44 = and i32 %43, 1
  %45 = or i32 %44, %3
  %46 = load i64, ptr %5, align 8, !tbaa !120
  %47 = call ptr @Perl_refcounted_he_fetch_pvn(ptr noundef %0, ptr noundef %26, i64 noundef %46, i32 noundef %42, i32 noundef %45) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  ret ptr %47
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @Perl_refcounted_he_new_pvn(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 !prof !108 {
  %7 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  store i64 0, ptr %7, align 8, !tbaa !120
  %8 = icmp eq ptr %4, null
  %9 = icmp eq ptr %4, @PL_sv_placeholder
  %10 = or i1 %8, %9
  br i1 %10, label %53, label %11, !prof !491

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !137
  %14 = and i32 %13, 1024
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %32, !prof !492

16:                                               ; preds = %11
  %17 = and i32 %13, 256
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19, !prof !493

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
  br i1 %34, label %35, label %41, !prof !494

35:                                               ; preds = %32
  %36 = load ptr, ptr %4, align 8, !tbaa !140
  %37 = getelementptr inbounds %struct.xpv, ptr %36, i64 0, i32 2
  %38 = load i64, ptr %37, align 8, !tbaa !141
  store i64 %38, ptr %7, align 8, !tbaa !120
  %39 = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !143
  br label %45

41:                                               ; preds = %32
  %42 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %4, ptr noundef nonnull %7, i32 noundef 34) #16
  %43 = load i32, ptr %12, align 4, !tbaa !137
  %44 = load i64, ptr %7, align 8, !tbaa !120
  br label %45

45:                                               ; preds = %41, %35
  %46 = phi i64 [ %38, %35 ], [ %44, %41 ]
  %47 = phi i32 [ %13, %35 ], [ %43, %41 ]
  %48 = phi ptr [ %40, %35 ], [ %42, %41 ]
  %49 = and i32 %47, 536870912
  %50 = icmp eq i32 %49, 0
  %51 = select i1 %50, i8 64, i8 80, !prof !494
  %52 = add i64 %46, 33
  br label %53

53:                                               ; preds = %23, %6, %19, %45
  %54 = phi i1 [ true, %45 ], [ false, %19 ], [ false, %6 ], [ false, %23 ]
  %55 = phi ptr [ %48, %45 ], [ null, %19 ], [ null, %6 ], [ null, %23 ]
  %56 = phi i8 [ %51, %45 ], [ %22, %19 ], [ 16, %6 ], [ 0, %23 ]
  %57 = phi i64 [ %52, %45 ], [ 32, %19 ], [ 32, %6 ], [ 32, %23 ]
  %58 = and i32 %5, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %111, label %60, !prof !495

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
  %68 = load i8, ptr %67, align 1, !tbaa !143
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
  %79 = load i8, ptr %78, align 1, !tbaa !143
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
  br i1 %88, label %89, label %65, !llvm.loop !496

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
  %97 = load i8, ptr %95, align 1, !tbaa !143
  %98 = icmp sgt i8 %97, -1
  br i1 %98, label %105, label %99

99:                                               ; preds = %94
  %100 = getelementptr inbounds i8, ptr %95, i64 1
  %101 = shl i8 %97, 6
  %102 = load i8, ptr %100, align 1, !tbaa !143
  %103 = and i8 %102, 63
  %104 = or disjoint i8 %103, %101
  br label %105

105:                                              ; preds = %94, %99
  %106 = phi i8 [ %104, %99 ], [ %97, %94 ]
  %107 = phi ptr [ %100, %99 ], [ %95, %94 ]
  store i8 %106, ptr %96, align 1, !tbaa !143
  %108 = getelementptr inbounds i8, ptr %107, i64 1
  %109 = getelementptr inbounds i8, ptr %96, i64 1
  %110 = icmp eq ptr %108, %61
  br i1 %110, label %111, label %94, !llvm.loop !497

111:                                              ; preds = %77, %70, %105, %60, %89, %91, %53
  %112 = phi i32 [ %5, %53 ], [ 0, %91 ], [ 0, %89 ], [ 0, %60 ], [ 0, %105 ], [ %5, %70 ], [ %5, %77 ]
  %113 = phi i64 [ %2, %53 ], [ %92, %91 ], [ %2, %89 ], [ 0, %60 ], [ %92, %105 ], [ %2, %70 ], [ %2, %77 ]
  %114 = phi ptr [ %1, %53 ], [ %93, %91 ], [ %1, %89 ], [ %1, %60 ], [ %93, %105 ], [ %1, %70 ], [ %1, %77 ]
  %115 = icmp eq i32 %3, 0
  br i1 %115, label %116, label %118, !prof !495

116:                                              ; preds = %111
  %117 = call fastcc i32 @S_perl_hash_one_at_a_time_hard(ptr noundef %114, i64 noundef %113) #17
  br label %118

118:                                              ; preds = %116, %111
  %119 = phi i32 [ %3, %111 ], [ %117, %116 ]
  %120 = call noalias ptr @malloc(i64 noundef %57) #20
  store ptr %0, ptr %120, align 8, !tbaa !484
  br i1 %54, label %121, label %125, !prof !498

121:                                              ; preds = %118
  %122 = getelementptr inbounds %struct.refcounted_he, ptr %120, i64 0, i32 4, i64 1
  %123 = load i64, ptr %7, align 8, !tbaa !120
  %124 = add i64 %123, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %122, ptr align 1 %55, i64 %124, i1 false)
  br label %134

125:                                              ; preds = %118
  switch i8 %56, label %137 [
    i8 32, label %126
    i8 48, label %130
  ], !prof !499

126:                                              ; preds = %125
  %127 = load ptr, ptr %4, align 8, !tbaa !140
  %128 = getelementptr inbounds %struct.xpviv, ptr %127, i64 0, i32 4
  %129 = load i64, ptr %128, align 8, !tbaa !143
  br label %134

130:                                              ; preds = %125
  %131 = load ptr, ptr %4, align 8, !tbaa !140
  %132 = getelementptr inbounds %struct.xpvuv, ptr %131, i64 0, i32 4
  %133 = load i64, ptr %132, align 8, !tbaa !143
  br label %134

134:                                              ; preds = %121, %130, %126
  %135 = phi i64 [ %129, %126 ], [ %133, %130 ], [ %123, %121 ]
  %136 = getelementptr inbounds %struct.refcounted_he, ptr %120, i64 0, i32 2
  store i64 %135, ptr %136, align 8, !tbaa !143
  br label %137

137:                                              ; preds = %134, %125
  %138 = trunc i32 %112 to i8
  %139 = and i8 %138, 1
  %140 = or disjoint i8 %139, %56
  %141 = trunc i64 %113 to i32
  %142 = zext nneg i8 %140 to i32
  %143 = call fastcc ptr @S_share_hek_flags(ptr noundef %114, i32 noundef %141, i32 noundef %119, i32 noundef %142) #17
  %144 = getelementptr inbounds %struct.refcounted_he, ptr %120, i64 0, i32 1
  store ptr %143, ptr %144, align 8, !tbaa !481
  %145 = getelementptr inbounds %struct.refcounted_he, ptr %120, i64 0, i32 4
  store i8 %140, ptr %145, align 4, !tbaa !143
  %146 = getelementptr inbounds %struct.refcounted_he, ptr %120, i64 0, i32 3
  store i32 1, ptr %146, align 8, !tbaa !500
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  ret ptr %120
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @Perl_refcounted_he_new_pv(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 !prof !108 {
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19
  %7 = tail call ptr @Perl_refcounted_he_new_pvn(ptr noundef %0, ptr noundef %1, i64 noundef %6, i32 noundef %2, ptr noundef %3, i32 noundef %4) #17
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @Perl_refcounted_he_new_sv(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 !prof !501 {
  %6 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  %7 = and i32 %4, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9, !prof !502

9:                                                ; preds = %5
  %10 = zext i32 %4 to i64
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.13, i64 noundef %10) #16
  br label %11

11:                                               ; preds = %9, %5
  %12 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !137
  %14 = and i32 %13, 2098176
  %15 = icmp eq i32 %14, 1024
  br i1 %15, label %16, label %22, !prof !502

16:                                               ; preds = %11
  %17 = load ptr, ptr %1, align 8, !tbaa !140
  %18 = getelementptr inbounds %struct.xpv, ptr %17, i64 0, i32 2
  %19 = load i64, ptr %18, align 8, !tbaa !141
  store i64 %19, ptr %6, align 8, !tbaa !120
  %20 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !143
  br label %25

22:                                               ; preds = %11
  %23 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %1, ptr noundef nonnull %6, i32 noundef 34) #16
  %24 = load i32, ptr %12, align 4, !tbaa !137
  br label %25

25:                                               ; preds = %22, %16
  %26 = phi i32 [ %13, %16 ], [ %24, %22 ]
  %27 = phi ptr [ %21, %16 ], [ %23, %22 ]
  %28 = icmp eq i32 %2, 0
  br i1 %28, label %29, label %42, !prof !502

29:                                               ; preds = %25
  %30 = and i32 %26, 268435456
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %42, label %32, !prof !502

32:                                               ; preds = %29
  %33 = load ptr, ptr %1, align 8, !tbaa !140
  %34 = getelementptr inbounds %struct.xpv, ptr %33, i64 0, i32 3
  %35 = load i64, ptr %34, align 8, !tbaa !143
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !143
  %40 = getelementptr inbounds i8, ptr %39, i64 -8
  %41 = load i32, ptr %40, align 4, !tbaa !183
  br label %42

42:                                               ; preds = %37, %32, %29, %25
  %43 = phi i32 [ %2, %25 ], [ %41, %37 ], [ 0, %32 ], [ 0, %29 ]
  %44 = lshr i32 %26, 29
  %45 = and i32 %44, 1
  %46 = or i32 %45, %4
  %47 = load i64, ptr %6, align 8, !tbaa !120
  %48 = call ptr @Perl_refcounted_he_new_pvn(ptr noundef %0, ptr noundef %27, i64 noundef %47, i32 noundef %43, ptr noundef %3, i32 noundef %46) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  ret ptr %48
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_refcounted_he_free(ptr noundef %0) local_unnamed_addr #0 !prof !503 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3, !prof !504

3:                                                ; preds = %1, %9
  %4 = phi ptr [ %12, %9 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.refcounted_he, ptr %4, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !500
  %7 = add i32 %6, -1
  store i32 %7, ptr %5, align 8, !tbaa !500
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %14, !prof !505

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.refcounted_he, ptr %4, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !481
  tail call fastcc void @S_unshare_hek_or_pvn(ptr noundef %11, ptr noundef null, i32 noundef 0, i32 noundef 0) #17
  %12 = load ptr, ptr %4, align 8, !tbaa !484
  tail call void @free(ptr noundef nonnull %4) #16
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %3, !prof !506

14:                                               ; preds = %9, %3, %1
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef ptr @Perl_refcounted_he_inc(ptr noundef returned %0) local_unnamed_addr #5 !prof !507 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3, !prof !508

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.refcounted_he, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !500
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 8, !tbaa !500
  br label %7

7:                                                ; preds = %3, %1
  ret ptr %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @Perl_cop_fetch_label(ptr nocapture noundef readonly %0, ptr noundef writeonly %1, ptr noundef writeonly %2) local_unnamed_addr #11 !prof !509 {
  %4 = getelementptr inbounds %struct.cop, ptr %0, i64 0, i32 13
  %5 = load ptr, ptr %4, align 8, !tbaa !510
  %6 = icmp eq ptr %5, null
  br i1 %6, label %35, label %7, !prof !512

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.refcounted_he, ptr %5, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !481
  %10 = getelementptr inbounds %struct.hek, ptr %9, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !158
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %35, !prof !513

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.hek, ptr %9, i64 0, i32 2
  %15 = load i8, ptr %14, align 4, !tbaa !143
  %16 = icmp eq i8 %15, 58
  br i1 %16, label %17, label %35, !prof !514

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.refcounted_he, ptr %5, i64 0, i32 4
  %19 = load i8, ptr %18, align 4, !tbaa !143
  %20 = and i8 %19, 112
  switch i8 %20, label %35 [
    i8 64, label %21
    i8 80, label %21
  ], !prof !515

21:                                               ; preds = %17, %17
  %22 = icmp eq ptr %1, null
  br i1 %22, label %26, label %23, !prof !516

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.refcounted_he, ptr %5, i64 0, i32 2
  %25 = load i64, ptr %24, align 8, !tbaa !143
  store i64 %25, ptr %1, align 8, !tbaa !120
  br label %26

26:                                               ; preds = %23, %21
  %27 = icmp eq ptr %2, null
  br i1 %27, label %33, label %28, !prof !516

28:                                               ; preds = %26
  %29 = load i8, ptr %18, align 4, !tbaa !143
  %30 = and i8 %29, 112
  %31 = icmp eq i8 %30, 80
  %32 = select i1 %31, i32 536870912, i32 0
  store i32 %32, ptr %2, align 4, !tbaa !285
  br label %33

33:                                               ; preds = %28, %26
  %34 = getelementptr inbounds %struct.refcounted_he, ptr %5, i64 0, i32 4, i64 1
  br label %35

35:                                               ; preds = %17, %13, %7, %3, %33
  %36 = phi ptr [ %34, %33 ], [ null, %3 ], [ null, %7 ], [ null, %13 ], [ null, %17 ]
  ret ptr %36
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_cop_store_label(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !517 {
  %5 = and i32 %3, -536870913
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7, !prof !494

7:                                                ; preds = %4
  %8 = zext i32 %3 to i64
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.14, i64 noundef %8) #16
  br label %9

9:                                                ; preds = %7, %4
  %10 = tail call ptr @Perl_newSVpvn_flags(ptr noundef %1, i64 noundef %2, i32 noundef 524288) #16
  %11 = and i32 %3, 536870912
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13, !prof !494

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.sv, ptr %10, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !137
  %16 = or i32 %15, 536870912
  store i32 %16, ptr %14, align 4, !tbaa !137
  br label %17

17:                                               ; preds = %13, %9
  %18 = getelementptr inbounds %struct.cop, ptr %0, i64 0, i32 13
  %19 = load ptr, ptr %18, align 8, !tbaa !510
  %20 = tail call ptr @Perl_refcounted_he_new_pvn(ptr noundef %19, ptr noundef nonnull @.str.15, i64 noundef 1, i32 noundef 0, ptr noundef %10, i32 noundef 0) #17
  store ptr %20, ptr %18, align 8, !tbaa !510
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
define internal fastcc i32 @S_ptr_hash(i64 noundef %0) unnamed_addr #12 !prof !108 !PGOFuncName !518 {
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
define internal fastcc noundef ptr @S_hv_auxinit_internal(ptr noundef returned %0) unnamed_addr #5 !prof !519 !PGOFuncName !520 {
  %2 = getelementptr inbounds %struct.xpvhv_aux, ptr %0, i64 0, i32 3
  store i32 -1, ptr %2, align 8, !tbaa !354
  %3 = getelementptr inbounds %struct.xpvhv_aux, ptr %0, i64 0, i32 2
  store ptr null, ptr %3, align 8, !tbaa !271
  %4 = getelementptr inbounds %struct.xpvhv_aux, ptr %0, i64 0, i32 6
  %5 = load i32, ptr %4, align 8, !tbaa !218
  %6 = getelementptr inbounds %struct.xpvhv_aux, ptr %0, i64 0, i32 7
  store i32 %5, ptr %6, align 4, !tbaa !360
  %7 = getelementptr inbounds %struct.xpvhv_aux, ptr %0, i64 0, i32 8
  store i32 0, ptr %7, align 8, !tbaa !212
  %8 = getelementptr inbounds %struct.xpvhv_aux, ptr %0, i64 0, i32 4
  store i32 0, ptr %8, align 4, !tbaa !249
  %9 = getelementptr inbounds %struct.xpvhv_aux, ptr %0, i64 0, i32 5
  store ptr null, ptr %9, align 8, !tbaa !438
  %10 = getelementptr inbounds %struct.xpvhv_aux, ptr %0, i64 0, i32 9
  store i32 0, ptr %10, align 4, !tbaa !521
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!107}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 43491971510}
!4 = !{!"MaxCount", i64 4342352624}
!5 = !{!"MaxInternalCount", i64 4342352624}
!6 = !{!"MaxFunctionCount", i64 3033009960}
!7 = !{!"NumCounts", i64 40262}
!8 = !{!"NumFunctions", i64 2170}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 4342352624, i32 1}
!14 = !{i32 100000, i64 3033009960, i32 2}
!15 = !{i32 200000, i64 2317897115, i32 3}
!16 = !{i32 300000, i64 528717179, i32 7}
!17 = !{i32 400000, i64 462639867, i32 16}
!18 = !{i32 500000, i64 457545339, i32 26}
!19 = !{i32 600000, i64 423510107, i32 35}
!20 = !{i32 700000, i64 420555191, i32 45}
!21 = !{i32 800000, i64 220071415, i32 59}
!22 = !{i32 900000, i64 40456743, i32 99}
!23 = !{i32 950000, i64 21523442, i32 170}
!24 = !{i32 990000, i64 1957094, i32 384}
!25 = !{i32 999000, i64 104162, i32 1106}
!26 = !{i32 999900, i64 11423, i32 2014}
!27 = !{i32 999990, i64 757, i32 3020}
!28 = !{i32 999999, i64 63, i32 4652}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106}
!35 = !{ptr @Perl_hv_common_key_len, ptr @Perl_hv_common, i64 633469}
!36 = !{ptr @S_new_he, ptr @Perl_more_bodies, i64 182}
!37 = !{ptr @S_share_hek_flags, ptr @bcmp, i64 355633}
!38 = !{ptr @S_share_hek_flags, ptr @Perl_safesysmalloc, i64 21801}
!39 = !{ptr @S_share_hek_flags, ptr @S_hsplit, i64 2}
!40 = !{ptr @S_share_hek_flags, ptr @Perl_safesysfree, i64 1}
!41 = !{ptr @Perl_unshare_hek, ptr @S_unshare_hek_or_pvn, i64 23335818}
!42 = !{ptr @S_SvREFCNT_dec, ptr @Perl_sv_free2, i64 1}
!43 = !{ptr @Perl_hv_placeholders_get, ptr @Perl_mg_find, i64 48}
!44 = !{ptr @S_hsplit, ptr @Perl_safesysrealloc, i64 29798}
!45 = !{ptr @S_hsplit, ptr @S_hv_auxinit_internal, i64 71}
!46 = !{ptr @Perl_hv_scalar, ptr @Perl_sv_newmortal, i64 1}
!47 = !{ptr @Perl_hv_scalar, ptr @Perl_hv_fill, i64 1}
!48 = !{ptr @Perl_hv_scalar, ptr @Perl_sv_setpvf, i64 1}
!49 = !{ptr @Perl_hv_iterinit, ptr @S_hv_auxinit, i64 12102}
!50 = !{ptr @Perl_hv_iterval, ptr @Perl_mg_find, i64 22}
!51 = !{ptr @Perl_hv_iterval, ptr @Perl_sv_newmortal, i64 1}
!52 = !{ptr @Perl_hv_riter_set, ptr @S_hv_auxinit, i64 1}
!53 = !{ptr @Perl_hv_eiter_set, ptr @S_hv_auxinit, i64 1}
!54 = !{ptr @Perl_hv_copy_hints_hv, ptr @Perl_newSV_type, i64 22}
!55 = !{ptr @Perl_hv_copy_hints_hv, ptr @Perl_push_scope, i64 21}
!56 = !{ptr @Perl_hv_copy_hints_hv, ptr @Perl_save_pushptr, i64 21}
!57 = !{ptr @Perl_hv_copy_hints_hv, ptr @Perl_hv_iterinit, i64 21}
!58 = !{ptr @Perl_hv_copy_hints_hv, ptr @Perl_hv_iternext_flags, i64 41}
!59 = !{ptr @Perl_hv_copy_hints_hv, ptr @Perl_hv_iterval, i64 20}
!60 = !{ptr @Perl_hv_copy_hints_hv, ptr @Perl_newSVsv, i64 20}
!61 = !{ptr @Perl_hv_copy_hints_hv, ptr @Perl_newSVhek, i64 18}
!62 = !{ptr @Perl_hv_copy_hints_hv, ptr @Perl_sv_magic, i64 41}
!63 = !{ptr @Perl_hv_copy_hints_hv, ptr @Perl_hv_common, i64 20}
!64 = !{ptr @Perl_hv_copy_hints_hv, ptr @S_SvREFCNT_dec_NN, i64 19}
!65 = !{ptr @Perl_hv_copy_hints_hv, ptr @Perl_hv_riter_set, i64 21}
!66 = !{ptr @Perl_hv_copy_hints_hv, ptr @Perl_hv_eiter_set, i64 21}
!67 = !{ptr @Perl_hv_copy_hints_hv, ptr @Perl_pop_scope, i64 21}
!68 = !{ptr @S_SvREFCNT_dec_NN, ptr @Perl_sv_free2, i64 20}
!69 = !{ptr @Perl_hv_free_ent, ptr @S_hv_free_ent_ret, i64 118494}
!70 = !{ptr @Perl_hv_free_ent, ptr @S_SvREFCNT_dec, i64 118494}
!71 = !{ptr @S_hv_free_ent_ret, ptr @S_SvREFCNT_dec, i64 1}
!72 = !{ptr @S_hv_free_ent_ret, ptr @Perl_safesysfree, i64 2}
!73 = !{ptr @S_hv_free_ent_ret, ptr @Perl_unshare_hek, i64 722644}
!74 = !{ptr @Perl_hv_iterkeysv, ptr @Perl_newSVhek, i64 20846600}
!75 = !{ptr @Perl_hv_iterkeysv, ptr @Perl_sv_2mortal, i64 20846600}
!76 = !{ptr @S_hfreeentries, ptr @Perl_hfree_next_entry, i64 2043223}
!77 = !{ptr @S_hfreeentries, ptr @S_SvREFCNT_dec, i64 1961814}
!78 = !{ptr @Perl_hv_placeholders_set, ptr @Perl_mg_find, i64 49148}
!79 = !{ptr @Perl_hv_placeholders_set, ptr @Perl_sv_magicext, i64 1}
!80 = !{ptr @Perl_hfree_next_entry, ptr @S_hv_free_ent_ret, i64 604150}
!81 = !{ptr @Perl_hv_undef_flags, ptr @Perl_hv_name_set, i64 2}
!82 = !{ptr @Perl_hv_undef_flags, ptr @Perl_push_scope, i64 6401}
!83 = !{ptr @Perl_hv_undef_flags, ptr @Perl_save_pushptr, i64 6401}
!84 = !{ptr @Perl_hv_undef_flags, ptr @S_hfreeentries, i64 38660}
!85 = !{ptr @Perl_hv_undef_flags, ptr @S_SvREFCNT_dec_NN, i64 1}
!86 = !{ptr @Perl_hv_undef_flags, ptr @S_SvREFCNT_dec, i64 3}
!87 = !{ptr @Perl_hv_undef_flags, ptr @Perl_safesysfree, i64 38660}
!88 = !{ptr @Perl_hv_undef_flags, ptr @Perl_hv_placeholders_set, i64 6401}
!89 = !{ptr @Perl_hv_undef_flags, ptr @Perl_mg_clear, i64 1}
!90 = !{ptr @Perl_hv_undef_flags, ptr @Perl_pop_scope, i64 6401}
!91 = !{ptr @S_hv_auxinit, ptr @Perl_safesyscalloc, i64 141}
!92 = !{ptr @S_hv_auxinit, ptr @Perl_safesysrealloc, i64 12092}
!93 = !{ptr @S_hv_auxinit, ptr @S_hv_auxinit_internal, i64 12234}
!94 = !{ptr @S_unshare_hek_or_pvn, ptr @bcmp, i64 3}
!95 = !{ptr @S_unshare_hek_or_pvn, ptr @Perl_safesysfree, i64 69205}
!96 = !{ptr @S_unshare_hek_or_pvn, ptr @Perl_ck_warner_d, i64 1}
!97 = !{ptr @Perl_hv_backreferences_p, ptr @S_hv_auxinit, i64 2}
!98 = !{ptr @Perl_hv_kill_backrefs, ptr @Perl_sv_kill_backrefs, i64 1}
!99 = !{ptr @Perl_refcounted_he_new_sv, ptr @Perl_croak, i64 1}
!100 = !{ptr @Perl_refcounted_he_new_sv, ptr @Perl_sv_2pv_flags, i64 1}
!101 = !{ptr @Perl_refcounted_he_new_sv, ptr @Perl_refcounted_he_new_pvn, i64 4}
!102 = !{ptr @Perl_refcounted_he_free, ptr @S_unshare_hek_or_pvn, i64 18}
!103 = !{ptr @Perl_refcounted_he_free, ptr @free, i64 18}
!104 = !{ptr @Perl_cop_store_label, ptr @Perl_croak, i64 1}
!105 = !{ptr @Perl_cop_store_label, ptr @Perl_newSVpvn_flags, i64 53}
!106 = !{ptr @Perl_cop_store_label, ptr @Perl_refcounted_he_new_pvn, i64 53}
!107 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!108 = !{!"function_entry_count", i64 0}
!109 = !{!110, !110, i64 0}
!110 = !{!"any pointer", !111, i64 0}
!111 = !{!"omnipotent char", !112, i64 0}
!112 = !{!"Simple C/C++ TBAA"}
!113 = !{!114, !110, i64 8}
!114 = !{!"he", !110, i64 0, !110, i64 8, !111, i64 16}
!115 = !{!114, !110, i64 0}
!116 = distinct !{!116, !117}
!117 = !{!"llvm.loop.mustprogress"}
!118 = !{!"function_entry_count", i64 633469}
!119 = !{!"branch_weights", i32 1, i32 633470}
!120 = !{!121, !121, i64 0}
!121 = !{!"long", !111, i64 0}
!122 = !{!"branch_weights", i32 1, i32 506604493}
!123 = !{!124, !125, i64 12}
!124 = !{!"hv", !110, i64 0, !125, i64 8, !125, i64 12, !111, i64 16}
!125 = !{!"int", !111, i64 0}
!126 = !{!"branch_weights", i32 506602889, i32 1605}
!127 = !{!"branch_weights", i32 1605, i32 1}
!128 = !{!129, !110, i64 40}
!129 = !{!"magic", !110, i64 0, !110, i64 8, !130, i64 16, !111, i64 18, !111, i64 19, !121, i64 24, !110, i64 32, !110, i64 40}
!130 = !{!"short", !111, i64 0}
!131 = !{!132, !110, i64 8}
!132 = !{!"ufuncs", !110, i64 0, !110, i64 8, !121, i64 16}
!133 = !{!129, !110, i64 32}
!134 = !{!132, !121, i64 16}
!135 = !{!"branch_weights", i32 676298, i32 505928196}
!136 = !{!"branch_weights", i32 505928196, i32 1}
!137 = !{!138, !125, i64 12}
!138 = !{!"sv", !110, i64 0, !125, i64 8, !125, i64 12, !111, i64 16}
!139 = !{!"branch_weights", i32 505809807, i32 118390}
!140 = !{!138, !110, i64 0}
!141 = !{!142, !121, i64 16}
!142 = !{!"xpv", !110, i64 0, !111, i64 8, !121, i64 16, !111, i64 24}
!143 = !{!111, !111, i64 0}
!144 = !{!145, !145, i64 0}
!145 = !{!"_Bool", !111, i64 0}
!146 = !{!"branch_weights", i32 1511743, i32 504416454}
!147 = !{!"branch_weights", i32 503674348, i32 742107}
!148 = !{!"branch_weights", i32 506479470, i32 125024}
!149 = !{!124, !110, i64 0}
!150 = !{!"branch_weights", i32 506219451, i32 260020}
!151 = !{!"branch_weights", i32 -529325154, i32 460040385}
!152 = !{!"branch_weights", i32 231704, i32 11}
!153 = !{!"branch_weights", i32 231704, i32 1}
!154 = !{!"branch_weights", i32 1, i32 11}
!155 = !{i8 0, i8 2}
!156 = !{}
!157 = !{!"branch_weights", i32 4, i32 8}
!158 = !{!159, !125, i64 4}
!159 = !{!"hek", !125, i64 0, !125, i64 4, !111, i64 8}
!160 = !{!161, !111, i64 72}
!161 = !{!"xpvlv", !110, i64 0, !111, i64 8, !121, i64 16, !111, i64 24, !111, i64 32, !111, i64 40, !111, i64 48, !121, i64 56, !110, i64 64, !111, i64 72, !111, i64 73}
!162 = !{!161, !110, i64 64}
!163 = !{!"branch_weights", i32 11, i32 1}
!164 = !{!"branch_weights", i32 401902787, i32 399440077}
!165 = !{!"branch_weights", i32 14111, i32 1}
!166 = !{!"branch_weights", i32 1, i32 14197}
!167 = !{!"branch_weights", i32 10, i32 14188}
!168 = !{!"branch_weights", i32 77, i32 14112}
!169 = !{!"branch_weights", i32 77, i32 1}
!170 = !{!"branch_weights", i32 14112, i32 1}
!171 = !{!"branch_weights", i32 14188, i32 1}
!172 = !{!"branch_weights", i32 1, i32 14188}
!173 = !{!"branch_weights", i32 363563, i32 506115898}
!174 = !{!"branch_weights", i32 337586, i32 25978}
!175 = !{!176, !121, i64 24}
!176 = !{!"xpvhv", !110, i64 0, !111, i64 8, !121, i64 16, !121, i64 24}
!177 = !{!"branch_weights", i32 337586, i32 1}
!178 = !{!"branch_weights", i32 506141875, i32 1}
!179 = !{!"branch_weights", i32 661778, i32 505480098}
!180 = !{!"branch_weights", i32 1277254, i32 504202845}
!181 = !{!"branch_weights", i32 503529905, i32 672941}
!182 = !{!"branch_weights", i32 1, i32 503529905}
!183 = !{!159, !125, i64 0}
!184 = !{!"branch_weights", i32 2595963, i32 16009}
!185 = !{!"branch_weights", i32 11221876, i32 494920000}
!186 = !{!"branch_weights", i32 2018199, i32 492901802}
!187 = !{!"branch_weights", i32 482341362, i32 140790601}
!188 = !{!"branch_weights", i32 140790601, i32 1}
!189 = !{!"branch_weights", i32 10560441, i32 612571521}
!190 = distinct !{!190, !117}
!191 = !{!"branch_weights", i32 1755564, i32 1019953}
!192 = !{!"branch_weights", i32 1755564, i32 1}
!193 = !{!"branch_weights", i32 23815641, i32 460281285}
!194 = !{!"branch_weights", i32 460281285, i32 1}
!195 = !{!"branch_weights", i32 1, i32 460281285}
!196 = !{!"branch_weights", i32 460281239, i32 47}
!197 = !{!"branch_weights", i32 1, i32 23815641}
!198 = !{!"branch_weights", i32 484096925, i32 1}
!199 = !{!"branch_weights", i32 483497287, i32 599639}
!200 = !{!"branch_weights", i32 262636, i32 2512880}
!201 = distinct !{!201, !117}
!202 = !{!"branch_weights", i32 22044945, i32 7}
!203 = !{!"branch_weights", i32 1, i32 7}
!204 = !{!"branch_weights", i32 21285723, i32 759229}
!205 = !{!"branch_weights", i32 21285723, i32 1}
!206 = !{!"branch_weights", i32 206496, i32 552734}
!207 = !{!"branch_weights", i32 552734, i32 1}
!208 = !{!"branch_weights", i32 538599, i32 14136}
!209 = !{!"branch_weights", i32 1, i32 745094}
!210 = !{!"branch_weights", i32 505330, i32 239765}
!211 = !{!"branch_weights", i32 327224, i32 178107}
!212 = !{!213, !125, i64 48}
!213 = !{!"xpvhv_aux", !111, i64 0, !110, i64 8, !110, i64 16, !125, i64 24, !125, i64 28, !110, i64 32, !125, i64 40, !125, i64 44, !125, i64 48, !125, i64 52}
!214 = !{!"branch_weights", i32 178107, i32 1}
!215 = !{!"branch_weights", i32 2147474692, i32 8956}
!216 = !{!"branch_weights", i32 488599, i32 256496}
!217 = !{!"branch_weights", i32 1, i32 512992, i32 1}
!218 = !{!213, !125, i64 40}
!219 = !{!"branch_weights", i32 745094, i32 1}
!220 = !{!176, !121, i64 16}
!221 = !{!"branch_weights", i32 29794, i32 715301}
!222 = !{!"branch_weights", i32 29789, i32 6}
!223 = !{!"branch_weights", i32 1789571367, i32 357912281}
!224 = !{!"branch_weights", i32 730548, i32 14547}
!225 = !{!"hv.c:S_hv_delete_common"}
!226 = !{!"branch_weights", i32 110915, i32 14110}
!227 = !{!"branch_weights", i32 1, i32 14110}
!228 = !{!"branch_weights", i32 0, i32 -2147483648}
!229 = !{!"branch_weights", i32 23, i32 125002}
!230 = !{!"branch_weights", i32 125002, i32 1}
!231 = !{!"branch_weights", i32 14232, i32 110771}
!232 = !{!"branch_weights", i32 11284, i32 99488}
!233 = !{!"branch_weights", i32 71586, i32 27903}
!234 = !{!"branch_weights", i32 1, i32 71586}
!235 = !{!"branch_weights", i32 53414, i32 4}
!236 = !{!"branch_weights", i32 6491, i32 118512}
!237 = !{!"branch_weights", i32 53417, i32 65096}
!238 = !{!"branch_weights", i32 59837, i32 5243}
!239 = !{!"branch_weights", i32 5243, i32 0}
!240 = distinct !{!240, !117}
!241 = !{!"branch_weights", i32 5243, i32 1}
!242 = !{!"branch_weights", i32 17, i32 70305}
!243 = !{!"branch_weights", i32 53417, i32 5477}
!244 = !{!"branch_weights", i32 53417, i32 1}
!245 = !{!"branch_weights", i32 1, i32 118496}
!246 = !{!"branch_weights", i32 118496, i32 1}
!247 = !{!"branch_weights", i32 20783, i32 97714}
!248 = !{!"branch_weights", i32 86319, i32 11396}
!249 = !{!213, !125, i64 28}
!250 = !{!"branch_weights", i32 11396, i32 1}
!251 = !{!"branch_weights", i32 125, i32 11272}
!252 = !{!"branch_weights", i32 11272, i32 1}
!253 = !{!"branch_weights", i32 1, i32 11396}
!254 = !{!"branch_weights", i32 2147389447, i32 94201}
!255 = !{!256, !125, i64 12}
!256 = !{!"gv", !110, i64 0, !125, i64 8, !125, i64 12, !111, i64 16}
!257 = !{!258, !110, i64 32}
!258 = !{!"gp", !110, i64 0, !110, i64 8, !110, i64 16, !125, i64 24, !125, i64 28, !110, i64 32, !110, i64 40, !110, i64 48, !110, i64 56, !125, i64 64, !125, i64 67, !110, i64 72}
!259 = !{!138, !125, i64 8}
!260 = !{!"branch_weights", i32 188435, i32 2147295213}
!261 = !{!"branch_weights", i32 6402, i32 112095}
!262 = !{!"branch_weights", i32 129868816, i32 1220641493}
!263 = !{!258, !125, i64 24}
!264 = !{!258, !110, i64 16}
!265 = !{!"branch_weights", i32 11393, i32 4}
!266 = !{!"branch_weights", i32 1, i32 4}
!267 = !{!"branch_weights", i32 4, i32 1}
!268 = !{!"branch_weights", i32 -2064553985, i32 -1255641272}
!269 = !{!"branch_weights", i32 68344, i32 1}
!270 = !{!"branch_weights", i32 889886325, i32 1257597323}
!271 = !{!213, !110, i64 16}
!272 = !{!"branch_weights", i32 1, i32 97714}
!273 = !{!"branch_weights", i32 21976, i32 2147461672}
!274 = !{!"branch_weights", i32 6421, i32 112076}
!275 = !{!"branch_weights", i32 1, i32 58892}
!276 = distinct !{!276, !117}
!277 = !{!"branch_weights", i32 6507, i32 1}
!278 = !{!"function_entry_count", i64 745151}
!279 = !{!"hv.c:S_new_he"}
!280 = !{!"branch_weights", i32 182, i32 744971}
!281 = !{!"function_entry_count", i64 28305}
!282 = !{!"hv.c:S_hv_magic_check"}
!283 = !{!"branch_weights", i32 1, i32 28305}
!284 = !{!129, !111, i64 18}
!285 = !{!125, !125, i64 0}
!286 = !{!"branch_weights", i32 28297, i32 10}
!287 = !{!"branch_weights", i32 1, i32 28297}
!288 = !{!129, !110, i64 0}
!289 = !{!"branch_weights", i32 28305, i32 1}
!290 = distinct !{!290, !117}
!291 = !{!"function_entry_count", i64 2649564}
!292 = !{!"hv.c:S_perl_hash_one_at_a_time_hard"}
!293 = !{!"branch_weights", i32 2649564, i32 1}
!294 = !{!"branch_weights", i32 18873879, i32 2649564}
!295 = distinct !{!295, !117}
!296 = !{!"function_entry_count", i64 775958}
!297 = !{!"hv.c:S_share_hek_flags"}
!298 = !{!"branch_weights", i32 1, i32 84631}
!299 = !{!"branch_weights", i32 691364, i32 213564}
!300 = !{!"branch_weights", i32 691364, i32 1}
!301 = !{!"branch_weights", i32 365360, i32 326005}
!302 = !{!"branch_weights", i32 326005, i32 1}
!303 = !{!"branch_weights", i32 691328, i32 37}
!304 = !{!"branch_weights", i32 84631, i32 820296}
!305 = distinct !{!305, !117}
!306 = !{!"branch_weights", i32 31027, i32 53606}
!307 = !{!"branch_weights", i32 6, i32 53601}
!308 = !{!"branch_weights", i32 775959, i32 1}
!309 = !{!"function_entry_count", i64 23335818}
!310 = !{!"function_entry_count", i64 557073}
!311 = !{!"hv.c:S_SvREFCNT_dec"}
!312 = !{!"branch_weights", i32 557074, i32 1}
!313 = !{!"branch_weights", i32 1, i32 557074}
!314 = !{!"hv.c:S_hv_notallowed"}
!315 = !{!"hv.c:S_save_hek_flags"}
!316 = !{!"function_entry_count", i64 48}
!317 = !{!"branch_weights", i32 49, i32 1}
!318 = !{!129, !121, i64 24}
!319 = !{!"hv.c:S_clear_placeholders"}
!320 = distinct !{!320, !117}
!321 = distinct !{!321, !117}
!322 = !{!"function_entry_count", i64 29798}
!323 = !{!"hv.c:S_hsplit"}
!324 = !{!"branch_weights", i32 28582, i32 1218}
!325 = !{!"branch_weights", i32 1, i32 29799}
!326 = !{!"branch_weights", i32 1, i32 59598, i32 1}
!327 = !{!"branch_weights", i32 1288, i32 28512}
!328 = !{!"branch_weights", i32 71, i32 1218}
!329 = !{!"branch_weights", i32 161614, i32 280963}
!330 = !{!"branch_weights", i32 225924, i32 198889}
!331 = !{!"branch_weights", i32 19744, i32 -367903991}
!332 = !{!"branch_weights", i32 280963, i32 143850}
!333 = distinct !{!333, !117}
!334 = !{!"branch_weights", i32 29799, i32 412778}
!335 = distinct !{!335, !117}
!336 = !{!"function_entry_count", i64 1}
!337 = !{!"branch_weights", i32 2, i32 1}
!338 = !{!"branch_weights", i32 1, i32 2}
!339 = !{!"branch_weights", i32 1670265059, i32 477218589}
!340 = !{!"branch_weights", i32 2, i32 32}
!341 = distinct !{!341, !117}
!342 = distinct !{!342, !117}
!343 = !{!"branch_weights", i32 1, i32 27}
!344 = !{!"branch_weights", i32 1, i32 55}
!345 = !{!"branch_weights", i32 27, i32 1}
!346 = !{!"branch_weights", i32 154, i32 56}
!347 = !{!"branch_weights", i32 1, i32 56}
!348 = !{!"branch_weights", i32 113, i32 1}
!349 = !{!"branch_weights", i32 56, i32 1}
!350 = !{!"branch_weights", i32 56, i32 0}
!351 = distinct !{!351, !117}
!352 = !{!"branch_weights", i32 27, i32 182}
!353 = distinct !{!353, !117}
!354 = !{!213, !125, i64 24}
!355 = distinct !{!355, !117}
!356 = distinct !{!356, !117}
!357 = !{!"function_entry_count", i64 29921}
!358 = !{!"branch_weights", i32 12103, i32 17820}
!359 = !{!"branch_weights", i32 17820, i32 1}
!360 = !{!213, !125, i64 44}
!361 = !{!"branch_weights", i32 26, i32 20876899}
!362 = !{!"branch_weights", i32 20876881, i32 44}
!363 = !{!"branch_weights", i32 1, i32 44}
!364 = !{!"branch_weights", i32 44, i32 1}
!365 = !{!"branch_weights", i32 30264, i32 20846661}
!366 = !{!"branch_weights", i32 722573816, i32 -1701933534}
!367 = !{!"branch_weights", i32 1, i32 20846661}
!368 = !{!"branch_weights", i32 16303527, i32 4543135}
!369 = !{!"branch_weights", i32 20876924, i32 1}
!370 = !{!"branch_weights", i32 1, i32 20871207}
!371 = !{!"branch_weights", i32 20846660, i32 1}
!372 = !{!"branch_weights", i32 53064713, i32 24547}
!373 = !{!"branch_weights", i32 1650127374, i32 -574260565}
!374 = !{!"branch_weights", i32 1, i32 53064713}
!375 = !{!"branch_weights", i32 36761187, i32 16303527}
!376 = !{!"branch_weights", i32 1882649788, i32 264833860}
!377 = distinct !{!377, !117}
!378 = !{!"branch_weights", i32 20846661, i32 1}
!379 = !{!"function_entry_count", i64 154228}
!380 = !{!"branch_weights", i32 154208, i32 22}
!381 = !{!"branch_weights", i32 22, i32 1}
!382 = !{!"function_entry_count", i64 22}
!383 = !{!"branch_weights", i32 1, i32 23}
!384 = !{!"function_entry_count", i64 11730}
!385 = !{!"branch_weights", i32 3, i32 11729}
!386 = !{!"branch_weights", i32 3, i32 1}
!387 = !{!"branch_weights", i32 16, i32 8}
!388 = !{!"branch_weights", i32 23, i32 1}
!389 = !{!"branch_weights", i32 0, i32 1}
!390 = distinct !{!390, !117}
!391 = !{!"branch_weights", i32 1, i32 22}
!392 = !{!"branch_weights", i32 484, i32 45}
!393 = !{!"branch_weights", i32 1049880897, i32 1097602751}
!394 = !{!"branch_weights", i32 22, i32 0}
!395 = distinct !{!395, !117}
!396 = !{!"function_entry_count", i64 21}
!397 = !{!"hv.c:S_SvREFCNT_dec_NN"}
!398 = !{!"function_entry_count", i64 118495}
!399 = !{!"function_entry_count", i64 722646}
!400 = !{!"hv.c:S_hv_free_ent_ret"}
!401 = !{!"branch_weights", i32 1, i32 722647}
!402 = !{!"hv.c:S_SvREFCNT_inc"}
!403 = !{!"branch_weights", i32 1, i32 42749}
!404 = !{!124, !125, i64 8}
!405 = !{!"branch_weights", i32 42749, i32 1}
!406 = distinct !{!406, !117}
!407 = distinct !{!407, !117}
!408 = !{!"branch_weights", i32 42686, i32 64}
!409 = !{!"branch_weights", i32 31043, i32 11707}
!410 = !{!"branch_weights", i32 11707, i32 1}
!411 = !{!"function_entry_count", i64 20846600}
!412 = !{!"function_entry_count", i64 81409}
!413 = !{!"hv.c:S_hfreeentries"}
!414 = !{!"branch_weights", i32 81410, i32 326439}
!415 = distinct !{!415, !117}
!416 = !{!"function_entry_count", i64 49148}
!417 = !{!"branch_weights", i32 49149, i32 1}
!418 = !{!"function_entry_count", i64 705013}
!419 = !{!"branch_weights", i32 317382, i32 387633}
!420 = !{!"branch_weights", i32 1, i32 387633}
!421 = !{!"branch_weights", i32 387633, i32 1}
!422 = !{!"branch_weights", i32 100863, i32 604152}
!423 = !{!"branch_weights", i32 604151, i32 1}
!424 = !{!"branch_weights", i32 1034329, i32 1}
!425 = !{!"branch_weights", i32 430178, i32 604151}
!426 = distinct !{!426, !117}
!427 = !{!"branch_weights", i32 32, i32 604121}
!428 = !{!"branch_weights", i32 252425, i32 351697}
!429 = !{!"branch_weights", i32 351697, i32 1}
!430 = !{!"function_entry_count", i64 38661}
!431 = !{!"branch_weights", i32 1, i32 38662}
!432 = !{!"branch_weights", i32 5, i32 38658}
!433 = !{!"branch_weights", i32 26542, i32 12117}
!434 = !{!"branch_weights", i32 12117, i32 1}
!435 = !{!"branch_weights", i32 32262, i32 6401}
!436 = !{!"branch_weights", i32 26546, i32 12117}
!437 = !{!"branch_weights", i32 1, i32 12117}
!438 = !{!213, !110, i64 32}
!439 = !{!440, !110, i64 0}
!440 = !{!"mro_meta", !110, i64 0, !110, i64 8, !110, i64 16, !125, i64 24, !125, i64 28, !110, i64 32, !110, i64 40, !110, i64 48, !125, i64 56}
!441 = !{!440, !110, i64 8}
!442 = !{!440, !110, i64 16}
!443 = !{!440, !110, i64 40}
!444 = !{!440, !110, i64 48}
!445 = !{!213, !110, i64 8}
!446 = !{!"branch_weights", i32 38662, i32 1}
!447 = !{!"branch_weights", i32 1, i32 133}
!448 = !{!"branch_weights", i32 132, i32 2}
!449 = distinct !{!449, !117}
!450 = !{!"branch_weights", i32 1, i32 132}
!451 = !{!"branch_weights", i32 1065789040, i32 1081694608}
!452 = !{!"branch_weights", i32 133, i32 1}
!453 = !{!"function_entry_count", i64 12234}
!454 = !{!"hv.c:S_hv_auxinit"}
!455 = !{!"branch_weights", i32 12235, i32 1}
!456 = !{!"branch_weights", i32 141, i32 12095}
!457 = !{!"branch_weights", i32 1, i32 24470, i32 1}
!458 = !{!"function_entry_count", i64 23335835}
!459 = !{!"hv.c:S_unshare_hek_or_pvn"}
!460 = !{!"branch_weights", i32 1, i32 23335836}
!461 = !{!"branch_weights", i32 69205, i32 23266632}
!462 = !{!"branch_weights", i32 -1892688624, i32 7636640}
!463 = distinct !{!463, !117}
!464 = distinct !{!464, !117}
!465 = !{!"branch_weights", i32 3990, i32 2147479658}
!466 = !{!"branch_weights", i32 69205, i32 1}
!467 = !{!"branch_weights", i32 1, i32 30754}
!468 = !{i32 0, i32 2}
!469 = distinct !{!469, !117}
!470 = !{!"hv.c:hek_eq_pvn_flags"}
!471 = distinct !{!471, !117}
!472 = !{!"function_entry_count", i64 26864}
!473 = !{!"branch_weights", i32 2, i32 26864}
!474 = !{!"function_entry_count", i64 37869}
!475 = !{!"branch_weights", i32 20146, i32 17725}
!476 = !{!"branch_weights", i32 17725, i32 1}
!477 = !{!478, !125, i64 12}
!478 = !{!"av", !110, i64 0, !125, i64 8, !125, i64 12, !111, i64 16}
!479 = !{!"function_entry_count", i64 27}
!480 = !{!"branch_weights", i32 1, i32 28}
!481 = !{!482, !110, i64 8}
!482 = !{!"refcounted_he", !110, i64 0, !110, i64 8, !111, i64 16, !125, i64 24, !111, i64 28}
!483 = distinct !{!483, !117}
!484 = !{!482, !110, i64 0}
!485 = distinct !{!485, !117}
!486 = !{!"hv.c:S_refcounted_he_value"}
!487 = !{!"branch_weights", i32 517909, i32 1}
!488 = distinct !{!488, !117}
!489 = distinct !{!489, !117}
!490 = distinct !{!490, !117}
!491 = !{!"branch_weights", i32 227, i32 3136}
!492 = !{!"branch_weights", i32 3, i32 54}
!493 = !{!"branch_weights", i32 1, i32 3}
!494 = !{!"branch_weights", i32 54, i32 1}
!495 = !{!"branch_weights", i32 58, i32 1}
!496 = distinct !{!496, !117}
!497 = distinct !{!497, !117}
!498 = !{!"branch_weights", i32 54, i32 5}
!499 = !{!"branch_weights", i32 9, i32 12, i32 3}
!500 = !{!482, !125, i64 24}
!501 = !{!"function_entry_count", i64 4}
!502 = !{!"branch_weights", i32 5, i32 1}
!503 = !{!"function_entry_count", i64 10461}
!504 = !{!"branch_weights", i32 10392, i32 44}
!505 = !{!"branch_weights", i32 18, i32 27}
!506 = !{!"branch_weights", i32 44, i32 0}
!507 = !{!"function_entry_count", i64 21044}
!508 = !{!"branch_weights", i32 20991, i32 55}
!509 = !{!"function_entry_count", i64 509332}
!510 = !{!511, !110, i64 72}
!511 = !{!"cop", !110, i64 0, !110, i64 8, !110, i64 16, !121, i64 24, !125, i64 32, !125, i64 33, !125, i64 33, !125, i64 33, !125, i64 33, !125, i64 33, !125, i64 33, !125, i64 33, !111, i64 34, !111, i64 35, !125, i64 36, !110, i64 40, !110, i64 48, !125, i64 56, !125, i64 60, !110, i64 64, !110, i64 72}
!512 = !{!"branch_weights", i32 12736, i32 496598}
!513 = !{!"branch_weights", i32 496574, i32 25}
!514 = !{!"branch_weights", i32 496574, i32 1}
!515 = !{!"branch_weights", i32 1, i32 993148, i32 1}
!516 = !{!"branch_weights", i32 53, i32 496522}
!517 = !{!"function_entry_count", i64 53}
!518 = !{!"hv.c:S_ptr_hash"}
!519 = !{!"function_entry_count", i64 12304}
!520 = !{!"hv.c:S_hv_auxinit_internal"}
!521 = !{!213, !125, i64 52}
