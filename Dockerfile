# n8n with extra libraries for Bumblebee's Code-node tools.
# Starts from n8n's official image and only adds npm packages.
#
# IMPORTANT: keep this version the same as the one Railway runs today.
# Never use "latest": it can upgrade n8n without you noticing.
FROM n8nio/n8n:2.49.1

USER root

# Extra libraries for the Code node. Pin every version.
# To add a tool later: add "name@version" here, add the name to
# NODE_FUNCTION_ALLOW_EXTERNAL in Railway Variables, commit.
# pdf-lib: read, fill and write PDFs.
# pdfjs-dist 3.x: find text positions on flat PDFs. Stay on 3.x:
#   version 4 and later ship only as ES modules (.mjs), untested in the Code node.
RUN npm install -g \
    pdf-lib@1.17.1 \
    pdfjs-dist@3.11.174

USER node
