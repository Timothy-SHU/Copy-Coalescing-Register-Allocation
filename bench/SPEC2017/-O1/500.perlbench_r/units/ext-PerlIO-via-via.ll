; ModuleID = 'ext/PerlIO-via/via.c'
source_filename = "ext/PerlIO-via/via.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sv = type { ptr, i32, i32, %union.anon.7 }
%union.anon.7 = type { ptr }
%struct._PerlIO_funcs = type { i64, ptr, i64, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PerlIOVia = type { %struct._PerlIO, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct._PerlIO = type { ptr, ptr, i32, i32, ptr }
%struct.gv = type { ptr, i32, i32, %union.anon }
%union.anon = type { ptr }
%struct.gp = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.stackinfo = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.xpvav = type { ptr, %union._xmgu, i64, i64, ptr }
%union._xmgu = type { ptr }
%struct.av = type { ptr, i32, i32, %union.anon.1 }
%union.anon.1 = type { ptr }
%struct.hv = type { ptr, i32, i32, %union.anon.2 }
%union.anon.2 = type { ptr }
%struct.xpvhv = type { ptr, %union._xmgu, i64, i64 }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.xpvgv = type { ptr, %union._xmgu, i64, %union.anon.3, %union._xivu, %union._xnvu }
%union.anon.3 = type { i64 }
%union._xivu = type { i64 }
%union._xnvu = type { double }
%struct.io = type { ptr, i32, i32, %union.anon.4 }
%union.anon.4 = type { ptr }
%struct.xpvio = type { ptr, %union._xmgu, i64, %union.anon.5, %union._xivu, ptr, %union.anon.6, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 }
%union.anon.5 = type { i64 }
%union.anon.6 = type { ptr }
%struct.xpv = type { ptr, %union._xmgu, i64, %union.anon.8 }
%union.anon.8 = type { i64 }
%struct.xpviv = type { ptr, %union._xmgu, i64, %union.anon.9, %union._xivu }
%union.anon.9 = type { i64 }
%struct.xpvnv = type { ptr, %union._xmgu, i64, %union.anon.10, %union._xivu, %union._xnvu }
%union.anon.10 = type { i64 }

@PL_stack_sp = external local_unnamed_addr global ptr, align 8
@PL_curstackinfo = external local_unnamed_addr global ptr, align 8
@PL_stack_base = external local_unnamed_addr global ptr, align 8
@PL_curstack = external local_unnamed_addr global ptr, align 8
@PL_stack_max = external local_unnamed_addr global ptr, align 8
@PL_markstack_ptr = external local_unnamed_addr global ptr, align 8
@PL_markstack_max = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [9 x i8] c"No next\0A\00", align 1
@PL_sv_undef = external global %struct.sv, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"No package specified\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"PerlIO::via::%s\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"PUSHED\00", align 1
@PL_sv_yes = external global %struct.sv, align 8
@PL_sv_no = external global %struct.sv, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"UTF8\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"FILL\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Cannot find package '%.*s'\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"FDOPEN\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"SYSOPEN\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"OPEN\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"Opened with %s => %p->%p\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"Open fail %s => %p->%p\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"Nothing to open with\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"POPPED\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"CLOSE\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"FILENO\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"BINMODE\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"SEEK\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"TELL\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"UNREAD\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"READ\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"WRITE\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"FLUSH\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"SETLINEBUF\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"CLEARERR\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"EOF\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"GETARG\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"via\00", align 1
@PerlIO_object = dso_local constant %struct._PerlIO_funcs { i64 224, ptr @.str.28, i64 248, i32 65538, ptr @PerlIOVia_pushed, ptr @PerlIOVia_popped, ptr @PerlIOVia_open, ptr @PerlIOVia_binmode, ptr @PerlIOVia_getarg, ptr @PerlIOVia_fileno, ptr @PerlIOVia_dup, ptr @PerlIOVia_read, ptr @PerlIOVia_unread, ptr @PerlIOVia_write, ptr @PerlIOVia_seek, ptr @PerlIOVia_tell, ptr @PerlIOVia_close, ptr @PerlIOVia_flush, ptr @PerlIOVia_fill, ptr @PerlIOVia_eof, ptr @PerlIOVia_error, ptr @PerlIOVia_clearerr, ptr @PerlIOVia_setlinebuf, ptr @PerlIOVia_get_base, ptr @PerlIOVia_bufsiz, ptr @PerlIOVia_get_ptr, ptr @PerlIOVia_get_cnt, ptr @PerlIOVia_set_ptrcnt }, align 8
@.str.29 = private unnamed_addr constant [21 x i8] c"ext/PerlIO-via/via.c\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"v5.22.0\00", align 1

; Function Attrs: cold nounwind uwtable
define dso_local ptr @PerlIOVia_fetchmethod(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !prof !34 {
  %4 = getelementptr inbounds %struct.PerlIOVia, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #10
  %7 = tail call ptr @Perl_gv_fetchmeth_pvn(ptr noundef %5, ptr noundef %1, i64 noundef %6, i32 noundef 0, i32 noundef 0) #11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.gv, ptr %7, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = getelementptr inbounds %struct.gp, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !44
  br label %14

14:                                               ; preds = %3, %9
  %15 = phi ptr [ %13, %9 ], [ inttoptr (i64 -1 to ptr), %3 ]
  store ptr %15, ptr %2, align 8, !tbaa !46
  ret ptr %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @Perl_gv_fetchmeth_pvn(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind uwtable
define dso_local ptr @PerlIOVia_method(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3, ...) local_unnamed_addr #0 !prof !34 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  %6 = load ptr, ptr %0, align 8, !tbaa !46
  %7 = load ptr, ptr %2, align 8, !tbaa !46
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = tail call ptr @PerlIOVia_fetchmethod(ptr noundef %6, ptr noundef %1, ptr noundef nonnull %2)
  br label %11

11:                                               ; preds = %4, %9
  %12 = phi ptr [ %10, %9 ], [ %7, %4 ]
  %13 = icmp eq ptr %12, inttoptr (i64 -1 to ptr)
  br i1 %13, label %230, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.va_start(ptr nonnull %5)
  %16 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !46
  %17 = getelementptr inbounds %struct.stackinfo, ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !47
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = call ptr @Perl_new_stackinfo(i32 noundef 32, i32 noundef 22) #11
  %22 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !46
  %23 = getelementptr inbounds %struct.stackinfo, ptr %21, i64 0, i32 2
  store ptr %22, ptr %23, align 8, !tbaa !49
  %24 = getelementptr inbounds %struct.stackinfo, ptr %22, i64 0, i32 3
  store ptr %21, ptr %24, align 8, !tbaa !47
  br label %25

25:                                               ; preds = %20, %14
  %26 = phi ptr [ %18, %14 ], [ %21, %20 ]
  %27 = getelementptr inbounds %struct.stackinfo, ptr %26, i64 0, i32 6
  store i32 2, ptr %27, align 8, !tbaa !50
  %28 = getelementptr inbounds %struct.stackinfo, ptr %26, i64 0, i32 4
  store i32 -1, ptr %28, align 8, !tbaa !51
  %29 = load ptr, ptr %26, align 8, !tbaa !52
  %30 = load ptr, ptr %29, align 8, !tbaa !53
  %31 = getelementptr inbounds %struct.xpvav, ptr %30, i64 0, i32 2
  store i64 0, ptr %31, align 8, !tbaa !55
  %32 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %33 = ptrtoint ptr %15 to i64
  %34 = ptrtoint ptr %32 to i64
  %35 = sub i64 %33, %34
  %36 = ashr exact i64 %35, 3
  %37 = load ptr, ptr @PL_curstack, align 8, !tbaa !46
  %38 = load ptr, ptr %37, align 8, !tbaa !53
  %39 = getelementptr inbounds %struct.xpvav, ptr %38, i64 0, i32 2
  store i64 %36, ptr %39, align 8, !tbaa !55
  %40 = getelementptr inbounds %struct.av, ptr %29, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !43
  store ptr %41, ptr @PL_stack_base, align 8, !tbaa !46
  %42 = load ptr, ptr %26, align 8, !tbaa !52
  %43 = load ptr, ptr %42, align 8, !tbaa !53
  %44 = getelementptr inbounds %struct.xpvav, ptr %43, i64 0, i32 3
  %45 = load i64, ptr %44, align 8, !tbaa !57
  %46 = getelementptr inbounds ptr, ptr %41, i64 %45
  store ptr %46, ptr @PL_stack_max, align 8, !tbaa !46
  %47 = load ptr, ptr %26, align 8, !tbaa !52
  %48 = load ptr, ptr %47, align 8, !tbaa !53
  %49 = getelementptr inbounds %struct.xpvav, ptr %48, i64 0, i32 2
  %50 = load i64, ptr %49, align 8, !tbaa !55
  %51 = getelementptr inbounds ptr, ptr %41, i64 %50
  store ptr %51, ptr @PL_stack_sp, align 8, !tbaa !46
  %52 = load ptr, ptr %26, align 8, !tbaa !52
  store ptr %52, ptr @PL_curstack, align 8, !tbaa !46
  store ptr %26, ptr @PL_curstackinfo, align 8, !tbaa !46
  call void @Perl_push_scope() #11
  %53 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !46
  %54 = getelementptr inbounds i32, ptr %53, i64 1
  store ptr %54, ptr @PL_markstack_ptr, align 8, !tbaa !46
  %55 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !46
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %25
  %58 = call ptr @Perl_markstack_grow() #11
  br label %59

59:                                               ; preds = %25, %57
  %60 = phi ptr [ %58, %57 ], [ %54, %25 ]
  %61 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %62 = ptrtoint ptr %51 to i64
  %63 = ptrtoint ptr %61 to i64
  %64 = sub i64 %62, %63
  %65 = lshr exact i64 %64, 3
  %66 = trunc i64 %65 to i32
  store i32 %66, ptr %60, align 4, !tbaa !58
  %67 = load ptr, ptr @PL_stack_max, align 8, !tbaa !46
  %68 = ptrtoint ptr %67 to i64
  %69 = sub i64 %68, %62
  %70 = icmp slt i64 %69, 8
  br i1 %70, label %71, label %73

71:                                               ; preds = %59
  %72 = call ptr @Perl_stack_grow(ptr noundef %51, ptr noundef %51, i64 noundef 1) #11
  br label %73

73:                                               ; preds = %59, %71
  %74 = phi ptr [ %72, %71 ], [ %51, %59 ]
  %75 = getelementptr inbounds %struct.PerlIOVia, ptr %6, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !59
  %77 = getelementptr inbounds ptr, ptr %74, i64 1
  store ptr %76, ptr %77, align 8, !tbaa !46
  %78 = getelementptr inbounds %struct.__va_list_tag, ptr %5, i64 0, i32 2
  %79 = getelementptr inbounds %struct.__va_list_tag, ptr %5, i64 0, i32 3
  br label %80

80:                                               ; preds = %104, %73
  %81 = phi ptr [ %77, %73 ], [ %106, %104 ]
  %82 = load i32, ptr %5, align 16
  %83 = icmp ult i32 %82, 41
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = load ptr, ptr %79, align 16
  %86 = zext nneg i32 %82 to i64
  %87 = getelementptr i8, ptr %85, i64 %86
  %88 = add nuw nsw i32 %82, 8
  store i32 %88, ptr %5, align 16
  br label %92

89:                                               ; preds = %80
  %90 = load ptr, ptr %78, align 8
  %91 = getelementptr i8, ptr %90, i64 8
  store ptr %91, ptr %78, align 8
  br label %92

92:                                               ; preds = %89, %84
  %93 = phi ptr [ %87, %84 ], [ %90, %89 ]
  %94 = load ptr, ptr %93, align 8
  %95 = icmp eq ptr %94, null
  br i1 %95, label %107, label %96

96:                                               ; preds = %92
  %97 = load ptr, ptr @PL_stack_max, align 8, !tbaa !46
  %98 = ptrtoint ptr %97 to i64
  %99 = ptrtoint ptr %81 to i64
  %100 = sub i64 %98, %99
  %101 = icmp slt i64 %100, 8
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = call ptr @Perl_stack_grow(ptr noundef nonnull %81, ptr noundef nonnull %81, i64 noundef 1) #11
  br label %104

104:                                              ; preds = %96, %102
  %105 = phi ptr [ %103, %102 ], [ %81, %96 ]
  %106 = getelementptr inbounds ptr, ptr %105, i64 1
  store ptr %94, ptr %106, align 8, !tbaa !46
  br label %80, !llvm.loop !60

107:                                              ; preds = %92
  call void @llvm.va_end(ptr %5)
  %108 = load ptr, ptr %0, align 8, !tbaa !46
  %109 = load ptr, ptr %108, align 8, !tbaa !63
  %110 = icmp eq ptr %109, null
  br i1 %110, label %188, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.PerlIOVia, ptr %6, i64 0, i32 6
  %113 = load ptr, ptr %112, align 8, !tbaa !64
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %168

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.PerlIOVia, ptr %6, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !35
  %118 = getelementptr inbounds %struct.hv, ptr %117, i64 0, i32 2
  %119 = load i32, ptr %118, align 4, !tbaa !65
  %120 = and i32 %119, 33554432
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %143, label %122

122:                                              ; preds = %115
  %123 = getelementptr inbounds %struct.hv, ptr %117, i64 0, i32 3
  %124 = load ptr, ptr %123, align 8, !tbaa !43
  %125 = load ptr, ptr %117, align 8, !tbaa !67
  %126 = getelementptr inbounds %struct.xpvhv, ptr %125, i64 0, i32 3
  %127 = load i64, ptr %126, align 8, !tbaa !68
  %128 = getelementptr ptr, ptr %124, i64 %127
  %129 = getelementptr ptr, ptr %128, i64 1
  %130 = load ptr, ptr %129, align 8, !tbaa !43
  %131 = icmp eq ptr %130, null
  br i1 %131, label %143, label %132

132:                                              ; preds = %122
  %133 = getelementptr i8, ptr %128, i64 36
  %134 = load i32, ptr %133, align 4, !tbaa !70
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %132
  %137 = load ptr, ptr %130, align 8, !tbaa !46
  %138 = icmp eq ptr %137, null
  br i1 %138, label %143, label %139

139:                                              ; preds = %132, %136
  %140 = phi ptr [ %129, %132 ], [ %130, %136 ]
  %141 = load ptr, ptr %140, align 8, !tbaa !43
  %142 = getelementptr inbounds %struct.hek, ptr %141, i64 0, i32 2
  br label %143

143:                                              ; preds = %115, %122, %136, %139
  %144 = phi ptr [ %142, %139 ], [ null, %136 ], [ null, %122 ], [ null, %115 ]
  %145 = icmp eq ptr %144, null
  br i1 %145, label %228, label %146

146:                                              ; preds = %143
  %147 = call ptr @Perl_newGVgen_flags(ptr noundef nonnull %144, i32 noundef 0) #11
  %148 = call ptr @Perl_newSV_type(i32 noundef 15) #11
  %149 = getelementptr inbounds %struct.gv, ptr %147, i64 0, i32 3
  %150 = load ptr, ptr %149, align 8, !tbaa !43
  %151 = getelementptr inbounds %struct.gp, ptr %150, i64 0, i32 1
  store ptr %148, ptr %151, align 8, !tbaa !72
  %152 = call ptr @Perl_newRV(ptr noundef %147) #11
  store ptr %152, ptr %112, align 8, !tbaa !64
  %153 = load ptr, ptr %149, align 8, !tbaa !43
  %154 = getelementptr inbounds %struct.gp, ptr %153, i64 0, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !72
  %156 = getelementptr inbounds %struct.PerlIOVia, ptr %6, i64 0, i32 5
  store ptr %155, ptr %156, align 8, !tbaa !73
  %157 = icmp eq ptr %147, null
  br i1 %157, label %168, label %158

158:                                              ; preds = %146
  %159 = load ptr, ptr %147, align 8, !tbaa !74
  %160 = getelementptr inbounds %struct.xpvgv, ptr %159, i64 0, i32 5
  %161 = load ptr, ptr %160, align 8, !tbaa !43
  %162 = getelementptr inbounds %struct.xpvgv, ptr %159, i64 0, i32 4
  %163 = load ptr, ptr %162, align 8, !tbaa !43
  %164 = getelementptr inbounds %struct.hek, ptr %163, i64 0, i32 2
  %165 = getelementptr inbounds %struct.hek, ptr %163, i64 0, i32 1
  %166 = load i32, ptr %165, align 4, !tbaa !76
  %167 = call ptr @Perl_hv_common_key_len(ptr noundef %161, ptr noundef nonnull %164, i32 noundef %166, i32 noundef 68, ptr noundef null, i32 noundef 0) #11
  br label %168

168:                                              ; preds = %158, %146, %111
  %169 = load ptr, ptr %0, align 8, !tbaa !46
  %170 = getelementptr inbounds %struct.PerlIOVia, ptr %6, i64 0, i32 5
  %171 = load ptr, ptr %170, align 8, !tbaa !73
  %172 = getelementptr inbounds %struct.io, ptr %171, i64 0, i32 3
  store ptr %169, ptr %172, align 8, !tbaa !43
  %173 = load ptr, ptr %0, align 8, !tbaa !46
  %174 = load ptr, ptr %170, align 8, !tbaa !73
  %175 = load ptr, ptr %174, align 8, !tbaa !78
  %176 = getelementptr inbounds %struct.xpvio, ptr %175, i64 0, i32 5
  store ptr %173, ptr %176, align 8, !tbaa !80
  %177 = load ptr, ptr @PL_stack_max, align 8, !tbaa !46
  %178 = ptrtoint ptr %177 to i64
  %179 = ptrtoint ptr %81 to i64
  %180 = sub i64 %178, %179
  %181 = icmp slt i64 %180, 8
  br i1 %181, label %182, label %184

182:                                              ; preds = %168
  %183 = call ptr @Perl_stack_grow(ptr noundef nonnull %81, ptr noundef nonnull %81, i64 noundef 1) #11
  br label %184

184:                                              ; preds = %168, %182
  %185 = phi ptr [ %183, %182 ], [ %81, %168 ]
  %186 = load ptr, ptr %112, align 8, !tbaa !64
  %187 = getelementptr inbounds ptr, ptr %185, i64 1
  store ptr %186, ptr %187, align 8, !tbaa !46
  br label %189

188:                                              ; preds = %107
  call void (ptr, ...) @PerlIO_debug(ptr noundef nonnull @.str) #11
  br label %189

189:                                              ; preds = %188, %184
  %190 = phi ptr [ %187, %184 ], [ %81, %188 ]
  store ptr %190, ptr @PL_stack_sp, align 8, !tbaa !46
  %191 = call i32 @Perl_call_sv(ptr noundef %12, i32 noundef %3) #11
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %197, label %193

193:                                              ; preds = %189
  %194 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !46
  %195 = getelementptr inbounds ptr, ptr %194, i64 -1
  %196 = load ptr, ptr %194, align 8, !tbaa !46
  store ptr %195, ptr @PL_stack_sp, align 8, !tbaa !46
  br label %197

197:                                              ; preds = %189, %193
  %198 = phi ptr [ %196, %193 ], [ @PL_sv_undef, %189 ]
  call void @Perl_pop_scope() #11
  %199 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !46
  %200 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !46
  %201 = getelementptr inbounds %struct.stackinfo, ptr %200, i64 0, i32 2
  %202 = load ptr, ptr %201, align 8, !tbaa !49
  %203 = icmp eq ptr %202, null
  br i1 %203, label %204, label %205

204:                                              ; preds = %197
  call void @Perl_croak_popstack() #11
  br label %205

205:                                              ; preds = %197, %204
  %206 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %207 = ptrtoint ptr %199 to i64
  %208 = ptrtoint ptr %206 to i64
  %209 = sub i64 %207, %208
  %210 = ashr exact i64 %209, 3
  %211 = load ptr, ptr @PL_curstack, align 8, !tbaa !46
  %212 = load ptr, ptr %211, align 8, !tbaa !53
  %213 = getelementptr inbounds %struct.xpvav, ptr %212, i64 0, i32 2
  store i64 %210, ptr %213, align 8, !tbaa !55
  %214 = load ptr, ptr %202, align 8, !tbaa !52
  %215 = getelementptr inbounds %struct.av, ptr %214, i64 0, i32 3
  %216 = load ptr, ptr %215, align 8, !tbaa !43
  store ptr %216, ptr @PL_stack_base, align 8, !tbaa !46
  %217 = load ptr, ptr %202, align 8, !tbaa !52
  %218 = load ptr, ptr %217, align 8, !tbaa !53
  %219 = getelementptr inbounds %struct.xpvav, ptr %218, i64 0, i32 3
  %220 = load i64, ptr %219, align 8, !tbaa !57
  %221 = getelementptr inbounds ptr, ptr %216, i64 %220
  store ptr %221, ptr @PL_stack_max, align 8, !tbaa !46
  %222 = load ptr, ptr %202, align 8, !tbaa !52
  %223 = load ptr, ptr %222, align 8, !tbaa !53
  %224 = getelementptr inbounds %struct.xpvav, ptr %223, i64 0, i32 2
  %225 = load i64, ptr %224, align 8, !tbaa !55
  %226 = getelementptr inbounds ptr, ptr %216, i64 %225
  store ptr %226, ptr @PL_stack_sp, align 8, !tbaa !46
  %227 = load ptr, ptr %202, align 8, !tbaa !52
  store ptr %227, ptr @PL_curstack, align 8, !tbaa !46
  store ptr %202, ptr @PL_curstackinfo, align 8, !tbaa !46
  br label %228

228:                                              ; preds = %143, %205
  %229 = phi ptr [ %198, %205 ], [ null, %143 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  br label %230

230:                                              ; preds = %228, %11
  %231 = phi ptr [ null, %11 ], [ %229, %228 ]
  ret ptr %231
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #4

declare ptr @Perl_new_stackinfo(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_push_scope() local_unnamed_addr #2

declare ptr @Perl_markstack_grow() local_unnamed_addr #2

declare ptr @Perl_stack_grow(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #4

declare ptr @Perl_newGVgen_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #2

declare ptr @Perl_newRV(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_hv_common_key_len(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @PerlIO_debug(ptr noundef, ...) local_unnamed_addr #2

declare i32 @Perl_call_sv(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_pop_scope() local_unnamed_addr #2

declare void @Perl_croak_popstack() local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local i64 @PerlIOVia_pushed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !prof !34 {
  %5 = alloca i64, align 8
  %6 = alloca [8 x i8], align 1
  %7 = tail call i64 @PerlIOBase_pushed(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef %3) #11
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %225

9:                                                ; preds = %4
  %10 = load ptr, ptr %0, align 8, !tbaa !46
  %11 = icmp eq ptr %2, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 8) #11
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 8, ptr noundef nonnull @.str.1) #11
  br label %15

15:                                               ; preds = %14, %12
  %16 = tail call ptr @__errno_location() #12
  store i32 22, ptr %16, align 4, !tbaa !58
  br label %225

17:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store i64 0, ptr %5, align 8, !tbaa !82
  %18 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !83
  %20 = and i32 %19, 2098176
  %21 = icmp eq i32 %20, 1024
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load ptr, ptr %2, align 8, !tbaa !85
  %24 = getelementptr inbounds %struct.xpv, ptr %23, i64 0, i32 2
  %25 = load i64, ptr %24, align 8, !tbaa !86
  store i64 %25, ptr %5, align 8, !tbaa !82
  %26 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !43
  br label %30

28:                                               ; preds = %17
  %29 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %2, ptr noundef nonnull %5, i32 noundef 2) #11
  br label %30

30:                                               ; preds = %28, %22
  %31 = phi ptr [ %27, %22 ], [ %29, %28 ]
  %32 = call ptr (ptr, ...) @Perl_form(ptr noundef nonnull @.str.2, ptr noundef %31) #11
  %33 = load i64, ptr %5, align 8, !tbaa !82
  %34 = add i64 %33, 13
  %35 = call ptr @Perl_newSVpvn(ptr noundef %32, i64 noundef %34) #11
  %36 = getelementptr inbounds %struct.PerlIOVia, ptr %10, i64 0, i32 2
  store ptr %35, ptr %36, align 8, !tbaa !59
  %37 = getelementptr inbounds %struct.sv, ptr %35, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !43
  %39 = load i64, ptr %5, align 8, !tbaa !82
  %40 = trunc i64 %39 to i32
  %41 = add i32 %40, 13
  %42 = call ptr @Perl_gv_stashpvn(ptr noundef %38, i32 noundef %41, i32 noundef 0) #11
  %43 = getelementptr inbounds %struct.PerlIOVia, ptr %10, i64 0, i32 1
  store ptr %42, ptr %43, align 8, !tbaa !35
  %44 = icmp eq ptr %42, null
  br i1 %44, label %45, label %62

45:                                               ; preds = %30
  %46 = load ptr, ptr %36, align 8, !tbaa !59
  %47 = icmp eq ptr %46, null
  br i1 %47, label %55, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.sv, ptr %46, i64 0, i32 1
  %50 = load i32, ptr %49, align 8, !tbaa !88
  %51 = icmp ugt i32 %50, 1
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = add i32 %50, -1
  store i32 %53, ptr %49, align 8, !tbaa !88
  br label %55

54:                                               ; preds = %48
  call void @Perl_sv_free2(ptr noundef nonnull %46, i32 noundef %50) #11
  br label %55

55:                                               ; preds = %45, %52, %54
  %56 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 1
  %57 = load i32, ptr %56, align 8, !tbaa !88
  %58 = add i32 %57, 1
  store i32 %58, ptr %56, align 8, !tbaa !88
  store ptr %2, ptr %36, align 8, !tbaa !59
  %59 = load i64, ptr %5, align 8, !tbaa !82
  %60 = trunc i64 %59 to i32
  %61 = call ptr @Perl_gv_stashpvn(ptr noundef %31, i32 noundef %60, i32 noundef 0) #11
  store ptr %61, ptr %43, align 8, !tbaa !35
  br label %62

62:                                               ; preds = %55, %30
  %63 = load ptr, ptr %43, align 8, !tbaa !35
  %64 = icmp eq ptr %63, null
  br i1 %64, label %210, label %65

65:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  %66 = icmp eq ptr %1, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %65
  %68 = call ptr @PerlIO_modestr(ptr noundef nonnull %0, ptr noundef nonnull %6) #11
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi ptr [ %1, %65 ], [ %68, %67 ]
  %71 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %70) #10
  %72 = call ptr @Perl_newSVpvn_flags(ptr noundef %70, i64 noundef %71, i32 noundef 524288) #11
  %73 = getelementptr inbounds %struct.PerlIOVia, ptr %10, i64 0, i32 7
  %74 = call ptr (ptr, ptr, ptr, i32, ...) @PerlIOVia_method(ptr noundef nonnull %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %73, i32 noundef 2, ptr noundef %72, ptr noundef null)
  %75 = icmp eq ptr %74, null
  br i1 %75, label %207, label %76

76:                                               ; preds = %69
  %77 = call i32 @Perl_sv_isobject(ptr noundef nonnull %74) #11
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %93, label %79

79:                                               ; preds = %76
  %80 = load ptr, ptr %36, align 8, !tbaa !59
  %81 = icmp eq ptr %80, null
  br i1 %81, label %89, label %82

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.sv, ptr %80, i64 0, i32 1
  %84 = load i32, ptr %83, align 8, !tbaa !88
  %85 = icmp ugt i32 %84, 1
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = add i32 %84, -1
  store i32 %87, ptr %83, align 8, !tbaa !88
  br label %89

88:                                               ; preds = %82
  call void @Perl_sv_free2(ptr noundef nonnull %80, i32 noundef %84) #11
  br label %89

89:                                               ; preds = %79, %86, %88
  %90 = getelementptr inbounds %struct.sv, ptr %74, i64 0, i32 1
  %91 = load i32, ptr %90, align 8, !tbaa !88
  %92 = add i32 %91, 1
  store i32 %92, ptr %90, align 8, !tbaa !88
  store ptr %74, ptr %36, align 8, !tbaa !59
  br label %117

93:                                               ; preds = %76
  %94 = getelementptr inbounds %struct.sv, ptr %74, i64 0, i32 2
  %95 = load i32, ptr %94, align 4, !tbaa !83
  %96 = and i32 %95, 2097408
  %97 = icmp eq i32 %96, 256
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load ptr, ptr %74, align 8, !tbaa !85
  %100 = getelementptr inbounds %struct.xpviv, ptr %99, i64 0, i32 4
  %101 = load i64, ptr %100, align 8, !tbaa !43
  br label %104

102:                                              ; preds = %93
  %103 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %74, i32 noundef 2) #11
  br label %104

104:                                              ; preds = %102, %98
  %105 = phi i64 [ %101, %98 ], [ %103, %102 ]
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %117, label %107

107:                                              ; preds = %104
  %108 = load i32, ptr %94, align 4, !tbaa !83
  %109 = and i32 %108, 2097408
  %110 = icmp eq i32 %109, 256
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  %112 = load ptr, ptr %74, align 8, !tbaa !85
  %113 = getelementptr inbounds %struct.xpviv, ptr %112, i64 0, i32 4
  %114 = load i64, ptr %113, align 8, !tbaa !43
  br label %207

115:                                              ; preds = %107
  %116 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %74, i32 noundef 2) #11
  br label %207

117:                                              ; preds = %89, %104
  %118 = load ptr, ptr %0, align 8, !tbaa !46
  %119 = load ptr, ptr %118, align 8, !tbaa !63
  %120 = icmp eq ptr %119, null
  br i1 %120, label %127, label %121

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct._PerlIO, ptr %119, i64 0, i32 2
  %123 = load i32, ptr %122, align 8, !tbaa !89
  %124 = and i32 %123, 32768
  %125 = icmp eq i32 %124, 0
  %126 = select i1 %125, ptr @PL_sv_no, ptr @PL_sv_yes
  br label %127

127:                                              ; preds = %121, %117
  %128 = phi ptr [ @PL_sv_no, %117 ], [ %126, %121 ]
  %129 = getelementptr inbounds %struct.PerlIOVia, ptr %10, i64 0, i32 27
  %130 = call ptr (ptr, ptr, ptr, i32, ...) @PerlIOVia_method(ptr noundef nonnull %0, ptr noundef nonnull @.str.4, ptr noundef nonnull %129, i32 noundef 2, ptr noundef nonnull %128, ptr noundef null)
  %131 = icmp eq ptr %130, null
  br i1 %131, label %191, label %132

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.sv, ptr %130, i64 0, i32 2
  %134 = load i32, ptr %133, align 4, !tbaa !83
  %135 = and i32 %134, 2097152
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %139, label %137

137:                                              ; preds = %132
  %138 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %130, i32 noundef 2) #11
  br i1 %138, label %186, label %191

139:                                              ; preds = %132
  %140 = and i32 %134, 65280
  %141 = icmp ne i32 %140, 0
  %142 = and i32 %134, 255
  %143 = icmp eq i32 %142, 8
  %144 = or i1 %141, %143
  %145 = and i32 %134, 16777471
  %146 = icmp eq i32 %145, 16777226
  %147 = or i1 %146, %144
  br i1 %147, label %148, label %191

148:                                              ; preds = %139
  %149 = and i32 %134, 1024
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %165, label %151

151:                                              ; preds = %148
  %152 = load ptr, ptr %130, align 8, !tbaa !85
  %153 = icmp eq ptr %152, null
  br i1 %153, label %191, label %154

154:                                              ; preds = %151
  %155 = getelementptr inbounds %struct.xpv, ptr %152, i64 0, i32 2
  %156 = load i64, ptr %155, align 8, !tbaa !86
  %157 = icmp ugt i64 %156, 1
  br i1 %157, label %186, label %158

158:                                              ; preds = %154
  %159 = icmp eq i64 %156, 0
  br i1 %159, label %191, label %160

160:                                              ; preds = %158
  %161 = getelementptr inbounds %struct.sv, ptr %130, i64 0, i32 3
  %162 = load ptr, ptr %161, align 8, !tbaa !43
  %163 = load i8, ptr %162, align 1, !tbaa !43
  %164 = icmp eq i8 %163, 48
  br i1 %164, label %191, label %186

165:                                              ; preds = %148
  %166 = and i32 %134, 768
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %184, label %168

168:                                              ; preds = %165
  %169 = and i32 %134, 256
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %176, label %171

171:                                              ; preds = %168
  %172 = load ptr, ptr %130, align 8, !tbaa !85
  %173 = getelementptr inbounds %struct.xpviv, ptr %172, i64 0, i32 4
  %174 = load i64, ptr %173, align 8, !tbaa !43
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %176, label %186

176:                                              ; preds = %171, %168
  %177 = and i32 %134, 512
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %191, label %179

179:                                              ; preds = %176
  %180 = load ptr, ptr %130, align 8, !tbaa !85
  %181 = getelementptr inbounds %struct.xpvnv, ptr %180, i64 0, i32 5
  %182 = load double, ptr %181, align 8, !tbaa !43
  %183 = fcmp une double %182, 0.000000e+00
  br i1 %183, label %186, label %191

184:                                              ; preds = %165
  %185 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %130, i32 noundef 0) #11
  br i1 %185, label %186, label %191

186:                                              ; preds = %160, %184, %179, %171, %154, %137
  %187 = load ptr, ptr %0, align 8, !tbaa !46
  %188 = getelementptr inbounds %struct._PerlIO, ptr %187, i64 0, i32 2
  %189 = load i32, ptr %188, align 8, !tbaa !89
  %190 = or i32 %189, 32768
  store i32 %190, ptr %188, align 8, !tbaa !89
  br label %196

191:                                              ; preds = %184, %179, %139, %176, %160, %158, %151, %137, %127
  %192 = load ptr, ptr %0, align 8, !tbaa !46
  %193 = getelementptr inbounds %struct._PerlIO, ptr %192, i64 0, i32 2
  %194 = load i32, ptr %193, align 8, !tbaa !89
  %195 = and i32 %194, -32769
  store i32 %195, ptr %193, align 8, !tbaa !89
  br label %196

196:                                              ; preds = %191, %186
  %197 = getelementptr inbounds %struct.PerlIOVia, ptr %10, i64 0, i32 16
  %198 = call ptr @PerlIOVia_fetchmethod(ptr noundef %10, ptr noundef nonnull @.str.5, ptr noundef nonnull %197)
  %199 = icmp eq ptr %198, inttoptr (i64 -1 to ptr)
  %200 = load ptr, ptr %0, align 8, !tbaa !46
  %201 = getelementptr inbounds %struct._PerlIO, ptr %200, i64 0, i32 2
  %202 = load i32, ptr %201, align 8, !tbaa !89
  br i1 %199, label %203, label %205

203:                                              ; preds = %196
  %204 = and i32 %202, -4194305
  store i32 %204, ptr %201, align 8, !tbaa !89
  br label %207

205:                                              ; preds = %196
  %206 = or i32 %202, 4194304
  store i32 %206, ptr %201, align 8, !tbaa !89
  br label %207

207:                                              ; preds = %203, %205, %69, %111, %115
  %208 = phi i64 [ %114, %111 ], [ %116, %115 ], [ undef, %69 ], [ undef, %205 ], [ undef, %203 ]
  %209 = phi i32 [ 1, %111 ], [ 1, %115 ], [ 2, %69 ], [ 0, %205 ], [ 0, %203 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  switch i32 %209, label %219 [
    i32 0, label %218
    i32 2, label %215
  ]

210:                                              ; preds = %62
  %211 = call zeroext i1 @Perl_ckwarn(i32 noundef 8) #11
  br i1 %211, label %212, label %215

212:                                              ; preds = %210
  %213 = load i64, ptr %5, align 8, !tbaa !82
  %214 = trunc i64 %213 to i32
  call void (i32, ptr, ...) @Perl_warner(i32 noundef 8, ptr noundef nonnull @.str.6, i32 noundef %214, ptr noundef %31) #11
  br label %215

215:                                              ; preds = %210, %212, %207
  %216 = phi i64 [ %208, %207 ], [ undef, %212 ], [ undef, %210 ]
  %217 = tail call ptr @__errno_location() #12
  store i32 38, ptr %217, align 4, !tbaa !58
  br label %219

218:                                              ; preds = %207
  br label %219

219:                                              ; preds = %215, %218, %207
  %220 = phi i64 [ 0, %207 ], [ -1, %215 ], [ 0, %218 ]
  %221 = phi i64 [ %208, %207 ], [ %216, %215 ], [ %208, %218 ]
  %222 = phi i32 [ %209, %207 ], [ 0, %215 ], [ 0, %218 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  %223 = icmp eq i32 %222, 0
  %224 = select i1 %223, i64 %220, i64 %221
  br label %225

225:                                              ; preds = %15, %219, %4
  %226 = phi i64 [ %7, %4 ], [ -1, %15 ], [ %224, %219 ]
  ret i64 %226
}

declare i64 @PerlIOBase_pushed(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @Perl_ckwarn(i32 noundef) local_unnamed_addr #2

declare void @Perl_warner(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #5

declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_newSVpvn(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_form(ptr noundef, ...) local_unnamed_addr #2

declare ptr @Perl_gv_stashpvn(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @PerlIO_modestr(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newSVpvn_flags(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Perl_sv_isobject(ptr noundef) local_unnamed_addr #2

declare i64 @Perl_sv_2iv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @Perl_sv_2bool_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local ptr @PerlIOVia_open(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9) #0 !prof !34 {
  %11 = icmp eq ptr %7, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %10
  %13 = tail call ptr @PerlIO_allocate() #11
  %14 = tail call ptr @PerlIO_arg_fetch(ptr noundef %1, i64 noundef %2) #11
  %15 = tail call ptr @PerlIO_push(ptr noundef %13, ptr noundef %0, ptr noundef %3, ptr noundef %14) #11
  br label %20

16:                                               ; preds = %10
  %17 = tail call ptr @PerlIO_arg_fetch(ptr noundef %1, i64 noundef %2) #11
  %18 = tail call ptr @PerlIO_push(ptr noundef nonnull %7, ptr noundef %0, ptr noundef %3, ptr noundef %17) #11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %162, label %20

20:                                               ; preds = %16, %12
  %21 = phi ptr [ %7, %16 ], [ %15, %12 ]
  %22 = icmp eq ptr %21, null
  br i1 %22, label %162, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %21, align 8, !tbaa !46
  %25 = icmp sgt i32 %4, -1
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = zext nneg i32 %4 to i64
  %28 = tail call ptr @Perl_newSViv(i64 noundef %27) #11
  %29 = tail call ptr @Perl_sv_2mortal(ptr noundef %28) #11
  %30 = getelementptr inbounds %struct.PerlIOVia, ptr %24, i64 0, i32 10
  %31 = tail call ptr (ptr, ptr, ptr, i32, ...) @PerlIOVia_method(ptr noundef nonnull %21, ptr noundef nonnull @.str.7, ptr noundef nonnull %30, i32 noundef 2, ptr noundef %29, ptr noundef null)
  br label %51

32:                                               ; preds = %23
  %33 = icmp sgt i32 %8, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %32
  %35 = load i8, ptr %3, align 1, !tbaa !43
  %36 = icmp eq i8 %35, 35
  br i1 %36, label %37, label %47

37:                                               ; preds = %34
  %38 = sext i32 %5 to i64
  %39 = tail call ptr @Perl_newSViv(i64 noundef %38) #11
  %40 = tail call ptr @Perl_sv_2mortal(ptr noundef %39) #11
  %41 = sext i32 %6 to i64
  %42 = tail call ptr @Perl_newSViv(i64 noundef %41) #11
  %43 = tail call ptr @Perl_sv_2mortal(ptr noundef %42) #11
  %44 = getelementptr inbounds %struct.PerlIOVia, ptr %24, i64 0, i32 11
  %45 = load ptr, ptr %9, align 8, !tbaa !46
  %46 = tail call ptr (ptr, ptr, ptr, i32, ...) @PerlIOVia_method(ptr noundef nonnull %21, ptr noundef nonnull @.str.8, ptr noundef nonnull %44, i32 noundef 2, ptr noundef %45, ptr noundef %40, ptr noundef %43, ptr noundef null)
  br label %51

47:                                               ; preds = %34
  %48 = getelementptr inbounds %struct.PerlIOVia, ptr %24, i64 0, i32 9
  %49 = load ptr, ptr %9, align 8, !tbaa !46
  %50 = tail call ptr (ptr, ptr, ptr, i32, ...) @PerlIOVia_method(ptr noundef nonnull %21, ptr noundef nonnull @.str.9, ptr noundef nonnull %48, i32 noundef 2, ptr noundef %49, ptr noundef null)
  br label %51

51:                                               ; preds = %32, %47, %37, %26
  %52 = phi ptr [ %31, %26 ], [ %46, %37 ], [ %50, %47 ], [ null, %32 ]
  %53 = icmp eq ptr %52, null
  br i1 %53, label %116, label %54

54:                                               ; preds = %51
  %55 = tail call i32 @Perl_sv_isobject(ptr noundef nonnull %52) #11
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.sv, ptr %52, i64 0, i32 1
  %59 = load i32, ptr %58, align 8, !tbaa !88
  %60 = add i32 %59, 1
  store i32 %60, ptr %58, align 8, !tbaa !88
  %61 = getelementptr inbounds %struct.PerlIOVia, ptr %24, i64 0, i32 2
  store ptr %52, ptr %61, align 8, !tbaa !59
  br label %161

62:                                               ; preds = %54
  %63 = getelementptr inbounds %struct.sv, ptr %52, i64 0, i32 2
  %64 = load i32, ptr %63, align 4, !tbaa !83
  %65 = and i32 %64, 2097152
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %62
  %68 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %52, i32 noundef 2) #11
  br i1 %68, label %161, label %162

69:                                               ; preds = %62
  %70 = and i32 %64, 65280
  %71 = icmp ne i32 %70, 0
  %72 = and i32 %64, 255
  %73 = icmp eq i32 %72, 8
  %74 = or i1 %71, %73
  %75 = and i32 %64, 16777471
  %76 = icmp eq i32 %75, 16777226
  %77 = or i1 %76, %74
  br i1 %77, label %78, label %162

78:                                               ; preds = %69
  %79 = and i32 %64, 1024
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %95, label %81

81:                                               ; preds = %78
  %82 = load ptr, ptr %52, align 8, !tbaa !85
  %83 = icmp eq ptr %82, null
  br i1 %83, label %162, label %84

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.xpv, ptr %82, i64 0, i32 2
  %86 = load i64, ptr %85, align 8, !tbaa !86
  %87 = icmp ugt i64 %86, 1
  br i1 %87, label %161, label %88

88:                                               ; preds = %84
  %89 = icmp eq i64 %86, 0
  br i1 %89, label %162, label %90

90:                                               ; preds = %88
  %91 = getelementptr inbounds %struct.sv, ptr %52, i64 0, i32 3
  %92 = load ptr, ptr %91, align 8, !tbaa !43
  %93 = load i8, ptr %92, align 1, !tbaa !43
  %94 = icmp eq i8 %93, 48
  br i1 %94, label %162, label %161

95:                                               ; preds = %78
  %96 = and i32 %64, 768
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %114, label %98

98:                                               ; preds = %95
  %99 = and i32 %64, 256
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %98
  %102 = load ptr, ptr %52, align 8, !tbaa !85
  %103 = getelementptr inbounds %struct.xpviv, ptr %102, i64 0, i32 4
  %104 = load i64, ptr %103, align 8, !tbaa !43
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %161

106:                                              ; preds = %101, %98
  %107 = and i32 %64, 512
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %162, label %109

109:                                              ; preds = %106
  %110 = load ptr, ptr %52, align 8, !tbaa !85
  %111 = getelementptr inbounds %struct.xpvnv, ptr %110, i64 0, i32 5
  %112 = load double, ptr %111, align 8, !tbaa !43
  %113 = fcmp une double %112, 0.000000e+00
  br i1 %113, label %161, label %162

114:                                              ; preds = %95
  %115 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %52, i32 noundef 0) #11
  br i1 %115, label %161, label %162

116:                                              ; preds = %51
  %117 = add nsw i64 %2, -1
  br label %118

118:                                              ; preds = %131, %116
  %119 = phi ptr [ null, %116 ], [ %133, %131 ]
  %120 = phi i64 [ %117, %116 ], [ %134, %131 ]
  %121 = icmp sgt i64 %120, -1
  br i1 %121, label %122, label %135

122:                                              ; preds = %118
  %123 = tail call ptr @PerlIO_layer_fetch(ptr noundef %1, i64 noundef %120, ptr noundef null) #11
  %124 = icmp eq ptr %123, null
  br i1 %124, label %129, label %125

125:                                              ; preds = %122
  %126 = getelementptr inbounds %struct._PerlIO_funcs, ptr %123, i64 0, i32 6
  %127 = load ptr, ptr %126, align 8, !tbaa !90
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %131

129:                                              ; preds = %125, %122
  %130 = add nsw i64 %120, -1
  br label %131

131:                                              ; preds = %125, %129
  %132 = phi i1 [ true, %129 ], [ false, %125 ]
  %133 = phi ptr [ %119, %129 ], [ %123, %125 ]
  %134 = phi i64 [ %130, %129 ], [ %120, %125 ]
  br i1 %132, label %118, label %135

135:                                              ; preds = %131, %118
  %136 = phi ptr [ %119, %118 ], [ %133, %131 ]
  %137 = phi i64 [ %120, %118 ], [ %134, %131 ]
  %138 = icmp eq ptr %136, null
  br i1 %138, label %159, label %139

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct._PerlIO_funcs, ptr %136, i64 0, i32 6
  %141 = load ptr, ptr %140, align 8, !tbaa !90
  %142 = load ptr, ptr %21, align 8, !tbaa !46
  %143 = tail call ptr %141(ptr noundef nonnull %136, ptr noundef %1, i64 noundef %137, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %142, i32 noundef %8, ptr noundef %9) #11
  %144 = icmp eq ptr %143, null
  %145 = getelementptr inbounds %struct._PerlIO_funcs, ptr %136, i64 0, i32 1
  %146 = load ptr, ptr %145, align 8, !tbaa !92
  %147 = load ptr, ptr %21, align 8, !tbaa !46
  %148 = load ptr, ptr %147, align 8, !tbaa !63
  br i1 %144, label %158, label %149

149:                                              ; preds = %139
  tail call void (ptr, ...) @PerlIO_debug(ptr noundef nonnull @.str.10, ptr noundef %146, ptr noundef nonnull %147, ptr noundef %148) #11
  %150 = add nsw i64 %137, 1
  %151 = icmp slt i64 %150, %2
  br i1 %151, label %152, label %162

152:                                              ; preds = %149
  %153 = load ptr, ptr %21, align 8, !tbaa !46
  %154 = tail call i32 @PerlIO_apply_layera(ptr noundef %153, ptr noundef %3, ptr noundef %1, i64 noundef %150, i64 noundef %2) #11
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %162, label %156

156:                                              ; preds = %152
  %157 = tail call i32 @Perl_PerlIO_close(ptr noundef nonnull %21) #11
  br label %162

158:                                              ; preds = %139
  tail call void (ptr, ...) @PerlIO_debug(ptr noundef nonnull @.str.11, ptr noundef %146, ptr noundef nonnull %147, ptr noundef %148) #11
  br label %160

159:                                              ; preds = %135
  tail call void (ptr, ...) @PerlIO_debug(ptr noundef nonnull @.str.12) #11
  br label %160

160:                                              ; preds = %159, %158
  tail call void @PerlIO_pop(ptr noundef nonnull %21) #11
  br label %162

161:                                              ; preds = %90, %57, %114, %109, %101, %84, %67
  br label %162

162:                                              ; preds = %161, %69, %106, %90, %88, %81, %67, %149, %156, %152, %160, %109, %114, %16, %20
  %163 = phi ptr [ null, %20 ], [ null, %16 ], [ %21, %161 ], [ null, %69 ], [ null, %106 ], [ null, %90 ], [ null, %88 ], [ null, %81 ], [ null, %67 ], [ null, %160 ], [ null, %156 ], [ %21, %152 ], [ %21, %149 ], [ null, %109 ], [ null, %114 ]
  ret ptr %163
}

declare ptr @PerlIO_push(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PerlIO_allocate() local_unnamed_addr #2

declare ptr @PerlIO_arg_fetch(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newSViv(i64 noundef) local_unnamed_addr #2

declare ptr @PerlIO_layer_fetch(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PerlIO_apply_layera(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @Perl_PerlIO_close(ptr noundef) local_unnamed_addr #2

declare void @PerlIO_pop(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local noundef i64 @PerlIOVia_popped(ptr nocapture noundef readonly %0) #0 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct.PerlIOVia, ptr %2, i64 0, i32 8
  %4 = tail call ptr (ptr, ptr, ptr, i32, ...) @PerlIOVia_method(ptr noundef nonnull %0, ptr noundef nonnull @.str.13, ptr noundef nonnull %3, i32 noundef 1, ptr noundef null)
  %5 = getelementptr inbounds %struct.PerlIOVia, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !93
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !88
  %11 = icmp ugt i32 %10, 1
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = add i32 %10, -1
  store i32 %13, ptr %9, align 8, !tbaa !88
  br label %15

14:                                               ; preds = %8
  tail call void @Perl_sv_free2(ptr noundef nonnull %6, i32 noundef %10) #11
  br label %15

15:                                               ; preds = %12, %14
  store ptr null, ptr %5, align 8, !tbaa !93
  br label %16

16:                                               ; preds = %15, %1
  %17 = getelementptr inbounds %struct.PerlIOVia, ptr %2, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !73
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.io, ptr %18, i64 0, i32 3
  store ptr null, ptr %21, align 8, !tbaa !43
  %22 = load ptr, ptr %17, align 8, !tbaa !73
  %23 = load ptr, ptr %22, align 8, !tbaa !78
  %24 = getelementptr inbounds %struct.xpvio, ptr %23, i64 0, i32 5
  store ptr null, ptr %24, align 8, !tbaa !80
  br label %25

25:                                               ; preds = %20, %16
  %26 = getelementptr inbounds %struct.PerlIOVia, ptr %2, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !64
  %28 = icmp eq ptr %27, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.sv, ptr %27, i64 0, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !88
  %32 = icmp ugt i32 %31, 1
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = add i32 %31, -1
  store i32 %34, ptr %30, align 8, !tbaa !88
  br label %36

35:                                               ; preds = %29
  tail call void @Perl_sv_free2(ptr noundef nonnull %27, i32 noundef %31) #11
  br label %36

36:                                               ; preds = %33, %35
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  br label %37

37:                                               ; preds = %36, %25
  %38 = getelementptr inbounds %struct.PerlIOVia, ptr %2, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !59
  %40 = icmp eq ptr %39, null
  br i1 %40, label %49, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.sv, ptr %39, i64 0, i32 1
  %43 = load i32, ptr %42, align 8, !tbaa !88
  %44 = icmp ugt i32 %43, 1
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = add i32 %43, -1
  store i32 %46, ptr %42, align 8, !tbaa !88
  br label %48

47:                                               ; preds = %41
  tail call void @Perl_sv_free2(ptr noundef nonnull %39, i32 noundef %43) #11
  br label %48

48:                                               ; preds = %45, %47
  store ptr null, ptr %38, align 8, !tbaa !59
  br label %49

49:                                               ; preds = %48, %37
  ret i64 0
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @PerlIOVia_close(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  %3 = tail call i64 @PerlIOBase_close(ptr noundef nonnull %0) #11
  %4 = getelementptr inbounds %struct.PerlIOVia, ptr %2, i64 0, i32 17
  %5 = tail call ptr (ptr, ptr, ptr, i32, ...) @PerlIOVia_method(ptr noundef nonnull %0, ptr noundef nonnull @.str.14, ptr noundef nonnull %4, i32 noundef 2, ptr noundef null)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %31, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.sv, ptr %5, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !83
  %10 = and i32 %9, 2097408
  %11 = icmp eq i32 %10, 256
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = load ptr, ptr %5, align 8, !tbaa !85
  %14 = getelementptr inbounds %struct.xpviv, ptr %13, i64 0, i32 4
  %15 = load i64, ptr %14, align 8, !tbaa !43
  br label %18

16:                                               ; preds = %7
  %17 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %5, i32 noundef 2) #11
  br label %18

18:                                               ; preds = %16, %12
  %19 = phi i64 [ %15, %12 ], [ %17, %16 ]
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %18
  %22 = load i32, ptr %8, align 4, !tbaa !83
  %23 = and i32 %22, 2097408
  %24 = icmp eq i32 %23, 256
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load ptr, ptr %5, align 8, !tbaa !85
  %27 = getelementptr inbounds %struct.xpviv, ptr %26, i64 0, i32 4
  %28 = load i64, ptr %27, align 8, !tbaa !43
  br label %31

29:                                               ; preds = %21
  %30 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %5, i32 noundef 2) #11
  br label %31

31:                                               ; preds = %25, %29, %18, %1
  %32 = phi i64 [ %3, %18 ], [ %3, %1 ], [ %28, %25 ], [ %30, %29 ]
  %33 = load ptr, ptr %0, align 8, !tbaa !46
  %34 = getelementptr inbounds %struct._PerlIO, ptr %33, i64 0, i32 2
  %35 = load i32, ptr %34, align 8, !tbaa !89
  %36 = and i32 %35, -393217
  store i32 %36, ptr %34, align 8, !tbaa !89
  ret i64 %32
}

declare i64 @PerlIOBase_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local i64 @PerlIOVia_fileno(ptr nocapture noundef readonly %0) #0 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct.PerlIOVia, ptr %2, i64 0, i32 13
  %4 = tail call ptr (ptr, ptr, ptr, i32, ...) @PerlIOVia_method(ptr noundef nonnull %0, ptr noundef nonnull @.str.15, ptr noundef nonnull %3, i32 noundef 2, ptr noundef null)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !83
  %9 = and i32 %8, 2097408
  %10 = icmp eq i32 %9, 256
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = load ptr, ptr %4, align 8, !tbaa !85
  %13 = getelementptr inbounds %struct.xpviv, ptr %12, i64 0, i32 4
  %14 = load i64, ptr %13, align 8, !tbaa !43
  br label %21

15:                                               ; preds = %6
  %16 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %4, i32 noundef 2) #11
  br label %21

17:                                               ; preds = %1
  %18 = load ptr, ptr %0, align 8, !tbaa !46
  %19 = tail call i32 @Perl_PerlIO_fileno(ptr noundef %18) #11
  %20 = sext i32 %19 to i64
  br label %21

21:                                               ; preds = %11, %15, %17
  %22 = phi i64 [ %20, %17 ], [ %14, %11 ], [ %16, %15 ]
  ret i64 %22
}

declare i32 @Perl_PerlIO_fileno(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local i64 @PerlIOVia_binmode(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct.PerlIOVia, ptr %2, i64 0, i32 26
  %4 = tail call ptr (ptr, ptr, ptr, i32, ...) @PerlIOVia_method(ptr noundef nonnull %0, ptr noundef nonnull @.str.16, ptr noundef nonnull %3, i32 noundef 2, ptr noundef null)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !83
  %9 = and i32 %8, 65280
  %10 = icmp ne i32 %9, 0
  %11 = and i32 %8, 255
  %12 = icmp eq i32 %11, 8
  %13 = or i1 %10, %12
  %14 = and i32 %8, 16777471
  %15 = icmp eq i32 %14, 16777226
  %16 = or i1 %15, %13
  br i1 %16, label %18, label %17

17:                                               ; preds = %6, %1
  tail call void @PerlIO_pop(ptr noundef nonnull %0) #11
  br label %27

18:                                               ; preds = %6
  %19 = and i32 %8, 2097408
  %20 = icmp eq i32 %19, 256
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load ptr, ptr %4, align 8, !tbaa !85
  %23 = getelementptr inbounds %struct.xpviv, ptr %22, i64 0, i32 4
  %24 = load i64, ptr %23, align 8, !tbaa !43
  br label %27

25:                                               ; preds = %18
  %26 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %4, i32 noundef 2) #11
  br label %27

27:                                               ; preds = %21, %25, %17
  %28 = phi i64 [ 0, %17 ], [ %24, %21 ], [ %26, %25 ]
  ret i64 %28
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @PerlIOVia_seek(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2) #0 !prof !34 {
  %4 = load ptr, ptr %0, align 8, !tbaa !46
  %5 = tail call ptr @Perl_newSViv(i64 noundef %1) #11
  %6 = tail call ptr @Perl_sv_2mortal(ptr noundef %5) #11
  %7 = sext i32 %2 to i64
  %8 = tail call ptr @Perl_newSViv(i64 noundef %7) #11
  %9 = tail call ptr @Perl_sv_2mortal(ptr noundef %8) #11
  %10 = getelementptr inbounds %struct.PerlIOVia, ptr %4, i64 0, i32 18
  %11 = tail call ptr (ptr, ptr, ptr, i32, ...) @PerlIOVia_method(ptr noundef nonnull %0, ptr noundef nonnull @.str.17, ptr noundef nonnull %10, i32 noundef 2, ptr noundef %6, ptr noundef %9, ptr noundef null)
  %12 = icmp eq ptr %11, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.sv, ptr %11, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !83
  %16 = and i32 %15, 2097408
  %17 = icmp eq i32 %16, 256
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load ptr, ptr %11, align 8, !tbaa !85
  %20 = getelementptr inbounds %struct.xpviv, ptr %19, i64 0, i32 4
  %21 = load i64, ptr %20, align 8, !tbaa !43
  br label %24

22:                                               ; preds = %13
  %23 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %11, i32 noundef 2) #11
  br label %24

24:                                               ; preds = %3, %18, %22
  %25 = phi i64 [ %21, %18 ], [ %23, %22 ], [ -1, %3 ]
  ret i64 %25
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @PerlIOVia_tell(ptr nocapture noundef readonly %0) #0 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct.PerlIOVia, ptr %2, i64 0, i32 19
  %4 = tail call ptr (ptr, ptr, ptr, i32, ...) @PerlIOVia_method(ptr noundef nonnull %0, ptr noundef nonnull @.str.18, ptr noundef nonnull %3, i32 noundef 2, ptr noundef null)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %32, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !83
  %9 = and i32 %8, 512
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %6
  %12 = and i32 %8, 2097664
  %13 = icmp eq i32 %12, 512
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load ptr, ptr %4, align 8, !tbaa !85
  %16 = getelementptr inbounds %struct.xpvnv, ptr %15, i64 0, i32 5
  %17 = load double, ptr %16, align 8, !tbaa !43
  br label %20

18:                                               ; preds = %11
  %19 = tail call double @Perl_sv_2nv_flags(ptr noundef nonnull %4, i32 noundef 2) #11
  br label %20

20:                                               ; preds = %18, %14
  %21 = phi double [ %17, %14 ], [ %19, %18 ]
  %22 = fptosi double %21 to i64
  br label %32

23:                                               ; preds = %6
  %24 = and i32 %8, 2097408
  %25 = icmp eq i32 %24, 256
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load ptr, ptr %4, align 8, !tbaa !85
  %28 = getelementptr inbounds %struct.xpviv, ptr %27, i64 0, i32 4
  %29 = load i64, ptr %28, align 8, !tbaa !43
  br label %32

30:                                               ; preds = %23
  %31 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %4, i32 noundef 2) #11
  br label %32

32:                                               ; preds = %1, %20, %30, %26
  %33 = phi i64 [ %22, %20 ], [ %29, %26 ], [ %31, %30 ], [ -1, %1 ]
  ret i64 %33
}

declare double @Perl_sv_2nv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local i64 @PerlIOVia_unread(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 !prof !34 {
  %4 = load ptr, ptr %0, align 8, !tbaa !46
  %5 = tail call ptr @Perl_newSVpvn_flags(ptr noundef %1, i64 noundef %2, i32 noundef 524288) #11
  %6 = getelementptr inbounds %struct.PerlIOVia, ptr %4, i64 0, i32 20
  %7 = tail call ptr (ptr, ptr, ptr, i32, ...) @PerlIOVia_method(ptr noundef nonnull %0, ptr noundef nonnull @.str.19, ptr noundef nonnull %6, i32 noundef 2, ptr noundef %5, ptr noundef null)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !83
  %12 = and i32 %11, 2097408
  %13 = icmp eq i32 %12, 256
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = load ptr, ptr %7, align 8, !tbaa !85
  %16 = getelementptr inbounds %struct.xpviv, ptr %15, i64 0, i32 4
  %17 = load i64, ptr %16, align 8, !tbaa !43
  br label %22

18:                                               ; preds = %9
  %19 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %7, i32 noundef 2) #11
  br label %22

20:                                               ; preds = %3
  %21 = tail call i64 @PerlIOBase_unread(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) #11
  br label %22

22:                                               ; preds = %14, %18, %20
  %23 = phi i64 [ %21, %20 ], [ %17, %14 ], [ %19, %18 ]
  ret i64 %23
}

declare i64 @PerlIOBase_unread(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local i64 @PerlIOVia_read(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 !prof !34 {
  %4 = load ptr, ptr %0, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !89
  %7 = and i32 %6, 1024
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %37, label %9

9:                                                ; preds = %3
  %10 = and i32 %6, 4194304
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = tail call i64 @PerlIOBase_read(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) #11
  br label %37

14:                                               ; preds = %9
  %15 = tail call ptr @Perl_newSV(i64 noundef %2) #11
  %16 = tail call ptr @Perl_sv_2mortal(ptr noundef %15) #11
  %17 = tail call ptr @Perl_newSViv(i64 noundef %2) #11
  %18 = tail call ptr @Perl_sv_2mortal(ptr noundef %17) #11
  %19 = getelementptr inbounds %struct.PerlIOVia, ptr %4, i64 0, i32 14
  %20 = tail call ptr (ptr, ptr, ptr, i32, ...) @PerlIOVia_method(ptr noundef nonnull %0, ptr noundef nonnull @.str.20, ptr noundef nonnull %19, i32 noundef 2, ptr noundef %16, ptr noundef %18, ptr noundef null)
  %21 = icmp eq ptr %20, null
  br i1 %21, label %37, label %22

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !83
  %25 = and i32 %24, 2097408
  %26 = icmp eq i32 %25, 256
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load ptr, ptr %20, align 8, !tbaa !85
  %29 = getelementptr inbounds %struct.xpviv, ptr %28, i64 0, i32 4
  %30 = load i64, ptr %29, align 8, !tbaa !43
  br label %33

31:                                               ; preds = %22
  %32 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %20, i32 noundef 2) #11
  br label %33

33:                                               ; preds = %31, %27
  %34 = phi i64 [ %30, %27 ], [ %32, %31 ]
  %35 = getelementptr inbounds %struct.sv, ptr %16, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !43
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %36, i64 %34, i1 false)
  br label %37

37:                                               ; preds = %33, %14, %3, %12
  %38 = phi i64 [ %13, %12 ], [ 0, %3 ], [ %34, %33 ], [ 0, %14 ]
  ret i64 %38
}

declare i64 @PerlIOBase_read(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_newSV(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #6

; Function Attrs: cold nounwind uwtable
define dso_local i64 @PerlIOVia_write(ptr nocapture noundef readonly %0, ptr noundef %1, i64 noundef %2) #0 !prof !34 {
  %4 = load ptr, ptr %0, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct._PerlIO, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !89
  %7 = and i32 %6, 512
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %34, label %9

9:                                                ; preds = %3
  %10 = tail call ptr @Perl_newSVpvn(ptr noundef %1, i64 noundef %2) #11
  %11 = getelementptr inbounds %struct.PerlIOVia, ptr %4, i64 0, i32 15
  %12 = tail call ptr (ptr, ptr, ptr, i32, ...) @PerlIOVia_method(ptr noundef nonnull %0, ptr noundef nonnull @.str.21, ptr noundef nonnull %11, i32 noundef 2, ptr noundef %10, ptr noundef null)
  %13 = icmp eq ptr %10, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.sv, ptr %10, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !88
  %17 = icmp ugt i32 %16, 1
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = add i32 %16, -1
  store i32 %19, ptr %15, align 8, !tbaa !88
  br label %21

20:                                               ; preds = %14
  tail call void @Perl_sv_free2(ptr noundef nonnull %10, i32 noundef %16) #11
  br label %21

21:                                               ; preds = %9, %18, %20
  %22 = icmp eq ptr %12, null
  br i1 %22, label %34, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.sv, ptr %12, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !83
  %26 = and i32 %25, 2097408
  %27 = icmp eq i32 %26, 256
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load ptr, ptr %12, align 8, !tbaa !85
  %30 = getelementptr inbounds %struct.xpviv, ptr %29, i64 0, i32 4
  %31 = load i64, ptr %30, align 8, !tbaa !43
  br label %34

32:                                               ; preds = %23
  %33 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %12, i32 noundef 2) #11
  br label %34

34:                                               ; preds = %3, %32, %28, %21
  %35 = phi i64 [ %31, %28 ], [ %33, %32 ], [ -1, %21 ], [ 0, %3 ]
  ret i64 %35
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i64 @PerlIOVia_fill(ptr nocapture noundef readonly %0) #0 !prof !34 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct._PerlIO, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !89
  %6 = and i32 %5, 1024
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %59, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.PerlIOVia, ptr %3, i64 0, i32 16
  %10 = tail call ptr (ptr, ptr, ptr, i32, ...) @PerlIOVia_method(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, ptr noundef nonnull %9, i32 noundef 2, ptr noundef null)
  %11 = getelementptr inbounds %struct.PerlIOVia, ptr %3, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !93
  %13 = icmp eq ptr %12, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.sv, ptr %12, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !88
  %17 = icmp ugt i32 %16, 1
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = add i32 %16, -1
  store i32 %19, ptr %15, align 8, !tbaa !88
  br label %21

20:                                               ; preds = %14
  tail call void @Perl_sv_free2(ptr noundef nonnull %12, i32 noundef %16) #11
  br label %21

21:                                               ; preds = %18, %20
  store ptr null, ptr %11, align 8, !tbaa !93
  br label %22

22:                                               ; preds = %21, %8
  %23 = icmp eq ptr %10, null
  br i1 %23, label %54, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.sv, ptr %10, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !83
  %27 = and i32 %26, 65280
  %28 = icmp ne i32 %27, 0
  %29 = and i32 %26, 255
  %30 = icmp eq i32 %29, 8
  %31 = or i1 %28, %30
  %32 = and i32 %26, 16777471
  %33 = icmp eq i32 %32, 16777226
  %34 = or i1 %33, %31
  br i1 %34, label %35, label %54

35:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  store i64 0, ptr %2, align 8, !tbaa !82
  %36 = and i32 %26, 2098176
  %37 = icmp eq i32 %36, 1024
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load ptr, ptr %10, align 8, !tbaa !85
  %40 = getelementptr inbounds %struct.xpv, ptr %39, i64 0, i32 2
  %41 = load i64, ptr %40, align 8, !tbaa !86
  store i64 %41, ptr %2, align 8, !tbaa !82
  %42 = getelementptr inbounds %struct.sv, ptr %10, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !43
  br label %46

44:                                               ; preds = %35
  %45 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %10, ptr noundef nonnull %2, i32 noundef 2) #11
  br label %46

46:                                               ; preds = %44, %38
  %47 = phi ptr [ %43, %38 ], [ %45, %44 ]
  %48 = load i64, ptr %2, align 8, !tbaa !82
  %49 = call ptr @Perl_newSVpvn(ptr noundef %47, i64 noundef %48) #11
  store ptr %49, ptr %11, align 8, !tbaa !93
  %50 = load ptr, ptr %49, align 8, !tbaa !85
  %51 = getelementptr inbounds %struct.xpv, ptr %50, i64 0, i32 2
  %52 = load i64, ptr %51, align 8, !tbaa !86
  %53 = getelementptr inbounds %struct.PerlIOVia, ptr %3, i64 0, i32 4
  store i64 %52, ptr %53, align 8, !tbaa !94
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  br label %59

54:                                               ; preds = %24, %22
  %55 = load ptr, ptr %0, align 8, !tbaa !46
  %56 = getelementptr inbounds %struct._PerlIO, ptr %55, i64 0, i32 2
  %57 = load i32, ptr %56, align 8, !tbaa !89
  %58 = or i32 %57, 256
  store i32 %58, ptr %56, align 8, !tbaa !89
  br label %59

59:                                               ; preds = %1, %54, %46
  %60 = phi i64 [ 0, %46 ], [ -1, %54 ], [ -1, %1 ]
  ret i64 %60
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @PerlIOVia_flush(ptr nocapture noundef readonly %0) #0 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct.PerlIOVia, ptr %2, i64 0, i32 21
  %4 = tail call ptr (ptr, ptr, ptr, i32, ...) @PerlIOVia_method(ptr noundef nonnull %0, ptr noundef nonnull @.str.22, ptr noundef nonnull %3, i32 noundef 2, ptr noundef null)
  %5 = getelementptr inbounds %struct.PerlIOVia, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !93
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.PerlIOVia, ptr %2, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !94
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !88
  %15 = icmp ugt i32 %14, 1
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = add i32 %14, -1
  store i32 %17, ptr %13, align 8, !tbaa !88
  br label %19

18:                                               ; preds = %12
  tail call void @Perl_sv_free2(ptr noundef nonnull %6, i32 noundef %14) #11
  br label %19

19:                                               ; preds = %16, %18
  store ptr null, ptr %5, align 8, !tbaa !93
  br label %20

20:                                               ; preds = %19, %8, %1
  %21 = icmp eq ptr %4, null
  br i1 %21, label %33, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !83
  %25 = and i32 %24, 2097408
  %26 = icmp eq i32 %25, 256
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load ptr, ptr %4, align 8, !tbaa !85
  %29 = getelementptr inbounds %struct.xpviv, ptr %28, i64 0, i32 4
  %30 = load i64, ptr %29, align 8, !tbaa !43
  br label %33

31:                                               ; preds = %22
  %32 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %4, i32 noundef 2) #11
  br label %33

33:                                               ; preds = %20, %27, %31
  %34 = phi i64 [ %30, %27 ], [ %32, %31 ], [ 0, %20 ]
  ret i64 %34
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @PerlIOVia_get_base(ptr nocapture noundef readonly %0) #7 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct._PerlIO, ptr %2, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !89
  %5 = and i32 %4, 1024
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.PerlIOVia, ptr %2, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !93
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !43
  br label %14

14:                                               ; preds = %7, %11
  %15 = phi ptr [ %13, %11 ], [ undef, %7 ]
  br i1 %10, label %16, label %17

16:                                               ; preds = %14, %1
  br label %17

17:                                               ; preds = %14, %16
  %18 = phi ptr [ %15, %14 ], [ null, %16 ]
  ret ptr %18
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @PerlIOVia_get_ptr(ptr nocapture noundef readonly %0) #7 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct._PerlIO, ptr %2, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !89
  %5 = and i32 %4, 1024
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.PerlIOVia, ptr %2, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !93
  %10 = icmp eq ptr %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !43
  %14 = load ptr, ptr %9, align 8, !tbaa !85
  %15 = getelementptr inbounds %struct.xpv, ptr %14, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !86
  %17 = getelementptr inbounds i8, ptr %13, i64 %16
  %18 = getelementptr inbounds %struct.PerlIOVia, ptr %2, i64 0, i32 4
  %19 = load i64, ptr %18, align 8, !tbaa !94
  %20 = sub i64 0, %19
  %21 = getelementptr inbounds i8, ptr %17, i64 %20
  br label %22

22:                                               ; preds = %7, %11
  %23 = phi ptr [ %21, %11 ], [ undef, %7 ]
  br i1 %10, label %24, label %25

24:                                               ; preds = %22, %1
  br label %25

25:                                               ; preds = %22, %24
  %26 = phi ptr [ %23, %22 ], [ null, %24 ]
  ret ptr %26
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @PerlIOVia_get_cnt(ptr nocapture noundef readonly %0) #7 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct._PerlIO, ptr %2, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !89
  %5 = and i32 %4, 1024
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.PerlIOVia, ptr %2, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !93
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.PerlIOVia, ptr %2, i64 0, i32 4
  %13 = load i64, ptr %12, align 8, !tbaa !94
  br label %14

14:                                               ; preds = %7, %11
  %15 = phi i64 [ %13, %11 ], [ undef, %7 ]
  br i1 %10, label %16, label %17

16:                                               ; preds = %14, %1
  br label %17

17:                                               ; preds = %14, %16
  %18 = phi i64 [ %15, %14 ], [ 0, %16 ]
  ret i64 %18
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @PerlIOVia_bufsiz(ptr nocapture noundef readonly %0) #7 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct._PerlIO, ptr %2, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !89
  %5 = and i32 %4, 1024
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.PerlIOVia, ptr %2, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !93
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %9, align 8, !tbaa !85
  %13 = getelementptr inbounds %struct.xpv, ptr %12, i64 0, i32 2
  %14 = load i64, ptr %13, align 8, !tbaa !86
  br label %15

15:                                               ; preds = %7, %11
  %16 = phi i64 [ %14, %11 ], [ undef, %7 ]
  br i1 %10, label %17, label %18

17:                                               ; preds = %15, %1
  br label %18

18:                                               ; preds = %15, %17
  %19 = phi i64 [ %16, %15 ], [ 0, %17 ]
  ret i64 %19
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @PerlIOVia_set_ptrcnt(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, i64 noundef %2) #8 !prof !34 {
  %4 = load ptr, ptr %0, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.PerlIOVia, ptr %4, i64 0, i32 4
  store i64 %2, ptr %5, align 8, !tbaa !94
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @PerlIOVia_setlinebuf(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct.PerlIOVia, ptr %2, i64 0, i32 22
  %4 = tail call ptr (ptr, ptr, ptr, i32, ...) @PerlIOVia_method(ptr noundef nonnull %0, ptr noundef nonnull @.str.23, ptr noundef nonnull %3, i32 noundef 1, ptr noundef null)
  tail call void @PerlIOBase_setlinebuf(ptr noundef nonnull %0) #11
  ret void
}

declare void @PerlIOBase_setlinebuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local void @PerlIOVia_clearerr(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct.PerlIOVia, ptr %2, i64 0, i32 23
  %4 = tail call ptr (ptr, ptr, ptr, i32, ...) @PerlIOVia_method(ptr noundef nonnull %0, ptr noundef nonnull @.str.24, ptr noundef nonnull %3, i32 noundef 1, ptr noundef null)
  tail call void @PerlIOBase_clearerr(ptr noundef nonnull %0) #11
  ret void
}

declare void @PerlIOBase_clearerr(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local i64 @PerlIOVia_error(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct.PerlIOVia, ptr %2, i64 0, i32 24
  %4 = tail call ptr (ptr, ptr, ptr, i32, ...) @PerlIOVia_method(ptr noundef nonnull %0, ptr noundef nonnull @.str.25, ptr noundef nonnull %3, i32 noundef 2, ptr noundef null)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !83
  %9 = and i32 %8, 2097408
  %10 = icmp eq i32 %9, 256
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = load ptr, ptr %4, align 8, !tbaa !85
  %13 = getelementptr inbounds %struct.xpviv, ptr %12, i64 0, i32 4
  %14 = load i64, ptr %13, align 8, !tbaa !43
  br label %19

15:                                               ; preds = %6
  %16 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %4, i32 noundef 2) #11
  br label %19

17:                                               ; preds = %1
  %18 = tail call i64 @PerlIOBase_error(ptr noundef nonnull %0) #11
  br label %19

19:                                               ; preds = %11, %15, %17
  %20 = phi i64 [ %18, %17 ], [ %14, %11 ], [ %16, %15 ]
  ret i64 %20
}

declare i64 @PerlIOBase_error(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local i64 @PerlIOVia_eof(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct.PerlIOVia, ptr %2, i64 0, i32 25
  %4 = tail call ptr (ptr, ptr, ptr, i32, ...) @PerlIOVia_method(ptr noundef nonnull %0, ptr noundef nonnull @.str.26, ptr noundef nonnull %3, i32 noundef 2, ptr noundef null)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !83
  %9 = and i32 %8, 2097408
  %10 = icmp eq i32 %9, 256
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = load ptr, ptr %4, align 8, !tbaa !85
  %13 = getelementptr inbounds %struct.xpviv, ptr %12, i64 0, i32 4
  %14 = load i64, ptr %13, align 8, !tbaa !43
  br label %19

15:                                               ; preds = %6
  %16 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %4, i32 noundef 2) #11
  br label %19

17:                                               ; preds = %1
  %18 = tail call i64 @PerlIOBase_eof(ptr noundef nonnull %0) #11
  br label %19

19:                                               ; preds = %11, %15, %17
  %20 = phi i64 [ %18, %17 ], [ %14, %11 ], [ %16, %15 ]
  ret i64 %20
}

declare i64 @PerlIOBase_eof(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local ptr @PerlIOVia_getarg(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, i32 %2) #0 !prof !34 {
  %4 = load ptr, ptr %0, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.PerlIOVia, ptr %4, i64 0, i32 12
  %6 = tail call ptr (ptr, ptr, ptr, i32, ...) @PerlIOVia_method(ptr noundef nonnull %0, ptr noundef nonnull @.str.27, ptr noundef nonnull %5, i32 noundef 2, ptr noundef null)
  ret ptr %6
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @PerlIOVia_dup(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 !prof !34 {
  %5 = tail call ptr @PerlIOBase_dup(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #11
  ret ptr %5
}

declare ptr @PerlIOBase_dup(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local void @boot_PerlIO__via(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call i32 (i32, ptr, ptr, ...) @Perl_xs_handshake(i32 noundef 219676775, ptr noundef %0, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30) #11
  tail call void @PerlIO_define_layer(ptr noundef nonnull @PerlIO_object) #11
  tail call void @Perl_xs_boot_epilog(i32 noundef %2) #11
  ret void
}

declare i32 @Perl_xs_handshake(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @PerlIO_define_layer(ptr noundef) local_unnamed_addr #2

declare void @Perl_xs_boot_epilog(i32 noundef) local_unnamed_addr #2

declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !38, i64 32}
!36 = !{!"", !37, i64 0, !38, i64 32, !38, i64 40, !38, i64 48, !42, i64 56, !38, i64 64, !38, i64 72, !38, i64 80, !38, i64 88, !38, i64 96, !38, i64 104, !38, i64 112, !38, i64 120, !38, i64 128, !38, i64 136, !38, i64 144, !38, i64 152, !38, i64 160, !38, i64 168, !38, i64 176, !38, i64 184, !38, i64 192, !38, i64 200, !38, i64 208, !38, i64 216, !38, i64 224, !38, i64 232, !38, i64 240}
!37 = !{!"_PerlIO", !38, i64 0, !38, i64 8, !41, i64 16, !41, i64 20, !38, i64 24}
!38 = !{!"any pointer", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!"int", !39, i64 0}
!42 = !{!"long", !39, i64 0}
!43 = !{!39, !39, i64 0}
!44 = !{!45, !38, i64 16}
!45 = !{!"gp", !38, i64 0, !38, i64 8, !38, i64 16, !41, i64 24, !41, i64 28, !38, i64 32, !38, i64 40, !38, i64 48, !38, i64 56, !41, i64 64, !41, i64 67, !38, i64 72}
!46 = !{!38, !38, i64 0}
!47 = !{!48, !38, i64 24}
!48 = !{!"stackinfo", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!49 = !{!48, !38, i64 16}
!50 = !{!48, !41, i64 40}
!51 = !{!48, !41, i64 32}
!52 = !{!48, !38, i64 0}
!53 = !{!54, !38, i64 0}
!54 = !{!"av", !38, i64 0, !41, i64 8, !41, i64 12, !39, i64 16}
!55 = !{!56, !42, i64 16}
!56 = !{!"xpvav", !38, i64 0, !39, i64 8, !42, i64 16, !42, i64 24, !38, i64 32}
!57 = !{!56, !42, i64 24}
!58 = !{!41, !41, i64 0}
!59 = !{!36, !38, i64 40}
!60 = distinct !{!60, !61, !62}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!"llvm.loop.unroll.disable"}
!63 = !{!37, !38, i64 0}
!64 = !{!36, !38, i64 72}
!65 = !{!66, !41, i64 12}
!66 = !{!"hv", !38, i64 0, !41, i64 8, !41, i64 12, !39, i64 16}
!67 = !{!66, !38, i64 0}
!68 = !{!69, !42, i64 24}
!69 = !{!"xpvhv", !38, i64 0, !39, i64 8, !42, i64 16, !42, i64 24}
!70 = !{!71, !41, i64 28}
!71 = !{!"xpvhv_aux", !39, i64 0, !38, i64 8, !38, i64 16, !41, i64 24, !41, i64 28, !38, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52}
!72 = !{!45, !38, i64 8}
!73 = !{!36, !38, i64 64}
!74 = !{!75, !38, i64 0}
!75 = !{!"gv", !38, i64 0, !41, i64 8, !41, i64 12, !39, i64 16}
!76 = !{!77, !41, i64 4}
!77 = !{!"hek", !41, i64 0, !41, i64 4, !39, i64 8}
!78 = !{!79, !38, i64 0}
!79 = !{!"io", !38, i64 0, !41, i64 8, !41, i64 12, !39, i64 16}
!80 = !{!81, !38, i64 40}
!81 = !{!"xpvio", !38, i64 0, !39, i64 8, !42, i64 16, !39, i64 24, !39, i64 32, !38, i64 40, !39, i64 48, !42, i64 56, !42, i64 64, !42, i64 72, !38, i64 80, !38, i64 88, !38, i64 96, !38, i64 104, !38, i64 112, !38, i64 120, !39, i64 128, !39, i64 129}
!82 = !{!42, !42, i64 0}
!83 = !{!84, !41, i64 12}
!84 = !{!"sv", !38, i64 0, !41, i64 8, !41, i64 12, !39, i64 16}
!85 = !{!84, !38, i64 0}
!86 = !{!87, !42, i64 16}
!87 = !{!"xpv", !38, i64 0, !39, i64 8, !42, i64 16, !39, i64 24}
!88 = !{!84, !41, i64 8}
!89 = !{!37, !41, i64 16}
!90 = !{!91, !38, i64 48}
!91 = !{!"_PerlIO_funcs", !42, i64 0, !38, i64 8, !42, i64 16, !41, i64 24, !38, i64 32, !38, i64 40, !38, i64 48, !38, i64 56, !38, i64 64, !38, i64 72, !38, i64 80, !38, i64 88, !38, i64 96, !38, i64 104, !38, i64 112, !38, i64 120, !38, i64 128, !38, i64 136, !38, i64 144, !38, i64 152, !38, i64 160, !38, i64 168, !38, i64 176, !38, i64 184, !38, i64 192, !38, i64 200, !38, i64 208, !38, i64 216}
!92 = !{!91, !38, i64 8}
!93 = !{!36, !38, i64 48}
!94 = !{!36, !42, i64 56}
